inline.NumInlined: 1498
inline.NumDeleted: 785
begin_hunk_0_@"_ZN2v88internal6maglev6detail20DeferredCodeInfoImplIZNS1_15MaglevAssembler9ToBooleanENS0_8RegisterENS1_9CheckTypeENS1_12ZoneLabelRefES7_bE3$_0E8GenerateEPS4_":bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  store ptr %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load <2 x i16>, ptr %i.a, align 8
  store <2 x i16> %i.f, ptr %i.e, align 8
  store ptr %2, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = load i8, ptr %i.h, align 4, !range !5, !noundef !6
  store i8 %i.i, ptr %i.g, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.l = load i8, ptr %i.k, align 1, !range !5, !noundef !6
  store i8 %i.l, ptr %i.j, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i64, ptr %i.n, align 8, !noalias !22
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i64, ptr %i.p, align 8, !noalias !22
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i8, ptr %i.o, align 8, !noalias !22
  %i.v = load ptr, ptr %i.m, align 8
  call void %i.v(ptr noundef %1, i8 %i.u, ptr %i.t, ptr %i.r) #10, !inline_history !31
  %i.w = load ptr, ptr %i.b, align 8
  %i.x = load ptr, ptr %2, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 448
  store ptr %i.w, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN2v88internal6maglev15MaglevAssembler9ToBooleanENS0_8RegisterENS1_9CheckTypeENS1_12ZoneLabelRefES5_bEN3$_18__invokeEPS2_S3_S5_S5_"(ptr noundef %0, i8 %1, ptr %2, ptr %3) #4 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 0, ptr %4, align 8
  switch i8 %1, label %._ZN2v88internal15FieldMemOperandENS0_8RegisterEi.exit_crit_edge.i [
    i8 4, label %bb.b
    i8 12, label %bb.b
  ]

._ZN2v88internal15FieldMemOperandENS0_8RegisterEi.exit_crit_edge.i: ; preds = %bb.a
  %.pre.i = and i8 %1, 7
  br label %"_ZZN2v88internal6maglev15MaglevAssembler9ToBooleanENS0_8RegisterENS1_9CheckTypeENS1_12ZoneLabelRefES5_bENK3$_1clEPS2_S3_S5_S5_.exit"

bb.b:                                             ; preds = %bb.a, %bb.a
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.a = and i8 %1, 7                             ; 2 uses
  %i.b = or disjoint i8 %i.a, 32
  store i8 %i.b, ptr %scevgep.i.i, align 1
  %i.c = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.c)
  br label %"_ZZN2v88internal6maglev15MaglevAssembler9ToBooleanENS0_8RegisterENS1_9CheckTypeENS1_12ZoneLabelRefES5_bENK3$_1clEPS2_S3_S5_S5_.exit"

"_ZZN2v88internal6maglev15MaglevAssembler9ToBooleanENS0_8RegisterENS1_9CheckTypeENS1_12ZoneLabelRefES5_bENK3$_1clEPS2_S3_S5_S5_.exit": ; preds = %._ZN2v88internal15FieldMemOperandENS0_8RegisterEi.exit_crit_edge.i, %bb.b
  %.pre-phi.i = phi i8 [ %.pre.i, %._ZN2v88internal15FieldMemOperandENS0_8RegisterEi.exit_crit_edge.i ], [ %i.a, %bb.b ]
  %i.d = phi i64 [ 1, %._ZN2v88internal15FieldMemOperandENS0_8RegisterEi.exit_crit_edge.i ], [ 2, %bb.b ] ; 2 uses
  %i.e = lshr i8 %1, 3
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.h = or disjoint i8 %.pre-phi.i, 64
  store i8 %i.h, ptr %i.f, align 2
  %i.i = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.i)
  store i8 %i.e, ptr %i.g, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 7, ptr %i.j, align 1
  %i.k = add nuw nsw i64 %i.d, 1
  %i.l = inttoptr i64 %i.k to ptr
  %.fca.0.load.i.i = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  tail call void @_ZN2v88internal6maglev15MaglevAssembler31CompareDoubleAndJumpIfZeroOrNaNENS0_7OperandEPNS0_5LabelENS4_8DistanceE(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 %.fca.0.load.i.i, ptr nonnull %i.l, ptr noundef %3, i32 noundef 1)
  tail call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef %2, i32 noundef 1) #10
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6maglev15MaglevAssembler31CompareDoubleAndJumpIfZeroOrNaNENS0_7OperandEPNS0_5LabelENS4_8DistanceE(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 %1, ptr %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.b = and i32 %i.a, 32
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_S2_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 87, i8 15, i8 15, i8 15, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 5) #10
  br label %_ZN2v88internal24SharedMacroAssemblerBase5XorpdINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal9Assembler10sse2_instrENS0_11XMMRegisterES2_hhh(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 15, i8 15, i8 noundef zeroext 102, i8 noundef zeroext 15, i8 noundef zeroext 87) #10
  br label %_ZN2v88internal24SharedMacroAssemblerBase5XorpdINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit

