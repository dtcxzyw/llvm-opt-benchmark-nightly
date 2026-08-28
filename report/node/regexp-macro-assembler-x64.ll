Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/regexp-macro-assembler-x64?download=true
inline.NumInlined: 2172
inline.NumDeleted: 473
begin_hunk_0_@_ZN2v88internal23RegExpMacroAssemblerX64D2Ev:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 472) (i8, ptr @_ZTVN2v88internal26NativeRegExpMacroAssemblerE, i64 16), ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load i64, ptr %i.q, align 8
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9AssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(408) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal9AssemblerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal19JumpTableInfoWriterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #15
  br label %_ZN2v88internal19JumpTableInfoWriterD2Ev.exit

_ZN2v88internal19JumpTableInfoWriterD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNSt5dequeIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal19JumpTableInfoWriterD2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = icmp ult ptr %i.o, %i.q
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %i.s = load ptr, ptr %.06.i.i.i, align 8
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 512) #15
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.u = icmp ult ptr %.06.i.i.i, %i.p
  br i1 %i.u, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i, !llvm.loop !11

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i, %bb.c
  %i.v = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i ], [ %i.l, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.x = load i64, ptr %i.w, align 8
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #15
  br label %_ZNSt5dequeIiSaIiEED2Ev.exit

_ZNSt5dequeIiSaIiEED2Ev.exit:                     ; preds = %_ZN2v88internal19JumpTableInfoWriterD2Ev.exit, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i
  tail call void @_ZN2v88internal13AssemblerBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX64D0Ev(ptr noundef nonnull align 8 dereferenceable(668) initializes((0, 8), (604, 608), (612, 616), (620, 624), (628, 632), (636, 640), (644, 648), (652, 656), (660, 664)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 472) (i8, ptr @_ZTVN2v88internal23RegExpMacroAssemblerX64E, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 612
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 620
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 628
  store i32 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 636
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 644
  store i32 0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 652
  store i32 0, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 660
  store i32 0, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.l = load i8, ptr %i.k, align 8, !range !7, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 424
  store i8 %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN2v88internal9AssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(436) %i.n) #13, !inline_history !13
  store ptr getelementptr inbounds nuw inrange(-16, 472) (i8, ptr @_ZTVN2v88internal26NativeRegExpMacroAssemblerE, i64 16), ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load i64, ptr %i.q, align 8
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 672) #15
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZN2v88internal23RegExpMacroAssemblerX6428stack_limit_slack_slot_countEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  ret i32 32
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6422AdvanceCurrentPositionEi(ptr noundef nonnull align 8 dereferenceable(668) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.c = load i32, ptr %i.b, align 8
  %i.d = mul nsw i32 %i.c, %1
  %.sroa.0.0.insert.ext = zext i32 %i.d to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 noundef zeroext 0, i8 7, i64 %.sroa.0.0.insert.ext, i32 noundef 8) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6415AdvanceRegisterEii(ptr noundef nonnull align 8 dereferenceable(668) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %.not.i = icmp sgt i32 %i.c, %1
  br i1 %.not.i, label %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %1, 1
  store i32 %i.d, ptr %i.b, align 4
  br label %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit

_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit: ; preds = %bb.c, %bb.b
  %i.e = shl nsw i32 %1, 3
  %i.f = sub nsw i32 -104, %i.e                   ; 3 uses
  %i.g = sext i32 %i.f to i64
  %i.h = add nsw i64 %i.g, 128
  %i.i = icmp ult i64 %i.h, 256                   ; 2 uses
  %i.j = shl i32 %i.f, 24
  %i.k = or disjoint i32 %i.j, 4521984
  %.sroa.03.3.insert.insert11 = zext i32 %i.k to i64
  %.sroa.03.3.insert.ext = zext i32 %i.f to i64
  %.sroa.03.3.insert.shift = shl nuw nsw i64 %.sroa.03.3.insert.ext, 24
  %.sroa.03.3.insert.insert = or disjoint i64 %.sroa.03.3.insert.shift, 8716288
  %.sroa.03.0 = select i1 %i.i, i64 %.sroa.03.3.insert.insert11, i64 %.sroa.03.3.insert.insert
  %storemerge.i = select i1 %i.i, i64 2, i64 5
  %.fca.1.load.cast.i = inttoptr i64 %storemerge.i to ptr
  %.sroa.0.0.insert.ext = zext i32 %2 to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 noundef zeroext 0, i64 %.sroa.03.0, ptr nonnull %.fca.1.load.cast.i, i64 %.sroa.0.0.insert.ext, i32 noundef 8) #13
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden { i64, ptr } @_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(668) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp sgt i32 %i.b, %1
  br i1 %.not, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %1, 1
  store i32 %i.c, ptr %i.a, align 4
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.b, %bb.a
  %i.d = shl nsw i32 %1, 3
  %i.e = sub nsw i32 -104, %i.d                   ; 3 uses
  %i.f = sext i32 %i.e to i64
  %i.g = add nsw i64 %i.f, 128
  %i.h = icmp ult i64 %i.g, 256                   ; 3 uses
  %.sroa.4.sroa.4.0.extract.shift = and i32 %i.e, -256
  %.sroa.2.0 = select i1 %i.h, i64 4521984, i64 8716288
  %.sroa.4.sroa.4.sroa.0.0 = select i1 %i.h, i32 0, i32 %.sroa.4.sroa.4.0.extract.shift
  %storemerge = select i1 %i.h, i64 2, i64 5
  %.sroa.4.sroa.0.0.insert.ext = and i32 %i.e, 248
  %.sroa.4.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.sroa.4.sroa.0.0, %.sroa.4.sroa.0.0.insert.ext
  %.sroa.4.0.insert.ext = zext i32 %.sroa.4.sroa.0.0.insert.insert to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 24
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.2.0
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.2.0.insert.insert, 0
  %.fca.1.load.cast = inttoptr i64 %storemerge to ptr
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.fca.1.load.cast, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX649BacktrackEv(ptr noundef nonnull align 8 dereferenceable(668) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %2 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  store i32 0, ptr %1, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 @_ZN2v88internal17ExternalReference18address_of_jslimitEPNS0_7IsolateE(ptr noundef %i.c) #13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 14 uses
  tail call void @_ZN2v88internal9Assembler8load_raxENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(408) %i.e, i64 %i.d) #13
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.e, i8 noundef zeroext 59, i8 4, i8 0, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.e, i32 noundef 7, ptr noundef nonnull %1, i32 noundef 1) #13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 644
  call void @_ZN2v88internal9Assembler4callEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.e, ptr noundef nonnull %i.f) #13
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.e, ptr noundef nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %i.g = call noundef zeroext i1 @_ZNK2v88internal20RegExpMacroAssembler19has_backtrack_limitEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  br i1 %i.g, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit12, label %bb.e

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit12: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store i32 0, ptr %2, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.h, align 4
  call void @_ZN2v88internal9Assembler8emit_incENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.e, i64 2823094272, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %.sroa.0.0.insert.ext = zext i32 %i.j to i64
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.e, i8 noundef zeroext 7, i64 2823094272, ptr nonnull inttoptr (i64 2 to ptr), i64 %.sroa.0.0.insert.ext, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.e, i32 noundef 5, ptr noundef nonnull %2, i32 noundef 1) #13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i8, ptr %i.k, align 8, !range !7, !noundef !8
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 660
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.e, ptr noundef nonnull %i.n, i32 noundef 1) #13
  br label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit12
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(668) %0) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.e, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  call void @_ZN2v88internal9Assembler7movsxlqENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %i.e, i8 3, i64 65536, ptr nonnull inttoptr (i64 1 to ptr)) #13
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.e, i8 noundef zeroext 0, i8 1, i64 4, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.e, i8 noundef zeroext 3, i8 3, i8 8, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler3jmpENS0_8RegisterEb(ptr noundef nonnull align 8 dereferenceable(408) %i.e, i8 3, i1 noundef zeroext true) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6415CheckPreemptionEv(ptr noundef nonnull align 8 dereferenceable(668) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  store i32 0, ptr %1, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 @_ZN2v88internal17ExternalReference18address_of_jslimitEPNS0_7IsolateE(ptr noundef %i.c) #13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  tail call void @_ZN2v88internal9Assembler8load_raxENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(408) %i.e, i64 %i.d) #13
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.e, i8 noundef zeroext 59, i8 4, i8 0, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.e, i32 noundef 7, ptr noundef nonnull %1, i32 noundef 1) #13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 644
  call void @_ZN2v88internal9Assembler4callEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.e, ptr noundef nonnull %i.f) #13
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.e, ptr noundef nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret void
}

declare noundef zeroext i1 @_ZNK2v88internal20RegExpMacroAssembler19has_backtrack_limitEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

declare void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408), i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

