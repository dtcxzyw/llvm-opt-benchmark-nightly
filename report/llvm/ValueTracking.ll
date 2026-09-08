Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ValueTracking?download=true
inline.NumInlined: 12130
inline.NumDeleted: 4588
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4llvm17FindInsertedValueEPNS_5ValueENS_8ArrayRefIjEESt8optionalINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEE:bb.a

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i:    ; preds = %bb.m, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit
  %.pre8.i = phi i32 [ %i.as, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit ], [ %.pre8.pre.i, %bb.m ] ; 2 uses
  %.not.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i, label %_ZN4llvm15SmallVectorImplIjE6appendIPKjvEEvT_S5_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i
  %i.ba = load ptr, ptr %4, align 8, !tbaa !24
  %i.bb = zext i32 %.pre8.i to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 4 %i.av, i64 %.idx, i1 false)
  %.pre.i = load i32, ptr %i.am, align 8, !tbaa !111
  br label %_ZN4llvm15SmallVectorImplIjE6appendIPKjvEEvT_S5_.exit

_ZN4llvm15SmallVectorImplIjE6appendIPKjvEEvT_S5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i, %bb.n
  %i.bd = phi i32 [ %.pre8.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i ], [ %.pre.i, %bb.n ]
  %i.be = add i32 %i.bd, %i.at                    ; 2 uses
  store i32 %i.be, ptr %i.am, align 8, !tbaa !111
  %.idx87 = shl nuw nsw i64 %.tr9099, 2
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = add nsw i64 %.tr9099, %i.bf             ; 2 uses
  %i.bh = load i32, ptr %i.an, align 4, !tbaa !183
  %i.bi = zext i32 %i.bh to i64
  %i.bj = icmp ugt i64 %i.bg, %i.bi
  br i1 %i.bj, label %bb.o, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i55

bb.o:                                             ; preds = %_ZN4llvm15SmallVectorImplIjE6appendIPKjvEEvT_S5_.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.al, i64 noundef %i.bg, i64 noundef 4) #27
  %.pre8.pre.i59 = load i32, ptr %i.am, align 8, !tbaa !111
  %.pre117 = zext i32 %.pre8.pre.i59 to i64
  br label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i55

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i55:  ; preds = %_ZN4llvm15SmallVectorImplIjE6appendIPKjvEEvT_S5_.exit, %bb.o
  %.pre-phi = phi i64 [ %i.bf, %_ZN4llvm15SmallVectorImplIjE6appendIPKjvEEvT_S5_.exit ], [ %.pre117, %bb.o ]
  %i.bk = load ptr, ptr %4, align 8, !tbaa !24
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.pre-phi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bl, ptr noundef nonnull align 4 dereferenceable(1) %.tr8998, i64 %.idx87, i1 false)
  %.pre.i58 = load i32, ptr %i.am, align 8, !tbaa !111
  %i.bm = add i32 %.pre.i58, %i.aj                ; 2 uses
  store i32 %i.bm, ptr %i.am, align 8, !tbaa !111
  %i.bn = getelementptr inbounds i8, ptr %.tr97, i64 -32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !50
  %i.bp = load ptr, ptr %4, align 8, !tbaa !24
  %i.bq = zext i32 %i.bm to i64
  %i.br = call noundef ptr @_ZN4llvm17FindInsertedValueEPNS_5ValueENS_8ArrayRefIjEESt8optionalINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEE(ptr noundef %i.bo, ptr %i.bp, i64 %i.bq, ptr noundef nonnull byval(%"class.std::optional.156") align 8 %3)
  %i.bs = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.al
  br i1 %i.bt, label %_ZN4llvm11SmallVectorIjLj5EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i55
  call void @free(ptr noundef %i.bs) #27
  br label %_ZN4llvm11SmallVectorIjLj5EED2Ev.exit

_ZN4llvm11SmallVectorIjLj5EED2Ev.exit:            ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i55, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.thread

.thread:                                          ; preds = %tailrecurse, %bb.b, %tailrecurse144, %_ZN4llvm11SmallVectorIjLj5EED2Ev.exit, %bb.c, %bb.f, %bb.g
  %.5 = phi ptr [ %i.br, %_ZN4llvm11SmallVectorIjLj5EED2Ev.exit ], [ null, %bb.c ], [ %i.t, %bb.g ], [ %.tr, %tailrecurse144 ], [ null, %bb.f ], [ %i.e, %tailrecurse ], [ null, %bb.b ]
  ret ptr %.5
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL17BuildSubAggregatePN4llvm5ValueENS_8ArrayRefIjEENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr noundef %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #3 {
bb.a:
  %5 = alloca %"class.llvm::SmallVector.584", align 8 ; 10 uses
  %6 = alloca %"class.llvm::ilist_iterator_w_bits.161", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = tail call noundef ptr @_ZN4llvm16ExtractValueInst14getIndexedTypeEPNS_4TypeENS_8ArrayRefIjEE(ptr noundef %i.b, ptr %1, i64 %2) #27 ; 2 uses
  %i.d = tail call noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i32 0, ptr %i.f, align 8, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 10, ptr %i.g, align 4, !tbaa !183
  %.idx.i = shl nuw nsw i64 %2, 2
  %i.h = icmp ugt i64 %2, 10
  br i1 %i.h, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i: ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 4) #27
  %.pre8.pre.i.i = load i32, ptr %i.f, align 8, !tbaa !111
  %i.i = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %5, align 8, !tbaa !24
  br label %bb.b

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i:  ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIjLj10EEC2IjvEENS_8ArrayRefIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i
  %i.j = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i ], [ %i.e, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 4 %1, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.f, align 8, !tbaa !111
  br label %_ZN4llvm11SmallVectorIjLj10EEC2IjvEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorIjLj10EEC2IjvEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i, %bb.b
  %i.l = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.b ]
  %i.m = trunc i64 %2 to i32
  %i.n = add i32 %i.l, %i.m                       ; 2 uses
  store i32 %i.n, ptr %i.f, align 8, !tbaa !111
  store ptr %3, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %4, ptr %.sroa.28.0..sroa_idx, align 8
  %i.o = call fastcc noundef ptr @_ZL17BuildSubAggregatePN4llvm5ValueES1_PNS_4TypeERNS_15SmallVectorImplIjEEjNS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %i.n, ptr noundef nonnull byval(%"class.llvm::ilist_iterator_w_bits.161") align 8 %6)
  %i.p = load ptr, ptr %5, align 8, !tbaa !24     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %_ZN4llvm11SmallVectorIjLj10EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIjLj10EEC2IjvEENS_8ArrayRefIT_EE.exit
  call void @free(ptr noundef %i.p) #27
  br label %_ZN4llvm11SmallVectorIjLj10EED2Ev.exit