_ZN2v88internal24SharedMacroAssemblerBase5XorpdINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit: ; preds = %bb.b, %bb.c
  %i.c = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.d = and i32 %i.c, 32
  %.not.i.i7 = icmp eq i32 %i.d, 0
  br i1 %.not.i.i7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5XorpdINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit
  tail call void @_ZN2v88internal9Assembler3vpdEhNS0_11XMMRegisterES2_NS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 46, i8 15, i8 0, i64 %1, ptr %2) #10
  br label %_ZN2v88internal24SharedMacroAssemblerBase7UcomisdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

bb.e:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5XorpdINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit
  tail call void @_ZN2v88internal9Assembler10sse2_instrENS0_11XMMRegisterENS0_7OperandEhhh(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 15, i64 %1, ptr %2, i8 noundef zeroext 102, i8 noundef zeroext 15, i8 noundef zeroext 46) #10
  br label %_ZN2v88internal24SharedMacroAssemblerBase7UcomisdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

_ZN2v88internal24SharedMacroAssemblerBase7UcomisdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit: ; preds = %bb.d, %bb.e
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 444), align 4
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.f, label %_ZN2v88internal6maglev15MaglevAssembler6JumpIfENS0_9ConditionEPNS0_5LabelENS4_8DistanceE.exit, !prof !8

bb.f:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase7UcomisdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not16.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not16.i.i, label %_ZN2v88internal6maglev15MaglevAssembler6JumpIfENS0_9ConditionEPNS0_5LabelENS4_8DistanceE.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i, i64 8 ; 2 uses
  %.not17.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not17.i.i, label %_ZN2v88internal6maglev15MaglevAssembler6JumpIfENS0_9ConditionEPNS0_5LabelENS4_8DistanceE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.sroa.09.013.i.i = phi ptr [ %i.m, %bb.g ], [ %i.j, %bb.f ] ; 2 uses
  %i.n = load ptr, ptr %.sroa.09.013.i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.not.i.i8 = icmp eq ptr %i.o, %3
  br i1 %.not.i.i8, label %_ZN2v88internal6maglev15MaglevAssembler12IsDeoptLabelEPNS0_5LabelE.exit.i, label %bb.g

_ZN2v88internal6maglev15MaglevAssembler12IsDeoptLabelEPNS0_5LabelE.exit.i: ; preds = %.lr.ph.i.i
  tail call void @_ZN2v88internal6maglev15MaglevAssembler20EmitEagerDeoptStressEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef %3) #12, !inline_history !9
  br label %_ZN2v88internal6maglev15MaglevAssembler6JumpIfENS0_9ConditionEPNS0_5LabelENS4_8DistanceE.exit

_ZN2v88internal6maglev15MaglevAssembler6JumpIfENS0_9ConditionEPNS0_5LabelENS4_8DistanceE.exit: ; preds = %bb.g, %_ZN2v88internal24SharedMacroAssemblerBase7UcomisdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit, %bb.f, %_ZN2v88internal6maglev15MaglevAssembler12IsDeoptLabelEPNS0_5LabelE.exit.i
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(456) %0, i32 noundef 4, ptr noundef %3, i32 noundef %4) #10, !inline_history !9
  ret void
}

declare void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_S2_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(408), i8 noundef zeroext, i8, i8, i8, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN2v88internal9Assembler10sse2_instrENS0_11XMMRegisterES2_hhh(ptr noundef nonnull align 8 dereferenceable(408), i8, i8, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @_ZN2v88internal9Assembler3vpdEhNS0_11XMMRegisterES2_NS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i8 noundef zeroext, i8, i8, i64, ptr) local_unnamed_addr #1