declare void @_ZN2v88internal9Assembler3jmpENS0_8RegisterEb(ptr noundef nonnull align 8 dereferenceable(408), i8, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX644BindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(668) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.a, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6414CheckCharacterEjPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(668) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.sroa.0.0.insert.ext = zext i32 %1 to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 noundef zeroext 7, i8 2, i64 %.sroa.0.0.insert.ext, i32 noundef 4) #13
  %.not.i = icmp eq ptr %2, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.c = select i1 %.not.i, ptr %i.b, ptr %2
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i32 noundef 4, ptr noundef nonnull %i.c, i32 noundef 1) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6417BranchOrBacktrackENS0_9ConditionEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(668) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.not = icmp eq ptr %2, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.c = select i1 %.not, ptr %i.b, ptr %2
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i32 noundef %1, ptr noundef nonnull %i.c, i32 noundef 1) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6416CheckCharacterGTEtPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(668) %0, i16 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.sroa.0.0.insert.ext = zext i16 %1 to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 noundef zeroext 7, i8 2, i64 %.sroa.0.0.insert.ext, i32 noundef 4) #13
  %.not.i = icmp eq ptr %2, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.c = select i1 %.not.i, ptr %i.b, ptr %2
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i32 noundef 15, ptr noundef nonnull %i.c, i32 noundef 1) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6412CheckAtStartEiPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(668) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = load i32, ptr %i.a, align 8
  %i.c = add i32 %1, -1
  %i.d = mul i32 %i.b, %i.c                       ; 5 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit11, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %i.d to i64
  %i.g = add nsw i64 %i.f, 128
  %i.h = icmp ult i64 %i.g, 256
  br i1 %i.h, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit11, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.5.sroa.4.0.extract.shift = and i32 %i.d, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit11

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit11: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.5.sroa.0.0 = phi i32 [ %i.d, %bb.c ], [ 0, %bb.a ], [ %i.d, %bb.b ]
  %.sroa.2.0 = phi i64 [ 8847360, %bb.c ], [ 458752, %bb.a ], [ 4653056, %bb.b ]
  %.sroa.5.sroa.4.sroa.0.0 = phi i32 [ %.sroa.5.sroa.4.0.extract.shift, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.i = phi ptr [ inttoptr (i64 5 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 2 to ptr), %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %.sroa.5.sroa.0.0.insert.ext = and i32 %.sroa.5.sroa.0.0, 255
  %.sroa.5.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.sroa.4.sroa.0.0, %.sroa.5.sroa.0.0.insert.ext
  %.sroa.5.0.insert.ext = zext i32 %.sroa.5.sroa.0.0.insert.insert to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 24
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.2.0
  tail call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.j, i8 0, i64 %.sroa.2.0.insert.insert, ptr nonnull %i.i, i32 noundef 8) #13
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.j, i8 noundef zeroext 59, i8 0, i64 2957312000, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  %.not.i = icmp eq ptr %2, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.l = select i1 %.not.i, ptr %i.k, ptr %2
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.j, i32 noundef 4, ptr noundef nonnull %i.l, i32 noundef 1) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6415CheckNotAtStartEiPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(668) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = load i32, ptr %i.a, align 8
  %i.c = add i32 %1, -1
  %i.d = mul i32 %i.b, %i.c                       ; 5 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit11, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %i.d to i64
  %i.g = add nsw i64 %i.f, 128
  %i.h = icmp ult i64 %i.g, 256
  br i1 %i.h, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit11, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.5.sroa.4.0.extract.shift = and i32 %i.d, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit11

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit11: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.5.sroa.0.0 = phi i32 [ %i.d, %bb.c ], [ 0, %bb.a ], [ %i.d, %bb.b ]
  %.sroa.2.0 = phi i64 [ 8847360, %bb.c ], [ 458752, %bb.a ], [ 4653056, %bb.b ]
  %.sroa.5.sroa.4.sroa.0.0 = phi i32 [ %.sroa.5.sroa.4.0.extract.shift, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.i = phi ptr [ inttoptr (i64 5 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 2 to ptr), %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %.sroa.5.sroa.0.0.insert.ext = and i32 %.sroa.5.sroa.0.0, 255
  %.sroa.5.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.sroa.4.sroa.0.0, %.sroa.5.sroa.0.0.insert.ext
  %.sroa.5.0.insert.ext = zext i32 %.sroa.5.sroa.0.0.insert.insert to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 24
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.2.0
  tail call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.j, i8 0, i64 %.sroa.2.0.insert.insert, ptr nonnull %i.i, i32 noundef 8) #13
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.j, i8 noundef zeroext 59, i8 0, i64 2957312000, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  %.not.i = icmp eq ptr %2, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.l = select i1 %.not.i, ptr %i.k, ptr %2
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.j, i32 noundef 5, ptr noundef nonnull %i.l, i32 noundef 1) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6416CheckCharacterLTEtPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(668) %0, i16 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.sroa.0.0.insert.ext = zext i16 %1 to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 noundef zeroext 7, i8 2, i64 %.sroa.0.0.insert.ext, i32 noundef 4) #13
  %.not.i = icmp eq ptr %2, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.c = select i1 %.not.i, ptr %i.b, ptr %2
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i32 noundef 12, ptr noundef nonnull %i.c, i32 noundef 1) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6420CheckFixedLengthLoopEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(668) %0, ptr noundef %1) unnamed_addr #0 align 2 {
_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:
  %2 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store i32 0, ptr %2, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 59, i8 7, i64 65536, ptr nonnull inttoptr (i64 1 to ptr), i32 noundef 4) #13
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i32 noundef 5, ptr noundef nonnull %2, i32 noundef 1) #13
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 0, i8 1, i64 4, i32 noundef 8) #13
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr noundef nonnull align 8 dereferenceable(668) %0) #13, !inline_history !14
  br label %_ZN2v88internal23RegExpMacroAssemblerX6417BranchOrBacktrackEPNS0_5LabelE.exit

bb.b:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, ptr noundef nonnull %1, i32 noundef 1) #13
  br label %_ZN2v88internal23RegExpMacroAssemblerX6417BranchOrBacktrackEPNS0_5LabelE.exit

_ZN2v88internal23RegExpMacroAssemblerX6417BranchOrBacktrackEPNS0_5LabelE.exit: ; preds = %bb.a, %bb.b
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6417BranchOrBacktrackEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(668) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(668) %0) #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.e, ptr noundef nonnull %1, i32 noundef 1) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6429CallCFunctionFromIrregexpCodeENS0_17ExternalReferenceEi(ptr noundef nonnull align 8 dereferenceable(668) %0, i64 %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = tail call noundef i32 @_ZN2v88internal14MacroAssembler13CallCFunctionENS0_17ExternalReferenceEi19SetIsolateDataSlotsPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(436) %i.a, i64 %1, i32 noundef %2, i32 noundef 0, ptr noundef null) #13 ; 0 uses
  ret void
}

declare noundef i32 @_ZN2v88internal14MacroAssembler13CallCFunctionENS0_17ExternalReferenceEi19SetIsolateDataSlotsPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(436), i64, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6424PushCallerSavedRegistersEv(ptr noundef nonnull align 8 dereferenceable(668) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 6) #13
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 7) #13
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 1) #13
  ret void
}

declare void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408), i8) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6423PopCallerSavedRegistersEv(ptr noundef nonnull align 8 dereferenceable(668) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 1) #13
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 7) #13
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 6) #13
  ret void
}

declare void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408), i8) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6431CheckNotBackReferenceIgnoreCaseEibbPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(668) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %6 = alloca %"class.v8::internal::Label", align 4 ; 7 uses
  %7 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store i32 0, ptr %5, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 8 uses
  %i.c = load i32, ptr %i.b, align 4
  %.not.i.i = icmp sgt i32 %i.c, %1
  %.pre = add nsw i32 %1, 1                       ; 5 uses
  br i1 %.not.i.i, label %_ZN2v88internal23RegExpMacroAssemblerX6424ReadPositionFromRegisterENS0_8RegisterEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %.pre, ptr %i.b, align 4
  br label %_ZN2v88internal23RegExpMacroAssemblerX6424ReadPositionFromRegisterENS0_8RegisterEi.exit

