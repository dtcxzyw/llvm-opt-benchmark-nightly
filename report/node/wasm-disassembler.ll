begin_hunk_0
  br label %_ZN2v88internal4wasm24FunctionBodyDisassembler9GetOpcodeEv.exit

_ZN2v88internal4wasm24FunctionBodyDisassembler9GetOpcodeEv.exit: ; preds = %bb.s, %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i
  %.0.i = phi i32 [ %.sroa.0.0.extract.trunc.i, %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i ], [ %i.fk, %bb.s ] ; 6 uses
  store i32 %.0.i, ptr %i.ev, align 4
  %7 = icmp eq i32 %.0.i, 11
  switch i32 %.0.i, label %bb.ab [
    i32 25, label %bb.aa
    i32 24, label %bb.aa
end_hunk_0
begin_hunk_1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN2v88internal4wasm24FunctionBodyDisassembler9GetOpcodeEv.exit
  %.sroa.0140.1 = phi i32 [ %.sroa.0140.0174, %_ZN2v88internal4wasm24FunctionBodyDisassembler9GetOpcodeEv.exit ], [ %spec.select, %bb.aa ] ; 4 uses
  %i.gb = sext i32 %.sroa.0140.1 to i64           ; 5 uses
  %i.gc = load i64, ptr %i.ew, align 8            ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.gb
end_hunk_1
begin_hunk_2
  ]

bb.ad:                                            ; preds = %_ZN2v88internal4wasmlsERNS1_13StringBuilderENS1_11IndentationE.exit115, %_ZN2v88internal4wasmlsERNS1_13StringBuilderENS1_11IndentationE.exit115, %_ZN2v88internal4wasmlsERNS1_13StringBuilderENS1_11IndentationE.exit115, %_ZN2v88internal4wasmlsERNS1_13StringBuilderENS1_11IndentationE.exit115, %_ZN2v88internal4wasmlsERNS1_13StringBuilderENS1_11IndentationE.exit115, %_ZN2v88internal4wasmlsERNS1_13StringBuilderENS1_11IndentationE.exit115, %_ZN2v88internal4wasmlsERNS1_13StringBuilderENS1_11IndentationE.exit115, %_ZN2v88internal4wasmlsERNS1_13StringBuilderENS1_11IndentationE.exit115
  %i.gi = add nsw i32 %.sroa.0140.1, %.sroa.14.0.extract.trunc ; 2 uses
  br i1 %7, label %bb.ae, label %bb.aq

bb.ae:                                            ; preds = %_ZN2v88internal4wasmlsERNS1_13StringBuilderENS1_11IndentationE.exit115, %bb.ad
  %.sroa.0140.2 = phi i32 [ %i.gi, %bb.ad ], [ %.sroa.0140.1, %_ZN2v88internal4wasmlsERNS1_13StringBuilderENS1_11IndentationE.exit115 ] ; 4 uses
  %i.gj = icmp slt i32 %.sroa.0140.2, %.sroa.0140.0.extract.trunc
  br i1 %i.gj, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
end_hunk_2
begin_hunk_3
  br label %.thread

bb.ah:                                            ; preds = %bb.ae
  %i.gq = icmp eq i32 %.sroa.0140.2, %.sroa.0140.0.extract.trunc
  %i.gr = load i64, ptr %i.ew, align 8            ; 4 uses
  br i1 %i.gq, label %bb.ai, label %bb.ak

end_hunk_3
begin_hunk_4
  store ptr %i.hv, ptr %i.ey, align 8
  br label %.thread

bb.aq:                                            ; preds = %_ZN2v88internal4wasmlsERNS1_13StringBuilderENS1_11IndentationE.exit115, %bb.ad
  %.sroa.0140.3 = phi i32 [ %.sroa.0140.1, %_ZN2v88internal4wasmlsERNS1_13StringBuilderENS1_11IndentationE.exit115 ], [ %i.gi, %bb.ad ] ; 2 uses
  %i.hw = call noundef ptr @_ZN2v88internal4wasm11WasmOpcodes10OpcodeNameENS1_10WasmOpcodeE(i32 noundef %.0.i) ; 2 uses
  %i.hx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hw) #25 ; 5 uses
end_hunk_4
begin_hunk_5
  br label %bb.ay

.thread:                                          ; preds = %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit119, %bb.ap, %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit117, %bb.as
  %.sroa.0140.4165 = phi i32 [ %.sroa.0140.3, %bb.as ], [ %.sroa.0140.2, %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit117 ], [ %.sroa.0140.2, %bb.ap ], [ %.sroa.0140.0.extract.trunc, %_ZN2v88internal4wasmlsERNS1_13StringBuilderEPKc.exit119 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %i.fg, align 8
end_hunk_5
