Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCAsmPrinter?download=true
inline.NumInlined: 4176
inline.NumDeleted: 1764
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN12_GLOBAL__N_113PPCAsmPrinter22lookUpOrCreateTOCEntryEPKN4llvm8MCSymbolENS0_12TOCEntryTypeEt:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef ptr @"_ZZN12_GLOBAL__N_113PPCAsmPrinter15emitInstructionEPKN4llvm12MachineInstrEENK3$_1clEPKNS1_8MCSymbolEPKNS1_6MCExprEt"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext range(i16 0, 16) %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !899  ; 4 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !898, !range !26, !noundef !27
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1080
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !231, !noalias !1186 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1088
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !233, !noalias !1186 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1100
  %i.j = load i32, ptr %i.i, align 4, !tbaa !230, !noalias !1186 ; 4 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %i.j, -1                         ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %narrow = mul nuw nsw i16 %3, 37
  %i.q = zext nneg i16 %narrow to i64
  %i.r = shl i64 %i.p, 32
  %i.s = or disjoint i64 %i.r, %i.q
  %i.t = mul i64 %i.s, -4658895280553007687       ; 2 uses
  %i.u = lshr i64 %i.t, 31
  %i.v = xor i64 %i.u, %i.t
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.l, %i.w                       ; 3 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = lshr i64 %i.y, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !216, !noalias !1187
  %i.ac = and i32 %i.x, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !906

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %i.af = phi i64 [ %i.ap, %bb.c ], [ %i.y, %bb.b ]
  %.017.i.i.i.i.i = phi i32 [ %i.ao, %bb.c ], [ %i.x, %bb.b ]
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.af ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !770, !noalias !1187
  %i.ai = icmp eq ptr %1, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load i16, ptr %i.aj, align 8, !noalias !1187
  %i.al = icmp eq i16 %3, %i.ak
  %i.am = select i1 %i.ai, i1 %i.al, i1 false
  br i1 %i.am, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_8MCSymbolEtEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E4findERKS6_.exit.loopexit.i, label %bb.c, !prof !276

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.an = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ao = and i32 %i.an, %i.l                     ; 3 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = lshr i64 %i.ap, 5
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !216, !noalias !1187
  %i.at = and i32 %i.ao, 31
  %i.au = lshr i32 %i.as, %i.at
  %i.av = trunc i32 %i.au to i1
  br i1 %i.av, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !907

.loopexit.i.i.i:                                  ; preds = %bb.c, %bb.b, %bb.a
  %i.aw = zext i32 %i.j to i64                    ; 2 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.aw
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_8MCSymbolEtEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E4findERKS6_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_8MCSymbolEtEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E4findERKS6_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.j to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_8MCSymbolEtEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E4findERKS6_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_8MCSymbolEtEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E4findERKS6_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_8MCSymbolEtEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E4findERKS6_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_8MCSymbolEtEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E4findERKS6_.exit.loopexit.i ], [ %i.aw, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.ag, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_8MCSymbolEtEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E4findERKS6_.exit.loopexit.i ], [ %i.ax, %.loopexit.i.i.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.pre-phi.i
  %i.az = icmp eq ptr %.lcssa.sink.i.i.i, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 1112
  %.sink16.in.i = select i1 %i.az, ptr %i.bb, ptr %i.ba
  %.sink16.i = load i32, ptr %.sink16.in.i, align 8, !tbaa !216
  %i.bc = zext i32 %.sink16.i to i64
  %i.bd = select i1 %i.d, i64 3, i64 2
  %i.be = shl nuw nsw i64 %i.bc, %i.bd            ; 3 uses
  %i.bf = icmp samesign ugt i64 %i.be, 32767
  br i1 %i.bf, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_8MCSymbolEtEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E4findERKS6_.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.bg, align 8, !tbaa !1188
  %i.bh = shl i64 %i.be, 48
  %i.bi = ashr exact i64 %i.bh, 48
  %.neg.i = sub nsw i64 %i.bi, %i.be
  %i.bj = getelementptr inbounds nuw i8, ptr %.val, i64 72 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !595, !nonnull !27, !align !187
  %i.bl = tail call noundef ptr @_ZN4llvm14MCConstantExpr6createElRNS_9MCContextEbj(i64 noundef %.neg.i, ptr noundef nonnull align 8 dereferenceable(2208) %i.bk, i1 noundef zeroext false, i32 noundef 0) #21
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !595, !nonnull !27, !align !187
  %i.bn = tail call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 0, ptr noundef %2, ptr noundef %i.bl, ptr noundef nonnull align 8 dereferenceable(2208) %i.bm, ptr null) #21
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_8MCSymbolEtEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E4findERKS6_.exit.i, %bb.d
  %.0 = phi ptr [ %i.bn, %bb.d ], [ %2, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_8MCSymbolEtEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E4findERKS6_.exit.i ]
  ret ptr %.0
}

