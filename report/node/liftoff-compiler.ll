begin_hunk_0
  %.sroa.97.0.copyload = load i32, ptr %.sroa.97.0..sroa_idx, align 4 ; 3 uses
  %.sroa.97.sroa.0.0.extract.trunc = trunc i32 %.sroa.97.0.copyload to i8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = icmp eq ptr %i.g, %i.d
end_hunk_0
begin_hunk_1
  store i8 %.sroa.06.0.i.i, ptr %i.bm, align 4
  %i.bn = icmp sgt i32 %.sroa.12.0.copyload, -1
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = sub nsw i32 0, %.sroa.12.0.copyload     ; 2 uses
  %i.bp = icmp samesign ult i32 %.sroa.12.0.copyload, 129 ; 2 uses
  %i.bq = shl i32 %i.bo, 24
  %i.br = or disjoint i32 %i.bq, 4521984
  %.sroa.0.3.insert.insert11.i = zext i32 %i.br to i64
  %.sroa.0.3.insert.ext.i = zext i32 %i.bo to i64
  %.sroa.0.3.insert.shift.i = shl nuw nsw i64 %.sroa.0.3.insert.ext.i, 24
  %.sroa.0.3.insert.insert.i = or disjoint i64 %.sroa.0.3.insert.shift.i, 8716288
  %storemerge.i.i = select i1 %i.bp, i64 %.sroa.0.3.insert.insert11.i, i64 %.sroa.0.3.insert.insert.i
  %.fca.1.load.cast.i.i = select i1 %i.bp, ptr inttoptr (i64 2 to ptr), ptr inttoptr (i64 5 to ptr)
  tail call void @_ZN2v88internal4wasm7liftoff13LoadFromStackEPNS1_16LiftoffAssemblerENS1_15LiftoffRegisterENS0_7OperandENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, i64 %storemerge.i.i, ptr nonnull %.fca.1.load.cast.i.i, i8 noundef zeroext %.sroa.5.0.copyload)
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit, %bb.d
end_hunk_1
begin_hunk_2
  call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(1284) %i.dx, i8 %.sroa.06.0.i.i.i, i64 %i.kp, ptr %i.ko) #25
  %i.kq = load ptr, ptr %i.ea, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.kq, i64 -4
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 4 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.066.i55, i64 16 ; 3 uses
  %i.ks = load ptr, ptr %i.kr, align 8
  %i.kt = load ptr, ptr %i.ks, align 8            ; 3 uses
end_hunk_2
begin_hunk_3
  %.sroa.06.0.i.i105.i = phi i8 [ %i.pi, %bb.ba ], [ %i.pj, %bb.bb ] ; 5 uses
  %i.pk = icmp sgt i32 %.sroa.3.0.copyload.i, -1
  call void @llvm.assume(i1 %i.pk)
  %i.pl = sub nsw i32 0, %.sroa.3.0.copyload.i    ; 2 uses
  %i.pm = icmp samesign ult i32 %.sroa.3.0.copyload.i, 129 ; 2 uses
  %i.pn = shl i32 %i.pl, 24
  %i.po = or disjoint i32 %i.pn, 4521984
  %.sroa.0.3.insert.insert11.i.i = zext i32 %i.po to i64
  %.sroa.0.3.insert.ext.i.i = zext i32 %i.pl to i64
  %.sroa.0.3.insert.shift.i.i = shl nuw nsw i64 %.sroa.0.3.insert.ext.i.i, 24
  %.sroa.0.3.insert.insert.i.i = or disjoint i64 %.sroa.0.3.insert.shift.i.i, 8716288
  %storemerge.i.i.i = select i1 %i.pm, i64 %.sroa.0.3.insert.insert11.i.i, i64 %.sroa.0.3.insert.insert.i.i
  %.fca.1.load.cast.i.i.i = select i1 %i.pm, ptr inttoptr (i64 2 to ptr), ptr inttoptr (i64 5 to ptr)
  %i.pp = icmp samesign ult i8 %.sroa.06.0.i.i105.i, 16
  call void @llvm.assume(i1 %i.pp)
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(1284) %i.dx, i8 %.sroa.06.0.i.i105.i, i64 %storemerge.i.i.i, ptr nonnull %.fca.1.load.cast.i.i.i, i32 noundef 8) #25
  %i.pq = zext nneg i8 %.sroa.06.0.i.i105.i to i32
  %i.pr = shl nuw nsw i32 1, %i.pq
  %i.ps = load i32, ptr %i.eb, align 4
