Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMSelectionDAGInfo?download=true
inline.NumInlined: 787
inline.NumDeleted: 456
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4llvm19ARMSelectionDAGInfo23EmitTargetCodeForMemcpyERNS_12SelectionDAGERKNS_5SDLocENS_7SDValueES6_S6_S6_NS_5AlignES7_bbNS_18MachinePointerInfoES8_:bb.a
  %14 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 7 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %18 = alloca [6 x %"class.llvm::SDValue"], align 16 ; 18 uses
  %19 = alloca [6 x %"class.llvm::SDValue"], align 16 ; 16 uses
  %20 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %21 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %24 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %26 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 6 uses
  %27 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %28 = alloca %"class.llvm::ArrayRef.248", align 8 ; 3 uses
  %29 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %30 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %31 = alloca %"class.llvm::ArrayRef.248", align 8 ; 3 uses
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %9, i8 %8) ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !146, !nonnull !22, !align !29 ; 4 uses
  %i.e = load ptr, ptr %7, align 8, !tbaa !273    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !45
  switch i32 %i.g, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit [
    i32 37, label %bb.b
    i32 12, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 395
  %i.i = load i8, ptr %i.h, align 1, !tbaa !347, !range !21, !noundef !22
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %_ZL26shouldGenerateInlineTPLoopRKN4llvm12ARMSubtargetERKNS_12SelectionDAGEPNS_14ConstantSDNodeENS_5AlignEb.exit.thread

bb.c:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !456 ; 3 uses
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL23EnableMemtransferTPLoop, i64 120), align 8, !tbaa !457
  switch i32 %i.k, label %bb.d [
    i32 0, label %_ZL26shouldGenerateInlineTPLoopRKN4llvm12ARMSubtargetERKNS_12SelectionDAGEPNS_14ConstantSDNodeENS_5AlignEb.exit.thread
    i32 1, label %_ZL26shouldGenerateInlineTPLoopRKN4llvm12ARMSubtargetERKNS_12SelectionDAGEPNS_14ConstantSDNodeENS_5AlignEb.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %.val.val, i32 noundef 52) #19
  br i1 %i.l, label %_ZL26shouldGenerateInlineTPLoopRKN4llvm12ARMSubtargetERKNS_12SelectionDAGEPNS_14ConstantSDNodeENS_5AlignEb.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %.val.val, i32 noundef 51) #19
  br i1 %i.m, label %_ZL26shouldGenerateInlineTPLoopRKN4llvm12ARMSubtargetERKNS_12SelectionDAGEPNS_14ConstantSDNodeENS_5AlignEb.exit.thread, label %_ZNK4llvm8Function10hasOptSizeEv.exit.i

_ZNK4llvm8Function10hasOptSizeEv.exit.i:          ; preds = %bb.e
  %i.n = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %.val.val, i32 noundef 19) #19
  br i1 %i.n, label %_ZL26shouldGenerateInlineTPLoopRKN4llvm12ARMSubtargetERKNS_12SelectionDAGEPNS_14ConstantSDNodeENS_5AlignEb.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm8Function10hasOptSizeEv.exit.i
  %.not12.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not12.i, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.o = icmp ugt i8 %.sroa.speculated, 1
  br i1 %i.o, label %_ZL26shouldGenerateInlineTPLoopRKN4llvm12ARMSubtargetERKNS_12SelectionDAGEPNS_14ConstantSDNodeENS_5AlignEb.exit, label %_ZL26shouldGenerateInlineTPLoopRKN4llvm12ARMSubtargetERKNS_12SelectionDAGEPNS_14ConstantSDNodeENS_5AlignEb.exit.thread.thread

.critedge.i:                                      ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !464  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !466
  %i.u = icmp ult i32 %i.t, 65
  %i.v = load ptr, ptr %i.r, align 8
  %spec.select.i.i.i.i = select i1 %i.u, ptr %i.r, ptr %i.v
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !468
  %i.w = add i64 %.0.i.i.i.i, -65
  %or.cond.i = icmp ult i64 %i.w, 63
  br i1 %or.cond.i, label %_ZL26shouldGenerateInlineTPLoopRKN4llvm12ARMSubtargetERKNS_12SelectionDAGEPNS_14ConstantSDNodeENS_5AlignEb.exit, label %_ZL26shouldGenerateInlineTPLoopRKN4llvm12ARMSubtargetERKNS_12SelectionDAGEPNS_14ConstantSDNodeENS_5AlignEb.exit.thread

_ZL26shouldGenerateInlineTPLoopRKN4llvm12ARMSubtargetERKNS_12SelectionDAGEPNS_14ConstantSDNodeENS_5AlignEb.exit: ; preds = %bb.c, %.critedge.i, %bb.g
  store ptr %3, ptr %16, align 8, !tbaa !249
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %4, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !250
  %.sroa.2158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2158.0.copyload = load i32, ptr %.sroa.2158.0..sroa_idx, align 8, !tbaa !250
  %i.x = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr nonnull %i.e, i32 %.sroa.2158.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null) #19 ; 2 uses
  %.fca.0.extract153 = extractvalue { ptr, i32 } %i.x, 0
  %.fca.1.extract154 = extractvalue { ptr, i32 } %i.x, 1
  store ptr %.fca.0.extract153, ptr %17, align 8
  %.sroa.2156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.fca.1.extract154, ptr %.sroa.2156.0..sroa_idx, align 8
  %i.y = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 575, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17) #19 ; 2 uses
  %.fca.0.extract149 = extractvalue { ptr, i32 } %i.y, 0
  %.fca.1.extract150 = extractvalue { ptr, i32 } %i.y, 1
  br label %_ZL26shouldGenerateInlineTPLoopRKN4llvm12ARMSubtargetERKNS_12SelectionDAGEPNS_14ConstantSDNodeENS_5AlignEb.exit.thread.thread