_ZN4llvm11SmallVectorIjLj10EED2Ev.exit:           ; preds = %_ZN4llvm11SmallVectorIjLj10EEC2IjvEENS_8ArrayRefIT_EE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret ptr %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm24getConstantDataArrayInfoEPKNS_5ValueERNS_22ConstantDataArraySliceEjm(ptr noundef %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.llvm::APInt", align 8       ; 10 uses
  %5 = alloca %"class.llvm::function_ref.172", align 8 ; 2 uses
  %i.a = lshr i32 %2, 3
  %i.b = tail call noundef ptr @_ZN4llvm19getUnderlyingObjectEPKNS_5ValueEj(ptr noundef %0, i32 noundef 10) ; 9 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !40
  %.not = icmp eq i8 %i.c, 17
  br i1 %.not, label %bb.b, label %_ZNK4llvm14GlobalVariable24hasDefinitiveInitializerEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZNK4llvm14GlobalVariable24hasDefinitiveInitializerEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(89) %i.b) #27
  br i1 %i.g, label %_ZNK4llvm14GlobalVariable24hasDefinitiveInitializerEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef zeroext i1 @_ZNK4llvm11GlobalValue14isInterposableEb(ptr noundef nonnull align 8 dereferenceable(89) %i.b, i1 noundef zeroext true) #27
  br i1 %i.h, label %_ZNK4llvm14GlobalVariable24hasDefinitiveInitializerEv.exit.thread, label %_ZNK4llvm14GlobalVariable24hasDefinitiveInitializerEv.exit

_ZNK4llvm14GlobalVariable24hasDefinitiveInitializerEv.exit: ; preds = %bb.d
  %i.i = load i8, ptr %i.d, align 8
  %i.j = and i8 %i.i, 2
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %bb.e, label %_ZNK4llvm14GlobalVariable24hasDefinitiveInitializerEv.exit.thread

bb.e:                                             ; preds = %_ZNK4llvm14GlobalVariable24hasDefinitiveInitializerEv.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm11GlobalValue13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29
  %i.n = tail call noundef i32 @_ZNK4llvm10DataLayout22getIndexTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.k, ptr noundef %i.m) #27 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 %i.n, ptr %i.o, align 8, !tbaa !37
  %i.p = icmp ult i32 %i.n, 65
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %4, align 8, !tbaa !39
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.g:                                             ; preds = %bb.e
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %4, i64 noundef 0, i1 noundef zeroext false) #27
  br label %_ZN4llvm5APIntC2Ejmbb.exit

_ZN4llvm5APIntC2Ejmbb.exit:                       ; preds = %bb.f, %bb.g
  store ptr null, ptr %5, align 8, !tbaa !295
  %i.q = call noundef ptr @_ZNK4llvm5Value33stripAndAccumulateConstantOffsetsERKNS_10DataLayoutERNS_5APIntEbbNS_12function_refIFbRS0_S5_EEEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(912) %i.k, ptr noundef nonnull align 8 dereferenceable(12) %4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull byval(%"class.llvm::function_ref.172") align 8 %5, i1 noundef zeroext false) #27
  %.not67 = icmp eq ptr %i.b, %i.q
  br i1 %.not67, label %bb.h, label %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread

bb.h:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit
  %i.r = load i32, ptr %i.o, align 8, !tbaa !37   ; 2 uses
  %i.s = icmp ult i32 %i.r, 65                    ; 2 uses
  br i1 %i.s, label %_ZNK4llvm5APInt15getLimitedValueEm.exit, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.h
  %i.t = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %4) #29
  %i.u = sub i32 %i.r, %i.t
  %i.v = icmp ugt i32 %i.u, 64
  br i1 %i.v, label %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread, label %_ZNK4llvm5APInt15getLimitedValueEm.exit

_ZNK4llvm5APInt15getLimitedValueEm.exit:          ; preds = %bb.h, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i
  %i.w = load ptr, ptr %4, align 8
  %spec.select.i.i.i = select i1 %i.s, ptr %4, ptr %i.w
  %.0.i.i.i = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !39 ; 3 uses
  %i.x = icmp eq i64 %.0.i.i.i, -1
  br i1 %i.x, label %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm5APInt15getLimitedValueEm.exit
  %i.y = zext nneg i32 %i.a to i64                ; 3 uses
  %i.z = urem i64 %.0.i.i.i, %i.y
  %i.aa = udiv exact i64 %.0.i.i.i, %i.y
  %.not68 = icmp eq i64 %i.z, 0
  br i1 %.not68, label %bb.j, label %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ab = add i64 %i.aa, %3                       ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.b, i64 -32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !50 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = icmp slt i8 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !236
  %i.aj = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.k, ptr noundef %i.ai)
  %.fca.0.extract.i.i = extractvalue { i64, i8 } %i.aj, 0
  %i.ak = add i64 %.fca.0.extract.i.i, 7
  %i.al = lshr i64 %i.ak, 3
  %i.am = udiv i64 %i.al, %i.y
  %i.an = call i64 @llvm.usub.sat.i64(i64 %i.am, i64 %i.ab)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !298
  br label %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr %i.ad, align 8, !tbaa !40
  %.not87 = icmp eq i8 %i.ap, 3
  br i1 %.not87, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aq = call noundef ptr @_ZNK4llvm22ConstantDataSequential14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ad) #27
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 8            ; 2 uses
  %i.at = and i32 %i.as, 255
  %i.au = icmp eq i32 %i.at, 12
  %i.av = lshr i32 %i.as, 8
  %i.aw = icmp eq i32 %i.av, %2
  %i.ax = and i1 %i.au, %i.aw
  br i1 %i.ax, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.not71 = icmp eq i32 %2, 8
  br i1 %.not71, label %bb.o, label %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ay = call noundef ptr @_ZN4llvm23ReadByteArrayFromGlobalEPKNS_14GlobalVariableEm(ptr noundef nonnull %i.b, i64 noundef %i.ab) #27 ; 4 uses
  %.not72 = icmp eq ptr %i.ay, null
  br i1 %.not72, label %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread, label %.thread79

.thread79:                                        ; preds = %bb.o
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !40
  %i.ba = icmp eq i8 %i.az, 3
  %spec.select.i.i74 = select i1 %i.ba, ptr %i.ay, ptr null
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !29
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !300
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !29
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !300 ; 2 uses
  %.not88 = icmp ugt i64 %i.ab, %i.bi
  br i1 %.not88, label %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread, label %bb.q

