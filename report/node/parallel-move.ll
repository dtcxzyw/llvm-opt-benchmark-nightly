Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/parallel-move?download=true
inline.NumInlined: 279
inline.NumDeleted: 136
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.v8::internal::wasm::WasmValue" = type { %"class.v8::internal::wasm::CanonicalValueType", [16 x i8], ptr }
%"class.v8::internal::wasm::CanonicalValueType" = type { %"class.v8::internal::wasm::ValueTypeBase" }
%"class.v8::internal::wasm::ValueTypeBase" = type { i32 }

$_ZN2v88internal4wasm16LiftoffAssembler14MoveStackValueEjjNS1_9ValueKindE = comdat any

$_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_15LiftoffRegisterENS1_9ValueKindE = comdat any

$_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE = comdat any

$_ZN2v88internal4wasm16LiftoffAssembler12LoadConstantENS1_15LiftoffRegisterENS1_9WasmValueE = comdat any

$_ZN2v88internal4wasm7liftoff13LoadFromStackEPNS1_16LiftoffAssemblerENS1_15LiftoffRegisterENS0_7OperandENS1_9ValueKindE = comdat any

@.str = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@_ZN2v88internal11CpuFeatures10supported_E = external local_unnamed_addr global i32, align 4
@__const._ZN2v88internal4wasm15value_kind_sizeENS1_9ValueKindE.kElementSize = private unnamed_addr constant [13 x i8] c"\FF\04\08\04\08\10\01\02\02\08\08\FF\FF", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm12ParallelMove15TransferToStackEiRKNS1_15LiftoffVarStateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(356) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 7 uses
  %i.a = load i8, ptr %2, align 4
  switch i8 %i.a, label %bb.h [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = icmp sgt i32 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i32 %i.c, %1
  br i1 %i.e, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.i = load i8, ptr %i.h, align 1
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler14MoveStackValueEjjNS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %i.g, i32 noundef %1, i32 noundef %i.c, i8 noundef zeroext %i.i)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.0.0.copyload.i = load i8, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.n = load i8, ptr %i.m, align 1
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_15LiftoffRegisterENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %i.k, i32 noundef %1, i8 %.sroa.0.0.copyload.i, i8 noundef zeroext %i.n)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.p = load ptr, ptr %i.o, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.r = load i8, ptr %i.q, align 1, !noalias !7
  %i.s = icmp eq i8 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i32, ptr %i.t, align 4, !noalias !7 ; 2 uses
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.v, i8 0, i64 12, i1 false), !alias.scope !7
  store i32 %i.u, ptr %scevgep.i.i, align 4, !alias.scope !7
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit

bb.g:                                             ; preds = %bb.e
  %i.w = sext i32 %i.u to i64
  %scevgep.i1.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i64 0, ptr %i.x, align 4, !alias.scope !7
  store i64 %i.w, ptr %scevgep.i1.i, align 4, !alias.scope !7
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit

_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit: ; preds = %bb.f, %bb.g
  %.sink.i = phi i32 [ 5648, %bb.f ], [ 5904, %bb.g ]
  store i32 %.sink.i, ptr %3, align 8, !alias.scope !7
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.y, align 8, !alias.scope !7
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %i.p, i32 noundef %1, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %3)
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler14MoveStackValueEjjNS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #1 comdat align 2 {
_ZN2v88internal4wasm7liftoff12GetStackSlotEi.exit:
  %i.a = sub nsw i32 0, %1                        ; 2 uses
  %4 = add i32 %1, 127
  %i.b = icmp ult i32 %4, 256                     ; 2 uses
  %i.c = shl i32 %i.a, 24
  %i.d = or disjoint i32 %i.c, 4521984
  %.sroa.0.3.insert.insert40 = zext i32 %i.d to i64
  %.sroa.0.3.insert.ext = zext i32 %i.a to i64
  %.sroa.0.3.insert.shift = shl nuw nsw i64 %.sroa.0.3.insert.ext, 24
  %.sroa.0.3.insert.insert = or disjoint i64 %.sroa.0.3.insert.shift, 8716288
  %storemerge.i = select i1 %i.b, i64 %.sroa.0.3.insert.insert40, i64 %.sroa.0.3.insert.insert ; 4 uses
  %.fca.1.load.cast.i = select i1 %i.b, ptr inttoptr (i64 2 to ptr), ptr inttoptr (i64 5 to ptr) ; 4 uses
  %i.e = sub nsw i32 0, %2                        ; 2 uses
  %5 = add i32 %2, 127
  %i.f = icmp ult i32 %5, 256                     ; 2 uses
  %i.g = shl i32 %i.e, 24
  %i.h = or disjoint i32 %i.g, 4521984
  %.sroa.041.3.insert.insert49 = zext i32 %i.h to i64
  %.sroa.041.3.insert.ext = zext i32 %i.e to i64
  %.sroa.041.3.insert.shift = shl nuw nsw i64 %.sroa.041.3.insert.ext, 24
  %.sroa.041.3.insert.insert = or disjoint i64 %.sroa.041.3.insert.shift, 8716288
  %storemerge.i26 = select i1 %i.f, i64 %.sroa.041.3.insert.insert49, i64 %.sroa.041.3.insert.insert ; 4 uses
  %.fca.1.load.cast.i29 = select i1 %i.f, ptr inttoptr (i64 2 to ptr), ptr inttoptr (i64 5 to ptr) ; 4 uses
  %i.i = add i8 %3, -9
  %i.j = icmp ult i8 %i.i, 2
  br i1 %i.j, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.thread, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit: ; preds = %_ZN2v88internal4wasm7liftoff12GetStackSlotEi.exit
  %i.k = zext i8 %3 to i64
  %i.l = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasm15value_kind_sizeENS1_9ValueKindE.kElementSize, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %bb.g [
    i8 4, label %bb.a
    i8 8, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.thread
    i8 16, label %bb.b
  ]

bb.a:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 %storemerge.i26, ptr nonnull %.fca.1.load.cast.i29, i32 noundef 4) #10
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %storemerge.i, ptr nonnull %.fca.1.load.cast.i, i8 10, i32 noundef 4) #10
  br label %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.thread: ; preds = %_ZN2v88internal4wasm7liftoff12GetStackSlotEi.exit, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 %storemerge.i26, ptr nonnull %.fca.1.load.cast.i29, i32 noundef 8) #10
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %storemerge.i, ptr nonnull %.fca.1.load.cast.i, i8 10, i32 noundef 8) #10
  br label %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.b:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit
  %i.n = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.o = and i32 %i.n, 32
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal9Assembler7vmovdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 15, i64 %storemerge.i26, ptr nonnull %.fca.1.load.cast.i29) #10
  br label %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal9Assembler6movupsENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 15, i64 %storemerge.i26, ptr nonnull %.fca.1.load.cast.i29) #10
  br label %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit: ; preds = %bb.c, %bb.d
  %i.p = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.q = and i32 %i.p, 32
  %.not.i.i32 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i32, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit
  tail call void @_ZN2v88internal9Assembler7vmovdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %storemerge.i, ptr nonnull %.fca.1.load.cast.i, i8 15) #10
  br label %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.f:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit
  tail call void @_ZN2v88internal9Assembler6movupsENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %storemerge.i, ptr nonnull %.fca.1.load.cast.i, i8 15) #10
  br label %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.g:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #11
  unreachable

_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit: ; preds = %bb.f, %bb.e, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.thread, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_15LiftoffRegisterENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef %1, i8 %2, i8 noundef zeroext %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not.i = icmp slt i32 %1, %i.b
  br i1 %.not.i, label %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit

_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit: ; preds = %bb.a, %bb.b
  %i.c = sub nsw i32 0, %1                        ; 2 uses
  %4 = add i32 %1, 127
  %i.d = icmp ult i32 %4, 256                     ; 2 uses
  %i.e = shl i32 %i.c, 24
  %i.f = or disjoint i32 %i.e, 4521984
  %.sroa.027.3.insert.insert35 = zext i32 %i.f to i64
  %.sroa.027.3.insert.ext = zext i32 %i.c to i64
  %.sroa.027.3.insert.shift = shl nuw nsw i64 %.sroa.027.3.insert.ext, 24
  %.sroa.027.3.insert.insert = or disjoint i64 %.sroa.027.3.insert.shift, 8716288
  %storemerge.i = select i1 %i.d, i64 %.sroa.027.3.insert.insert35, i64 %.sroa.027.3.insert.insert ; 8 uses
  %.fca.1.load.cast.i = select i1 %i.d, ptr inttoptr (i64 2 to ptr), ptr inttoptr (i64 5 to ptr) ; 8 uses
  switch i8 %3, label %bb.n [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 10, label %bb.d
    i8 9, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.h
    i8 5, label %bb.k
  ]