_ZL26shouldGenerateInlineTPLoopRKN4llvm12ARMSubtargetERKNS_12SelectionDAGEPNS_14ConstantSDNodeENS_5AlignEb.exit.thread: ; preds = %.critedge.i, %bb.e, %bb.d, %_ZNK4llvm8Function10hasOptSizeEv.exit.i, %bb.c, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.z = icmp ult i8 %.sroa.speculated, 2
  br i1 %i.z, label %_ZL26shouldGenerateInlineTPLoopRKN4llvm12ARMSubtargetERKNS_12SelectionDAGEPNS_14ConstantSDNodeENS_5AlignEb.exit.thread.thread, label %bb.h

bb.h:                                             ; preds = %_ZL26shouldGenerateInlineTPLoopRKN4llvm12ARMSubtargetERKNS_12SelectionDAGEPNS_14ConstantSDNodeENS_5AlignEb.exit.thread
  %.not = icmp eq ptr %.0.i.i.i, null
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = zext nneg i8 %.sroa.speculated to i64
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = tail call { ptr, i32 } @_ZNK4llvm19ARMSelectionDAGInfo22EmitSpecializedLibcallERNS_12SelectionDAGERKNS_5SDLocENS_7SDValueES6_S6_S6_jNS_5RTLIB7LibcallE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %3, i32 %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, i32 noundef %i.ac, i16 noundef zeroext 834) ; 2 uses
  %.fca.0.extract141 = extractvalue { ptr, i32 } %i.ad, 0
  %.fca.1.extract142 = extractvalue { ptr, i32 } %i.ad, 1
  br label %_ZL26shouldGenerateInlineTPLoopRKN4llvm12ARMSubtargetERKNS_12SelectionDAGEPNS_14ConstantSDNodeENS_5AlignEb.exit.thread.thread

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !464 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !466
  %i.aj = icmp ult i32 %i.ai, 65
  %i.ak = load ptr, ptr %i.ag, align 8
  %spec.select.i.i.i = select i1 %i.aj, ptr %i.ag, ptr %i.ak
  %.0.i.i.i232 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !468 ; 3 uses
  %i.al = icmp ult i64 %.0.i.i.i232, 65
  %or.cond.not = select i1 %11, i1 true, i1 %i.al
  br i1 %or.cond.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = zext nneg i8 %.sroa.speculated to i64
  %i.an = shl nuw i64 1, %i.am
  %i.ao = trunc i64 %i.an to i32
  %i.ap = tail call { ptr, i32 } @_ZNK4llvm19ARMSelectionDAGInfo22EmitSpecializedLibcallERNS_12SelectionDAGERKNS_5SDLocENS_7SDValueES6_S6_S6_jNS_5RTLIB7LibcallE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %3, i32 %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, i32 noundef %i.ao, i16 noundef zeroext 834) ; 2 uses
  %.fca.0.extract131 = extractvalue { ptr, i32 } %i.ap, 0
  %.fca.1.extract132 = extractvalue { ptr, i32 } %i.ap, 1
  br label %_ZL26shouldGenerateInlineTPLoopRKN4llvm12ARMSubtargetERKNS_12SelectionDAGEPNS_14ConstantSDNodeENS_5AlignEb.exit.thread.thread