_ZN2v88internal23RegExpMacroAssemblerX6424ReadPositionFromRegisterENS0_8RegisterEi.exit: ; preds = %bb.a, %bb.b
  %i.d = shl nsw i32 %1, 3
  %i.e = sub nsw i32 -104, %i.d                   ; 3 uses
  %i.f = sext i32 %i.e to i64
  %i.g = add nsw i64 %i.f, 128
  %i.h = icmp ult i64 %i.g, 256                   ; 2 uses
  %i.i = shl i32 %i.e, 24
  %i.j = or disjoint i32 %i.i, 4521984
  %.sroa.0.3.insert.insert10.i = zext i32 %i.j to i64
  %.sroa.0.3.insert.ext.i = zext i32 %i.e to i64
  %.sroa.0.3.insert.shift.i = shl nuw nsw i64 %.sroa.0.3.insert.ext.i, 24
  %.sroa.0.3.insert.insert.i = or disjoint i64 %.sroa.0.3.insert.shift.i, 8716288
  %.sroa.0.0.i = select i1 %i.h, i64 %.sroa.0.3.insert.insert10.i, i64 %.sroa.0.3.insert.insert.i ; 2 uses
  %storemerge.i.i = select i1 %i.h, i64 2, i64 5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 60 uses
  %.fca.1.load.cast.i.i = inttoptr i64 %storemerge.i.i to ptr ; 2 uses
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 2, i64 %.sroa.0.0.i, ptr nonnull %.fca.1.load.cast.i.i, i32 noundef 8) #13
  %i.l = load i32, ptr %i.b, align 4
  %.not.i.i140 = icmp sgt i32 %i.l, %.pre
  br i1 %.not.i.i140, label %_ZN2v88internal23RegExpMacroAssemblerX6424ReadPositionFromRegisterENS0_8RegisterEi.exit148, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal23RegExpMacroAssemblerX6424ReadPositionFromRegisterENS0_8RegisterEi.exit
  %i.m = add nsw i32 %1, 2
  store i32 %i.m, ptr %i.b, align 4
  br label %_ZN2v88internal23RegExpMacroAssemblerX6424ReadPositionFromRegisterENS0_8RegisterEi.exit148

_ZN2v88internal23RegExpMacroAssemblerX6424ReadPositionFromRegisterENS0_8RegisterEi.exit148: ; preds = %_ZN2v88internal23RegExpMacroAssemblerX6424ReadPositionFromRegisterENS0_8RegisterEi.exit, %bb.c
  %i.n = shl nsw i32 %.pre, 3
  %i.o = sub nsw i32 -104, %i.n                   ; 3 uses
  %i.p = sext i32 %i.o to i64
  %i.q = add nsw i64 %i.p, 128
  %i.r = icmp ult i64 %i.q, 256                   ; 2 uses
  %i.s = shl i32 %i.o, 24
  %i.t = or disjoint i32 %i.s, 4521984
  %.sroa.0.3.insert.insert10.i141 = zext i32 %i.t to i64
  %.sroa.0.3.insert.ext.i142 = zext i32 %i.o to i64
  %.sroa.0.3.insert.shift.i143 = shl nuw nsw i64 %.sroa.0.3.insert.ext.i142, 24
  %.sroa.0.3.insert.insert.i144 = or disjoint i64 %.sroa.0.3.insert.shift.i143, 8716288
  %.sroa.0.0.i145 = select i1 %i.r, i64 %.sroa.0.3.insert.insert10.i141, i64 %.sroa.0.3.insert.insert.i144 ; 2 uses
  %storemerge.i.i146 = select i1 %i.r, i64 2, i64 5
  %.fca.1.load.cast.i.i147 = inttoptr i64 %storemerge.i.i146 to ptr ; 2 uses
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 3, i64 %.sroa.0.0.i145, ptr nonnull %.fca.1.load.cast.i.i147, i32 noundef 8) #13
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 noundef zeroext 43, i8 3, i8 2, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i32 noundef 4, ptr noundef nonnull %5, i32 noundef 1) #13
  br i1 %2, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit107, label %bb.d

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit107: ; preds = %_ZN2v88internal23RegExpMacroAssemblerX6424ReadPositionFromRegisterENS0_8RegisterEi.exit148
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 0, i64 2957312000, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 4) #13
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 noundef zeroext 3, i8 0, i8 3, i32 noundef 4) #13
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 noundef zeroext 59, i8 7, i8 0, i32 noundef 4) #13
  br label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal23RegExpMacroAssemblerX6424ReadPositionFromRegisterENS0_8RegisterEi.exit148
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 0, i8 7, i32 noundef 4) #13
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 noundef zeroext 3, i8 0, i8 3, i32 noundef 4) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit107
  %.sink = phi i32 [ 15, %bb.d ], [ 14, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit107 ]
  %.not.i149 = icmp eq ptr %4, null
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.v = select i1 %.not.i149, ptr %i.u, ptr %4
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i32 noundef %.sink, ptr noundef nonnull %i.v, i32 noundef 1) #13
end_hunk_0
begin_hunk_1_@_ZN2v88internal23RegExpMacroAssemblerX6421CheckNotBackReferenceEibPNS0_5LabelE:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.v = select i1 %.not.i116, ptr %i.u, ptr %3
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i32 noundef 15, ptr noundef nonnull %i.v, i32 noundef 1) #13
  call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 3, i64 1040449536, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit

bb.d:                                             ; preds = %_ZN2v88internal23RegExpMacroAssemblerX6424ReadPositionFromRegisterENS0_8RegisterEi.exit115
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 3, i64 2957312000, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 4) #13
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 noundef zeroext 3, i8 3, i8 0, i32 noundef 4) #13
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 noundef zeroext 59, i8 7, i8 3, i32 noundef 4) #13
  %.not.i = icmp eq ptr %3, null
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.x = select i1 %.not.i, ptr %i.w, ptr %3
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i32 noundef 14, ptr noundef nonnull %i.x, i32 noundef 1) #13
  call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 3, i64 1040449536, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 noundef zeroext 43, i8 3, i8 0, i32 noundef 8) #13
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit93, %bb.d
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 noundef zeroext 3, i8 2, i8 6, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 9, i64 33816576, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store i32 0, ptr %5, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.y, align 4
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.k, ptr noundef nonnull %5) #13
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit77, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit61

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit77: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit
  call void @_ZN2v88internal9Assembler11emit_movzxbENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 0, i64 131072, ptr nonnull inttoptr (i64 1 to ptr), i32 noundef 4) #13
  call void @_ZN2v88internal9Assembler15arithmetic_op_8EhNS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 noundef zeroext 58, i8 0, i64 196608, ptr nonnull inttoptr (i64 1 to ptr)) #13
  br label %bb.e

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit61: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit
  call void @_ZN2v88internal9Assembler11emit_movzxwENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 0, i64 131072, ptr nonnull inttoptr (i64 1 to ptr), i32 noundef 4) #13
  call void @_ZN2v88internal9Assembler16arithmetic_op_16EhNS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 noundef zeroext 59, i8 0, i64 196608, ptr nonnull inttoptr (i64 1 to ptr)) #13
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit61, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit77
  %.not.i117 = icmp eq ptr %3, null
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.ad = select i1 %.not.i117, ptr %i.ac, ptr %3
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i32 noundef 5, ptr noundef nonnull %i.ad, i32 noundef 1) #13
  %i.ae = load i32, ptr %i.z, align 8
  %.sroa.0126.0.insert.ext = zext i32 %i.ae to i64
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 noundef zeroext 0, i8 3, i64 %.sroa.0126.0.insert.ext, i32 noundef 8) #13
  %i.af = load i32, ptr %i.z, align 8
  %.sroa.0.0.insert.ext = zext i32 %i.af to i64
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 noundef zeroext 0, i8 2, i64 %.sroa.0.0.insert.ext, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 noundef zeroext 59, i8 2, i8 9, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i32 noundef 2, ptr noundef nonnull %5, i32 noundef 1) #13
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 7, i8 3, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 noundef zeroext 43, i8 7, i8 6, i32 noundef 8) #13
  br i1 %2, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ag = load i32, ptr %i.b, align 4
  %.not.i118 = icmp sgt i32 %i.ag, %1
  br i1 %.not.i118, label %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %.pre, ptr %i.b, align 4
  br label %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit

_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit: ; preds = %bb.g, %bb.f
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 noundef zeroext 3, i8 7, i64 %.sroa.0.0.i, ptr nonnull %.fca.1.load.cast.i.i, i32 noundef 8) #13
  %i.ah = load i32, ptr %i.b, align 4
  %.not.i119 = icmp sgt i32 %i.ah, %.pre
  br i1 %.not.i119, label %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit125, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit
  %i.ai = add nsw i32 %1, 2
  store i32 %i.ai, ptr %i.b, align 4
  br label %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit125

_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit125: ; preds = %bb.h, %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 noundef zeroext 43, i8 7, i64 %.sroa.0.0.i112, ptr nonnull %.fca.1.load.cast.i.i114, i32 noundef 8) #13
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit125, %bb.e
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.k, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6417CheckNotCharacterEjPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(668) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.sroa.0.0.insert.ext = zext i32 %1 to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 noundef zeroext 7, i8 2, i64 %.sroa.0.0.insert.ext, i32 noundef 4) #13
  %.not.i = icmp eq ptr %2, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.c = select i1 %.not.i, ptr %i.b, ptr %2
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i32 noundef 5, ptr noundef nonnull %i.c, i32 noundef 1) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6422CheckCharacterAfterAndEjjPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(668) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.09.0.insert.ext = zext i32 %2 to i64
  tail call void @_ZN2v88internal9Assembler9emit_testENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 2, i64 %.sroa.09.0.insert.ext, i32 noundef 4) #13
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(436) %i.b, i8 noundef zeroext 51, i8 0, i8 0, i32 noundef 4) #13
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