end_hunk_3
begin_hunk_4
  br label %bb.db

bb.cz:                                            ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit188.i
  %21 = icmp samesign ugt i8 %.0.i.i, 8
  %i.qg = icmp samesign ult i8 %.sroa.07.0.i165.i, 16
  tail call void @llvm.assume(i1 %i.qg)
  %i.qh = sext i32 %i.jz to i64                   ; 2 uses
  br i1 %21, label %bb.da, label %switch.lookup155

bb.da:                                            ; preds = %bb.cz
  %i.qi = icmp samesign ult i8 %.sroa.06.0.i.i187.i, 16
end_hunk_4
begin_hunk_5

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i200.i: ; preds = %bb.de, %bb.dd
  %i.rl = phi i32 [ %i.rj, %bb.de ], [ 32, %bb.dd ] ; 2 uses
  %22 = icmp samesign ugt i8 %.0.i.i, 8
  br i1 %22, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit2.i205.i, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i201.i

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i201.i: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i200.i
  %i.rm = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasm15value_kind_sizeENS1_9ValueKindE.kElementSize, i64 %i.pa
end_hunk_5
begin_hunk_6
  br label %bb.hd

bb.hc:                                            ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit184.i
  %23 = icmp samesign ugt i8 %.0.i168.i, 8
  %i.akk = icmp samesign ult i8 %.sroa.07.0.i160.i, 16
  tail call void @llvm.assume(i1 %i.akk)
  %i.akl = icmp samesign ult i8 %i.adu, 16
  tail call void @llvm.assume(i1 %i.akl)
  br i1 %23, label %_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit210.i, label %switch.lookup194

_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit210.i: ; preds = %bb.hc
  %i.akm = icmp samesign ult i8 %.sroa.06.0.i.i183.i, 16
end_hunk_6
begin_hunk_7

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i195.i: ; preds = %bb.he, %bb.hd
  %i.all = phi i32 [ %i.alj, %bb.he ], [ 32, %bb.hd ] ; 2 uses
  %24 = icmp samesign ugt i8 %.0.i168.i, 8
  br i1 %24, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit2.i200.i, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i196.i

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i196.i: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i195.i
  %i.alm = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasm15value_kind_sizeENS1_9ValueKindE.kElementSize, i64 %i.afs
end_hunk_7
begin_hunk_8

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i: ; preds = %bb.ah, %_ZN2v88internal4wasm16LiftoffAssembler20emit_type_conversionENS1_10WasmOpcodeENS1_15LiftoffRegisterES4_PNS0_5LabelE.exit.i
  %i.dz = phi i32 [ %i.dx, %bb.ah ], [ 32, %_ZN2v88internal4wasm16LiftoffAssembler20emit_type_conversionENS1_10WasmOpcodeENS1_15LiftoffRegisterES4_PNS0_5LabelE.exit.i ] ; 2 uses
  %3 = icmp samesign ugt i8 %.0.i, 8
  br i1 %3, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit2.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i.i

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i.i: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasm15value_kind_sizeENS1_9ValueKindE.kElementSize, i64 %i.ag
end_hunk_8
begin_hunk_9

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.k = load i32, ptr %i.j, align 4              ; 3 uses
  %i.l = icmp sgt i32 %i.k, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub nsw i32 0, %i.k                      ; 2 uses
  %i.n = icmp samesign ult i32 %i.k, 129          ; 2 uses
  %i.o = shl i32 %i.m, 24
  %i.p = or disjoint i32 %i.o, 4521984
  %.sroa.0.3.insert.insert10.i = zext i32 %i.p to i64
  %.sroa.0.3.insert.ext.i = zext i32 %i.m to i64
  %.sroa.0.3.insert.shift.i = shl nuw nsw i64 %.sroa.0.3.insert.ext.i, 24
  %.sroa.0.3.insert.insert.i = or disjoint i64 %.sroa.0.3.insert.shift.i, 8716288
  %storemerge.i.i = select i1 %i.n, i64 %.sroa.0.3.insert.insert10.i, i64 %.sroa.0.3.insert.insert.i
  %.fca.1.load.cast.i.i = select i1 %i.n, ptr inttoptr (i64 2 to ptr), ptr inttoptr (i64 5 to ptr)
  tail call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 0, i64 %storemerge.i.i, ptr nonnull %.fca.1.load.cast.i.i, i32 noundef 8) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.a
