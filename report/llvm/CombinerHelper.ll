Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CombinerHelper?download=true
inline.NumInlined: 14638
inline.NumDeleted: 5068
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4llvm14CombinerHelper25matchCombineConcatVectorsERNS_12MachineInstrERNS_11SmallVectorINS_8RegisterELj12EEE:bb.a
  br label %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit

_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit: ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit71, %bb.ab
  %i.em = phi i1 [ true, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit71 ], [ %i.el, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %or.cond = select i1 %i.em, i1 %.048.lcssa, i1 false
  br i1 %or.cond, label %bb.ac, label %.thread85

bb.ac:                                            ; preds = %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.en, align 8, !tbaa !253
  br label %.thread85

.thread85:                                        ; preds = %bb.c, %bb.b, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit, %bb.ac
  %.4 = phi i1 [ true, %bb.ac ], [ %i.em, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.4
}

declare noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #5

declare { ptr, ptr } @_ZN4llvm16MachineIRBuilder10buildUndefERKNS_5DstOpE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm14CombinerHelper25applyCombineConcatVectorsERNS_12MachineInstrERNS_11SmallVectorINS_8RegisterELj12EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::DstOp", align 8       ; 5 uses
  %4 = alloca %"class.llvm::SrcOp", align 8       ; 5 uses
  %5 = alloca %"class.llvm::DstOp", align 8       ; 5 uses
  %6 = alloca %"class.llvm::DstOp", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !247
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !206  ; 5 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !202, !nonnull !52, !align !201 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !263
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.g, ptr %i.h, align 8, !tbaa !264
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !233, !nonnull !52, !align !201
  %i.l = tail call i32 @_ZN4llvm19MachineRegisterInfo20cloneVirtualRegisterENS_8RegisterENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.k, i32 %i.d, ptr nonnull @.str.2, i64 0) #28 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !253  ; 2 uses
  %.not.i = icmp eq i32 %i.n, 0
  %i.o = load ptr, ptr %0, align 8, !tbaa !202, !nonnull !52, !align !201 ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i32 %i.l, ptr %5, align 8, !tbaa !217
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 1, ptr %i.p, align 8, !tbaa !220
  %i.q = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder10buildUndefERKNS_5DstOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.o, ptr noundef nonnull align 8 dereferenceable(20) %5) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store i32 %i.l, ptr %6, align 8, !tbaa !217
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 1, ptr %i.r, align 8, !tbaa !220
  %i.s = load ptr, ptr %2, align 8, !tbaa !55
  %i.t = zext i32 %i.n to i64
  %i.u = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder16buildBuildVectorERKNS_5DstOpENS_8ArrayRefINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.o, ptr noundef nonnull align 8 dereferenceable(20) %6, ptr %i.s, i64 %i.t) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !233, !nonnull !52, !align !201 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !216, !nonnull !52, !align !201
  call void @_ZN4llvm19GISelChangeObserver20changingAllUsesOfRegERKNS_19MachineRegisterInfoENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(520) %i.v, i32 %i.d) #28
  %i.y = call noundef zeroext i1 @_ZN4llvm19MachineRegisterInfo17constrainRegAttrsENS_8RegisterES1_j(ptr noundef nonnull align 8 dereferenceable(520) %i.v, i32 %i.l, i32 %i.d, i32 noundef 0) #28
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm19MachineRegisterInfo14replaceRegWithENS_8RegisterES1_(ptr noundef nonnull align 8 dereferenceable(520) %i.v, i32 %i.d, i32 %i.l) #28
  br label %_ZNK4llvm14CombinerHelper14replaceRegWithERNS_19MachineRegisterInfoENS_8RegisterES3_.exit

bb.f:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %0, align 8, !tbaa !202, !nonnull !52, !align !201
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i32 %i.d, ptr %3, align 8, !tbaa !217
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 1, ptr %i.aa, align 8, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i32 %i.l, ptr %4, align 8, !tbaa !217
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.ab, align 8, !tbaa !223
  %i.ac = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder9buildCopyERKNS_5DstOpERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNK4llvm14CombinerHelper14replaceRegWithERNS_19MachineRegisterInfoENS_8RegisterES3_.exit

_ZNK4llvm14CombinerHelper14replaceRegWithERNS_19MachineRegisterInfoENS_8RegisterES3_.exit: ; preds = %bb.e, %bb.f
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !216, !nonnull !52, !align !201
  call void @_ZN4llvm19GISelChangeObserver28finishedChangingAllUsesOfRegEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ad) #28
  %i.ae = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #28 ; 0 uses
  ret void
}

declare i32 @_ZN4llvm19MachineRegisterInfo20cloneVirtualRegisterENS_8RegisterENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520), i32, ptr, i64) local_unnamed_addr #5

declare { ptr, ptr } @_ZN4llvm16MachineIRBuilder16buildBuildVectorERKNS_5DstOpENS_8ArrayRefINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(20), ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS_12MachineInstrERNS_11SmallVectorINS_8RegisterELj12EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::LLT", align 8         ; 4 uses
  %4 = alloca %"struct.llvm::LegalityQuery", align 8 ; 7 uses
  %5 = alloca [2 x %"class.llvm::LLT"], align 8   ; 5 uses
  %6 = alloca %"class.llvm::LLT", align 8         ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 17 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !247
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !206
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !233, !nonnull !52, !align !201
  %i.g = tail call noundef ptr @_ZN4llvm20getDefIgnoringCopiesENS_8RegisterERKNS_19MachineRegisterInfoE(i32 %i.d, ptr noundef nonnull align 8 dereferenceable(520) %i.f) #28 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.i = load i32, ptr %i.h, align 4, !tbaa !246
  %i.j = icmp eq i32 %i.i, 80
  br i1 %i.j, label %_ZN4llvm12getOpcodeDefINS_8GUnmergeEEEPT_NS_8RegisterERKNS_19MachineRegisterInfoE.exit, label %.critedge

_ZN4llvm12getOpcodeDefINS_8GUnmergeEEEPT_NS_8RegisterERKNS_19MachineRegisterInfoE.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !247  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !206
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !247
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !206
  %.not = icmp eq i32 %i.n, %i.q
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZN4llvm12getOpcodeDefINS_8GUnmergeEEEPT_NS_8RegisterERKNS_19MachineRegisterInfoE.exit
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !233, !nonnull !52, !align !201
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.t = load i24, ptr %i.s, align 8
  %i.u = zext i24 %i.t to i64
  %i.v = add nuw nsw i64 %i.u, 4294967295
  %i.w = and i64 %i.v, 4294967295
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !206
  %i.aa = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.r, i32 %i.z) #28 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 52
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !246
  %.not45 = icmp eq i32 %i.ac, 88
  br i1 %.not45, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !233, !nonnull !52, !align !201 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !247
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !206 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.e, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.e:                                             ; preds = %bb.d
  %i.aj = and i32 %i.ah, 2147483647               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 472
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !253
  %i.am = icmp ugt i32 %i.al, %i.aj
  br i1 %i.am, label %bb.f, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 464
  %i.ao = zext nneg i32 %i.aj to i64
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !55
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !206
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.as = phi i64 [ %i.ar, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ] ; 4 uses
  store i64 %i.as, ptr %3, align 8
  %i.at = load i24, ptr %i.s, align 8
  %i.au = zext i24 %i.at to i32
  %i.av = add nsw i32 %i.au, -1                   ; 4 uses
  %i.aw = lshr i64 %i.as, 60
  %.off.i = add nsw i64 %i.aw, -1
  %switch.i = icmp ult i64 %.off.i, 3
  br i1 %switch.i, label %bb.g, label %.critedge53