bb.c:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit
  %i.g = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.g)
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %storemerge.i, ptr nonnull %.fca.1.load.cast.i, i8 %2, i32 noundef 4) #10
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.d:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit, %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit, %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit
  %i.h = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.h)
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %storemerge.i, ptr nonnull %.fca.1.load.cast.i, i8 %2, i32 noundef 8) #10
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.e:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit
  %i.i = add nsw i8 %2, -16                       ; 2 uses
  %i.j = icmp slt i8 %2, 32
  tail call void @llvm.assume(i1 %i.j)
  %i.k = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.l = and i32 %i.k, 32
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal9Assembler3vssEhNS0_11XMMRegisterES2_NS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 17, i8 %i.i, i8 0, i64 %storemerge.i, ptr nonnull %.fca.1.load.cast.i) #10
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal9Assembler5movssENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %storemerge.i, ptr nonnull %.fca.1.load.cast.i, i8 %i.i) #10
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.h:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit
  %i.m = add nsw i8 %2, -16                       ; 2 uses
  %i.n = icmp slt i8 %2, 32
  tail call void @llvm.assume(i1 %i.n)
  %i.o = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.p = and i32 %i.o, 32
  %.not.i.i21 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i21, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 17, i8 %i.m, i8 0, i64 %storemerge.i, ptr nonnull %.fca.1.load.cast.i, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #10
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.j:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal9Assembler5movsdENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %storemerge.i, ptr nonnull %.fca.1.load.cast.i, i8 %i.m) #10
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.k:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit
  %i.q = add nsw i8 %2, -16                       ; 2 uses
  %i.r = icmp slt i8 %2, 32
  tail call void @llvm.assume(i1 %i.r)
  %i.s = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.t = and i32 %i.s, 32
  %.not.i.i22 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i22, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal9Assembler7vmovdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %storemerge.i, ptr nonnull %.fca.1.load.cast.i, i8 %i.q) #10
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.m:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal9Assembler6movupsENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %storemerge.i, ptr nonnull %.fca.1.load.cast.i, i8 %i.q) #10
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.n:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #11
  unreachable

_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit: ; preds = %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef %1, ptr noundef byval(%"class.v8::internal::wasm::WasmValue") align 8 %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not.i = icmp slt i32 %1, %i.b
  br i1 %.not.i, label %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit

_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit: ; preds = %bb.a, %bb.b
  %i.c = sub nsw i32 0, %1                        ; 2 uses
  %3 = add i32 %1, 127
  %i.d = icmp ult i32 %3, 256                     ; 2 uses
  %i.e = shl i32 %i.c, 24
  %i.f = or disjoint i32 %i.e, 4521984
  %.sroa.036.3.insert.insert44 = zext i32 %i.f to i64
  %.sroa.036.3.insert.ext = zext i32 %i.c to i64
  %.sroa.036.3.insert.shift = shl nuw nsw i64 %.sroa.036.3.insert.ext, 24
  %.sroa.036.3.insert.insert = or disjoint i64 %.sroa.036.3.insert.shift, 8716288
  %storemerge.i = select i1 %i.d, i64 %.sroa.036.3.insert.insert44, i64 %.sroa.036.3.insert.insert ; 4 uses
  %.fca.1.load.cast.i = select i1 %i.d, ptr inttoptr (i64 2 to ptr), ptr inttoptr (i64 5 to ptr) ; 4 uses
  %.sroa.0.0.copyload.i = load i32, ptr %2, align 8 ; 2 uses
  %i.g = and i32 %.sroa.0.0.copyload.i, 3
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread

bb.c:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit
  %i.i = and i32 %.sroa.0.0.copyload.i, 268435440
  %i.j = add nsw i32 %i.i, -5648                  ; 2 uses
  %i.k = tail call i32 @llvm.fshl.i32(i32 %i.j, i32 %i.j, i32 24) ; 2 uses
  %i.l = icmp ult i32 %i.k, 8
  br i1 %i.l, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #11
  unreachable

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit: ; preds = %bb.c
  %switch.idx.cast.i = trunc nuw nsw i32 %i.k to i8
  switch i8 %switch.idx.cast.i, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread [
    i8 0, label %bb.e
    i8 1, label %bb.f
  ]