end_hunk_9
begin_hunk_10

.thread.i:                                        ; preds = %bb.m
  %i.bm = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.bn = load i32, ptr %i.bm, align 4            ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, -1
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = sub nsw i32 0, %i.bn                    ; 2 uses
  %i.bq = icmp samesign ult i32 %i.bn, 129        ; 2 uses
  %i.br = shl i32 %i.bp, 24
  %i.bs = or disjoint i32 %i.br, 4521984
  %.sroa.0.3.insert.insert11.i.i = zext i32 %i.bs to i64
  %.sroa.0.3.insert.ext.i.i = zext i32 %i.bp to i64
  %.sroa.0.3.insert.shift.i.i = shl nuw nsw i64 %.sroa.0.3.insert.ext.i.i, 24
  %.sroa.0.3.insert.insert.i.i = or disjoint i64 %.sroa.0.3.insert.shift.i.i, 8716288
  %storemerge.i.i.i = select i1 %i.bq, i64 %.sroa.0.3.insert.insert11.i.i, i64 %.sroa.0.3.insert.insert.i.i
  %.fca.1.load.cast.i.i.i = select i1 %i.bq, ptr inttoptr (i64 2 to ptr), ptr inttoptr (i64 5 to ptr)
  tail call void @_ZN2v88internal4wasm7liftoff13LoadFromStackEPNS1_16LiftoffAssemblerENS1_15LiftoffRegisterENS0_7OperandENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(1284) %0, i8 %.sroa.0.0.copyload.i.i, i64 %storemerge.i.i.i, ptr nonnull %.fca.1.load.cast.i.i.i, i8 noundef zeroext %i.be)
  br label %_ZN2v88internal4wasm15LiftoffVarState4CopyES2_.exit36

