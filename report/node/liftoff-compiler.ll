Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/liftoff-compiler?download=true
inline.NumInlined: 20842
inline.NumDeleted: 3929
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallDirectEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_21CallFunctionImmediateEPKNS1_9ValueBaseIS6_EEPSE_NS0_12CallJumpModeE:bb.a
  %i.fh = ptrtoint ptr %i.fe to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %sext18 = shl i64 %i.fj, 32
  %i.fk = ashr exact i64 %sext18, 32
  %i.fl = getelementptr i8, ptr %1, i64 8
  %.val73 = load ptr, ptr %i.fl, align 8
  %i.fm = getelementptr i8, ptr %1, i64 16
  %.val74 = load ptr, ptr %i.fm, align 8
  %i.fn = ptrtoint ptr %.val74 to i64
  %i.fo = ptrtoint ptr %.val73 to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = shl i64 %i.fp, 32
  %sext19 = add i64 %i.fq, 4294967296
  %i.fr = ashr exact i64 %sext19, 31
  %i.fs = and i64 %i.fr, -140735340871682
  call void @_ZN2v88internal26SourcePositionTableBuilder11AddPositionEmNS0_14SourcePositionEbb(ptr noundef nonnull align 8 dereferenceable(56) %i.fc, i64 noundef %i.fk, i64 %i.fs, i1 noundef zeroext true, i1 noundef zeroext true) #24
  %.sroa.09.0.copyload = load i8, ptr %8, align 1 ; 2 uses
  %i.ft = icmp eq i8 %.sroa.09.0.copyload, -1
  br i1 %i.ft, label %bb.ad, label %_ZN2v88internal4wasm16LiftoffAssembler12CallIndirectEPKNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorENS0_8RegisterE.exit

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 10) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler12CallIndirectEPKNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorENS0_8RegisterE.exit

_ZN2v88internal4wasm16LiftoffAssembler12CallIndirectEPKNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorENS0_8RegisterE.exit: ; preds = %bb.ac, %bb.ad
  %.sroa.0.0.i83 = phi i8 [ 10, %bb.ad ], [ %.sroa.09.0.copyload, %bb.ac ]
  %i.fu = call noundef i64 @_ZNK2v88internal8compiler14CallDescriptor14signature_hashEv(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #24
  call void @_ZN2v88internal14MacroAssembler19CallWasmCodePointerENS0_8RegisterEmNS0_12CallJumpModeE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.0.0.i83, i64 noundef %i.fu, i32 noundef 0) #24
  %i.fv = load ptr, ptr %i.fd, align 8
  %i.fw = load ptr, ptr %i.ff, align 8
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = trunc i64 %i.fz to i32
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10FinishCallEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorEi(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef %1, ptr noundef %7, ptr noundef nonnull %i.aw, i32 noundef %i.ga)
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN2v88internal4wasm16LiftoffAssembler12CallIndirectEPKNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorENS0_8RegisterE.exit, %_ZN2v88internal4wasm16LiftoffAssembler16TailCallIndirectEPNS0_8compiler14CallDescriptorENS0_8RegisterE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.loopexit

bb.af:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.gb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 862), align 2, !range !5, !noundef !6
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 680
  %.sroa.0.0.copyload.i.i.i84 = load i32, ptr %i.gd, align 8
  %i.ge = and i32 %.sroa.0.0.copyload.i.i.i84, 37839 ; 2 uses
  %.not.i.i85 = icmp eq i32 %i.ge, 37839
  br i1 %.not.i.i85, label %bb.ai, label %bb.ah, !prof !7

bb.ah:                                            ; preds = %bb.ag
  %i.gf = xor i32 %i.ge, 37839
  %i.gg = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.gf, i1 true)
  %i.gh = trunc nuw nsw i32 %i.gg to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit87

bb.ai:                                            ; preds = %bb.ag
  %i.gi = call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 37839) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit87

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit87: ; preds = %bb.ah, %bb.ai
  %.sroa.06.0.i.i86 = phi i8 [ %i.gh, %bb.ah ], [ %i.gi, %bb.ai ] ; 7 uses
  %i.gj = icmp samesign ult i8 %.sroa.06.0.i.i86, 16
  call void @llvm.assume(i1 %i.gj)
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i86, i64 3896836096, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #24
  %.tr = trunc i64 %i.be to i32
  %i.gk = shl i32 %.tr, 4                         ; 2 uses
  %i.gl = or disjoint i32 %i.gk, 15               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %4, align 8
  store i64 1, ptr %i.go, align 8
  switch i8 %.sroa.06.0.i.i86, label %bb.ak [
    i8 4, label %bb.aj
    i8 12, label %bb.aj
  ]