bb.g:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ay = load i24, ptr %i.ax, align 8
  %i.az = zext i24 %i.ay to i32
  %i.ba = add nsw i32 %i.az, -1                   ; 2 uses
  %i.bb = urem i32 %i.ba, %i.av
  %i.bc = udiv i32 %i.ba, %i.av
  %.not46 = icmp eq i32 %i.bb, 0
  br i1 %.not46, label %bb.h, label %.critedge53

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bc to i64
  %i.bd = tail call i64 @_ZN4llvm3LLT6vectorENS_12ElementCountES0_(i64 %.sroa.0.0.insert.ext.i.i, i64 %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i64 %i.bd, ptr %5, align 8, !tbaa !206
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.as, ptr %i.be, align 8, !tbaa !206
  store i32 83, ptr %4, align 8, !tbaa !212
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %5, ptr %i.bf, align 8, !tbaa !213
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 2, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !214
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !199
  %i.bj = call { i64, i64 } @_ZNK4llvm13LegalizerInfo9getActionERKNS_13LegalityQueryE(ptr noundef nonnull align 8 dereferenceable(46376) %i.bi, ptr noundef nonnull align 8 dereferenceable(40) %4) #28
  %i.bk = extractvalue { i64, i64 } %i.bj, 0
  %i.bl = and i64 %i.bk, 255
  %i.bm = icmp eq i64 %i.bl, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %i.bm, label %.preheader, label %.critedge53

.preheader:                                       ; preds = %bb.h
  %i.bn = load i24, ptr %i.ax, align 8
  %.not49100 = icmp eq i24 %i.bn, 1
  br i1 %.not49100, label %.critedge53, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bo = zext i32 %i.av to i64                   ; 3 uses
  %i.bp = lshr i64 %i.bo, 2                       ; 2 uses
  %.not99 = icmp eq i64 %i.bp, 0
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit
  %storemerge101 = phi i32 [ 0, %.lr.ph ], [ %i.jy, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit ] ; 2 uses
  %i.bs = add nuw i32 %storemerge101, 1           ; 8 uses
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !247
  %i.bu = zext i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !206
  %i.by = load ptr, ptr %i.e, align 8, !tbaa !233, !nonnull !52, !align !201
  %i.bz = call noundef ptr @_ZN4llvm20getDefIgnoringCopiesENS_8RegisterERKNS_19MachineRegisterInfoE(i32 %i.bx, ptr noundef nonnull align 8 dereferenceable(520) %i.by) #28 ; 3 uses
  %.not.i.i.i55 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i55, label %_ZN4llvm12getOpcodeDefINS_8GUnmergeEEEPT_NS_8RegisterERKNS_19MachineRegisterInfoE.exit58, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 52
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !246
  %i.cc = icmp eq i32 %i.cb, 80
  %spec.select.i.i.i.i56 = select i1 %i.cc, ptr %i.bz, ptr null
  br label %_ZN4llvm12getOpcodeDefINS_8GUnmergeEEEPT_NS_8RegisterERKNS_19MachineRegisterInfoE.exit58

_ZN4llvm12getOpcodeDefINS_8GUnmergeEEEPT_NS_8RegisterERKNS_19MachineRegisterInfoE.exit58: ; preds = %bb.i, %bb.j
  %.0.i.i.i57 = phi ptr [ %spec.select.i.i.i.i56, %bb.j ], [ null, %bb.i ] ; 11 uses
  br i1 %.not99, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN4llvm12getOpcodeDefINS_8GUnmergeEEEPT_NS_8RegisterERKNS_19MachineRegisterInfoE.exit58
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.0.i.i.i57, null ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i.i.i57, i64 32 ; 4 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit24.thread73.i.i.i.i.i"
  %.092.i.i.i.i.i = phi i64 [ %i.fk, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit24.thread73.i.i.i.i.i" ], [ %i.bp, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.040.091.i.i.i.i.i = phi i64 [ %i.fj, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit24.thread73.i.i.i.i.i" ], [ 0, %.lr.ph.i.i.i.i.i.preheader ] ; 8 uses
  %i.ce = trunc i64 %.sroa.040.091.i.i.i.i.i to i32
  %i.cf = load ptr, ptr %i.e, align 8, !tbaa !233, !nonnull !52, !align !201
  %i.cg = add i32 %i.bs, %i.ce
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !247
  %i.ci = zext i32 %i.cg to i64                   ; 2 uses
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !206
  %i.cm = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.cf, i32 %i.cl) #28
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 52
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !246
  %i.cp = icmp eq i32 %i.co, 73
  br i1 %i.cp, label %"._ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.thread64_crit_edge.i.i.i.i.i", label %bb.k

"._ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.thread64_crit_edge.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %.pre93.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !247
  br label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.thread64.i.i.i.i.i"

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_14CombinerHelper32matchCombineBuildVectorOfBitcastERNS_12MachineInstrERNS_11SmallVectorINS_8RegisterELj12EEEE3$_0EEbOT_T0_.exit", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.i.i.i.i.i": ; preds = %bb.k
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !247 ; 2 uses
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %i.ci
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !206
  %i.cu = load ptr, ptr %i.cd, align 8, !tbaa !247
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %.sroa.040.091.i.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !206
  %.not86.i.i.i.i.i = icmp eq i32 %i.ct, %i.cx
  br i1 %.not86.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.thread64.i.i.i.i.i", label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_14CombinerHelper32matchCombineBuildVectorOfBitcastERNS_12MachineInstrERNS_11SmallVectorINS_8RegisterELj12EEEE3$_0EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.thread64.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.i.i.i.i.i", %"._ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.thread64_crit_edge.i.i.i.i.i"
  %i.cy = phi ptr [ %.pre93.i.i.i.i.i, %"._ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.thread64_crit_edge.i.i.i.i.i" ], [ %i.cq, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.i.i.i.i.i" ]
  %i.cz = or disjoint i64 %.sroa.040.091.i.i.i.i.i, 1 ; 4 uses
  %i.da = trunc i64 %i.cz to i32
  %i.db = load ptr, ptr %i.e, align 8, !tbaa !233, !nonnull !52, !align !201
  %i.dc = add i32 %i.bs, %i.da
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.cy, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !206
  %i.dh = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.db, i32 %i.dg) #28
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 52
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !246
  %i.dk = icmp eq i32 %i.dj, 73
  br i1 %i.dk, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.thread64._ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit18.thread67_crit_edge.i.i.i.i.i", label %bb.l

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.thread64._ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit18.thread67_crit_edge.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.thread64.i.i.i.i.i"
  %.pre95.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !247
  br label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit18.thread67.i.i.i.i.i"

bb.l:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.thread64.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_14CombinerHelper32matchCombineBuildVectorOfBitcastERNS_12MachineInstrERNS_11SmallVectorINS_8RegisterELj12EEEE3$_0EEbOT_T0_.exit", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit18.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit18.i.i.i.i.i": ; preds = %bb.l
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !247 ; 2 uses
  %i.dm = getelementptr inbounds nuw [32 x i8], ptr %i.dl, i64 %i.dd
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !206
  %i.dp = load ptr, ptr %i.cd, align 8, !tbaa !247
  %i.dq = getelementptr inbounds nuw [32 x i8], ptr %i.dp, i64 %i.cz
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !206
  %.not87.i.i.i.i.i = icmp eq i32 %i.do, %i.ds
  br i1 %.not87.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit18.thread67.i.i.i.i.i", label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_14CombinerHelper32matchCombineBuildVectorOfBitcastERNS_12MachineInstrERNS_11SmallVectorINS_8RegisterELj12EEEE3$_0EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit18.thread67.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit18.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.thread64._ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit18.thread67_crit_edge.i.i.i.i.i"
  %i.dt = phi ptr [ %.pre95.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.thread64._ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit18.thread67_crit_edge.i.i.i.i.i" ], [ %i.dl, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit18.i.i.i.i.i" ]
  %i.du = or disjoint i64 %.sroa.040.091.i.i.i.i.i, 2 ; 4 uses
  %i.dv = trunc i64 %i.du to i32
  %i.dw = load ptr, ptr %i.e, align 8, !tbaa !233, !nonnull !52, !align !201
  %i.dx = add i32 %i.bs, %i.dv
  %i.dy = zext i32 %i.dx to i64                   ; 2 uses
  %i.dz = getelementptr inbounds nuw [32 x i8], ptr %i.dt, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !206
  %i.ec = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.dw, i32 %i.eb) #28
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 52
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !246
  %i.ef = icmp eq i32 %i.ee, 73
  br i1 %i.ef, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit18.thread67._ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit21.thread70_crit_edge.i.i.i.i.i", label %bb.m

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit18.thread67._ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit21.thread70_crit_edge.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit18.thread67.i.i.i.i.i"
  %.pre97.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !247
  br label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit21.thread70.i.i.i.i.i"