declare noundef zeroext i1 @_ZNK4llvm12PPCSubtarget18isGVIndirectSymbolEPKNS_11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(520296), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm10AsmPrinter9getSymbolEPKNS_11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(1073), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm9MCContext16createTempSymbolEv(ptr noundef nonnull align 8 dereferenceable(2208)) local_unnamed_addr #4

declare void @_ZN4llvm10MCStreamer9emitValueEPKNS_6MCExprEjNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef, i32 noundef, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(128) ptr @_ZN4llvm13MCInstBuilder6addImmEl(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !57
  %.not.i.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !276

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 2, i64 %1)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = zext i32 %i.c to i64
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.f ; 2 uses
  store i8 2, ptr %i.h, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.i = load i32, ptr %i.b, align 8, !tbaa !56
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.b, align 8, !tbaa !56
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit:  ; preds = %bb.b, %bb.c
  ret ptr %0
}

declare noundef ptr @_ZN4llvm15MCSpecifierExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef, i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(2208), ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_113PPCAsmPrinter11emitTlsCallEPKN4llvm12MachineInstrEt(ptr noundef nonnull align 8 dereferenceable(1168) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext range(i16 58, 60) %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvm::MCInstBuilder", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !754
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = and i32 %i.d, 255
  %i.f = icmp ne i32 %i.e, 0
  %i.g = lshr i32 %i.d, 8
  %i.h = and i32 %i.g, 4095
  %i.i = add nsw i32 %i.h, -11
  %switch27 = icmp ult i32 %i.i, 2
  %switch = select i1 %i.f, i1 %switch27, i1 false ; 2 uses
  %spec.select = select i1 %switch, i32 657, i32 654
  %spec.select26 = select i1 %switch, i16 53, i16 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !625
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !404, !nonnull !27, !align !187
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !894
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !403
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !53
  %i.s = icmp eq i32 %i.r, 19
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr i8, ptr %1, i64 52
  %.val = load i32, ptr %i.t, align 4, !tbaa !753
  tail call fastcc void @_ZN12_GLOBAL__N_113PPCAsmPrinter20EmitAIXTlsCallHelperEPKN4llvm12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1168) %0, i32 %.val)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !595, !nonnull !27, !align !187
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.x, align 1, !tbaa !284
  store ptr @.str.20, ptr %3, align 8, !tbaa !60
  store i8 3, ptr %i.w, align 8, !tbaa !283
  %i.y = call noundef ptr @_ZN4llvm9MCContext17getOrCreateSymbolERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208) %i.v, ptr noundef nonnull align 8 dereferenceable(34) %3) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !403  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !53
  %i.ac = icmp eq i32 %i.ab, 19
  br i1 %i.ac, label %.thread, label %_ZNK4llvm12PPCSubtarget13is32BitELFABIEv.exit

_ZNK4llvm12PPCSubtarget13is32BitELFABIEv.exit:    ; preds = %bb.c
  %5 = getelementptr inbounds nuw i8, ptr %i.z, i64 538
  %6 = load i8, ptr %5, align 2, !tbaa !538, !range !26, !noundef !27
  %7 = trunc nuw i8 %6 to i1
  br i1 %7, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm12PPCSubtarget13is32BitELFABIEv.exit
  %i.ad = call noundef zeroext i1 @_ZNK4llvm10AsmPrinter21isPositionIndependentEv(ptr noundef nonnull align 8 dereferenceable(1073) %0) #21
  br i1 %i.ad, label %bb.e, label %.thread

.thread:                                          ; preds = %_ZNK4llvm12PPCSubtarget13is32BitELFABIEv.exit, %bb.d, %bb.c
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !595, !nonnull !27, !align !187
  %i.af = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.y, i16 noundef zeroext %spec.select26, ptr noundef nonnull align 8 dereferenceable(2208) %i.ae, ptr null) #21
  br label %_ZN4llvm13MCInstBuilder7addExprEPKNS_6MCExprE.exit21

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !595, !nonnull !27, !align !187
  %i.ah = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.y, i16 noundef zeroext 56, ptr noundef nonnull align 8 dereferenceable(2208) %i.ag, ptr null) #21 ; 3 uses
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !403
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 540
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !900, !range !26, !noundef !27
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.f, label %_ZN4llvm13MCInstBuilder7addExprEPKNS_6MCExprE.exit21

