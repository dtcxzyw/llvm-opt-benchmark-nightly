Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonAsmParser?download=true
inline.NumInlined: 4228
inline.NumDeleted: 799
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocE:"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673"
    i32 2129, label %bb.ei
    i32 347, label %bb.ek
  ]

bb.a:                                             ; preds = %"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673"
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !127, !nonnull !22, !align !52
  %i.as = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm18HexagonMCInstrInfo7getDescERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(58) %i.ar, ptr noundef nonnull align 8 dereferenceable(128) %1) #22
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !556
  %i.av = and i64 %i.au, 8
  %.not1031 = icmp eq i64 %i.av, 0
  br i1 %.not1031, label %bb.el, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.aw = load ptr, ptr %i.o, align 8, !tbaa !80
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !557, !nonnull !22, !align !52
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.ba, align 1, !tbaa !104
  store ptr @.str.395, ptr %12, align 8, !tbaa !92
  store i8 3, ptr %i.az, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  call void @_ZNK4llvm9SourceMgr10GetMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SMDiagnostic") align 8 %11, ptr noundef nonnull align 8 dereferenceable(72) %i.ay, ptr %3, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(34) %12, ptr noundef nonnull byval(%"class.llvm::ArrayRef.298") align 8 %13, ptr noundef nonnull byval(%"class.llvm::ArrayRef.299") align 8 %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.bb = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #22
  call void @_ZNK4llvm12SMDiagnostic5printEPKcRNS_11raw_ostreamEbbb(ptr noundef nonnull align 8 dereferenceable(360) %11, ptr noundef nonnull @.str.396, ptr noundef nonnull align 8 dereferenceable(48) %i.bb, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) #22
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.397, i1 noundef zeroext true) #25
  unreachable

bb.c:                                             ; preds = %"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673"
  %i.bc = call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm17MCTargetAsmParser6getSTIEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #22
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 240
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !50
  %i.bf = and i64 %i.be, 16
  %.not1028 = icmp eq i64 %i.bf, 0
  br i1 %.not1028, label %bb.d, label %bb.el

bb.d:                                             ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !24 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !92
  %.not1029 = icmp eq i32 %i.bj, 118
  br i1 %.not1029, label %bb.e, label %.critedge647

bb.e:                                             ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !92
  %.not1030 = icmp eq i32 %i.bl, 118
  br i1 %.not1030, label %bb.el, label %.critedge647

.critedge647:                                     ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.bn, align 1, !tbaa !104
  store ptr @.str.398, ptr %15, align 8, !tbaa !92
  store i8 3, ptr %i.bm, align 8, !tbaa !105
  %.val658 = load ptr, ptr %i.l, align 8, !tbaa !51
  %i.bo = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val658, ptr %3, ptr noundef nonnull align 8 dereferenceable(34) %15, ptr null, ptr null) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.en

bb.f:                                             ; preds = %"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673"
  store i32 959, ptr %1, align 8, !tbaa !48
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !24 ; 4 uses
  %.sroa.0413.0.copyload = load i8, ptr %i.bq, align 8, !tbaa !125
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !92
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.01017.0.copyload = load i8, ptr %i.br, align 8, !tbaa !125
  %.sroa.41019.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %.sroa.41019.0.copyload = load i64, ptr %.sroa.41019.0..sroa_idx, align 8, !tbaa !92 ; 2 uses
  %i.bs = inttoptr i64 %.sroa.41019.0.copyload to ptr ; 2 uses
  call void @_ZN4llvm18HexagonMCInstrInfo16setMustNotExtendERKNS_6MCExprEb(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i1 noundef zeroext true) #22
  call void @_ZN4llvm18HexagonMCInstrInfo14setS27_2_relocERKNS_6MCExprEb(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i1 noundef zeroext true) #22
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %i.bt, align 8, !tbaa !30
  call void @_ZN4llvm6MCInst10addOperandENS_9MCOperandE(ptr noundef nonnull align 8 dereferenceable(128) %1, i8 %.sroa.0413.0.copyload, i64 %.sroa.5.0.copyload)
  call void @_ZN4llvm6MCInst10addOperandENS_9MCOperandE(ptr noundef nonnull align 8 dereferenceable(128) %1, i8 1, i64 118)
  call void @_ZN4llvm6MCInst10addOperandENS_9MCOperandE(ptr noundef nonnull align 8 dereferenceable(128) %1, i8 %.sroa.01017.0.copyload, i64 %.sroa.41019.0.copyload)
  br label %bb.el

