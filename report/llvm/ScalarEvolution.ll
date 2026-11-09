Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ScalarEvolution?download=true
inline.NumInlined: 24488
inline.NumDeleted: 8078
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN4llvm18SCEVRewriteVisitorI23SCEVCastSinkingRewriterE23visitSequentialUMinExprEPKNS_22SCEVSequentialUMinExprE:bb.a
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !138
  br label %tailrecurse.backedge.i.i

bb.h:                                             ; preds = %tailrecurse.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !138
  br label %tailrecurse.backedge.i.i

bb.i:                                             ; preds = %tailrecurse.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 56
  br label %_ZNK4llvm4SCEV7getTypeEv.exit.i

bb.j:                                             ; preds = %tailrecurse.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 48
  br label %tailrecurse.backedge.i.i

bb.k:                                             ; preds = %tailrecurse.i.i
  %i.ac = getelementptr inbounds i8, ptr %.tr.i.i, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !229
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  br label %_ZNK4llvm4SCEV7getTypeEv.exit.i

bb.l:                                             ; preds = %tailrecurse.i.i
  unreachable

_ZNK4llvm4SCEV7getTypeEv.exit.i:                  ; preds = %bb.k, %bb.i, %bb.d, %bb.c, %bb.b
  %.0.in.i.i = phi ptr [ %i.p, %bb.b ], [ %i.q, %bb.c ], [ %i.r, %bb.d ], [ %i.ae, %bb.k ], [ %i.aa, %bb.i ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !231
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = and i32 %i.ag, 255
  %i.ai = icmp eq i32 %i.ah, 15
  br i1 %i.ai, label %bb.m, label %_ZN23SCEVCastSinkingRewriter5visitEPKN4llvm4SCEVE.exit

bb.m:                                             ; preds = %_ZNK4llvm4SCEV7getTypeEv.exit.i
  %i.aj = call noundef ptr @_ZN4llvm18SCEVRewriteVisitorI23SCEVCastSinkingRewriterE5visitEPKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %i.k), !inline_history !54
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = and i64 %i.ak, -7
  %.pre = load i32, ptr %i.b, align 8, !tbaa !134
  br label %_ZN23SCEVCastSinkingRewriter5visitEPKN4llvm4SCEVE.exit

_ZN23SCEVCastSinkingRewriter5visitEPKN4llvm4SCEVE.exit: ; preds = %_ZNK4llvm4SCEV7getTypeEv.exit.i, %bb.m
  %i.am = phi i32 [ %.pre, %bb.m ], [ %i.i, %_ZNK4llvm4SCEV7getTypeEv.exit.i ] ; 2 uses
  %.0.i = phi i64 [ %i.al, %bb.m ], [ %i.j, %_ZNK4llvm4SCEV7getTypeEv.exit.i ] ; 2 uses
  %i.an = load i32, ptr %i.c, align 4, !tbaa !135
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %bb.o, label %bb.n, !prof !140

bb.n:                                             ; preds = %_ZN23SCEVCastSinkingRewriter5visitEPKN4llvm4SCEVE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 %.0.i)
  %.pre30 = load i32, ptr %i.b, align 8, !tbaa !134
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE9push_backES5_.exit

bb.o:                                             ; preds = %_ZN23SCEVCastSinkingRewriter5visitEPKN4llvm4SCEVE.exit
  %i.ao = zext i32 %i.am to i64
  %i.ap = load ptr, ptr %2, align 8, !tbaa !107
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao
  store i64 %.0.i, ptr %i.aq, align 1
  %i.ar = load i32, ptr %i.b, align 8, !tbaa !134
  %i.as = add i32 %i.ar, 1                        ; 2 uses
  store i32 %i.as, ptr %i.b, align 8, !tbaa !134
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE9push_backES5_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE9push_backES5_.exit: ; preds = %bb.n, %bb.o
  %i.at = phi i32 [ %.pre30, %bb.n ], [ %i.as, %bb.o ] ; 2 uses
  %i.au = load ptr, ptr %2, align 8, !tbaa !107   ; 2 uses
  %i.av = zext i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -8
  %.0.copyload.i.i.i.i13 = load i64, ptr %i.ax, align 8
  %i.ay = and i64 %.0.copyload.i.i.i.i13, -8
  %i.az = icmp ne i64 %i.j, %i.ay
  %i.ba = or i1 %.024, %i.az                      ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.01223, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bb, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.p:                                             ; preds = %._crit_edge
  %i.bc = load ptr, ptr %0, align 8, !tbaa !880, !nonnull !104, !align !220
  %i.bd = call noundef ptr @_ZN4llvm15ScalarEvolution23getSequentialMinMaxExprENS_9SCEVTypesERNS_15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEEE(ptr noundef nonnull align 8 dereferenceable(1152) %i.bc, i16 noundef zeroext 13, ptr noundef nonnull align 8 dereferenceable(16) %2), !inline_history !148
  %.pre31 = load ptr, ptr %2, align 8, !tbaa !107
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge, %bb.p
  %i.be = phi ptr [ %.pre31, %bb.p ], [ %i.au, %._crit_edge ] ; 2 uses
  %i.bf = phi ptr [ %i.bd, %bb.p ], [ %1, %._crit_edge ] ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.a
  br i1 %i.bg, label %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.be) #29
  br label %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj2EED2Ev.exit: ; preds = %bb.a, %.critedge, %bb.q
  %i.bh = phi ptr [ %i.bf, %bb.q ], [ %i.bf, %.critedge ], [ %1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret ptr %i.bh
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS4_JRS4_EEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !4126 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !4126 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !4126 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !4126
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !254    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !268
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !269

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !254
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit, label %bb.c, !prof !140

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !268
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !273, !llvm.loop !55

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !881
  %i.ao = shl i32 %i.b, 1
  %i.ap = and i32 %i.ao, -4
  %i.aq = add i32 %i.ap, 4
  %i.ar = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !140

bb.d:                                             ; preds = %.loopexit
  %i.as = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.as)
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !881
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre17 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.au = phi ptr [ %.pre17, %bb.d ], [ %i.e, %.loopexit ]
  %i.av = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aw = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.j
  %i.ay = select i1 %.not.i.i.i.i, ptr %i.au, ptr %i.d
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 4                 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !268
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !268
  %i.bk = load i32, ptr %0, align 8               ; 2 uses
  %3 = and i32 %i.bk, -2
  %i.bl = add i32 %3, 2
  %4 = and i32 %i.bk, 1
  %5 = or disjoint i32 %i.bl, %4
  store i32 %5, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !254
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !254
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bo = load ptr, ptr %2, align 8, !tbaa !254
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !254
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.aw, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !4131
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !4131
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !4131
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !4131
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !254    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.k, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !268
  %i.x = and i32 %i.r, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !269

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.ag, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !254
  %i.ac = icmp eq ptr %i.l, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !140

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.024, 1
  %i.ae = and i32 %i.ad, %i.k                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !268
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !273, !llvm.loop !55

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !881
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.794", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEC2EjNS_12DenseMapBaseIS9_S3_S3_S5_S8_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #29 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !118
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !118
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !118
  br label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEC2EjNS_12DenseMapBaseIS9_S3_S3_S5_S8_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEC2EjNS_12DenseMapBaseIS9_S3_S3_S5_S8_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE13maybeMoveFastEOS9_.exit.thread, label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE13maybeMoveFastEOS9_.exit

_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE13maybeMoveFastEOS9_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEC2EjNS_12DenseMapBaseIS9_S3_S3_S5_S8_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !4132
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !118
  br label %bb.b

_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE13maybeMoveFastEOS9_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEC2EjNS_12DenseMapBaseIS9_S3_S3_S5_S8_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE13maybeMoveFastEOS9_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE13maybeMoveFastEOS9_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #29 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !118
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !118
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !118
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE13maybeMoveFastEOS9_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE13maybeMoveFastEOS9_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
end_hunk_0
begin_hunk_1_@_ZN4llvm15SmallVectorImplINS_15ScalarEvolution6FoldIDEEaSEOS3_:bb.a
  br i1 %.not37, label %bb.n, label %bb.m, !prof !286

bb.m:                                             ; preds = %bb.l
  %.idx36 = mul nuw nsw i64 %i.r, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.x, ptr align 8 %i.b, i64 %.idx36, i1 false)
  br label %_ZSt4moveIPN4llvm15ScalarEvolution6FoldIDES3_ET0_T_S5_S4_.exit34

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.x, ptr noundef nonnull align 8 dereferenceable(18) %i.b, i64 18, i1 false), !tbaa.struct !385
  br label %_ZSt4moveIPN4llvm15ScalarEvolution6FoldIDES3_ET0_T_S5_S4_.exit34

