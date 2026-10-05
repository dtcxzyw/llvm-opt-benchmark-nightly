Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LLParser?download=true
inline.NumInlined: 17861
inline.NumDeleted: 6725
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4llvm8LLParser19convertValIDToValueEPNS_4TypeERNS_5ValIDERPNS_5ValueEPNS0_16PerFunctionStateE:bb.a
  br label %.thread285

bb.q:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.be = load ptr, ptr %i.ab, align 8, !tbaa !451
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !191
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !192
  %i.bj = load ptr, ptr %i.ah, align 8, !tbaa !191
  %i.bk = load i64, ptr %i.aj, align 8, !tbaa !192
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !464 ; 4 uses
  %i.bn = trunc i32 %i.bm to i1
  %i.bo = and i32 %i.bm, 2
  %i.bp = icmp ne i32 %i.bo, 0
  %i.bq = lshr i32 %i.bm, 2
  %i.br = and i32 %i.bq, 1
  %i.bs = and i32 %i.bm, 8
  %i.bt = icmp ne i32 %i.bs, 0
  %i.bu = call noundef ptr @_ZN4llvm9InlineAsm3getEPNS_12FunctionTypeENS_9StringRefES3_bbNS0_10AsmDialectEb(ptr noundef %i.be, ptr %i.bg, i64 %i.bi, ptr %i.bj, i64 %i.bk, i1 noundef zeroext %i.bn, i1 noundef zeroext %i.bp, i32 noundef %i.br, i1 noundef zeroext %i.bt) #25
  store ptr %i.bu, ptr %3, align 8, !tbaa !456
  br label %.thread285

bb.r:                                             ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.032.0.copyload = load ptr, ptr %i.bw, align 8, !tbaa !196
  %i.bx = tail call noundef ptr @_ZN4llvm8LLParser12getGlobalValERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_4TypeENS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(1984) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull %1, ptr %.sroa.032.0.copyload) ; 3 uses
  store ptr %i.bx, ptr %3, align 8, !tbaa !456
  %.not211 = icmp eq ptr %i.bx, null
  br i1 %.not211, label %.thread285, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !455, !range !65, !noundef !66
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.t, label %.thread285

bb.t:                                             ; preds = %bb.s
  %i.cb = tail call noundef ptr @_ZN4llvm10NoCFIValue3getEPNS_11GlobalValueE(ptr noundef nonnull %i.bx) #25 ; 2 uses
  store ptr %i.cb, ptr %3, align 8, !tbaa !456
  %i.cc = icmp eq ptr %i.cb, null
  br label %.thread285

bb.u:                                             ; preds = %bb.c
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !464
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.031.0.copyload = load ptr, ptr %i.cf, align 8, !tbaa !196
  %i.cg = tail call noundef ptr @_ZN4llvm8LLParser12getGlobalValEjPNS_4TypeENS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(1984) %0, i32 noundef %i.ce, ptr noundef nonnull %1, ptr %.sroa.031.0.copyload) ; 3 uses
  store ptr %i.cg, ptr %3, align 8, !tbaa !456
  %.not210 = icmp eq ptr %i.cg, null
  br i1 %.not210, label %.thread285, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !455, !range !65, !noundef !66
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.w, label %.thread285

bb.w:                                             ; preds = %bb.v
  %i.ck = tail call noundef ptr @_ZN4llvm10NoCFIValue3getEPNS_11GlobalValueE(ptr noundef nonnull %i.cg) #25 ; 2 uses
  store ptr %i.ck, ptr %3, align 8, !tbaa !456
  %i.cl = icmp eq ptr %i.ck, null
  br label %.thread285

bb.x:                                             ; preds = %bb.c
  %i.cm = and i32 %i.c, 254
  %switch = icmp eq i32 %i.cm, 12
  br i1 %switch, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.030.0.copyload = load ptr, ptr %i.cn, align 8, !tbaa !196
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.cp, align 1, !tbaa !186
  store ptr @.str.367, ptr %15, align 8, !tbaa !187
  store i8 3, ptr %i.co, align 8, !tbaa !188
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %i.cq, ptr %.sroa.030.0.copyload, ptr noundef nonnull align 8 dereferenceable(34) %15, i32 noundef 1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %.thread285