bb.g:                                             ; preds = %"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673", %"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673", %"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673", %"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673", %"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673", %"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673", %"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673", %"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673", %"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673", %"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673"
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !92
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !571 ; 2 uses
  %i.ca = zext i32 %i.bx to i64
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !123
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !92
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !123
  %.not645 = icmp eq i16 %i.cc, %i.ch
  br i1 %.not645, label %bb.el, label %bb.en

bb.h:                                             ; preds = %"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673"
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !92
  %i.cm = call noundef ptr @_ZN4llvm14MCConstantExpr6createElRNS_9MCContextEbj(i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(2208) %i.n, i1 noundef zeroext false, i32 noundef 0) #22
  %i.cn = call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 18, ptr noundef %i.cl, ptr noundef %i.cm, ptr noundef nonnull align 8 dereferenceable(2208) %i.n, ptr null) #22
  %i.co = call noundef ptr @_ZN4llvm13HexagonMCExpr6createEPKNS_6MCExprERNS_9MCContextE(ptr noundef %i.cn, ptr noundef nonnull align 8 dereferenceable(2208) %i.n) #22 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %spec.select = select i1 %i.cp, ptr null, ptr %i.cq
  store ptr %spec.select, ptr %i.ck, align 8, !tbaa !92
  store i32 1230, ptr %1, align 8, !tbaa !48
  br label %bb.el

bb.i:                                             ; preds = %"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673"
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 40 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !92
  %i.cv = call noundef zeroext i1 @_ZNK4llvm6MCExpr18evaluateAsAbsoluteERl(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #22 ; 0 uses
  %i.cw = load i64, ptr %i.a, align 8, !tbaa !50
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.cy = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %16, i8 0, i64 16, i1 false)
  store ptr %i.cz, ptr %i.cy, align 8, !tbaa !24
  %i.da = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i32 0, ptr %i.da, align 8, !tbaa !30
  %i.db = getelementptr inbounds nuw i8, ptr %16, i64 28
  store i32 6, ptr %i.db, align 4, !tbaa !31
  %i.dc = load ptr, ptr %i.cr, align 8, !tbaa !24 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  store i32 1226, ptr %16, align 8, !tbaa !48
  %.sroa.0390.0.copyload = load i8, ptr %i.dc, align 8, !tbaa !125
  %.sroa.2392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.sroa.2392.0.copyload = load i64, ptr %.sroa.2392.0..sroa_idx, align 8, !tbaa !92
  call void @_ZN4llvm6MCInst10addOperandENS_9MCOperandE(ptr noundef nonnull align 8 dereferenceable(128) %16, i8 %.sroa.0390.0.copyload, i64 %.sroa.2392.0.copyload)
  %.sroa.0387.0.copyload = load i8, ptr %i.dd, align 8, !tbaa !125
  %.sroa.2389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 24 ; 2 uses
  %.sroa.2389.0.copyload = load i64, ptr %.sroa.2389.0..sroa_idx, align 8, !tbaa !92
  call void @_ZN4llvm6MCInst10addOperandENS_9MCOperandE(ptr noundef nonnull align 8 dereferenceable(128) %16, i8 %.sroa.0387.0.copyload, i64 %.sroa.2389.0.copyload)
  %.sroa.0384.0.copyload = load i8, ptr %i.dd, align 8, !tbaa !125
  %.sroa.2386.0.copyload = load i64, ptr %.sroa.2389.0..sroa_idx, align 8, !tbaa !92
  call void @_ZN4llvm6MCInst10addOperandENS_9MCOperandE(ptr noundef nonnull align 8 dereferenceable(128) %16, i8 %.sroa.0384.0.copyload, i64 %.sroa.2386.0.copyload)
  %i.de = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4llvm6MCInstaSERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %16) ; 0 uses
  %i.df = load ptr, ptr %i.cy, align 8, !tbaa !24 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.cz
  br i1 %i.dg, label %_ZN4llvm6MCInstD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.df) #22
  br label %_ZN4llvm6MCInstD2Ev.exit