_ZSt4moveIPN4llvm15ScalarEvolution6FoldIDES3_ET0_T_S5_S4_.exit34: ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.y = load i32, ptr %i.m, align 8, !tbaa !134
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.z
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_15ScalarEvolution6FoldIDELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPN4llvm15ScalarEvolution6FoldIDES3_ET0_T_S5_S4_.exit34
  %i.aa = load ptr, ptr %1, align 8, !tbaa !107
  %.idx39 = mul nuw nsw i64 %.026, 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx39
  %i.ac = load ptr, ptr %0, align 8, !tbaa !107
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.026
  %.idx3840 = sub nsw i64 %i.z, %.026
  %gepdiff = mul nsw i64 %.idx3840, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 8 %i.ab, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_15ScalarEvolution6FoldIDELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_15ScalarEvolution6FoldIDELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit: ; preds = %_ZSt4moveIPN4llvm15ScalarEvolution6FoldIDES3_ET0_T_S5_S4_.exit34, %bb.o
  store i32 %i.n, ptr %i.p, align 8, !tbaa !134
  store i32 0, ptr %i.m, align 8, !tbaa !134
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPN4llvm15ScalarEvolution6FoldIDES3_ET0_T_S5_S4_.exit, %_ZN4llvm23SmallVectorTemplateBaseINS_15ScalarEvolution6FoldIDELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplINS_15ScalarEvolution6FoldIDEE12assignRemoteEOS3_.exit
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_15ScalarEvolution6FoldIDELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(18) %1) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::ScalarEvolution::FoldID", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !385
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !134
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 24) #29
  %i.f = load ptr, ptr %0, align 8, !tbaa !107
  %i.g = load i32, ptr %i.a, align 8, !tbaa !134
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !134
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #21

declare void @_ZN4llvm15AssumptionCache12scanFunctionEv(ptr noundef nonnull align 8 dereferenceable(153)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #6

declare void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #6

declare void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt26countTrailingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm5APInt18isPowerOf2SlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #10

declare void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12), i64 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E24lookupOrInsertIntoBucketIS6_JS7_EEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !4166 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !4166 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !4166 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !4166
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 16 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %.sroa.04.0.copyload.i = load i64, ptr %1, align 8 ; 2 uses
  %i.m = xor i64 %.sroa.04.0.copyload.i, -49064778989728563 ; 2 uses
  %i.n = lshr i64 %i.m, 30
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, -4658895280553007687       ; 2 uses
  %i.q = lshr i64 %i.p, 27
  %i.r = xor i64 %i.q, %i.p
  %i.s = mul i64 %i.r, -7723592293110705685       ; 2 uses
  %i.t = lshr i64 %i.s, 31
  %i.u = xor i64 %i.t, %i.s
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.l, %i.v                       ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !268
  %i.ac = and i32 %i.w, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph.i, label %.loopexit, !prof !269

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.af = phi ptr [ %i.ak, %bb.c ], [ %i.y, %bb.b ] ; 2 uses
  %.01926.i = phi i32 [ %i.ai, %bb.c ], [ %i.w, %bb.b ]
  %.sroa.0.0.copyload.i = load i64, ptr %i.af, align 8
  %i.ag = icmp eq i64 %.sroa.04.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.ag, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E15LookupBucketForIS6_EEbRKT_RPSC_.exit, label %bb.c, !prof !140

bb.c:                                             ; preds = %.lr.ph.i
  %i.ah = add nuw i32 %.01926.i, 1
  %i.ai = and i32 %i.ah, %i.l                     ; 3 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.aj ; 2 uses
  %i.al = lshr i64 %i.aj, 5
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !268
  %i.ao = and i32 %i.ai, 31
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %.loopexit, !prof !273, !llvm.loop !58

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.y, %bb.b ], [ null, %bb.a ], [ %i.ak, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !885
  %i.ar = shl i32 %i.b, 1
  %i.as = and i32 %i.ar, -4
  %i.at = add i32 %i.as, 4
  %i.au = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.at, %i.au
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit, label %bb.d, !prof !140

bb.d:                                             ; preds = %.loopexit
  %i.av = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.av)
  %i.aw = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E15LookupBucketForIS6_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !885
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre17 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.ax = phi ptr [ %.pre17, %bb.d ], [ %i.e, %.loopexit ]
  %i.ay = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.az = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ba = select i1 %.not.i.i.i.i, ptr %i.ay, ptr %i.j
  %i.bb = select i1 %.not.i.i.i.i, ptr %i.ax, ptr %i.d
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = sdiv exact i64 %i.be, 24                ; 2 uses
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = and i32 %i.bg, 31
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = lshr i64 %i.bf, 5
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !268
  %i.bm = or i32 %i.bi, %i.bl
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !268
  %i.bn = load i32, ptr %0, align 8               ; 2 uses
  %3 = and i32 %i.bn, -2
  %i.bo = add i32 %3, 2
  %4 = and i32 %i.bn, 1
  %5 = or disjoint i32 %i.bo, %4
  store i32 %5, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bp = load i64, ptr %1, align 8
  store i64 %i.bp, ptr %i.az, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !274
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !274
  %i.bu = load i64, ptr %2, align 8
  store i64 %i.bu, ptr %i.bq, align 8
  store i32 0, ptr %i.bs, align 8, !tbaa !274
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E15LookupBucketForIS6_EEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E15LookupBucketForIS6_EEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.az, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit ], [ %i.af, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E15LookupBucketForIS6_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !4171
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !4171
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !4171
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !4171
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 16 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %.sroa.04.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %i.l = xor i64 %.sroa.04.0.copyload, -49064778989728563 ; 2 uses
  %i.m = lshr i64 %i.l, 30
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 27
  %i.q = xor i64 %i.p, %i.o
  %i.r = mul i64 %i.q, -7723592293110705685       ; 2 uses
  %i.s = lshr i64 %i.r, 31
  %i.t = xor i64 %i.s, %i.r
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.k, %i.u                       ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i, i64 %i.w ; 2 uses
  %i.y = lshr i64 %i.w, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !268
  %i.ab = and i32 %i.v, 31
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  br i1 %i.ad, label %.lr.ph, label %.thread, !prof !269

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ae = phi ptr [ %i.aj, %bb.c ], [ %i.x, %bb.b ] ; 2 uses
  %.01926 = phi i32 [ %i.ah, %bb.c ], [ %i.v, %bb.b ]
  %.sroa.0.0.copyload = load i64, ptr %i.ae, align 8
  %i.af = icmp eq i64 %.sroa.04.0.copyload, %.sroa.0.0.copyload ; 3 uses
  br i1 %i.af, label %.thread, label %bb.c, !prof !140

bb.c:                                             ; preds = %.lr.ph
  %i.ag = add nuw i32 %.01926, 1
  %i.ah = and i32 %i.ag, %i.k                     ; 3 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i, i64 %i.ai ; 2 uses
  %i.ak = lshr i64 %i.ai, 5
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !268
  %i.an = and i32 %i.ah, 31
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  br i1 %i.ap, label %.lr.ph, label %.thread, !prof !273, !llvm.loop !58

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.x, %bb.b ], [ null, %bb.a ], [ %i.aj, %bb.c ], [ %i.ae, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.af, %bb.c ], [ %i.af, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !885
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap", align 8 ; 14 uses
  %i.a = icmp ult i32 %1, 17                      ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 392
  br label %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEC2EjNS_12DenseMapBaseISC_S5_S6_S8_SB_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 24                 ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #29 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !118
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !118
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !118
  br label %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEC2EjNS_12DenseMapBaseISC_S5_S6_S8_SB_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEC2EjNS_12DenseMapBaseISC_S5_S6_S8_SB_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 16, %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(400) %0)
  %i.ad = load i32, ptr %2, align 8               ; 2 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE13maybeMoveFastEOSC_.exit.thread, label %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE13maybeMoveFastEOSC_.exit

_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE13maybeMoveFastEOSC_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEC2EjNS_12DenseMapBaseISC_S5_S6_S8_SB_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !4172
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !118
  br label %bb.b

_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE13maybeMoveFastEOSC_.exit: ; preds = %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEC2EjNS_12DenseMapBaseISC_S5_S6_S8_SB_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE13maybeMoveFastEOSC_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 392
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE13maybeMoveFastEOSC_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 24               ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #29 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !118
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !118
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !118
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 392
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapINS_8SCEVUseTIPKNS_4SCEVEEENS_5APIntELj16ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEE15allocateBucketsEj.exit.i ]
end_hunk_1
begin_hunk_2_@_ZN4llvm18SCEVRewriteVisitorIN12_GLOBAL__N_119SCEVPostIncRewriterEE5visitEPKNS_4SCEVE:bb.a
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt13compareSignedERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #10