bb.f:                                             ; preds = %bb.e
  %i.am = call noundef i32 @_ZNK4llvm6Module11getPICLevelEv(ptr noundef nonnull align 8 dereferenceable(1288) %i.n) #21
  %i.an = icmp eq i32 %i.am, 2
  br i1 %i.an, label %bb.g, label %_ZN4llvm13MCInstBuilder7addExprEPKNS_6MCExprE.exit21

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.u, align 8, !tbaa !595, !nonnull !27, !align !187
  %i.ap = call noundef ptr @_ZN4llvm14MCConstantExpr6createElRNS_9MCContextEbj(i64 noundef 32768, ptr noundef nonnull align 8 dereferenceable(2208) %i.ao, i1 noundef zeroext false, i32 noundef 0) #21
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !595, !nonnull !27, !align !187
  %i.ar = call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 0, ptr noundef %i.ah, ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(2208) %i.aq, ptr null) #21
  br label %_ZN4llvm13MCInstBuilder7addExprEPKNS_6MCExprE.exit21

_ZN4llvm13MCInstBuilder7addExprEPKNS_6MCExprE.exit21: ; preds = %.thread, %bb.g, %bb.f, %bb.e
  %.017 = phi ptr [ %i.ar, %bb.g ], [ %i.ah, %bb.f ], [ %i.ah, %bb.e ], [ %i.af, %.thread ]
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !754
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !60
  %i.av = call noundef ptr @_ZNK4llvm10AsmPrinter9getSymbolEPKNS_11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(1073) %0, ptr noundef %i.au) #21
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !595, !nonnull !27, !align !187
  %i.ax = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.av, i16 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(2208) %i.aw, ptr null) #21
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ba = load ptr, ptr %i.o, align 8, !tbaa !403
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 538
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !538, !range !26, !noundef !27
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = select i1 %i.bd, i32 %spec.select, i32 675
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i64 16, i1 false)
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !29
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 6, ptr %i.bi, align 4, !tbaa !57
  store i32 %i.be, ptr %4, align 8, !tbaa !761
  %.fca.1.load.cast.i.i = ptrtoint ptr %.017 to i64
  store i8 5, ptr %i.bg, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %.fca.1.load.cast.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.fca.1.load.cast.i.i18 = ptrtoint ptr %i.ax to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i8 5, ptr %i.bj, align 8
  %.sroa.4.0..sroa_idx.i.i.i20 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %.fca.1.load.cast.i.i18, ptr %.sroa.4.0..sroa_idx.i.i.i20, align 8
  store i32 2, ptr %i.bh, align 8, !tbaa !56
  call void @_ZN4llvm10AsmPrinter14EmitToStreamerERNS_10MCStreamerERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(1073) %0, ptr noundef nonnull align 8 dereferenceable(304) %i.az, ptr noundef nonnull align 8 dereferenceable(128) %4) #21
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !29 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.bg
  br i1 %i.bl, label %_ZN4llvm13MCInstBuilderD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm13MCInstBuilder7addExprEPKNS_6MCExprE.exit21
  call void @free(ptr noundef %i.bk) #21
  br label %_ZN4llvm13MCInstBuilderD2Ev.exit

_ZN4llvm13MCInstBuilderD2Ev.exit:                 ; preds = %_ZN4llvm13MCInstBuilder7addExprEPKNS_6MCExprE.exit21, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm13MCInstBuilderD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_113PPCAsmPrinter20EmitAIXTlsCallHelperEPKN4llvm12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1168) %0, i32 %.52.val) unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.llvm::MCInstBuilder", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !595, !nonnull !27, !align !187
  %switch.tableidx = add i32 %.52.val, -1314      ; 3 uses
  %i.c = icmp ult i32 %switch.tableidx, 3
  br i1 %i.c, label %switch.lookup, label %_ZN4llvm13MCInstBuilder7addExprEPKNS_6MCExprE.exit

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_113PPCAsmPrinter20EmitAIXTlsCallHelperEPKN4llvm12MachineInstrE, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN12_GLOBAL__N_113PPCAsmPrinter20EmitAIXTlsCallHelperEPKN4llvm12MachineInstrE.22, i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %_ZN4llvm13MCInstBuilder7addExprEPKNS_6MCExprE.exit