_ZN4llvm6MCInstD2Ev.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.dh = load ptr, ptr %i.ct, align 8, !tbaa !92
  %i.di = call noundef ptr @_ZN4llvm14MCConstantExpr6createElRNS_9MCContextEbj(i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(2208) %i.n, i1 noundef zeroext false, i32 noundef 0) #22
  %i.dj = call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 18, ptr noundef %i.dh, ptr noundef %i.di, ptr noundef nonnull align 8 dereferenceable(2208) %i.n, ptr null) #22
  %i.dk = call noundef ptr @_ZN4llvm13HexagonMCExpr6createEPKNS_6MCExprERNS_9MCContextE(ptr noundef %i.dj, ptr noundef nonnull align 8 dereferenceable(2208) %i.n) #22 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %spec.select7 = select i1 %i.dl, ptr null, ptr %i.dm
  store ptr %spec.select7, ptr %i.ct, align 8, !tbaa !92
  store i32 1233, ptr %1, align 8, !tbaa !48
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN4llvm6MCInstD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.el

bb.n:                                             ; preds = %"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673"
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !24
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !92
  %i.dr = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !571
  %i.dt = zext i32 %i.dq to i64
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !123
  %i.dw = zext i16 %i.dv to i64                   ; 2 uses
  %.sroa.0.0.insert.ext.i.i = add nuw nsw i64 %i.dw, 1
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i64 %i.dw, 32
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.dx = call fastcc range(i64 0, 1705102017024) i64 @"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEENK3$_0clESt4pairIjjE"(ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ae, i64 %.sroa.0.0.insert.insert.i.i) ; 2 uses
  %.sroa.0380.0.extract.trunc = trunc i64 %i.dx to i32
  %.sroa.4381.0.extract.shift = lshr i64 %i.dx, 32
  store i32 %.sroa.0380.0.extract.trunc, ptr %i.dp, align 8, !tbaa !92
  call void @_ZN4llvm6MCInst10addOperandENS_9MCOperandE(ptr noundef nonnull align 8 dereferenceable(128) %1, i8 1, i64 %.sroa.4381.0.extract.shift)
  store i32 975, ptr %1, align 8, !tbaa !48
  br label %bb.el

bb.o:                                             ; preds = %"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673", %"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673"
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !92
  %i.ec = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !571
  %i.ee = zext i32 %i.eb to i64
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !123
  %i.eh = zext i16 %i.eg to i64                   ; 2 uses
  %.sroa.0.0.insert.ext.i.i674 = add nuw nsw i64 %i.eh, 1
  %.sroa.2.0.insert.shift.i.i675 = shl nuw nsw i64 %i.eh, 32
  %.sroa.0.0.insert.insert.i.i676 = or disjoint i64 %.sroa.2.0.insert.shift.i.i675, %.sroa.0.0.insert.ext.i.i674
  %i.ei = call fastcc range(i64 0, 1705102017024) i64 @"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEENK3$_0clESt4pairIjjE"(ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ae, i64 %.sroa.0.0.insert.insert.i.i676) ; 2 uses
  %.sroa.0371.0.extract.trunc = trunc i64 %i.ei to i32
  %.sroa.4372.0.extract.shift = lshr i64 %i.ei, 32 ; 2 uses
  store i32 %.sroa.0371.0.extract.trunc, ptr %i.ea, align 8, !tbaa !92
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !30 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.em = load i32, ptr %i.el, align 4, !tbaa !31
  %.not.i.i = icmp ult i32 %i.ek, %i.em
  br i1 %.not.i.i, label %bb.q, label %bb.p, !prof !89

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i8 1, i64 %.sroa.4372.0.extract.shift)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.q:                                             ; preds = %bb.o
  %i.en = zext i32 %i.ek to i64
  %i.eo = load ptr, ptr %i.dy, align 8, !tbaa !24
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %i.en ; 2 uses
  store i8 1, ptr %i.ep, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i64 %.sroa.4372.0.extract.shift, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.eq = load i32, ptr %i.ej, align 8, !tbaa !30
  %i.er = add i32 %i.eq, 1
  store i32 %i.er, ptr %i.ej, align 8, !tbaa !30
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit:  ; preds = %bb.p, %bb.q
  %i.es = load i32, ptr %1, align 8, !tbaa !48
  %i.et = icmp eq i32 %i.es, 341
  %i.eu = select i1 %i.et, i32 1221, i32 1218
  store i32 %i.eu, ptr %1, align 8, !tbaa !48
  br label %bb.el