bb.l:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 461
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !469, !range !21, !noundef !22
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 410
  %i.at = load i8, ptr %i.as, align 2, !range !21
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  store ptr null, ptr %18, align 16, !tbaa !273
  %i.au = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 0, ptr %i.au, align 8, !tbaa !274
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr null, ptr %.ptr.1, align 16, !tbaa !273
  %i.av = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i32 0, ptr %i.av, align 8, !tbaa !274
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store ptr null, ptr %.ptr.2, align 16, !tbaa !273
  %i.aw = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i32 0, ptr %i.aw, align 8, !tbaa !274
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store ptr null, ptr %.ptr.3, align 16, !tbaa !273
  %i.ax = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i32 0, ptr %i.ax, align 8, !tbaa !274
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %18, i64 64
  store ptr null, ptr %.ptr.4, align 16, !tbaa !273
  %i.ay = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i32 0, ptr %i.ay, align 8, !tbaa !274
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %18, i64 80
  store ptr null, ptr %.ptr.5, align 16, !tbaa !273
  %i.az = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i32 0, ptr %i.az, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store ptr null, ptr %19, align 16, !tbaa !273
  %i.ba = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 0, ptr %i.ba, align 8, !tbaa !274
  %.ptr227.1 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr null, ptr %.ptr227.1, align 16, !tbaa !273
  %i.bb = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i32 0, ptr %i.bb, align 8, !tbaa !274
  %.ptr227.2 = getelementptr inbounds nuw i8, ptr %19, i64 32
  store ptr null, ptr %.ptr227.2, align 16, !tbaa !273
  %i.bc = getelementptr inbounds nuw i8, ptr %19, i64 40
  store i32 0, ptr %i.bc, align 8, !tbaa !274
  %.ptr227.3 = getelementptr inbounds nuw i8, ptr %19, i64 48
  store ptr null, ptr %.ptr227.3, align 16, !tbaa !273
  %i.bd = getelementptr inbounds nuw i8, ptr %19, i64 56
  store i32 0, ptr %i.bd, align 8, !tbaa !274
  %.ptr227.4 = getelementptr inbounds nuw i8, ptr %19, i64 64
  store ptr null, ptr %.ptr227.4, align 16, !tbaa !273
  %i.be = getelementptr inbounds nuw i8, ptr %19, i64 72
  store i32 0, ptr %i.be, align 8, !tbaa !274
  %.ptr227.5 = getelementptr inbounds nuw i8, ptr %19, i64 80
  store ptr null, ptr %.ptr227.5, align 16, !tbaa !273
  %i.bf = getelementptr inbounds nuw i8, ptr %19, i64 88
  store i32 0, ptr %i.bf, align 8, !tbaa !274
  %i.bg = trunc i64 %.0.i.i.i232 to i32
  %i.bh = and i32 %i.bg, 3                        ; 3 uses
  %i.bi = lshr i64 %.0.i.i.i232, 2
  %i.bj = trunc i64 %i.bi to i32                  ; 3 uses
  %i.bk = trunc nuw i8 %i.ar to i1
  %i.bl = trunc nuw i8 %i.at to i1
  %i.bm = xor i1 %i.bl, true
  %i.bn = select i1 %i.bk, i1 %i.bm, i1 false     ; 2 uses
  %i.bo = select i1 %i.bn, i32 4, i32 6
  %i.bp = add i32 %i.bj, -1
  %i.bq = add i32 %i.bp, %i.bo                    ; 2 uses
  %32 = lshr i32 %i.bq, 2
  %i.br = udiv i32 %i.bq, 6
  %33 = select i1 %i.bn, i32 %32, i32 %i.br       ; 6 uses
  %i.bs = icmp samesign ugt i32 %33, 1
  br i1 %i.bs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 552
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !470, !range !21, !noundef !22
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.an, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i16 1, ptr %20, align 8, !tbaa !471
  %i.bw = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr null, ptr %i.bw, align 8, !tbaa !473
  store i16 249, ptr %21, align 8, !tbaa !471
  %i.bx = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr null, ptr %i.bx, align 8, !tbaa !473
  %i.by = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 7, ptr null, i16 7, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %20, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %21) #19 ; 2 uses
  %i.bz = extractvalue { ptr, i32 } %i.by, 0      ; 2 uses
  %i.ca = extractvalue { ptr, i32 } %i.by, 1      ; 2 uses
  %.promoted = load i64, ptr %12, align 8         ; 7 uses
  %.promoted322 = load i64, ptr %13, align 8      ; 7 uses
  %.not229324 = icmp eq i32 %33, 0
  br i1 %.not229324, label %bb.u, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %.sroa.10.0..sroa_idx204 = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %.sroa.275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %.promoted334 = load i64, ptr %i.cb, align 8
  %.promoted335 = load i8, ptr %i.cc, align 4     ; 2 uses
  %.promoted336 = load i32, ptr %i.cd, align 8
  %.promoted337 = load i64, ptr %i.ce, align 8
  %.promoted339 = load i8, ptr %i.cf, align 4     ; 2 uses
  %.promoted340 = load i32, ptr %i.cg, align 8
  %i.ch = udiv i32 %i.bj, %33                     ; 3 uses
  store ptr %3, ptr %22, align 8, !tbaa !249
  store i32 %4, ptr %.sroa.10.0..sroa_idx204, align 8, !tbaa !250
  %i.ci = zext i32 %i.ch to i64
  %i.cj = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.ci, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #19 ; 2 uses
  %.fca.0.extract72.peel = extractvalue { ptr, i32 } %i.cj, 0
  %.fca.1.extract73.peel = extractvalue { ptr, i32 } %i.cj, 1
  store ptr %.fca.0.extract72.peel, ptr %23, align 8
  store i32 %.fca.1.extract73.peel, ptr %.sroa.275.0..sroa_idx, align 8
  %i.ck = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 574, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %i.bz, i32 %i.ca, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23) #19 ; 2 uses
  %.fca.0.extract68.peel = extractvalue { ptr, i32 } %i.ck, 0 ; 4 uses
  %.fca.1.extract69.peel = extractvalue { ptr, i32 } %i.ck, 1
  store ptr %.fca.0.extract68.peel, ptr %5, align 8, !tbaa !249
  store i32 %.fca.1.extract69.peel, ptr %.sroa.480.0..sroa_idx, align 8, !tbaa !250
  store ptr %.fca.0.extract68.peel, ptr %6, align 8, !tbaa !249
  store i32 1, ptr %.sroa.466.0..sroa_idx, align 8, !tbaa !250
  %i.cl = shl i32 %i.ch, 2
  %i.cm = zext i32 %i.cl to i64                   ; 2 uses
  %i.cn = icmp ult i64 %.promoted, 8
  %i.co = add nsw i64 %.promoted334, %i.cm        ; 2 uses
  br i1 %i.cn, label %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit.peel, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.cp = and i64 %.promoted, 4
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.p, label %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i.peel