bb.m:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit18.thread67.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_14CombinerHelper32matchCombineBuildVectorOfBitcastERNS_12MachineInstrERNS_11SmallVectorINS_8RegisterELj12EEEE3$_0EEbOT_T0_.exit", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit21.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit21.i.i.i.i.i": ; preds = %bb.m
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !247 ; 2 uses
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %i.eg, i64 %i.dy
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !206
  %i.ek = load ptr, ptr %i.cd, align 8, !tbaa !247
  %i.el = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.du
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !206
  %.not88.i.i.i.i.i = icmp eq i32 %i.ej, %i.en
  br i1 %.not88.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit21.thread70.i.i.i.i.i", label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_14CombinerHelper32matchCombineBuildVectorOfBitcastERNS_12MachineInstrERNS_11SmallVectorINS_8RegisterELj12EEEE3$_0EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit21.thread70.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit21.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit18.thread67._ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit21.thread70_crit_edge.i.i.i.i.i"
  %i.eo = phi ptr [ %.pre97.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit18.thread67._ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit21.thread70_crit_edge.i.i.i.i.i" ], [ %i.eg, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit21.i.i.i.i.i" ]
  %i.ep = or disjoint i64 %.sroa.040.091.i.i.i.i.i, 3 ; 4 uses
  %i.eq = trunc i64 %i.ep to i32
  %i.er = load ptr, ptr %i.e, align 8, !tbaa !233, !nonnull !52, !align !201
  %i.es = add i32 %i.bs, %i.eq
  %i.et = zext i32 %i.es to i64                   ; 2 uses
  %i.eu = getelementptr inbounds nuw [32 x i8], ptr %i.eo, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !206
  %i.ex = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.er, i32 %i.ew) #28
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 52
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !246
  %i.fa = icmp eq i32 %i.ez, 73
  br i1 %i.fa, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit24.thread73.i.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit21.thread70.i.i.i.i.i"
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_14CombinerHelper32matchCombineBuildVectorOfBitcastERNS_12MachineInstrERNS_11SmallVectorINS_8RegisterELj12EEEE3$_0EEbOT_T0_.exit", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit24.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm14CombinerHelper32matchCombineBuildVectorOfBitcastERNS2_12MachineInstrERNS2_11SmallVectorINS2_8RegisterELj12EEEE3$_0EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit24.i.i.i.i.i": ; preds = %bb.n
  %i.fb = load ptr, ptr %i.a, align 8, !tbaa !247
  %i.fc = getelementptr inbounds nuw [32 x i8], ptr %i.fb, i64 %i.et
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !206
end_hunk_0
begin_hunk_1_@_ZNK4llvm14CombinerHelper25matchCombineShuffleConcatERNS_12MachineInstrERNS_11SmallVectorINS_8RegisterELj12EEE:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 464
  %i.ag = zext nneg i32 %i.ab to i64
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !206
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.04.0.i = phi i64 [ %i.aj, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  store i64 %.sroa.04.0.i, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ak = getelementptr inbounds nuw i8, ptr %spec.select.i.i83, i64 32 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !247
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !206 ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.e, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit85

bb.e:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.ap = and i32 %i.an, 2147483647               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 472
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !253
  %i.as = icmp ugt i32 %i.ar, %i.ap
  br i1 %i.as, label %bb.f, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit85

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 464
  %i.au = zext nneg i32 %i.ap to i64
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !55
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !206
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit85

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit85: ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, %bb.e, %bb.f
  %.sroa.04.0.i84 = phi i64 [ %i.ax, %bb.f ], [ 0, %bb.e ], [ 0, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit ]
  store i64 %.sroa.04.0.i84, ptr %4, align 8
  %i.ay = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %i.ay, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit85
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !233, !nonnull !52, !align !201 ; 5 uses
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !247
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 36
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !206 ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.h, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit87

bb.h:                                             ; preds = %bb.g
  %i.be = and i32 %i.bc, 2147483647               ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 472
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !253
  %i.bh = icmp ugt i32 %i.bg, %i.be
  br i1 %i.bh, label %bb.i, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit87

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 464
  %i.bj = zext nneg i32 %i.be to i64
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !55
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !206
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit87

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit87: ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.04.0.i86 = phi i64 [ %i.bm, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ] ; 4 uses
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !247 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 36
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !206 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %bb.j, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit89

bb.j:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit87
  %i.br = and i32 %i.bp, 2147483647               ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 472
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !253
  %i.bu = icmp ugt i32 %i.bt, %i.br
  br i1 %i.bu, label %bb.k, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit89

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 464
  %i.bw = zext nneg i32 %i.br to i64
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !55
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !206
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit89

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit89: ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit87, %bb.j, %bb.k
  %.sroa.04.0.i88 = phi i64 [ %i.bz, %bb.k ], [ 0, %bb.j ], [ 0, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit87 ] ; 2 uses
  %i.ca = trunc i64 %.sroa.04.0.i86 to i1
  br i1 %i.ca, label %bb.l, label %_ZNK4llvm3LLT14getNumElementsEv.exit

bb.l:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit89
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #30
  unreachable

_ZNK4llvm3LLT14getNumElementsEv.exit:             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit89
  %i.cb = trunc i64 %.sroa.04.0.i86 to i32
  %i.cc = lshr i32 %i.cb, 4
  %i.cd = and i32 %i.cc, 65535                    ; 6 uses
  %.not78128.not = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %.not78128.not, label %.critedge82, label %.lr.ph131

.lr.ph131:                                        ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit
  %.not74123 = icmp samesign ugt i32 %i.cd, 1     ; 2 uses
  %i.ce = trunc i64 %.sroa.04.0.i88 to i1
  %i.cf = trunc i64 %.sroa.04.0.i88 to i32
  %i.cg = lshr i32 %i.cf, 4
  %i.ch = and i32 %i.cg, 65535
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count = zext nneg i32 %i.cd to i64
  %wide.trip.count138 = zext nneg i32 %i.cd to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph131, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit
  %i.cp = phi i64 [ 0, %.lr.ph131 ], [ %i.fb, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit ]
  %.066129 = phi i32 [ 0, %.lr.ph131 ], [ %i.fa, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !217 ; 5 uses
  %i.cs = icmp eq i32 %i.cr, -1
  br i1 %i.cs, label %.preheader, label %bb.s

.preheader:                                       ; preds = %bb.m
  br i1 %.not74123, label %.lr.ph127, label %.critedge

bb.n:                                             ; preds = %bb.o
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %.critedge, label %.lr.ph127, !llvm.loop !673

.lr.ph127:                                        ; preds = %.preheader, %bb.n
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %bb.n ], [ 1, %.preheader ] ; 2 uses
  %i.ct = trunc nuw nsw i64 %indvars.iv135 to i32
  %i.cu = add i32 %.066129, %i.ct
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %.not75 = icmp ugt i64 %.sroa.2.0.copyload.i, %i.cv
  br i1 %.not75, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %.lr.ph127
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !217
  %.not76 = icmp eq i32 %i.cx, -1
  br i1 %.not76, label %bb.n, label %.loopexit

.critedge:                                        ; preds = %bb.n, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store i64 %.sroa.04.0.i86, ptr %6, align 8, !tbaa !206
  store i32 73, ptr %5, align 8, !tbaa !212
  store ptr %6, ptr %i.cl, align 8, !tbaa !213
  store i64 1, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !214
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  %i.cy = load i8, ptr %i.cn, align 8, !tbaa !198, !range !51, !noundef !52
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit.thread, label %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit

_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit.thread: ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.p

_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit: ; preds = %.critedge
  %i.da = load ptr, ptr %i.co, align 8, !tbaa !199
  %i.db = call { i64, i64 } @_ZNK4llvm13LegalizerInfo9getActionERKNS_13LegalityQueryE(ptr noundef nonnull align 8 dereferenceable(46376) %i.da, ptr noundef nonnull align 8 dereferenceable(40) %5) #28
  %i.dc = extractvalue { i64, i64 } %i.db, 0
  %i.dd = and i64 %i.dc, 255
  %i.de = icmp eq i64 %i.dd, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.de, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit.thread, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit
  %i.df = load i32, ptr %i.cj, align 8, !tbaa !253 ; 2 uses
  %i.dg = load i32, ptr %i.ck, align 4, !tbaa !261
  %.not.i = icmp ult i32 %i.df, %i.dg
  br i1 %.not.i, label %bb.r, label %bb.q, !prof !262

bb.q:                                             ; preds = %bb.p
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 0)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.r:                                             ; preds = %bb.p
  %i.dh = zext i32 %i.df to i64
  %i.di = load ptr, ptr %2, align 8, !tbaa !55
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dh
  store i32 0, ptr %i.dj, align 1
  %i.dk = load i32, ptr %i.cj, align 8, !tbaa !253
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.cj, align 8, !tbaa !253
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.s:                                             ; preds = %bb.m
  %i.dm = urem i32 %i.cr, %i.cd
  %i.dn = udiv i32 %i.cr, %i.cd                   ; 2 uses
  %i.do = icmp eq i32 %i.dm, 0
  br i1 %i.do, label %.preheader120, label %.loopexit

.preheader120:                                    ; preds = %bb.s
  br i1 %.not74123, label %.lr.ph, label %.critedge80

bb.t:                                             ; preds = %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge80, label %.lr.ph, !llvm.loop !674

.lr.ph:                                           ; preds = %.preheader120, %bb.t
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ 1, %.preheader120 ] ; 3 uses
  %i.dp = trunc nuw nsw i64 %indvars.iv to i32
  %i.dq = add i32 %.066129, %i.dp
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %.not = icmp ugt i64 %.sroa.2.0.copyload.i, %i.dr
  br i1 %.not, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %.lr.ph
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !217
  %i.du = trunc i64 %indvars.iv to i32
  %i.dv = add i32 %i.cr, %i.du
  %.not73 = icmp eq i32 %i.dt, %i.dv
  br i1 %.not73, label %bb.t, label %.loopexit

.critedge80:                                      ; preds = %bb.t, %.preheader120
  br i1 %i.ce, label %bb.v, label %_ZNK4llvm3LLT14getNumElementsEv.exit91

bb.v:                                             ; preds = %.critedge80
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #30
  unreachable

