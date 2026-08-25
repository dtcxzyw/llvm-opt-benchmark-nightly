Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/aarch64?download=true
inline.NumInlined: 1475
inline.NumDeleted: 814
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm7jitlink7aarch6415GOTTableManager23registerExistingEntriesEv:bb.a
  br i1 %i.bi, label %._crit_edge, label %.lr.ph50, !llvm.loop !33

.lr.ph50:                                         ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.bj = phi i64 [ %i.bh, %.lr.ph.i.i.i ], [ %i.bf, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !29 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i.i.i, label %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit, !llvm.loop !33

_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit: ; preds = %.lr.ph50, %bb.f
  %.012.lcssa.i.i.i = phi i64 [ %i.ax, %bb.f ], [ %i.bj, %.lr.ph50 ]
  %.0.lcssa.i.i.i = phi i32 [ %i.bd, %bb.f ], [ %i.bl, %.lr.ph50 ]
  %i.bn = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %.idx.i.i.i = shl i64 %.012.lcssa.i.i.i, 8
  %i.bo = shl nuw nsw i32 %i.bn, 3
  %.idx42 = zext nneg i32 %i.bo to i64
  %i.bp = or disjoint i64 %.idx.i.i.i, %.idx42    ; 2 uses
  %.not = icmp eq i64 %i.bp, %.idx41
  br i1 %.not, label %._crit_edge, label %bb.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm7jitlink7aarch6415PLTTableManager23registerExistingEntriesEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::pair.129", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16, !noalias !60
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26, !noalias !60 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !27, !noalias !60 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28, !noalias !60
  %i.k = icmp eq i32 %i.j, 0
  %i.l = zext i32 %i.h to i64                     ; 4 uses
  %.idx48 = shl nuw nsw i64 %i.l, 3               ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i32 %i.h, 0
  %or.cond.i.i = select i1 %i.k, i1 true, i1 %.not.i.not.i.i.i.i
  br i1 %or.cond.i.i, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %i.o = load i32, ptr %i.f, align 4, !tbaa !29, !noalias !67 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN4llvm7jitlink7Section7symbolsEv.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.b
  %i.q = icmp eq i64 %i.n, 1
  br i1 %i.q, label %._crit_edge, label %.lr.ph56

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph56
  %i.r = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.n
  br i1 %i.s, label %._crit_edge, label %.lr.ph56, !llvm.loop !33

.lr.ph56:                                         ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %i.t = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !29, !noalias !67 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i, !llvm.loop !33

._crit_edge.i.loopexit.i.i.i.i:                   ; preds = %.lr.ph56
  %i.x = shl i64 %i.t, 8
  br label %_ZN4llvm7jitlink7Section7symbolsEv.exit

_ZN4llvm7jitlink7Section7symbolsEv.exit:          ; preds = %bb.b, %._crit_edge.i.loopexit.i.i.i.i
  %.012.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.x, %._crit_edge.i.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi i32 [ %i.o, %bb.b ], [ %i.v, %._crit_edge.i.loopexit.i.i.i.i ]
  %i.y = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i, i1 true)
  %i.z = shl nuw nsw i32 %i.y, 3
  %.idx = zext nneg i32 %i.z to i64
  %i.aa = or disjoint i64 %.012.lcssa.i.i.i.i.i, %.idx ; 2 uses
  %.not25 = icmp eq i64 %i.aa, %.idx48
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm7jitlink7Section7symbolsEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = add nuw nsw i64 %i.l, 31
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %.lr.ph.i.i.i.i.i, %_ZN4llvm7jitlink12TableManagerINS0_7aarch6415PLTTableManagerEE24registerPreExistingEntryERNS0_6SymbolES6_.exit, %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit, %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.preheader, %bb.a, %_ZN4llvm7jitlink7Section7symbolsEv.exit
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit
  %.pn = phi i64 [ %i.aa, %.lr.ph ], [ %i.bu, %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit ] ; 2 uses
  %.sroa.015.026 = getelementptr i8, ptr %i.d, i64 %.pn
  %i.ae = load ptr, ptr %.sroa.015.026, align 8, !tbaa !35 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !37
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !44
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !46
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !37
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !48 ; 3 uses
  store ptr %i.ap, ptr %1, align 8, !tbaa !48
  %i.aq = ptrtoint ptr %i.ap to i64
  %notsub.i.i.i.i.i = add i64 %i.aq, -1
  %i.ar = icmp ult i64 %notsub.i.i.i.i.i, -32
  br i1 %i.ar, label %bb.d, label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEEC2IRKS2_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = atomicrmw add ptr %i.as, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEEC2IRKS2_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit.i