bb.z:                                             ; preds = %bb.x
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 6 uses
  %i.cs = tail call { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #27 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.cs, 1
  %i.ct = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.ct, label %bb.aa, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.645) #28
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.z
  %.fca.0.extract = extractvalue { i64, i8 } %i.cs, 0
  %i.cu = trunc i64 %.fca.0.extract to i32        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 108 ; 3 uses
  %i.cw = load i8, ptr %i.cv, align 4, !tbaa !453, !range !65, !noalias !1560, !noundef !66
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_ZN4llvm5APIntD2Ev.exit.i, label %_ZN4llvm5APIntD2Ev.exit2.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  call void @_ZNK4llvm5APInt11zextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(13) %i.cr, i32 noundef %i.cu) #25, !noalias !1560
  br label %_ZNK4llvm6APSInt10extOrTruncEj.exit

_ZN4llvm5APIntD2Ev.exit2.i:                       ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  call void @_ZNK4llvm5APInt11sextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(13) %i.cr, i32 noundef %i.cu) #25, !noalias !1560
  br label %_ZNK4llvm6APSInt10extOrTruncEj.exit

_ZNK4llvm6APSInt10extOrTruncEj.exit:              ; preds = %_ZN4llvm5APIntD2Ev.exit.i, %_ZN4llvm5APIntD2Ev.exit2.i
  %.sink7.i.sroa.phi = phi ptr [ %.sink7.i.sroa.gep, %_ZN4llvm5APIntD2Ev.exit2.i ], [ %.sink7.i.sroa.gep279, %_ZN4llvm5APIntD2Ev.exit.i ]
  %.sink7.i = phi ptr [ %6, %_ZN4llvm5APIntD2Ev.exit2.i ], [ %5, %_ZN4llvm5APIntD2Ev.exit.i ]
  %i.cy = load i8, ptr %i.cv, align 4, !tbaa !453, !range !65, !noalias !1560, !noundef !66
  %i.cz = load i32, ptr %.sink7.i.sroa.phi, align 8, !tbaa !452, !noalias !1560
  %i.da = load i64, ptr %.sink7.i, align 8, !noalias !1560
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !452
  %i.dd = icmp ult i32 %i.dc, 65
  br i1 %i.dd, label %_ZN4llvm5APIntD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNK4llvm6APSInt10extOrTruncEj.exit
  %i.de = load ptr, ptr %i.cr, align 8, !tbaa !187 ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %_ZN4llvm5APIntD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdaPv(ptr noundef nonnull %i.de) #26
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.ac, %bb.ab, %_ZNK4llvm6APSInt10extOrTruncEj.exit
  store i64 %i.da, ptr %i.cr, align 8
  store i32 %i.cz, ptr %i.db, align 8, !tbaa !452
  store i8 %i.cy, ptr %i.cv, align 4, !tbaa !453
  %i.dg = load i32, ptr %i.b, align 8
  %i.dh = and i32 %i.dg, 255
  %i.di = icmp eq i32 %i.dh, 12
  %i.dj = load ptr, ptr %0, align 8, !tbaa !181, !nonnull !66, !align !182 ; 2 uses
  br i1 %i.di, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.dk = call noundef ptr @_ZN4llvm11ConstantInt3getERNS_11LLVMContextERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull align 8 dereferenceable(12) %i.cr) #25
  br label %bb.af

bb.ae:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.dl = call noundef ptr @_ZN4llvm12ConstantByte3getERNS_11LLVMContextERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull align 8 dereferenceable(12) %i.cr) #25
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %storemerge = phi ptr [ %i.dl, %bb.ae ], [ %i.dk, %bb.ad ]
  store ptr %storemerge, ptr %3, align 8, !tbaa !456
  br label %.thread285

bb.ag:                                            ; preds = %bb.c
  %trunc.i.i = trunc i32 %i.c to i8
  switch i8 %trunc.i.i, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit [
    i8 3, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
    i8 2, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
    i8 0, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
    i8 1, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
    i8 5, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
  ]

_ZNK4llvm4Type17isFloatingPointTyEv.exit:         ; preds = %bb.ag
  %i.dm = and i32 %i.c, 253
  %spec.select.i = icmp eq i32 %i.dm, 4
  br i1 %spec.select.i, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread, label %bb.ah