_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i.peel: ; preds = %bb.o
  %i.cr = and i64 %.promoted, -5
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !475, !noalias !477
  br label %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit.peel

bb.p:                                             ; preds = %bb.o
  %i.cv = inttoptr i64 %.promoted to ptr
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !480, !noalias !477 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i32, ptr %i.cy, align 8, !noalias !477 ; 2 uses
  %i.da = and i32 %i.cz, 254
  %spec.select.i.i.i.i.i.peel = icmp eq i32 %i.da, 18
  br i1 %spec.select.i.i.i.i.i.peel, label %bb.q, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i.peel

bb.q:                                             ; preds = %bb.p
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !483, !noalias !477
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !278, !noalias !477
  %.phi.trans.insert.i.i.i.peel = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.pre.i.i.i.peel = load i32, ptr %.phi.trans.insert.i.i.i.peel, align 8, !noalias !477
  br label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i.peel

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i.peel: ; preds = %bb.q, %bb.p
  %i.de = phi i32 [ %.pre.i.i.i.peel, %bb.q ], [ %i.cz, %bb.p ]
  %i.df = lshr i32 %i.de, 8
  br label %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit.peel

_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit.peel: ; preds = %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i.peel, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i.peel, %.lr.ph
  %.sroa.0287.0.peel = phi i64 [ %.promoted, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i.peel ], [ %.promoted, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i.peel ], [ 0, %.lr.ph ] ; 5 uses
  %.sroa.7289.0.peel = phi i32 [ %i.cu, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i.peel ], [ %i.df, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i.peel ], [ %.promoted336, %.lr.ph ] ; 2 uses
  %.sroa.10290.0.peel = phi i8 [ %.promoted335, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i.peel ], [ %.promoted335, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i.peel ], [ 0, %.lr.ph ] ; 2 uses
  %i.dg = icmp ult i64 %.promoted322, 8
  %i.dh = add nsw i64 %.promoted337, %i.cm        ; 2 uses
  br i1 %i.dg, label %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241.peel, label %bb.r

bb.r:                                             ; preds = %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit.peel
  %i.di = and i64 %.promoted322, 4
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.s, label %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i236.peel

_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i236.peel: ; preds = %bb.r
  %i.dk = and i64 %.promoted322, -5
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !475, !noalias !487
  br label %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241.peel

bb.s:                                             ; preds = %bb.r
  %i.do = inttoptr i64 %.promoted322 to ptr
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !480, !noalias !487 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !noalias !487 ; 2 uses
  %i.dt = and i32 %i.ds, 254
  %spec.select.i.i.i.i.i237.peel = icmp eq i32 %i.dt, 18
  br i1 %spec.select.i.i.i.i.i237.peel, label %bb.t, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i238.peel

bb.t:                                             ; preds = %bb.s
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !483, !noalias !487
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !278, !noalias !487
  %.phi.trans.insert.i.i.i239.peel = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.pre.i.i.i240.peel = load i32, ptr %.phi.trans.insert.i.i.i239.peel, align 8, !noalias !487
  br label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i238.peel

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i238.peel: ; preds = %bb.t, %bb.s
  %i.dx = phi i32 [ %.pre.i.i.i240.peel, %bb.t ], [ %i.ds, %bb.s ]
  %i.dy = lshr i32 %i.dx, 8
  br label %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241.peel

_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241.peel: ; preds = %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i238.peel, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i236.peel, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit.peel
  %.sroa.0284.0.peel = phi i64 [ %.promoted322, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i236.peel ], [ %.promoted322, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i238.peel ], [ 0, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit.peel ] ; 2 uses
  %.sroa.7.0.peel = phi i32 [ %i.dn, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i236.peel ], [ %i.dy, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i238.peel ], [ %.promoted340, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit.peel ] ; 2 uses
  %.sroa.10.0315.peel = phi i8 [ %.promoted339, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i236.peel ], [ %.promoted339, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i238.peel ], [ 0, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit.peel ] ; 2 uses
  %.not229.peel = icmp eq i32 %33, 1
  br i1 %.not229.peel, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241.peel
  store i32 2, ptr %.sroa.10.0..sroa_idx204, align 8, !tbaa !250
  %i.dz = icmp ult i64 %.sroa.0287.0.peel, 8
  %i.ea = and i64 %.sroa.0287.0.peel, 4
  %i.eb = icmp eq i64 %i.ea, 0
  %i.ec = and i64 %.sroa.0287.0.peel, -5
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.ef = inttoptr i64 %.sroa.0287.0.peel to ptr
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  br label %bb.v