bb.e:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.0.copyload.i.i.i = load i32, ptr %i.m, align 4
  %.sroa.028.0.insert.ext = zext i32 %.0.copyload.i.i.i to i64
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %storemerge.i, ptr nonnull %.fca.1.load.cast.i, i64 %.sroa.028.0.insert.ext, i32 noundef 4) #10
  br label %bb.k

bb.f:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.0.copyload.i.i.i16 = load i64, ptr %i.n, align 4 ; 5 uses
  %i.o = add i64 %.0.copyload.i.i.i16, 2147483648
  %i.p = icmp ult i64 %i.o, 4294967296
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.021.0.insert.ext = and i64 %.0.copyload.i.i.i16, 4294967295
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %storemerge.i, ptr nonnull %.fca.1.load.cast.i, i64 %.sroa.021.0.insert.ext, i32 noundef 8) #10
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %.not.i.i = icmp ult i64 %.0.copyload.i.i.i16, 4294967296
  br i1 %.not.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 %.0.copyload.i.i.i16, i32 noundef 4) #10
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %storemerge.i, ptr nonnull %.fca.1.load.cast.i, i8 10, i32 noundef 8) #10
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_11Immediate64Ei(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 %.0.copyload.i.i.i16, i8 0, i32 noundef 8) #10
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %storemerge.i, ptr nonnull %.fca.1.load.cast.i, i8 10, i32 noundef 8) #10
  br label %bb.k

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #11
  unreachable

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.i, %bb.e
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define hidden preserve_mostcc void @_ZN2v88internal4wasm12ParallelMove12ExecuteMovesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(356) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 12 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 8 ; 2 uses
  %i.b = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  br label %bb.b

.preheader:                                       ; preds = %_ZN2v88internal4wasm12ParallelMove11ExecuteMoveENS1_15LiftoffRegisterE.exit
  %.pre = load i32, ptr %i.a, align 8             ; 2 uses
  %i.e = icmp eq i32 %.pre, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph30

.lr.ph30:                                         ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal4wasm12ParallelMove11ExecuteMoveENS1_15LiftoffRegisterE.exit
  %.sroa.025.029 = phi i32 [ %.sroa.0.0.copyload.i, %.lr.ph ], [ %i.al, %_ZN2v88internal4wasm12ParallelMove11ExecuteMoveENS1_15LiftoffRegisterE.exit ] ; 3 uses
  %i.k = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.025.029, i1 true) ; 3 uses
  %i.l = load i32, ptr %i.a, align 8
  %i.m = shl nuw i32 1, %i.k
  %i.n = and i32 %i.l, %i.m
  %.not28 = icmp eq i32 %i.n, 0
  br i1 %.not28, label %_ZN2v88internal4wasm12ParallelMove11ExecuteMoveENS1_15LiftoffRegisterE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i32 %i.k to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %tailrecurse.i.preheader, label %_ZN2v88internal4wasm12ParallelMove11ExecuteMoveENS1_15LiftoffRegisterE.exit

tailrecurse.i.preheader:                          ; preds = %bb.c
  %i.r = trunc nuw nsw i32 %i.k to i8
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.preheader, %bb.d
  %.tr9.i = phi i8 [ %.sroa.01.0.copyload.i.i, %bb.d ], [ %i.r, %tailrecurse.i.preheader ] ; 3 uses
  %i.s = zext i8 %.tr9.i to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.s ; 4 uses
  %i.u = load ptr, ptr %i.d, align 8
  %.sroa.01.0.copyload.i = load i8, ptr %i.t, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.w = load i8, ptr %i.v, align 1
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %i.u, i8 %.tr9.i, i8 %.sroa.01.0.copyload.i, i8 noundef zeroext %i.w) #10, !inline_history !8
  %i.x = zext nneg i8 %.tr9.i to i32
  %i.y = shl nuw i32 1, %i.x
  %i.z = xor i32 %i.y, -1
  %i.aa = load i32, ptr %i.a, align 8
  %i.ab = and i32 %i.aa, %i.z
  store i32 %i.ab, ptr %i.a, align 8
  %.sroa.02.0.copyload.i.i = load i8, ptr %i.t, align 2
  %i.ac = zext i8 %.sroa.02.0.copyload.i.i to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.ad, align 4
  %.not.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN2v88internal4wasm12ParallelMove11ExecuteMoveENS1_15LiftoffRegisterE.exit