bb.r:                                             ; preds = %"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673", %"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673"
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !24
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 40 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !92
  %i.ez = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !571
  %i.fb = zext i32 %i.ey to i64
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !123
  %i.fe = zext i16 %i.fd to i64                   ; 2 uses
  %.sroa.0.0.insert.ext.i.i678 = add nuw nsw i64 %i.fe, 1
  %.sroa.2.0.insert.shift.i.i679 = shl nuw nsw i64 %i.fe, 32
  %.sroa.0.0.insert.insert.i.i680 = or disjoint i64 %.sroa.2.0.insert.shift.i.i679, %.sroa.0.0.insert.ext.i.i678
  %i.ff = call fastcc range(i64 0, 1705102017024) i64 @"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEENK3$_0clESt4pairIjjE"(ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ae, i64 %.sroa.0.0.insert.insert.i.i680) ; 2 uses
  %.sroa.0362.0.extract.trunc = trunc i64 %i.ff to i32
  %.sroa.4363.0.extract.shift = lshr i64 %i.ff, 32 ; 2 uses
  store i32 %.sroa.0362.0.extract.trunc, ptr %i.ex, align 8, !tbaa !92
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !30 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !31
  %.not.i.i682 = icmp ult i32 %i.fh, %i.fj
  br i1 %.not.i.i682, label %bb.t, label %bb.s, !prof !89

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i8 1, i64 %.sroa.4363.0.extract.shift)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit684

bb.t:                                             ; preds = %bb.r
  %i.fk = zext i32 %i.fh to i64
  %i.fl = load ptr, ptr %i.ev, align 8, !tbaa !24
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.fl, i64 %i.fk ; 2 uses
  store i8 1, ptr %i.fm, align 1
  %.sroa.4.0..sroa_idx.i.i683 = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i64 %.sroa.4363.0.extract.shift, ptr %.sroa.4.0..sroa_idx.i.i683, align 1
  %i.fn = load i32, ptr %i.fg, align 8, !tbaa !30
  %i.fo = add i32 %i.fn, 1
  store i32 %i.fo, ptr %i.fg, align 8, !tbaa !30
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit684

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit684: ; preds = %bb.s, %bb.t
  %i.fp = load i32, ptr %1, align 8, !tbaa !48
  %i.fq = icmp eq i32 %i.fp, 342
  %i.fr = select i1 %i.fq, i32 1220, i32 1219
  store i32 %i.fr, ptr %1, align 8, !tbaa !48
  br label %bb.el

bb.u:                                             ; preds = %"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673"
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !24
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !92
  %i.fw = call i64 @_ZN4llvm18HexagonMCInstrInfo20GetVecRegPairIndicesENS_10MCRegisterE(i32 %i.fv) #22
  %i.fx = call fastcc range(i64 0, 1705102017024) i64 @"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEENK3$_0clESt4pairIjjE"(ptr noundef nonnull readonly align 8 dereferenceable(40) %10, i64 %i.fw) ; 2 uses
  %.sroa.0354.0.extract.trunc = trunc i64 %i.fx to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.fx, 32
  store i32 %.sroa.0354.0.extract.trunc, ptr %i.fu, align 8, !tbaa !92
  call void @_ZN4llvm6MCInst10addOperandENS_9MCOperandE(ptr noundef nonnull align 8 dereferenceable(128) %1, i8 1, i64 %.sroa.4.0.extract.shift)
  store i32 2920, ptr %1, align 8, !tbaa !48
  br label %bb.el

