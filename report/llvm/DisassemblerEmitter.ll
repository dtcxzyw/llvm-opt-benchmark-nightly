Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DisassemblerEmitter?download=true
inline.NumInlined: 208
inline.NumDeleted: 153
begin_hunk_0_@_ZL16emitDisassemblerRKN4llvm12RecordKeeperERNS_11raw_ostreamE:bb.a
  %i.i = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !8
  store i64 %i.i, ptr %i.e, align 8, !tbaa !18, !alias.scope !8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.j = phi ptr [ %i.h, %bb.d ], [ %i.e, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.c, align 1, !tbaa !18
  store i8 %i.k, ptr %i.j, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %i.c, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !15, !alias.scope !8
  %i.n = load ptr, ptr %5, align 8, !tbaa !20, !alias.scope !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9, !noalias !8
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.p = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.5, i64 noundef 3) #9, !noalias !21 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.q, ptr %4, align 8, !tbaa !11, !alias.scope !21
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !20   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !15   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  store ptr %i.r, ptr %4, align 8, !tbaa !20, !alias.scope !21
  %i.y = load i64, ptr %i.s, align 8, !tbaa !18
  store i64 %i.y, ptr %i.q, align 8, !tbaa !18, !alias.scope !21
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !15
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !15, !alias.scope !21
  store ptr %i.s, ptr %i.p, align 8, !tbaa !20
  store i64 0, ptr %i.aa, align 8, !tbaa !15
  store i8 0, ptr %i.s, align 8, !tbaa !18
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !15, !noalias !24
  %i.ad = add i64 %i.ac, -4611686018427387891
  %i.ae = icmp ult i64 %i.ad, 13
  br i1 %i.ae, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.h:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #10, !noalias !24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.af = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.6, i64 noundef 13) #9, !noalias !24 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ag, ptr %3, align 8, !tbaa !11, !alias.scope !24
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !20 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 5 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !15 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.an, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ah, ptr %3, align 8, !tbaa !20, !alias.scope !24
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !18
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !18, !alias.scope !24
  %.phi.trans.insert.i18 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.pre.i19 = load i64, ptr %.phi.trans.insert.i18, align 8, !tbaa !15
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  %i.ap = phi ptr [ %i.ag, %bb.i ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ]
  %i.aq = phi i64 [ %i.al, %bb.i ], [ %.pre.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !15, !alias.scope !24
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !20
  store i64 0, ptr %i.ar, align 8, !tbaa !15
  store i8 0, ptr %i.ai, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @_ZN4llvm12RecordKeeperC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %6) #9
  call void @_ZN4llvm20emitSourceFileHeaderENS_9StringRefERNS_11raw_ostreamERKNS_12RecordKeeperE(ptr %i.ap, i64 %i.aq, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(240) %6) #9
  call void @_ZN4llvm12RecordKeeperD1Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.at = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ag
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.av = load i64, ptr %i.ag, align 8, !tbaa !18
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  %i.ax = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.q
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = load i64, ptr %i.q, align 8, !tbaa !18
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  %i.bb = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !18
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.bg = call { ptr, i64 } @_ZNK4llvm13CodeGenTarget7getNameEv(ptr noundef nonnull align 8 dereferenceable(820) %2) #9 ; 2 uses
  %i.bh = extractvalue { ptr, i64 } %i.bg, 1
  %.not.i27 = icmp eq i64 %i.bh, 3
  br i1 %.not.i27, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread57

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.bi = extractvalue { ptr, i64 } %i.bg, 0      ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 1
  %i.bk = xor i16 %i.bj, 14424
  %i.bl = getelementptr i8, ptr %i.bi, i64 2
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = zext i8 %i.bm to i16
  %i.bo = xor i16 %i.bn, 54
  %i.bp = or i16 %i.bk, %i.bo
  %i.bq = icmp ne i16 %i.bp, 0
  %i.br = zext i1 %i.bq to i32
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread57

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @_ZN4llvm15X86Disassembler18DisassemblerTablesC1Ev(ptr noundef nonnull align 8 dereferenceable(169) %7) #9
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 744 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !27 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 752 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !27 ; 2 uses
  %i.bx = icmp eq ptr %i.bu, %i.bw
  br i1 %i.bx, label %bb.j, label %_ZNK4llvm13CodeGenTarget15getInstructionsEv.exit

bb.j:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  call void @_ZNK4llvm13CodeGenTarget19ComputeInstrsByEnumEv(ptr noundef nonnull align 8 dereferenceable(820) %2) #9
  %.pre.i28 = load ptr, ptr %i.bt, align 8, !tbaa !30
  %.pre1.i = load ptr, ptr %i.bv, align 8, !tbaa !32
  br label %_ZNK4llvm13CodeGenTarget15getInstructionsEv.exit