declare noundef i32 @_ZN4llvm7CmpInst21getNonStrictPredicateENS0_9PredicateE(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbN4llvm12CmpPredicateEEZZNS0_15ScalarEvolution30isBasicBlockEntryGuardedByCondEPKNS0_10BasicBlockES1_PKNS0_4SCEVES9_ENK3$_1clEPKNS0_5ValueEbEUlS1_E_E9_M_invokeERKSt9_Any_dataOS1_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(5) %1) #3 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !253   ; 6 uses
  %.val2 = load i64, ptr %1, align 4
  %i.a = load ptr, ptr %.val, align 8, !tbaa !892
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !893, !nonnull !104, !align !220
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !254
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !894, !nonnull !104, !align !220
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !254
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !895, !nonnull !104, !align !220
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !484
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !896, !nonnull !104
  %i.m = load i8, ptr %i.l, align 1, !tbaa !119, !range !103, !noundef !104
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !897, !nonnull !104, !align !220
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !560
  %i.r = tail call noundef zeroext i1 @_ZN4llvm15ScalarEvolution13isImpliedCondENS_12CmpPredicateEPKNS_4SCEVES4_PKNS_5ValueEbPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1152) %i.a, i64 %.val2, ptr noundef %i.d, ptr noundef %i.g, ptr noundef %i.j, i1 noundef zeroext %i.n, ptr noundef %i.q) #33, !inline_history !4413
  ret i1 %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbN4llvm12CmpPredicateEEZZNS0_15ScalarEvolution30isBasicBlockEntryGuardedByCondEPKNS0_10BasicBlockES1_PKNS0_4SCEVES9_ENK3$_1clEPKNS0_5ValueEbEUlS1_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #3 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZZN4llvm15ScalarEvolution30isBasicBlockEntryGuardedByCondEPKNS1_10BasicBlockENS1_12CmpPredicateEPKNS1_4SCEVES9_ENK3$_1clEPKNS1_5ValueEbEUlS6_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !253
  store ptr %.val, ptr %0, align 8, !tbaa !253
  br label %"_ZNSt14_Function_base13_Base_managerIZZN4llvm15ScalarEvolution30isBasicBlockEntryGuardedByCondEPKNS1_10BasicBlockENS1_12CmpPredicateEPKNS1_4SCEVES9_ENK3$_1clEPKNS1_5ValueEbEUlS6_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !899
  br label %"_ZNSt14_Function_base13_Base_managerIZZN4llvm15ScalarEvolution30isBasicBlockEntryGuardedByCondEPKNS1_10BasicBlockENS1_12CmpPredicateEPKNS1_4SCEVES9_ENK3$_1clEPKNS1_5ValueEbEUlS6_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %.val5, i64 48, i1 false), !tbaa.struct !4414
  store ptr %i.a, ptr %0, align 8, !tbaa !253
  br label %"_ZNSt14_Function_base13_Base_managerIZZN4llvm15ScalarEvolution30isBasicBlockEntryGuardedByCondEPKNS1_10BasicBlockENS1_12CmpPredicateEPKNS1_4SCEVES9_ENK3$_1clEPKNS1_5ValueEbEUlS6_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !253 ; 2 uses
  %i.b = icmp eq ptr %.val6.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZZN4llvm15ScalarEvolution30isBasicBlockEntryGuardedByCondEPKNS1_10BasicBlockENS1_12CmpPredicateEPKNS1_4SCEVES9_ENK3$_1clEPKNS1_5ValueEbEUlS6_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 48) #32
  br label %"_ZNSt14_Function_base13_Base_managerIZZN4llvm15ScalarEvolution30isBasicBlockEntryGuardedByCondEPKNS1_10BasicBlockENS1_12CmpPredicateEPKNS1_4SCEVES9_ENK3$_1clEPKNS1_5ValueEbEUlS6_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZZN4llvm15ScalarEvolution30isBasicBlockEntryGuardedByCondEPKNS1_10BasicBlockENS1_12CmpPredicateEPKNS1_4SCEVES9_ENK3$_1clEPKNS1_5ValueEbEUlS6_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZSt13__invoke_implIbRZZN4llvm15ScalarEvolution30isBasicBlockEntryGuardedByCondEPKNS0_10BasicBlockENS0_12CmpPredicateEPKNS0_4SCEVES8_ENK3$_1clEPKNS0_5ValueEbEUlS5_E_JS5_EET_St14__invoke_otherOT0_DpOT1_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i64 %.0.val) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !892
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !893, !nonnull !104, !align !220
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !254
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !894, !nonnull !104, !align !220
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !254
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !895, !nonnull !104, !align !220
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !484
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !896, !nonnull !104
  %i.m = load i8, ptr %i.l, align 1, !tbaa !119, !range !103, !noundef !104
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !897, !nonnull !104, !align !220
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !560
  %i.r = tail call noundef zeroext i1 @_ZN4llvm15ScalarEvolution13isImpliedCondENS_12CmpPredicateEPKNS_4SCEVES4_PKNS_5ValueEbPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1152) %i.a, i64 %.0.val, ptr noundef %i.d, ptr noundef %i.g, ptr noundef %i.j, i1 noundef zeroext %i.n, ptr noundef %i.q), !inline_history !4415
  ret i1 %i.r
}

declare noundef zeroext i1 @_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !4420 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !4420 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !4420 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !4420
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 8 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !254    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !268
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !269

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !254
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit, label %bb.c, !prof !140

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !268
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !273, !llvm.loop !63

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !901
  %i.ao = shl i32 %i.b, 1
  %i.ap = and i32 %i.ao, -4
  %i.aq = add i32 %i.ap, 4
  %i.ar = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !140

bb.d:                                             ; preds = %.loopexit
  %i.as = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.as)
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !901
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.au = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.av = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aw = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.j
  %i.ay = select i1 %.not.i.i.i.i, ptr %i.au, ptr %i.d
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 4                 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !268
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !268
  %i.bk = load i32, ptr %0, align 8               ; 2 uses
  %2 = and i32 %i.bk, -2
  %i.bl = add i32 %2, 2
  %3 = and i32 %i.bk, 1
  %4 = or disjoint i32 %i.bl, %3
  store i32 %4, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !254
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !254
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 0, ptr %i.bn, align 8, !tbaa !268
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.aw, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !4425
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !4425
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !4425
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !4425
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 8 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !254    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.k, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !268
  %i.x = and i32 %i.r, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !269

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.ag, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !254
  %i.ac = icmp eq ptr %i.l, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !140

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.024, 1
  %i.ae = and i32 %i.ad, %i.k                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !268
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !273, !llvm.loop !63

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !901
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.691", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 9                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 136
  br label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEC2EjNS_12DenseMapBaseIS9_S3_iS5_S8_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #29 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !118
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !118
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !118
  br label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEC2EjNS_12DenseMapBaseIS9_S3_iS5_S8_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEC2EjNS_12DenseMapBaseIS9_S3_iS5_S8_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 8, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE13maybeMoveFastEOS9_.exit.thread, label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE13maybeMoveFastEOS9_.exit

_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE13maybeMoveFastEOS9_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEC2EjNS_12DenseMapBaseIS9_S3_iS5_S8_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !4426
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !118
  br label %bb.b

_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE13maybeMoveFastEOS9_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEC2EjNS_12DenseMapBaseIS9_S3_iS5_S8_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE13maybeMoveFastEOS9_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE13maybeMoveFastEOS9_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #29 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !118
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !118
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !118
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(144) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE13maybeMoveFastEOS9_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE13maybeMoveFastEOS9_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEED2Ev.exit
end_hunk_2
begin_hunk_3_@_ZN4llvm18SCEVRewriteVisitorIN12_GLOBAL__N_121SCEVPredicateRewriterEE5visitEPKNS_4SCEVE:bb.a

bb.cf:                                            ; preds = %bb.ce
  %i.us = load ptr, ptr %i.um, align 8, !tbaa !777
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uo, i64 40
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !784
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 56
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !144
  %.not31.i.i = icmp eq ptr %i.us, %i.uw
  br i1 %.not31.i.i, label %.thread205, label %_ZN12_GLOBAL__N_121SCEVPredicateRewriter21addOverflowAssumptionEPKN4llvm13SCEVPredicateE.exit.thread212

.thread205:                                       ; preds = %bb.ce, %bb.cf
  %i.ux = load ptr, ptr %i.un, align 8, !tbaa !775 ; 5 uses
  %.not.i101 = icmp eq ptr %i.ux, null
  br i1 %.not.i101, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.thread205
  %i.uy = load ptr, ptr %i.st, align 8, !tbaa !776 ; 3 uses
  %.not6.i = icmp eq ptr %i.uy, null
  br i1 %.not6.i, label %_ZN12_GLOBAL__N_121SCEVPredicateRewriter21addOverflowAssumptionEPKN4llvm13SCEVPredicateE.exit.thread212, label %_ZN12_GLOBAL__N_121SCEVPredicateRewriter21addOverflowAssumptionEPKN4llvm13SCEVPredicateE.exit