_ZNK4llvm3LLT14getNumElementsEv.exit91:           ; preds = %.critedge80
  %i.dw = icmp slt i32 %i.cr, %i.ch
  br i1 %i.dw, label %bb.w, label %bb.z

bb.w:                                             ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit91
  %i.dx = add nuw i32 %i.dn, 1
  %i.dy = load ptr, ptr %i.w, align 8, !tbaa !247
  %i.dz = zext i32 %i.dx to i64
  %i.ea = getelementptr inbounds nuw [32 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !206 ; 2 uses
  %i.ed = load i32, ptr %i.cj, align 8, !tbaa !253 ; 2 uses
  %i.ee = load i32, ptr %i.ck, align 4, !tbaa !261
  %.not.i92 = icmp ult i32 %i.ed, %i.ee
  br i1 %.not.i92, label %bb.y, label %bb.x, !prof !262

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 %i.ec)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.y:                                             ; preds = %bb.w
  %i.ef = zext i32 %i.ed to i64
  %i.eg = load ptr, ptr %2, align 8, !tbaa !55
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.ef
  store i32 %i.ec, ptr %i.eh, align 1
  %i.ei = load i32, ptr %i.cj, align 8, !tbaa !253
  %i.ej = add i32 %i.ei, 1
  store i32 %i.ej, ptr %i.cj, align 8, !tbaa !253
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.z:                                             ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit91
  %i.ek = load i24, ptr %i.ci, align 8
  %i.el = zext i24 %i.ek to i32
  %i.em = add nuw i32 %i.dn, 2
  %i.en = sub i32 %i.em, %i.el
  %i.eo = load ptr, ptr %i.ak, align 8, !tbaa !247
  %i.ep = zext i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw [32 x i8], ptr %i.eo, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !206 ; 2 uses
  %i.et = load i32, ptr %i.cj, align 8, !tbaa !253 ; 2 uses
  %i.eu = load i32, ptr %i.ck, align 4, !tbaa !261
  %.not.i94 = icmp ult i32 %i.et, %i.eu
  br i1 %.not.i94, label %bb.ab, label %bb.aa, !prof !262

bb.aa:                                            ; preds = %bb.z
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 %i.es)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.ab:                                            ; preds = %bb.z
  %i.ev = zext i32 %i.et to i64
  %i.ew = load ptr, ptr %2, align 8, !tbaa !55
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.ev
  store i32 %i.es, ptr %i.ex, align 1
  %i.ey = load i32, ptr %i.cj, align 8, !tbaa !253
  %i.ez = add i32 %i.ey, 1
  store i32 %i.ez, ptr %i.cj, align 8, !tbaa !253
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit: ; preds = %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.r, %bb.q
  %i.fa = add i32 %.066129, %i.cd                 ; 2 uses
  %i.fb = zext i32 %i.fa to i64                   ; 2 uses
  %.not78 = icmp ugt i64 %.sroa.2.0.copyload.i, %i.fb
  br i1 %.not78, label %bb.m, label %.critedge82.loopexit, !llvm.loop !675

.critedge82.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !233
  %.pre140 = load ptr, ptr %i.a, align 8, !tbaa !247
  br label %.critedge82

.critedge82:                                      ; preds = %.critedge82.loopexit, %_ZNK4llvm3LLT14getNumElementsEv.exit
  %i.fc = phi ptr [ %.pre140, %.critedge82.loopexit ], [ %i.bn, %_ZNK4llvm3LLT14getNumElementsEv.exit ]
  %i.fd = phi ptr [ %.pre, %.critedge82.loopexit ], [ %i.az, %_ZNK4llvm3LLT14getNumElementsEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !206 ; 2 uses
  %i.fg = icmp slt i32 %i.ff, 0
  br i1 %i.fg, label %bb.ac, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit97

bb.ac:                                            ; preds = %.critedge82
  %i.fh = and i32 %i.ff, 2147483647               ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 472
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !253
  %i.fk = icmp ugt i32 %i.fj, %i.fh
  br i1 %i.fk, label %bb.ad, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit97

bb.ad:                                            ; preds = %bb.ac
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 464
  %i.fm = zext nneg i32 %i.fh to i64
  %i.fn = load ptr, ptr %i.fl, align 8, !tbaa !55
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fm
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !206
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit97

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit97: ; preds = %.critedge82, %bb.ac, %bb.ad
  %.sroa.04.0.i96 = phi i64 [ %i.fp, %bb.ad ], [ 0, %bb.ac ], [ 0, %.critedge82 ]
  store i64 %.sroa.04.0.i96, ptr %8, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.04.0.i86, ptr %i.fq, align 8, !tbaa !206
  store i32 85, ptr %7, align 8, !tbaa !212
  %i.fr = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %8, ptr %i.fr, align 8, !tbaa !213
  %.sroa.22.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 2, ptr %.sroa.22.0..sroa_idx.i98, align 8, !tbaa !214
  %i.fs = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fs, i8 0, i64 16, i1 false)
  %i.fu = load i8, ptr %i.ft, align 8, !tbaa !198, !range !51, !noundef !52
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit100.thread, label %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit100

_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit100.thread: ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit97
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.ae

_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit100: ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit97
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !199
  %i.fy = call { i64, i64 } @_ZNK4llvm13LegalizerInfo9getActionERKNS_13LegalityQueryE(ptr noundef nonnull align 8 dereferenceable(46376) %i.fx, ptr noundef nonnull align 8 dereferenceable(40) %7) #28
  %i.fz = extractvalue { i64, i64 } %i.fy, 0
  %i.ga = and i64 %i.fz, 255
  %i.gb = icmp eq i64 %i.ga, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br i1 %i.gb, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit100.thread, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit100
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !253
  %.not.i101 = icmp ne i32 %i.gd, 0
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit, %.lr.ph, %bb.u, %.lr.ph127, %bb.o, %bb.ae, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit100, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit85, %bb.a
  %.6 = phi i1 [ false, %bb.a ], [ false, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit85 ], [ false, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit100 ], [ %.not.i101, %bb.ae ], [ false, %.lr.ph127 ], [ false, %.lr.ph ], [ false, %bb.o ], [ false, %bb.u ], [ false, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit ], [ false, %bb.s ]
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm14CombinerHelper25applyCombineShuffleConcatERNS_12MachineInstrERNS_11SmallVectorINS_8RegisterELj12EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::DstOp", align 8       ; 5 uses
  %4 = alloca %"class.llvm::DstOp", align 8       ; 5 uses
  %5 = alloca %"class.llvm::DstOp", align 8       ; 5 uses
  %6 = alloca %"class.llvm::SrcOp", align 8       ; 5 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !55     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !253  ; 2 uses
  %i.d = zext i32 %i.c to i64
  %.idx = shl nuw nsw i64 %i.d, 2                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not42 = icmp eq i32 %i.c, 0
  br i1 %.not42, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !52, !align !201 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 472 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 464 ; 3 uses
  %i.j = add nsw i64 %.idx, -4                    ; 3 uses
  %i.k = lshr exact i64 %i.j, 2
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