_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread:  ; preds = %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %_ZNK4llvm4Type17isFloatingPointTyEv.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 9 uses
  %i.do = tail call noundef zeroext i1 @_ZN4llvm10ConstantFP19isValueValidForTypeEPNS_4TypeERKNS_7APFloatE(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %i.dn) #25
  br i1 %i.do, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread, %_ZNK4llvm4Type17isFloatingPointTyEv.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.028.0.copyload = load ptr, ptr %i.dp, align 8, !tbaa !196
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.dq = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.dr = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.dr, align 1, !tbaa !186
  store ptr @.str.368, ptr %16, align 8, !tbaa !187
  store i8 3, ptr %i.dq, align 8, !tbaa !188
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %i.ds, ptr %.sroa.028.0.copyload, ptr noundef nonnull align 8 dereferenceable(34) %16, i32 noundef 1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %.thread285

bb.ai:                                            ; preds = %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !187
  %i.du = icmp eq ptr %i.dt, @_ZN4llvm11APFloatBase13semIEEEdoubleE
  br i1 %i.du, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.dw = tail call noundef zeroext i1 @_ZNK4llvm6detail9IEEEFloat11isSignalingEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dn) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.dx = load i32, ptr %i.b, align 8             ; 2 uses
  %trunc = trunc i32 %i.dx to i8
  %i.dy = icmp ult i8 %trunc, 3
  br i1 %i.dy, label %switch.lookup, label %bb.ak

switch.lookup:                                    ; preds = %bb.aj
  %trunc.mask = and i32 %i.dx, 3
  %i.dz = zext nneg i32 %trunc.mask to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvm8LLParser19convertValIDToValueEPNS_4TypeERNS_5ValIDERPNS_5ValueEPNS0_16PerFunctionStateE, i64 %i.dz
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.ea = call noundef i32 @_ZN4llvm7APFloat7convertERKNS_12fltSemanticsENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 4 dereferenceable(29) %switch.load, i8 noundef signext 1, ptr noundef nonnull %i.a) #25 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %switch.lookup
  br i1 %i.dw, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @_ZNK4llvm7APFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %i.dn)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.eb = load ptr, ptr %i.dn, align 8, !tbaa !187 ; 2 uses
  %.not.i.i216 = icmp eq ptr %i.eb, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.ec = load ptr, ptr %i.dv, align 8
  %.0.i.i217 = select i1 %.not.i.i216, ptr %i.ec, ptr %i.dn
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i.i217, i64 20
  %i.ee = load i8, ptr %i.ed, align 4
  %i.ef = and i8 %i.ee, 8
  %i.eg = icmp ne i8 %i.ef, 0
  call void @_ZN4llvm7APFloat7getSNaNERKNS_12fltSemanticsEbPKNS_5APIntE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APFloat") align 8 %18, ptr noundef nonnull align 4 dereferenceable(29) %i.eb, i1 noundef zeroext %i.eg, ptr noundef nonnull %17)
  %i.eh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %18) #25 ; 0 uses
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.ei = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !452
  %i.ek = icmp ugt i32 %i.ej, 64
  br i1 %i.ek, label %bb.am, label %_ZN4llvm5APIntD2Ev.exit218

bb.am:                                            ; preds = %bb.al
  %i.el = load ptr, ptr %17, align 8, !tbaa !187  ; 2 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %_ZN4llvm5APIntD2Ev.exit218, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZdaPv(ptr noundef nonnull %i.el) #26
  br label %_ZN4llvm5APIntD2Ev.exit218