bb.ch:                                            ; preds = %.thread205
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ux, i64 8 ; 3 uses
  %i.va = load i32, ptr %i.uz, align 8, !tbaa !134 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ux, i64 12
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !135
  %.not.i.i102 = icmp ult i32 %i.va, %i.vc
  br i1 %.not.i.i102, label %bb.cj, label %bb.ci, !prof !140

bb.ci:                                            ; preds = %bb.ch
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_13SCEVPredicateELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.ux, ptr noundef nonnull %i.uo)
  br label %_ZN12_GLOBAL__N_121SCEVPredicateRewriter21addOverflowAssumptionEPKN4llvm13SCEVPredicateE.exit.thread

bb.cj:                                            ; preds = %bb.ch
  %i.vd = zext i32 %i.va to i64
  %i.ve = load ptr, ptr %i.ux, align 8, !tbaa !107
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.ve, i64 %i.vd
  store ptr %i.uo, ptr %i.vf, align 1
  %i.vg = load i32, ptr %i.uz, align 8, !tbaa !134
  %i.vh = add i32 %i.vg, 1
  store i32 %i.vh, ptr %i.uz, align 8, !tbaa !134
  br label %_ZN12_GLOBAL__N_121SCEVPredicateRewriter21addOverflowAssumptionEPKN4llvm13SCEVPredicateE.exit.thread

_ZN12_GLOBAL__N_121SCEVPredicateRewriter21addOverflowAssumptionEPKN4llvm13SCEVPredicateE.exit: ; preds = %bb.cg
  %i.vi = load ptr, ptr %0, align 8, !tbaa !4489, !nonnull !104, !align !220
  %i.vj = load ptr, ptr %i.uy, align 8, !tbaa !95
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  %i.vl = load ptr, ptr %i.vk, align 8
  %i.vm = call noundef zeroext i1 %i.vl(ptr noundef nonnull align 8 dereferenceable(36) %i.uy, ptr noundef nonnull %i.uo, ptr noundef nonnull align 8 dereferenceable(1152) %i.vi) #29, !inline_history !4482
  br i1 %i.vm, label %_ZN12_GLOBAL__N_121SCEVPredicateRewriter21addOverflowAssumptionEPKN4llvm13SCEVPredicateE.exit.thread, label %_ZN12_GLOBAL__N_121SCEVPredicateRewriter21addOverflowAssumptionEPKN4llvm13SCEVPredicateE.exit.thread212

_ZN12_GLOBAL__N_121SCEVPredicateRewriter21addOverflowAssumptionEPKN4llvm13SCEVPredicateE.exit.thread: ; preds = %_ZN12_GLOBAL__N_121SCEVPredicateRewriter21addOverflowAssumptionEPKN4llvm13SCEVPredicateE.exit, %bb.cj, %bb.ci
  %i.vn = getelementptr inbounds nuw i8, ptr %.0.i.i234, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.vn, %i.ul
  br i1 %.not.i.i, label %._crit_edge, label %bb.ce

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_121SCEVPredicateRewriter21addOverflowAssumptionEPKN4llvm13SCEVPredicateE.exit.thread, %bb.cd
  %i.vo = load ptr, ptr %10, align 8, !tbaa !532
  br label %_ZN12_GLOBAL__N_121SCEVPredicateRewriter21addOverflowAssumptionEPKN4llvm13SCEVPredicateE.exit.thread212

_ZN12_GLOBAL__N_121SCEVPredicateRewriter21addOverflowAssumptionEPKN4llvm13SCEVPredicateE.exit.thread212: ; preds = %bb.cg, %_ZN12_GLOBAL__N_121SCEVPredicateRewriter21addOverflowAssumptionEPKN4llvm13SCEVPredicateE.exit, %bb.cf, %bb.cc, %._crit_edge
  %.4.i.i = phi ptr [ %i.vo, %._crit_edge ], [ %1, %bb.cc ], [ %1, %bb.cf ], [ %1, %_ZN12_GLOBAL__N_121SCEVPredicateRewriter21addOverflowAssumptionEPKN4llvm13SCEVPredicateE.exit ], [ %1, %bb.cg ]
  %i.vp = load i8, ptr %i.ud, align 8, !tbaa !525, !range !103, !noundef !104
  %i.vq = trunc nuw i8 %i.vp to i1
  br i1 %i.vq, label %bb.ck, label %_ZNSt14_Optional_baseISt4pairIPKN4llvm4SCEVENS1_11SmallVectorIPKNS1_13SCEVPredicateELj3EEEELb0ELb0EED2Ev.exit

bb.ck:                                            ; preds = %_ZN12_GLOBAL__N_121SCEVPredicateRewriter21addOverflowAssumptionEPKN4llvm13SCEVPredicateE.exit.thread212
  store i8 0, ptr %i.ud, align 8, !tbaa !525
  %i.vr = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !107 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.vu = icmp eq ptr %i.vs, %i.vt
  br i1 %i.vu, label %_ZNSt14_Optional_baseISt4pairIPKN4llvm4SCEVENS1_11SmallVectorIPKNS1_13SCEVPredicateELj3EEEELb0ELb0EED2Ev.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @free(ptr noundef %i.vs) #29
  br label %_ZNSt14_Optional_baseISt4pairIPKN4llvm4SCEVENS1_11SmallVectorIPKNS1_13SCEVPredicateELj3EEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt4pairIPKN4llvm4SCEVENS1_11SmallVectorIPKNS1_13SCEVPredicateELj3EEEELb0ELb0EED2Ev.exit: ; preds = %_ZN12_GLOBAL__N_121SCEVPredicateRewriter21addOverflowAssumptionEPKN4llvm13SCEVPredicateE.exit.thread212, %bb.ck, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %_ZN4llvm11SCEVVisitorIN12_GLOBAL__N_121SCEVPredicateRewriterEPKNS_4SCEVEE5visitES5_.exit

bb.cm:                                            ; preds = %bb.e
  unreachable