bb.n:                                             ; preds = %bb.m
end_hunk_10
begin_hunk_11
_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i: ; preds = %bb.q, %bb.p
  %.sroa.06.0.i.i.i = phi i8 [ %i.cf, %bb.p ], [ %i.cg, %bb.q ] ; 4 uses
  %i.ch = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.ci = load i32, ptr %i.ch, align 4            ; 3 uses
  %i.cj = icmp sgt i32 %i.ci, -1
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = sub nsw i32 0, %i.ci                    ; 2 uses
  %i.cl = icmp samesign ult i32 %i.ci, 129        ; 2 uses
  %i.cm = shl i32 %i.ck, 24
  %i.cn = or disjoint i32 %i.cm, 4521984
  %.sroa.0.3.insert.insert11.i29.i = zext i32 %i.cn to i64
  %.sroa.0.3.insert.ext.i30.i = zext i32 %i.ck to i64
  %.sroa.0.3.insert.shift.i31.i = shl nuw nsw i64 %.sroa.0.3.insert.ext.i30.i, 24
  %.sroa.0.3.insert.insert.i32.i = or disjoint i64 %.sroa.0.3.insert.shift.i31.i, 8716288
  %storemerge.i.i34.i = select i1 %i.cl, i64 %.sroa.0.3.insert.insert11.i29.i, i64 %.sroa.0.3.insert.insert.i32.i
  %.fca.1.load.cast.i.i35.i = select i1 %i.cl, ptr inttoptr (i64 2 to ptr), ptr inttoptr (i64 5 to ptr)
  tail call void @_ZN2v88internal4wasm7liftoff13LoadFromStackEPNS1_16LiftoffAssemblerENS1_15LiftoffRegisterENS0_7OperandENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(1284) %0, i8 %.sroa.06.0.i.i.i, i64 %storemerge.i.i34.i, ptr nonnull %.fca.1.load.cast.i.i35.i, i8 noundef zeroext %i.be)
  store i8 1, ptr %i.g, align 4
  store i8 %i.be, ptr %i.bd, align 1
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
end_hunk_11
begin_hunk_12
  %i.m = and i8 %i.l, -3
  %i.n = icmp eq i8 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load i32, ptr %i.o, align 4              ; 3 uses
  %i.q = icmp sgt i32 %i.p, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = sub nsw i32 0, %i.p                      ; 2 uses
  %i.s = icmp samesign ult i32 %i.p, 129          ; 2 uses
  %i.t = shl i32 %i.r, 24
  %i.u = or disjoint i32 %i.t, 4521984
  %.sroa.045.3.insert.insert53 = zext i32 %i.u to i64
  %.sroa.045.3.insert.ext = zext i32 %i.r to i64
  %.sroa.045.3.insert.shift = shl nuw nsw i64 %.sroa.045.3.insert.ext, 24
  %.sroa.045.3.insert.insert = or disjoint i64 %.sroa.045.3.insert.shift, 8716288
  %storemerge.i = select i1 %i.s, i64 %.sroa.045.3.insert.insert53, i64 %.sroa.045.3.insert.insert ; 2 uses
  %.fca.1.load.cast.i = select i1 %i.s, ptr inttoptr (i64 2 to ptr), ptr inttoptr (i64 5 to ptr) ; 2 uses
  br i1 %i.n, label %_ZN2v88internal4wasm7liftoff12GetStackSlotEi.exit, label %_ZN2v88internal4wasm7liftoff12GetStackSlotEi.exit44

_ZN2v88internal4wasm7liftoff12GetStackSlotEi.exit: ; preds = %bb.f
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 %storemerge.i, ptr nonnull %.fca.1.load.cast.i, i32 noundef 4) #25
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %1, ptr %2, i8 10, i32 noundef 4) #25
  br label %bb.g

_ZN2v88internal4wasm7liftoff12GetStackSlotEi.exit44: ; preds = %bb.f
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 %storemerge.i, ptr nonnull %.fca.1.load.cast.i, i32 noundef 8) #25
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %1, ptr %2, i8 10, i32 noundef 8) #25
  br label %bb.g

end_hunk_12
begin_hunk_13

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i: ; preds = %bb.o, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  %i.cz = phi i32 [ %i.cx, %bb.o ], [ 32, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit ] ; 2 uses
  %5 = icmp samesign ugt i8 %i.ci, 8
  br i1 %5, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit2.i, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i
  %i.da = zext nneg i8 %i.ci to i64
end_hunk_13
begin_hunk_14
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = icmp samesign ult i8 %i.a, 16
  tail call void @llvm.assume(i1 %i.bx)
  %5 = icmp samesign ugt i8 %.0.i38, 8
  br i1 %5, label %_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit, label %bb.n

_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  %i.by = icmp samesign ult i8 %.sroa.06.0.i.i, 16
end_hunk_14
begin_hunk_15

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i: ; preds = %bb.v, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15LoadObjectFieldEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_15LiftoffRegisterENS0_8RegisterESB_iNS1_9ValueKindEbbNS1_14LiftoffRegListE.exit
  %i.dd = phi i32 [ %i.db, %bb.v ], [ 32, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15LoadObjectFieldEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_15LiftoffRegisterENS0_8RegisterESB_iNS1_9ValueKindEbbNS1_14LiftoffRegListE.exit ] ; 2 uses
  %6 = icmp samesign ugt i8 %i.cm, 8
  br i1 %6, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit2.i, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i
  %i.de = zext nneg i8 %i.cm to i64