._crit_edge:                                      ; preds = %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241.peel
  %.sroa.0284.0.lcssa = phi i64 [ %.sroa.0284.0.peel, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241.peel ], [ %.sroa.0284.0, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241 ]
  %.sroa.7.0.lcssa = phi i32 [ %.sroa.7.0.peel, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241.peel ], [ %.sroa.7.0, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241 ]
  %.sroa.10.0315.lcssa = phi i8 [ %.sroa.10.0315.peel, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241.peel ], [ %.sroa.10.0315, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241 ]
  %.sroa.7289.0.lcssa = phi i32 [ %.sroa.7289.0.peel, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241.peel ], [ %.sroa.7289.0, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241 ]
  %.sroa.10290.0.lcssa = phi i8 [ %.sroa.10290.0.peel, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241.peel ], [ %.sroa.10290.0, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241 ]
  %.lcssa349 = phi i64 [ %i.dh, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241.peel ], [ %i.fp, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241 ]
  %.fca.0.extract54.lcssa = phi ptr [ %.fca.0.extract68.peel, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241.peel ], [ %.fca.0.extract68, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241 ]
  %.lcssa348 = phi i64 [ %i.co, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241.peel ], [ %i.fd, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241 ]
  store i64 %.lcssa348, ptr %i.cb, align 8
  store i8 %.sroa.10290.0.lcssa, ptr %i.cc, align 4
  store i32 %.sroa.7289.0.lcssa, ptr %i.cd, align 8
  store i64 %.lcssa349, ptr %i.ce, align 8
  store i8 %.sroa.10.0315.lcssa, ptr %i.cf, align 4
  store i32 %.sroa.7.0.lcssa, ptr %i.cg, align 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.n
  %.sroa.0284.0323.lcssa = phi i64 [ %.sroa.0284.0.lcssa, %._crit_edge ], [ %.promoted322, %bb.n ]
  %.sroa.0287.0321.lcssa = phi i64 [ %.sroa.0287.0.peel, %._crit_edge ], [ %.promoted, %bb.n ]
  %.sroa.0201.0.lcssa = phi ptr [ %.fca.0.extract54.lcssa, %._crit_edge ], [ %3, %bb.n ] ; 2 uses
  %.sroa.10.0.lcssa = phi i32 [ 2, %._crit_edge ], [ %4, %bb.n ] ; 2 uses
  store i64 %.sroa.0287.0321.lcssa, ptr %12, align 8
  store i64 %.sroa.0284.0323.lcssa, ptr %13, align 8
  %i.eh = icmp eq i32 %i.bh, 0
  br i1 %i.eh, label %bb.an, label %.preheader

.preheader:                                       ; preds = %bb.u
  %.sroa.244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.ek = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %26, i64 20 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %13, i64 16
  br label %bb.ac

bb.v:                                             ; preds = %.peel.next, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241
  %i.eo = phi i32 [ %.sroa.7.0.peel, %.peel.next ], [ %.sroa.7.0, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241 ]
  %i.ep = phi i8 [ %.sroa.10.0315.peel, %.peel.next ], [ %.sroa.10.0315, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241 ] ; 2 uses
  %i.eq = phi i64 [ %i.dh, %.peel.next ], [ %i.fp, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241 ]
  %i.er = phi i32 [ %.sroa.7289.0.peel, %.peel.next ], [ %.sroa.7289.0, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241 ]
  %i.es = phi i8 [ %.sroa.10290.0.peel, %.peel.next ], [ %.sroa.10290.0, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241 ] ; 2 uses
  %i.et = phi i64 [ %i.co, %.peel.next ], [ %i.fd, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241 ]
  %.sroa.0201.0329 = phi ptr [ %.fca.0.extract68.peel, %.peel.next ], [ %.fca.0.extract68, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241 ]
  %.0215328 = phi i32 [ %i.ch, %.peel.next ], [ %i.ew, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241 ]
  %.0220327 = phi i32 [ 1, %.peel.next ], [ %i.eu, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241 ]
  %.sroa.0284.0323325 = phi i64 [ %.sroa.0284.0.peel, %.peel.next ], [ %.sroa.0284.0, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241 ] ; 6 uses
  %i.eu = add nuw nsw i32 %.0220327, 1            ; 3 uses
  %i.ev = mul i32 %i.eu, %i.bj
  %i.ew = udiv i32 %i.ev, %33                     ; 2 uses
  %i.ex = sub i32 %i.ew, %.0215328                ; 2 uses
  store ptr %.sroa.0201.0329, ptr %22, align 8, !tbaa !249
  %i.ey = zext i32 %i.ex to i64
  %i.ez = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.ey, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #19 ; 2 uses
  %.fca.0.extract72 = extractvalue { ptr, i32 } %i.ez, 0
  %.fca.1.extract73 = extractvalue { ptr, i32 } %i.ez, 1
  store ptr %.fca.0.extract72, ptr %23, align 8
  store i32 %.fca.1.extract73, ptr %.sroa.275.0..sroa_idx, align 8
  %i.fa = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 574, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %i.bz, i32 %i.ca, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23) #19 ; 2 uses
  %.fca.0.extract68 = extractvalue { ptr, i32 } %i.fa, 0 ; 4 uses
  %.fca.1.extract69 = extractvalue { ptr, i32 } %i.fa, 1
  store ptr %.fca.0.extract68, ptr %5, align 8, !tbaa !249
  store i32 %.fca.1.extract69, ptr %.sroa.480.0..sroa_idx, align 8, !tbaa !250
  store ptr %.fca.0.extract68, ptr %6, align 8, !tbaa !249
  store i32 1, ptr %.sroa.466.0..sroa_idx, align 8, !tbaa !250
  %i.fb = shl i32 %i.ex, 2
  %i.fc = zext i32 %i.fb to i64                   ; 2 uses
  %i.fd = add nsw i64 %i.et, %i.fc                ; 2 uses
  br i1 %i.dz, label %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.eb, label %bb.x, label %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i