end_hunk_1
begin_hunk_2_@_ZNK4llvm14CombinerHelper25applyCombineShuffleConcatERNS_12MachineInstrERNS_11SmallVectorINS_8RegisterELj12EEE:bb.a
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !206
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.sroa.040.1 = phi i64 [ %.sroa.040.043, %bb.e ], [ %i.ag, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.044, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !268 ; 3 uses
  %.not41.1 = icmp eq i32 %i.ai, 0
  br i1 %.not41.1, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.1, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.1

bb.j:                                             ; preds = %bb.i
  %i.ak = and i32 %i.ai, 2147483647               ; 2 uses
  %i.al = load i32, ptr %i.h, align 8, !tbaa !253
  %i.am = icmp ugt i32 %i.al, %i.ak
  br i1 %i.am, label %bb.k, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.1

bb.k:                                             ; preds = %bb.j
  %i.an = zext nneg i32 %i.ak to i64
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !206
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.1

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.1: ; preds = %bb.k, %bb.j, %bb.i, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %.sroa.040.1.1 = phi i64 [ %.sroa.040.1, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit ], [ %i.aq, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.044, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph48.unr-lcssa, label %bb.e

._crit_edge:                                      ; preds = %bb.p
  %.pre = load i32, ptr %i.b, align 8, !tbaa !253 ; 2 uses
  %i.as = icmp ugt i32 %.pre, 1
  br i1 %i.as, label %bb.q, label %._crit_edge.thread

bb.l:                                             ; preds = %.lr.ph48, %bb.p
  %.03547 = phi ptr [ %i.a, %.lr.ph48 ], [ %i.bd, %bb.p ] ; 3 uses
  %.sroa.038.046 = phi i32 [ 0, %.lr.ph48 ], [ %.sroa.038.2, %bb.p ] ; 3 uses
  %i.at = load i32, ptr %.03547, align 4, !tbaa !268
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.av = icmp eq i32 %.sroa.038.046, 0
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr %0, align 8, !tbaa !202, !nonnull !52, !align !201
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i64 %.sroa.040.1.lcssa, ptr %3, align 8, !tbaa !206
  store i32 0, ptr %i.x, align 8, !tbaa !220
  %i.ax = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder10buildUndefERKNS_5DstOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.aw, ptr noundef nonnull align 8 dereferenceable(20) %3) #28
  %i.ay = extractvalue { ptr, ptr } %i.ax, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !247
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !206
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.038.1 = phi i32 [ %i.bc, %bb.n ], [ %.sroa.038.046, %bb.m ] ; 2 uses
  store i32 %.sroa.038.1, ptr %.03547, align 4, !tbaa !217
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.sroa.038.2 = phi i32 [ %.sroa.038.1, %bb.o ], [ %.sroa.038.046, %bb.l ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.03547, i64 4 ; 2 uses
  %.not36 = icmp eq ptr %i.bd, %i.e
  br i1 %.not36, label %._crit_edge, label %bb.l

bb.q:                                             ; preds = %._crit_edge
  %i.be = zext i32 %.pre to i64
  %i.bf = load ptr, ptr %0, align 8, !tbaa !202, !nonnull !52, !align !201
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !247
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !206
  store i32 %i.bj, ptr %4, align 8, !tbaa !217
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 1, ptr %i.bk, align 8, !tbaa !220
  %i.bl = load ptr, ptr %2, align 8, !tbaa !55
  %i.bm = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder18buildConcatVectorsERKNS_5DstOpENS_8ArrayRefINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.bf, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr %i.bl, i64 %i.be) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.r

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.bn = load ptr, ptr %0, align 8, !tbaa !202, !nonnull !52, !align !201
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !247
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !206
  store i32 %i.br, ptr %5, align 8, !tbaa !217
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 1, ptr %i.bs, align 8, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.bt = load ptr, ptr %2, align 8, !tbaa !55
  %.sroa.02.0.copyload = load i32, ptr %i.bt, align 4, !tbaa !217
  store i32 %.sroa.02.0.copyload, ptr %6, align 8, !tbaa !217
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.bu, align 8, !tbaa !223
  %i.bv = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder9buildCopyERKNS_5DstOpERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.bn, ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull align 8 dereferenceable(20) %6) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread, %bb.q
  %i.bw = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #28 ; 0 uses
  ret void
}

declare { ptr, ptr } @_ZN4llvm16MachineIRBuilder18buildConcatVectorsERKNS_5DstOpENS_8ArrayRefINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(20), ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14CombinerHelper25matchCombineShuffleVectorERNS_12MachineInstrERNS_15SmallVectorImplINS_8RegisterEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.280", align 8 ; 11 uses
  %4 = alloca %"class.llvm::DstOp", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233, !nonnull !52, !align !201 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !247  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !206  ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %i.f, 2147483647                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.j = load i32, ptr %i.i, align 8, !tbaa !253
  %i.k = icmp ugt i32 %i.j, %i.h
  br i1 %i.k, label %bb.c, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.m = zext nneg i32 %i.h to i64
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load i64, ptr %i.o, align 8, !tbaa !206
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.04.0.i = phi i64 [ %i.p, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !206  ; 4 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.d, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit68

bb.d:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.t = and i32 %i.r, 2147483647                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.v = load i32, ptr %i.u, align 8, !tbaa !253
  %i.w = icmp ugt i32 %i.v, %i.t
  br i1 %i.w, label %bb.e, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit68

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.y = zext nneg i32 %i.t to i64
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !206
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit68

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit68: ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, %bb.d, %bb.e
  %.sroa.04.0.i67 = phi i64 [ %i.ab, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit ] ; 3 uses
  %i.ac = trunc i64 %.sroa.04.0.i to i1
  br i1 %i.ac, label %bb.f, label %_ZNK4llvm3LLT14getNumElementsEv.exit

bb.f:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit68
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #30
  unreachable

_ZNK4llvm3LLT14getNumElementsEv.exit:             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit68
  %i.ad = trunc i64 %.sroa.04.0.i to i32
  %i.ae = lshr i32 %i.ad, 4                       ; 2 uses
  %i.af = and i32 %i.ae, 65535                    ; 3 uses
  %i.ag = trunc i64 %.sroa.04.0.i67 to i1
  br i1 %i.ag, label %bb.g, label %_ZNK4llvm3LLT14getNumElementsEv.exit69

bb.g:                                             ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #30
  unreachable

_ZNK4llvm3LLT14getNumElementsEv.exit69:           ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit
  %i.ah = trunc i64 %.sroa.04.0.i67 to i32
  %i.ai = lshr i32 %i.ah, 4                       ; 2 uses
  %i.aj = and i32 %i.ai, 65535                    ; 5 uses
  %i.ak = shl nuw nsw i32 %i.aj, 1
  %i.al = icmp samesign ugt i32 %i.ak, %i.af
  br i1 %i.al, label %bb.ad, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit69
  %.lhs.trunc = trunc i32 %i.ae to i16            ; 3 uses
  %.rhs.trunc = trunc i32 %i.ai to i16            ; 3 uses
  %i.am = urem i16 %.lhs.trunc, %.rhs.trunc
  %i.an = udiv i16 %.lhs.trunc, %.rhs.trunc       ; 3 uses
  %.not = icmp eq i16 %i.am, 0
  br i1 %.not, label %bb.i, label %bb.ad

bb.i:                                             ; preds = %bb.h
  %.zext85 = zext i16 %i.an to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.ao = zext i16 %i.an to i64                   ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.ap, ptr %3, align 8, !tbaa !55
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !253
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 8, ptr %i.ar, align 4, !tbaa !261
  %i.as = icmp ugt i16 %i.an, 8
  br i1 %i.as, label %bb.j, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %i.ap, i64 noundef %i.ao, i64 noundef 4) #28
  %i.at = load ptr, ptr %3, align 8, !tbaa !55    ; 4 uses
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx.i.i.i.i.i.i.i
  %i.av = add nsw i64 %.idx.i.i.i.i.i.i.i, -4     ; 2 uses
  %i.aw = lshr exact i64 %i.av, 2
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check123 = icmp ult i64 %i.av, 28
  br i1 %min.iters.check123, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %bb.j
  %n.vec125 = and i64 %i.ax, 9223372036854775800  ; 3 uses
  %i.ay = shl i64 %n.vec125, 2
  %i.az = getelementptr i8, ptr %i.at, i64 %i.ay
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph124
  %index127 = phi i64 [ 0, %vector.ph124 ], [ %index.next129, %vector.body126 ] ; 2 uses
  %i.ba = shl i64 %index127, 2
  %next.gep128 = getelementptr i8, ptr %i.at, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep128, i64 16
  store <4 x i32> splat (i32 -1), ptr %next.gep128, align 4, !tbaa !217
  store <4 x i32> splat (i32 -1), ptr %i.bb, align 4, !tbaa !217
  %index.next129 = add nuw i64 %index127, 8       ; 2 uses
  %i.bc = icmp eq i64 %index.next129, %n.vec125
  br i1 %i.bc, label %middle.block130, label %vector.body126, !llvm.loop !676