bb.d:                                             ; preds = %tailrecurse.i
  %.sroa.01.0.copyload.i.i = load i8, ptr %i.t, align 2 ; 2 uses
  %i.ag = load i32, ptr %i.a, align 8
  %i.ah = zext nneg i8 %.sroa.01.0.copyload.i.i to i32
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = and i32 %i.ai, %i.ag
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %_ZN2v88internal4wasm12ParallelMove11ExecuteMoveENS1_15LiftoffRegisterE.exit, label %tailrecurse.i

_ZN2v88internal4wasm12ParallelMove11ExecuteMoveENS1_15LiftoffRegisterE.exit: ; preds = %bb.d, %tailrecurse.i, %bb.c, %bb.b
  %i.ak = add i32 %.sroa.025.029, -1
  %i.al = and i32 %i.ak, %.sroa.025.029           ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.preheader, label %bb.b

bb.e:                                             ; preds = %.lr.ph30, %_ZN2v88internal4wasm12ParallelMove17ClearExecutedMoveENS1_15LiftoffRegisterE.exit
  %i.an = phi i32 [ %.pre, %.lr.ph30 ], [ %i.cl, %_ZN2v88internal4wasm12ParallelMove17ClearExecutedMoveENS1_15LiftoffRegisterE.exit ]
  %i.ao = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.an, i1 true) ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1             ; 3 uses
  %i.at = add i8 %i.as, -9
  %i.au = icmp ult i8 %i.at, 2
  br i1 %i.au, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = zext i8 %i.as to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasm15value_kind_sizeENS1_9ValueKindE.kElementSize, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = sext i8 %i.ax to i32
  br label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi i32 [ %i.ay, %bb.f ], [ 8, %bb.e ]
  %i.az = load i32, ptr %i.f, align 8
  %i.ba = add nsw i32 %i.az, %.0.i.i              ; 2 uses
  store i32 %i.ba, ptr %i.f, align 8
  %.sroa.03.0.copyload = load i8, ptr %i.aq, align 2
  %i.bb = load ptr, ptr %i.g, align 8
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_15LiftoffRegisterENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %i.bb, i32 noundef %i.ba, i8 %.sroa.03.0.copyload, i8 noundef zeroext %i.as)
  %i.bc = load i32, ptr %i.f, align 8             ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = load i32, ptr %i.h, align 4             ; 2 uses
  %i.bf = shl nuw i32 1, %i.ao                    ; 3 uses
  %i.bg = and i32 %i.be, %i.bf
  %.not.i20 = icmp eq i32 %i.bg, 0
  br i1 %.not.i20, label %bb.g, label %_ZN2v88internal4wasm12ParallelMove13LoadStackSlotENS1_15LiftoffRegisterEiNS1_9ValueKindE.exit

bb.g:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit
  %i.bh = load i8, ptr %i.ar, align 1
  %i.bi = or i32 %i.be, %i.bf
  store i32 %i.bi, ptr %i.h, align 4
  %.sroa.32.0.insert.ext.i.i = zext nneg i32 %i.bc to i64
  %.sroa.32.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.32.0.insert.ext.i.i, 32
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.bh to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i, 8
  %.sroa.2.0.insert.insert.i.i = or disjoint i64 %.sroa.32.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.insert.i.i, 2
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ap
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bj, align 8
  br label %_ZN2v88internal4wasm12ParallelMove13LoadStackSlotENS1_15LiftoffRegisterEiNS1_9ValueKindE.exit

_ZN2v88internal4wasm12ParallelMove13LoadStackSlotENS1_15LiftoffRegisterEiNS1_9ValueKindE.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit, %bb.g
  %i.bk = xor i32 %i.bf, -1
  %i.bl = load i32, ptr %i.a, align 8
  %i.bm = and i32 %i.bl, %i.bk
  store i32 %i.bm, ptr %i.a, align 8
  %.sroa.02.0.copyload.i = load i8, ptr %i.aq, align 2 ; 3 uses
  %i.bn = zext i8 %.sroa.02.0.copyload.i to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = add nsw i32 %i.bp, -1                   ; 2 uses
  store i32 %i.bq, ptr %i.bo, align 4
  %.not.i21 = icmp eq i32 %i.bq, 0
  %.pre32 = load i32, ptr %i.a, align 8           ; 3 uses
  br i1 %.not.i21, label %bb.h, label %_ZN2v88internal4wasm12ParallelMove17ClearExecutedMoveENS1_15LiftoffRegisterE.exit