_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEEC2IRKS2_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit.i: ; preds = %bb.d, %bb.c
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !49
  %i.au = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIS3_JS6_EEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ab), !noalias !70 ; 0 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !48    ; 2 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %notsub.i.i.i.i3.i = add i64 %i.aw, -1
  %i.ax = icmp ult i64 %notsub.i.i.i.i3.i, -32
  br i1 %i.ax, label %bb.e, label %_ZN4llvm7jitlink12TableManagerINS0_7aarch6415PLTTableManagerEE24registerPreExistingEntryERNS0_6SymbolES6_.exit

bb.e:                                             ; preds = %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEEC2IRKS2_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = atomicrmw sub ptr %i.ay, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm7jitlink12TableManagerINS0_7aarch6415PLTTableManagerEE24registerPreExistingEntryERNS0_6SymbolES6_.exit

_ZN4llvm7jitlink12TableManagerINS0_7aarch6415PLTTableManagerEE24registerPreExistingEntryERNS0_6SymbolES6_.exit: ; preds = %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEEC2IRKS2_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %i.ba = add i64 %.pn, 8
  %i.bb = ashr exact i64 %i.ba, 3                 ; 3 uses
  %.not.i.i.i = icmp ult i64 %i.bb, %i.l
  br i1 %.not.i.i.i, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %_ZN4llvm7jitlink12TableManagerINS0_7aarch6415PLTTableManagerEE24registerPreExistingEntryERNS0_6SymbolES6_.exit
  %i.bc = lshr i64 %i.bb, 5                       ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !29
  %i.bf = trunc nuw i64 %i.bb to i32
  %i.bg = and i32 %i.bf, 31
  %i.bh = shl nsw i32 -1, %i.bg
  %i.bi = and i32 %i.be, %i.bh                    ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i.i.preheader, label %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.f
  %i.bk = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %i.bl = icmp eq i64 %i.bk, %i.ad
  br i1 %i.bl, label %._crit_edge, label %.lr.ph57

.lr.ph.i.i.i:                                     ; preds = %.lr.ph57
  %i.bm = add i64 %i.bo, 1                        ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %i.ad
  br i1 %i.bn, label %._crit_edge, label %.lr.ph57, !llvm.loop !33