_ZN4llvm13MCInstBuilder7addExprEPKNS_6MCExprE.exit: ; preds = %switch.lookup, %bb.a
  %.sroa.7.0.i = phi i64 [ 15, %bb.a ], [ %switch.ext, %switch.lookup ]
  %.sroa.016.0.i = phi ptr [ @.str.21, %bb.a ], [ %switch.load2, %switch.lookup ]
  %i.f = tail call noundef ptr @_ZN4llvm9MCContext15getXCOFFSectionENS_9StringRefENS_11SectionKindESt8optionalINS_5XCOFF15CsectPropertiesEEbS3_INS4_24DwarfSectionSubtypeFlagsEE(ptr noundef nonnull align 8 dereferenceable(2208) %i.b, ptr nonnull %.sroa.016.0.i, i64 %.sroa.7.0.i, i32 2, i24 65536, i1 noundef zeroext false, i64 0) #21
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !574
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !595, !nonnull !27, !align !187
  %i.j = tail call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.h, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.i, ptr null) #21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 16, i1 false)
  store ptr %i.n, ptr %i.m, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 6, ptr %i.p, align 4, !tbaa !57
  store i32 661, ptr %1, align 8, !tbaa !761
  %.fca.1.load.cast.i.i = ptrtoint ptr %i.j to i64
  store i8 5, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %.fca.1.load.cast.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.o, align 8, !tbaa !56
  call void @_ZN4llvm10AsmPrinter14EmitToStreamerERNS_10MCStreamerERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(1073) %0, ptr noundef nonnull align 8 dereferenceable(304) %i.l, ptr noundef nonnull align 8 dereferenceable(128) %1) #21
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !29   ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.n
  br i1 %i.r, label %_ZN4llvm13MCInstBuilderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13MCInstBuilder7addExprEPKNS_6MCExprE.exit
  call void @free(ptr noundef %i.q) #21
  br label %_ZN4llvm13MCInstBuilderD2Ev.exit

_ZN4llvm13MCInstBuilderD2Ev.exit:                 ; preds = %_ZN4llvm13MCInstBuilder7addExprEPKNS_6MCExprE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void
}

declare noundef ptr @_ZN4llvm14PPCInstPrinter15getRegisterNameENS_10MCRegisterE(i32) local_unnamed_addr #4

declare noundef i32 @_ZNK4llvm14MachineOperand12getOperandNoEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm11GlobalValue13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare i8 @_ZNK4llvm5Value19getPointerAlignmentERKNS_10DataLayoutE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(912)) local_unnamed_addr #4

declare void @_ZN4llvm9StackMaps14recordStackMapERKNS_8MCSymbolERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80), i64 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm9StackMaps16recordPatchPointERKNS_8MCSymbolERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare void @_ZN4llvm15PatchPointOpersC1EPKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef) unnamed_addr #4

declare noundef i32 @_ZNK4llvm15PatchPointOpers17getNextScratchIdxEj(ptr noundef nonnull align 8 dereferenceable(9), i32 noundef) local_unnamed_addr #4

declare noundef i64 @_ZNK4llvm16PPCFrameLowering16getTOCSaveOffsetEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm12PPCSubtarget10isELFv2ABIEv(ptr noundef nonnull align 8 dereferenceable(520296)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZN4llvm21reportFatalUsageErrorEPKc(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(2208), ptr) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 %1, i64 %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !56
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #21
  %i.f = load ptr, ptr %0, align 8, !tbaa !29
  %i.g = load i32, ptr %i.a, align 8, !tbaa !56
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store i8 %1, ptr %i.i, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !56
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !56
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm10AsmPrinter12GetJTISymbolEjb(ptr noundef nonnull align 8 dereferenceable(1073), i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm10AsmPrinter21GetBlockAddressSymbolEPKNS_12BlockAddressE(ptr noundef nonnull align 8 dereferenceable(1073), ptr noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK4llvm13TargetMachine11getTLSModelEPKNS_11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(1728), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm10AsmPrinter16createTempSymbolERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(1073), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_8MCSymbolEtEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E24lookupOrInsertIntoBucketIRKS6_JEEES2_IPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(10) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !231, !noalias !1193 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !233, !noalias !1193 ; 3 uses
end_hunk_0
