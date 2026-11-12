Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMAsmParser?download=true
inline.NumInlined: 13951
inline.NumDeleted: 2231
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN12_GLOBAL__N_112ARMAsmParser19validateInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEEj:bb.a
  %54 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %55 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %56 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %57 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %58 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %59 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %60 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %61 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %62 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %63 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %64 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %65 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %66 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %67 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %68 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %69 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %70 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %71 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %72 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %73 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %74 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %75 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %76 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %77 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %78 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %79 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %80 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %81 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %82 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %83 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %84 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %85 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %86 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %87 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %88 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %89 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %90 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %91 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %92 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %93 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %94 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %95 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !359, !nonnull !46, !align !78
  %i.g = load i32, ptr %1, align 8, !tbaa !366
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !369
  %i.i = zext i32 %i.g to i64
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds [32 x i8], ptr %i.h, i64 %i.j ; 28 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !39
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call ptr %i.p(ptr noundef nonnull align 8 dereferenceable(48) %i.m) #29 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 452 ; 3 uses
  %.val803 = load i32, ptr %i.r, align 4, !tbaa !319 ; 2 uses
  %.not1392 = icmp eq i32 %.val803, -1
  br i1 %.not1392, label %_ZL16instIsBreakpointRKN4llvm6MCInstE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val807 = load i32, ptr %1, align 8, !tbaa !366
  switch i32 %.val807, label %_ZL16instIsBreakpointRKN4llvm6MCInstE.exit [
    i32 4458, label %_ZL16instIsBreakpointRKN4llvm6MCInstE.exit.thread
    i32 843, label %_ZL16instIsBreakpointRKN4llvm6MCInstE.exit.thread
    i32 4475, label %_ZL16instIsBreakpointRKN4llvm6MCInstE.exit.thread
    i32 924, label %_ZL16instIsBreakpointRKN4llvm6MCInstE.exit.thread
  ]

_ZL16instIsBreakpointRKN4llvm6MCInstE.exit:       ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !371
  %i.u = and i64 %i.t, 4194304
  %.not1399 = icmp eq i64 %i.u, 0
  br i1 %.not1399, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZL16instIsBreakpointRKN4llvm6MCInstE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.w, align 1, !tbaa !85
  store ptr @.str.949, ptr %4, align 8, !tbaa !60
  store i8 3, ptr %i.v, align 8, !tbaa !84
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val888 = load ptr, ptr %i.x, align 8, !tbaa !123
  %i.y = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val888, ptr %i.q, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr null, ptr null) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %.thread1288