.lr.ph57:                                         ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.bo = phi i64 [ %i.bm, %.lr.ph.i.i.i ], [ %i.bk, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !29 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.i.i, label %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit, !llvm.loop !33

_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit: ; preds = %.lr.ph57, %bb.f
  %.012.lcssa.i.i.i = phi i64 [ %i.bc, %bb.f ], [ %i.bo, %.lr.ph57 ]
  %.0.lcssa.i.i.i = phi i32 [ %i.bi, %bb.f ], [ %i.bq, %.lr.ph57 ]
  %i.bs = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %.idx.i.i.i = shl i64 %.012.lcssa.i.i.i, 8
  %i.bt = shl nuw nsw i32 %i.bs, 3
  %.idx49 = zext nneg i32 %i.bt to i64
  %i.bu = or disjoint i64 %.idx.i.i.i, %.idx49    ; 2 uses
  %.not = icmp eq i64 %i.bu, %.idx48
  br i1 %.not, label %._crit_edge, label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN4llvm7jitlink7aarch6436getPointerSigningFunctionSectionNameEv() local_unnamed_addr #3 {
bb.a:
  ret ptr @.str.24
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm7jitlink7aarch6433createEmptyPointerSigningFunctionERNS0_9LinkGraphE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(312) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"struct.std::pair", align 8        ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75, !noalias !78
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83, !noalias !78 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.h = load i32, ptr %i.g, align 4, !tbaa !84, !noalias !78 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !85, !noalias !78
  %i.k = icmp eq i32 %i.j, 0
  %i.l = zext i32 %i.h to i64                     ; 4 uses
  %.idx151 = mul nuw nsw i64 %i.l, 24             ; 2 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.h, 0
  %or.cond.i = select i1 %i.k, i1 true, i1 %.not.i.not.i.i.i
  br i1 %or.cond.i, label %._crit_edge89, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %i.o = load i32, ptr %i.f, align 4, !tbaa !29, !noalias !86 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i.preheader, label %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.q = icmp eq i64 %i.n, 1
  br i1 %i.q, label %._crit_edge89, label %.lr.ph176

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph176
  %i.r = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.n
  br i1 %i.s, label %._crit_edge89, label %.lr.ph176, !llvm.loop !89

.lr.ph176:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.t = phi i64 [ %i.r, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !29, !noalias !86 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i, !llvm.loop !89

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph176
  %i.x = mul i64 %i.t, 768
  br label %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit

_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit:       ; preds = %bb.b, %._crit_edge.i.loopexit.i.i.i
  %.012.lcssa.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.x, %._crit_edge.i.loopexit.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.o, %bb.b ], [ %i.v, %._crit_edge.i.loopexit.i.i.i ]
  %i.y = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %narrow = mul nuw nsw i32 %i.y, 24
  %.idx = zext nneg i32 %narrow to i64
  %i.z = add i64 %.012.lcssa.i.i.i.i, %.idx       ; 2 uses
  %.not85 = icmp eq i64 %i.z, %.idx151
  br i1 %.not85, label %._crit_edge89, label %.lr.ph88

.lr.ph88:                                         ; preds = %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit
  %i.aa = add nuw nsw i64 %i.l, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  br label %bb.i

._crit_edge89.loopexit:                           ; preds = %.loopexit, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit, %.lr.ph.i.i.i31.preheader, %.lr.ph.i.i.i31
  %i.ac = mul i64 %.3, 48
  br label %._crit_edge89

._crit_edge89:                                    ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader, %bb.a, %._crit_edge89.loopexit, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit
  %.0.lcssa = phi i64 [ 0, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %i.ac, %._crit_edge89.loopexit ], [ 0, %bb.a ], [ 0, %.lr.ph.i.i.i.i.preheader ], [ 0, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ad = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #17 ; 7 uses
  %3 = load i32, ptr %i.i, align 8, !tbaa !85
  store ptr @.str.24, ptr %i.ad, align 8, !tbaa !90
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 15, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !92
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i32 5, ptr %i.ae, align 8, !tbaa !93
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  store i32 0, ptr %i.af, align 4, !tbaa !104
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i32 %3, ptr %i.ag, align 8, !tbaa !105
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr @.str.24, ptr %2, align 8, !tbaa !90
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 15, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !92
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.aj = ptrtoint ptr %i.ad to i64
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !106, !alias.scope !107
  %i.ak = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E24lookupOrInsertIntoBucketIS2_JS8_EEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ai), !noalias !110
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !106 ; 3 uses
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !106 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZN4llvm7jitlink9LinkGraph13createSectionENS_9StringRefENS_3orc7MemProtE.exit, label %_ZNKSt14default_deleteIN4llvm7jitlink7SectionEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm7jitlink7SectionEEclEPS2_.exit.i.i.i: ; preds = %._crit_edge89
  call void @_ZN4llvm7jitlink7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.an) #16
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 80) #18
  br label %_ZN4llvm7jitlink9LinkGraph13createSectionENS_9StringRefENS_3orc7MemProtE.exit

_ZN4llvm7jitlink9LinkGraph13createSectionENS_9StringRefENS_3orc7MemProtE.exit: ; preds = %._crit_edge89, %_ZNKSt14default_deleteIN4llvm7jitlink7SectionEEclEPS2_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  store i32 1, ptr %i.ao, align 4, !tbaa !104
  %i.ap = or disjoint i64 %.0.lcssa, 12           ; 2 uses
  %i.aq = add i64 %.0.lcssa, 16                   ; 2 uses
  %i.ar = load ptr, ptr %1, align 8, !tbaa !115   ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = add i64 %i.aq, %i.as                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !127 ; 2 uses
  %i.aw = icmp ult i64 %i.at, %i.av
  br i1 %i.aw, label %bb.c, label %bb.d, !prof !128