bb.x:                                             ; preds = %bb.w
  %i.fe = load ptr, ptr %i.eg, align 8, !tbaa !480, !noalias !477 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load i32, ptr %i.ff, align 8, !noalias !477 ; 2 uses
  %i.fh = and i32 %i.fg, 254
  %spec.select.i.i.i.i.i = icmp eq i32 %i.fh, 18
  br i1 %spec.select.i.i.i.i.i, label %bb.y, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i

bb.y:                                             ; preds = %bb.x
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !483, !noalias !477
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !278, !noalias !477
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !477
  br label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i: ; preds = %bb.y, %bb.x
  %i.fl = phi i32 [ %.pre.i.i.i, %bb.y ], [ %i.fg, %bb.x ]
  %i.fm = lshr i32 %i.fl, 8
  br label %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit

_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i: ; preds = %bb.w
  %i.fn = load i32, ptr %i.ee, align 4, !tbaa !475, !noalias !477
  br label %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit

_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit: ; preds = %bb.v, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i
  %.sroa.7289.0 = phi i32 [ %i.fn, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i ], [ %i.fm, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i ], [ %i.er, %bb.v ] ; 2 uses
  %.sroa.10290.0 = phi i8 [ %i.es, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i ], [ %i.es, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i ], [ 0, %bb.v ] ; 2 uses
  %i.fo = icmp ult i64 %.sroa.0284.0323325, 8
  %i.fp = add nsw i64 %i.eq, %i.fc                ; 2 uses
  br i1 %i.fo, label %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241, label %bb.z

bb.z:                                             ; preds = %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit
  %i.fq = and i64 %.sroa.0284.0323325, 4
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %bb.aa, label %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i236

bb.aa:                                            ; preds = %bb.z
  %i.fs = inttoptr i64 %.sroa.0284.0323325 to ptr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !480, !noalias !487 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load i32, ptr %i.fv, align 8, !noalias !487 ; 2 uses
  %i.fx = and i32 %i.fw, 254
  %spec.select.i.i.i.i.i237 = icmp eq i32 %i.fx, 18
  br i1 %spec.select.i.i.i.i.i237, label %bb.ab, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i238

bb.ab:                                            ; preds = %bb.aa
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !483, !noalias !487
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !278, !noalias !487
  %.phi.trans.insert.i.i.i239 = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.pre.i.i.i240 = load i32, ptr %.phi.trans.insert.i.i.i239, align 8, !noalias !487
  br label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i238

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i238: ; preds = %bb.ab, %bb.aa
  %i.gb = phi i32 [ %.pre.i.i.i240, %bb.ab ], [ %i.fw, %bb.aa ]
  %i.gc = lshr i32 %i.gb, 8
  br label %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241

_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i236: ; preds = %bb.z
  %i.gd = and i64 %.sroa.0284.0323325, -5
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !475, !noalias !487
  br label %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241

_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit241: ; preds = %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i238, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i236
  %.sroa.0284.0 = phi i64 [ %.sroa.0284.0323325, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i236 ], [ %.sroa.0284.0323325, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i238 ], [ 0, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit ] ; 2 uses
  %.sroa.7.0 = phi i32 [ %i.gg, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i236 ], [ %i.gc, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i238 ], [ %i.eo, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit ] ; 2 uses
  %.sroa.10.0315 = phi i8 [ %i.ep, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i236 ], [ %i.ep, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i238 ], [ 0, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit ] ; 2 uses
  %.not229 = icmp eq i32 %i.eu, %33
  br i1 %.not229, label %._crit_edge, label %bb.v, !llvm.loop !490