middle.block130:                                  ; preds = %vector.body126
  %cmp.n131 = icmp eq i64 %i.ax, %n.vec125
  br i1 %cmp.n131, label %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.j, %middle.block130
  %.06.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.at, %bb.j ], [ %i.az, %middle.block130 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 -1, ptr %.06.i.i.i.i.i.i.i.i.i, align 4, !tbaa !217
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.au
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !677

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i:          ; preds = %bb.i
  %.not.i = icmp ugt i16 %.rhs.trunc, %.lhs.trunc
  br i1 %.not.i, label %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx.i.i.i.i.i.i
  %i.bf = add nsw i64 %.idx.i.i.i.i.i.i, -4       ; 2 uses
  %i.bg = lshr exact i64 %i.bf, 2
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bf, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.k
  %n.vec = and i64 %i.bh, 9223372036854775800     ; 3 uses
  %i.bi = shl i64 %n.vec, 2
  %i.bj = getelementptr i8, ptr %i.ap, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.bk ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -1), ptr %next.gep, align 8, !tbaa !217
  store <4 x i32> splat (i32 -1), ptr %i.bl, align 8, !tbaa !217
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !678

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.k, %middle.block
  %.06.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %bb.k ], [ %i.bj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 -1, ptr %.06.i.i.i.i.i.i.i.i, align 4, !tbaa !217
  %i.bn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.be
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !679

_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block130
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !247
  br label %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit

_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit.loopexit, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i
  %i.bo = phi ptr [ %i.d, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i ], [ %.pre, %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit.loopexit ], [ %i.d, %middle.block ], [ %i.d, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  store i32 %.zext85, ptr %i.aq, align 8, !tbaa !253
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 112
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bp, align 8, !tbaa !269
  %.not6290 = icmp eq i32 %i.af, 0
  %.pre101 = load ptr, ptr %3, align 8            ; 4 uses
  br i1 %.not6290, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit
  %i.bq = zext nneg i32 %i.af to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %indvars.iv
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !217 ; 3 uses
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = urem i32 %i.bs, %i.aj
  %i.bv = udiv i32 %i.bs, %i.aj                   ; 2 uses
  %i.bw = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.bx = urem i32 %i.bw, %i.aj
  %i.by = udiv i32 %i.bw, %i.aj
  %.not63 = icmp eq i32 %i.bu, %i.bx
  br i1 %.not63, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.pre101, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !217 ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 0
  %.not64 = icmp eq i32 %i.cb, %i.bv
  %or.cond = or i1 %i.cc, %.not64
  br i1 %or.cond, label %._crit_edge, label %.loopexit

._crit_edge:                                      ; preds = %bb.n
  store i32 %i.bv, ptr %i.ca, align 4, !tbaa !217
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not62 = icmp eq i64 %indvars.iv.next, %i.bq
  br i1 %.not62, label %.critedge.loopexit, label %bb.l, !llvm.loop !680

.critedge.loopexit:                               ; preds = %bb.o
  %.pre100 = load ptr, ptr %3, align 8, !tbaa !55
  %.pre102 = load i32, ptr %i.aq, align 8, !tbaa !253
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit
  %i.cd = phi i32 [ %.pre102, %.critedge.loopexit ], [ %.zext85, %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit ] ; 2 uses
  %i.ce = phi ptr [ %.pre100, %.critedge.loopexit ], [ %.pre101, %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bo, i64 68
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !206 ; 2 uses
  %i.ch = zext i32 %i.cd to i64
  %.idx = shl nuw nsw i64 %i.ch, 2
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx
  %.not6593 = icmp eq i32 %i.cd, 0
  br i1 %.not6593, label %.loopexit, label %.lr.ph96

.lr.ph96:                                         ; preds = %.critedge
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph96, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit
  %.05795 = phi ptr [ %i.ce, %.lr.ph96 ], [ %i.du, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit ] ; 2 uses
  %.sroa.076.094 = phi i32 [ 0, %.lr.ph96 ], [ %.sroa.076.2, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit ] ; 6 uses
  %i.cn = load i32, ptr %.05795, align 4, !tbaa !217 ; 2 uses
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %.not66 = icmp eq i32 %.sroa.076.094, 0
  br i1 %.not66, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cp = load ptr, ptr %0, align 8, !tbaa !202, !nonnull !52, !align !201 ; 2 uses
  %i.cq = load ptr, ptr %i.cl, align 8, !tbaa !263
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !264
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 72
  store ptr %1, ptr %i.cs, align 8
  %i.ct = load ptr, ptr %0, align 8, !tbaa !202, !nonnull !52, !align !201
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i64 %.sroa.04.0.i67, ptr %4, align 8, !tbaa !206
  store i32 0, ptr %i.cm, align 8, !tbaa !220
  %i.cu = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder10buildUndefERKNS_5DstOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.ct, ptr noundef nonnull align 8 dereferenceable(20) %4) #28
  %i.cv = extractvalue { ptr, ptr } %i.cu, 1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !247
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !206
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.076.1 = phi i32 [ %i.cz, %bb.r ], [ %.sroa.076.094, %bb.q ] ; 4 uses
  %i.da = load i32, ptr %i.cj, align 8, !tbaa !253 ; 2 uses
  %i.db = load i32, ptr %i.ck, align 4, !tbaa !261
  %.not.i70 = icmp ult i32 %i.da, %i.db
  br i1 %.not.i70, label %bb.u, label %bb.t, !prof !262

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 %.sroa.076.1)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.u:                                             ; preds = %bb.s
  %i.dc = zext i32 %i.da to i64
  %i.dd = load ptr, ptr %2, align 8, !tbaa !55
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.dc
  store i32 %.sroa.076.1, ptr %i.de, align 1
  %i.df = load i32, ptr %i.cj, align 8, !tbaa !253
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr %i.cj, align 8, !tbaa !253
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.v:                                             ; preds = %bb.p
  %i.dh = icmp eq i32 %i.cn, 0
  %i.di = load i32, ptr %i.cj, align 8, !tbaa !253 ; 3 uses
  %i.dj = load i32, ptr %i.ck, align 4, !tbaa !261
  %.not.i71 = icmp ult i32 %i.di, %i.dj           ; 2 uses
  br i1 %i.dh, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  br i1 %.not.i71, label %bb.y, label %bb.x, !prof !262

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 %i.r)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.y:                                             ; preds = %bb.w
  %i.dk = zext i32 %i.di to i64
  %i.dl = load ptr, ptr %2, align 8, !tbaa !55
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dk
  store i32 %i.r, ptr %i.dm, align 1
  %i.dn = load i32, ptr %i.cj, align 8, !tbaa !253
  %i.do = add i32 %i.dn, 1
  store i32 %i.do, ptr %i.cj, align 8, !tbaa !253
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.z:                                             ; preds = %bb.v
  br i1 %.not.i71, label %bb.ab, label %bb.aa, !prof !262

bb.aa:                                            ; preds = %bb.z
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 %i.cg)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

end_hunk_2
begin_hunk_3_@_ZNK4llvm14CombinerHelper30findCandidatesForLoadOrCombineEPKNS_12MachineInstrE:bb.a
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.b, align 8, !tbaa !253
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE9push_backES3_.exit: ; preds = %bb.m, %bb.l, %bb.j, %bb.i
  %i.bx = load ptr, ptr %i.g, align 8, !tbaa !233, !nonnull !52, !align !201
  %i.by = call noundef ptr @_ZN4llvm12getOpcodeDefEjNS_8RegisterERKNS_19MachineRegisterInfoE(i32 noundef 65, i32 %i.bc, ptr noundef nonnull align 8 dereferenceable(520) %i.bx) #28 ; 3 uses
  %.not32 = icmp eq ptr %i.by, null
  br i1 %.not32, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE9push_backES3_.exit
  %i.bz = load i32, ptr %i.e, align 8, !tbaa !253 ; 2 uses
  %i.ca = load i32, ptr %i.f, align 4, !tbaa !261
  %.not.i38 = icmp ult i32 %i.bz, %i.ca
  br i1 %.not.i38, label %bb.p, label %bb.o, !prof !262

bb.o:                                             ; preds = %bb.n
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.by)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE9push_backES3_.exit39

bb.p:                                             ; preds = %bb.n
  %i.cb = zext i32 %i.bz to i64
  %i.cc = load ptr, ptr %4, align 8, !tbaa !55
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb
  store ptr %i.by, ptr %i.cd, align 1
  %i.ce = load i32, ptr %i.e, align 8, !tbaa !253
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.e, align 8, !tbaa !253
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE9push_backES3_.exit39

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE9push_backES3_.exit
  %i.cg = load i32, ptr %i.b, align 8, !tbaa !253 ; 2 uses
  %i.ch = load i32, ptr %i.c, align 4, !tbaa !261
  %.not.i40 = icmp ult i32 %i.cg, %i.ch
  br i1 %.not.i40, label %bb.s, label %bb.r, !prof !262

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 %i.bc)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE9push_backES3_.exit39

bb.s:                                             ; preds = %bb.q
  %i.ci = zext i32 %i.cg to i64
  %i.cj = load ptr, ptr %3, align 8, !tbaa !55
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ci
  store i32 %i.bc, ptr %i.ck, align 1
  %i.cl = load i32, ptr %i.b, align 8, !tbaa !253
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.b, align 8, !tbaa !253
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE9push_backES3_.exit39

_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE9push_backES3_.exit39: ; preds = %bb.s, %bb.r, %bb.p, %bb.o
  %i.cn = add nuw i32 %.064, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.cn, %i.ap
  br i1 %exitcond.not, label %.critedge35, label %.lr.ph, !llvm.loop !867

.critedge35:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE9push_backES3_.exit39, %.lr.ph
  %.pre = load i32, ptr %i.b, align 8, !tbaa !253 ; 2 uses
  %.not.i42 = icmp ne i32 %.pre, 0
  %i.co = and i32 %.pre, 1
  %.not33 = icmp eq i32 %i.co, 0
  %or.cond = and i1 %.not.i42, %.not33
  br i1 %or.cond, label %_ZNSt8optionalIN4llvm11SmallVectorINS0_8RegisterELj8EEEEC2IS3_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_IS8_ISt10in_place_tSF_EESt16is_constructibleIS3_JSB_EESt14is_convertibleISB_S3_EEEbE4typeELb1EEEOSB_.exit, label %.critedge