bb.h:                                             ; preds = %_ZN2v88internal4wasm12ParallelMove13LoadStackSlotENS1_15LiftoffRegisterEiNS1_9ValueKindE.exit
  %i.br = zext nneg i8 %.sroa.02.0.copyload.i to i32
  %i.bs = shl nuw i32 1, %i.br
  %i.bt = and i32 %.pre32, %i.bs
  %.not11.i = icmp eq i32 %i.bt, 0
  br i1 %.not11.i, label %_ZN2v88internal4wasm12ParallelMove17ClearExecutedMoveENS1_15LiftoffRegisterE.exit, label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %bb.h, %bb.i
  %.tr9.i.i = phi i8 [ %.sroa.01.0.copyload.i.i.i, %bb.i ], [ %.sroa.02.0.copyload.i, %bb.h ] ; 3 uses
  %i.bu = zext i8 %.tr9.i.i to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bu ; 4 uses
  %i.bw = load ptr, ptr %i.g, align 8
  %.sroa.01.0.copyload.i.i23 = load i8, ptr %i.bv, align 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.by = load i8, ptr %i.bx, align 1
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %i.bw, i8 %.tr9.i.i, i8 %.sroa.01.0.copyload.i.i23, i8 noundef zeroext %i.by) #10, !inline_history !9
  %i.bz = zext nneg i8 %.tr9.i.i to i32
  %i.ca = shl nuw i32 1, %i.bz
  %i.cb = xor i32 %i.ca, -1
  %i.cc = load i32, ptr %i.a, align 8
  %i.cd = and i32 %i.cc, %i.cb
  store i32 %i.cd, ptr %i.a, align 8
  %.sroa.02.0.copyload.i.i.i = load i8, ptr %i.bv, align 2
  %i.ce = zext i8 %.sroa.02.0.copyload.i.i.i to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = add nsw i32 %i.cg, -1                   ; 2 uses
  store i32 %i.ch, ptr %i.cf, align 4
  %.not.i.i.i = icmp eq i32 %i.ch, 0
  %.pre31.pre = load i32, ptr %i.a, align 8       ; 3 uses
  br i1 %.not.i.i.i, label %bb.i, label %_ZN2v88internal4wasm12ParallelMove17ClearExecutedMoveENS1_15LiftoffRegisterE.exit

bb.i:                                             ; preds = %tailrecurse.i.i
  %.sroa.01.0.copyload.i.i.i = load i8, ptr %i.bv, align 2 ; 2 uses
  %i.ci = zext nneg i8 %.sroa.01.0.copyload.i.i.i to i32
  %i.cj = shl nuw i32 1, %i.ci
  %i.ck = and i32 %i.cj, %.pre31.pre
  %.not.i.i24 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i24, label %_ZN2v88internal4wasm12ParallelMove17ClearExecutedMoveENS1_15LiftoffRegisterE.exit, label %tailrecurse.i.i

_ZN2v88internal4wasm12ParallelMove17ClearExecutedMoveENS1_15LiftoffRegisterE.exit: ; preds = %tailrecurse.i.i, %bb.i, %_ZN2v88internal4wasm12ParallelMove13LoadStackSlotENS1_15LiftoffRegisterEiNS1_9ValueKindE.exit, %bb.h
  %i.cl = phi i32 [ %.pre32, %bb.h ], [ %.pre32, %_ZN2v88internal4wasm12ParallelMove13LoadStackSlotENS1_15LiftoffRegisterEiNS1_9ValueKindE.exit ], [ %.pre31.pre, %bb.i ], [ %.pre31.pre, %tailrecurse.i.i ] ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %._crit_edge, label %bb.e, !llvm.loop !10