bb.v:                                             ; preds = %"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673"
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673"
  %.0628 = phi i1 [ true, %bb.v ], [ false, %"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEEN3$_0C2ERKSE_.exit673" ] ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !77, !nonnull !22, !align !52 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 104
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = call noundef zeroext i1 %i.gc(ptr noundef nonnull align 8 dereferenceable(304) %i.fz) #22
  br i1 %i.gd, label %bb.el, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ge = load ptr, ptr %i.l, align 8, !tbaa !51, !nonnull !22, !align !52
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !77, !nonnull !22, !align !52 ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !24 ; 3 uses
  call void @_ZN4llvm10MCStreamer11pushSectionEv(ptr noundef nonnull align 8 dereferenceable(304) %i.gg)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.gj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.gj, ptr %17, align 8, !tbaa !88
  %i.gk = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.gk, align 8, !tbaa !95
  store i8 0, ptr %i.gj, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 24 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !92
  %i.gn = call noundef zeroext i1 @_ZNK4llvm6MCExpr18evaluateAsAbsoluteERl(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #22 ; 2 uses
  br i1 %i.gn, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  br i1 %.0628, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.go = load i64, ptr %i.b, align 8, !tbaa !50
  %i.gp = and i64 %i.go, 4294967295
  call void @_ZN4llvm9utohexstrB5cxx11Embj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, i64 noundef %i.gp, i1 noundef zeroext false, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.gq = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !95
  %i.gs = sub i64 31, %i.gr
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.gs, i64 31)
  store ptr @.str.399, ptr %21, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %.sroa.speculated.i.i, ptr %i.gt, align 8
  call void @_ZNK4llvm9StringRef3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(16) %21)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %18)
  %i.gu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %19) #22 ; 0 uses
  %i.gv = load ptr, ptr %19, align 8, !tbaa !94   ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.z
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !92
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ha = load ptr, ptr %20, align 8, !tbaa !94   ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit688, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i686

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i686: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hd = load i64, ptr %i.hb, align 8, !tbaa !92
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.he) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit688

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit688: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i686
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.hf = load ptr, ptr %18, align 8, !tbaa !94   ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit691, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i689

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i689: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit688
  %i.hi = load i64, ptr %i.hg, align 8, !tbaa !92
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit691

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit691: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit688, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i689
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.hk = load i64, ptr %i.b, align 8, !tbaa !50
  call void @_ZN4llvm9utohexstrB5cxx11Embj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, i64 noundef %i.hk, i1 noundef zeroext false, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.hl = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !95
  %i.hn = sub i64 39, %i.hm
  %.sroa.speculated.i.i692 = call i64 @llvm.umin.i64(i64 %i.hn, i64 39)
  store ptr @.str.400, ptr %25, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %.sroa.speculated.i.i692, ptr %i.ho, align 8
  call void @_ZNK4llvm9StringRef3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull align 8 dereferenceable(16) %25)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %22)
  %i.hp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %23) #22 ; 0 uses
  %i.hq = load ptr, ptr %23, align 8, !tbaa !94   ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit697, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i695

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i695: ; preds = %bb.aa
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !92
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit697

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit697: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i695
  %i.hv = load ptr, ptr %24, align 8, !tbaa !94   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit697
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !92
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit697, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.ia = load ptr, ptr %22, align 8, !tbaa !94   ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i701

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i701: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700
  %i.id = load i64, ptr %i.ib, align 8, !tbaa !92
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.ie) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i701
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit691
  %i.if = load ptr, ptr %i.o, align 8, !tbaa !80
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !106, !nonnull !22, !align !52
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  %i.ii = getelementptr inbounds nuw i8, ptr %26, i64 32
  store i8 4, ptr %i.ii, align 8, !tbaa !105
  %i.ij = getelementptr inbounds nuw i8, ptr %26, i64 33
  store i8 1, ptr %i.ij, align 1, !tbaa !104
  store ptr %17, ptr %26, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ik = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i16 257, ptr %i.ik, align 8
  %i.il = call noundef ptr @_ZN4llvm9MCContext13getELFSectionERKNS_5TwineEjjjS3_bjPKNS_11MCSymbolELFE(ptr noundef nonnull align 8 dereferenceable(2208) %i.ih, ptr noundef nonnull align 8 dereferenceable(34) %26, i32 noundef 1, i32 noundef 3, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(34) %5, i1 noundef zeroext false, i32 noundef -1, ptr noundef null) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x
  %i.im = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.401) ; 0 uses
  %i.in = load ptr, ptr %i.o, align 8, !tbaa !80
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !106, !nonnull !22, !align !52
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  %i.iq = getelementptr inbounds nuw i8, ptr %27, i64 32
  store i8 4, ptr %i.iq, align 8, !tbaa !105
  %i.ir = getelementptr inbounds nuw i8, ptr %27, i64 33
  store i8 1, ptr %i.ir, align 1, !tbaa !104
  store ptr %17, ptr %27, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.is = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i16 257, ptr %i.is, align 8
  %i.it = call noundef ptr @_ZN4llvm9MCContext13getELFSectionERKNS_5TwineEjjjS3_bjPKNS_11MCSymbolELFE(ptr noundef nonnull align 8 dereferenceable(2208) %i.ip, ptr noundef nonnull align 8 dereferenceable(34) %27, i32 noundef 1, i32 noundef 3, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(34) %4, i1 noundef zeroext false, i32 noundef -1, ptr noundef null) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0636 = phi ptr [ %i.il, %bb.ab ], [ %i.it, %bb.ac ]