_ZNK4llvm13CodeGenTarget15getInstructionsEv.exit: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread, %bb.j
  %i.by = phi ptr [ %.pre1.i, %bb.j ], [ %i.bw, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ] ; 2 uses
  %i.bz = phi ptr [ %.pre.i28, %bb.j ], [ %i.bu, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ] ; 2 uses
  %.not62 = icmp eq ptr %i.bz, %i.by
  br i1 %.not62, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNK4llvm13CodeGenTarget15getInstructionsEv.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 168
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !33, !range !50, !noundef !51
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.k, label %bb.l

.lr.ph:                                           ; preds = %_ZNK4llvm13CodeGenTarget15getInstructionsEv.exit, %.lr.ph
  %.sroa.043.064 = phi ptr [ %i.cf, %.lr.ph ], [ %i.bz, %_ZNK4llvm13CodeGenTarget15getInstructionsEv.exit ] ; 2 uses
  %.sroa.7.063 = phi i16 [ %i.ce, %.lr.ph ], [ 0, %_ZNK4llvm13CodeGenTarget15getInstructionsEv.exit ] ; 2 uses
  %i.cd = load ptr, ptr %.sroa.043.064, align 8, !tbaa !52
  call void @_ZN4llvm15X86Disassembler17RecognizableInstr12processInstrERNS0_18DisassemblerTablesERKNS_18CodeGenInstructionEt(ptr noundef nonnull align 8 dereferenceable(169) %7, ptr noundef nonnull align 8 dereferenceable(220) %i.cd, i16 noundef zeroext %.sroa.7.063) #9
  %i.ce = add i16 %.sroa.7.063, 1
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.043.064, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cf, %i.by
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %._crit_edge
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !54 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !108
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !109
  %i.cm = zext i32 %i.cl to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.co, align 1, !tbaa !110
  store ptr @.str.8, ptr %8, align 8, !tbaa !18
  store i8 3, ptr %i.cn, align 8, !tbaa !113
  call void @_ZN4llvm10PrintErrorENS_8ArrayRefINS_5SMLocEEERKNS_5TwineE(ptr %i.cj, i64 %i.cm, ptr noundef nonnull align 8 dereferenceable(34) %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge
  call void @_ZNK4llvm15X86Disassembler18DisassemblerTables4emitERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(169) %7, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @_ZN4llvm15X86Disassembler18DisassemblerTablesD1Ev(ptr noundef nonnull align 8 dead_on_return(169) dereferenceable(169) %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.o

_ZN4llvmeqENS_9StringRefES0_.exit.thread57:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.cp = call { ptr, i64 } @_ZNK4llvm13CodeGenTarget7getNameEv(ptr noundef nonnull align 8 dereferenceable(820) %2) #9 ; 2 uses
  %i.cq = extractvalue { ptr, i64 } %i.cp, 1
  %.not.i31 = icmp eq i64 %i.cq, 11
  br i1 %.not.i31, label %_ZN4llvmeqENS_9StringRefES0_.exit34, label %_ZN4llvmeqENS_9StringRefES0_.exit34.thread60

_ZN4llvmeqENS_9StringRefES0_.exit34:              ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread57
  %i.cr = extractvalue { ptr, i64 } %i.cp, 0      ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 1
  %i.ct = xor i64 %i.cs, 7882833661637322071
  %i.cu = getelementptr i8, ptr %i.cr, i64 3
  %i.cv = load i64, ptr %i.cu, align 1
  %i.cw = xor i64 %i.cv, 8749476398067053377
  %i.cx = or i64 %i.ct, %i.cw
  %i.cy = icmp ne i64 %i.cx, 0
  %i.cz = zext i1 %i.cy to i32
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %_ZN4llvmeqENS_9StringRefES0_.exit34.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit34.thread60

_ZN4llvmeqENS_9StringRefES0_.exit34.thread:       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit34
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 744 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !27 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 752 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !27 ; 2 uses
  %i.df = icmp eq ptr %i.dc, %i.de
  br i1 %i.df, label %bb.n, label %_ZNK4llvm13CodeGenTarget15getInstructionsEv.exit39

bb.n:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit34.thread
  call void @_ZNK4llvm13CodeGenTarget19ComputeInstrsByEnumEv(ptr noundef nonnull align 8 dereferenceable(820) %2) #9
  %.pre.i37 = load ptr, ptr %i.db, align 8, !tbaa !30
  %.pre1.i38 = load ptr, ptr %i.dd, align 8, !tbaa !32
  br label %_ZNK4llvm13CodeGenTarget15getInstructionsEv.exit39

_ZNK4llvm13CodeGenTarget15getInstructionsEv.exit39: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit34.thread, %bb.n
  %i.dg = phi ptr [ %.pre1.i38, %bb.n ], [ %i.de, %_ZN4llvmeqENS_9StringRefES0_.exit34.thread ]
  %i.dh = phi ptr [ %.pre.i37, %bb.n ], [ %i.dc, %_ZN4llvmeqENS_9StringRefES0_.exit34.thread ] ; 2 uses
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = ashr exact i64 %i.dk, 3
  call void @_ZN4llvm33emitWebAssemblyDisassemblerTablesERNS_11raw_ostreamENS_8ArrayRefIPKNS_18CodeGenInstructionEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %i.dh, i64 %i.dl) #9
  br label %bb.o

_ZN4llvmeqENS_9StringRefES0_.exit34.thread60:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread57, %_ZN4llvmeqENS_9StringRefES0_.exit34
  call void @_ZN4llvm11EmitDecoderERKNS_12RecordKeeperERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit34.thread60, %_ZNK4llvm13CodeGenTarget15getInstructionsEv.exit39, %bb.m
  call void @_ZN4llvm13CodeGenTargetD1Ev(ptr noundef nonnull align 8 dead_on_return(820) dereferenceable(820) %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret void
}

declare void @_ZN4llvm8TableGen7Emitter3OptC1ENS_9StringRefENS1_3FnTES3_b(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, ptr, ptr, ptr noundef byval(%"class.llvm::StringRef") align 8, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZN4llvm2cl14OptionCategory16registerCategoryEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN4llvm13CodeGenTargetC1ERKNS_12RecordKeeperE(ptr noundef nonnull align 8 dereferenceable(820), ptr noundef nonnull align 8 dereferenceable(240)) unnamed_addr #1

declare void @_ZN4llvm20emitSourceFileHeaderENS_9StringRefERNS_11raw_ostreamERKNS_12RecordKeeperE(ptr, i64, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #1

declare { ptr, i64 } @_ZNK4llvm13CodeGenTarget7getNameEv(ptr noundef nonnull align 8 dereferenceable(820)) local_unnamed_addr #1

declare void @_ZN4llvm12RecordKeeperC1Ev(ptr noundef nonnull align 8 dereferenceable(240)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4llvm12RecordKeeperD1Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZN4llvm15X86Disassembler18DisassemblerTablesC1Ev(ptr noundef nonnull align 8 dereferenceable(169)) unnamed_addr #1

declare void @_ZN4llvm15X86Disassembler17RecognizableInstr12processInstrERNS0_18DisassemblerTablesERKNS_18CodeGenInstructionEt(ptr noundef nonnull align 8 dereferenceable(169), ptr noundef nonnull align 8 dereferenceable(220), i16 noundef zeroext) local_unnamed_addr #1

declare void @_ZN4llvm10PrintErrorENS_8ArrayRefINS_5SMLocEEERKNS_5TwineE(ptr, i64, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #1

declare void @_ZNK4llvm15X86Disassembler18DisassemblerTables4emitERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(169), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4llvm15X86Disassembler18DisassemblerTablesD1Ev(ptr noundef nonnull align 8 dead_on_return(169) dereferenceable(169)) unnamed_addr #3

declare void @_ZN4llvm33emitWebAssemblyDisassemblerTablesERNS_11raw_ostreamENS_8ArrayRefIPKNS_18CodeGenInstructionEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #1

declare void @_ZN4llvm11EmitDecoderERKNS_12RecordKeeperERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4llvm13CodeGenTargetD1Ev(ptr noundef nonnull align 8 dead_on_return(820) dereferenceable(820)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZNK4llvm13CodeGenTarget19ComputeInstrsByEnumEv(ptr noundef nonnull align 8 dereferenceable(820)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_DisassemblerEmitter.cpp() #6 section ".text.startup" {
bb.a:
  %0 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  store ptr @.str, ptr @DisassemblerEmitterCat, align 8, !tbaa !114
  store i64 29, ptr getelementptr inbounds nuw (i8, ptr @DisassemblerEmitterCat, i64 8), align 8, !tbaa !19
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @DisassemblerEmitterCat, i64 16), align 8, !tbaa !114
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @DisassemblerEmitterCat, i64 24), align 8, !tbaa !19
  tail call void @_ZN4llvm2cl14OptionCategory16registerCategoryEv(ptr noundef nonnull align 8 dereferenceable(32) @DisassemblerEmitterCat) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  store ptr @.str.4, ptr %0, align 8, !tbaa !115
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 21, ptr %i.a, align 8, !tbaa !116
  tail call void @_ZN4llvm8TableGen7Emitter3OptC1ENS_9StringRefENS1_3FnTES3_b(ptr noundef nonnull align 1 dereferenceable(1) @_ZL1X, ptr nonnull @.str.3, i64 16, ptr nonnull @_ZL16emitDisassemblerRKN4llvm12RecordKeeperERNS_11raw_ostreamE, ptr null, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %0, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZNK4llvm9StringRef3strB5cxx11Ev: argument 0"}
!10 = distinct !{!10, !"_ZNK4llvm9StringRef3strB5cxx11Ev"}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!16, !17, i64 8}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !17, i64 8, !6, i64 16}
!17 = !{!"long", !6, i64 0}
!18 = !{!6, !6, i64 0}
!19 = !{!17, !17, i64 0}
end_hunk_0
