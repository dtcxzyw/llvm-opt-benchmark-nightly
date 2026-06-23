inline.NumInlined: 20439
inline.NumDeleted: 7868
begin_hunk_0_@_ZN2v88internal6maglev9ForInNext12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateE:bb.a
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = lshr i64 %i.p, 32
  %i.r = trunc i64 %i.q to i16                    ; 2 uses
  %i.s = and i16 %i.r, 2
  %.not.i.i.i.i = icmp eq i16 %i.s, 0
  %.neg.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 -48
  %i.t = and i16 %i.r, 6
  %i.u = icmp eq i16 %i.t, 4
  %.neg2.i.i.i = select i1 %i.u, i64 -56, i64 0
  %.neg3.i.i.i = add nsw i64 %.neg.i.i.i, %.neg2.i.i.i
  %i.v = trunc i64 %i.p to i32
  %i.w = lshr i32 %i.v, 16
  %i.x = getelementptr inbounds i8, ptr %0, i64 -8
  %narrow.i.i.i.i = sub nsw i32 1, %i.w
  %i.y = sext i32 %narrow.i.i.i.i to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = add i64 %.neg3.i.i.i, %i.aa
  %i.ac = inttoptr i64 %i.ab to ptr
  call void @_ZN2v88internal6maglev15MaglevAssembler20DefineLazyDeoptPointEPNS1_13LazyDeoptInfoE(ptr noundef nonnull align 8 dereferenceable(456) %1, ptr noundef %i.ac)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZNK2v88internal6maglev11GetIterator16MaxCallStackArgsEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #4 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal6maglev11GetIterator27SetValueLocationConstraintsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  store i64 14018773254137, ptr %i.c, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8
  tail call void @_ZN2v88internal6maglev9ValueNode7SetHintENS0_8compiler18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(20) %i.e, i64 %.sroa.0.0.copyload.i)
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 824633720825, ptr %i.l, align 8
  %i.m = getelementptr inbounds i8, ptr %0, i64 -16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.0.0.copyload.i15 = load i64, ptr %i.r, align 8
  tail call void @_ZN2v88internal6maglev9ValueNode7SetHintENS0_8compiler18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i64 %.sroa.0.0.copyload.i15)
  %i.s = load ptr, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 824633720825, ptr %i.t, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev11GetIterator12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(20) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::maglev::MaglevAssembler::TemporaryRegisterScope", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::tuple.2960", align 8   ; 8 uses
  %5 = alloca %class.anon.2965, align 8           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.k = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %0, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 1, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %i.k, ptr %4, align 8, !alias.scope !61
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.i, ptr %i.m, align 8, !alias.scope !61
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.e, ptr %i.n, align 8, !alias.scope !61
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %i.a, ptr %5, align 8
  call void @_ZN2v84base6detail30tuple_for_each_with_index_implISt5tupleIJNS_8internal6maglev5InputENS4_6TaggedINS4_11TaggedIndexEEES9_NS4_6HandleINS4_14FeedbackVectorEEEEERZNS5_6detail23MoveArgumentsForBuiltinILNS4_7BuiltinE996EJS6_S6_S9_S9_SC_EEEvPNS5_15MaglevAssemblerEDpOT0_EUlOT_T0_E_JLm0ELm1ELm2ELm3EEEEDaRKSM_OSO_St16integer_sequenceImJXspT1_EEE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %1, ptr %3, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  store ptr %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 18
  store ptr %3, ptr %i.p, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i16 0, ptr %i.r, align 8
  store i16 0, ptr %i.s, align 2
  store i8 1, ptr %i.t, align 4
  store i8 1, ptr %i.u, align 1
  call void @_ZN2v88internal14MacroAssembler11CallBuiltinENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(456) %1, i32 noundef 996) #28
  %i.v = load ptr, ptr %i.o, align 8
  %i.w = load ptr, ptr %3, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 448
  store ptr %i.v, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @_ZN2v88internal6maglev15MaglevAssembler27DefineExceptionHandlerPointEPNS1_8NodeBaseE(ptr noundef nonnull align 8 dereferenceable(456) %1, ptr noundef nonnull %0)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = lshr i64 %i.z, 32
  %i.ab = trunc i64 %i.aa to i16                  ; 2 uses
  %i.ac = and i16 %i.ab, 2
  %.not.i.i.i.i = icmp eq i16 %i.ac, 0
  %.neg.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 -48
  %i.ad = and i16 %i.ab, 6
  %i.ae = icmp eq i16 %i.ad, 4
  %.neg2.i.i.i = select i1 %i.ae, i64 -56, i64 0
  %.neg3.i.i.i = add nsw i64 %.neg.i.i.i, %.neg2.i.i.i
  %i.af = trunc i64 %i.z to i32
  %i.ag = lshr i32 %i.af, 16
  %i.ah = getelementptr inbounds i8, ptr %0, i64 -8
  %narrow.i.i.i.i = sub nsw i32 1, %i.ag
  %i.ai = sext i32 %narrow.i.i.i.i to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = add i64 %.neg3.i.i.i, %i.ak
  %i.am = inttoptr i64 %i.al to ptr
  call void @_ZN2v88internal6maglev15MaglevAssembler20DefineLazyDeoptPointEPNS1_13LazyDeoptInfoE(ptr noundef nonnull align 8 dereferenceable(456) %1, ptr noundef %i.am)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal6maglev12Int32Compare27SetValueLocationConstraintsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  store i64 962072674297, ptr %i.c, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 -16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 65535
  %i.i = icmp eq i64 %i.h, 222
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %. = select i1 %i.i, i64 755914244089, i64 962072674297
  store i64 %., ptr %i.m, align 8
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 962072674297, ptr %i.o, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev12Int32Compare12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr noundef %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(20) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::Label", align 4 ; 9 uses
  %4 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.b, align 8
  %i.c = lshr i64 %.sroa.0.0.copyload.i.i.i, 32
  %i.d = trunc i64 %i.c to i8                     ; 3 uses
  %i.e = icmp samesign ult i8 %i.d, 16
  tail call void @llvm.assume(i1 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i32 0, ptr %3, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i32 0, ptr %4, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.g, align 4
  %i.h = getelementptr inbounds i8, ptr %0, i64 -16
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, 65535
  %i.m = icmp ne i64 %i.l, 222
  %.not52 = icmp eq ptr %i.i, null
  %.not = or i1 %.not52, %i.m
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %.sroa.0.0.copyload.i.i.i37 = load i64, ptr %i.o, align 8
  %i.p = lshr i64 %.sroa.0.0.copyload.i.i.i37, 32
  %i.q = trunc i64 %i.p to i8                     ; 2 uses
  %i.r = icmp samesign ult i8 %i.q, 16
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = lshr i64 %i.t, 53
  %i.v = trunc i64 %i.u to i8
  %i.w = and i8 %i.v, 31
  %switch.tableidx = add nsw i8 %i.w, -16         ; 2 uses
  %i.x = icmp ult i8 %switch.tableidx, 6
  br i1 %i.x, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.332) #29
  unreachable

