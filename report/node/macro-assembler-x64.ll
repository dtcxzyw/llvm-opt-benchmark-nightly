Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/macro-assembler-x64?download=true
inline.NumInlined: 3362
inline.NumDeleted: 638
begin_hunk_0_@_ZN2v88internal14MacroAssembler16RecordWriteFieldENS0_8RegisterEiS2_S2_NS0_14SaveFPRegsModeE8SmiCheck13ReadOnlyCheckNS0_14SlotDescriptorE:bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler9JumpIfSmiENS0_8RegisterEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN2v88internal9Assembler5testbENS0_8RegisterENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i64 1) #15
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 4, ptr noundef %2, i32 noundef %3) #15
  ret void
}

declare void @_ZN2v88internal9Assembler5testbENS0_8RegisterENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(408), i8, i64) local_unnamed_addr #2

declare void @_ZN2v88internal9Assembler4int3Ev(ptr noundef nonnull align 8 dereferenceable(408)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler11RecordWriteENS0_8RegisterES2_S2_NS0_14SaveFPRegsModeE8SmiCheck13ReadOnlyCheckNS0_14SlotDescriptorE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i8 %2, i8 %3, i32 noundef %4, i32 noundef %5, i32 %6, i64 %7) local_unnamed_addr #1 align 2 {
bb.a:
  %8 = alloca %"class.v8::internal::Label", align 4 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store i32 0, ptr %8, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 0, ptr %i.a, align 4
  %i.b = icmp eq i32 %5, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal9Assembler5testbENS0_8RegisterENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %3, i64 1) #15
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 4, ptr noundef nonnull %8, i32 noundef 1) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not = icmp eq i64 %7, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal14MacroAssembler13CheckPageFlagENS0_8RegisterES2_iNS0_9ConditionEPNS0_5LabelENS4_8DistanceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %3, i8 %3, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %8, i32 noundef 1)
  call void @_ZN2v88internal14MacroAssembler13CheckPageFlagENS0_8RegisterES2_iNS0_9ConditionEPNS0_5LabelENS4_8DistanceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i8 %3, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %8, i32 noundef 1)
  %i.c = icmp eq i32 %4, 0
  %..i.i = select i1 %i.c, i32 4, i32 3
  call void @_ZN2v88internal14MacroAssembler11CallBuiltinENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef %..i.i)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_ZN2v88internal9Assembler5testbENS0_7OperandENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 3359965440, ptr nonnull inttoptr (i64 2 to ptr), i64 1) #15
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 4, ptr noundef nonnull %8, i32 noundef 1) #15
  call void @_ZN2v88internal14MacroAssembler26CallIndirectPointerBarrierENS0_8RegisterES2_NS0_14SaveFPRegsModeENS0_18IndirectPointerTagE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i8 %2, i32 noundef %4, i64 noundef %7)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal14MacroAssembler12EnterSandboxEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(436) %0) local_unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal14MacroAssembler22SwitchSandboxingModeToENS0_18CodeSandboxingModeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(436) %0, i8 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i8 @_ZN2v88internal14MacroAssembler38SwitchSandboxingModeBeforeCallIfNeededENS0_18CodeSandboxingModeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(436) %0, i8 noundef zeroext %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 427 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %.not = icmp eq i8 %i.b, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 %1, ptr %i.a, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2v88internal14MacroAssembler37SwitchSandboxingModeAfterCallIfNeededENS0_18CodeSandboxingModeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(436) %0, i8 noundef zeroext %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 427 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1
  %.not = icmp eq i8 %i.b, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 %1, ptr %i.a, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler22EncodeSandboxedPointerENS0_8RegisterE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(436) %0, i8 %1) local_unnamed_addr #6 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #16
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler22DecodeSandboxedPointerENS0_8RegisterE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(436) %0, i8 %1) local_unnamed_addr #6 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #16
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler25LoadSandboxedPointerFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i64 %2, ptr %3) local_unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 %2, ptr %3, i32 noundef 8) #15
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #16
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler26StoreSandboxedPointerFieldENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %1, ptr nofree readnone captures(none) %2, i8 %3) local_unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i8 %3, i32 noundef 8) #15
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #16
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler24LoadExternalPointerFieldENS0_8RegisterENS0_7OperandENS0_8TagRangeINS0_18ExternalPointerTagEEES2_NS1_19IsolateRootLocationE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i64 %2, ptr %3, i32 %4, i8 %5, i32 noundef %6) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 %2, ptr %3, i32 noundef 8) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler23LoadTrustedPointerFieldENS0_8RegisterENS0_7OperandENS0_18IndirectPointerTagES2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i64 %2, ptr %3, i64 noundef %4, i8 %5) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i64 %2, ptr %3, i32 noundef 8) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler30LoadTrustedUnknownPointerFieldENS0_8RegisterENS0_7OperandES2_RKSt16initializer_listISt5tupleIJNS0_12InstanceTypeEPNS0_5LabelENS7_8DistanceEEEE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i64 %2, ptr %3, i8 %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::Operand", align 8 ; 7 uses
  %7 = alloca %"class.v8::internal::Label", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store i32 0, ptr %7, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.a, align 4
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i64 %2, ptr %3, i32 noundef 8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %6, align 8
  switch i8 %1, label %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge.i [
    i8 4, label %bb.b
    i8 12, label %bb.b
  ]

