Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/NVPTXISelLowering?download=true
inline.NumInlined: 7800
inline.NumDeleted: 2653
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 101
begin_hunk_0_@_ZN4llvm11raw_ostreamlsEl
; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL29PerformADDCombineWithOperandsPN4llvm6SDNodeENS_7SDValueES2_RNS_14TargetLowering15DAGCombinerInfoE(ptr nofree noundef readonly captures(none) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr %3, i32 %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5) unnamed_addr #4 {
bb.a:
  %6 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  store ptr %3, ptr %8, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %4, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !214
  %i.d = zext i32 %2 to i64
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.e, align 8, !tbaa !186 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !215 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !864  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread, label %_ZNK4llvm6SDNode9hasOneUseEv.exit

_ZNK4llvm6SDNode9hasOneUseEv.exit:                ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !865
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.b:                                             ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !406
  %i.m = icmp eq i32 %i.l, 219
  br i1 %i.m, label %bb.c, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !410  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.val30 = load ptr, ptr %i.p, align 8, !tbaa !439 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val30, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !406
  switch i32 %i.r, label %_ZL11isConstZeroRKN4llvm7SDValueE.exit.thread [
    i32 37, label %_ZL11isConstZeroRKN4llvm7SDValueE.exit
    i32 12, label %_ZL11isConstZeroRKN4llvm7SDValueE.exit
  ]

_ZL11isConstZeroRKN4llvm7SDValueE.exit:           ; preds = %bb.c, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.val30, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !602  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !604
  %i.x = icmp ult i32 %i.w, 65
  %i.y = load ptr, ptr %i.u, align 8
  %spec.select.i.i.i.i = select i1 %i.x, ptr %i.u, ptr %i.y
  %.0.i.i.i3.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !190
  %i.z = icmp eq i64 %.0.i.i.i3.i, 0
  br i1 %i.z, label %bb.d, label %_ZL11isConstZeroRKN4llvm7SDValueE.exit.thread

_ZL11isConstZeroRKN4llvm7SDValueE.exit.thread:    ; preds = %bb.c, %_ZL11isConstZeroRKN4llvm7SDValueE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %.val = load ptr, ptr %i.aa, align 8, !tbaa !439 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !406
  switch i32 %i.ac, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread [
    i32 37, label %_ZL11isConstZeroRKN4llvm7SDValueE.exit34
    i32 12, label %_ZL11isConstZeroRKN4llvm7SDValueE.exit34
  ]

_ZL11isConstZeroRKN4llvm7SDValueE.exit34:         ; preds = %_ZL11isConstZeroRKN4llvm7SDValueE.exit.thread, %_ZL11isConstZeroRKN4llvm7SDValueE.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !602 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !604
  %i.ai = icmp ult i32 %i.ah, 65
  %i.aj = load ptr, ptr %i.af, align 8
  %spec.select.i.i.i.i32 = select i1 %i.ai, ptr %i.af, ptr %i.aj
  %.0.i.i.i3.i33 = load i64, ptr %spec.select.i.i.i.i32, align 8, !tbaa !190
  %i.ak = icmp eq i64 %.0.i.i.i3.i33, 0
  br i1 %i.ak, label %bb.d, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.d:                                             ; preds = %_ZL11isConstZeroRKN4llvm7SDValueE.exit34, %_ZL11isConstZeroRKN4llvm7SDValueE.exit
  %i.al = phi i1 [ true, %_ZL11isConstZeroRKN4llvm7SDValueE.exit ], [ false, %_ZL11isConstZeroRKN4llvm7SDValueE.exit34 ] ; 2 uses
  %i.am = phi i64 [ 2, %_ZL11isConstZeroRKN4llvm7SDValueE.exit ], [ 1, %_ZL11isConstZeroRKN4llvm7SDValueE.exit34 ]
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.am
  %.sroa.039.0.copyload = load ptr, ptr %i.an, align 8, !tbaa !322 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.039.0.copyload, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !406
  %.not = icmp eq i32 %i.ap, 61
  br i1 %.not, label %bb.e, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.039.0.copyload, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !864 ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i35, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread, label %_ZNK4llvm6SDNode9hasOneUseEv.exit37