bb.q:                                             ; preds = %.thread79, %bb.p
  %i.bj = phi i64 [ %i.be, %.thread79 ], [ %i.bi, %bb.p ]
  %.05584 = phi i64 [ 0, %.thread79 ], [ %i.ab, %bb.p ] ; 2 uses
  %.26183 = phi ptr [ %spec.select.i.i74, %.thread79 ], [ %i.ad, %bb.p ]
  store ptr %.26183, ptr %1, align 8, !tbaa !301
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.05584, ptr %i.bk, align 8, !tbaa !302
  %i.bl = sub nuw i64 %i.bj, %.05584
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !298
  br label %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread

_ZNK4llvm5APInt15getLimitedValueEm.exit.thread:   ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i, %_ZNK4llvm5APInt15getLimitedValueEm.exit, %bb.i, %bb.n, %bb.o, %bb.p, %bb.q, %bb.k, %_ZN4llvm5APIntC2Ejmbb.exit
  %.4 = phi i1 [ false, %_ZN4llvm5APIntC2Ejmbb.exit ], [ false, %bb.i ], [ false, %_ZNK4llvm5APInt15getLimitedValueEm.exit ], [ true, %bb.k ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.p ], [ true, %bb.q ], [ false, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i ]
  %i.bn = load i32, ptr %i.o, align 8, !tbaa !37
  %i.bo = icmp ugt i32 %i.bn, 64
  br i1 %i.bo, label %bb.r, label %_ZN4llvm5APIntD2Ev.exit

bb.r:                                             ; preds = %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread
  %i.bp = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_ZN4llvm5APIntD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #28
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZNK4llvm14GlobalVariable24hasDefinitiveInitializerEv.exit.thread

_ZNK4llvm14GlobalVariable24hasDefinitiveInitializerEv.exit.thread: ; preds = %bb.c, %bb.d, %bb.a, %bb.b, %_ZNK4llvm14GlobalVariable24hasDefinitiveInitializerEv.exit, %_ZN4llvm5APIntD2Ev.exit
  %.5 = phi i1 [ %.4, %_ZN4llvm5APIntD2Ev.exit ], [ false, %_ZNK4llvm14GlobalVariable24hasDefinitiveInitializerEv.exit ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.c ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm19getUnderlyingObjectEPKNS_5ValueEj(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = add i32 %1, -1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread108
  %.045157 = phi i32 [ 0, %bb.a ], [ %i.bl, %.thread108 ]
  %.054155 = phi ptr [ %0, %bb.a ], [ %.10112, %.thread108 ] ; 26 uses
  %i.b = load i8, ptr %.054155, align 8, !tbaa !40 ; 6 uses
  %i.c = icmp ugt i8 %i.b, 29                     ; 2 uses
  br i1 %i.c, label %.split.i.i, label %bb.c

.split.i.i:                                       ; preds = %bb.b
  switch i8 %i.b, label %bb.d [
    i8 65, label %_ZN4llvm8dyn_castINS_11GEPOperatorEKNS_5ValueEEEDcPT0_.exit
    i8 81, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  switch i8 %i.b, label %.thread120 [
    i8 19, label %_ZN4llvm14CastIsPossibleINS_11GEPOperatorEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i
    i8 15, label %bb.h
  ]

_ZN4llvm14CastIsPossibleINS_11GEPOperatorEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.054155, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !200  ; 2 uses
  switch i16 %i.e, label %.thread92 [
    i16 35, label %_ZN4llvm8dyn_castINS_11GEPOperatorEKNS_5ValueEEEDcPT0_.exit
    i16 51, label %bb.e
  ]

_ZN4llvm8dyn_castINS_11GEPOperatorEKNS_5ValueEEEDcPT0_.exit: ; preds = %_ZN4llvm14CastIsPossibleINS_11GEPOperatorEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i, %.split.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.054155, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 268435455
  %i.i = zext nneg i32 %i.h to i64
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds [32 x i8], ptr %.054155, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = and i32 %i.p, 255
  %i.r = icmp eq i32 %i.q, 15
  br i1 %i.r, label %.thread108, label %.thread120

bb.d:                                             ; preds = %.split.i.i
  %i.s = zext i8 %i.b to i32
  %i.t = add nsw i32 %i.s, -30
  br label %_ZN4llvm8Operator9getOpcodeEPKNS_5ValueE.exit80

.thread92:                                        ; preds = %_ZN4llvm14CastIsPossibleINS_11GEPOperatorEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i
  %i.u = zext i16 %i.e to i32
  br label %_ZN4llvm8Operator9getOpcodeEPKNS_5ValueE.exit80

_ZN4llvm8Operator9getOpcodeEPKNS_5ValueE.exit80:  ; preds = %bb.d, %.thread92
  %.2.i79 = phi i32 [ %i.t, %bb.d ], [ %i.u, %.thread92 ]
  %i.v = icmp eq i32 %.2.i79, 52
  br i1 %i.v, label %bb.e, label %_ZN4llvm8Operator9getOpcodeEPKNS_5ValueE.exit80.thread

bb.e:                                             ; preds = %_ZN4llvm14CastIsPossibleINS_11GEPOperatorEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i, %.split.i.i, %_ZN4llvm8Operator9getOpcodeEPKNS_5ValueE.exit80
  %i.w = getelementptr inbounds nuw i8, ptr %.054155, i64 4
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %i.y = and i32 %i.x, 1073741824
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds i8, ptr %.054155, i64 -8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !132
  br label %_ZNK4llvm4User10getOperandEj.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = and i32 %i.x, 268435455
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [32 x i8], ptr %.054155, i64 %i.ad
  br label %_ZNK4llvm4User10getOperandEj.exit

_ZNK4llvm4User10getOperandEj.exit:                ; preds = %bb.f, %bb.g
  %i.af = phi ptr [ %i.aa, %bb.f ], [ %i.ae, %bb.g ]
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !50 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = and i32 %i.ak, 255
  %i.am = icmp eq i32 %i.al, 15
  br i1 %i.am, label %.thread108, label %.thread120

_ZN4llvm8Operator9getOpcodeEPKNS_5ValueE.exit80.thread: ; preds = %_ZN4llvm8Operator9getOpcodeEPKNS_5ValueE.exit80
  %cond = icmp eq i8 %i.b, 87
end_hunk_0
begin_hunk_1_@_ZL28computeKnownBitsFromOperatorPKN4llvm8OperatorERKNS_5APIntERNS_9KnownBitsERKNS_13SimplifyQueryEj:bb.a
  %i.vq = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store i32 %i.vp, ptr %i.vq, align 8, !tbaa !37, !alias.scope !1351
  %i.vr = icmp ult i32 %i.vp, 65
  br i1 %i.vr, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  store i64 0, ptr %29, align 8, !tbaa !39, !alias.scope !1351
  br label %_ZN4llvm5APInt7getZeroEj.exit

bb.eg:                                            ; preds = %bb.ee
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %29, i64 noundef 0, i1 noundef zeroext false) #27
  br label %_ZN4llvm5APInt7getZeroEj.exit

_ZN4llvm5APInt7getZeroEj.exit:                    ; preds = %bb.ef, %bb.eg
  call void @_ZN4llvm9KnownBits12makeConstantERKNS_5APIntE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %28, ptr noundef nonnull align 8 dereferenceable(12) %29)
  call void @_ZNK4llvm9KnownBits13intersectWithERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %27, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %28)
  %i.vs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %27) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %27) #27
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %28) #27
  %i.vt = load i32, ptr %i.vq, align 8, !tbaa !37
  %i.vu = icmp ugt i32 %i.vt, 64
  br i1 %i.vu, label %bb.eh, label %_ZN4llvm5APIntD2Ev.exit786