bb.e:                                             ; preds = %bb.c
  %i.d = zext i32 %2 to i64
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %i.b, i8 0, i64 %i.d, i32 noundef 4) #13
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit: ; preds = %bb.d, %bb.e
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 35, i8 0, i8 2, i32 noundef 8) #13
  %.sroa.0.0.insert.ext = zext i32 %1 to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 7, i8 0, i64 %.sroa.0.0.insert.ext, i32 noundef 4) #13
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.not.i = icmp eq ptr %3, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.g = select i1 %.not.i, ptr %i.f, ptr %3
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.e, i32 noundef 4, ptr noundef nonnull %i.g, i32 noundef 1) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6425CheckNotCharacterAfterAndEjjPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(668) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.09.0.insert.ext = zext i32 %2 to i64
  tail call void @_ZN2v88internal9Assembler9emit_testENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 2, i64 %.sroa.09.0.insert.ext, i32 noundef 4) #13
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(436) %i.b, i8 noundef zeroext 51, i8 0, i8 0, i32 noundef 4) #13
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

bb.e:                                             ; preds = %bb.c
  %i.d = zext i32 %2 to i64
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %i.b, i8 0, i64 %i.d, i32 noundef 4) #13
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit: ; preds = %bb.d, %bb.e
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 35, i8 0, i8 2, i32 noundef 8) #13
  %.sroa.0.0.insert.ext = zext i32 %1 to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 7, i8 0, i64 %.sroa.0.0.insert.ext, i32 noundef 4) #13
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.not.i = icmp eq ptr %3, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.g = select i1 %.not.i, ptr %i.f, ptr %3
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.e, i32 noundef 5, ptr noundef nonnull %i.g, i32 noundef 1) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6430CheckNotCharacterAfterMinusAndEtttPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(668) %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i16 %2 to i32
  %i.b = sub nsw i32 0, %i.a                      ; 3 uses
  %i.c = icmp eq i16 %2, 0
  br i1 %i.c, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i16 %2, 129
  br i1 %i.d, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.5.sroa.4.0.extract.shift = and i32 %i.b, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.5.sroa.0.0 = phi i32 [ %i.b, %bb.c ], [ 0, %bb.a ], [ %i.b, %bb.b ]
  %.sroa.2.0 = phi i64 [ 8519680, %bb.c ], [ 131072, %bb.a ], [ 4325376, %bb.b ]
  %.sroa.5.sroa.4.sroa.0.0 = phi i32 [ %.sroa.5.sroa.4.0.extract.shift, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.e = phi ptr [ inttoptr (i64 5 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 2 to ptr), %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %.sroa.5.sroa.0.0.insert.ext = and i32 %.sroa.5.sroa.0.0, 255
  %.sroa.5.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.sroa.4.sroa.0.0, %.sroa.5.sroa.0.0.insert.ext
  %.sroa.5.0.insert.ext = zext i32 %.sroa.5.sroa.0.0.insert.insert to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 24
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.2.0
  tail call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.f, i8 0, i64 %.sroa.2.0.insert.insert, ptr nonnull %i.e, i32 noundef 4) #13
  %.sroa.08.0.insert.ext = zext i16 %3 to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.f, i8 noundef zeroext 4, i8 0, i64 %.sroa.08.0.insert.ext, i32 noundef 4) #13
  %.sroa.0.0.insert.ext = zext i16 %1 to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.f, i8 noundef zeroext 7, i8 0, i64 %.sroa.0.0.insert.ext, i32 noundef 4) #13
  %.not.i = icmp eq ptr %4, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.h = select i1 %.not.i, ptr %i.g, ptr %4
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.f, i32 noundef 5, ptr noundef nonnull %i.h, i32 noundef 1) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6421CheckCharacterInRangeEttPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(668) %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i16 %1 to i32                       ; 2 uses
  %i.b = sub nsw i32 0, %i.a                      ; 3 uses
  %i.c = icmp eq i16 %1, 0
  br i1 %i.c, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i16 %1, 129
  br i1 %i.d, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.5.sroa.4.0.extract.shift = and i32 %i.b, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.5.sroa.0.0 = phi i32 [ %i.b, %bb.c ], [ 0, %bb.a ], [ %i.b, %bb.b ]
  %.sroa.2.0 = phi i64 [ 8519680, %bb.c ], [ 131072, %bb.a ], [ 4325376, %bb.b ]
  %.sroa.5.sroa.4.sroa.0.0 = phi i32 [ %.sroa.5.sroa.4.0.extract.shift, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.e = phi ptr [ inttoptr (i64 5 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 2 to ptr), %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %.sroa.5.sroa.0.0.insert.ext = and i32 %.sroa.5.sroa.0.0, 255
  %.sroa.5.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.sroa.4.sroa.0.0, %.sroa.5.sroa.0.0.insert.ext
  %.sroa.5.0.insert.ext = zext i32 %.sroa.5.sroa.0.0.insert.insert to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 24
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.2.0
  tail call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.f, i8 0, i64 %.sroa.2.0.insert.insert, ptr nonnull %i.e, i32 noundef 4) #13
  %i.g = zext i16 %2 to i32
  %i.h = sub nsw i32 %i.g, %i.a
  %.sroa.0.0.insert.ext = zext i32 %i.h to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.f, i8 noundef zeroext 7, i8 0, i64 %.sroa.0.0.insert.ext, i32 noundef 4) #13
  %.not.i = icmp eq ptr %3, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.j = select i1 %.not.i, ptr %i.i, ptr %3
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.f, i32 noundef 6, ptr noundef nonnull %i.j, i32 noundef 1) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6424CheckCharacterNotInRangeEttPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(668) %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i16 %1 to i32                       ; 2 uses
  %i.b = sub nsw i32 0, %i.a                      ; 3 uses
  %i.c = icmp eq i16 %1, 0
  br i1 %i.c, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i16 %1, 129
  br i1 %i.d, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.5.sroa.4.0.extract.shift = and i32 %i.b, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.5.sroa.0.0 = phi i32 [ %i.b, %bb.c ], [ 0, %bb.a ], [ %i.b, %bb.b ]
  %.sroa.2.0 = phi i64 [ 8519680, %bb.c ], [ 131072, %bb.a ], [ 4325376, %bb.b ]
  %.sroa.5.sroa.4.sroa.0.0 = phi i32 [ %.sroa.5.sroa.4.0.extract.shift, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.e = phi ptr [ inttoptr (i64 5 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 2 to ptr), %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %.sroa.5.sroa.0.0.insert.ext = and i32 %.sroa.5.sroa.0.0, 255
  %.sroa.5.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.sroa.4.sroa.0.0, %.sroa.5.sroa.0.0.insert.ext
  %.sroa.5.0.insert.ext = zext i32 %.sroa.5.sroa.0.0.insert.insert to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 24
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.2.0
  tail call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.f, i8 0, i64 %.sroa.2.0.insert.insert, ptr nonnull %i.e, i32 noundef 4) #13
  %i.g = zext i16 %2 to i32
  %i.h = sub nsw i32 %i.g, %i.a
  %.sroa.0.0.insert.ext = zext i32 %i.h to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.f, i8 noundef zeroext 7, i8 0, i64 %.sroa.0.0.insert.ext, i32 noundef 4) #13
  %.not.i = icmp eq ptr %3, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.j = select i1 %.not.i, ptr %i.i, ptr %3
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.f, i32 noundef 7, ptr noundef nonnull %i.j, i32 noundef 1) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6427CallIsCharacterInRangeArrayEPKNS0_8ZoneListINS0_14CharacterRangeEEE(ptr noundef nonnull align 8 dereferenceable(668) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
_ZN2v88internal10FrameScopeD2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 11 uses
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 6) #13
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 7) #13
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 1) #13
  tail call void @_ZN2v88internal14MacroAssembler20PrepareCallCFunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %i.a, i32 noundef 2) #13
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %i.a, i8 7, i8 2) #13
  %i.b = tail call ptr @_ZN2v88internal26NativeRegExpMacroAssembler18GetOrAddRangeArrayEPKNS0_8ZoneListINS0_14CharacterRangeEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) #13
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6HandleINS0_10HeapObjectEEENS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(436) %i.a, i8 6, ptr %i.b, i8 noundef signext 4) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 530 ; 3 uses
  %i.d = load i8, ptr %i.c, align 2, !range !7, !noundef !8
  store i8 1, ptr %i.c, align 2
  %i.e = tail call i64 @_ZN2v88internal17ExternalReference30re_is_character_in_range_arrayEv() #13
  %i.f = tail call noundef i32 @_ZN2v88internal14MacroAssembler13CallCFunctionENS0_17ExternalReferenceEi19SetIsolateDataSlotsPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(436) %i.a, i64 %i.e, i32 noundef 2, i32 noundef 0, ptr noundef null) #13 ; 0 uses
  store i8 %i.d, ptr %i.c, align 2
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 1) #13
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 7) #13
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 6) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 520
  %.sroa.0.0.copyload.i = load ptr, ptr %i.g, align 8
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6HandleINS0_10HeapObjectEEENS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(436) %i.a, i8 8, ptr %.sroa.0.0.copyload.i, i8 noundef signext 4) #13
  ret void
}