bb.ac:                                            ; preds = %.preheader, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit248
  %.0343 = phi i32 [ %i.bh, %.preheader ], [ %i.ho, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit248 ] ; 2 uses
  %.0216342 = phi i32 [ 0, %.preheader ], [ %i.hl, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit248 ] ; 2 uses
  %.0218341 = phi i64 [ 0, %.preheader ], [ %i.hn, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit248 ] ; 3 uses
  %.not319 = icmp eq i32 %.0343, 1                ; 2 uses
  %i.gh = select i1 %.not319, i16 5, i16 6
  %i.gi = select i1 %.not319, i32 1, i32 2        ; 2 uses
  %i.gj = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %.0218341, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #19 ; 2 uses
  %.fca.0.extract41 = extractvalue { ptr, i32 } %i.gj, 0
  %.fca.1.extract42 = extractvalue { ptr, i32 } %i.gj, 1
  store ptr %.fca.0.extract41, ptr %25, align 8
  store i32 %.fca.1.extract42, ptr %.sroa.244.0..sroa_idx, align 8
  %i.gk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %25) #19 ; 2 uses
  %.fca.0.extract37 = extractvalue { ptr, i32 } %i.gk, 0
  %.fca.1.extract38 = extractvalue { ptr, i32 } %i.gk, 1
  store ptr %.fca.0.extract37, ptr %24, align 8
  store i32 %.fca.1.extract38, ptr %.sroa.240.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %.0.copyload.i.i.i242 = load i64, ptr %13, align 8, !noalias !493 ; 5 uses
  %i.gl = icmp ult i64 %.0.copyload.i.i.i242, 8
  %i.gm = load i64, ptr %i.ei, align 8, !tbaa !496, !noalias !493
  %i.gn = add nsw i64 %i.gm, %.0218341            ; 2 uses
  br i1 %i.gl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.go = load i32, ptr %i.en, align 8, !tbaa !503, !noalias !493
  store i64 0, ptr %26, align 8, !alias.scope !493
  store i64 %i.gn, ptr %i.ek, align 8, !tbaa !496, !alias.scope !493
  store i32 %i.go, ptr %i.em, align 8, !tbaa !503, !alias.scope !493
  store i8 0, ptr %i.el, align 4, !tbaa !504, !alias.scope !493
  br label %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit248

bb.ae:                                            ; preds = %bb.ac
  %i.gp = and i64 %.0.copyload.i.i.i242, 4
  %i.gq = icmp eq i64 %i.gp, 0
  %i.gr = load i8, ptr %i.ej, align 4, !tbaa !504, !noalias !493
  store i64 %.0.copyload.i.i.i242, ptr %26, align 8, !alias.scope !493
  store i64 %i.gn, ptr %i.ek, align 8, !tbaa !496, !alias.scope !493
  store i8 %i.gr, ptr %i.el, align 4, !tbaa !504, !alias.scope !493
  br i1 %i.gq, label %bb.af, label %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i243

bb.af:                                            ; preds = %bb.ae
  %i.gs = inttoptr i64 %.0.copyload.i.i.i242 to ptr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !480, !noalias !493 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load i32, ptr %i.gv, align 8, !noalias !493 ; 2 uses
  %i.gx = and i32 %i.gw, 254
  %spec.select.i.i.i.i.i244 = icmp eq i32 %i.gx, 18
  br i1 %spec.select.i.i.i.i.i244, label %bb.ag, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i245

bb.ag:                                            ; preds = %bb.af
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !483, !noalias !493
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !278, !noalias !493
  %.phi.trans.insert.i.i.i246 = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %.pre.i.i.i247 = load i32, ptr %.phi.trans.insert.i.i.i246, align 8, !noalias !493
  br label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i245

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i245: ; preds = %bb.ag, %bb.af
  %i.hb = phi i32 [ %.pre.i.i.i247, %bb.ag ], [ %i.gw, %bb.af ]
  %i.hc = lshr i32 %i.hb, 8
  store i32 %i.hc, ptr %i.em, align 8, !tbaa !503, !alias.scope !493
  br label %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit248

_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i243: ; preds = %bb.ae
  %i.hd = and i64 %.0.copyload.i.i.i242, -5
  %i.he = inttoptr i64 %i.hd to ptr
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !475, !noalias !493
  store i32 %i.hg, ptr %i.em, align 8, !tbaa !503, !alias.scope !493
  br label %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit248

_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit248: ; preds = %bb.ad, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i245, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i243
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %27, i8 0, i64 40, i1 false)
  %i.hh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getLoadENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_18MachinePointerInfoENS_10MaybeAlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesEPKNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %i.gh, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %.sroa.0201.0.lcssa, i32 %.sroa.10.0.lcssa, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %24, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %26, i16 0, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(40) %27, ptr noundef null) #19 ; 2 uses
  %.fca.0.extract33 = extractvalue { ptr, i32 } %i.hh, 0 ; 2 uses
  %.fca.1.extract34 = extractvalue { ptr, i32 } %i.hh, 1
  %i.hi = zext i32 %.0216342 to i64               ; 2 uses
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %19, i64 %i.hi ; 2 uses
  store ptr %.fca.0.extract33, ptr %i.hj, align 16, !tbaa !249
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store i32 %.fca.1.extract34, ptr %.sroa.452.0..sroa_idx, align 8, !tbaa !250
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %18, i64 %i.hi ; 2 uses
  store ptr %.fca.0.extract33, ptr %i.hk, align 16, !tbaa !249
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store i32 1, ptr %.sroa.431.0..sroa_idx, align 8, !tbaa !250
  %i.hl = add i32 %.0216342, 1                    ; 2 uses
  %i.hm = zext nneg i32 %i.gi to i64
  %i.hn = add i64 %.0218341, %i.hm
  %i.ho = sub i32 %.0343, %i.gi                   ; 2 uses
  %.not230 = icmp eq i32 %i.ho, 0
  br i1 %.not230, label %bb.ah, label %bb.ac, !llvm.loop !505