_ZN4llvm5APIntD2Ev.exit218:                       ; preds = %bb.al, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit218, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ai
  %i.en = load ptr, ptr %0, align 8, !tbaa !181, !nonnull !66, !align !182
  %i.eo = call noundef ptr @_ZN4llvm10ConstantFP3getERNS_11LLVMContextERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %i.dn) #25 ; 2 uses
  store ptr %i.eo, ptr %3, align 8, !tbaa !456
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !499
  %.not209 = icmp eq ptr %i.eq, %1
  br i1 %.not209, label %.thread285, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.026.0.copyload = load ptr, ptr %i.er, align 8, !tbaa !196
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  call fastcc void @_ZL13getTypeStringB5cxx11PN4llvm4TypeE(ptr dead_on_unwind noalias writable align 8 %22, ptr noundef nonnull %1)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull @.str.369, ptr noundef nonnull align 8 dereferenceable(32) %22)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.6)
  %i.es = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i8 4, ptr %i.es, align 8, !tbaa !188
  %i.et = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 1, ptr %i.et, align 1, !tbaa !186
  store ptr %20, ptr %19, align 8, !tbaa !187
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %i.eu, ptr %.sroa.026.0.copyload, ptr noundef nonnull align 8 dereferenceable(34) %19, i32 noundef 1) #25
  %i.ev = load ptr, ptr %20, align 8, !tbaa !191  ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ex = icmp eq ptr %i.ev, %i.ew
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %bb.aq
  %i.ey = load i64, ptr %i.ew, align 8, !tbaa !187
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ez) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219
  %i.fa = load ptr, ptr %21, align 8, !tbaa !191  ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %i.fd = load i64, ptr %i.fb, align 8, !tbaa !187
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222
  %i.ff = load ptr, ptr %22, align 8, !tbaa !191  ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  %i.fi = load i64, ptr %i.fg, align 8, !tbaa !187
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %.thread285

bb.ar:                                            ; preds = %bb.c
  %i.fk = icmp eq i32 %i.d, 15
  br i1 %i.fk, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.025.0.copyload = load ptr, ptr %i.fl, align 8, !tbaa !196
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  %i.fm = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.fn = getelementptr inbounds nuw i8, ptr %23, i64 33
  store i8 1, ptr %i.fn, align 1, !tbaa !186
  store ptr @.str.370, ptr %23, align 8, !tbaa !187
  store i8 3, ptr %i.fm, align 8, !tbaa !188
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %i.fo, ptr %.sroa.025.0.copyload, ptr noundef nonnull align 8 dereferenceable(34) %23, i32 noundef 1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  br label %.thread285

bb.at:                                            ; preds = %bb.ar
  %i.fp = tail call noundef ptr @_ZN4llvm19ConstantPointerNull3getEPNS_11PointerTypeE(ptr noundef nonnull %1) #25
  store ptr %i.fp, ptr %3, align 8, !tbaa !456
  br label %.thread285

bb.au:                                            ; preds = %bb.c
  %i.fq = tail call noundef zeroext i1 @_ZNK4llvm4Type16isFirstClassTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #25
  br i1 %i.fq, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fr = load i32, ptr %i.b, align 8
  %i.fs = and i32 %i.fr, 255
  %i.ft = icmp eq i32 %i.fs, 8
  br i1 %i.ft, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.024.0.copyload = load ptr, ptr %i.fu, align 8, !tbaa !196
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  %i.fv = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.fw = getelementptr inbounds nuw i8, ptr %24, i64 33
  store i8 1, ptr %i.fw, align 1, !tbaa !186
  store ptr @.str.371, ptr %24, align 8, !tbaa !187
  store i8 3, ptr %i.fv, align 8, !tbaa !188
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %i.fx, ptr %.sroa.024.0.copyload, ptr noundef nonnull align 8 dereferenceable(34) %24, i32 noundef 1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %.thread285

bb.ax:                                            ; preds = %bb.av
  %i.fy = tail call noundef ptr @_ZN4llvm10UndefValue3getEPNS_4TypeE(ptr noundef nonnull %1) #25
  store ptr %i.fy, ptr %3, align 8, !tbaa !456
  br label %.thread285

bb.ay:                                            ; preds = %bb.c
  %i.fz = icmp eq i32 %i.d, 17
  br i1 %i.fz, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !686
  %.not208 = icmp eq i64 %i.gb, 0
  br i1 %.not208, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.023.0.copyload = load ptr, ptr %i.gc, align 8, !tbaa !196
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  %i.gd = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.ge = getelementptr inbounds nuw i8, ptr %25, i64 33
  store i8 1, ptr %i.ge, align 1, !tbaa !186
  store ptr @.str.372, ptr %25, align 8, !tbaa !187
  store i8 3, ptr %i.gd, align 8, !tbaa !188
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %i.gf, ptr %.sroa.023.0.copyload, ptr noundef nonnull align 8 dereferenceable(34) %25, i32 noundef 1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %.thread285

bb.bb:                                            ; preds = %bb.az
end_hunk_0