_ZNSt8optionalIN4llvm11SmallVectorINS0_8RegisterELj8EEEEC2IS3_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_IS8_ISt10in_place_tSF_EESt16is_constructibleIS3_JSB_EESt14is_convertibleISB_S3_EEEbE4typeELb1EEEOSB_.exit: ; preds = %.critedge35
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cp, ptr %0, align 8, !tbaa !55
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.cq, align 8, !tbaa !253
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 8, ptr %i.cr, align 4, !tbaa !261
  %i.cs = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_8RegisterEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.f, %.critedge35, %_ZNK4llvm8TypeSizecvmEv.exit, %_ZNSt8optionalIN4llvm11SmallVectorINS0_8RegisterELj8EEEEC2IS3_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_IS8_ISt10in_place_tSF_EESt16is_constructibleIS3_JSB_EESt14is_convertibleISB_S3_EEEbE4typeELb1EEEOSB_.exit
  %.sink = phi i8 [ 0, %_ZNK4llvm8TypeSizecvmEv.exit ], [ 1, %_ZNSt8optionalIN4llvm11SmallVectorINS0_8RegisterELj8EEEEC2IS3_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_IS8_ISt10in_place_tSF_EESt16is_constructibleIS3_JSB_EESt14is_convertibleISB_S3_EEEbE4typeELb1EEEOSB_.exit ], [ 0, %.critedge35 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink, ptr %i.ct, align 8, !tbaa !447
  %i.cu = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.d
  br i1 %i.cv, label %_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj7EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.cu) #28
  br label %_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj7EED2Ev.exit

_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj7EED2Ev.exit: ; preds = %.critedge, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.cw = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.a
  br i1 %i.cx, label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj7EED2Ev.exit
  call void @free(ptr noundef %i.cw) #28
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj7EED2Ev.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm14CombinerHelper31findLoadOffsetsForLoadOrCombineERNS_13SmallDenseMapIllLj8ENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEERKNS_11SmallVectorINS_8RegisterELj8EEEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.566") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3, i32 noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SmallSetVector", align 8 ; 11 uses
  %6 = alloca %"class.llvm::SmallSet", align 8    ; 14 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %7 = alloca %"struct.std::pair.608", align 8    ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %5, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %i.f, align 8, !tbaa !253
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 8, ptr %i.g, align 4, !tbaa !261
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.i, align 8, !tbaa !253
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 8, ptr %i.j, align 4, !tbaa !261
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !879
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !880
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 104
  store ptr %i.k, ptr %i.m, align 8, !tbaa !452
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 112
  store ptr %i.k, ptr %i.n, align 8, !tbaa !881
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i64 0, ptr %i.o, align 8, !tbaa !453
  %i.p = load ptr, ptr %3, align 8, !tbaa !55     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !253  ; 2 uses
  %i.s = zext i32 %i.r to i64
  %.idx = shl nuw nsw i64 %i.s, 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  %.not184 = icmp eq i32 %i.r, 0
  br i1 %.not184, label %._crit_edge200, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = zext i32 %4 to i64                       ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.aj
  %.0192 = phi ptr [ null, %.lr.ph ], [ %i.cr, %bb.aj ] ; 2 uses
  %.038191 = phi ptr [ null, %.lr.ph ], [ %spec.select64, %bb.aj ] ; 2 uses
  %.043190 = phi ptr [ null, %.lr.ph ], [ %.144, %bb.aj ] ; 3 uses
  %.047189 = phi ptr [ %i.p, %.lr.ph ], [ %i.en, %bb.aj ] ; 2 uses
  %.093188 = phi i64 [ 9223372036854775807, %.lr.ph ], [ %spec.select155, %bb.aj ] ; 2 uses
  %.098187 = phi ptr [ null, %.lr.ph ], [ %spec.select154, %bb.aj ]
  %.0104186 = phi ptr [ null, %.lr.ph ], [ %.1105, %bb.aj ] ; 3 uses
  %.sroa.087.0185 = phi i32 [ 0, %.lr.ph ], [ %.sroa.0.0, %bb.aj ] ; 2 uses
  %.sroa.015.0.copyload = load i32, ptr %.047189, align 4, !tbaa !217 ; 7 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !233, !nonnull !52, !align !201 ; 4 uses
  %i.y = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo15hasOneNonDBGUseENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.x, i32 %.sroa.015.0.copyload) #28, !noalias !882
  br i1 %i.y, label %bb.c, label %_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_18OneNonDBGUse_matchINS0_14BinaryOp_matchINS0_7bind_tyIS2_EENS0_13ConstantMatchIlEELj155ELb0ELj0EEEEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.z = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.x, i32 %.sroa.015.0.copyload) #28, !noalias !882 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_18OneNonDBGUse_matchINS0_14BinaryOp_matchINS0_7bind_tyIS2_EENS0_13ConstantMatchIlEELj155ELb0ELj0EEEEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !246, !noalias !882
  %i.ac = icmp eq i32 %i.ab, 155
  br i1 %i.ac, label %bb.e, label %_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_18OneNonDBGUse_matchINS0_14BinaryOp_matchINS0_7bind_tyIS2_EENS0_13ConstantMatchIlEELj155ELb0ELj0EEEEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ae = load i24, ptr %i.ad, align 8, !noalias !882
  %i.af = icmp eq i24 %i.ae, 3
  br i1 %i.af, label %bb.f, label %_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_18OneNonDBGUse_matchINS0_14BinaryOp_matchINS0_7bind_tyIS2_EENS0_13ConstantMatchIlEELj155ELb0ELj0EEEEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !247, !noalias !882 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 36
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !206, !noalias !882
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 68
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !206, !noalias !882
  %i.am = call { i64, i8 } @_ZN4llvm23getIConstantVRegSExtValENS_8RegisterERKNS_19MachineRegisterInfoE(i32 %i.al, ptr noundef nonnull align 8 dereferenceable(520) %i.x) #28, !noalias !882 ; 2 uses
  %i.an = extractvalue { i64, i8 } %i.am, 1
  %i.ao = trunc nuw i8 %i.an to i1                ; 2 uses
  %i.ap = extractvalue { i64, i8 } %i.am, 0
  %spec.select.i = select i1 %i.ao, i32 %i.aj, i32 %.sroa.015.0.copyload
  %spec.select30.i = select i1 %i.ao, i64 %i.ap, i64 0
  br label %_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_18OneNonDBGUse_matchINS0_14BinaryOp_matchINS0_7bind_tyIS2_EENS0_13ConstantMatchIlEELj155ELb0ELj0EEEEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit.i

_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_18OneNonDBGUse_matchINS0_14BinaryOp_matchINS0_7bind_tyIS2_EENS0_13ConstantMatchIlEELj155ELb0ELj0EEEEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.i = phi i32 [ %spec.select.i, %bb.f ], [ %.sroa.015.0.copyload, %bb.b ], [ %.sroa.015.0.copyload, %bb.c ], [ %.sroa.015.0.copyload, %bb.d ], [ %.sroa.015.0.copyload, %bb.e ]
  %.0.i = phi i64 [ %spec.select30.i, %bb.f ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ] ; 2 uses
  %i.aq = srem i64 %.0.i, %i.v
  %i.ar = sdiv i64 %.0.i, %i.v
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_18OneNonDBGUse_matchINS0_14BinaryOp_matchINS0_7bind_tyIS2_EENS0_13ConstantMatchIlEELj155ELb0ELj0EEEEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit.i
  %i.as = call noundef ptr @_ZN4llvm20getDefIgnoringCopiesENS_8RegisterERKNS_19MachineRegisterInfoE(i32 %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(520) %i.x) #28, !noalias !882 ; 11 uses
  %.not.i.i.i9.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i9.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 52
  %i.au = load i32, ptr %i.at, align 4, !tbaa !246, !noalias !882
  %i.av = icmp eq i32 %i.au, 101
  br i1 %i.av, label %_ZN4llvm12getOpcodeDefINS_9GZExtLoadEEEPT_NS_8RegisterERKNS_19MachineRegisterInfoE.exit.i, label %.thread

_ZN4llvm12getOpcodeDefINS_9GZExtLoadEEEPT_NS_8RegisterERKNS_19MachineRegisterInfoE.exit.i: ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 64 ; 5 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !206, !noalias !882 ; 6 uses
  %i.ay = icmp ugt i64 %i.ax, 7
  call void @llvm.assume(i1 %i.ay)
  %i.az = and i64 %i.ax, 7
  %i.ba = icmp eq i64 %i.az, 0                    ; 2 uses
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm12getOpcodeDefINS_9GZExtLoadEEEPT_NS_8RegisterERKNS_19MachineRegisterInfoE.exit.i
  %i.bb = inttoptr i64 %i.ax to ptr               ; 2 uses
  store ptr %i.bb, ptr %i.aw, align 8, !tbaa !206, !noalias !882
  br label %_ZNK4llvm13GMemOperation11isUnorderedEv.exit.i