bb.ah:                                            ; preds = %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit248
  %i.hp = zext i32 %i.hl to i64
  store ptr %18, ptr %28, align 8, !tbaa !506
  %i.hq = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 %i.hp, ptr %i.hq, align 8, !tbaa !509
  %i.hr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.248") align 8 %28) #19 ; 2 uses
  %.fca.0.extract19 = extractvalue { ptr, i32 } %i.hr, 0
  %.fca.1.extract20 = extractvalue { ptr, i32 } %i.hr, 1
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 8
  %.0.copyload.i.i.i251 = load i64, ptr %12, align 8 ; 6 uses
  %i.hs = icmp ult i64 %.0.copyload.i.i.i251, 8
  %i.ht = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.hu = load i64, ptr %i.ht, align 8
  %i.hv = and i64 %.0.copyload.i.i.i251, 4
  %i.hw = icmp eq i64 %i.hv, 0
  %i.hx = getelementptr inbounds nuw i8, ptr %12, i64 20
  %i.hy = load i8, ptr %i.hx, align 4             ; 2 uses
  %i.hz = and i64 %.0.copyload.i.i.i251, -5
  %i.ia = inttoptr i64 %i.hz to ptr
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  %i.ic = inttoptr i64 %.0.copyload.i.i.i251 to ptr
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.if = load i32, ptr %i.ie, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 20
  %.sroa.2266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit257
  %.1346 = phi i32 [ %i.bh, %bb.ah ], [ %i.jg, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit257 ] ; 2 uses
  %.1217345 = phi i32 [ 0, %bb.ah ], [ %i.jd, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit257 ] ; 2 uses
  %.0219344 = phi i64 [ 0, %bb.ah ], [ %i.jf, %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit257 ] ; 3 uses
  %.not320 = icmp eq i32 %.1346, 1
  %i.ig = select i1 %.not320, i32 1, i32 2        ; 2 uses
  %i.ih = zext i32 %.1217345 to i64               ; 2 uses
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %19, i64 %i.ih ; 2 uses
  %.sroa.013.0.copyload = load ptr, ptr %i.ii, align 16, !tbaa !249 ; 2 uses
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %.sroa.214.0.copyload = load i32, ptr %.sroa.214.0..sroa_idx, align 8, !tbaa !250 ; 2 uses
  %i.ij = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %.0219344, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #19 ; 2 uses
  %.fca.0.extract9 = extractvalue { ptr, i32 } %i.ij, 0
  %.fca.1.extract10 = extractvalue { ptr, i32 } %i.ij, 1
  store ptr %.fca.0.extract9, ptr %29, align 8
  store i32 %.fca.1.extract10, ptr %.sroa.212.0..sroa_idx, align 8
  %i.ik = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %29) #19 ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.ik, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.ik, 1
  %i.il = add nsw i64 %i.hu, %.0219344
  br i1 %i.hs, label %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit257, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.hw, label %bb.ak, label %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i252

bb.ak:                                            ; preds = %bb.aj
  %i.im = load ptr, ptr %i.id, align 8, !tbaa !480, !noalias !510 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load i32, ptr %i.in, align 8, !noalias !510 ; 2 uses
  %i.ip = and i32 %i.io, 254
  %spec.select.i.i.i.i.i253 = icmp eq i32 %i.ip, 18
  br i1 %spec.select.i.i.i.i.i253, label %bb.al, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i254

bb.al:                                            ; preds = %bb.ak
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !483, !noalias !510
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !278, !noalias !510
  %.phi.trans.insert.i.i.i255 = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %.pre.i.i.i256 = load i32, ptr %.phi.trans.insert.i.i.i255, align 8, !noalias !510
  br label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i254

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i254: ; preds = %bb.al, %bb.ak
  %i.it = phi i32 [ %.pre.i.i.i256, %bb.al ], [ %i.io, %bb.ak ]
  %i.iu = lshr i32 %i.it, 8
  br label %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit257

_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i252: ; preds = %bb.aj
  %i.iv = load i32, ptr %i.ib, align 4, !tbaa !475, !noalias !510
  br label %_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit257

_ZNK4llvm18MachinePointerInfo13getWithOffsetEl.exit257: ; preds = %bb.ai, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i254, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i252
  %.sroa.8.0 = phi i8 [ %i.hy, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i252 ], [ %i.hy, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i254 ], [ 0, %bb.ai ]
  %.sroa.5.0 = phi i32 [ %i.iv, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i252 ], [ %i.iu, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i254 ], [ %i.if, %bb.ai ]
  %.sroa.0260.0 = phi i64 [ %.0.copyload.i.i.i251, %_ZN4llvm18MachinePointerInfoC2EPKNS_17PseudoSourceValueElh.exit.i252 ], [ %.0.copyload.i.i.i251, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i.i254 ], [ 0, %bb.ai ]
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %30, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store i64 %.sroa.0260.0, ptr %14, align 8
  store i64 %i.il, ptr %.sroa.3.0..sroa_idx, align 8
  store i32 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 4
  store ptr %.fca.0.extract5, ptr %15, align 8
  store i32 %.fca.1.extract6, ptr %.sroa.2266.0..sroa_idx, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload, i64 48
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !275
  %i.iy = zext i32 %.sroa.214.0.copyload to i64
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %i.ix, i64 %i.iy ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.iz, align 8, !tbaa !276
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !278
  %i.ja = call i8 @_ZNK4llvm12SelectionDAG11getEVTAlignENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.21.0.copyload.i.i.i) #19
end_hunk_0