._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge.i: ; preds = %bb.a
  %.pre.i = and i8 %1, 7
  br label %_ZN2v88internal14MacroAssembler7LoadMapENS0_8RegisterES2_.exit

bb.b:                                             ; preds = %bb.a, %bb.a
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %6, i64 3
  %i.b = and i8 %1, 7                             ; 2 uses
  %i.c = or disjoint i8 %i.b, 32
  store i8 %i.c, ptr %scevgep.i.i, align 1
  %i.d = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.d)
  br label %_ZN2v88internal14MacroAssembler7LoadMapENS0_8RegisterES2_.exit

_ZN2v88internal14MacroAssembler7LoadMapENS0_8RegisterES2_.exit: ; preds = %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge.i, %bb.b
  %.pre-phi.i = phi i8 [ %.pre.i, %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge.i ], [ %i.b, %bb.b ]
  %i.e = phi i64 [ 1, %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge.i ], [ 2, %bb.b ] ; 2 uses
  %i.f = lshr i8 %1, 3
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.i = or disjoint i8 %.pre-phi.i, 64
  store i8 %i.i, ptr %i.g, align 2
  %i.j = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.j)
  store i8 %i.f, ptr %i.h, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 -1, ptr %i.k, align 1
  %i.l = add nuw nsw i64 %i.e, 1
  %i.m = inttoptr i64 %i.l to ptr
  %.fca.0.load.i.i = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %4, i64 %.fca.0.load.i.i, ptr nonnull %i.m, i32 noundef 8) #15
  %i.n = load ptr, ptr %5, align 8                ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %.idx = mul nuw nsw i64 %i.p, 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx ; 2 uses
  %.not33 = icmp eq i64 %i.p, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal14MacroAssembler7LoadMapENS0_8RegisterES2_.exit
  %i.r = and i8 %4, 7
  %i.s = lshr i8 %4, 3                            ; 2 uses
  %i.t = icmp samesign ult i8 %4, 16
  tail call void @llvm.assume(i1 %i.t)
  %i.u = or disjoint i8 %i.r, 64
  switch i8 %4, label %.lr.ph.split [
    i8 4, label %.lr.ph.split.us
    i8 12, label %.lr.ph.split.us
  ]

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph
  %.sroa.0.2.insert.insert46 = or disjoint i64 603979776, 4456448
  %.sroa.0.1.insert.ext38 = zext nneg i8 %i.s to i64
  %.sroa.0.1.insert.shift39 = shl nuw nsw i64 %.sroa.0.1.insert.ext38, 8
  %.sroa.0.1.insert.insert41 = or disjoint i64 %.sroa.0.2.insert.insert46, %.sroa.0.1.insert.shift39
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.1.insert.insert41, 47244640256
  br label %_ZN2v88internal14MacroAssembler15CmpInstanceTypeENS0_8RegisterENS0_12InstanceTypeE.exit.us