bb.j:                                             ; preds = %_ZN4llvm12getOpcodeDefINS_9GZExtLoadEEEPT_NS_8RegisterERKNS_19MachineRegisterInfoE.exit.i
  %i.bc = and i64 %i.ax, -8
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.pre.i.i.i = load ptr, ptr %i.be, align 8, !tbaa !276, !noalias !882
  br label %_ZNK4llvm13GMemOperation11isUnorderedEv.exit.i

_ZNK4llvm13GMemOperation11isUnorderedEv.exit.i:   ; preds = %bb.j, %bb.i
  %i.bf = phi ptr [ %i.bb, %bb.i ], [ %.pre.i.i.i, %bb.j ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 36
  %i.bh = load i16, ptr %i.bg, align 4, !noalias !882
  %i.bi = and i16 %i.bh, 3584
  %switch.i.i.i = icmp eq i16 %i.bi, 0
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bk = load i16, ptr %i.bj, align 8, !noalias !882
  %i.bl = and i16 %i.bk, 4
  %.not.i.i.i = icmp eq i16 %i.bl, 0
  %i.bm = select i1 %switch.i.i.i, i1 %.not.i.i.i, i1 false
  br i1 %i.bm, label %bb.k, label %.thread

bb.k:                                             ; preds = %_ZNK4llvm13GMemOperation11isUnorderedEv.exit.i
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bn = inttoptr i64 %i.ax to ptr               ; 2 uses
  store ptr %i.bn, ptr %i.aw, align 8, !tbaa !206, !noalias !882
  br label %_ZNK4llvm13GMemOperation6getMMOEv.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.bo = and i64 %i.ax, -8
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.pre.i.i10.i = load ptr, ptr %i.bq, align 8, !tbaa !276, !noalias !882
  br label %_ZNK4llvm13GMemOperation6getMMOEv.exit.i.i

_ZNK4llvm13GMemOperation6getMMOEv.exit.i.i:       ; preds = %bb.m, %bb.l
  %i.br = phi ptr [ %i.bn, %bb.l ], [ %.pre.i.i10.i, %bb.m ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !882 ; 12 uses
  %i.bu = icmp eq i64 %i.bt, 1152921504606846976
  %i.bv = and i64 %i.bt, 1152921504606846975
  %i.bw = icmp ne i64 %i.bv, 0
  %i.bx = or i1 %i.bu, %i.bw
  br i1 %i.bx, label %bb.n, label %.thread

bb.n:                                             ; preds = %_ZNK4llvm13GMemOperation6getMMOEv.exit.i.i
  %.mask.i.i.i.i.i = and i64 %i.bt, -1152921504606846976
  %i.by = icmp eq i64 %.mask.i.i.i.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.by, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = lshr i64 %i.bt, 60
  %.off.i.i.i.i.i = add nsw i64 %i.bz, -1
  %switch.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i, 3
  br i1 %switch.i.i.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ca = icmp slt i64 %i.bt, -8070450532247928832
  %spec.select.i.i.i.i.i.i = or i1 %i.ca, %i.by
  %i.cb = lshr i64 %i.bt, 44
  %i.cc = and i64 %i.cb, 65535
  %i.cd = lshr i64 %i.bt, 28
  %i.ce = and i64 %i.cd, 4294967295
  %i.cf = select i1 %spec.select.i.i.i.i.i.i, i64 %i.cc, i64 %i.ce
  br label %_ZNK4llvm13GMemOperation16getMemSizeInBitsEv.exit.i

bb.q:                                             ; preds = %bb.o
  %i.cg = lshr i64 %i.bt, 4
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = and i64 %i.cg, 65535
  %i.ch = icmp slt i64 %i.bt, -8070450532247928832
  %i.ci = lshr i64 %i.bt, 44
  %i.cj = and i64 %i.ci, 65535
  %i.ck = lshr i64 %i.bt, 28
  %.0.in.i3.i.i.i.i = select i1 %i.ch, i64 %i.cj, i64 %i.ck
  %i.cl = mul nuw nsw i64 %.0.in.i3.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i.i
  %i.cm = and i64 %i.cl, 4294967295
  %.sroa.0.4.extract.trunc.i.i.i.i = shl i64 %i.bt, 62
  %i.cn = and i64 %.sroa.0.4.extract.trunc.i.i.i.i, 4611686018427387904
  %i.co = or disjoint i64 %i.cm, %i.cn
  br label %_ZNK4llvm13GMemOperation16getMemSizeInBitsEv.exit.i

_ZNK4llvm13GMemOperation16getMemSizeInBitsEv.exit.i: ; preds = %bb.q, %bb.p
  %.sroa.03.0.i.i.i = phi i64 [ %i.co, %bb.q ], [ %i.cf, %bb.p ]
  %.not25.i = icmp eq i64 %.sroa.03.0.i.i.i, %i.v
  br i1 %.not25.i, label %bb.r, label %.thread

.thread:                                          ; preds = %_ZNK4llvm13GMemOperation16getMemSizeInBitsEv.exit.i, %_ZNK4llvm13GMemOperation11isUnorderedEv.exit.i, %_ZNK4llvm13GMemOperation6getMMOEv.exit.i.i, %bb.h, %bb.g, %_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_18OneNonDBGUse_matchINS0_14BinaryOp_matchINS0_7bind_tyIS2_EENS0_13ConstantMatchIlEELj155ELb0ELj0EEEEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.cp, align 8, !tbaa !455
  br label %.thread146

bb.r:                                             ; preds = %_ZNK4llvm13GMemOperation16getMemSizeInBitsEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !214
  %i.cq = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !263 ; 2 uses
  %.not57 = icmp eq ptr %.0192, null
  %.not58216 = icmp eq ptr %.0192, %i.cr
  %.not58 = select i1 %.not57, i1 true, i1 %.not58216
  br i1 %.not58, label %bb.s, label %.thread130

bb.s:                                             ; preds = %bb.r
  %i.cs = load i64, ptr %i.aw, align 8, !tbaa !206 ; 4 uses
  %i.ct = icmp ugt i64 %i.cs, 7
  call void @llvm.assume(i1 %i.ct)
  %i.cu = and i64 %i.cs, 7
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cw = inttoptr i64 %i.cs to ptr               ; 2 uses
  store ptr %i.cw, ptr %i.aw, align 8, !tbaa !206
  br label %_ZNK4llvm13GMemOperation6getMMOEv.exit

bb.u:                                             ; preds = %bb.s
  %i.cx = and i64 %i.cs, -8
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %.pre.i = load ptr, ptr %i.cz, align 8, !tbaa !276
  br label %_ZNK4llvm13GMemOperation6getMMOEv.exit

_ZNK4llvm13GMemOperation6getMMOEv.exit:           ; preds = %bb.t, %bb.u
  %i.da = phi ptr [ %i.cw, %bb.t ], [ %.pre.i, %bb.u ] ; 2 uses
  %.not59 = icmp eq ptr %.038191, null
  %spec.select64 = select i1 %.not59, ptr %i.da, ptr %.038191 ; 2 uses
  %i.db = call noundef i32 @_ZNK4llvm18MachinePointerInfo12getAddrSpaceEv(ptr noundef nonnull align 8 dereferenceable(88) %spec.select64) #28
  %i.dc = call noundef i32 @_ZNK4llvm18MachinePointerInfo12getAddrSpaceEv(ptr noundef nonnull align 8 dereferenceable(88) %i.da) #28
  %.not60 = icmp eq i32 %i.db, %i.dc
  br i1 %.not60, label %bb.v, label %.thread130

bb.v:                                             ; preds = %_ZNK4llvm13GMemOperation6getMMOEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.dd = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !247
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 36
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !206
  %i.dh = load ptr, ptr %i.u, align 8, !tbaa !233, !nonnull !52, !align !201 ; 2 uses
  %i.di = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.dh, i32 %i.dg) #28 ; 4 uses
  %.not.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 52
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !246
  %i.dl = icmp eq i32 %i.dk, 240
  br i1 %i.dl, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dn = load i24, ptr %i.dm, align 8
  %i.do = icmp eq i24 %i.dn, 3
  br i1 %i.do, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !247 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 36
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !206
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 68
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !206
  %i.dv = call { i64, i8 } @_ZN4llvm23getIConstantVRegSExtValENS_8RegisterERKNS_19MachineRegisterInfoE(i32 %i.du, ptr noundef nonnull align 8 dereferenceable(520) %i.dh) #28 ; 2 uses
  %i.dw = extractvalue { i64, i8 } %i.dv, 1
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_14BinaryOp_matchINS0_7bind_tyIS2_EENS0_13ConstantMatchIlEELj240ELb0ELj0EEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit, label %bb.z

_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_14BinaryOp_matchINS0_7bind_tyIS2_EENS0_13ConstantMatchIlEELj240ELb0ELj0EEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit: ; preds = %bb.y
  %i.dy = extractvalue { i64, i8 } %i.dv, 0
  br label %bb.aa

bb.z:                                             ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %i.dz = load ptr, ptr %i.dd, align 8, !tbaa !247
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 36
end_hunk_3