._crit_edge:                                      ; preds = %_ZN2v88internal4wasm12ParallelMove17ClearExecutedMoveENS1_15LiftoffRegisterE.exit, %bb.a, %.preheader
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define hidden preserve_mostcc void @_ZN2v88internal4wasm12ParallelMove12ExecuteLoadsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(356) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 4 ; 2 uses
  %i.b = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %scevgep.i15 = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j, %bb.a
  store i32 0, ptr %i.a, align 4
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.022.026 = phi i32 [ %.sroa.0.0.copyload.i, %.lr.ph ], [ %i.ad, %bb.j ] ; 3 uses
  %i.h = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.022.026, i1 true) ; 2 uses
  %i.i = trunc nuw nsw i32 %i.h to i8             ; 2 uses
  %i.j = zext nneg i32 %i.h to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.j ; 5 uses
  %i.l = load i8, ptr %i.k, align 8
  switch i8 %i.l, label %bb.j [
    i8 4, label %bb.i
    i8 1, label %bb.c
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.d, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.o = load i8, ptr %i.n, align 1
  %i.p = icmp eq i8 %i.o, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sext i32 %i.r to i64
  store i32 5904, ptr %1, align 8
  store i64 0, ptr %i.g, align 4
  store ptr null, ptr %i.f, align 8
  store i64 %i.s, ptr %scevgep.i15, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i32 5648, ptr %1, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.e, i8 0, i64 12, i1 false)
  store ptr null, ptr %i.f, align 8
  store i32 %i.r, ptr %scevgep.i15, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler12LoadConstantENS1_15LiftoffRegisterENS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %i.m, i8 %i.i, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %1)
  br label %bb.j

bb.g:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.d, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %i.y = sub nsw i32 0, %i.v                      ; 2 uses
  %2 = add i32 %i.v, 127
  %i.z = icmp ult i32 %2, 256                     ; 2 uses
  %i.aa = shl i32 %i.y, 24
  %i.ab = or disjoint i32 %i.aa, 4521984
  %.sroa.0.3.insert.insert11.i = zext i32 %i.ab to i64
  %.sroa.0.3.insert.ext.i = zext i32 %i.y to i64
  %.sroa.0.3.insert.shift.i = shl nuw nsw i64 %.sroa.0.3.insert.ext.i, 24
  %.sroa.0.3.insert.insert.i = or disjoint i64 %.sroa.0.3.insert.shift.i, 8716288
  %storemerge.i.i = select i1 %i.z, i64 %.sroa.0.3.insert.insert11.i, i64 %.sroa.0.3.insert.insert.i
  %.fca.1.load.cast.i.i = select i1 %i.z, ptr inttoptr (i64 2 to ptr), ptr inttoptr (i64 5 to ptr)
  tail call void @_ZN2v88internal4wasm7liftoff13LoadFromStackEPNS1_16LiftoffAssemblerENS1_15LiftoffRegisterENS0_7OperandENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %i.t, i8 %i.i, i64 %storemerge.i.i, ptr nonnull %.fca.1.load.cast.i.i, i8 noundef zeroext %i.x)
  br label %bb.j

bb.h:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #11
  unreachable

bb.i:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #11
  unreachable

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.b
  %i.ac = add i32 %.sroa.022.026, -1
  %i.ad = and i32 %i.ac, %.sroa.022.026           ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %._crit_edge, label %bb.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler12LoadConstantENS1_15LiftoffRegisterENS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %1, ptr noundef byval(%"class.v8::internal::wasm::WasmValue") align 8 %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i32, ptr %2, align 8 ; 2 uses
  %i.a = and i32 %.sroa.0.0.copyload.i, 3
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %.sroa.0.0.copyload.i, 268435440
  %i.d = add nsw i32 %i.c, -5648                  ; 2 uses
  %i.e = tail call i32 @llvm.fshl.i32(i32 %i.d, i32 %i.d, i32 24) ; 2 uses
  %i.f = icmp ult i32 %i.e, 8
  br i1 %i.f, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #11
  unreachable

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit: ; preds = %bb.b
  %switch.idx.cast.i = trunc nuw nsw i32 %i.e to i8
  switch i8 %switch.idx.cast.i, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread [
    i8 0, label %bb.d
    i8 1, label %bb.g
    i8 2, label %bb.n
    i8 3, label %bb.o
  ]

bb.d:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.0.copyload.i.i.i = load i32, ptr %i.g, align 4 ; 2 uses
  %i.h = icmp eq i32 %.0.copyload.i.i.i, 0
  %i.i = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.i)
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 51, i8 %1, i8 %1, i32 noundef 4) #10
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

bb.f:                                             ; preds = %bb.d
  %.sroa.09.0.insert.ext = zext i32 %.0.copyload.i.i.i to i64
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 %.sroa.09.0.insert.ext, i32 noundef 4) #10
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