_ZN2v88internal14MacroAssembler15CmpInstanceTypeENS0_8RegisterENS0_12InstanceTypeE.exit.us: ; preds = %_ZN2v88internal14MacroAssembler15CmpInstanceTypeENS0_8RegisterENS0_12InstanceTypeE.exit.us, %.lr.ph.split.us
  %.034.us = phi ptr [ %i.n, %.lr.ph.split.us ], [ %i.aa, %_ZN2v88internal14MacroAssembler15CmpInstanceTypeENS0_8RegisterENS0_12InstanceTypeE.exit.us ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.034.us, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %.034.us, i64 8
  %i.x = load i16, ptr %i.v, align 2
  %.sroa.0.0.insert.ext.i.us = zext i16 %i.x to i64
  tail call void @_ZN2v88internal9Assembler26immediate_arithmetic_op_16EhNS0_7OperandENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 7, i64 %.sroa.0.4.insert.insert, ptr nonnull inttoptr (i64 3 to ptr), i64 %.sroa.0.0.insert.ext.i.us) #15
  %i.y = load ptr, ptr %i.w, align 8
  %i.z = load i32, ptr %.034.us, align 8
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 4, ptr noundef %i.y, i32 noundef %i.z) #15
  %i.aa = getelementptr inbounds nuw i8, ptr %.034.us, i64 24 ; 2 uses
  %.not.us = icmp eq ptr %i.aa, %i.q
  br i1 %.not.us, label %._crit_edge, label %_ZN2v88internal14MacroAssembler15CmpInstanceTypeENS0_8RegisterENS0_12InstanceTypeE.exit.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %.sroa.0.2.insert.ext = zext nneg i8 %i.u to i64
  %.sroa.0.2.insert.shift = shl nuw nsw i64 %.sroa.0.2.insert.ext, 16
  %.sroa.0.1.insert.ext = zext nneg i8 %i.s to i64
  %.sroa.0.1.insert.shift = shl nuw nsw i64 %.sroa.0.1.insert.ext, 8
  %.sroa.0.1.insert.insert = or disjoint i64 %.sroa.0.2.insert.shift, %.sroa.0.1.insert.shift
  %.sroa.0.3.insert.insert49 = or disjoint i64 %.sroa.0.1.insert.insert, 184549376
  br label %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge.i31

._crit_edge:                                      ; preds = %_ZN2v88internal14MacroAssembler15CmpInstanceTypeENS0_8RegisterENS0_12InstanceTypeE.exit.us, %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge.i31, %_ZN2v88internal14MacroAssembler7LoadMapENS0_8RegisterES2_.exit
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %7) #15
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 51, i8 %1, i8 %1, i32 noundef 4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  ret void

._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge.i31: ; preds = %.lr.ph.split, %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge.i31
  %.034 = phi ptr [ %i.n, %.lr.ph.split ], [ %i.ag, %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge.i31 ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.034, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %i.ad = load i16, ptr %i.ab, align 2
  %.sroa.0.0.insert.ext.i = zext i16 %i.ad to i64
  tail call void @_ZN2v88internal9Assembler26immediate_arithmetic_op_16EhNS0_7OperandENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 7, i64 %.sroa.0.3.insert.insert49, ptr nonnull inttoptr (i64 2 to ptr), i64 %.sroa.0.0.insert.ext.i) #15
  %i.ae = load ptr, ptr %i.ac, align 8
  %i.af = load i32, ptr %.034, align 8
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 4, ptr noundef %i.ae, i32 noundef %i.af) #15
  %i.ag = getelementptr inbounds nuw i8, ptr %.034, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ag, %i.q
  br i1 %.not, label %._crit_edge, label %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge.i31
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler15CmpInstanceTypeENS0_8RegisterENS0_12InstanceTypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i16 noundef zeroext %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::Operand", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 0, ptr %3, align 8
  switch i8 %1, label %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge [
    i8 4, label %bb.b
    i8 12, label %bb.b
  ]

._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge: ; preds = %bb.a
  %.pre = and i8 %1, 7
  br label %_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit

bb.b:                                             ; preds = %bb.a, %bb.a
  %scevgep.i = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.a = and i8 %1, 7                             ; 2 uses
  %i.b = or disjoint i8 %i.a, 32
  store i8 %i.b, ptr %scevgep.i, align 1
  %i.c = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.c)
  br label %_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit

_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit: ; preds = %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge, %bb.b
  %.pre-phi = phi i8 [ %.pre, %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge ], [ %i.a, %bb.b ]
  %i.d = phi i64 [ 1, %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge ], [ 2, %bb.b ] ; 2 uses
  %i.e = lshr i8 %1, 3
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.h = or disjoint i8 %.pre-phi, 64
  store i8 %i.h, ptr %i.f, align 2
  %i.i = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.i)
  store i8 %i.e, ptr %i.g, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 11, ptr %i.j, align 1
  %i.k = add nuw nsw i64 %i.d, 1
  %i.l = inttoptr i64 %i.k to ptr
  %.fca.0.load.i = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.sroa.0.0.insert.ext = zext i16 %2 to i64
  tail call void @_ZN2v88internal9Assembler26immediate_arithmetic_op_16EhNS0_7OperandENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 7, i64 %.fca.0.load.i, ptr nonnull %i.l, i64 %.sroa.0.0.insert.ext) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler24StoreTrustedPointerFieldENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %1, ptr %2, i8 %3) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %1, ptr %2, i8 %3, i32 noundef 8) #15
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler24LoadIndirectPointerFieldENS0_8RegisterENS0_7OperandENS0_18IndirectPointerTagES2_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(436) %0, i8 %1, i64 %2, ptr nofree readnone captures(none) %3, i64 noundef %4, i8 %5) local_unnamed_addr #6 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #16
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler25StoreIndirectPointerFieldENS0_7OperandENS0_8RegisterE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(436) %0, i64 %1, ptr nofree readnone captures(none) %2, i8 %3) local_unnamed_addr #6 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #16
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler33LoadEntrypointFromJSDispatchTableENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i8 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = load i8, ptr %i.a, align 8, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #16
  unreachable

_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit: ; preds = %bb.a
  %i.d = tail call i64 @_ZN2v88internal17ExternalReference6CreateENS0_14IsolateFieldIdE(i8 noundef zeroext 28) #15
  %i.e = tail call { i64, ptr } @_ZN2v88internal14MacroAssembler26ExternalReferenceAsOperandENS0_17ExternalReferenceENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %i.d, i8 -1) ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0
  %i.g = extractvalue { i64, ptr } %i.e, 1
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 %i.f, ptr %i.g, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i8 %2, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler5shiftENS0_8RegisterENS0_9ImmediateEii(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 8, i32 noundef 5, i32 noundef 4) #15
  tail call void @_ZN2v88internal9Assembler5shiftENS0_8RegisterENS0_9ImmediateEii(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 4, i32 noundef 4, i32 noundef 4) #15
  %i.h = shl nuw nsw i8 %1, 3
  %i.i = and i8 %i.h, 56
  %i.j = or disjoint i8 %i.i, 2
  %i.k = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = lshr i8 %1, 2
  %i.m = or i8 %i.l, 1
  %.sroa.8.0.insert.ext = zext nneg i8 %i.j to i64
  %.sroa.8.0.insert.shift = shl nuw nsw i64 %.sroa.8.0.insert.ext, 24
  %.sroa.2.0.insert.ext = zext nneg i8 %i.m to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.6.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, 262144
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 %.sroa.2.0.insert.insert, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler33LoadEntrypointFromJSDispatchTableENS0_8RegisterENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i32 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call i64 @_ZN2v88internal17ExternalReference25js_dispatch_table_addressEv() #15
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10, i64 %i.a)
  %i.b = lshr i32 %2, 4                           ; 2 uses
  %i.c = and i32 %i.b, 268435440                  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %2, 2048
  br i1 %i.e, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i32 %2, 4
  %i.g = and i32 %i.f, 268435200
  %i.h = and i32 %i.b, 240
  %i.i = or disjoint i32 %i.g, %i.h
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.5.0 = phi i64 [ 8519680, %bb.c ], [ 131072, %bb.a ], [ 4325376, %bb.b ]
  %.sroa.8.sroa.4.sroa.0.0 = phi i32 [ %i.i, %bb.c ], [ 0, %bb.a ], [ %i.c, %bb.b ]
  %i.j = phi ptr [ inttoptr (i64 5 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 2 to ptr), %bb.b ]
  %.sroa.8.0.insert.ext = zext i32 %.sroa.8.sroa.4.sroa.0.0 to i64
  %.sroa.8.0.insert.shift = shl nuw nsw i64 %.sroa.8.0.insert.ext, 24
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.shift, %.sroa.5.0
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, 256
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 %.sroa.2.0.insert.insert, ptr nonnull %i.j, i32 noundef 8) #15
  ret void
}

declare i64 @_ZN2v88internal17ExternalReference25js_dispatch_table_addressEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler37LoadParameterCountFromJSDispatchTableENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i8 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = load i8, ptr %i.a, align 8, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #16
end_hunk_0