_ZNK4llvm6SDNode9hasOneUseEv.exit37:              ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !865
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.f, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.f:                                             ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !198
  store i64 %i.aw, ptr %9, align 8, !tbaa !198
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !200
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !212
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !857, !nonnull !19, !align !288
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.039.0.copyload, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !410 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.bb, i32 noundef 61, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bd, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.be) #26 ; 2 uses
  %.fca.0.extract13 = extractvalue { ptr, i32 } %i.bf, 0
  %.fca.1.extract14 = extractvalue { ptr, i32 } %i.bf, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !857, !nonnull !19, !align !288
  store ptr %.fca.0.extract13, ptr %11, align 8, !tbaa !322
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract14, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !44
  %i.bh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.bg, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #26 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.bh, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.bh, 1
  store ptr %.fca.0.extract6, ptr %10, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract7, ptr %.sroa.29.0..sroa_idx, align 8
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !857, !nonnull !19, !align !288
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.bj = load i64, ptr %i.av, align 8, !tbaa !198
  store i64 %i.bj, ptr %12, align 8, !tbaa !198
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bl = load i32, ptr %i.ay, align 4, !tbaa !200
  store i32 %i.bl, ptr %i.bk, align 8, !tbaa !212
  %i.bm = load ptr, ptr %i.n, align 8, !tbaa !410 ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.bm, align 8, !tbaa !322 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !44 ; 2 uses
  %. = select i1 %i.al, ptr %8, ptr %10
  %i.bn = select i1 %i.al, ptr %10, ptr %8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !214
  %i.bq = zext i32 %.sroa.22.0.copyload to i64
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.bq ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.br, align 8, !tbaa !186 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !215
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %6, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.bs, align 8
  %.not.i.i38 = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bt = add i16 %.sroa.0.0.copyload.i.i.i, -19
  %spec.select.i.i.i = icmp ult i16 %i.bt, 197
  br label %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit

bb.h:                                             ; preds = %bb.f
  %i.bu = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #28
  br label %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit

_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit: ; preds = %bb.g, %bb.h
  %i.bv = phi i1 [ %spec.select.i.i.i, %bb.g ], [ %i.bu, %bb.h ]
  %i.bw = select i1 %i.bv, i32 220, i32 219
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  store ptr %.sroa.01.0.copyload, ptr %7, align 8, !tbaa !322
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.22.0.copyload, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !44
  %i.bx = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.bi, i32 noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %., ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bn, i32 0) #26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bx, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.bx, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