declare void @_ZN2v88internal9Assembler10sse2_instrENS0_11XMMRegisterENS0_7OperandEhhh(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN2v88internal6maglev6detail20DeferredCodeInfoImplIZNS1_15MaglevAssembler9ToBooleanENS0_8RegisterENS1_9CheckTypeENS1_12ZoneLabelRefES7_bE3$_1E8GenerateEPS4_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::maglev::MaglevAssembler::TemporaryRegisterScope", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  store ptr %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load <2 x i16>, ptr %i.a, align 8
  store <2 x i16> %i.f, ptr %i.e, align 8
  store ptr %2, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = load i8, ptr %i.h, align 4, !range !5, !noundef !6
  store i8 %i.i, ptr %i.g, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.l = load i8, ptr %i.k, align 1, !range !5, !noundef !6
  store i8 %i.l, ptr %i.j, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i64, ptr %i.n, align 8, !noalias !32
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i64, ptr %i.p, align 8, !noalias !32
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i8, ptr %i.o, align 8, !noalias !32
  %i.v = load ptr, ptr %i.m, align 8
  call void %i.v(ptr noundef %1, i8 %i.u, ptr %i.t, ptr %i.r) #10, !inline_history !31
  %i.w = load ptr, ptr %i.b, align 8
  %i.x = load ptr, ptr %2, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 448
  store ptr %i.w, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN2v88internal6maglev15MaglevAssembler9ToBooleanENS0_8RegisterENS1_9CheckTypeENS1_12ZoneLabelRefES5_bEN3$_28__invokeEPS2_S3_S3_S5_S5_"(ptr noundef %0, i8 %1, i8 %2, ptr %3, ptr %4) #4 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::Operand", align 8 ; 7 uses
  %6 = alloca %"class.v8::internal::maglev::MaglevAssembler::TemporaryRegisterScope", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store ptr %0, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %.thread.i.i, label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  store ptr %6, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 20
  br label %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %7 = load <2 x i16>, ptr %i.f, align 8
  store ptr %6, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 21
  %i.i = load i8, ptr %i.h, align 1, !range !5, !noundef !6
  br label %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i

_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i: ; preds = %bb.b, %.thread.i.i
  %i.j = phi ptr [ %i.e, %.thread.i.i ], [ %i.g, %bb.b ]
  %i.k = phi i8 [ 1, %.thread.i.i ], [ %i.i, %bb.b ]
  %8 = phi <2 x i16> [ zeroinitializer, %.thread.i.i ], [ %7, %bb.b ]
  store <2 x i16> %8, ptr %i.d, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 21
  store i8 %i.k, ptr %i.l, align 1
  store i8 1, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  store i64 0, ptr %5, align 8
  switch i8 %1, label %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit._ZN2v88internal15FieldMemOperandENS0_8RegisterEi.exit_crit_edge.i [
    i8 4, label %bb.c
    i8 12, label %bb.c
  ]

_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit._ZN2v88internal15FieldMemOperandENS0_8RegisterEi.exit_crit_edge.i: ; preds = %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i
  %.pre.i = and i8 %1, 7
  br label %_ZN2v88internal15FieldMemOperandENS0_8RegisterEi.exit.i

bb.c:                                             ; preds = %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i, %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit.i
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.o = and i8 %1, 7                             ; 2 uses
  %i.p = or disjoint i8 %i.o, 32
  store i8 %i.p, ptr %scevgep.i.i, align 1
  %i.q = icmp samesign ult i8 %1, 16
  call void @llvm.assume(i1 %i.q)
  br label %_ZN2v88internal15FieldMemOperandENS0_8RegisterEi.exit.i

_ZN2v88internal15FieldMemOperandENS0_8RegisterEi.exit.i: ; preds = %bb.c, %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit._ZN2v88internal15FieldMemOperandENS0_8RegisterEi.exit_crit_edge.i
  %.pre-phi.i = phi i8 [ %.pre.i, %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit._ZN2v88internal15FieldMemOperandENS0_8RegisterEi.exit_crit_edge.i ], [ %i.o, %bb.c ]
  %i.r = phi i64 [ 1, %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit._ZN2v88internal15FieldMemOperandENS0_8RegisterEi.exit_crit_edge.i ], [ 2, %bb.c ] ; 2 uses
  %i.s = lshr i8 %1, 3
  %i.t = or disjoint i8 %.pre-phi.i, 64
  store i8 %i.t, ptr %i.n, align 2
  %i.u = icmp samesign ult i8 %1, 16
  call void @llvm.assume(i1 %i.u)
  store i8 %i.s, ptr %i.m, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.r
  store i8 7, ptr %i.v, align 1
  %i.w = add nuw nsw i64 %i.r, 1
  %i.x = inttoptr i64 %i.w to ptr
  %.fca.0.load.i.i = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZN2v88internal9Assembler9emit_testENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 %.fca.0.load.i.i, ptr nonnull %i.x, i64 2147483646, i32 noundef 4) #10
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 444), align 4
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.d, label %"_ZZN2v88internal6maglev15MaglevAssembler9ToBooleanENS0_8RegisterENS1_9CheckTypeENS1_12ZoneLabelRefES5_bENK3$_2clEPS2_S3_S3_S5_S5_.exit", !prof !8