bb.eh:                                            ; preds = %_ZN4llvm5APInt7getZeroEj.exit
  %i.vv = load ptr, ptr %29, align 8, !tbaa !39   ; 2 uses
  %i.vw = icmp eq ptr %i.vv, null
  br i1 %i.vw, label %_ZN4llvm5APIntD2Ev.exit786, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void @_ZdaPv(ptr noundef nonnull %i.vv) #28
  br label %_ZN4llvm5APIntD2Ev.exit786

_ZN4llvm5APIntD2Ev.exit786:                       ; preds = %_ZN4llvm5APInt7getZeroEj.exit, %bb.eh, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %bb.ej

bb.ej:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit786, %bb.ed
  %i.vx = load i32, ptr %i.k, align 8, !tbaa !37  ; 2 uses
  %i.vy = add i32 %i.vx, -1                       ; 2 uses
  %i.vz = and i32 %i.vy, 63
  %i.wa = zext nneg i32 %i.vz to i64
  %i.wb = shl nuw i64 1, %i.wa
  %i.wc = xor i64 %i.wb, -1                       ; 2 uses
  %i.wd = icmp ult i32 %i.vx, 65
  br i1 %i.wd, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.we = load i64, ptr %2, align 8, !tbaa !39
  %i.wf = and i64 %i.we, %i.wc
  store i64 %i.wf, ptr %2, align 8, !tbaa !39
  br label %_ZN4llvm5APInt12clearSignBitEv.exit

bb.el:                                            ; preds = %bb.ej
  %i.wg = load ptr, ptr %2, align 8, !tbaa !39
  %i.wh = lshr i32 %i.vy, 6
  %i.wi = zext nneg i32 %i.wh to i64
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.wi ; 2 uses
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !42
  %i.wl = and i64 %i.wk, %i.wc
  store i64 %i.wl, ptr %i.wj, align 8, !tbaa !42
  br label %_ZN4llvm5APInt12clearSignBitEv.exit

_ZN4llvm5APInt12clearSignBitEv.exit:              ; preds = %bb.ek, %bb.el
  %i.wm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.wo = load i32, ptr %i.wn, align 8, !tbaa !37 ; 2 uses
  %i.wp = add i32 %i.wo, -1                       ; 2 uses
  %i.wq = and i32 %i.wp, 63
  %i.wr = zext nneg i32 %i.wq to i64
  %i.ws = shl nuw i64 1, %i.wr
  %i.wt = xor i64 %i.ws, -1                       ; 2 uses
  %i.wu = icmp ult i32 %i.wo, 65
  br i1 %i.wu, label %bb.em, label %bb.en

bb.em:                                            ; preds = %_ZN4llvm5APInt12clearSignBitEv.exit
  %i.wv = load i64, ptr %i.wm, align 8, !tbaa !39
  %i.ww = and i64 %i.wv, %i.wt
  store i64 %i.ww, ptr %i.wm, align 8, !tbaa !39
  br label %_ZN4llvm5APInt12clearSignBitEv.exit787

bb.en:                                            ; preds = %_ZN4llvm5APInt12clearSignBitEv.exit
  %i.wx = load ptr, ptr %i.wm, align 8, !tbaa !39
  %i.wy = lshr i32 %i.wp, 6
  %i.wz = zext nneg i32 %i.wy to i64
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.wx, i64 %i.wz ; 2 uses
  %i.xb = load i64, ptr %i.xa, align 8, !tbaa !42
  %i.xc = and i64 %i.xb, %i.wt
  store i64 %i.xc, ptr %i.xa, align 8, !tbaa !42
  br label %_ZN4llvm5APInt12clearSignBitEv.exit787

_ZN4llvm5APInt12clearSignBitEv.exit787:           ; preds = %bb.en, %bb.em, %bb.dy
  %i.xd = and i64 %i.vc, 1099511627776
  %.not1639 = icmp eq i64 %i.xd, 0
  br i1 %.not1639, label %.critedge702, label %bb.eo

bb.eo:                                            ; preds = %_ZN4llvm5APInt12clearSignBitEv.exit787
  %i.xe = and i64 %i.vc, 4294967296
  %.not1641 = icmp eq i64 %i.xe, 0
  br i1 %.not1641, label %bb.es, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.xf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.xh = load i32, ptr %i.xg, align 8, !tbaa !37 ; 2 uses
  %i.xi = add i32 %i.xh, -1                       ; 2 uses
  %i.xj = and i32 %i.xi, 63
  %i.xk = zext nneg i32 %i.xj to i64
  %i.xl = shl nuw i64 1, %i.xk                    ; 2 uses
  %i.xm = icmp ult i32 %i.xh, 65
  br i1 %i.xm, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.xn = load i64, ptr %i.xf, align 8, !tbaa !39
  %i.xo = or i64 %i.xn, %i.xl
  store i64 %i.xo, ptr %i.xf, align 8, !tbaa !39
  br label %.critedge702

bb.er:                                            ; preds = %bb.ep
  %i.xp = load ptr, ptr %i.xf, align 8, !tbaa !39
  %i.xq = lshr i32 %i.xi, 6
  %i.xr = zext nneg i32 %i.xq to i64
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.xp, i64 %i.xr ; 2 uses
  %i.xt = load i64, ptr %i.xs, align 8, !tbaa !42
  %i.xu = or i64 %i.xt, %i.xl
  store i64 %i.xu, ptr %i.xs, align 8, !tbaa !42
  br label %.critedge702