_ZN4llvm11SCEVVisitorIN12_GLOBAL__N_121SCEVPredicateRewriterEPKNS_4SCEVEE5visitES5_.exit: ; preds = %.thread202, %bb.e, %bb.cb, %bb.by, %_ZNSt14_Optional_baseISt4pairIPKN4llvm4SCEVENS1_11SmallVectorIPKNS1_13SCEVPredicateELj3EEEELb0ELb0EED2Ev.exit, %.critedge.i, %bb.an, %.thread187, %_ZN12_GLOBAL__N_121SCEVPredicateRewriter21addOverflowAssumptionEPKN4llvm14SCEVAddRecExprENS1_17SCEVWrapPredicate18IncrementWrapFlagsE.exit.i.thread, %.thread, %_ZN12_GLOBAL__N_121SCEVPredicateRewriter21addOverflowAssumptionEPKN4llvm14SCEVAddRecExprENS1_17SCEVWrapPredicate18IncrementWrapFlagsE.exit.i86.thread, %bb.l, %bb.k, %bb.h, %bb.i, %bb.j, %bb.g, %bb.f, %bb.e, %bb.e, %_ZN4llvm18SCEVRewriteVisitorIN12_GLOBAL__N_121SCEVPredicateRewriterEE12visitAddExprEPKNS_11SCEVAddExprE.exit, %_ZN4llvm18SCEVRewriteVisitorIN12_GLOBAL__N_121SCEVPredicateRewriterEE12visitMulExprEPKNS_11SCEVMulExprE.exit, %_ZN4llvm18SCEVRewriteVisitorIN12_GLOBAL__N_121SCEVPredicateRewriterEE15visitAddRecExprEPKNS_14SCEVAddRecExprE.exit, %_ZN4llvm18SCEVRewriteVisitorIN12_GLOBAL__N_121SCEVPredicateRewriterEE13visitSMaxExprEPKNS_12SCEVSMaxExprE.exit, %_ZN4llvm18SCEVRewriteVisitorIN12_GLOBAL__N_121SCEVPredicateRewriterEE13visitUMaxExprEPKNS_12SCEVUMaxExprE.exit, %_ZN4llvm18SCEVRewriteVisitorIN12_GLOBAL__N_121SCEVPredicateRewriterEE13visitSMinExprEPKNS_12SCEVSMinExprE.exit, %_ZN4llvm18SCEVRewriteVisitorIN12_GLOBAL__N_121SCEVPredicateRewriterEE13visitUMinExprEPKNS_12SCEVUMinExprE.exit, %_ZN4llvm18SCEVRewriteVisitorIN12_GLOBAL__N_121SCEVPredicateRewriterEE23visitSequentialUMinExprEPKNS_22SCEVSequentialUMinExprE.exit
  %.0.i = phi ptr [ %.4.i.i, %_ZNSt14_Optional_baseISt4pairIPKN4llvm4SCEVENS1_11SmallVectorIPKNS1_13SCEVPredicateELj3EEEELb0ELb0EED2Ev.exit ], [ %1, %bb.e ], [ %1, %bb.e ], [ %1, %bb.f ], [ %i.bo, %bb.i ], [ %1, %bb.k ], [ %i.ek, %_ZN12_GLOBAL__N_121SCEVPredicateRewriter21addOverflowAssumptionEPKN4llvm14SCEVAddRecExprENS1_17SCEVWrapPredicate18IncrementWrapFlagsE.exit.i86.thread ], [ %i.ii, %_ZN4llvm18SCEVRewriteVisitorIN12_GLOBAL__N_121SCEVPredicateRewriterEE12visitAddExprEPKNS_11SCEVAddExprE.exit ], [ %i.jr, %_ZN4llvm18SCEVRewriteVisitorIN12_GLOBAL__N_121SCEVPredicateRewriterEE12visitMulExprEPKNS_11SCEVMulExprE.exit ], [ %i.gv, %_ZN12_GLOBAL__N_121SCEVPredicateRewriter21addOverflowAssumptionEPKN4llvm14SCEVAddRecExprENS1_17SCEVWrapPredicate18IncrementWrapFlagsE.exit.i.thread ], [ %i.ly, %_ZN4llvm18SCEVRewriteVisitorIN12_GLOBAL__N_121SCEVPredicateRewriterEE15visitAddRecExprEPKNS_14SCEVAddRecExprE.exit ], [ %i.nh, %_ZN4llvm18SCEVRewriteVisitorIN12_GLOBAL__N_121SCEVPredicateRewriterEE13visitSMaxExprEPKNS_12SCEVSMaxExprE.exit ], [ %i.oq, %_ZN4llvm18SCEVRewriteVisitorIN12_GLOBAL__N_121SCEVPredicateRewriterEE13visitUMaxExprEPKNS_12SCEVUMaxExprE.exit ], [ %i.pz, %_ZN4llvm18SCEVRewriteVisitorIN12_GLOBAL__N_121SCEVPredicateRewriterEE13visitSMinExprEPKNS_12SCEVSMinExprE.exit ], [ %i.ri, %_ZN4llvm18SCEVRewriteVisitorIN12_GLOBAL__N_121SCEVPredicateRewriterEE13visitUMinExprEPKNS_12SCEVUMinExprE.exit ], [ %i.sr, %_ZN4llvm18SCEVRewriteVisitorIN12_GLOBAL__N_121SCEVPredicateRewriterEE23visitSequentialUMinExprEPKNS_22SCEVSequentialUMinExprE.exit ], [ %1, %bb.an ], [ %i.bd, %bb.g ], [ %1, %bb.h ], [ %i.bs, %bb.j ], [ %i.cd, %bb.l ], [ %i.eo, %.thread ], [ %i.gz, %.thread187 ], [ %i.kj, %.critedge.i ], [ %i.tp, %bb.by ], [ %i.tx, %bb.cb ], [ %1, %bb.e ], [ %1, %.thread202 ]
  store ptr %.0.i, ptr %i.b, align 8, !tbaa !254
  %i.vv = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS4_JRS4_EEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !4490
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.vv, 0
  %i.vw = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %bb.cn

bb.cn:                                            ; preds = %_ZN4llvm11SCEVVisitorIN12_GLOBAL__N_121SCEVPredicateRewriterEPKNS_4SCEVEE5visitES5_.exit, %bb.d
  %.0 = phi ptr [ %i.as, %bb.d ], [ %i.vx, %_ZN4llvm11SCEVVisitorIN12_GLOBAL__N_121SCEVPredicateRewriterEPKNS_4SCEVEE5visitES5_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS4_JS6_EEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(120) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !4495 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !4495 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !4495 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !4495
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !308    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [128 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !268
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !269

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !308
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, label %bb.c, !prof !140

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [128 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !268
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !273, !llvm.loop !64

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !903
  %i.ao = shl i32 %i.b, 1
  %i.ap = and i32 %i.ao, -4
  %i.aq = add i32 %i.ap, 4
  %i.ar = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit, label %bb.d, !prof !140

bb.d:                                             ; preds = %.loopexit
  %i.as = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.as)
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !903
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre17 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.au = phi ptr [ %.pre17, %bb.d ], [ %i.e, %.loopexit ]
  %i.av = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aw = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 9 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.j
  %i.ay = select i1 %.not.i.i.i.i, ptr %i.au, ptr %i.d
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 7                 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !268
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !268
  %i.bk = load i32, ptr %0, align 8               ; 2 uses
  %3 = and i32 %i.bk, -2
  %i.bl = add i32 %3, 2
  %4 = and i32 %i.bk, 1
  %5 = or disjoint i32 %i.bl, %4
  store i32 %5, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !308
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !308
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bn, i8 0, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load <2 x ptr>, ptr %2, align 8, !tbaa !253
  store <2 x ptr> %i.bp, ptr %i.bn, align 8, !tbaa !253
  store ptr null, ptr %2, align 8, !tbaa !881
  store ptr null, ptr %i.bo, align 8, !tbaa !340
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !268
  store i32 %i.bs, ptr %i.bq, align 8, !tbaa !268
  store i32 0, ptr %i.br, align 8, !tbaa !268
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 28 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !268
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !268
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !268
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !268
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  store i32 1, ptr %i.bx, align 8
  store i32 0, ptr %i.bz, align 8
  call void @_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE8swapImplERSC_(ptr noundef nonnull align 8 dereferenceable(80) %i.bx, ptr noundef nonnull align 8 dereferenceable(80) %i.by)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.aw, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !4500
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !4500
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !4500
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !4500
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 520
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !308    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.k, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [128 x i8], ptr %.sink2.i.i, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !268
  %i.x = and i32 %i.r, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !269

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.ag, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !308
  %i.ac = icmp eq ptr %i.l, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !140

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.024, 1
  %i.ae = and i32 %i.ad, %i.k                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [128 x i8], ptr %.sink2.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !268
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !273, !llvm.loop !64

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !903
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.910", align 8 ; 17 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 520
  br label %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEC2EjNS_12DenseMapBaseISB_S3_S5_S7_SA_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 7                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #29 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !118
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !118
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !118
  br label %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEC2EjNS_12DenseMapBaseISB_S3_S5_S7_SA_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEC2EjNS_12DenseMapBaseISB_S3_S5_S7_SA_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(528) %0)
  %i.ad = load i32, ptr %2, align 8               ; 2 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE13maybeMoveFastEOSB_.exit.thread, label %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE13maybeMoveFastEOSB_.exit

_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE13maybeMoveFastEOSB_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEC2EjNS_12DenseMapBaseISB_S3_S5_S7_SA_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !4501
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !118
  br label %bb.b

_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE13maybeMoveFastEOSB_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEC2EjNS_12DenseMapBaseISB_S3_S5_S7_SA_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE13maybeMoveFastEOSB_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 520
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPKNS_10BasicBlockENS_15ScalarEvolution10LoopGuardsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE13maybeMoveFastEOSB_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 7                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #29 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !118
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !118
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !118
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
end_hunk_3
begin_hunk_4_@_ZL29getNextSCEVDivisibleByDivisorPKN4llvm4SCEVERKNS_5APIntERNS_15ScalarEvolutionE:bb.a
  store i64 %i.ax, ptr %5, align 8, !alias.scope !4546
  store i32 0, ptr %i.aq, align 8, !tbaa !274, !noalias !4546
  call void @llvm.experimental.noalias.scope.decl(metadata !4547)
  %i.ay = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(12) %3) #29, !noalias !4547 ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ba = load i32, ptr %i.av, align 8, !tbaa !274, !noalias !4547
  store i32 %i.ba, ptr %i.az, align 8, !tbaa !274, !alias.scope !4547
  %i.bb = load i64, ptr %5, align 8, !noalias !4547
  store i64 %i.bb, ptr %4, align 8, !alias.scope !4547
  store i32 0, ptr %i.av, align 8, !tbaa !274, !noalias !4547
  %i.bc = load ptr, ptr %2, align 8, !tbaa !275, !nonnull !104, !align !220
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.bc) #29
  %i.be = call noundef ptr @_ZN4llvm11ConstantInt3getERNS_11LLVMContextERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull align 8 dereferenceable(12) %4) #29, !inline_history !365
  %i.bf = call noundef ptr @_ZN4llvm15ScalarEvolution11getConstantEPNS_11ConstantIntE(ptr noundef nonnull align 8 dereferenceable(1152) %2, ptr noundef %i.be), !inline_history !365 ; 2 uses
  %i.bg = load i32, ptr %i.az, align 8, !tbaa !274
  %i.bh = icmp ugt i32 %i.bg, 64
  br i1 %i.bh, label %bb.i, label %_ZN4llvm5APIntD2Ev.exit