bb.aj:                                            ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit87, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit87
  %scevgep.i88 = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.gp = and i8 %.sroa.06.0.i.i86, 7
  %i.gq = or disjoint i8 %i.gp, 32
  store i8 %i.gq, ptr %scevgep.i88, align 1
  %i.gr = lshr i8 %.sroa.06.0.i.i86, 3
  store i64 2, ptr %i.go, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit87
  %i.gs = phi i64 [ 1, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit87 ], [ 2, %bb.aj ] ; 3 uses
  %i.gt = phi i8 [ 0, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit87 ], [ %i.gr, %bb.aj ]
  %i.gu = sext i32 %i.gk to i64
  %i.gv = add nsw i64 %i.gu, 128
  %i.gw = icmp ult i64 %i.gv, 256
  %i.gx = and i8 %.sroa.06.0.i.i86, 7             ; 2 uses
  br i1 %i.gw, label %.thread.i89, label %bb.al

.thread.i89:                                      ; preds = %bb.ak
  %i.gy = or disjoint i8 %i.gx, 64
  store i8 %i.gy, ptr %i.gn, align 2
  %i.gz = trunc i32 %i.gl to i8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gs
  store i8 %i.gz, ptr %i.ha, align 1
  %i.hb = add nuw nsw i64 %i.gs, 1
  br label %_ZN2v88internal4wasm16LiftoffAssembler12IncrementSmiENS1_15LiftoffRegisterEi.exit

bb.al:                                            ; preds = %bb.ak
  %i.hc = or disjoint i8 %i.gx, -128
  store i8 %i.hc, ptr %i.gn, align 2
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gs
  store i32 %i.gl, ptr %i.hd, align 1
  %i.he = load i64, ptr %i.go, align 8
  %i.hf = add i64 %i.he, 4
  br label %_ZN2v88internal4wasm16LiftoffAssembler12IncrementSmiENS1_15LiftoffRegisterEi.exit

_ZN2v88internal4wasm16LiftoffAssembler12IncrementSmiENS1_15LiftoffRegisterEi.exit: ; preds = %.thread.i89, %bb.al
  %.in = phi i64 [ %i.hf, %bb.al ], [ %i.hb, %.thread.i89 ]
  %.pn = lshr i8 %.sroa.06.0.i.i86, 3
  %.sink22 = or i8 %i.gt, %.pn
  store i8 %.sink22, ptr %i.gm, align 1
  %i.hg = inttoptr i64 %.in to ptr
  %i.hh = load i64, ptr %4, align 8
  call void @_ZN2v88internal14MacroAssembler14SmiAddConstantENS0_7OperandENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %i.hh, ptr %i.hg, i64 4294967296) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.am

bb.am:                                            ; preds = %_ZN2v88internal4wasm16LiftoffAssembler12IncrementSmiENS1_15LiftoffRegisterEi.exit, %bb.af
  call void @_ZN2v88internal4wasm16LiftoffAssembler11PrepareCallEPKNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorEPNS0_8RegisterESB_(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull %7, ptr noundef %i.aw, ptr noundef null, i8 -1) #24
  %i.hi = load i32, ptr %2, align 8
  %i.hj = zext i32 %i.hi to i64                   ; 2 uses
  %.not69 = icmp eq i32 %3, 0
  br i1 %.not69, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hk = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.hl = load i64, ptr %i.hk, align 8
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = call noundef i32 @_ZNK2v88internal8compiler14CallDescriptor22GetStackParameterDeltaEPKS2_(ptr noundef nonnull align 8 dereferenceable(128) %i.aw, ptr noundef %i.ho) #24
  call void @_ZN2v88internal4wasm16LiftoffAssembler15PrepareTailCallEii(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef %i.hm, i32 noundef %i.hp)
  call void @_ZN2v88internal9Assembler8near_jmpElNS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 noundef %i.hj, i8 noundef signext 5) #24
  br label %.loopexit