switch.lookup:                                    ; preds = %bb.b
  %5 = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %6 = load i32, ptr %5, align 4
  %i.y = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal6maglev20BranchIfInt32Compare12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateE, i64 %i.y
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 4 uses
  tail call void @_ZN2v88internal14MacroAssembler3CmpENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %i.q, i32 noundef %6) #28
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 444), align 4
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.d, label %_ZN2v88internal6maglev15MaglevAssembler21CompareInt32AndJumpIfENS0_8RegisterEiNS0_9ConditionEPNS0_5LabelENS5_8DistanceE.exit, !prof !11

bb.d:                                             ; preds = %switch.lookup
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not16.i.i.i, label %_ZN2v88internal6maglev15MaglevAssembler21CompareInt32AndJumpIfENS0_8RegisterEiNS0_9ConditionEPNS0_5LabelENS5_8DistanceE.exit, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i, i64 8 ; 2 uses
  %.not17.i.i.i = icmp eq ptr %i.ah, %i.ag
  br i1 %.not17.i.i.i, label %_ZN2v88internal6maglev15MaglevAssembler21CompareInt32AndJumpIfENS0_8RegisterEiNS0_9ConditionEPNS0_5LabelENS5_8DistanceE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %.sroa.09.013.i.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.ae, %bb.d ] ; 2 uses
  %i.ai = load ptr, ptr %.sroa.09.013.i.i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.not.i.i.i = icmp eq ptr %i.aj, %3
  br i1 %.not.i.i.i, label %_ZN2v88internal6maglev15MaglevAssembler21CompareInt32AndJumpIfENS0_8RegisterEiNS0_9ConditionEPNS0_5LabelENS5_8DistanceE.exit.sink.split, label %bb.e