bb.es:                                            ; preds = %bb.eo
  %i.xv = load i32, ptr %i.k, align 8, !tbaa !37  ; 2 uses
  %i.xw = add i32 %i.xv, -1                       ; 2 uses
  %i.xx = and i32 %i.xw, 63
  %i.xy = zext nneg i32 %i.xx to i64
  %i.xz = shl nuw i64 1, %i.xy                    ; 2 uses
  %i.ya = icmp ult i32 %i.xv, 65
  br i1 %i.ya, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.yb = load i64, ptr %2, align 8, !tbaa !39
  %i.yc = or i64 %i.yb, %i.xz
  store i64 %i.yc, ptr %2, align 8, !tbaa !39
  br label %.critedge702

bb.eu:                                            ; preds = %bb.es
  %i.yd = load ptr, ptr %2, align 8, !tbaa !39
  %i.ye = lshr i32 %i.xw, 6
  %i.yf = zext nneg i32 %i.ye to i64
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %i.yd, i64 %i.yf ; 2 uses
  %i.yh = load i64, ptr %i.yg, align 8, !tbaa !42
  %i.yi = or i64 %i.yh, %i.xz
  store i64 %i.yi, ptr %i.yg, align 8, !tbaa !42
  br label %.critedge702

.critedge:                                        ; preds = %bb.dv, %bb.dt, %bb.ds, %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit
  %i.yj = and i32 %i.tg, 255
  %.not1879 = icmp eq i32 %i.yj, 18
  br i1 %.not1879, label %bb.ev, label %.critedge702

bb.ev:                                            ; preds = %.critedge
  %i.yk = getelementptr inbounds nuw i8, ptr %i.te, i64 24
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !340
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  %i.yn = load i32, ptr %i.ym, align 8
  %i.yo = and i32 %i.yn, 255
  %i.yp = icmp eq i32 %i.yo, 12
  br i1 %i.yp, label %bb.ew, label %.critedge702

bb.ew:                                            ; preds = %bb.ev
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !29 ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 8
  %i.yt = load i32, ptr %i.ys, align 8            ; 3 uses
  %i.yu = and i32 %i.yt, 254
  %spec.select.i.i.i790 = icmp eq i32 %i.yu, 18
  br i1 %spec.select.i.i.i790, label %bb.ex, label %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit

bb.ex:                                            ; preds = %bb.ew
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yr, i64 16
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !172
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !173
  %.phi.trans.insert.i792 = getelementptr inbounds nuw i8, ptr %i.yx, i64 8
  %.pre.i793 = load i32, ptr %.phi.trans.insert.i792, align 8
  br label %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit

_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit:        ; preds = %bb.ew, %bb.ex
  %i.yy = phi i32 [ %.pre.i793, %bb.ex ], [ %i.yt, %bb.ew ]
  %i.yz = and i32 %i.yy, 255
  %i.za = icmp ne i32 %i.yz, 12
  %i.zb = and i32 %i.yt, 255
  %i.zc = icmp eq i32 %i.zb, 19
  %or.cond1608 = or i1 %i.zc, %i.za
  br i1 %or.cond1608, label %.critedge702, label %bb.ey

bb.ey:                                            ; preds = %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ze = load i32, ptr %i.zd, align 8, !tbaa !37 ; 9 uses
  %i.zf = load ptr, ptr %3, align 8, !tbaa !60, !nonnull !21, !align !61
  %i.zg = load i8, ptr %i.zf, align 8, !tbaa !1380, !range !20, !noundef !21
  %i.zh = trunc nuw i8 %i.zg to i1                ; 2 uses
  %i.zi = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.te) #29 ; 7 uses
  %i.zj = load i32, ptr %i.a, align 4, !tbaa !102 ; 4 uses
  %i.zk = urem i32 %i.zj, %i.zi
  %i.zl = udiv exact i32 %i.zj, %i.zi             ; 5 uses
  %i.zm = icmp eq i32 %i.zk, 0
  br i1 %i.zm, label %bb.ez, label %bb.fm

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #27
  %i.zn = mul i32 %i.zl, %i.ze                    ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  store i32 %i.zn, ptr %i.zo, align 8, !tbaa !37, !alias.scope !1381
  %i.zp = icmp ult i32 %i.zn, 65
  br i1 %i.zp, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  store i64 0, ptr %30, align 8, !tbaa !39, !alias.scope !1381
  br label %_ZN4llvm5APInt7getZeroEj.exit794

bb.fb:                                            ; preds = %bb.ez
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %30, i64 noundef 0, i1 noundef zeroext false) #27
  br label %_ZN4llvm5APInt7getZeroEj.exit794

_ZN4llvm5APInt7getZeroEj.exit794:                 ; preds = %bb.fa, %bb.fb
  %.not6761672 = icmp eq i32 %i.ze, 0
  br i1 %.not6761672, label %._crit_edge, label %.lr.ph1674

.lr.ph1674:                                       ; preds = %_ZN4llvm5APInt7getZeroEj.exit794
  %i.zq = load i32, ptr %i.zd, align 8, !tbaa !37
  %i.zr = icmp ult i32 %i.zq, 65                  ; 2 uses
  %i.zs = load i32, ptr %i.zo, align 8
  %.fr1686 = freeze i32 %i.zs
  %i.zt = icmp ult i32 %.fr1686, 65
  br i1 %i.zt, label %.lr.ph1674.split.us, label %.lr.ph1674.split

.lr.ph1674.split.us:                              ; preds = %.lr.ph1674
  %i.zu = load ptr, ptr %1, align 8
  %.promoted = load i64, ptr %30, align 8
  br label %bb.fc

bb.fc:                                            ; preds = %_ZN4llvm5APInt6setBitEj.exit.us, %.lr.ph1674.split.us
  %i.zv = phi i64 [ %.promoted, %.lr.ph1674.split.us ], [ %i.aaj, %_ZN4llvm5APInt6setBitEj.exit.us ] ; 2 uses
  %.06401673.us = phi i32 [ 0, %.lr.ph1674.split.us ], [ %i.aak, %_ZN4llvm5APInt6setBitEj.exit.us ] ; 4 uses
  %i.zw = and i32 %.06401673.us, 63
  %i.zx = zext nneg i32 %i.zw to i64
  %i.zy = shl nuw i64 1, %i.zx
  %i.zz = lshr i32 %.06401673.us, 6
  %i.aaa = zext nneg i32 %i.zz to i64
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.zu, i64 %i.aaa
  %.in.i.i.us = select i1 %i.zr, ptr %1, ptr %i.aab
  %i.aac = load i64, ptr %.in.i.i.us, align 8, !tbaa !39
  %i.aad = and i64 %i.zy, %i.aac
  %.not1644.us = icmp eq i64 %i.aad, 0
  br i1 %.not1644.us, label %_ZN4llvm5APInt6setBitEj.exit.us, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.aae = mul i32 %.06401673.us, %i.zl
  %i.aaf = and i32 %i.aae, 63
  %i.aag = zext nneg i32 %i.aaf to i64
  %i.aah = shl nuw i64 1, %i.aag
  %i.aai = or i64 %i.aah, %i.zv                   ; 2 uses
  store i64 %i.aai, ptr %30, align 8, !tbaa !39
  br label %_ZN4llvm5APInt6setBitEj.exit.us