bb.i:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  %i.bi = load ptr, ptr %4, align 8, !tbaa !118   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZN4llvm5APIntD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.bi) #32
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm5APIntC2ERKS0_.exit, %bb.i, %bb.j
  %i.bk = load i32, ptr %i.av, align 8, !tbaa !274
  %i.bl = icmp ugt i32 %i.bk, 64
  br i1 %i.bl, label %bb.k, label %_ZN4llvm5APIntD2Ev.exit8

bb.k:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.bm = load ptr, ptr %5, align 8, !tbaa !118   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN4llvm5APIntD2Ev.exit8, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #32
  br label %_ZN4llvm5APIntD2Ev.exit8

_ZN4llvm5APIntD2Ev.exit8:                         ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.k, %bb.l
  %i.bo = load i32, ptr %i.aq, align 8, !tbaa !274
  %i.bp = icmp ugt i32 %i.bo, 64
  br i1 %i.bp, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit8
  %i.bq = load ptr, ptr %6, align 8, !tbaa !118   ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %_ZN4llvm5APIntD2Ev.exit8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %.pr = load i32, ptr %i.aj, align 8, !tbaa !274
  %i.bs = icmp ugt i32 %.pr, 64
  br i1 %i.bs, label %.thread, label %_ZN4llvm5APIntD2Ev.exit10

.thread:                                          ; preds = %_ZNK4llvm5APInt6isZeroEv.exit, %bb.o
  %.019 = phi ptr [ %i.bf, %bb.o ], [ %0, %_ZNK4llvm5APInt6isZeroEv.exit ] ; 2 uses
  %i.bt = load ptr, ptr %3, align 8, !tbaa !118   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %_ZN4llvm5APIntD2Ev.exit10, label %bb.p

bb.p:                                             ; preds = %.thread
  call void @_ZdaPv(ptr noundef nonnull %i.bt) #32
  br label %_ZN4llvm5APIntD2Ev.exit10

_ZN4llvm5APIntD2Ev.exit10:                        ; preds = %.split16, %bb.o, %.thread, %bb.p
  %.018 = phi ptr [ %i.bf, %bb.o ], [ %.019, %.thread ], [ %.019, %bb.p ], [ %0, %.split16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.a, %.split, %_ZNK4llvm5APInt13isNonPositiveEv.exit, %_ZN4llvm5APIntD2Ev.exit10
  %.1 = phi ptr [ %.018, %_ZN4llvm5APIntD2Ev.exit10 ], [ %0, %.split ], [ %0, %_ZNK4llvm5APInt13isNonPositiveEv.exit ], [ %0, %bb.b ], [ %0, %bb.a ], [ %0, %bb.c ]
  ret ptr %.1
}

declare void @_ZNK4llvm13ConstantRange3subERKS0_(ptr dead_on_unwind writable sret(%"class.llvm::ConstantRange") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVES5_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E24lookupOrInsertIntoBucketIS6_JEEES2_IPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !4552 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !4552 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !4552 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !4552
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !873    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !838  ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = mul i64 %i.t, -4658895280553007687       ; 2 uses
  %i.v = lshr i64 %i.u, 31
  %i.w = xor i64 %i.v, %i.u
  %i.x = shl i64 %i.q, 32
  %i.y = and i64 %i.w, 4294967295
  %i.z = or disjoint i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, -4658895280553007687      ; 2 uses
  %i.ab = lshr i64 %i.aa, 31
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.l, %i.ad                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !268
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph.i, label %.loopexit, !prof !269

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.an = phi ptr [ %i.ax, %bb.c ], [ %i.ag, %bb.b ] ; 3 uses
  %.024.i = phi i32 [ %i.av, %bb.c ], [ %i.ae, %bb.b ]
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !873
  %i.ap = icmp eq ptr %i.m, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.s, %i.ar
  %i.at = select i1 %i.ap, i1 %i.as, i1 false
  br i1 %i.at, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVES5_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E15LookupBucketForIS6_EEbRKT_RPSC_.exit, label %bb.c, !prof !140

bb.c:                                             ; preds = %.lr.ph.i
  %i.au = add nuw i32 %.024.i, 1
  %i.av = and i32 %i.au, %i.l                     ; 3 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.aw ; 2 uses
  %i.ay = lshr i64 %i.aw, 5
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !268
  %i.bb = and i32 %i.av, 31
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i1
  br i1 %i.bd, label %.lr.ph.i, label %.loopexit, !prof !273, !llvm.loop !67

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.ag, %bb.b ], [ null, %bb.a ], [ %i.ax, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !905
  %i.be = shl i32 %i.b, 1
  %i.bf = and i32 %i.be, -4
  %i.bg = add i32 %i.bf, 4
  %i.bh = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.bg, %i.bh
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVES5_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit, label %bb.d, !prof !140

bb.d:                                             ; preds = %.loopexit
  %i.bi = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVES5_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.bi)
  %i.bj = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVES5_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E15LookupBucketForIS6_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !905
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVES5_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVES5_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.bk = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.bl = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.bm = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.bn = select i1 %.not.i.i.i.i, ptr %i.bl, ptr %i.j
  %i.bo = select i1 %.not.i.i.i.i, ptr %i.bk, ptr %i.d
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 4                 ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = and i32 %i.bt, 31
  %i.bv = shl nuw i32 1, %i.bu
  %i.bw = lshr i64 %i.bs, 5
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !268
  %i.bz = or i32 %i.bv, %i.by
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !268
  %i.ca = load i32, ptr %0, align 8               ; 2 uses
  %2 = and i32 %i.ca, -2
  %i.cb = add i32 %2, 2
  %3 = and i32 %i.ca, 1
  %4 = or disjoint i32 %i.cb, %3
  store i32 %4, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVES5_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E15LookupBucketForIS6_EEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVES5_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E15LookupBucketForIS6_EEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVES5_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.bm, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVES5_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit ], [ %i.an, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVES5_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVES5_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E15LookupBucketForIS6_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !4557
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !4557
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !4557
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !4557
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !873    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !838  ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = mul i64 %i.s, -4658895280553007687       ; 2 uses
  %i.u = lshr i64 %i.t, 31
  %i.v = xor i64 %i.u, %i.t
  %i.w = shl i64 %i.p, 32
  %i.x = and i64 %i.v, 4294967295
  %i.y = or disjoint i64 %i.x, %i.w
  %i.z = mul i64 %i.y, -4658895280553007687       ; 2 uses
  %i.aa = lshr i64 %i.z, 31
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.k, %i.ac                     ; 3 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i, i64 %i.ae ; 2 uses
  %i.ag = lshr i64 %i.ae, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !268
  %i.aj = and i32 %i.ad, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph, label %.thread, !prof !269

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.am = phi ptr [ %i.aw, %bb.c ], [ %i.af, %bb.b ] ; 3 uses
  %.024 = phi i32 [ %i.au, %bb.c ], [ %i.ad, %bb.b ]
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !873
  %i.ao = icmp eq ptr %i.l, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %i.r, %i.aq
  %i.as = select i1 %i.ao, i1 %i.ar, i1 false     ; 3 uses
  br i1 %i.as, label %.thread, label %bb.c, !prof !140

bb.c:                                             ; preds = %.lr.ph
  %i.at = add nuw i32 %.024, 1
  %i.au = and i32 %i.at, %i.k                     ; 3 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i, i64 %i.av ; 2 uses
  %i.ax = lshr i64 %i.av, 5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !268
  %i.ba = and i32 %i.au, 31
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = trunc i32 %i.bb to i1
  br i1 %i.bc, label %.lr.ph, label %.thread, !prof !273, !llvm.loop !67

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.af, %bb.b ], [ null, %bb.a ], [ %i.aw, %bb.c ], [ %i.am, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.as, %bb.c ], [ %i.as, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !905
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVES5_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.609", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEC2EjNS_12DenseMapBaseISC_S5_S7_S9_SB_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #29 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !118
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !118
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !118
  br label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEC2EjNS_12DenseMapBaseISC_S5_S7_S9_SB_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEC2EjNS_12DenseMapBaseISC_S5_S7_S9_SB_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVES5_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE13maybeMoveFastEOSC_.exit.thread, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE13maybeMoveFastEOSC_.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE13maybeMoveFastEOSC_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEC2EjNS_12DenseMapBaseISC_S5_S7_S9_SB_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !906
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !118
  br label %bb.b

_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE13maybeMoveFastEOSC_.exit: ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEC2EjNS_12DenseMapBaseISC_S5_S7_S9_SB_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE13maybeMoveFastEOSC_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVES5_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE13maybeMoveFastEOSC_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #29 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !118
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !118
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !118
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVES5_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVES5_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVES4_ENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE15allocateBucketsEj.exit.i ]
end_hunk_4
begin_hunk_5_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallPtrSetINS_14PointerIntPairIPKNS_4LoopELj1EbNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SF_EEEES4_SF_SH_SK_E8moveFromERSL_:bb.a
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !254  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !268
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !268
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !4874

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %.lcssa12.i ; 3 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !254
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  tail call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvjS3_OS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.at, ptr noundef nonnull %i.av, i32 noundef 4, ptr noundef nonnull %i.aw, ptr noundef nonnull align 8 dereferenceable(56) %i.au) #29
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !268
  %i.ba = or i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !268
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !102, !range !103, !noundef !104
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallPtrSetINS_14PointerIntPairIPKNS_4LoopELj1EbNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SF_EEEES4_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.be = load ptr, ptr %i.au, align 8, !tbaa !105
  tail call void @free(ptr noundef %i.be) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallPtrSetINS_14PointerIntPairIPKNS_4LoopELj1EbNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SF_EEEES4_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallPtrSetINS_14PointerIntPairIPKNS_4LoopELj1EbNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SF_EEEES4_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit: ; preds = %._crit_edge.i, %bb.c
  %i.bf = add i32 %.0.i17, -1
  %i.bg = and i32 %i.bf, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bg, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !4875

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallPtrSetINS_14PointerIntPairIPKNS_4LoopELj1EbNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj1ESB_EEEELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SF_EEEES4_SF_SH_SK_E8moveFromERSL_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallPtrSetINS_14PointerIntPairIPKNS_4LoopELj1EbNS_21PointerLikeTypeTraitsISC_EENS_18PointerIntPairInfoISC_Lj1ESE_EEEELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SI_EEEES7_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !4876

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallPtrSetINS_14PointerIntPairIPKNS_4LoopELj1EbNS_21PointerLikeTypeTraitsISC_EENS_18PointerIntPairInfoISC_Lj1ESE_EEEELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SI_EEEES7_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !667
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallPtrSetINS_14PointerIntPairIPKNS_4LoopELj1EbNS_21PointerLikeTypeTraitsISC_EENS_18PointerIntPairInfoISC_Lj1ESE_EEEELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SI_EEEES7_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallPtrSetINS_14PointerIntPairIPKNS_4LoopELj1EbNS_21PointerLikeTypeTraitsISC_EENS_18PointerIntPairInfoISC_Lj1ESE_EEEELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SI_EEEES7_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallPtrSetINS_14PointerIntPairIPKNS_4LoopELj1EbNS_21PointerLikeTypeTraitsISC_EENS_18PointerIntPairInfoISC_Lj1ESE_EEEELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SI_EEEES7_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bh = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallPtrSetINS_14PointerIntPairIPKNS_4LoopELj1EbNS_21PointerLikeTypeTraitsISC_EENS_18PointerIntPairInfoISC_Lj1ESE_EEEELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SI_EEEES7_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !666
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !666
  %i.bl = icmp eq i32 %i.bh, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIPKNS_4SCEVENS_11SmallPtrSetINS_14PointerIntPairIPKNS_4LoopELj1EbNS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SE_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallPtrSetINS_14PointerIntPairIPKNS_4LoopELj1EbNS_21PointerLikeTypeTraitsISC_EENS_18PointerIntPairInfoISC_Lj1ESE_EEEELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SI_EEEES7_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !668
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 6
  %i.bp = add nuw nsw i64 %i.bn, 31
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 1073741820
  %i.bs = add nuw nsw i64 %i.br, %i.bo
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.bs, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !667
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_4SCEVENS_11SmallPtrSetINS_14PointerIntPairIPKNS_4LoopELj1EbNS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SE_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_4SCEVENS_11SmallPtrSetINS_14PointerIntPairIPKNS_4LoopELj1EbNS_21PointerLikeTypeTraitsIS8_EENS_18PointerIntPairInfoIS8_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SE_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVENS_11SmallPtrSetINS_14PointerIntPairIPKNS_4LoopELj1EbNS_21PointerLikeTypeTraitsISC_EENS_18PointerIntPairInfoISC_Lj1ESE_EEEELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SI_EEEES7_SI_SK_SN_E8moveFromERSO_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