bb.f:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.sroa.0.0.copyload.i.i.i40 = load i64, ptr %i.al, align 8
  %i.am = lshr i64 %.sroa.0.0.copyload.i.i.i40, 32
  %i.an = trunc i64 %i.am to i8                   ; 2 uses
  %i.ao = icmp samesign ult i8 %i.an, 16
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.0.0.copyload.i.i.i43 = load i64, ptr %i.ap, align 8
  %i.aq = lshr i64 %.sroa.0.0.copyload.i.i.i43, 32
  %i.ar = trunc i64 %i.aq to i8                   ; 2 uses
  %i.as = icmp samesign ult i8 %i.ar, 16
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i64, ptr %i.at, align 8
  %i.av = lshr i64 %i.au, 53
  %i.aw = trunc i64 %i.av to i8
  %i.ax = and i8 %i.aw, 31
  %switch.tableidx62 = add nsw i8 %i.ax, -16      ; 2 uses
  %i.ay = icmp ult i8 %switch.tableidx62, 6
  br i1 %i.ay, label %switch.lookup63, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.332) #29
  unreachable

switch.lookup63:                                  ; preds = %bb.f
  %i.az = zext nneg i8 %switch.tableidx62 to i64
  %switch.gep64 = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal6maglev20BranchIfInt32Compare12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateE, i64 %i.az
  %switch.load65 = load i8, ptr %switch.gep64, align 1
  %switch.ext66 = zext i8 %switch.load65 to i32   ; 4 uses
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 noundef zeroext 59, i8 %i.an, i8 %i.ar, i32 noundef 4) #28
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 444), align 4
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %bb.h, label %_ZN2v88internal6maglev15MaglevAssembler21CompareInt32AndJumpIfENS0_8RegisterEiNS0_9ConditionEPNS0_5LabelENS5_8DistanceE.exit, !prof !11

bb.h:                                             ; preds = %switch.lookup63
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not16.i.i.i46 = icmp eq ptr %i.bf, %i.bh
  br i1 %.not16.i.i.i46, label %_ZN2v88internal6maglev15MaglevAssembler21CompareInt32AndJumpIfENS0_8RegisterEiNS0_9ConditionEPNS0_5LabelENS5_8DistanceE.exit, label %.lr.ph.i.i.i47

bb.i:                                             ; preds = %.lr.ph.i.i.i47
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i48, i64 8 ; 2 uses
  %.not17.i.i.i50 = icmp eq ptr %i.bi, %i.bh
  br i1 %.not17.i.i.i50, label %_ZN2v88internal6maglev15MaglevAssembler21CompareInt32AndJumpIfENS0_8RegisterEiNS0_9ConditionEPNS0_5LabelENS5_8DistanceE.exit, label %.lr.ph.i.i.i47