_ZNK4llvm6SDNode9hasOneUseEv.exit.thread:         ; preds = %bb.e, %_ZL11isConstZeroRKN4llvm7SDValueE.exit.thread, %bb.a, %bb.b, %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit, %_ZNK4llvm6SDNode9hasOneUseEv.exit37, %bb.d, %_ZL11isConstZeroRKN4llvm7SDValueE.exit34, %_ZNK4llvm6SDNode9hasOneUseEv.exit
  %.sroa.10.1 = phi i32 [ 0, %_ZL11isConstZeroRKN4llvm7SDValueE.exit34 ], [ 0, %_ZNK4llvm6SDNode9hasOneUseEv.exit ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ], [ %.fca.1.extract, %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit ], [ 0, %_ZL11isConstZeroRKN4llvm7SDValueE.exit.thread ], [ 0, %_ZNK4llvm6SDNode9hasOneUseEv.exit37 ], [ 0, %bb.e ]
  %.sroa.050.1 = phi ptr [ null, %_ZL11isConstZeroRKN4llvm7SDValueE.exit34 ], [ null, %_ZNK4llvm6SDNode9hasOneUseEv.exit ], [ null, %bb.d ], [ null, %bb.b ], [ null, %bb.a ], [ %.fca.0.extract, %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit ], [ null, %_ZL11isConstZeroRKN4llvm7SDValueE.exit.thread ], [ null, %_ZNK4llvm6SDNode9hasOneUseEv.exit37 ], [ null, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.050.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.10.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm5APIntlsEj(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !604, !noalias !1086 ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !604, !alias.scope !1086
  %i.d = icmp ult i32 %i.c, 65
  br i1 %i.d, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i, label %_ZN4llvm5APIntC2ERKS0_.exit.i

_ZN4llvm5APIntC2ERKS0_.exit.i:                    ; preds = %bb.a
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #26
  %.pr.i = load i32, ptr %i.a, align 8, !tbaa !604, !alias.scope !1086 ; 2 uses
  %i.e = icmp ult i32 %.pr.i, 65
  br i1 %i.e, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i, label %bb.b

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i:       ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i, %bb.a
  %.sink.i = phi ptr [ %1, %bb.a ], [ %0, %_ZN4llvm5APIntC2ERKS0_.exit.i ]
  %i.f = phi i32 [ %i.c, %bb.a ], [ %.pr.i, %_ZN4llvm5APIntC2ERKS0_.exit.i ] ; 3 uses
  %.pre.i = load i64, ptr %.sink.i, align 8
  %i.g = icmp eq i32 %2, %i.f
  %i.h = zext nneg i32 %2 to i64
  %i.i = shl i64 %.pre.i, %i.h
  %storemerge.i.i = select i1 %i.g, i64 0, i64 %i.i
  %i.j = sub nsw i32 0, %i.f
  %i.k = and i32 %i.j, 63
  %i.l = zext nneg i32 %i.k to i64
  %i.m = lshr i64 -1, %i.l
  %i.n = icmp eq i32 %i.f, 0
  %.04.i.i.i = select i1 %i.n, i64 0, i64 %i.m, !prof !615
  %i.o = and i64 %.04.i.i.i, %storemerge.i.i
  store i64 %i.o, ptr %0, align 8, !tbaa !190, !alias.scope !1086
  br label %_ZNK4llvm5APInt3shlEj.exit

bb.b:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  tail call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %2) #26
  br label %_ZNK4llvm5APInt3shlEj.exit

_ZNK4llvm5APInt3shlEj.exit:                       ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZN4llvm3ISD16allOperandsUndefEPKNS_6SDNodeE(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i16, ptr } @_ZNK4llvm3EVT19changeTypeToIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !424    ; 4 uses
  %.not.i = icmp eq i16 %i.a, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.b = add i16 %i.a, -19
  %spec.select.i.i = icmp ult i16 %i.b, 197
  %i.c = zext i16 %i.a to i64                     ; 3 uses
  br i1 %spec.select.i.i, label %bb.b, label %bb.f

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #28
  br i1 %i.d, label %bb.e, label %bb.g

bb.b:                                             ; preds = %.split
  %i.e = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.c
  %i.f = getelementptr i8, ptr %i.e, i64 -2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !186
  %i.h = zext i16 %i.g to i64
  %i.i = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.j, align 16
  %i.k = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32 ; 2 uses
  %i.l = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.k)
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %.split.i.i.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i

.split.i.i.i:                                     ; preds = %bb.b
  %i.n = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.k, i1 true) ; 2 uses
  %i.o = icmp samesign ult i32 %i.n, 10
  br i1 %i.o, label %switch.lookup.i.i.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i

switch.lookup.i.i.i:                              ; preds = %.split.i.i.i
  %switch.idx.cast.i.i.i = trunc nuw nsw i32 %i.n to i16
  %switch.offset.i.i.i = add nuw nsw i16 %switch.idx.cast.i.i.i, 2
  br label %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i

_ZN4llvm3MVT12getIntegerVTEj.exit.i.i:            ; preds = %switch.lookup.i.i.i, %.split.i.i.i, %bb.b
  %.sroa.0.0.i.i.i = phi i16 [ %switch.offset.i.i.i, %switch.lookup.i.i.i ], [ 0, %.split.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.p = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.c
  %i.q = getelementptr i8, ptr %i.p, i64 -2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !189
  %spec.select.i.i.i.i = icmp samesign ult i16 %i.a, 163
  %.sroa.0.0.extract.trunc.i.i.i = zext i16 %i.r to i32 ; 2 uses
  br i1 %spec.select.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i
  %i.s = tail call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %.sroa.0.0.i.i.i, i32 noundef %.sroa.0.0.extract.trunc.i.i.i)
  %i.t = insertvalue { i16, ptr } poison, i16 %i.s, 0
  %i.u = insertvalue { i16, ptr } %i.t, ptr null, 1
  br label %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit

bb.d:                                             ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i
  %i.v = tail call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i.i.i, i32 noundef %.sroa.0.0.extract.trunc.i.i.i)
  %i.w = insertvalue { i16, ptr } poison, i16 %i.v, 0
  %i.x = insertvalue { i16, ptr } %i.w, ptr null, 1
  br label %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit

bb.e:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit
  %i.y = tail call { i16, ptr } @_ZNK4llvm3EVT40changeExtendedVectorElementTypeToIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #26
  br label %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit

_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.y, %bb.e ], [ %i.u, %bb.c ], [ %i.x, %bb.d ] ; 2 uses
  %i.z = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0
  %i.aa = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
  br label %_ZN4llvm3MVT19changeTypeToIntegerEv.exit

bb.f:                                             ; preds = %.split
  %i.ab = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.c
  %i.ac = getelementptr i8, ptr %i.ab, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ac, align 16
  %i.ad = trunc i64 %.sroa.0.0.copyload.i.i.i to i32 ; 2 uses
  %i.ae = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ad)
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %.split.i.i, label %_ZN4llvm3MVT19changeTypeToIntegerEv.exit

.split.i.i:                                       ; preds = %bb.f
  %i.ag = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ad, i1 true) ; 2 uses
  %i.ah = icmp samesign ult i32 %i.ag, 10
  br i1 %i.ah, label %switch.lookup.i.i, label %_ZN4llvm3MVT19changeTypeToIntegerEv.exit

switch.lookup.i.i:                                ; preds = %.split.i.i
  %switch.idx.cast.i.i = trunc nuw nsw i32 %i.ag to i16
  %switch.offset.i.i = add nuw nsw i16 %switch.idx.cast.i.i, 2
  br label %_ZN4llvm3MVT19changeTypeToIntegerEv.exit

bb.g:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit
  %i.ai = tail call { i16, ptr } @_ZNK4llvm3EVT27changeExtendedTypeToIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #26 ; 2 uses
  %i.aj = extractvalue { i16, ptr } %i.ai, 0
  %i.ak = extractvalue { i16, ptr } %i.ai, 1
  br label %_ZN4llvm3MVT19changeTypeToIntegerEv.exit

_ZN4llvm3MVT19changeTypeToIntegerEv.exit:         ; preds = %switch.lookup.i.i, %.split.i.i, %bb.f, %bb.g, %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit
  %.sroa.4.0 = phi ptr [ %i.aa, %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit ], [ %i.ak, %bb.g ], [ null, %bb.f ], [ null, %.split.i.i ], [ null, %switch.lookup.i.i ]
  %.sroa.012.0 = phi i16 [ %i.z, %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit ], [ %i.aj, %bb.g ], [ 0, %bb.f ], [ 0, %.split.i.i ], [ %switch.offset.i.i, %switch.lookup.i.i ]
  %.fca.0.insert = insertvalue { i16, ptr } poison, i16 %.sroa.012.0, 0
  %.fca.1.insert = insertvalue { i16, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { i16, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %1 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = load i16, ptr %0, align 8, !tbaa !424    ; 4 uses
  %.not.i.i = icmp eq i16 %i.a, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.b = add i16 %i.a, -19
  %spec.select.i.i.i = icmp ult i16 %i.b, 197
  br i1 %spec.select.i.i.i, label %bb.b, label %bb.d

_ZNK4llvm3EVT8isVectorEv.exit.i:                  ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #28
  br i1 %i.c, label %bb.c, label %bb.d

bb.b:                                             ; preds = %.split.i
  %i.d = zext nneg i16 %i.a to i64
  %i.e = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !186
  %i.h = insertvalue { i16, ptr } poison, i16 %i.g, 0
  %i.i = insertvalue { i16, ptr } %i.h, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i
  %i.j = tail call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #26
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

bb.d:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i, %.split.i
  %.sroa.31.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.31.0.copyload.i = load ptr, ptr %.sroa.31.0..0..sroa_idx.i, align 8, !tbaa !215
  %i.k = insertvalue { i16, ptr } poison, i16 %i.a, 0
  %i.l = insertvalue { i16, ptr } %i.k, ptr %.sroa.31.0.copyload.i, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

_ZNK4llvm3EVT13getScalarTypeEv.exit:              ; preds = %bb.b, %bb.c, %bb.d
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.l, %bb.d ], [ %i.i, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.m = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0 ; 3 uses
  store i16 %i.m, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
  store ptr %i.o, ptr %i.n, align 8
  %.not.i = icmp eq i16 %i.m, 0
end_hunk_0