declare void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvjS3_OS0_(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(17)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEES9_SB_SD_SG_E24lookupOrInsertIntoBucketIS9_JSB_EEESt4pairIPSG_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !4881 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !4881 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !4881 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !4881
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !118 ; 3 uses
  %i.m = lshr i64 %.sroa.0.0.copyload.i, 9
  %i.n = xor i64 %i.m, %.sroa.0.0.copyload.i
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.l, %i.o                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw [88 x i8], ptr %.sink2.i.i.i, i64 %i.q ; 2 uses
  %i.s = lshr i64 %i.q, 5
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !268
  %i.v = and i32 %i.p, 31
  %i.w = lshr i32 %i.u, %i.v
  %i.x = trunc i32 %i.w to i1
  br i1 %i.x, label %.lr.ph.i, label %.loopexit, !prof !269

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.y = phi ptr [ %i.ad, %bb.c ], [ %i.r, %bb.b ] ; 2 uses
  %.01624.i = phi i32 [ %i.ab, %bb.c ], [ %i.p, %bb.b ]
  %.0.copyload.i.i2.i.i.i = load i64, ptr %i.y, align 8
  %i.z = icmp eq i64 %.sroa.0.0.copyload.i, %.0.copyload.i.i2.i.i.i
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEES9_SB_SD_SG_E15LookupBucketForIS9_EEbRKT_RPSG_.exit, label %bb.c, !prof !140

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.01624.i, 1
  %i.ab = and i32 %i.aa, %i.l                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [88 x i8], ptr %.sink2.i.i.i, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !268
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !273, !llvm.loop !80

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.r, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !944
  %i.ak = shl i32 %i.b, 1
  %i.al = and i32 %i.ak, -4
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEES9_SB_SD_SG_E22findBucketForInsertionIS9_EEPSG_RKT_SK_.exit, label %bb.d, !prof !140

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEES9_SB_SD_SG_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEES9_SB_SD_SG_E15LookupBucketForIS9_EEbRKT_RPSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !944
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre18 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEES9_SB_SD_SG_E22findBucketForInsertionIS9_EEPSG_RKT_SK_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEES9_SB_SD_SG_E22findBucketForInsertionIS9_EEPSG_RKT_SK_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre18, %bb.d ], [ %i.e, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.as = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 9 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.at = select i1 %.not.i.i.i.i, ptr %i.ar, ptr %i.j
  %i.au = select i1 %.not.i.i.i.i, ptr %i.aq, ptr %i.d
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 88                ; 2 uses
  %i.az = trunc i64 %i.ay to i32
  %i.ba = and i32 %i.az, 31
  %i.bb = shl nuw i32 1, %i.ba
  %i.bc = lshr i64 %i.ay, 5
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !268
  %i.bf = or i32 %i.bb, %i.be
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !268
  %i.bg = load i32, ptr %0, align 8               ; 2 uses
  %3 = and i32 %i.bg, -2
  %i.bh = add i32 %3, 2
  %4 = and i32 %i.bg, 1
  %5 = or disjoint i32 %i.bh, %4
  store i32 %5, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bi = load i64, ptr %1, align 8, !tbaa !118
  store i64 %i.bi, ptr %i.as, align 8, !tbaa !118
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bj, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 25, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.as, i64 40 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !107
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  store i32 0, ptr %i.bm, align 8, !tbaa !134
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 52
  store i32 4, ptr %i.bn, align 4, !tbaa !135
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !134
  %.not.i.i.i6 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i6, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEES9_SB_SD_SG_E15LookupBucketForIS9_EEbRKT_RPSG_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEES9_SB_SD_SG_E22findBucketForInsertionIS9_EEPSG_RKT_SK_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.br = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPKNS_13SCEVPredicateEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, ptr noundef nonnull align 8 dereferenceable(48) %i.bq) ; 0 uses
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEES9_SB_SD_SG_E15LookupBucketForIS9_EEbRKT_RPSG_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEES9_SB_SD_SG_E15LookupBucketForIS9_EEbRKT_RPSG_.exit: ; preds = %.lr.ph.i, %bb.e, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEES9_SB_SD_SG_E22findBucketForInsertionIS9_EEPSG_RKT_SK_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %bb.e ], [ %i.as, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEES9_SB_SD_SG_E22findBucketForInsertionIS9_EEPSG_RKT_SK_.exit ], [ %i.y, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %bb.e ], [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEES9_SB_SD_SG_E22findBucketForInsertionIS9_EEPSG_RKT_SK_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEES9_SB_SD_SG_E15LookupBucketForIS9_EEbRKT_RPSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !4886
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !4886
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !4886
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !4886
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !118 ; 3 uses
  %i.l = lshr i64 %.sroa.0.0.copyload, 9
  %i.m = xor i64 %i.l, %.sroa.0.0.copyload
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.k, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [88 x i8], ptr %.sink2.i.i, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !268
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph, label %.thread, !prof !269

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ac, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.01624 = phi i32 [ %i.aa, %bb.c ], [ %i.o, %bb.b ]
  %.0.copyload.i.i2.i.i = load i64, ptr %i.x, align 8
  %i.y = icmp eq i64 %.sroa.0.0.copyload, %.0.copyload.i.i2.i.i ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !140

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.01624, 1
  %i.aa = and i32 %i.z, %i.k                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [88 x i8], ptr %.sink2.i.i, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !268
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !273, !llvm.loop !80

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.x, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !944
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEES9_SB_SD_SG_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.528", align 8 ; 14 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 360
  br label %_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEC2EjNS_12DenseMapBaseISG_S8_SA_SC_SF_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 88                 ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #29 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !118
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !118
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !118
  br label %_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEC2EjNS_12DenseMapBaseISG_S8_SA_SC_SF_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEC2EjNS_12DenseMapBaseISG_S8_SA_SC_SF_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEES9_SB_SD_SG_E8moveFromERSH_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(368) %0)
  %i.ad = load i32, ptr %2, align 8               ; 2 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEE13maybeMoveFastEOSG_.exit.thread, label %_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEE13maybeMoveFastEOSG_.exit