declare void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436), i8, i8) local_unnamed_addr #1

declare ptr @_ZN2v88internal26NativeRegExpMacroAssembler18GetOrAddRangeArrayEPKNS0_8ZoneListINS0_14CharacterRangeEEE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #1

declare i64 @_ZN2v88internal17ExternalReference30re_is_character_in_range_arrayEv() local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal23RegExpMacroAssemblerX6426CheckCharacterInRangeArrayEPKNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(668) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal23RegExpMacroAssemblerX6427CallIsCharacterInRangeArrayEPKNS0_8ZoneListINS0_14CharacterRangeEEE(ptr noundef nonnull align 8 dereferenceable(668) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @_ZN2v88internal9Assembler9emit_testENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 0, i8 0, i32 noundef 8) #13
  %.not.i = icmp eq ptr %2, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.c = select i1 %.not.i, ptr %i.b, ptr %2
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i32 noundef 5, ptr noundef nonnull %i.c, i32 noundef 1) #13
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal23RegExpMacroAssemblerX6429CheckCharacterNotInRangeArrayEPKNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(668) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal23RegExpMacroAssemblerX6427CallIsCharacterInRangeArrayEPKNS0_8ZoneListINS0_14CharacterRangeEEE(ptr noundef nonnull align 8 dereferenceable(668) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @_ZN2v88internal9Assembler9emit_testENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 0, i8 0, i32 noundef 8) #13
  %.not.i = icmp eq ptr %2, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.c = select i1 %.not.i, ptr %i.b, ptr %2
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i32 noundef 4, ptr noundef nonnull %i.c, i32 noundef 1) #13
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6415CheckBitInTableENS0_6HandleINS0_9ByteArrayEEEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(668) %0, ptr %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6HandleINS0_10HeapObjectEEENS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(436) %i.a, i8 0, ptr %1, i8 noundef signext 4) #13
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 3, i8 2, i32 noundef 8) #13
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 noundef zeroext 4, i8 3, i64 127, i32 noundef 8) #13
  tail call void @_ZN2v88internal9Assembler25immediate_arithmetic_op_8EhNS0_7OperandENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 noundef zeroext 7, i64 64831619072, ptr nonnull inttoptr (i64 3 to ptr), i64 0) #13
  %.not.i = icmp eq ptr %2, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.c = select i1 %.not.i, ptr %i.b, ptr %2
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i32 noundef 5, ptr noundef nonnull %i.c, i32 noundef 1) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6419SkipUntilBitInTableEiNS0_6HandleINS0_9ByteArrayEEES4_i(ptr noundef nonnull align 8 dereferenceable(668) %0, i32 noundef %1, ptr %2, ptr %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::Label", align 4 ; 8 uses
  %6 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %7 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %8 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %9 = alloca %"class.v8::internal::Label", align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store i32 0, ptr %5, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store i32 0, ptr %6, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.b, align 4
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(668) %0, i32 noundef %4) #13
  br i1 %i.f, label %bb.b, label %bb.ae

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store i32 0, ptr %7, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  store i32 0, ptr %8, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 0, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  store i32 0, ptr %9, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = sdiv i32 16, %i.k                        ; 2 uses
  %i.m = add i32 %1, -1
  %i.n = add i32 %i.m, %i.l                       ; 2 uses
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(668) %0, i32 noundef %i.n, ptr noundef nonnull %9) #13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 40 uses
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6HandleINS0_10HeapObjectEEENS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(436) %i.r, i8 11, ptr %3, i8 noundef signext 4) #13
  %i.s = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.t = and i32 %i.s, 32
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN2v88internal9Assembler7vmovdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.r, i8 0, i64 256049408, ptr nonnull inttoptr (i64 2 to ptr)) #13
  br label %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZN2v88internal9Assembler6movupsENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.r, i8 0, i64 256049408, ptr nonnull inttoptr (i64 2 to ptr)) #13
  br label %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit: ; preds = %bb.c, %bb.d
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_11Immediate64Ei(ptr noundef nonnull align 8 dereferenceable(436) %i.r, i8 11, i64 1085102592571150095, i8 0, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler4movqENS0_11XMMRegisterENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.r, i8 1, i8 11) #13
  %i.u = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.v = and i32 %i.u, 32
  %.not.i.i101 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i101, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit
  call void @_ZN2v88internal9Assembler8vmovddupENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %i.r, i8 1, i8 1) #13
  br label %_ZN2v88internal24SharedMacroAssemblerBase7MovddupINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit

bb.f:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit
  call void @_ZN2v88internal9Assembler7movddupENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %i.r, i8 1, i8 1) #13
  br label %_ZN2v88internal24SharedMacroAssemblerBase7MovddupINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit

_ZN2v88internal24SharedMacroAssemblerBase7MovddupINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit: ; preds = %bb.e, %bb.f
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_11Immediate64Ei(ptr noundef nonnull align 8 dereferenceable(436) %i.r, i8 11, i64 -9205322385119247871, i8 0, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler4movqENS0_11XMMRegisterENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.r, i8 2, i8 11) #13
  %i.w = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.x = and i32 %i.w, 32
  %.not.i.i102 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i102, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase7MovddupINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit
  call void @_ZN2v88internal9Assembler8vmovddupENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %i.r, i8 2, i8 2) #13
  br label %_ZN2v88internal24SharedMacroAssemblerBase7MovddupINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit103

bb.h:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase7MovddupINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit
  call void @_ZN2v88internal9Assembler7movddupENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %i.r, i8 2, i8 2) #13
  br label %_ZN2v88internal24SharedMacroAssemblerBase7MovddupINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit103

_ZN2v88internal24SharedMacroAssemblerBase7MovddupINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit103: ; preds = %bb.g, %bb.h
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(668) %0, ptr noundef nonnull %7) #13
  %i.ab = icmp eq i32 %1, 0
  br i1 %i.ab, label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase7MovddupINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit103
  %i.ac = sext i32 %1 to i64
  %i.ad = add nsw i64 %i.ac, 128
  %i.ae = icmp ult i64 %i.ad, 256
  br i1 %i.ae, label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.9.sroa.4.0.extract.shift = and i32 %1, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit
end_hunk_1
begin_hunk_2_@_ZN2v88internal23RegExpMacroAssemblerX6427WriteStackPointerToRegisterEi:bb.a
  %.sroa.0.3.insert.shift = shl nuw nsw i64 %.sroa.0.3.insert.ext, 24
  %.sroa.0.3.insert.insert = or disjoint i64 %.sroa.0.3.insert.shift, 8716288
  %.sroa.0.0 = select i1 %i.o, i64 %.sroa.0.3.insert.insert17, i64 %.sroa.0.3.insert.insert
  %storemerge.i = select i1 %i.o, i64 2, i64 5
  %.fca.1.load.cast.i = inttoptr i64 %storemerge.i to ptr
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %i.d, i64 %.sroa.0.0, ptr nonnull %.fca.1.load.cast.i, i8 0, i32 noundef 8) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6428ReadStackPointerFromRegisterEi(ptr noundef nonnull align 8 dereferenceable(668) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i64 @_ZN2v88internal17ExternalReference42address_of_regexp_stack_memory_top_addressEPNS0_7IsolateE(ptr noundef %i.b) #13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.e = tail call { i64, ptr } @_ZN2v88internal14MacroAssembler26ExternalReferenceAsOperandENS0_17ExternalReferenceENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.d, i64 %i.c, i8 1) #13 ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0
  %i.g = extractvalue { i64, ptr } %i.e, 1
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.d, i8 1, i64 %i.f, ptr %i.g, i32 noundef 8) #13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %.not.i = icmp sgt i32 %i.i, %1
  br i1 %.not.i, label %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %1, 1
  store i32 %i.j, ptr %i.h, align 4
  br label %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit

_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit: ; preds = %bb.b, %bb.a
  %i.k = shl nsw i32 %1, 3
  %i.l = sub nsw i32 -104, %i.k                   ; 3 uses
  %i.m = sext i32 %i.l to i64
  %i.n = add nsw i64 %i.m, 128
  %i.o = icmp ult i64 %i.n, 256                   ; 2 uses
  %i.p = shl i32 %i.l, 24
  %i.q = or disjoint i32 %i.p, 4521984
  %.sroa.0.3.insert.insert15 = zext i32 %i.q to i64
  %.sroa.0.3.insert.ext = zext i32 %i.l to i64
  %.sroa.0.3.insert.shift = shl nuw nsw i64 %.sroa.0.3.insert.ext, 24
  %.sroa.0.3.insert.insert = or disjoint i64 %.sroa.0.3.insert.shift, 8716288
  %.sroa.0.0 = select i1 %i.o, i64 %.sroa.0.3.insert.insert15, i64 %.sroa.0.3.insert.insert
  %storemerge.i = select i1 %i.o, i64 2, i64 5
  %.fca.1.load.cast.i = inttoptr i64 %storemerge.i to ptr
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.d, i8 noundef zeroext 43, i8 1, i64 %.sroa.0.0, ptr nonnull %.fca.1.load.cast.i, i32 noundef 8) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6425SetCurrentPositionFromEndEi(ptr noundef nonnull align 8 dereferenceable(668) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store i32 0, ptr %2, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.c = sub nsw i32 0, %1                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = mul nsw i32 %i.e, %i.c
  %.sroa.0.0.insert.ext = zext i32 %i.f to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 7, i8 7, i64 %.sroa.0.0.insert.ext, i32 noundef 8) #13
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i32 noundef 13, ptr noundef nonnull %2, i32 noundef 0) #13
  %i.g = load i32, ptr %i.d, align 8
  %i.h = mul nsw i32 %i.g, %i.c                   ; 3 uses
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = icmp eq i32 %i.h, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(436) %i.b, i8 noundef zeroext 51, i8 7, i8 7, i32 noundef 4) #13
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %i.b, i8 7, i64 %i.i, i32 noundef 4) #13
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

bb.e:                                             ; preds = %bb.c
  %.sroa.015.0.insert.ext.i = and i64 %i.i, 4294967295
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %i.b, i8 7, i64 %.sroa.015.0.insert.ext.i, i32 noundef 8) #13
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 464
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(668) %0, i32 noundef -1, i32 noundef 1) #13
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6411SetRegisterEii(ptr noundef nonnull align 8 dereferenceable(668) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %.not.i = icmp sgt i32 %i.b, %1
  br i1 %.not.i, label %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %1, 1
  store i32 %i.c, ptr %i.a, align 4
  br label %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit

_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit: ; preds = %bb.b, %bb.a
  %i.d = shl nsw i32 %1, 3
  %i.e = sub nsw i32 -104, %i.d                   ; 3 uses
  %i.f = sext i32 %i.e to i64
  %i.g = add nsw i64 %i.f, 128
  %i.h = icmp ult i64 %i.g, 256                   ; 2 uses
  %i.i = shl i32 %i.e, 24
  %i.j = or disjoint i32 %i.i, 4521984
  %.sroa.02.3.insert.insert10 = zext i32 %i.j to i64
  %.sroa.02.3.insert.ext = zext i32 %i.e to i64
  %.sroa.02.3.insert.shift = shl nuw nsw i64 %.sroa.02.3.insert.ext, 24
  %.sroa.02.3.insert.insert = or disjoint i64 %.sroa.02.3.insert.shift, 8716288
  %.sroa.02.0 = select i1 %i.h, i64 %.sroa.02.3.insert.insert10, i64 %.sroa.02.3.insert.insert
  %storemerge.i = select i1 %i.h, i64 2, i64 5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.fca.1.load.cast.i = inttoptr i64 %storemerge.i to ptr
  %.sroa.0.0.insert.ext = zext i32 %2 to i64
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i64 %.sroa.02.0, ptr nonnull %.fca.1.load.cast.i, i64 %.sroa.0.0.insert.ext, i32 noundef 8) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal23RegExpMacroAssemblerX647SucceedEv(ptr noundef nonnull align 8 dereferenceable(668) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 620
  tail call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.a, ptr noundef nonnull %i.b, i32 noundef 1) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp ne i32 %i.d, 0
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6430WriteCurrentPositionToRegisterEii(ptr noundef nonnull align 8 dereferenceable(668) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %.not.i = icmp sgt i32 %i.d, %1
  br i1 %.not.i, label %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %1, 1
  store i32 %i.e, ptr %i.c, align 4
  br label %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit

_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit: ; preds = %bb.c, %bb.b
  %i.f = shl nsw i32 %1, 3
  %i.g = sub nsw i32 -104, %i.f                   ; 3 uses
  %i.h = sext i32 %i.g to i64
  %i.i = add nsw i64 %i.h, 128
  %i.j = icmp ult i64 %i.i, 256                   ; 2 uses
  %i.k = shl i32 %i.g, 24
  %i.l = or disjoint i32 %i.k, 4521984
  %.sroa.035.3.insert.insert43 = zext i32 %i.l to i64
  %.sroa.035.3.insert.ext = zext i32 %i.g to i64
  %.sroa.035.3.insert.shift = shl nuw nsw i64 %.sroa.035.3.insert.ext, 24
  %.sroa.035.3.insert.insert = or disjoint i64 %.sroa.035.3.insert.shift, 8716288
  %.sroa.035.0 = select i1 %i.j, i64 %.sroa.035.3.insert.insert43, i64 %.sroa.035.3.insert.insert
  %storemerge.i = select i1 %i.j, i64 2, i64 5
  %.fca.1.load.cast.i = inttoptr i64 %storemerge.i to ptr
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i64 %.sroa.035.0, ptr nonnull %.fca.1.load.cast.i, i8 7, i32 noundef 8) #13
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.p = mul nsw i32 %i.n, %2                     ; 4 uses
  %i.q = icmp eq i32 %i.n, 0
  br i1 %i.q, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sext i32 %i.p to i64
  %i.s = add nsw i64 %i.r, 128
  %i.t = icmp ult i64 %i.s, 256
  br i1 %i.t, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.5.sroa.4.0.extract.shift = and i32 %i.p, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.e, %bb.d, %bb.f
  %.sroa.5.sroa.0.0 = phi i32 [ %i.p, %bb.f ], [ 0, %bb.d ], [ %i.p, %bb.e ]
  %.sroa.2.0 = phi i64 [ 8847360, %bb.f ], [ 458752, %bb.d ], [ 4653056, %bb.e ]
  %.sroa.5.sroa.4.sroa.0.0 = phi i32 [ %.sroa.5.sroa.4.0.extract.shift, %bb.f ], [ 0, %bb.d ], [ 0, %bb.e ]
  %i.u = phi ptr [ inttoptr (i64 5 to ptr), %bb.f ], [ inttoptr (i64 1 to ptr), %bb.d ], [ inttoptr (i64 2 to ptr), %bb.e ]
  %.sroa.5.sroa.0.0.insert.ext = and i32 %.sroa.5.sroa.0.0, 255
  %.sroa.5.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.sroa.4.sroa.0.0, %.sroa.5.sroa.0.0.insert.ext
  %.sroa.5.0.insert.ext = zext i32 %.sroa.5.sroa.0.0.insert.insert to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 24
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.2.0
  tail call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.o, i8 0, i64 %.sroa.2.0.insert.insert, ptr nonnull %i.u, i32 noundef 8) #13
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %.not.i11 = icmp sgt i32 %i.w, %1
  br i1 %.not.i11, label %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit17, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  %i.x = add nsw i32 %1, 1
  store i32 %i.x, ptr %i.v, align 4
  br label %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit17

