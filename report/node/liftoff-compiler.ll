begin_hunk_0
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler25emit_store_nonzero_if_nanENS0_8RegisterENS0_11XMMRegisterENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %1, i8 %2, i8 noundef zeroext %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %i.a = icmp eq i8 %3, 3
  %i.b = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.c = and i32 %i.b, 32
end_hunk_0
begin_hunk_1
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.d, align 4
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 11, ptr noundef nonnull %4, i32 noundef 1) #25
  %.pre = and i8 %1, 7                            ; 3 uses
  switch i8 %1, label %bb.i [
    i8 4, label %bb.h
    i8 12, label %bb.h
    i8 5, label %bb.j
    i8 13, label %bb.j
  ]

bb.h:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase7UcomissINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit, %_ZN2v88internal24SharedMacroAssemblerBase7UcomissINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit
  %i.e = or disjoint i8 %.pre, 32
  %i.f = icmp samesign ult i8 %1, 16
  call void @llvm.assume(i1 %i.f)
  %5 = zext nneg i8 %i.e to i64
  %6 = shl nuw nsw i64 %5, 24
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase7UcomissINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit, %bb.h
  %.sroa.6.0 = phi i64 [ 0, %_ZN2v88internal24SharedMacroAssemblerBase7UcomissINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit ], [ %6, %bb.h ]
  %i.g = phi ptr [ inttoptr (i64 1 to ptr), %_ZN2v88internal24SharedMacroAssemblerBase7UcomissINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit ], [ inttoptr (i64 2 to ptr), %bb.h ]
  %i.h = icmp samesign ult i8 %1, 16
  call void @llvm.assume(i1 %i.h)
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

bb.j:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase7UcomissINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit, %_ZN2v88internal24SharedMacroAssemblerBase7UcomissINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit
  %i.i = or disjoint i8 %.pre, 64
  %i.j = icmp samesign ult i8 %1, 16
  call void @llvm.assume(i1 %i.j)
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.i, %bb.j
  %.sroa.6.1 = phi i64 [ %.sroa.6.0, %bb.i ], [ 0, %bb.j ]
  %.sroa.4.0 = phi i8 [ %.pre, %bb.i ], [ %i.i, %bb.j ]
  %i.k = phi ptr [ %i.g, %bb.i ], [ inttoptr (i64 2 to ptr), %bb.j ]
  %.sroa.2.0 = lshr i8 %1, 3
  %.sroa.4.0.insert.ext = zext i8 %.sroa.4.0 to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext nneg i8 %.sroa.2.0 to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.mask.masked = or i64 %.sroa.6.1, %.sroa.4.0.insert.shift
  %.sroa.0.0.insert.mask = or i64 %.sroa.2.0.insert.mask.masked, %.sroa.2.0.insert.shift
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %.sroa.0.0.insert.mask, ptr %i.k, i64 1, i32 noundef 4) #25
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
end_hunk_1
begin_hunk_2
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler30emit_s128_store_nonzero_if_nanENS0_8RegisterENS1_15LiftoffRegisterES3_S4_NS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %1, i8 %2, i8 %3, i8 %4, i8 noundef zeroext %5) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = icmp eq i8 %5, 3
  %i.b = add nsw i8 %4, -16                       ; 7 uses
  %i.c = icmp slt i8 %4, 32
end_hunk_2
begin_hunk_3

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN2v88internal9Assembler8pmovmskbENS0_8RegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %3, i8 %i.b) #25
  %.pre = and i8 %1, 7                            ; 4 uses
  switch i8 %1, label %bb.g [
    i8 4, label %bb.e
    i8 12, label %bb.e
    i8 5, label %bb.f
    i8 13, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.f = or disjoint i8 %.pre, 32
  %i.g = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.g)
  %6 = zext nneg i8 %i.f to i64
  %7 = shl nuw nsw i64 %6, 24
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.d
  %8 = or disjoint i8 %.pre, 64
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f
  %i.h = phi i64 [ 0, %bb.d ], [ %7, %bb.e ], [ 0, %bb.f ]
  %.pre.sink = phi i8 [ %.pre, %bb.d ], [ %.pre, %bb.e ], [ %8, %bb.f ]
  %9 = phi ptr [ inttoptr (i64 1 to ptr), %bb.d ], [ inttoptr (i64 2 to ptr), %bb.e ], [ inttoptr (i64 2 to ptr), %bb.f ]
  %i.i = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = lshr i8 %1, 3
  %.sroa.3.0.insert.ext = zext i8 %.pre.sink to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 16
  %.sroa.3.0.insert.insert = or disjoint i64 %i.h, %.sroa.3.0.insert.shift
  %.sroa.2.0.insert.ext = zext nneg i8 %i.j to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.insert, %.sroa.2.0.insert.shift
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 9, i8 %3, i64 %.sroa.2.0.insert.insert, ptr nonnull %9, i32 noundef 4) #25
  ret void
}

end_hunk_3