bb.ao:                                            ; preds = %bb.am
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = ptrtoint ptr %i.hs to i64
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %sext = shl i64 %i.hx, 32
  %i.hy = ashr exact i64 %sext, 32
  %i.hz = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.hz, align 8
  %i.ia = getelementptr i8, ptr %1, i64 16
  %.val72 = load ptr, ptr %i.ia, align 8
  %i.ib = ptrtoint ptr %.val72 to i64
  %i.ic = ptrtoint ptr %.val to i64
  %i.id = sub i64 %i.ib, %i.ic
  %i.ie = shl i64 %i.id, 32
  %sext16 = add i64 %i.ie, 4294967296
  %i.if = ashr exact i64 %sext16, 31
  %i.ig = and i64 %i.if, -140735340871682
  call void @_ZN2v88internal26SourcePositionTableBuilder11AddPositionEmNS0_14SourcePositionEbb(ptr noundef nonnull align 8 dereferenceable(56) %i.hq, i64 noundef %i.hy, i64 %i.ig, i1 noundef zeroext true, i1 noundef zeroext true) #24
  call void @_ZN2v88internal9Assembler9near_callElNS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 noundef %i.hj, i8 noundef signext 5) #24
  %i.ih = load ptr, ptr %i.hr, align 8
  %i.ii = load ptr, ptr %i.ht, align 8
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = sub i64 %i.ij, %i.ik
  %i.im = trunc i64 %i.il to i32
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10FinishCallEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorEi(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef %1, ptr noundef %7, ptr noundef %i.aw, i32 noundef %i.im)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit, %bb.ae, %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void
}

declare void @_ZN2v88internal4wasm16LiftoffAssembler11PrepareCallEPKNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorEPNS0_8RegisterESB_(ptr noundef nonnull align 8 dereferenceable(824), ptr noundef, ptr noundef, ptr noundef, i8) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler15PrepareTailCallEii(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 {
_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit46:
  tail call void @_ZN2v88internal9Assembler5pushqENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 138739712, ptr nonnull inttoptr (i64 2 to ptr)) #24
  tail call void @_ZN2v88internal9Assembler5pushqENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 4521984, ptr nonnull inttoptr (i64 2 to ptr)) #24
  %i.a = icmp sgt i32 %1, -2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit46
  %i.b = add i32 %1, 1
  %i.c = sext i32 %i.b to i64
  %i.d = sext i32 %2 to i64
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit31

._crit_edge:                                      ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit31, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit46
  %.neg = mul i32 %2, -8                          ; 3 uses
  %i.e = sext i32 %.neg to i64
  %i.f = add nsw i64 %i.e, 128
  %i.g = icmp ult i64 %i.f, 256                   ; 3 uses
  %.sroa.4.sroa.4.0.extract.shift = and i32 %.neg, -256
  %.sroa.4.sroa.4.sroa.0.0 = select i1 %i.g, i32 0, i32 %.sroa.4.sroa.4.0.extract.shift
  %.sroa.2.0 = select i1 %i.g, i64 4521984, i64 8716288
  %storemerge = select i1 %i.g, i64 2, i64 5
  %.sroa.4.sroa.0.0.insert.ext = and i32 %.neg, 248
  %.sroa.4.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.sroa.4.sroa.0.0, %.sroa.4.sroa.0.0.insert.ext
  %.sroa.4.0.insert.ext = zext i32 %.sroa.4.sroa.0.0.insert.insert to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 24
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.2.0
  %.cast = inttoptr i64 %storemerge to ptr
  tail call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 4, i64 %.sroa.2.0.insert.insert, ptr nonnull %.cast, i32 noundef 8) #24
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 5) #24
  ret void

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit31: ; preds = %.lr.ph, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit31
  %indvars.iv = phi i64 [ %i.c, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit31 ] ; 5 uses
  %3 = icmp eq i64 %indvars.iv, 0                 ; 3 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %4 = shl i32 %indvars.iv.tr, 3                  ; 2 uses
  %5 = icmp ult i32 %4, 128                       ; 2 uses
  %. = select i1 %5, i64 4456448, i64 8650752
  %.183 = select i1 %5, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 6 to ptr)
  %.sroa.7.sroa.4.sroa.0.0 = select i1 %3, i32 0, i32 %4
  %.sroa.3.0 = select i1 %3, i64 262144, i64 %.
  %6 = select i1 %3, ptr inttoptr (i64 2 to ptr), ptr %.183
  %.sroa.7.0.insert.ext = zext i32 %.sroa.7.sroa.4.sroa.0.0 to i64
  %.sroa.7.0.insert.shift = shl nuw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.6182.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.shift, %.sroa.3.0
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.6182.0.insert.insert, 603979776
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 %.sroa.3.0.insert.insert, ptr nonnull %6, i32 noundef 8) #24
  %i.h = sub nsw i64 %indvars.iv, %i.d
  %i.i = shl nsw i64 %i.h, 3                      ; 3 uses
  %i.j = add nsw i64 %i.i, 128
  %i.k = icmp ult i64 %i.j, 256                   ; 3 uses
  %.sroa.4.sroa.4.0.extract.shift174 = and i64 %i.i, 4294967040
  %.sroa.4.sroa.4.sroa.0176.0 = select i1 %i.k, i64 0, i64 %.sroa.4.sroa.4.0.extract.shift174
  %.sroa.2163.0 = select i1 %i.k, i64 4521984, i64 8716288
  %storemerge140 = select i1 %i.k, i64 2, i64 5
  %.sroa.4.sroa.0169.0.insert.ext = and i64 %i.i, 248
  %.sroa.4.sroa.0169.0.insert.insert = or disjoint i64 %.sroa.4.sroa.4.sroa.0176.0, %.sroa.4.sroa.0169.0.insert.ext
  %.sroa.4.0.insert.shift165 = shl nuw nsw i64 %.sroa.4.sroa.0169.0.insert.insert, 24
  %.sroa.2163.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift165, %.sroa.2163.0
  %.cast141 = inttoptr i64 %storemerge140 to ptr
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %.sroa.2163.0.insert.insert, ptr nonnull %.cast141, i8 10, i32 noundef 8) #24
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.l = icmp sgt i64 %indvars.iv, 0
  br i1 %i.l, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit31, label %._crit_edge, !llvm.loop !522
}