_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit17: ; preds = %bb.g, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  %i.y = shl nsw i32 %1, 3
  %i.z = sub nsw i32 -104, %i.y                   ; 3 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = add nsw i64 %i.aa, 128
  %i.ac = icmp ult i64 %i.ab, 256                 ; 2 uses
  %i.ad = shl i32 %i.z, 24
  %i.ae = or disjoint i32 %i.ad, 4521984
  %.sroa.044.3.insert.insert52 = zext i32 %i.ae to i64
  %.sroa.044.3.insert.ext = zext i32 %i.z to i64
  %.sroa.044.3.insert.shift = shl nuw nsw i64 %.sroa.044.3.insert.ext, 24
  %.sroa.044.3.insert.insert = or disjoint i64 %.sroa.044.3.insert.shift, 8716288
  %.sroa.044.0 = select i1 %i.ac, i64 %.sroa.044.3.insert.insert52, i64 %.sroa.044.3.insert.insert
  %storemerge.i12 = select i1 %i.ac, i64 2, i64 5
  %.fca.1.load.cast.i15 = inttoptr i64 %storemerge.i12 to ptr
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %i.o, i64 %.sroa.044.0, ptr nonnull %.fca.1.load.cast.i15, i8 0, i32 noundef 8) #13
  br label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit17, %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6414ClearRegistersEii(ptr noundef nonnull align 8 dereferenceable(668) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i8 0, i64 2957312000, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  %.not30 = icmp sgt i32 %1, %2
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 2 uses
  %i.c = sext i32 %1 to i64
  %i.d = add i32 %2, 1
  br label %bb.a

._crit_edge:                                      ; preds = %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  ret void

bb.a:                                             ; preds = %.lr.ph, %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit
  %indvars.iv = phi i64 [ %i.c, %.lr.ph ], [ %.pre, %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit ] ; 3 uses
  %i.e = load i32, ptr %i.b, align 4
  %i.f = sext i32 %i.e to i64
  %.not.i = icmp slt i64 %indvars.iv, %i.f
  %.pre = add nsw i64 %indvars.iv, 1              ; 2 uses
  %.pre34 = trunc i64 %.pre to i32                ; 2 uses
  br i1 %.not.i, label %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %.pre34, ptr %i.b, align 4
  br label %_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit

_ZN2v88internal23RegExpMacroAssemblerX6417register_locationEi.exit: ; preds = %bb.a, %bb.b
  %i.g = shl nsw i64 %indvars.iv, 3               ; 2 uses
  %i.h = add i64 %i.g, 224
  %i.i = icmp ult i64 %i.h, 256                   ; 2 uses
  %i.j = trunc i64 %i.g to i32
  %i.k = sub i32 -104, %i.j                       ; 2 uses
  %i.l = shl i32 %i.k, 24
  %i.m = or disjoint i32 %i.l, 4521984
  %.sroa.021.3.insert.insert29 = zext i32 %i.m to i64
  %.sroa.021.3.insert.ext = zext i32 %i.k to i64
  %.sroa.021.3.insert.shift = shl nuw nsw i64 %.sroa.021.3.insert.ext, 24
  %.sroa.021.3.insert.insert = or disjoint i64 %.sroa.021.3.insert.shift, 8716288
  %.sroa.021.0 = select i1 %i.i, i64 %.sroa.021.3.insert.insert29, i64 %.sroa.021.3.insert.insert
  %storemerge.i = select i1 %i.i, i64 2, i64 5
  %.fca.1.load.cast.i = inttoptr i64 %storemerge.i to ptr
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %i.a, i64 %.sroa.021.0, ptr nonnull %.fca.1.load.cast.i, i8 0, i32 noundef 8) #13
  %exitcond.not = icmp eq i32 %i.d, %.pre34
  br i1 %exitcond.not, label %._crit_edge, label %bb.a, !llvm.loop !21
}

declare i64 @_ZN2v88internal17ExternalReference26re_check_stack_guard_stateEv() local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal23RegExpMacroAssemblerX6420CheckStackGuardStateEPmmmm(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %_ZN2v88internal8NullOrIsINS0_17InstructionStreamENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i, label %_ZN2v88internal8NullOrIsINS0_17InstructionStreamENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.thread.i, !prof !22

_ZN2v88internal8NullOrIsINS0_17InstructionStreamENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i: ; preds = %bb.a
  %i.b = add nsw i64 %1, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 191
  br i1 %i.h, label %_ZN2v88internal7SbxCastINS0_17InstructionStreamENS0_6ObjectENS0_6TaggedEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit, label %_ZN2v88internal8NullOrIsINS0_17InstructionStreamENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.thread.i, !prof !23

_ZN2v88internal8NullOrIsINS0_17InstructionStreamENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.thread.i: ; preds = %_ZN2v88internal8NullOrIsINS0_17InstructionStreamENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.36) #14
  unreachable

_ZN2v88internal7SbxCastINS0_17InstructionStreamENS0_6ObjectENS0_6TaggedEQ21HasCastImplementationIT1_T_T0_EEES5_IS6_ES5_IS7_ENS_14SourceLocationE.exit: ; preds = %_ZN2v88internal8NullOrIsINS0_17InstructionStreamENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i
  %i.i = add i64 %2, 24
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = add i64 %2, -24
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i32, ptr %i.m, align 4
  %i.o = add i64 %2, 16
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i32, ptr %i.p, align 4
  %i.r = add i64 %2, -16
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = add i64 %2, -32
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = add i64 %2, -40
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = tail call noundef i32 @_ZN2v88internal26NativeRegExpMacroAssembler20CheckStackGuardStateEPNS0_7IsolateEiNS0_6RegExp10CallOriginEPmNS0_6TaggedINS0_17InstructionStreamEEES6_PPKhSC_m(ptr noundef %i.k, i32 noundef %i.n, i32 noundef %i.q, ptr noundef %0, i64 %1, ptr noundef %i.s, ptr noundef %i.u, ptr noundef %i.w, i64 noundef %3) #13
  ret i32 %i.x
}

declare noundef i32 @_ZN2v88internal26NativeRegExpMacroAssembler20CheckStackGuardStateEPNS0_7IsolateEiNS0_6RegExp10CallOriginEPmNS0_6TaggedINS0_17InstructionStreamEEES6_PPKhSC_m(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6413CheckPositionEiPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(668) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.d = load i32, ptr %i.c, align 8
  %i.e = mul i32 %1, %i.d
  %i.f = sub i32 0, %i.e
  %.sroa.0.0.insert.ext = zext i32 %i.f to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i8 noundef zeroext 7, i8 7, i64 %.sroa.0.0.insert.ext, i32 noundef 4) #13
  %.not.i = icmp eq ptr %2, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.h = select i1 %.not.i, ptr %i.g, ptr %2
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.b, i32 noundef 13, ptr noundef nonnull %i.h, i32 noundef 1) #13
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.l = mul nsw i32 %i.j, %1                     ; 4 uses
  %i.m = icmp eq i32 %i.j, 0
  br i1 %i.m, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit15, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = sext i32 %i.l to i64
  %i.o = add nsw i64 %i.n, 128
  %i.p = icmp ult i64 %i.o, 256
  br i1 %i.p, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit15, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.5.sroa.4.0.extract.shift = and i32 %i.l, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit15

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit15: ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.5.sroa.0.0 = phi i32 [ %i.l, %bb.e ], [ 0, %bb.c ], [ %i.l, %bb.d ]
  %.sroa.2.0 = phi i64 [ 8847360, %bb.e ], [ 458752, %bb.c ], [ 4653056, %bb.d ]
  %.sroa.5.sroa.4.sroa.0.0 = phi i32 [ %.sroa.5.sroa.4.0.extract.shift, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ]
  %i.q = phi ptr [ inttoptr (i64 5 to ptr), %bb.e ], [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 2 to ptr), %bb.d ]
  %.sroa.5.sroa.0.0.insert.ext = and i32 %.sroa.5.sroa.0.0, 255
  %.sroa.5.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.sroa.4.sroa.0.0, %.sroa.5.sroa.0.0.insert.ext
  %.sroa.5.0.insert.ext = zext i32 %.sroa.5.sroa.0.0.insert.insert to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 24
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.2.0
  tail call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 0, i64 %.sroa.2.0.insert.insert, ptr nonnull %i.q, i32 noundef 8) #13
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i8 noundef zeroext 59, i8 0, i64 2957312000, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #13
  %.not.i19 = icmp eq ptr %2, null
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.s = select i1 %.not.i19, ptr %i.r, ptr %2
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.k, i32 noundef 14, ptr noundef nonnull %i.s, i32 noundef 1) #13
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit15, %bb.b
  ret void
}

declare void @_ZN2v88internal9Assembler8load_raxENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(408), i64) local_unnamed_addr #1

declare i64 @_ZN2v88internal17ExternalReference37address_of_regexp_stack_limit_addressEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #1