bb.d:                                             ; preds = %_ZN2v88internal15FieldMemOperandENS0_8RegisterEi.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not16.i.i.i.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not16.i.i.i.i, label %"_ZZN2v88internal6maglev15MaglevAssembler9ToBooleanENS0_8RegisterENS1_9CheckTypeENS1_12ZoneLabelRefES5_bENK3$_2clEPS2_S3_S3_S5_S5_.exit", label %.lr.ph.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i, i64 8 ; 2 uses
  %.not17.i.i.i.i = icmp eq ptr %i.ag, %i.af
  br i1 %.not17.i.i.i.i, label %"_ZZN2v88internal6maglev15MaglevAssembler9ToBooleanENS0_8RegisterENS1_9CheckTypeENS1_12ZoneLabelRefES5_bENK3$_2clEPS2_S3_S3_S5_S5_.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.e
  %.sroa.09.013.i.i.i.i = phi ptr [ %i.ag, %bb.e ], [ %i.ad, %bb.d ] ; 2 uses
  %i.ah = load ptr, ptr %.sroa.09.013.i.i.i.i, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.ai, %4
  br i1 %.not.i.i.i.i, label %_ZN2v88internal6maglev15MaglevAssembler12IsDeoptLabelEPNS0_5LabelE.exit.i.i.i, label %bb.e

_ZN2v88internal6maglev15MaglevAssembler12IsDeoptLabelEPNS0_5LabelE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZN2v88internal6maglev15MaglevAssembler20EmitEagerDeoptStressEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef %4) #12, !inline_history !9
  br label %"_ZZN2v88internal6maglev15MaglevAssembler9ToBooleanENS0_8RegisterENS1_9CheckTypeENS1_12ZoneLabelRefES5_bENK3$_2clEPS2_S3_S3_S5_S5_.exit"

"_ZZN2v88internal6maglev15MaglevAssembler9ToBooleanENS0_8RegisterENS1_9CheckTypeENS1_12ZoneLabelRefES5_bENK3$_2clEPS2_S3_S3_S5_S5_.exit": ; preds = %bb.e, %_ZN2v88internal15FieldMemOperandENS0_8RegisterEi.exit.i, %bb.d, %_ZN2v88internal6maglev15MaglevAssembler12IsDeoptLabelEPNS0_5LabelE.exit.i.i.i
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(456) %0, i32 noundef 4, ptr noundef %4, i32 noundef 1) #10, !inline_history !9
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef %3, i32 noundef 1) #10
  %i.aj = load ptr, ptr %i.a, align 8
  %i.ak = load ptr, ptr %6, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 448
  store ptr %i.aj, ptr %i.al, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  ret void
}

declare void @_ZN2v88internal9Assembler9emit_testENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408), i64, ptr, i64, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN2v88internal6maglev6detail20DeferredCodeInfoImplIZNS1_15MaglevAssembler9ToBooleanENS0_8RegisterENS1_9CheckTypeENS1_12ZoneLabelRefES7_bE3$_2E8GenerateEPS4_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::maglev::MaglevAssembler::TemporaryRegisterScope", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  store ptr %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load <2 x i16>, ptr %i.a, align 8
  store <2 x i16> %i.f, ptr %i.e, align 8
  store ptr %2, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = load i8, ptr %i.h, align 4, !range !5, !noundef !6
  store i8 %i.i, ptr %i.g, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.l = load i8, ptr %i.k, align 1, !range !5, !noundef !6
  store i8 %i.l, ptr %i.j, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i64, ptr %i.n, align 8, !noalias !41
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.q, align 8, !noalias !41
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i8, ptr %i.p, align 8, !noalias !41
  %i.w = load i8, ptr %i.o, align 1, !noalias !41
  %i.x = load ptr, ptr %i.m, align 8
  call void %i.x(ptr noundef %1, i8 %i.w, i8 %i.v, ptr %i.u, ptr %i.s) #10, !inline_history !50
  %i.y = load ptr, ptr %i.b, align 8
  %i.z = load ptr, ptr %2, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 448
  store ptr %i.y, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