_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEE13maybeMoveFastEOSG_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEC2EjNS_12DenseMapBaseISG_S8_SA_SC_SF_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !4887
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !118
  br label %bb.b

_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEE13maybeMoveFastEOSG_.exit: ; preds = %_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEC2EjNS_12DenseMapBaseISG_S8_SA_SC_SF_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEE13maybeMoveFastEOSG_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEES9_SB_SD_SG_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEE13maybeMoveFastEOSG_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 88               ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #29 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !118
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !118
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !118
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 360
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEES9_SB_SD_SG_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEES9_SB_SD_SG_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapINS_14PointerIntPairIPNS_5ValueELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_15ScalarEvolution9ExitLimitELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEE15allocateBucketsEj.exit.i ]
end_hunk_5
begin_hunk_6_@_ZN4llvm15AnalysisManagerINS_8FunctionEJEE11Invalidator14invalidateImplINS_6detail19AnalysisResultModelIS1_NS_18AssumptionAnalysisENS_15AssumptionCacheES3_Lb1EEEEEbPNS_11AnalysisKeyERS1_RKNS_17PreservedAnalysesE:bb.a
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i.i.i, i64 %.pre-phi
  %.not = icmp eq ptr %.lcssa.sink.i.i, %i.ao
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E4findEPKS2_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !951, !nonnull !104, !align !220 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !848, !noalias !4993 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !952, !noalias !4993 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.av = load i32, ptr %i.au, align 4, !tbaa !847, !noalias !4993 ; 3 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.loopexit.i.i6, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = add i32 %i.av, -1                       ; 2 uses
  %i.ay = ptrtoint ptr %1 to i64
  %i.az = mul i64 %i.ay, -4658895280553007687     ; 2 uses
  %i.ba = lshr i64 %i.az, 31
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = ptrtoint ptr %2 to i64
  %i.bd = mul i64 %i.bc, -4658895280553007687     ; 2 uses
  %i.be = lshr i64 %i.bd, 31
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = shl i64 %i.bb, 32
  %i.bh = and i64 %i.bf, 4294967295
  %i.bi = or disjoint i64 %i.bh, %i.bg
  %i.bj = mul i64 %i.bi, -4658895280553007687     ; 2 uses
  %i.bk = lshr i64 %i.bj, 31
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = and i32 %i.ax, %i.bm                    ; 3 uses
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = lshr i64 %i.bo, 5
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !268, !noalias !4994
  %i.bs = and i32 %i.bn, 31
  %i.bt = lshr i32 %i.br, %i.bs
  %i.bu = trunc i32 %i.bt to i1
  br i1 %i.bu, label %.lr.ph.i.i.i, label %.loopexit.i.i6, !prof !269

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %i.bv = phi i64 [ %i.cf, %bb.f ], [ %i.bo, %bb.e ] ; 2 uses
  %.017.i.i.i = phi i32 [ %i.ce, %bb.f ], [ %i.bn, %bb.e ]
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.bv ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !954, !noalias !4994
  %i.by = icmp eq ptr %1, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !4994
  %i.cb = icmp eq ptr %2, %i.ca
  %i.cc = select i1 %i.by, i1 %i.cb, i1 false
  br i1 %i.cc, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit, label %bb.f, !prof !140

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.cd = add nuw i32 %.017.i.i.i, 1
  %i.ce = and i32 %i.cd, %i.ax                    ; 3 uses
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %i.cg = lshr i64 %i.cf, 5
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !268, !noalias !4994
  %i.cj = and i32 %i.ce, 31
  %i.ck = lshr i32 %i.ci, %i.cj
  %i.cl = trunc i32 %i.ck to i1
  br i1 %i.cl, label %.lr.ph.i.i.i, label %.loopexit.i.i6, !prof !273

.loopexit.i.i6:                                   ; preds = %bb.f, %bb.e, %bb.d
  %i.cm = zext i32 %i.av to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit: ; preds = %.lr.ph.i.i.i, %.loopexit.i.i6
  %i.cn = phi i64 [ %i.cm, %.loopexit.i.i6 ], [ %i.bv, %.lr.ph.i.i.i ]
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !956
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !851 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !95
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = tail call noundef zeroext i1 %i.cv(ptr noundef nonnull align 8 dereferenceable(168) %i.cs, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(16) %0) #29
  %i.cx = zext i1 %i.cw to i8
  store ptr %1, ptr %4, align 8, !tbaa !958
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 %i.cx, ptr %i.cy, align 8, !tbaa !959
  %i.cz = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E24lookupOrInsertIntoBucketIS3_JbEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.cy), !noalias !4995
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.cz, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E4findEPKS2_.exit, %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit
  %.lcssa.sink.i.i.pn = phi ptr [ %.fca.0.extract.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS2_IS4_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JEE11InvalidatorEEESt14default_deleteISF_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SK_EEEES7_SK_SM_SO_E4findERKS7_.exit ], [ %.lcssa.sink.i.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E4findEPKS2_.exit ]
  %.0.in.in = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.pn, i64 8
  %.0.in = load i8, ptr %.0.in.in, align 8, !tbaa !959, !range !103, !noundef !104
  %.0 = trunc nuw i8 %.0.in to i1
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E24lookupOrInsertIntoBucketIS3_JbEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !5000 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !5000 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !5000 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !5000
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 8 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !950    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !268
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !269

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !950
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit, label %bb.c, !prof !140

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !268
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !273, !llvm.loop !83

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !961
  %i.ao = shl i32 %i.b, 1
  %i.ap = and i32 %i.ao, -4
  %i.aq = add i32 %i.ap, 4
  %i.ar = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !140

bb.d:                                             ; preds = %.loopexit
  %i.as = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.as)
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !961
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre17 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.au = phi ptr [ %.pre17, %bb.d ], [ %i.e, %.loopexit ]
  %i.av = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aw = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.j
  %i.ay = select i1 %.not.i.i.i.i, ptr %i.au, ptr %i.d
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 4                 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !268
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !268
  %i.bk = load i32, ptr %0, align 8               ; 2 uses
  %3 = and i32 %i.bk, -2
  %i.bl = add i32 %3, 2
  %4 = and i32 %i.bk, 1
  %5 = or disjoint i32 %i.bl, %4
  store i32 %5, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !950
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !950
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bo = load i8, ptr %2, align 1, !tbaa !119, !range !103, !noundef !104
  store i8 %i.bo, ptr %i.bn, align 8, !tbaa !119
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.aw, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !5005
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !5005
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !5005
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !5005
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 8 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !950    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.k, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !268
  %i.x = and i32 %i.r, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !269

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.ag, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !950
  %i.ac = icmp eq ptr %i.l, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !140

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.024, 1
  %i.ae = and i32 %i.ad, %i.k                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !268
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !273, !llvm.loop !83

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !961
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.1446", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 9                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 136
  br label %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEEC2EjNS_12DenseMapBaseIS8_S2_bS4_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #29 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !118
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !118
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !118
  br label %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEEC2EjNS_12DenseMapBaseIS8_S2_bS4_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEEC2EjNS_12DenseMapBaseIS8_S2_bS4_S7_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 8, %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE13maybeMoveFastEOS8_.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE13maybeMoveFastEOS8_.exit

_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE13maybeMoveFastEOS8_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEEC2EjNS_12DenseMapBaseIS8_S2_bS4_S7_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !5006
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !118
  br label %bb.b

_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE13maybeMoveFastEOS8_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEEC2EjNS_12DenseMapBaseIS8_S2_bS4_S7_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE13maybeMoveFastEOS8_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE13maybeMoveFastEOS8_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #29 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !118
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !118
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !118
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(144) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE13maybeMoveFastEOS8_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_bEEE13maybeMoveFastEOS8_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11AnalysisKeyEbLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEEES3_bS5_S8_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
end_hunk_6