declare noundef i32 @_ZNK2v88internal8compiler14CallDescriptor22GetStackParameterDeltaEPKS2_(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10FinishCallEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorEi(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::base::OwnedVector.731", align 8 ; 5 uses
  %6 = alloca %"class.v8::internal::SafepointTableBuilder::Safepoint", align 8 ; 5 uses
  %i.a = icmp eq i32 %4, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32
  %.0.i = select i1 %i.a, i32 %i.i, i32 %4        ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp eq i32 %.0.i, %i.k
  br i1 %i.l, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15DefineSafepointEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %.0.i, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.n = tail call { ptr, ptr } @_ZN2v88internal21SafepointTableBuilder15DefineSafepointEPNS0_9AssemblerEi(ptr noundef nonnull align 8 dereferenceable(112) %i.m, ptr noundef nonnull align 8 dereferenceable(1284) %0, i32 noundef %.0.i) #24 ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0
  store ptr %i.o, ptr %6, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = extractvalue { ptr, ptr } %i.n, 1
  store ptr %i.q, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 456
  call void @_ZN2v88internal4wasm16LiftoffAssembler10CacheState15DefineSafepointERNS0_21SafepointTableBuilder9SafepointE(ptr noundef nonnull align 8 dereferenceable(337) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15DefineSafepointEi.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15DefineSafepointEi.exit: ; preds = %bb.a, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler27RegisterDebugSideTableEntryEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS2_21DebugSideTableBuilder14AssumeSpillingE.exit, label %bb.c, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15DefineSafepointEi.exit
  %i.u = load ptr, ptr %i.b, align 8
  %i.v = load ptr, ptr %i.d, align 8
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler31GetCurrentDebugSideTableEntriesEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS2_21DebugSideTableBuilder14AssumeSpillingE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull readonly align 8 dereferenceable(1284) %0, ptr noundef nonnull readonly %1, i32 noundef 2)
  %i.aa = load ptr, ptr %5, align 8               ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_121DebugSideTableBuilder8NewEntryEiNS_4base6VectorINS1_14DebugSideTable5Entry5ValueEEE(ptr noundef nonnull align 8 dereferenceable(104) %i.t, i32 noundef %i.z, ptr %i.aa, i64 %i.ac)
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZN2v84base11OwnedVectorINS_8internal4wasm14DebugSideTable5Entry5ValueEED2Ev.exit.i, label %_ZNKSt14default_deleteIA_N2v88internal4wasm14DebugSideTable5Entry5ValueEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i.i.i

_ZNKSt14default_deleteIA_N2v88internal4wasm14DebugSideTable5Entry5ValueEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i.i.i: ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.aa) #26
  br label %_ZN2v84base11OwnedVectorINS_8internal4wasm14DebugSideTable5Entry5ValueEED2Ev.exit.i

_ZN2v84base11OwnedVectorINS_8internal4wasm14DebugSideTable5Entry5ValueEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_N2v88internal4wasm14DebugSideTable5Entry5ValueEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler27RegisterDebugSideTableEntryEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS2_21DebugSideTableBuilder14AssumeSpillingE.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler27RegisterDebugSideTableEntryEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS2_21DebugSideTableBuilder14AssumeSpillingE.exit: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15DefineSafepointEi.exit, %_ZN2v84base11OwnedVectorINS_8internal4wasm14DebugSideTable5Entry5ValueEED2Ev.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1260
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = add i32 %i.ao, %i.am
  %i.aq = icmp eq i32 %i.ae, %i.ap
  br i1 %i.aq, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler27RegisterDebugSideTableEntryEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS2_21DebugSideTableBuilder14AssumeSpillingE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.as = load i8, ptr %i.ar, align 8
  %i.at = icmp eq i8 %i.as, 2
  br i1 %i.at, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 817), align 1, !range !5, !noundef !6
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.g, label %bb.f, !prof !16

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.126) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler29StoreFrameDescriptionForDeoptEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEj(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler27RegisterDebugSideTableEntryEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS2_21DebugSideTableBuilder14AssumeSpillingE.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.ax = load i8, ptr %i.aw, align 8
  %.not.i9 = icmp eq i8 %i.ax, 0
  br i1 %.not.i9, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8MaybeOSREv.exit, label %bb.i, !prof !16

bb.i:                                             ; preds = %bb.h
  call void @_ZN2v88internal4wasm16LiftoffAssembler8MaybeOSREv(ptr noundef nonnull align 8 dereferenceable(1284) %0)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8MaybeOSREv.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8MaybeOSREv.exit: ; preds = %bb.h, %bb.i
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler14EmitLandingPadEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEi(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef %1, i32 noundef %4)
  call void @_ZN2v88internal4wasm16LiftoffAssembler10FinishCallEPKNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull %2, ptr noundef %3) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueKindEA_S4_EEPT_m(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, -1
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = add i64 %1, 7
  %i.b = and i64 %i.a, -8                         ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = sub i64 %i.d, %i.f
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.d, label %_ZN2v88internal4Zone8AllocateIA_NS0_4wasm9ValueKindEEEPvm.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %i.b) #24
  %.pre.i = load i64, ptr %i.e, align 8
  br label %_ZN2v88internal4Zone8AllocateIA_NS0_4wasm9ValueKindEEEPvm.exit