_ZN4llvm5APInt6setBitEj.exit.us:                  ; preds = %bb.fd, %bb.fc
  %i.aaj = phi i64 [ %i.aai, %bb.fd ], [ %i.zv, %bb.fc ]
  %i.aak = add nuw i32 %.06401673.us, 1           ; 2 uses
  %.not676.us = icmp eq i32 %i.aak, %i.ze
  br i1 %.not676.us, label %._crit_edge, label %bb.fc, !llvm.loop !1324

._crit_edge:                                      ; preds = %_ZN4llvm5APInt6setBitEj.exit, %_ZN4llvm5APInt6setBitEj.exit.us, %_ZN4llvm5APInt7getZeroEj.exit794
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #27
  call void @_ZN4llvm9KnownBitsC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %31, i32 noundef %i.zi)
  %.not6771676 = icmp eq i32 %i.zj, 0
  br i1 %.not6771676, label %._crit_edge1680, label %.lr.ph1679

.lr.ph1679:                                       ; preds = %._crit_edge
  %i.aal = getelementptr inbounds i8, ptr %0, i64 -8
  %i.aam = add i32 %4, 1
  %i.aan = getelementptr inbounds nuw i8, ptr %32, i64 8
  br label %bb.fh

.lr.ph1674.split:                                 ; preds = %.lr.ph1674, %_ZN4llvm5APInt6setBitEj.exit
  %.06401673 = phi i32 [ %i.abh, %_ZN4llvm5APInt6setBitEj.exit ], [ 0, %.lr.ph1674 ] ; 4 uses
  %i.aao = and i32 %.06401673, 63
  %i.aap = zext nneg i32 %i.aao to i64
  %i.aaq = shl nuw i64 1, %i.aap
  %i.aar = load ptr, ptr %1, align 8
  %i.aas = lshr i32 %.06401673, 6
  %i.aat = zext nneg i32 %i.aas to i64
  %i.aau = getelementptr inbounds nuw [8 x i8], ptr %i.aar, i64 %i.aat
  %.in.i.i = select i1 %i.zr, ptr %1, ptr %i.aau
  %i.aav = load i64, ptr %.in.i.i, align 8, !tbaa !39
  %i.aaw = and i64 %i.aaq, %i.aav
  %.not1644 = icmp eq i64 %i.aaw, 0
  br i1 %.not1644, label %_ZN4llvm5APInt6setBitEj.exit, label %bb.fe

bb.fe:                                            ; preds = %.lr.ph1674.split
  %i.aax = mul i32 %.06401673, %i.zl              ; 2 uses
  %i.aay = and i32 %i.aax, 63
  %i.aaz = zext nneg i32 %i.aay to i64
  %i.aba = shl nuw i64 1, %i.aaz
  %i.abb = load ptr, ptr %30, align 8, !tbaa !39
  %i.abc = lshr i32 %i.aax, 6
  %i.abd = zext nneg i32 %i.abc to i64
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %i.abb, i64 %i.abd ; 2 uses
  %i.abf = load i64, ptr %i.abe, align 8, !tbaa !42
  %i.abg = or i64 %i.abf, %i.aba
  store i64 %i.abg, ptr %i.abe, align 8, !tbaa !42
  br label %_ZN4llvm5APInt6setBitEj.exit

_ZN4llvm5APInt6setBitEj.exit:                     ; preds = %bb.fe, %.lr.ph1674.split
  %i.abh = add nuw i32 %.06401673, 1              ; 2 uses
  %.not676 = icmp eq i32 %i.abh, %i.ze
  br i1 %.not676, label %._crit_edge, label %.lr.ph1674.split, !llvm.loop !1324

._crit_edge1680:                                  ; preds = %_ZN4llvm5APIntD2Ev.exit798, %._crit_edge
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %31) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  %i.abi = load i32, ptr %i.zo, align 8, !tbaa !37
  %i.abj = icmp ugt i32 %i.abi, 64
  br i1 %i.abj, label %bb.ff, label %_ZN4llvm5APIntD2Ev.exit795

bb.ff:                                            ; preds = %._crit_edge1680
  %i.abk = load ptr, ptr %30, align 8, !tbaa !39  ; 2 uses
  %i.abl = icmp eq ptr %i.abk, null
  br i1 %i.abl, label %_ZN4llvm5APIntD2Ev.exit795, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @_ZdaPv(ptr noundef nonnull %i.abk) #28
  br label %_ZN4llvm5APIntD2Ev.exit795

_ZN4llvm5APIntD2Ev.exit795:                       ; preds = %._crit_edge1680, %bb.ff, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  %.pre1693 = load i32, ptr %i.a, align 4, !tbaa !102
  br label %bb.fm

bb.fh:                                            ; preds = %.lr.ph1679, %_ZN4llvm5APIntD2Ev.exit798
  %.06411677 = phi i32 [ 0, %.lr.ph1679 ], [ %i.acd, %_ZN4llvm5APIntD2Ev.exit798 ] ; 4 uses
  %i.abm = load i32, ptr %i.ss, align 4           ; 2 uses
  %i.abn = and i32 %i.abm, 1073741824
  %.not.i.i796 = icmp eq i32 %i.abn, 0
  br i1 %.not.i.i796, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.abo = load ptr, ptr %i.aal, align 8, !tbaa !132
  br label %_ZNK4llvm4User10getOperandEj.exit797

bb.fj:                                            ; preds = %bb.fh
  %i.abp = and i32 %i.abm, 268435455
  %i.abq = zext nneg i32 %i.abp to i64
  %i.abr = sub nsw i64 0, %i.abq
  %i.abs = getelementptr inbounds [32 x i8], ptr %0, i64 %i.abr
  br label %_ZNK4llvm4User10getOperandEj.exit797