bb.g:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  %i.j = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.0.copyload.i.i.i7 = load i64, ptr %i.k, align 4 ; 6 uses
  %i.l = icmp eq i64 %.0.copyload.i.i.i7, 0
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 51, i8 %1, i8 %1, i32 noundef 4) #10
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

bb.i:                                             ; preds = %bb.g
  %.not.i.i.i = icmp ult i64 %.0.copyload.i.i.i7, 4294967296
  br i1 %.not.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i64 %.0.copyload.i.i.i7, i32 noundef 4) #10
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

bb.k:                                             ; preds = %bb.i
  %i.m = icmp ugt i64 %.0.copyload.i.i.i7, -2147483649
  br i1 %i.m, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.015.0.insert.ext.i = and i64 %.0.copyload.i.i.i7, 4294967295
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i64 %.sroa.015.0.insert.ext.i, i32 noundef 8) #10
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

bb.m:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_11Immediate64Ei(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i64 %.0.copyload.i.i.i7, i8 0, i32 noundef 8) #10
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

bb.n:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  %i.n = add nsw i8 %1, -16
  %i.o = icmp slt i8 %1, 32
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load i32, ptr %i.p, align 4
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_11XMMRegisterEj(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.n, i32 noundef %i.q) #10
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

bb.o:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  %i.r = add nsw i8 %1, -16
  %i.s = icmp slt i8 %1, 32
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i64, ptr %i.t, align 4
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_11XMMRegisterEm(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.r, i64 noundef %i.u) #10
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread: ; preds = %bb.a, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #11
  unreachable

_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit: ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.e, %bb.f, %bb.o, %bb.n
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #5

declare void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr, i32 noundef) local_unnamed_addr #6

declare void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408), i64, ptr, i8, i32 noundef) local_unnamed_addr #6

declare void @_ZN2v88internal9Assembler7vmovdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr) local_unnamed_addr #6

declare void @_ZN2v88internal9Assembler6movupsENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr) local_unnamed_addr #6

declare void @_ZN2v88internal9Assembler7vmovdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408), i64, ptr, i8) local_unnamed_addr #6

declare void @_ZN2v88internal9Assembler6movupsENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408), i64, ptr, i8) local_unnamed_addr #6

declare void @_ZN2v88internal9Assembler5movssENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408), i64, ptr, i8) local_unnamed_addr #6

declare void @_ZN2v88internal9Assembler3vssEhNS0_11XMMRegisterES2_NS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i8 noundef zeroext, i8, i8, i64, ptr) local_unnamed_addr #6

declare void @_ZN2v88internal9Assembler5movsdENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408), i64, ptr, i8) local_unnamed_addr #6

declare void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(408), i8 noundef zeroext, i8, i8, i64, ptr, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408), i64, ptr, i64, i32 noundef) local_unnamed_addr #6

declare void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, i32 noundef) local_unnamed_addr #6

declare void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_11Immediate64Ei(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, i8, i32 noundef) local_unnamed_addr #6

declare void @_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824), i8, i8, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

declare void @_ZN2v88internal14MacroAssembler4MoveENS0_11XMMRegisterEj(ptr noundef nonnull align 8 dereferenceable(436), i8, i32 noundef) local_unnamed_addr #6

declare void @_ZN2v88internal14MacroAssembler4MoveENS0_11XMMRegisterEm(ptr noundef nonnull align 8 dereferenceable(436), i8, i64 noundef) local_unnamed_addr #6

declare void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408), i8 noundef zeroext, i8, i8, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm7liftoff13LoadFromStackEPNS1_16LiftoffAssemblerENS1_15LiftoffRegisterENS0_7OperandENS1_9ValueKindE(ptr noundef %0, i8 %1, i64 %2, ptr %3, i8 noundef zeroext %4) local_unnamed_addr #1 comdat {
bb.a:
  switch i8 %4, label %bb.n [
    i8 7, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 10, label %bb.d
    i8 9, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.h
    i8 5, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.a)
  tail call void @_ZN2v88internal9Assembler4movwENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 %2, ptr %3) #10
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.b)
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 %2, ptr %3, i32 noundef 4) #10
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.c = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.c)
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 %2, ptr %3, i32 noundef 8) #10
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

bb.e:                                             ; preds = %bb.a
end_hunk_0