end_hunk_15
begin_hunk_16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.du
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ej, align 4 ; 11 uses
  br i1 %4, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler17StructFieldOffsetEPKNS1_10StructTypeEi.exit
end_hunk_16
begin_hunk_17
  %i.gt = add nsw i32 %i.gs, -5648                ; 2 uses
  %i.gu = call i32 @llvm.fshl.i32(i32 %i.gt, i32 %i.gt, i32 24) ; 2 uses
  %i.gv = icmp ult i32 %i.gu, 8
  br i1 %i.gv, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27) #28
end_hunk_17
begin_hunk_18

bb.aj:                                            ; preds = %.critedge
  %i.gw = and i32 %.sroa.0.0.copyload.i.i, 268435427
  switch i32 %i.gw, label %bb.al [
    i32 258, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit92.thread.thread
    i32 514, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit92.thread.thread
    i32 2, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit92.thread.thread
  ]

bb.ak:                                            ; preds = %bb.ah
  %12 = shl nuw nsw i32 %i.gu, 3
  %switch.shiftamt = zext nneg i32 %12 to i64
  %switch.downshift = lshr i64 504967250831737600, %switch.shiftamt
  %switch.masked = trunc i64 %switch.downshift to i8
  %13 = sext i32 %i.eg to i64
  call void @_ZN2v88internal4wasm16LiftoffAssembler5StoreENS0_8RegisterES3_mNS1_15LiftoffRegisterENS1_9StoreTypeENS1_14LiftoffRegListEPjbb(ptr noundef nonnull align 8 dereferenceable(1284) %0, i8 0, i8 -1, i64 noundef %13, i8 %.sroa.012.0112, i8 %switch.masked, i32 %i.gm, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16StoreObjectFieldEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS0_8RegisterESA_iNS1_15LiftoffRegisterEbNS1_14LiftoffRegListENS1_9ValueKindENS1_16LiftoffAssembler16SkipWriteBarrierE.exit

bb.al:                                            ; preds = %bb.aj
  %i.gx = icmp samesign ult i8 %.sroa.012.0112, 16
  call void @llvm.assume(i1 %i.gx)
  call void @_ZN2v88internal4wasm16LiftoffAssembler18StoreTaggedPointerENS0_8RegisterES3_iS3_NS1_14LiftoffRegListEPjNS2_16SkipWriteBarrierE(ptr noundef nonnull align 8 dereferenceable(1284) %0, i8 0, i8 -1, i32 noundef %i.eg, i8 %.sroa.012.0112, i32 %i.gm, ptr noundef null, i1 noundef zeroext %not.)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16StoreObjectFieldEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS0_8RegisterESA_iNS1_15LiftoffRegisterEbNS1_14LiftoffRegListENS1_9ValueKindENS1_16LiftoffAssembler16SkipWriteBarrierE.exit

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit92.thread.thread: ; preds = %bb.aj, %bb.aj, %bb.aj
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27) #28
  unreachable

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16StoreObjectFieldEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS0_8RegisterESA_iNS1_15LiftoffRegisterEbNS1_14LiftoffRegListENS1_9ValueKindENS1_16LiftoffAssembler16SkipWriteBarrierE.exit: ; preds = %bb.al, %bb.ak
  %i.gy = xor i32 %i.gl, -1
  %i.gz = and i32 %.sroa.097.0121, %i.gy
  br i1 %.wide, label %.critedge65, label %bb.n