_ZN2v88internal4Zone8AllocateIA_NS0_4wasm9ValueKindEEEPvm.exit: ; preds = %bb.c, %bb.d
  %i.i = phi i64 [ %.pre.i, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = add i64 %i.i, %i.b
  store i64 %i.k, ptr %i.e, align 8
  ret ptr %i.j
}

declare void @_ZN2v88internal14MacroAssembler25LoadProtectedPointerFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436), i8, i64, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal9Assembler5pushqENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i64, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal14MacroAssembler19CallWasmCodePointerENS0_8RegisterEmNS0_12CallJumpModeE(ptr noundef nonnull align 8 dereferenceable(436), i8, i64 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i64 @_ZNK2v88internal8compiler14CallDescriptor14signature_hashEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler29StoreFrameDescriptionForDeoptEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1284) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add i32 %i.j, %i.h
  %.sroa.03.0.insert.ext = zext i32 %i.k to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %.sroa.03.4.insert.ext = shl i64 %i.r, 32
  %.sroa.03.4.insert.insert = or disjoint i64 %.sroa.03.4.insert.ext, %.sroa.03.0.insert.ext
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x                       ; 5 uses
  %i.z = sdiv exact i64 %i.y, 12
  %i.aa = icmp ugt i64 %i.z, 768614336404564650
  br i1 %i.aa, label %bb.b, label %_ZNSt6vectorIN2v88internal4wasm15LiftoffVarStateESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #27
end_hunk_0