_ZNK4llvm4User10getOperandEj.exit797:             ; preds = %bb.fi, %bb.fj
  %i.abt = phi ptr [ %i.abo, %bb.fi ], [ %i.abs, %bb.fj ]
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #27
  call void @_ZNK4llvm5APInt3shlEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %32, ptr noundef nonnull align 8 dereferenceable(12) %30, i32 noundef %.06411677)
  call fastcc void @_ZL16computeKnownBitsPKN4llvm5ValueERKNS_5APIntERNS_9KnownBitsERKNS_13SimplifyQueryEj(ptr noundef %i.abu, ptr noundef nonnull align 8 dereferenceable(12) %32, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 noundef %i.aam)
  %i.abv = load i32, ptr %i.aan, align 8, !tbaa !37
  %i.abw = icmp ugt i32 %i.abv, 64
  br i1 %i.abw, label %bb.fk, label %_ZN4llvm5APIntD2Ev.exit798

bb.fk:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit797
  %i.abx = load ptr, ptr %32, align 8, !tbaa !39  ; 2 uses
  %i.aby = icmp eq ptr %i.abx, null
  br i1 %i.aby, label %_ZN4llvm5APIntD2Ev.exit798, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @_ZdaPv(ptr noundef nonnull %i.abx) #28
  br label %_ZN4llvm5APIntD2Ev.exit798

_ZN4llvm5APIntD2Ev.exit798:                       ; preds = %_ZNK4llvm4User10getOperandEj.exit797, %bb.fk, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  %i.abz = xor i32 %.06411677, -1
  %i.aca = add i32 %i.zl, %i.abz
  %i.acb = select i1 %i.zh, i32 %i.aca, i32 %.06411677
  %i.acc = mul i32 %i.acb, %i.zi
  call void @_ZN4llvm9KnownBits10insertBitsERKS0_j(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %31, i32 noundef %i.acc)
  %i.acd = add i32 %.06411677, 1                  ; 2 uses
  %.not677 = icmp eq i32 %i.acd, %i.zl
  br i1 %.not677, label %._crit_edge1680, label %bb.fh, !llvm.loop !1325

bb.fm:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit795, %bb.ey
  %i.ace = phi i32 [ %.pre1693, %_ZN4llvm5APIntD2Ev.exit795 ], [ %i.zj, %bb.ey ] ; 2 uses
  %i.acf = urem i32 %i.zi, %i.ace
  %i.acg = udiv exact i32 %i.zi, %i.ace           ; 2 uses
  %i.ach = icmp eq i32 %i.acf, 0
  br i1 %i.ach, label %bb.fn, label %.critedge702

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #27
  call void @_ZN4llvm9KnownBitsC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %33, i32 noundef %i.zi)
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #27
  %i.aci = udiv i32 %i.ze, %i.acg
  call void @_ZN4llvm8APIntOps12ScaleBitMaskERKNS_5APIntEjb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %34, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %i.aci, i1 noundef zeroext false) #27
  %i.acj = load i32, ptr %i.ss, align 4           ; 2 uses
  %i.ack = and i32 %i.acj, 1073741824
  %.not.i.i799 = icmp eq i32 %i.ack, 0
  br i1 %.not.i.i799, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.acl = getelementptr inbounds i8, ptr %0, i64 -8
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !132
  br label %_ZNK4llvm4User10getOperandEj.exit800

bb.fp:                                            ; preds = %bb.fn
  %i.acn = and i32 %i.acj, 268435455
  %i.aco = zext nneg i32 %i.acn to i64
  %i.acp = sub nsw i64 0, %i.aco
  %i.acq = getelementptr inbounds [32 x i8], ptr %0, i64 %i.acp
  br label %_ZNK4llvm4User10getOperandEj.exit800

_ZNK4llvm4User10getOperandEj.exit800:             ; preds = %bb.fo, %bb.fp
  %i.acr = phi ptr [ %i.acm, %bb.fo ], [ %i.acq, %bb.fp ]
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !50
  %i.act = add i32 %4, 1
  call fastcc void @_ZL16computeKnownBitsPKN4llvm5ValueERKNS_5APIntERNS_9KnownBitsERKNS_13SimplifyQueryEj(ptr noundef %i.acs, ptr noundef nonnull align 8 dereferenceable(12) %34, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 noundef %i.act)
  call void @_ZN4llvm9KnownBits14setAllConflictEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.not6781681 = icmp eq i32 %i.ze, 0
  br i1 %.not6781681, label %._crit_edge1684, label %.lr.ph1683

.lr.ph1683:                                       ; preds = %_ZNK4llvm4User10getOperandEj.exit800, %.lr.ph1683.backedge
  %.06451682 = phi i32 [ %.06451682.be, %.lr.ph1683.backedge ], [ 0, %_ZNK4llvm4User10getOperandEj.exit800 ] ; 6 uses
  %i.acu = and i32 %.06451682, 63
  %i.acv = zext nneg i32 %i.acu to i64
  %i.acw = shl nuw i64 1, %i.acv
  %i.acx = load i32, ptr %i.zd, align 8, !tbaa !37
  %i.acy = icmp ult i32 %i.acx, 65
  %i.acz = load ptr, ptr %1, align 8
  %i.ada = lshr i32 %.06451682, 6
  %i.adb = zext nneg i32 %i.ada to i64
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr %i.acz, i64 %i.adb
  %.in.i.i801 = select i1 %i.acy, ptr %1, ptr %i.adc
  %i.add = load i64, ptr %.in.i.i801, align 8, !tbaa !39
  %i.ade = and i64 %i.add, %i.acw
  %.not1645 = icmp eq i64 %i.ade, 0
  br i1 %.not1645, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %.lr.ph1683
  %i.adf = xor i32 %.06451682, -1
  %i.adg = add i32 %i.ze, %i.adf
  %i.adh = select i1 %i.zh, i32 %i.adg, i32 %.06451682
  %i.adi = urem i32 %i.adh, %i.acg
  %i.adj = load i32, ptr %i.a, align 4, !tbaa !102 ; 2 uses
  %i.adk = mul i32 %i.adj, %i.adi
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #27
  call void @_ZNK4llvm9KnownBits11extractBitsEjj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %36, ptr noundef nonnull align 8 dereferenceable(32) %33, i32 noundef %i.adj, i32 noundef %i.adk)
  call void @_ZNK4llvm9KnownBits13intersectWithERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %35, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %36)
  %i.adl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %35) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %35) #27
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %36) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  %i.adm = call noundef zeroext i1 @_ZNK4llvm9KnownBits9isUnknownEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.adn = add i32 %.06451682, 1                  ; 2 uses
  %.not678 = icmp eq i32 %i.adn, %i.ze
  %or.cond = select i1 %i.adm, i1 true, i1 %.not678
  br i1 %or.cond, label %._crit_edge1684, label %.lr.ph1683.backedge

bb.fr:                                            ; preds = %.lr.ph1683
  %.old = add i32 %.06451682, 1                   ; 2 uses
  %.not678.old = icmp eq i32 %.old, %i.ze
  br i1 %.not678.old, label %._crit_edge1684, label %.lr.ph1683.backedge

