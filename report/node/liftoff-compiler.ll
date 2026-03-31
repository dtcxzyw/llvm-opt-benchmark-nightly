begin_hunk_0
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler25emit_store_nonzero_if_nanENS0_8RegisterENS0_11XMMRegisterENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %1, i8 %2, i8 noundef zeroext %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %5 = alloca %"class.v8::internal::Operand", align 8 ; 6 uses
  %i.a = icmp eq i8 %3, 3
  %i.b = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.c = and i32 %i.b, 32
end_hunk_0
begin_hunk_1
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.d, align 4
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 11, ptr noundef nonnull %4, i32 noundef 1) #25
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 3 uses
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %5, align 8
  store i64 1, ptr %8, align 8
  switch i8 %1, label %_ZN2v88internal24SharedMacroAssemblerBase7UcomissINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit._crit_edge [
    i8 4, label %bb.h
    i8 12, label %bb.h
    i8 5, label %bb.j
    i8 13, label %bb.j
  ]

_ZN2v88internal24SharedMacroAssemblerBase7UcomissINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit._crit_edge: ; preds = %_ZN2v88internal24SharedMacroAssemblerBase7UcomissINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit
  %.pre = and i8 %1, 7
  br label %bb.i

bb.h:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase7UcomissINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit, %_ZN2v88internal24SharedMacroAssemblerBase7UcomissINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit
  %scevgep = getelementptr inbounds nuw i8, ptr %5, i64 3
  %9 = and i8 %1, 7                               ; 2 uses
  %i.e = or disjoint i8 %9, 32
  store i8 %i.e, ptr %scevgep, align 1
  %i.f = icmp samesign ult i8 %1, 16
  call void @llvm.assume(i1 %i.f)
  store i64 2, ptr %8, align 8
  %cond = icmp eq i8 %1, 5
  br i1 %cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN2v88internal24SharedMacroAssemblerBase7UcomissINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit._crit_edge
  %.pre-phi = phi i8 [ %.pre, %_ZN2v88internal24SharedMacroAssemblerBase7UcomissINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit._crit_edge ], [ %9, %bb.h ]
  %i.g = phi ptr [ inttoptr (i64 1 to ptr), %_ZN2v88internal24SharedMacroAssemblerBase7UcomissINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit._crit_edge ], [ inttoptr (i64 2 to ptr), %bb.h ]
  %10 = lshr i8 %1, 3
  store i8 %.pre-phi, ptr %7, align 2
  %i.h = icmp samesign ult i8 %1, 16
  call void @llvm.assume(i1 %i.h)
  store i8 %10, ptr %6, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

bb.j:                                             ; preds = %bb.h, %_ZN2v88internal24SharedMacroAssemblerBase7UcomissINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit, %_ZN2v88internal24SharedMacroAssemblerBase7UcomissINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit
  %11 = phi i64 [ 1, %_ZN2v88internal24SharedMacroAssemblerBase7UcomissINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit ], [ 1, %_ZN2v88internal24SharedMacroAssemblerBase7UcomissINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit ], [ 2, %bb.h ] ; 2 uses
  %12 = and i8 %1, 7
  %i.i = or disjoint i8 %12, 64
  store i8 %i.i, ptr %7, align 2
  %i.j = icmp samesign ult i8 %1, 16
  call void @llvm.assume(i1 %i.j)
  %13 = lshr i8 %1, 3
  store i8 %13, ptr %6, align 1
  %14 = getelementptr inbounds nuw i8, ptr %7, i64 %11
  store i8 0, ptr %14, align 1
  %15 = add nuw nsw i64 %11, 1                    ; 2 uses
  store i64 %15, ptr %8, align 8
  %16 = inttoptr i64 %15 to ptr
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.i, %bb.j
  %i.k = phi ptr [ %i.g, %bb.i ], [ %16, %bb.j ]
  %17 = load i64, ptr %5, align 8
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %17, ptr %i.k, i64 1, i32 noundef 4) #25
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
end_hunk_1
begin_hunk_2
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler30emit_s128_store_nonzero_if_nanENS0_8RegisterENS1_15LiftoffRegisterES3_S4_NS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %1, i8 %2, i8 %3, i8 %4, i8 noundef zeroext %5) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.a = icmp eq i8 %5, 3
  %i.b = add nsw i8 %4, -16                       ; 7 uses
  %i.c = icmp slt i8 %4, 32
end_hunk_2
begin_hunk_3

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN2v88internal9Assembler8pmovmskbENS0_8RegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %3, i8 %i.b) #25
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 3 uses
  store i64 0, ptr %6, align 8
  switch i8 %1, label %._crit_edge [
    i8 4, label %bb.e
    i8 12, label %bb.e
    i8 5, label %bb.g
    i8 13, label %bb.g
  ]

._crit_edge:                                      ; preds = %bb.d
  %.pre = and i8 %1, 7
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.d
  %scevgep = getelementptr inbounds nuw i8, ptr %6, i64 3
  %9 = and i8 %1, 7                               ; 2 uses
  %i.f = or disjoint i8 %9, 32
  store i8 %i.f, ptr %scevgep, align 1
  %i.g = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.g)
  %cond = icmp eq i8 %1, 5
  br i1 %cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.pre-phi42 = phi i8 [ %.pre, %._crit_edge ], [ %9, %bb.e ]
  %10 = phi ptr [ inttoptr (i64 1 to ptr), %._crit_edge ], [ inttoptr (i64 2 to ptr), %bb.e ]
  %11 = lshr i8 %1, 3
  store i8 %.pre-phi42, ptr %8, align 2
  %12 = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %12)
  store i8 %11, ptr %7, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.d
  %i.h = phi i64 [ 1, %bb.d ], [ 1, %bb.d ], [ 2, %bb.e ] ; 2 uses
  %13 = and i8 %1, 7
  %14 = or disjoint i8 %13, 64
  store i8 %14, ptr %8, align 2
  %i.i = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = lshr i8 %1, 3
  store i8 %i.j, ptr %7, align 1
  %15 = getelementptr inbounds nuw i8, ptr %8, i64 %i.h
  store i8 0, ptr %15, align 1
  %16 = add nuw nsw i64 %i.h, 1
  %17 = inttoptr i64 %16 to ptr
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.f, %bb.g
  %18 = phi ptr [ %10, %bb.f ], [ %17, %bb.g ]
  %19 = load i64, ptr %6, align 8
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 9, i8 %3, i64 %19, ptr %18, i32 noundef 4) #25
  ret void
}

end_hunk_3