bb.c:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph13createSectionENS_9StringRefENS_3orc7MemProtE.exit
  %i.ax = inttoptr i64 %i.at to ptr               ; 2 uses
  store ptr %i.ax, ptr %1, align 8, !tbaa !115
  br label %_ZN4llvm7jitlink9LinkGraph14allocateBufferEm.exit

bb.d:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph13createSectionENS_9StringRefENS_3orc7MemProtE.exit
  %i.ay = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(312) %1, i64 noundef %i.ap, i64 noundef %i.aq, i8 0)
  %.pre = load ptr, ptr %1, align 8, !tbaa !115
  %.pre102 = load i64, ptr %i.au, align 8, !tbaa !127
  br label %_ZN4llvm7jitlink9LinkGraph14allocateBufferEm.exit

_ZN4llvm7jitlink9LinkGraph14allocateBufferEm.exit: ; preds = %bb.c, %bb.d
  %i.az = phi i64 [ %i.av, %bb.c ], [ %.pre102, %bb.d ]
  %i.ba = phi ptr [ %i.ax, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %.0.i.i.i.i.i = phi ptr [ %i.ar, %bb.c ], [ %i.ay, %bb.d ]
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = add i64 %i.bb, 64                       ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.az
  br i1 %i.bd, label %bb.e, label %bb.f, !prof !128

bb.e:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph14allocateBufferEm.exit
  %i.be = inttoptr i64 %i.bc to ptr
  store ptr %i.be, ptr %1, align 8, !tbaa !115
  br label %_ZN4llvm7jitlink9LinkGraph25createMutableContentBlockERNS0_7SectionENS_15MutableArrayRefIcEENS_3orc12ExecutorAddrEmm.exit

bb.f:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph14allocateBufferEm.exit
  %i.bf = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(312) %1, i64 noundef 64, i64 noundef 64, i8 3)
  br label %_ZN4llvm7jitlink9LinkGraph25createMutableContentBlockERNS0_7SectionENS_15MutableArrayRefIcEENS_3orc12ExecutorAddrEmm.exit

_ZN4llvm7jitlink9LinkGraph25createMutableContentBlockERNS0_7SectionENS_15MutableArrayRefIcEENS_3orc12ExecutorAddrEmm.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i.i.i.i = phi ptr [ %i.ba, %bb.e ], [ %i.bf, %bb.f ] ; 8 uses
  store i64 0, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !92
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.am, ptr %i.bh, align 8, !tbaa !129
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 24
  store ptr %.0.i.i.i.i.i, ptr %i.bi, align 8, !tbaa !137
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 32 ; 2 uses
  store i64 %i.ap, ptr %i.bj, align 8, !tbaa !138
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false)
  store i64 21, ptr %i.bg, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr %.0.i.i.i.i.i.i, ptr %i.b, align 8, !tbaa !139
  %i.bm = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !141 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.bn = load i64, ptr %i.bj, align 8, !tbaa !138
  %i.bo = load ptr, ptr %1, align 8, !tbaa !115   ; 2 uses
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = add i64 %i.bp, 32                       ; 2 uses
  %i.br = load i64, ptr %i.au, align 8, !tbaa !127
  %i.bs = icmp ult i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.g, label %bb.h, !prof !128

bb.g:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph25createMutableContentBlockERNS0_7SectionENS_15MutableArrayRefIcEENS_3orc12ExecutorAddrEmm.exit
  %i.bt = inttoptr i64 %i.bq to ptr
  store ptr %i.bt, ptr %1, align 8, !tbaa !115
  br label %_ZN4llvm5ErrorD2Ev.exit

bb.h:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph25createMutableContentBlockERNS0_7SectionENS_15MutableArrayRefIcEENS_3orc12ExecutorAddrEmm.exit
  %i.bu = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(312) %1, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i22 = phi ptr [ %i.bo, %bb.g ], [ %i.bu, %bb.h ] ; 5 uses
  store ptr null, ptr %.0.i.i.i.i.i.i22, align 8, !tbaa !148
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i22, i64 8
  store ptr %.0.i.i.i.i.i.i, ptr %i.bv, align 8, !tbaa !37
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i22, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i22, i64 24
  store i64 %i.bn, ptr %i.bx, align 8, !tbaa !149
  store i64 4323455642275676160, ptr %i.bw, align 8
  %i.by = load ptr, ptr %i.bh, align 8, !tbaa !129
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %.0.i.i.i.i.i.i22, ptr %i.a, align 8, !tbaa !35
  %i.ca = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !150 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %0, align 8, !tbaa !157
  ret void