declare void @_ZN2v88internal14MacroAssembler4MoveENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(436), i8, i8) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal6maglev15MaglevAssembler16MakeDeferredCodeIZNS2_32CheckAndEmitDeferredWriteBarrierILNS2_9StoreModeE0EEEvNS0_8RegisterENSt11conditionalIXeqT_LS5_0EEiS6_E4typeES6_NS1_16RegisterSnapshotENS2_17ValueIsCompressedENS2_13ValueCanBeSmiEEUlPS2_NS1_12ZoneLabelRefES6_iS6_SA_SB_E_JRSE_RS6_RiSH_RSA_RSB_EEEPNS0_5LabelEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 2 dereferenceable(6) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %8 = alloca %"class.v8::internal::maglev::MaglevAssembler::TemporaryRegisterScope", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  store ptr %0, ptr %8, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  store i16 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 18
  store i16 0, ptr %i.e, align 2
  store ptr %8, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  store i8 1, ptr %i.f, align 4
  br label %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load <2 x i16>, ptr %i.g, align 8
  store <2 x i16> %i.h, ptr %i.d, align 8
  store ptr %8, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.k = load i8, ptr %i.j, align 4, !range !5, !noundef !6
  store i8 %i.k, ptr %i.i, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 21
  %i.m = load i8, ptr %i.l, align 1, !range !5, !noundef !6
  br label %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit

_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit: ; preds = %.thread.i, %bb.b
  %i.n = phi ptr [ %i.i, %bb.b ], [ %i.f, %.thread.i ]
  %i.o = phi i8 [ %i.m, %bb.b ], [ 1, %.thread.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 21
  store i8 %i.o, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.d, align 8
  %i.t = load i16, ptr %i.n, align 4
  %i.u = zext i16 %i.t to i48
  %i.v = shl nuw i48 %i.u, 32
  %.sroa.01.0.insert.ext.i = zext i32 %.sroa.0.0.copyload.i.i to i48
  %.sroa.01.0.insert.insert.i = or disjoint i48 %i.v, %.sroa.01.0.insert.ext.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = sub i64 %i.x, %i.z
  %i.ab = icmp ult i64 %i.aa, 64
  br i1 %i.ab, label %bb.c, label %_ZN2v88internal4Zone3NewINS0_6maglev6detail20DeferredCodeInfoImplIZNS3_15MaglevAssembler32CheckAndEmitDeferredWriteBarrierILNS6_9StoreModeE0EEEvNS0_8RegisterENSt11conditionalIXeqT_LS8_0EEiS9_E4typeES9_NS3_16RegisterSnapshotENS6_17ValueIsCompressedENS6_13ValueCanBeSmiEEUlPS6_NS3_12ZoneLabelRefES9_iS9_SD_SE_E_EEJPNS3_21MaglevCompilationInfoENS6_22TemporaryRegisterScope9SavedDataERSI_RSH_RS9_RiSQ_RSD_RSE_EEEPT_DpOT0_.exit, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 noundef 64) #10
  %.pre.i.i = load i64, ptr %i.y, align 8
  br label %_ZN2v88internal4Zone3NewINS0_6maglev6detail20DeferredCodeInfoImplIZNS3_15MaglevAssembler32CheckAndEmitDeferredWriteBarrierILNS6_9StoreModeE0EEEvNS0_8RegisterENSt11conditionalIXeqT_LS8_0EEiS9_E4typeES9_NS3_16RegisterSnapshotENS6_17ValueIsCompressedENS6_13ValueCanBeSmiEEUlPS6_NS3_12ZoneLabelRefES9_iS9_SD_SE_E_EEJPNS3_21MaglevCompilationInfoENS6_22TemporaryRegisterScope9SavedDataERSI_RSH_RS9_RiSQ_RSD_RSE_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_6maglev6detail20DeferredCodeInfoImplIZNS3_15MaglevAssembler32CheckAndEmitDeferredWriteBarrierILNS6_9StoreModeE0EEEvNS0_8RegisterENSt11conditionalIXeqT_LS8_0EEiS9_E4typeES9_NS3_16RegisterSnapshotENS6_17ValueIsCompressedENS6_13ValueCanBeSmiEEUlPS6_NS3_12ZoneLabelRefES9_iS9_SD_SE_E_EEJPNS3_21MaglevCompilationInfoENS6_22TemporaryRegisterScope9SavedDataERSI_RSH_RS9_RiSQ_RSD_RSE_EEEPT_DpOT0_.exit: ; preds = %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit, %bb.c
  %i.ac = phi i64 [ %.pre.i.i, %bb.c ], [ %i.z, %_ZN2v88internal6maglev15MaglevAssembler22TemporaryRegisterScopeC2EPS2_.exit ] ; 2 uses
  %i.ad = inttoptr i64 %i.ac to ptr               ; 13 uses
  %i.ae = add i64 %i.ac, 64
  store i64 %i.ae, ptr %i.y, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store i32 0, ptr %i.af, align 4
end_hunk_0