.lr.ph1683.backedge:                              ; preds = %bb.fr, %bb.fq
  %.06451682.be = phi i32 [ %i.adn, %bb.fq ], [ %.old, %bb.fr ]
  br label %.lr.ph1683, !llvm.loop !1326

._crit_edge1684:                                  ; preds = %bb.fq, %bb.fr, %_ZNK4llvm4User10getOperandEj.exit800
  %i.ado = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.adp = load i32, ptr %i.ado, align 8, !tbaa !37
  %i.adq = icmp ugt i32 %i.adp, 64
  br i1 %i.adq, label %bb.fs, label %_ZN4llvm5APIntD2Ev.exit802

bb.fs:                                            ; preds = %._crit_edge1684
  %i.adr = load ptr, ptr %34, align 8, !tbaa !39  ; 2 uses
  %i.ads = icmp eq ptr %i.adr, null
  br i1 %i.ads, label %_ZN4llvm5APIntD2Ev.exit802, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  call void @_ZdaPv(ptr noundef nonnull %i.adr) #28
  br label %_ZN4llvm5APIntD2Ev.exit802

_ZN4llvm5APIntD2Ev.exit802:                       ; preds = %._crit_edge1684, %bb.fs, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %33) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  br label %.critedge702

bb.fu:                                            ; preds = %_ZN4llvm9KnownBitsC2Ej.exit
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.adu = load i32, ptr %i.adt, align 4          ; 2 uses
  %i.adv = and i32 %i.adu, 1073741824
  %.not.i.i803 = icmp eq i32 %i.adv, 0
  br i1 %.not.i.i803, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.adw = getelementptr inbounds i8, ptr %0, i64 -8
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !132
  br label %_ZNK4llvm4User10getOperandEj.exit804

bb.fw:                                            ; preds = %bb.fu
  %i.ady = and i32 %i.adu, 268435455
  %i.adz = zext nneg i32 %i.ady to i64
  %i.aea = sub nsw i64 0, %i.adz
  %i.aeb = getelementptr inbounds [32 x i8], ptr %0, i64 %i.aea
  br label %_ZNK4llvm4User10getOperandEj.exit804

_ZNK4llvm4User10getOperandEj.exit804:             ; preds = %bb.fv, %bb.fw
  %i.aec = phi ptr [ %i.adx, %bb.fv ], [ %i.aeb, %bb.fw ]
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !50
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 8
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !29
  %i.aeg = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aef) #29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.aeg) #27, !noalias !1382
  %i.aeh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %11, ptr noundef nonnull align 8 dereferenceable(12) %i.aeh, i32 noundef %i.aeg) #27, !noalias !1382
  %i.aei = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aej = load i32, ptr %i.aei, align 8, !tbaa !37, !noalias !1382
  %i.aek = load i64, ptr %10, align 8, !noalias !1382
  %i.ael = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aem = load i32, ptr %i.ael, align 8, !tbaa !37, !noalias !1382
  %i.aen = load i64, ptr %11, align 8, !noalias !1382
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.aeo = load i32, ptr %i.k, align 8, !tbaa !37
  %i.aep = icmp ult i32 %i.aeo, 65
  br i1 %i.aep, label %_ZN4llvm5APIntaSEOS0_.exit.i805, label %bb.fx

bb.fx:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit804
  %i.aeq = load ptr, ptr %2, align 8, !tbaa !39   ; 2 uses
  %i.aer = icmp eq ptr %i.aeq, null
  br i1 %i.aer, label %_ZN4llvm5APIntaSEOS0_.exit.i805, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  call void @_ZdaPv(ptr noundef nonnull %i.aeq) #28
  br label %_ZN4llvm5APIntaSEOS0_.exit.i805

_ZN4llvm5APIntaSEOS0_.exit.i805:                  ; preds = %bb.fy, %bb.fx, %_ZNK4llvm4User10getOperandEj.exit804
  store i64 %i.aek, ptr %2, align 8
  store i32 %i.aej, ptr %i.k, align 8, !tbaa !37
  %i.aes = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.aet = load i32, ptr %i.aes, align 8, !tbaa !37
  %i.aeu = icmp ult i32 %i.aet, 65
  br i1 %i.aeu, label %_ZN4llvm9KnownBitsD2Ev.exit808, label %bb.fz

bb.fz:                                            ; preds = %_ZN4llvm5APIntaSEOS0_.exit.i805
  %i.aev = load ptr, ptr %i.aeh, align 8, !tbaa !39 ; 2 uses
  %i.aew = icmp eq ptr %i.aev, null
  br i1 %i.aew, label %_ZN4llvm9KnownBitsD2Ev.exit808, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void @_ZdaPv(ptr noundef nonnull %i.aev) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit808

_ZN4llvm9KnownBitsD2Ev.exit808:                   ; preds = %_ZN4llvm5APIntaSEOS0_.exit.i805, %bb.fz, %bb.ga
  store i64 %i.aen, ptr %i.aeh, align 8
  store i32 %i.aem, ptr %i.aes, align 8, !tbaa !37
  %i.aex = load i32, ptr %i.adt, align 4          ; 2 uses
  %i.aey = and i32 %i.aex, 1073741824
  %.not.i.i809 = icmp eq i32 %i.aey, 0
  br i1 %.not.i.i809, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %_ZN4llvm9KnownBitsD2Ev.exit808
  %i.aez = getelementptr inbounds i8, ptr %0, i64 -8
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !132
  br label %_ZNK4llvm4User10getOperandEj.exit810

bb.gc:                                            ; preds = %_ZN4llvm9KnownBitsD2Ev.exit808
  %i.afb = and i32 %i.aex, 268435455
  %i.afc = zext nneg i32 %i.afb to i64
  %i.afd = sub nsw i64 0, %i.afc
  %i.afe = getelementptr inbounds [32 x i8], ptr %0, i64 %i.afd
  br label %_ZNK4llvm4User10getOperandEj.exit810

_ZNK4llvm4User10getOperandEj.exit810:             ; preds = %bb.gb, %bb.gc
  %i.aff = phi ptr [ %i.afa, %bb.gb ], [ %i.afe, %bb.gc ]
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !50
  %i.afh = add i32 %4, 1
  call fastcc void @_ZL16computeKnownBitsPKN4llvm5ValueERKNS_5APIntERNS_9KnownBitsERKNS_13SimplifyQueryEj(ptr noundef %i.afg, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(59) %3, i32 noundef %i.afh)
  %i.afi = load i32, ptr %i.a, align 4, !tbaa !102 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
end_hunk_1