.lr.ph.i.i.i47:                                   ; preds = %bb.h, %bb.i
  %.sroa.09.013.i.i.i48 = phi ptr [ %i.bi, %bb.i ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bj = load ptr, ptr %.sroa.09.013.i.i.i48, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %.not.i.i.i49 = icmp eq ptr %i.bk, %3
  br i1 %.not.i.i.i49, label %_ZN2v88internal6maglev15MaglevAssembler21CompareInt32AndJumpIfENS0_8RegisterEiNS0_9ConditionEPNS0_5LabelENS5_8DistanceE.exit.sink.split, label %bb.i

_ZN2v88internal6maglev15MaglevAssembler21CompareInt32AndJumpIfENS0_8RegisterEiNS0_9ConditionEPNS0_5LabelENS5_8DistanceE.exit.sink.split: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i47
  %.0.i44.sink.ph = phi i32 [ %switch.ext66, %.lr.ph.i.i.i47 ], [ %switch.ext, %.lr.ph.i.i.i ]
  call void @_ZN2v88internal6maglev15MaglevAssembler20EmitEagerDeoptStressEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(456) %1, ptr noundef nonnull %3) #32
  br label %_ZN2v88internal6maglev15MaglevAssembler21CompareInt32AndJumpIfENS0_8RegisterEiNS0_9ConditionEPNS0_5LabelENS5_8DistanceE.exit

_ZN2v88internal6maglev15MaglevAssembler21CompareInt32AndJumpIfENS0_8RegisterEiNS0_9ConditionEPNS0_5LabelENS5_8DistanceE.exit: ; preds = %bb.e, %bb.i, %_ZN2v88internal6maglev15MaglevAssembler21CompareInt32AndJumpIfENS0_8RegisterEiNS0_9ConditionEPNS0_5LabelENS5_8DistanceE.exit.sink.split, %bb.h, %switch.lookup63, %bb.d, %switch.lookup
  %.0.i44.sink = phi i32 [ %switch.ext66, %bb.h ], [ %switch.ext66, %bb.i ], [ %switch.ext, %switch.lookup ], [ %switch.ext, %bb.d ], [ %.0.i44.sink.ph, %_ZN2v88internal6maglev15MaglevAssembler21CompareInt32AndJumpIfENS0_8RegisterEiNS0_9ConditionEPNS0_5LabelENS5_8DistanceE.exit.sink.split ], [ %switch.ext66, %switch.lookup63 ], [ %switch.ext, %bb.e ]
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(456) %1, i32 noundef %.0.i44.sink, ptr noundef nonnull %3, i32 noundef 0) #28
  call void @_ZN2v88internal14MacroAssembler8LoadRootENS0_8RegisterENS0_9RootIndexE(ptr noundef nonnull align 8 dereferenceable(436) %1, i8 %i.d, i16 noundef zeroext 4) #28
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %1, ptr noundef nonnull %4, i32 noundef 1) #28
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %1, ptr noundef nonnull %3) #28
  call void @_ZN2v88internal14MacroAssembler8LoadRootENS0_8RegisterENS0_9RootIndexE(ptr noundef nonnull align 8 dereferenceable(436) %1, i8 %i.d, i16 noundef zeroext 3) #28
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %1, ptr noundef nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