bb.d:                                             ; preds = %_ZL16instIsBreakpointRKN4llvm6MCInstE.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !372 ; 2 uses
  %.not12.i = icmp eq i16 %i.aa, 0
  br i1 %.not12.i, label %_ZNK4llvm11MCInstrDesc23findFirstPredOperandIdxEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.ab = load i32, ptr %i.k, align 8, !tbaa !373
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !374
  %i.ag = zext i16 %i.af to i64
  %i.ah = getelementptr inbounds nuw [6 x i8], ptr %i.ad, i64 %i.ag
  %i.ai = zext i16 %i.aa to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [6 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 34
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !376
  %i.am = and i8 %i.al, 2
  %.not11.i = icmp eq i8 %i.am, 0
  br i1 %.not11.i, label %bb.f, label %_ZNK4llvm11MCInstrDesc23findFirstPredOperandIdxEv.exit

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.ai
  br i1 %.not.i, label %_ZNK4llvm11MCInstrDesc23findFirstPredOperandIdxEv.exit, label %bb.e, !llvm.loop !9

_ZNK4llvm11MCInstrDesc23findFirstPredOperandIdxEv.exit: ; preds = %bb.e, %bb.f, %bb.d
  %.1.i = phi i64 [ 4294967295, %bb.d ], [ %indvars.iv.i, %bb.e ], [ 4294967295, %bb.f ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !39
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %.1.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !60 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 444 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.av = load i8, ptr %i.au, align 8
  %i.aw = and i8 %i.av, 15
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = sub i32 5, %.val803
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = and i32 %i.az, %i.ax
  %.not.i957 = icmp eq i32 %i.ba, 0
  %i.bb = load i32, ptr %i.at, align 4, !tbaa !377 ; 2 uses
  br i1 %.not.i957, label %_ZN12_GLOBAL__N_112ARMAsmParser13currentITCondEv.exit, label %switch.lookup

switch.lookup:                                    ; preds = %_ZNK4llvm11MCInstrDesc23findFirstPredOperandIdxEv.exit
  %i.bc = zext nneg i32 %i.bb to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_112ARMAsmParser15convertToMCInstEjRN4llvm6MCInstEjRKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEERKNS1_14SmallBitVectorENS1_8ArrayRefIjEE, i64 %i.bc
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN12_GLOBAL__N_112ARMAsmParser13currentITCondEv.exit

_ZN12_GLOBAL__N_112ARMAsmParser13currentITCondEv.exit: ; preds = %switch.lookup, %_ZNK4llvm11MCInstrDesc23findFirstPredOperandIdxEv.exit
  %i.bd = phi i32 [ %switch.ext, %switch.lookup ], [ %i.bb, %_ZNK4llvm11MCInstrDesc23findFirstPredOperandIdxEv.exit ]
  %.not = icmp eq i32 %i.bd, %i.as
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_112ARMAsmParser13currentITCondEv.exit
  %i.be = load ptr, ptr %2, align 8, !tbaa !39
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !49 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !34
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(48) %i.bf) #29 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !61 ; 2 uses
  %i.bm = icmp ugt i32 %i.bl, 1
  br i1 %i.bm, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %bb.g
  %.sroa.0293.0.lcssa = phi ptr [ %i.bj, %bb.g ], [ %.sroa.0293.1, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.bn = and i64 %i.ar, 4294967295
  %switch.gep1528 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN12_GLOBAL__N_112ARMAsmParser19validateInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEEj.379, i64 %i.bn
  %switch.load1529 = load ptr, ptr %switch.gep1528, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 3, ptr %i.bo, align 8, !tbaa !84, !alias.scope !1193
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 5, ptr %i.bp, align 1, !tbaa !85, !alias.scope !1193
  store ptr @.str.950, ptr %8, align 8, !tbaa !60, !alias.scope !1193
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %switch.load1529, ptr %i.bq, align 8, !tbaa !60, !alias.scope !1193
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 2, ptr %i.br, align 8, !tbaa !60, !alias.scope !1193
  store ptr %8, ptr %7, align 8, !alias.scope !1194
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @.str.951, ptr %i.bs, align 8, !alias.scope !1194
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 2, ptr %i.bt, align 8, !tbaa !84, !alias.scope !1194
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 3, ptr %i.bu, align 1, !tbaa !85, !alias.scope !1194
  %i.bv = load i8, ptr %i.au, align 8
  %i.bw = and i8 %i.bv, 15
  %i.bx = zext nneg i8 %i.bw to i32
  %i.by = load i32, ptr %i.r, align 4, !tbaa !319
  %i.bz = sub i32 5, %i.by
  %i.ca = shl nuw i32 1, %i.bz
  %i.cb = and i32 %i.ca, %i.bx
  %.not.i959 = icmp eq i32 %i.cb, 0
  %i.cc = load i32, ptr %i.at, align 4, !tbaa !377
  %switch.table._ZN12_GLOBAL__N_112ARMAsmParser19validateInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEEj.379.switch.table._ZN12_GLOBAL__N_112ARMAsmParser19validateInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEEj.378 = select i1 %.not.i959, ptr @switch.table._ZN12_GLOBAL__N_112ARMAsmParser19validateInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEEj.379, ptr @switch.table._ZN12_GLOBAL__N_112ARMAsmParser19validateInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEEj.378
  %96 = zext nneg i32 %i.cc to i64
  %switch.gep1531 = getelementptr inbounds nuw [8 x i8], ptr %switch.table._ZN12_GLOBAL__N_112ARMAsmParser19validateInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEEj.379.switch.table._ZN12_GLOBAL__N_112ARMAsmParser19validateInstructionERN4llvm6MCInstERKNS1_15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS6_EEEEj.378, i64 %96
  %.0.i961 = load ptr, ptr %switch.gep1531, align 8 ; 2 uses
  %i.cd = load i8, ptr %.0.i961, align 1, !tbaa !60
  %.not.i963 = icmp eq i8 %i.cd, 0
  br i1 %.not.i963, label %_ZN4llvmplERKNS_5TwineES2_.exit978, label %_ZN4llvmplERKNS_5TwineES2_.exit978.thread

_ZN4llvmplERKNS_5TwineES2_.exit978.thread:        ; preds = %._crit_edge
  store ptr %7, ptr %6, align 8, !alias.scope !1195
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.0.i961, ptr %i.ce, align 8, !alias.scope !1195
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.cf, align 8, !tbaa !84, !alias.scope !1195
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.cg, align 1, !tbaa !85, !alias.scope !1195
  br label %bb.i

_ZN4llvmplERKNS_5TwineES2_.exit978:               ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !97
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.pre1485 = load i8, ptr %.phi.trans.insert, align 8, !tbaa !84, !noalias !1196 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  switch i8 %.pre1485, label %bb.i [
    i8 0, label %bb.l
    i8 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit978
  store ptr @.str.78, ptr %5, align 8
  br label %bb.l

bb.i:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit978.thread, %_ZN4llvmplERKNS_5TwineES2_.exit978
  %i.ch = phi i8 [ 2, %_ZN4llvmplERKNS_5TwineES2_.exit978.thread ], [ %.pre1485, %_ZN4llvmplERKNS_5TwineES2_.exit978 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 33
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !85, !noalias !1196
  %i.ck = icmp eq i8 %i.cj, 1                     ; 3 uses
  %.sroa.05.0.copyload.i.i980 = load ptr, ptr %6, align 8, !noalias !1196
  %.sroa.56.0..sroa_idx.i.i981 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.56.0.copyload.i.i982 = load i64, ptr %.sroa.56.0..sroa_idx.i.i981, align 8, !noalias !1196
  %.014.i.i983 = select i1 %i.ck, i8 %i.ch, i8 2
  %.sroa.05.0.i.i984 = select i1 %i.ck, ptr %.sroa.05.0.copyload.i.i980, ptr %6
  %.sroa.56.0.i.i985 = select i1 %i.ck, i64 %.sroa.56.0.copyload.i.i982, i64 undef
  store ptr %.sroa.05.0.i.i984, ptr %5, align 8, !alias.scope !1196
  %.sroa.23.0..sroa_idx.i.i.i992 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.sroa.56.0.i.i985, ptr %.sroa.23.0..sroa_idx.i.i.i992, align 8, !tbaa !60, !alias.scope !1196
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.78, ptr %i.cl, align 8, !alias.scope !1196
  br label %bb.l

.lr.ph:                                           ; preds = %bb.g, %bb.k
  %i.cm = phi i32 [ %i.cw, %bb.k ], [ %i.bl, %bb.g ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 1, %bb.g ] ; 2 uses
  %.sroa.0293.01428 = phi ptr [ %.sroa.0293.1, %bb.k ], [ %i.bj, %bb.g ]
  %i.cn = load ptr, ptr %2, align 8, !tbaa !39
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !49 ; 3 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 48
  %.val801 = load i32, ptr %i.cq, align 8, !tbaa !71
  %i.cr = icmp eq i32 %.val801, 0
  br i1 %i.cr, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.cs = load ptr, ptr %i.cp, align 8, !tbaa !34
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = tail call ptr %i.cu(ptr noundef nonnull align 8 dereferenceable(48) %i.cp) #29
  %.pre = load i32, ptr %i.bk, align 8, !tbaa !61
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.j
  %i.cw = phi i32 [ %.pre, %bb.j ], [ %i.cm, %.lr.ph ] ; 2 uses
  %.sroa.0293.1 = phi ptr [ %i.cv, %bb.j ], [ %.sroa.0293.01428, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cx = zext i32 %i.cw to i64
  %i.cy = icmp samesign ult i64 %indvars.iv.next, %i.cx
  br i1 %i.cy, label %.lr.ph, label %._crit_edge, !llvm.loop !1174

bb.l:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit978, %bb.i, %bb.h
  %.014.i.i983.sink = phi i8 [ %.014.i.i983, %bb.i ], [ 3, %bb.h ], [ %.pre1485, %_ZN4llvmplERKNS_5TwineES2_.exit978 ]
  %.sink = phi i8 [ 3, %bb.i ], [ 1, %bb.h ], [ 1, %_ZN4llvmplERKNS_5TwineES2_.exit978 ]
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 %.014.i.i983.sink, ptr %i.cz, align 8, !tbaa !96
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 %.sink, ptr %i.da, align 1, !tbaa !96
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val887 = load ptr, ptr %i.db, align 8, !tbaa !123
  %i.dc = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val887, ptr %.sroa.0293.0.lcssa, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr null, ptr null) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %.thread1288

_ZL16instIsBreakpointRKN4llvm6MCInstE.exit.thread: ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.a
  %i.dd = tail call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm17MCTargetAsmParser6getSTIEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #29
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 264
  %i.df = load i64, ptr %i.de, align 8, !tbaa !59
  %i.dg = and i64 %i.df, 4
  %.not.i995 = icmp eq i64 %i.dg, 0
  br i1 %.not.i995, label %_ZNK12_GLOBAL__N_112ARMAsmParser10isThumbTwoEv.exit.thread, label %_ZNK12_GLOBAL__N_112ARMAsmParser10isThumbTwoEv.exit

_ZNK12_GLOBAL__N_112ARMAsmParser10isThumbTwoEv.exit: ; preds = %_ZL16instIsBreakpointRKN4llvm6MCInstE.exit.thread
  %i.dh = tail call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm17MCTargetAsmParser6getSTIEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #29
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 256
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !59
  %i.dk = and i64 %i.dj, 2048
  %.not1393 = icmp eq i64 %i.dk, 0
  br i1 %.not1393, label %_ZNK12_GLOBAL__N_112ARMAsmParser10isThumbTwoEv.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK12_GLOBAL__N_112ARMAsmParser10isThumbTwoEv.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !371
  %i.dn = and i64 %i.dm, 4194304
  %.not1394 = icmp eq i64 %i.dn, 0
  br i1 %.not1394, label %_ZNK12_GLOBAL__N_112ARMAsmParser10isThumbTwoEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.do = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.dp = load i16, ptr %i.do, align 4, !tbaa !372 ; 2 uses
  %.not12.i997 = icmp eq i16 %i.dp, 0
  br i1 %.not12.i997, label %_ZNK4llvm11MCInstrDesc23findFirstPredOperandIdxEv.exit1005, label %.lr.ph.i998

.lr.ph.i998:                                      ; preds = %bb.n
  %i.dq = load i32, ptr %i.k, align 8, !tbaa !373
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.du = load i16, ptr %i.dt, align 4, !tbaa !374
  %i.dv = zext i16 %i.du to i64
  %i.dw = getelementptr inbounds nuw [6 x i8], ptr %i.ds, i64 %i.dv
  %i.dx = zext i16 %i.dp to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i998
  %indvars.iv.i999 = phi i64 [ 0, %.lr.ph.i998 ], [ %indvars.iv.next.i1003, %bb.p ] ; 3 uses
  %i.dy = getelementptr inbounds nuw [6 x i8], ptr %i.dw, i64 %indvars.iv.i999
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 34
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !376
  %i.eb = and i8 %i.ea, 2
  %.not11.i1000 = icmp eq i8 %i.eb, 0
  br i1 %.not11.i1000, label %bb.p, label %_ZNK4llvm11MCInstrDesc23findFirstPredOperandIdxEv.exit1005

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i1003 = add nuw nsw i64 %indvars.iv.i999, 1 ; 2 uses
  %.not.i1004 = icmp eq i64 %indvars.iv.next.i1003, %i.dx
  br i1 %.not.i1004, label %_ZNK4llvm11MCInstrDesc23findFirstPredOperandIdxEv.exit1005, label %bb.o, !llvm.loop !9

_ZNK4llvm11MCInstrDesc23findFirstPredOperandIdxEv.exit1005: ; preds = %bb.o, %bb.p, %bb.n
  %.1.i1002 = phi i64 [ 4294967295, %bb.n ], [ %indvars.iv.i999, %bb.o ], [ 4294967295, %bb.p ]
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !39
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %.1.i1002
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !60
  %.not761 = icmp eq i64 %i.eg, 14
  br i1 %.not761, label %_ZNK12_GLOBAL__N_112ARMAsmParser10isThumbTwoEv.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZNK4llvm11MCInstrDesc23findFirstPredOperandIdxEv.exit1005
  %i.eh = load i32, ptr %1, align 8, !tbaa !366
  switch i32 %i.eh, label %bb.r [
    i32 4465, label %_ZNK12_GLOBAL__N_112ARMAsmParser10isThumbTwoEv.exit.thread
    i32 4078, label %_ZNK12_GLOBAL__N_112ARMAsmParser10isThumbTwoEv.exit.thread
    i32 4070, label %_ZNK12_GLOBAL__N_112ARMAsmParser10isThumbTwoEv.exit.thread
  ]

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.ej, align 1, !tbaa !85
  store ptr @.str.952, ptr %9, align 8, !tbaa !60
  store i8 3, ptr %i.ei, align 8, !tbaa !84
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val886 = load ptr, ptr %i.ek, align 8, !tbaa !123
  %i.el = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val886, ptr %i.q, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr null, ptr null) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %.thread1288

_ZNK12_GLOBAL__N_112ARMAsmParser10isThumbTwoEv.exit.thread: ; preds = %bb.q, %bb.q, %bb.q, %_ZL16instIsBreakpointRKN4llvm6MCInstE.exit.thread, %_ZNK4llvm11MCInstrDesc23findFirstPredOperandIdxEv.exit1005, %bb.m, %_ZNK12_GLOBAL__N_112ARMAsmParser10isThumbTwoEv.exit
  %i.em = tail call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm17MCTargetAsmParser6getSTIEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #29
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 264
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !59
  %i.ep = and i64 %i.eo, 4
  %.not1395 = icmp eq i64 %i.ep, 0
  br i1 %.not1395, label %bb.s, label %bb.y

bb.s:                                             ; preds = %_ZNK12_GLOBAL__N_112ARMAsmParser10isThumbTwoEv.exit.thread
  %.val.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114ImplicitItModeE, i64 120), align 8, !tbaa !91
  %i.eq = and i32 %.val.i.i, -3
  %spec.select.i = icmp eq i32 %i.eq, 0
  br i1 %spec.select.i, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.er = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.es = load i64, ptr %i.er, align 8, !tbaa !371
  %i.et = and i64 %i.es, 4194304
  %.not1396 = icmp eq i64 %i.et, 0
  br i1 %.not1396, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eu = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ev = load i16, ptr %i.eu, align 4, !tbaa !372 ; 2 uses
end_hunk_0