bb.i:                                             ; preds = %.lr.ph88, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit
  %.087 = phi i64 [ 0, %.lr.ph88 ], [ %.3, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit ] ; 6 uses
  %.pn157 = phi i64 [ %i.z, %.lr.ph88 ], [ %i.fg, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit ] ; 2 uses
  %.sroa.051.086 = getelementptr i8, ptr %i.d, i64 %.pn157
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.051.086, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !106 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !104
  %i.cf = icmp eq i32 %i.ce, 2
  br i1 %i.cf, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !160, !noalias !161
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !168, !noalias !161 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 52
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !169, !noalias !161 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !170, !noalias !161
  %i.co = icmp eq i32 %i.cn, 0
  %i.cp = zext i32 %i.cl to i64                   ; 4 uses
  %.idx153 = shl nuw nsw i64 %i.cp, 3             ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i32 %i.cl, 0
  %or.cond.i.i = select i1 %i.co, i1 true, i1 %.not.i.not.i.i.i.i
  br i1 %or.cond.i.i, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cq = add nuw nsw i64 %i.cp, 31
  %i.cr = lshr i64 %i.cq, 5                       ; 2 uses
  %i.cs = load i32, ptr %i.cj, align 4, !tbaa !29, !noalias !171 ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN4llvm7jitlink7Section6blocksEv.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.k
  %i.cu = icmp eq i64 %i.cr, 1
  br i1 %i.cu, label %.loopexit, label %.lr.ph177

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph177
  %i.cv = add nuw nsw i64 %i.cx, 1                ; 2 uses
  %i.cw = icmp eq i64 %i.cv, %i.cr
  br i1 %i.cw, label %.loopexit, label %.lr.ph177, !llvm.loop !174

.lr.ph177:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %i.cx = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !29, !noalias !171 ; 2 uses
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i, !llvm.loop !174

._crit_edge.i.loopexit.i.i.i.i:                   ; preds = %.lr.ph177
  %i.db = shl i64 %i.cx, 8
  br label %_ZN4llvm7jitlink7Section6blocksEv.exit

_ZN4llvm7jitlink7Section6blocksEv.exit:           ; preds = %bb.k, %._crit_edge.i.loopexit.i.i.i.i
  %.012.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.k ], [ %i.db, %._crit_edge.i.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi i32 [ %i.cs, %bb.k ], [ %i.cz, %._crit_edge.i.loopexit.i.i.i.i ]
  %i.dc = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i, i1 true)
  %i.dd = shl nuw nsw i32 %i.dc, 3
  %.idx152 = zext nneg i32 %i.dd to i64
  %i.de = or disjoint i64 %.012.lcssa.i.i.i.i.i, %.idx152 ; 2 uses
  %.not6780 = icmp eq i64 %i.de, %.idx153
  br i1 %.not6780, label %.loopexit, label %.lr.ph83

.lr.ph83:                                         ; preds = %_ZN4llvm7jitlink7Section6blocksEv.exit
  %i.df = add nuw nsw i64 %i.cp, 31
  %i.dg = lshr i64 %i.df, 5                       ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph83, %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit
  %.182 = phi i64 [ %.087, %.lr.ph83 ], [ %.2.lcssa, %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit ] ; 2 uses
  %.pn = phi i64 [ %i.de, %.lr.ph83 ], [ %i.eg, %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit ] ; 2 uses
  %.sroa.043.081 = getelementptr i8, ptr %i.ch, i64 %.pn
  %i.dh = load ptr, ptr %.sroa.043.081, align 8, !tbaa !139 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !44 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !44 ; 2 uses
  %.not6877 = icmp eq ptr %i.dj, %i.dl
  br i1 %.not6877, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.l
end_hunk_0
