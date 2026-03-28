begin_hunk_0
bb.g:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  %i.x = icmp sgt i32 %2, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = sub nsw i32 0, %2                        ; 3 uses
  %5 = sext i32 %i.y to i64
  %6 = add nsw i64 %5, 128
  %i.z = icmp ult i64 %6, 256                     ; 2 uses
  %i.aa = shl i32 %i.y, 24
  %i.ab = or disjoint i32 %i.aa, 4521984
  %.sroa.0.3.insert.insert11.i.i = zext i32 %i.ab to i64
  %.sroa.0.3.insert.ext.i.i = zext i32 %i.y to i64
  %.sroa.0.3.insert.shift.i.i = shl nuw nsw i64 %.sroa.0.3.insert.ext.i.i, 24
  %.sroa.0.3.insert.insert.i.i = or disjoint i64 %.sroa.0.3.insert.shift.i.i, 8716288
  %.sroa.0.0.i.i = select i1 %i.z, i64 %.sroa.0.3.insert.insert11.i.i, i64 %.sroa.0.3.insert.insert.i.i
  %storemerge.i.i.i = select i1 %i.z, i64 2, i64 5
  %.fca.1.load.cast.i.i.i = inttoptr i64 %storemerge.i.i.i to ptr
  tail call void @_ZN2v88internal4wasm7liftoff13LoadFromStackEPNS1_16LiftoffAssemblerENS1_15LiftoffRegisterENS0_7OperandENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, i64 %.sroa.0.0.i.i, ptr nonnull %.fca.1.load.cast.i.i.i, i8 noundef zeroext %.sroa.2.0.extract.trunc)
  br label %_ZN2v88internal4wasm16LiftoffAssembler19LoadToFixedRegisterENS1_15LiftoffVarStateENS1_15LiftoffRegisterE.exit

_ZN2v88internal4wasm16LiftoffAssembler19LoadToFixedRegisterENS1_15LiftoffVarStateENS1_15LiftoffRegisterE.exit: ; preds = %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit.i, %bb.g
end_hunk_0
begin_hunk_1
bb.e:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %2, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = sub nsw i32 0, %2                        ; 3 uses
  %5 = sext i32 %i.i to i64
  %6 = add nsw i64 %5, 128
  %i.j = icmp ult i64 %6, 256                     ; 2 uses
  %i.k = shl i32 %i.i, 24
  %i.l = or disjoint i32 %i.k, 4521984
  %.sroa.0.3.insert.insert11.i = zext i32 %i.l to i64
  %.sroa.0.3.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.3.insert.shift.i = shl nuw nsw i64 %.sroa.0.3.insert.ext.i, 24
  %.sroa.0.3.insert.insert.i = or disjoint i64 %.sroa.0.3.insert.shift.i, 8716288
  %.sroa.0.0.i = select i1 %i.j, i64 %.sroa.0.3.insert.insert11.i, i64 %.sroa.0.3.insert.insert.i
  %storemerge.i.i = select i1 %i.j, i64 2, i64 5
  %.fca.1.load.cast.i.i = inttoptr i64 %storemerge.i.i to ptr
  tail call void @_ZN2v88internal4wasm7liftoff13LoadFromStackEPNS1_16LiftoffAssemblerENS1_15LiftoffRegisterENS0_7OperandENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %3, i64 %.sroa.0.0.i, ptr nonnull %.fca.1.load.cast.i.i, i8 noundef zeroext %.sroa.2.0.extract.trunc)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit
end_hunk_1
begin_hunk_2

_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit80: ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %.06396, i64 8
  %i.dd = load i32, ptr %i.dc, align 4            ; 4 uses
  %i.de = icmp sgt i32 %i.dd, -1
  tail call void @llvm.assume(i1 %i.de)
  %.not93 = icmp eq i8 %i.ce, 1                   ; 2 uses
end_hunk_2
begin_hunk_3
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i: ; preds = %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit80, %bb.y
  %i.dl = sub nsw i32 0, %i.dd                    ; 3 uses
  %5 = sext i32 %i.dl to i64
  %6 = add nsw i64 %5, 128
  %i.dm = icmp ult i64 %6, 256                    ; 2 uses
  %i.dn = shl i32 %i.dl, 24
  %i.do = or disjoint i32 %i.dn, 4521984
  %.sroa.036.3.insert.insert44.i = zext i32 %i.do to i64
  %.sroa.036.3.insert.ext.i = zext i32 %i.dl to i64
  %.sroa.036.3.insert.shift.i = shl nuw nsw i64 %.sroa.036.3.insert.ext.i, 24
  %.sroa.036.3.insert.insert.i = or disjoint i64 %.sroa.036.3.insert.shift.i, 8716288
  %.sroa.036.0.i = select i1 %i.dm, i64 %.sroa.036.3.insert.insert44.i, i64 %.sroa.036.3.insert.insert.i ; 4 uses
  %storemerge.i.i = select i1 %i.dm, i64 2, i64 5
  %.fca.1.load.cast.i.i = inttoptr i64 %storemerge.i.i to ptr ; 4 uses
  br i1 %.not93, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.036.0.i, ptr nonnull %.fca.1.load.cast.i.i, i64 %.sroa.2.sroa.0.0.insert.ext, i32 noundef 4) #21
  br label %_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE.exit

bb.aa:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i
end_hunk_3
begin_hunk_4
  br i1 %i.dq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.036.0.i, ptr nonnull %.fca.1.load.cast.i.i, i64 %.sroa.2.sroa.0.0.insert.ext, i32 noundef 8) #21
  br label %_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE.exit

bb.ac:                                            ; preds = %bb.aa
end_hunk_4
begin_hunk_5

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 10, i64 %.sroa.2.sroa.0.0.insert.insert, i32 noundef 4) #21
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.036.0.i, ptr nonnull %.fca.1.load.cast.i.i, i8 10, i32 noundef 8) #21
  br label %_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE.exit

bb.ae:                                            ; preds = %bb.ac
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_11Immediate64Ei(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 10, i64 %.sroa.2.sroa.0.0.insert.insert, i8 0, i32 noundef 8) #21
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.036.0.i, ptr nonnull %.fca.1.load.cast.i.i, i8 10, i32 noundef 8) #21
  br label %_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE.exit

_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE.exit: ; preds = %bb.z, %bb.ab, %bb.ad, %bb.ae
end_hunk_5
begin_hunk_6

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i: ; preds = %bb.r, %bb.q
  %i.cd = phi i32 [ %i.cb, %bb.r ], [ 32, %bb.q ] ; 2 uses
  %3 = add nsw i8 %i.ab, -9
  %4 = icmp ult i8 %3, 2
  br i1 %4, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit3.i, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasm15value_kind_sizeENS1_9ValueKindE.kElementSize, i64 %i.ac
end_hunk_6