end_hunk_18
begin_hunk_19
bb.e:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %2, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = sub nsw i32 0, %2                        ; 2 uses
  %i.j = icmp samesign ult i32 %2, 129            ; 2 uses
  %i.k = shl i32 %i.i, 24
  %i.l = or disjoint i32 %i.k, 4521984
  %.sroa.0.3.insert.insert11.i = zext i32 %i.l to i64
  %.sroa.0.3.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.3.insert.shift.i = shl nuw nsw i64 %.sroa.0.3.insert.ext.i, 24
  %.sroa.0.3.insert.insert.i = or disjoint i64 %.sroa.0.3.insert.shift.i, 8716288
  %storemerge.i.i = select i1 %i.j, i64 %.sroa.0.3.insert.insert11.i, i64 %.sroa.0.3.insert.insert.i
  %.fca.1.load.cast.i.i = select i1 %i.j, ptr inttoptr (i64 2 to ptr), ptr inttoptr (i64 5 to ptr)
  tail call void @_ZN2v88internal4wasm7liftoff13LoadFromStackEPNS1_16LiftoffAssemblerENS1_15LiftoffRegisterENS0_7OperandENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %3, i64 %storemerge.i.i, ptr nonnull %.fca.1.load.cast.i.i, i8 noundef zeroext %.sroa.2.0.extract.trunc)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit
end_hunk_19
begin_hunk_20

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i: ; preds = %bb.n, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  %i.cu = phi i32 [ %i.cs, %bb.n ], [ 32, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit ] ; 2 uses
  %5 = icmp samesign ugt i8 %i.cd, 8
  br i1 %5, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit2.i, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i
  %i.cv = zext nneg i8 %i.cd to i64
end_hunk_20
begin_hunk_21
  %i.fl = shl nuw i32 1, %i.fk                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4
  %5 = icmp samesign ugt i8 %.0.i, 8              ; 2 uses
  br i1 %5, label %bb.ab, label %switch.lookup

bb.ab:                                            ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit117
  %i.fm = or i32 %i.fl, %i.da
end_hunk_21
begin_hunk_22

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i118: ; preds = %bb.af, %bb.ae
  %i.gh = phi i32 [ %i.gf, %bb.af ], [ 32, %bb.ae ] ; 2 uses
  br i1 %5, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit2.i123, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i119

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i119: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i118
  %i.gi = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasm15value_kind_sizeENS1_9ValueKindE.kElementSize, i64 %i.ev
end_hunk_22
begin_hunk_23
  tail call void @llvm.assume(i1 %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4
  %4 = icmp samesign ugt i8 %.0.i39, 8
  br i1 %4, label %_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit, label %switch.lookup

_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  %i.bz = icmp samesign ult i8 %.sroa.06.0.i.i, 16
end_hunk_23
begin_hunk_24

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i: ; preds = %bb.n, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler21LoadAtomicObjectFieldEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_15LiftoffRegisterENS0_8RegisterESB_iNS1_9ValueKindEbbNS0_17AtomicMemoryOrderENS1_14LiftoffRegListE.exit
  %i.dc = phi i32 [ %i.da, %bb.n ], [ 32, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler21LoadAtomicObjectFieldEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_15LiftoffRegisterENS0_8RegisterESB_iNS1_9ValueKindEbbNS0_17AtomicMemoryOrderENS1_14LiftoffRegListE.exit ] ; 2 uses
  %5 = icmp samesign ugt i8 %i.cl, 8
  br i1 %5, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit2.i, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i
  %i.dd = zext nneg i8 %i.cl to i64
end_hunk_24
begin_hunk_25
  %i.fg = shl nuw i32 1, %i.ff                    ; 2 uses
  %i.fh = icmp samesign ult i8 %i.ar, 16
  tail call void @llvm.assume(i1 %i.fh)
  %5 = icmp samesign ugt i8 %.0.i114, 8           ; 2 uses
  br i1 %5, label %bb.y, label %switch.lookup

bb.y:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit121
  %i.fi = or i32 %i.fg, %i.bp
end_hunk_25
begin_hunk_26

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i122: ; preds = %bb.aa, %bb.z
  %i.fz = phi i32 [ %i.fx, %bb.aa ], [ 32, %bb.z ] ; 2 uses
  br i1 %5, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit2.i127, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i123

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i123: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i122
  %i.ga = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasm15value_kind_sizeENS1_9ValueKindE.kElementSize, i64 %i.ct
end_hunk_26