declare void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal6maglev14Int32ToBoolean27SetValueLocationConstraintsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  store i64 962072674297, ptr %i.c, align 8
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 962072674297, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev14Int32ToBoolean12GenerateCodeEPNS1_15MaglevAssemblerERKNS1_15ProcessingStateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(20) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::Label", align 4 ; 8 uses
  %4 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.b, align 8
  %i.c = lshr i64 %.sroa.0.0.copyload.i.i.i, 32
  %i.d = trunc i64 %i.c to i8                     ; 3 uses
  %i.e = icmp samesign ult i8 %i.d, 16
  tail call void @llvm.assume(i1 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i32 0, ptr %3, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i32 0, ptr %4, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %.sroa.0.0.copyload.i.i.i14 = load i64, ptr %i.i, align 8
  %i.j = lshr i64 %.sroa.0.0.copyload.i.i.i14, 32
  %i.k = trunc i64 %i.j to i8                     ; 2 uses
  %i.l = icmp samesign ult i8 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
  tail call void @_ZN2v88internal14MacroAssembler3CmpENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(456) %1, i8 %i.k, i32 noundef 0) #28
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 444), align 4
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %_ZN2v88internal6maglev15MaglevAssembler21CompareInt32AndJumpIfENS0_8RegisterEiNS0_9ConditionEPNS0_5LabelENS5_8DistanceE.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not16.i.i.i, label %_ZN2v88internal6maglev15MaglevAssembler21CompareInt32AndJumpIfENS0_8RegisterEiNS0_9ConditionEPNS0_5LabelENS5_8DistanceE.exit, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i, i64 8 ; 2 uses
  %.not17.i.i.i = icmp eq ptr %i.u, %i.t
  br i1 %.not17.i.i.i, label %_ZN2v88internal6maglev15MaglevAssembler21CompareInt32AndJumpIfENS0_8RegisterEiNS0_9ConditionEPNS0_5LabelENS5_8DistanceE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.sroa.09.013.i.i.i = phi ptr [ %i.u, %bb.c ], [ %i.r, %bb.b ] ; 2 uses
  %i.v = load ptr, ptr %.sroa.09.013.i.i.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.not.i.i.i = icmp eq ptr %i.w, %3
  br i1 %.not.i.i.i, label %_ZN2v88internal6maglev15MaglevAssembler12IsDeoptLabelEPNS0_5LabelE.exit.i.i, label %bb.c

_ZN2v88internal6maglev15MaglevAssembler12IsDeoptLabelEPNS0_5LabelE.exit.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZN2v88internal6maglev15MaglevAssembler20EmitEagerDeoptStressEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(456) %1, ptr noundef nonnull %3) #32, !inline_history !45
  br label %_ZN2v88internal6maglev15MaglevAssembler21CompareInt32AndJumpIfENS0_8RegisterEiNS0_9ConditionEPNS0_5LabelENS5_8DistanceE.exit

_ZN2v88internal6maglev15MaglevAssembler21CompareInt32AndJumpIfENS0_8RegisterEiNS0_9ConditionEPNS0_5LabelENS5_8DistanceE.exit: ; preds = %bb.c, %bb.a, %bb.b, %_ZN2v88internal6maglev15MaglevAssembler12IsDeoptLabelEPNS0_5LabelE.exit.i.i
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(456) %1, i32 noundef 5, ptr noundef nonnull %3, i32 noundef 0) #28, !inline_history !45
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, 9007199254740992
  %.not = icmp eq i64 %i.z, 0
  %i.aa = select i1 %.not, i16 4, i16 3
  call void @_ZN2v88internal14MacroAssembler8LoadRootENS0_8RegisterENS0_9RootIndexE(ptr noundef nonnull align 8 dereferenceable(436) %1, i8 %i.d, i16 noundef zeroext %i.aa) #28
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %1, ptr noundef nonnull %4, i32 noundef 1) #28
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %1, ptr noundef nonnull %3) #28
  %i.ab = load i64, ptr %i.x, align 8
  %i.ac = and i64 %i.ab, 9007199254740992
  %.not15 = icmp eq i64 %i.ac, 0
  %i.ad = select i1 %.not15, i16 3, i16 4
  call void @_ZN2v88internal14MacroAssembler8LoadRootENS0_8RegisterENS0_9RootIndexE(ptr noundef nonnull align 8 dereferenceable(436) %1, i8 %i.d, i16 noundef zeroext %i.ad) #28
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %1, ptr noundef nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
end_hunk_0