end_hunk_0
begin_hunk_1_@_ZN4llvm6utostrB5cxx11Emb:bb.a

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.111 = phi ptr [ %i.i, %.lr.ph ], [ %i.c, %bb.a ]
  %.0810 = phi i64 [ %i.j, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.f = urem i64 %.0810, 10
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = or disjoint i8 %i.g, 48
  %i.i = getelementptr inbounds i8, ptr %.111, i64 -1 ; 3 uses
  store i8 %i.h, ptr %i.i, align 1, !tbaa !92
  %i.j = udiv i64 %.0810, 10
  %.not = icmp ult i64 %.0810, 10
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !6

._crit_edge:                                      ; preds = %.lr.ph, %.thread
  %.1.lcssa = phi ptr [ %i.e, %.thread ], [ %i.i, %.lr.ph ] ; 2 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds i8, ptr %.1.lcssa, i64 -1 ; 2 uses
  store i8 45, ptr %i.k, align 1, !tbaa !92
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.2 = phi ptr [ %i.k, %bb.b ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.m, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.n = ptrtoint ptr %i.c to i64
  %i.o = ptrtoint ptr %.2 to i64
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  store i64 %i.p, ptr %i.a, align 8, !tbaa !50
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !94
  %i.s = load i64, ptr %i.a, align 8, !tbaa !50
  store i64 %i.s, ptr %i.l, align 8, !tbaa !92
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.t = phi ptr [ %i.r, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  switch i64 %i.p, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.u = load i8, ptr %.2, align 1, !tbaa !92
  store i8 %i.u, ptr %i.t, align 1, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %.2, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.v = load i64, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  store i64 %i.v, ptr %i.m, align 8, !tbaa !95
  %i.w = load ptr, ptr %0, align 8, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store i8 0, ptr %i.x, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !95   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !95   ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !94     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !92
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = load ptr, ptr %2, align 8, !tbaa !94
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.p = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8, !tbaa !92
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13 ]
  %.not = icmp ugt i64 %i.e, %i.r
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) #22 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !88
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !94   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !95   ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.u, ptr %0, align 8, !tbaa !94
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !92
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !95
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !95
  store ptr %i.v, ptr %i.s, align 8, !tbaa !94
  store i64 0, ptr %i.ac, align 8, !tbaa !95
  store i8 0, ptr %i.v, align 8, !tbaa !92
  br label %bb.g

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.af = sub i64 4611686018427387903, %i.b
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.403) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d
  %i.ah = load ptr, ptr %2, align 8, !tbaa !94
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ah, i64 noundef %i.d) #22 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !88
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !94 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !95 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.ak, ptr %0, align 8, !tbaa !94
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !92
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !95
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !95
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !94
  store i64 0, ptr %i.as, align 8, !tbaa !95
  store i8 0, ptr %i.al, align 8, !tbaa !92
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc range(i64 0, 1705102017024) i64 @"_ZZN12_GLOBAL__N_116HexagonAsmParser18processInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS1_5SMLocEENK3$_0clESt4pairIjjE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [21 x i8], align 16               ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca [21 x i8], align 16               ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.2.0.extract.shift = lshr i64 %1, 32      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.f = and i64 %1, 4294967295                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22, !noalias !603
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 21 ; 2 uses
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 2 uses
  store i8 48, ptr %i.i, align 4, !tbaa !92, !noalias !603
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.111.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.g, %bb.a ]
  %.0810.i = phi i64 [ %i.n, %.lr.ph.i ], [ %i.f, %bb.a ] ; 3 uses
  %i.j = urem i64 %.0810.i, 10
  %i.k = trunc nuw nsw i64 %i.j to i8
  %i.l = or disjoint i8 %i.k, 48
  %i.m = getelementptr inbounds i8, ptr %.111.i, i64 -1 ; 3 uses
  store i8 %i.l, ptr %i.m, align 1, !tbaa !92, !noalias !603
  %i.n = udiv i64 %.0810.i, 10
  %.not.i = icmp samesign ult i64 %.0810.i, 10
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !6

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.thread.i
  %.1.lcssa.i = phi ptr [ %i.i, %.thread.i ], [ %i.m, %.lr.ph.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !88, !alias.scope !603
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.p, align 8, !tbaa !95, !alias.scope !603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22, !noalias !603
  %i.q = ptrtoint ptr %i.g to i64
  %i.r = ptrtoint ptr %.1.lcssa.i to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  store i64 %i.s, ptr %i.c, align 8, !tbaa !50, !noalias !603
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %._crit_edge.i
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #22 ; 2 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !94, !alias.scope !603
  %i.v = load i64, ptr %i.c, align 8, !tbaa !50, !noalias !603
  store i64 %i.v, ptr %i.o, align 8, !tbaa !92, !alias.scope !603
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.b, %._crit_edge.i
  %i.w = phi ptr [ %i.u, %bb.b ], [ %i.o, %._crit_edge.i ] ; 2 uses
  switch i64 %i.s, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN4llvm6utostrB5cxx11Emb.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load i8, ptr %.1.lcssa.i, align 1, !tbaa !92, !noalias !603
  store i8 %i.x, ptr %i.w, align 1, !tbaa !92
  br label %_ZN4llvm6utostrB5cxx11Emb.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %.1.lcssa.i, i64 %i.s, i1 false)
  br label %_ZN4llvm6utostrB5cxx11Emb.exit