declare void @_ZN2v88internal9Assembler4int3Ev(ptr noundef nonnull align 8 dereferenceable(408)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23RegExpMacroAssemblerX6429LoadCurrentCharacterUncheckedEii(ptr noundef nonnull align 8 dereferenceable(668) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.e = icmp eq i32 %1, 0                        ; 3 uses
  switch i32 %2, label %bb.i [
    i32 4, label %bb.c
    i32 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %i.e, label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit41, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = sext i32 %1 to i64
  %i.g = add nsw i64 %i.f, 128
  %i.h = icmp ult i64 %i.g, 256
  br i1 %i.h, label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit41, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.9.sroa.4.0.extract.shift184 = and i32 %1, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit41

_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit41: ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.3172.0 = phi i64 [ 8650752, %bb.e ], [ 262144, %bb.c ], [ 4456448, %bb.d ]
  %.sroa.11178.0 = phi ptr [ inttoptr (i64 6 to ptr), %bb.e ], [ inttoptr (i64 2 to ptr), %bb.c ], [ inttoptr (i64 3 to ptr), %bb.d ]
  %.sroa.9.sroa.4.sroa.0186.0 = phi i32 [ %.sroa.9.sroa.4.0.extract.shift184, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ]
  %.sroa.9.sroa.0179.0.insert.ext = and i32 %1, 255
  %.sroa.9.sroa.0179.0.insert.insert = or disjoint i32 %.sroa.9.sroa.4.sroa.0186.0, %.sroa.9.sroa.0179.0.insert.ext
  %.sroa.9.0.insert.ext174 = zext i32 %.sroa.9.sroa.0179.0.insert.insert to i64
  %.sroa.9.0.insert.shift175 = shl nuw i64 %.sroa.9.0.insert.ext174, 32
  %.sroa.7173.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.shift175, %.sroa.3172.0
  %.sroa.3172.0.insert.insert = or disjoint i64 %.sroa.7173.0.insert.insert, 1040187392
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.d, i8 2, i64 %.sroa.3172.0.insert.insert, ptr nonnull %.sroa.11178.0, i32 noundef 4) #13
  br label %bb.s

bb.f:                                             ; preds = %bb.b
  br i1 %i.e, label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit36, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = sext i32 %1 to i64
  %i.j = add nsw i64 %i.i, 128
  %i.k = icmp ult i64 %i.j, 256
  br i1 %i.k, label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit36, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.9.sroa.4.0.extract.shift167 = and i32 %1, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit36

_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit36: ; preds = %bb.g, %bb.f, %bb.h
  %.sroa.11161.0 = phi ptr [ inttoptr (i64 6 to ptr), %bb.h ], [ inttoptr (i64 2 to ptr), %bb.f ], [ inttoptr (i64 3 to ptr), %bb.g ]
  %.sroa.3155.0 = phi i64 [ 8650752, %bb.h ], [ 262144, %bb.f ], [ 4456448, %bb.g ]
  %.sroa.9.sroa.4.sroa.0169.0 = phi i32 [ %.sroa.9.sroa.4.0.extract.shift167, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.sroa.9.sroa.0162.0.insert.ext = and i32 %1, 255
  %.sroa.9.sroa.0162.0.insert.insert = or disjoint i32 %.sroa.9.sroa.4.sroa.0169.0, %.sroa.9.sroa.0162.0.insert.ext
  %.sroa.9.0.insert.ext157 = zext i32 %.sroa.9.sroa.0162.0.insert.insert to i64
  %.sroa.9.0.insert.shift158 = shl nuw i64 %.sroa.9.0.insert.ext157, 32
  %.sroa.7156.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.shift158, %.sroa.3155.0
  %.sroa.3155.0.insert.insert = or disjoint i64 %.sroa.7156.0.insert.insert, 1040187392
  tail call void @_ZN2v88internal9Assembler11emit_movzxwENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.d, i8 2, i64 %.sroa.3155.0.insert.insert, ptr nonnull %.sroa.11161.0, i32 noundef 4) #13
  br label %bb.s

bb.i:                                             ; preds = %bb.b
  br i1 %i.e, label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit31, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = sext i32 %1 to i64
  %i.m = add nsw i64 %i.l, 128
  %i.n = icmp ult i64 %i.m, 256
  br i1 %i.n, label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit31, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.9.sroa.4.0.extract.shift150 = and i32 %1, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit31

_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit31: ; preds = %bb.j, %bb.i, %bb.k
  %.sroa.9.sroa.4.sroa.0152.0 = phi i32 [ %.sroa.9.sroa.4.0.extract.shift150, %bb.k ], [ 0, %bb.i ], [ 0, %bb.j ]
  %.sroa.11144.0 = phi ptr [ inttoptr (i64 6 to ptr), %bb.k ], [ inttoptr (i64 2 to ptr), %bb.i ], [ inttoptr (i64 3 to ptr), %bb.j ]
  %.sroa.3138.0 = phi i64 [ 8650752, %bb.k ], [ 262144, %bb.i ], [ 4456448, %bb.j ]
  %.sroa.9.sroa.0145.0.insert.ext = and i32 %1, 255
  %.sroa.9.sroa.0145.0.insert.insert = or disjoint i32 %.sroa.9.sroa.4.sroa.0152.0, %.sroa.9.sroa.0145.0.insert.ext
  %.sroa.9.0.insert.ext140 = zext i32 %.sroa.9.sroa.0145.0.insert.insert to i64
  %.sroa.9.0.insert.shift141 = shl nuw i64 %.sroa.9.0.insert.ext140, 32
  %.sroa.7139.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.shift141, %.sroa.3138.0
  %.sroa.3138.0.insert.insert = or disjoint i64 %.sroa.7139.0.insert.insert, 1040187392
  tail call void @_ZN2v88internal9Assembler11emit_movzxbENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.d, i8 2, i64 %.sroa.3138.0.insert.insert, ptr nonnull %.sroa.11144.0, i32 noundef 4) #13
  br label %bb.s

bb.l:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %2, 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.q = shl i32 %1, 1                            ; 7 uses
  %i.r = icmp eq i32 %i.q, 0                      ; 2 uses
  br i1 %i.o, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %i.r, label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit26, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = sext i32 %i.q to i64
  %i.t = add nsw i64 %i.s, 128
  %i.u = icmp ult i64 %i.t, 256
  br i1 %i.u, label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit26, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.9.sroa.4.0.extract.shift133 = and i32 %i.q, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit26

_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit26: ; preds = %bb.n, %bb.m, %bb.o
  %.sroa.9.sroa.4.sroa.0135.0 = phi i32 [ %.sroa.9.sroa.4.0.extract.shift133, %bb.o ], [ 0, %bb.m ], [ 0, %bb.n ]
  %.sroa.11127.0 = phi ptr [ inttoptr (i64 6 to ptr), %bb.o ], [ inttoptr (i64 2 to ptr), %bb.m ], [ inttoptr (i64 3 to ptr), %bb.n ]
  %.sroa.3121.0 = phi i64 [ 8650752, %bb.o ], [ 262144, %bb.m ], [ 4456448, %bb.n ]
  %.sroa.9.sroa.0128.0.insert.ext = and i32 %i.q, 254
  %.sroa.9.sroa.0128.0.insert.insert = or disjoint i32 %.sroa.9.sroa.4.sroa.0135.0, %.sroa.9.sroa.0128.0.insert.ext
  %.sroa.9.0.insert.ext123 = zext i32 %.sroa.9.sroa.0128.0.insert.insert to i64
  %.sroa.9.0.insert.shift124 = shl nuw i64 %.sroa.9.0.insert.ext123, 32
  %.sroa.7122.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.shift124, %.sroa.3121.0
  %.sroa.3121.0.insert.insert = or disjoint i64 %.sroa.7122.0.insert.insert, 1040187392
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.p, i8 2, i64 %.sroa.3121.0.insert.insert, ptr nonnull %.sroa.11127.0, i32 noundef 4) #13
  br label %bb.s

bb.p:                                             ; preds = %bb.l
  br i1 %i.r, label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.v = sext i32 %i.q to i64
  %i.w = add nsw i64 %i.v, 128
  %i.x = icmp ult i64 %i.w, 256
  br i1 %i.x, label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.9.sroa.4.0.extract.shift = and i32 %i.q, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit: ; preds = %bb.q, %bb.p, %bb.r
  %.sroa.9.sroa.4.sroa.0.0 = phi i32 [ %.sroa.9.sroa.4.0.extract.shift, %bb.r ], [ 0, %bb.p ], [ 0, %bb.q ]
  %.sroa.11.0 = phi ptr [ inttoptr (i64 6 to ptr), %bb.r ], [ inttoptr (i64 2 to ptr), %bb.p ], [ inttoptr (i64 3 to ptr), %bb.q ]
  %.sroa.3.0 = phi i64 [ 8650752, %bb.r ], [ 262144, %bb.p ], [ 4456448, %bb.q ]
  %.sroa.9.sroa.0.0.insert.ext = and i32 %i.q, 254
  %.sroa.9.sroa.0.0.insert.insert = or disjoint i32 %.sroa.9.sroa.4.sroa.0.0, %.sroa.9.sroa.0.0.insert.ext
  %.sroa.9.0.insert.ext = zext i32 %.sroa.9.sroa.0.0.insert.insert to i64
  %.sroa.9.0.insert.shift = shl nuw i64 %.sroa.9.0.insert.ext, 32
  %.sroa.7.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.shift, %.sroa.3.0
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.insert, 1040187392
  tail call void @_ZN2v88internal9Assembler11emit_movzxwENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.p, i8 2, i64 %.sroa.3.0.insert.insert, ptr nonnull %.sroa.11.0, i32 noundef 4) #13
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit26, %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit, %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit41, %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit31, %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal20RegExpMacroAssembler21AbortedCodeGenerationEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

declare noundef zeroext i1 @_ZNK2v88internal26NativeRegExpMacroAssembler16CanReadUnalignedEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

declare void @_ZN2v88internal26NativeRegExpMacroAssembler24LoadCurrentCharacterImplEiPNS0_5LabelEbii(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal23RegExpMacroAssemblerX6413RecordCommentESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(668) %0, i64 %1, ptr %2) unnamed_addr #0 comdat align 2 {
_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal23RegExpMacroAssemblerX644masmEv(ptr noundef nonnull align 8 dereferenceable(668) %0) unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_2