_ZN4llvm6utostrB5cxx11Emb.exit:                   ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.y = load i64, ptr %i.c, align 8, !tbaa !50, !noalias !603 ; 2 uses
  store i64 %i.y, ptr %i.p, align 8, !tbaa !95, !alias.scope !603
  %i.z = load ptr, ptr %3, align 8, !tbaa !94, !alias.scope !603
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 0, ptr %i.aa, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22, !noalias !603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22, !noalias !603
  call void @llvm.experimental.noalias.scope.decl(metadata !604)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !95, !noalias !604
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !94, !noalias !604
  %i.ae = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.ad, i64 noundef %i.ac) #22, !noalias !604 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.af, ptr %2, align 8, !tbaa !88, !alias.scope !604
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !94 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %_ZN4llvm6utostrB5cxx11Emb.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !95 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm6utostrB5cxx11Emb.exit
  store ptr %i.ag, ptr %2, align 8, !tbaa !94, !alias.scope !604
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !92
  store i64 %i.an, ptr %i.af, align 8, !tbaa !92, !alias.scope !604
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !95
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ao = phi i64 [ %i.ak, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !95, !alias.scope !604
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !94
  store i64 0, ptr %i.ap, align 8, !tbaa !95
  store i8 0, ptr %i.ah, align 8, !tbaa !92
  %i.ar = load ptr, ptr %3, align 8, !tbaa !94    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.o
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.at = load i64, ptr %i.o, align 8, !tbaa !92
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22, !noalias !605
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 21 ; 2 uses
  %i.aw = icmp eq i64 %.sroa.2.0.extract.shift, 0
  br i1 %i.aw, label %.thread.i10, label %.lr.ph.i3

.thread.i10:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  store i8 48, ptr %i.ax, align 4, !tbaa !92, !noalias !605
  br label %._crit_edge.i7

.lr.ph.i3:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.lr.ph.i3
  %.111.i4 = phi ptr [ %i.bb, %.lr.ph.i3 ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.0810.i5 = phi i64 [ %i.bc, %.lr.ph.i3 ], [ %.sroa.2.0.extract.shift, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.ay = urem i64 %.0810.i5, 10
  %i.az = trunc nuw nsw i64 %i.ay to i8
  %i.ba = or disjoint i8 %i.az, 48
  %i.bb = getelementptr inbounds i8, ptr %.111.i4, i64 -1 ; 3 uses
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !92, !noalias !605
  %i.bc = udiv i64 %.0810.i5, 10
  %.not.i6 = icmp samesign ult i64 %.0810.i5, 10
  br i1 %.not.i6, label %._crit_edge.i7, label %.lr.ph.i3, !llvm.loop !6

._crit_edge.i7:                                   ; preds = %.lr.ph.i3, %.thread.i10
  %.1.lcssa.i8 = phi ptr [ %i.ax, %.thread.i10 ], [ %i.bb, %.lr.ph.i3 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.bd, ptr %5, align 8, !tbaa !88, !alias.scope !605
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.be, align 8, !tbaa !95, !alias.scope !605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !605
  %i.bf = ptrtoint ptr %i.av to i64
  %i.bg = ptrtoint ptr %.1.lcssa.i8 to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 4 uses
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !50, !noalias !605
  %i.bi = icmp ugt i64 %i.bh, 15
  br i1 %i.bi, label %bb.f, label %._crit_edge.i.i.i9

bb.f:                                             ; preds = %._crit_edge.i7
  %i.bj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22 ; 2 uses
  store ptr %i.bj, ptr %5, align 8, !tbaa !94, !alias.scope !605
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !50, !noalias !605
  store i64 %i.bk, ptr %i.bd, align 8, !tbaa !92, !alias.scope !605
  br label %._crit_edge.i.i.i9

._crit_edge.i.i.i9:                               ; preds = %bb.f, %._crit_edge.i7
  %i.bl = phi ptr [ %i.bj, %bb.f ], [ %i.bd, %._crit_edge.i7 ] ; 2 uses
  switch i64 %i.bh, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZN4llvm6utostrB5cxx11Emb.exit11
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i9
  %i.bm = load i8, ptr %.1.lcssa.i8, align 1, !tbaa !92, !noalias !605
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !92
  br label %_ZN4llvm6utostrB5cxx11Emb.exit11

bb.h:                                             ; preds = %._crit_edge.i.i.i9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr nonnull align 1 %.1.lcssa.i8, i64 %i.bh, i1 false)
  br label %_ZN4llvm6utostrB5cxx11Emb.exit11

_ZN4llvm6utostrB5cxx11Emb.exit11:                 ; preds = %._crit_edge.i.i.i9, %bb.g, %bb.h
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !50, !noalias !605 ; 2 uses
  store i64 %i.bn, ptr %i.be, align 8, !tbaa !95, !alias.scope !605
  %i.bo = load ptr, ptr %5, align 8, !tbaa !94, !alias.scope !605
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store i8 0, ptr %i.bp, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !605
end_hunk_1
