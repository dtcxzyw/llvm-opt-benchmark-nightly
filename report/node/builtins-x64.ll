Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/builtins-x64?download=true
inline.NumInlined: 3912
inline.NumDeleted: 462
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN2v88internal8Builtins34Generate_BaselineOutOfLinePrologueEPNS0_14MacroAssemblerE:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.d, align 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i64 0, ptr %2, align 8
  switch i8 %.sroa.0.0.copyload.i.i, label %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge [
    i8 4, label %bb.b
    i8 12, label %bb.b
  ]

._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge: ; preds = %bb.a
  %.pre = and i8 %.sroa.0.0.copyload.i.i, 7
  br label %_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit

bb.b:                                             ; preds = %bb.a, %bb.a
  %scevgep.i = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.g = and i8 %.sroa.0.0.copyload.i.i, 7        ; 2 uses
  %i.h = or disjoint i8 %i.g, 32
  store i8 %i.h, ptr %scevgep.i, align 1
  %i.i = icmp samesign ult i8 %.sroa.0.0.copyload.i.i, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit

_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit: ; preds = %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge, %bb.b
  %.pre-phi = phi i8 [ %.pre, %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge ], [ %i.g, %bb.b ]
  %i.j = phi i64 [ 1, %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge ], [ 2, %bb.b ] ; 2 uses
  %i.k = lshr i8 %.sroa.0.0.copyload.i.i, 3
  %i.l = or disjoint i8 %.pre-phi, 64
  store i8 %i.l, ptr %i.f, align 2
  %i.m = icmp samesign ult i8 %.sroa.0.0.copyload.i.i, 16
  tail call void @llvm.assume(i1 %i.m)
  store i8 %i.k, ptr %i.e, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  store i8 47, ptr %i.n, align 1
  %i.o = add nuw nsw i64 %i.j, 1
  %i.p = inttoptr i64 %i.o to ptr
  %.fca.0.load.i = load i64, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  tail call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 8, i64 %.fca.0.load.i, ptr nonnull %i.p) #8
  tail call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 9, i64 121635072, ptr nonnull inttoptr (i64 2 to ptr)) #8
  tail call void @_ZN2v88internal9Assembler4movbENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 339804416, ptr nonnull inttoptr (i64 2 to ptr)) #8
  tail call void @_ZN2v88internal9Assembler25immediate_arithmetic_op_8EhNS0_8RegisterENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 4, i8 10, i64 4294967288) #8
  tail call void @_ZN2v88internal9Assembler4movbENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 339804416, ptr nonnull inttoptr (i64 2 to ptr), i8 10) #8
  tail call void @_ZN2v88internal9Assembler8emit_incENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 188809472, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 4) #8
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 11) #8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 426 ; 6 uses
  %i.r = load i8, ptr %i.q, align 2, !range !5, !noundef !6
  store i8 1, ptr %i.q, align 2
  tail call void @_ZN2v88internal14MacroAssembler10EnterFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 15) #8
  %i.s = load ptr, ptr %i.b, align 8
  %.sroa.0.0.copyload.i.i97 = load i8, ptr %i.s, align 1
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %.sroa.0.0.copyload.i.i97) #8
  %i.t = load ptr, ptr %i.b, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.sroa.0.0.copyload.i.i98 = load i8, ptr %i.u, align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 0, ptr %1, align 8
  switch i8 %.sroa.0.0.copyload.i.i98, label %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge.i [
    i8 4, label %bb.c
    i8 12, label %bb.c
  ]

._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge.i: ; preds = %_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit
  %.pre.i = and i8 %.sroa.0.0.copyload.i.i98, 7
  br label %_ZN2v88internal10FrameScopeD2Ev.exit105

bb.c:                                             ; preds = %_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit, %_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.v = and i8 %.sroa.0.0.copyload.i.i98, 7      ; 2 uses
  %i.w = or disjoint i8 %i.v, 32
  store i8 %i.w, ptr %scevgep.i.i, align 1
  %i.x = icmp samesign ult i8 %.sroa.0.0.copyload.i.i98, 16
  tail call void @llvm.assume(i1 %i.x)
  br label %_ZN2v88internal10FrameScopeD2Ev.exit105

_ZN2v88internal10FrameScopeD2Ev.exit105:          ; preds = %bb.c, %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge.i
  %.pre-phi.i = phi i8 [ %.pre.i, %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge.i ], [ %i.v, %bb.c ]
  %i.y = phi i64 [ 1, %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge.i ], [ 2, %bb.c ] ; 2 uses
  %i.z = lshr i8 %.sroa.0.0.copyload.i.i98, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ac = or disjoint i8 %.pre-phi.i, 64
  store i8 %i.ac, ptr %i.aa, align 2
  %i.ad = icmp samesign ult i8 %.sroa.0.0.copyload.i.i98, 16
  tail call void @llvm.assume(i1 %i.ad)
  store i8 %i.z, ptr %i.ab, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 31, ptr %i.ae, align 1
  %i.af = add nuw nsw i64 %i.y, 1
  %i.ag = inttoptr i64 %i.af to ptr
  %.fca.0.load.i.i99 = load i64, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  tail call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10, i64 %.fca.0.load.i.i99, ptr nonnull %i.ag) #8
  tail call void @_ZN2v88internal9Assembler4movwENS0_7OperandENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 1128399104, ptr nonnull inttoptr (i64 2 to ptr), i64 0) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %.sroa.0.0.copyload.i.i98) #8
  %i.ah = load ptr, ptr %i.b, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %.sroa.0.0.copyload.i.i100 = load i8, ptr %i.ai, align 1
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %.sroa.0.0.copyload.i.i100) #8
  %i.aj = load ptr, ptr %i.b, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 5
  %.sroa.0.0.copyload.i.i101 = load i8, ptr %i.ak, align 1
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %.sroa.0.0.copyload.i.i101) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 8) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 9) #8
  %i.al = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %.sroa.0.0.copyload.i.i102 = load i8, ptr %i.am, align 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store i32 0, ptr %3, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 3
  %.sroa.0.0.copyload.i.i103 = load i8, ptr %i.ao, align 1 ; 3 uses
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10, i8 4) #8
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 43, i8 10, i8 %.sroa.0.0.copyload.i.i103, i32 noundef 8) #8
  %i.ap = tail call { i64, ptr } @_ZN2v88internal14MacroAssembler19StackLimitAsOperandENS0_14StackLimitKindE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 0) #8 ; 2 uses
  %i.aq = extractvalue { i64, ptr } %i.ap, 0
  %i.ar = extractvalue { i64, ptr } %i.ap, 1
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 59, i8 10, i64 %i.aq, ptr %i.ar, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 2, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 11) #8
  call void @_ZN2v88internal14MacroAssembler8LoadRootENS0_8RegisterENS0_9RootIndexE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0, i16 noundef zeroext 0) #8
  call void @_ZN2v88internal14MacroAssembler3RetEv(ptr noundef nonnull align 8 dereferenceable(436) %0) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %3) #8
  call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 11) #8
  %i.as = load i8, ptr %i.q, align 2, !range !5, !noundef !6
  store i8 1, ptr %i.q, align 2
  call void @_ZN2v88internal14MacroAssembler10EnterFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 23) #8
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %.sroa.0.0.copyload.i.i102) #8
  call void @_ZN2v88internal14MacroAssembler6SmiTagENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %.sroa.0.0.copyload.i.i103) #8
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %.sroa.0.0.copyload.i.i103) #8
  %i.at = call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef 214) #8
  call void @_ZN2v88internal14MacroAssembler11CallRuntimeEPKNS0_7Runtime8FunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef %i.at, i32 noundef 1) #8
  call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %.sroa.0.0.copyload.i.i102) #8
  call void @_ZN2v88internal14MacroAssembler10LeaveFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 23) #8
  store i8 %i.as, ptr %i.q, align 2
  call void @_ZN2v88internal14MacroAssembler8LoadRootENS0_8RegisterENS0_9RootIndexE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0, i16 noundef zeroext 0) #8
  call void @_ZN2v88internal14MacroAssembler3RetEv(ptr noundef nonnull align 8 dereferenceable(436) %0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  store i8 %i.r, ptr %i.q, align 2
  ret void
}

declare ptr @_ZN2v88internal8Builtins26CallInterfaceDescriptorForENS0_7BuiltinE(i32 noundef) local_unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler3RetEv(ptr noundef nonnull align 8 dereferenceable(436)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins39Generate_BaselineOutOfLinePrologueDeoptEPNS0_14MacroAssemblerE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6) #8
  tail call void @_ZN2v88internal14MacroAssembler10LeaveFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 15) #8
  tail call void @_ZN2v88internal14MacroAssembler15TailCallBuiltinENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 83) #8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins34Generate_ContinueToCodeStubBuiltinEPNS0_14MacroAssemblerE(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_132Generate_ContinueToBuiltinHelperEPNS0_14MacroAssemblerEbb(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_132Generate_ContinueToBuiltinHelperEPNS0_14MacroAssemblerEbb(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 55464
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = trunc i64 %i.j to i32
  tail call void @_ZN2v88internal4Heap37SetDeoptPCOffsetAfterAdaptShadowStackEi(ptr noundef nonnull align 8 dereferenceable(2992) %i.c, i32 noundef %i.k) #8
  %i.l = tail call noundef ptr @_ZN2v88internal21RegisterConfiguration7DefaultEv() #8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.n = load i32, ptr %i.m, align 4              ; 7 uses
  br i1 %2, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %.thread165, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = shl nsw i32 %i.n, 3                      ; 2 uses
  %i.p = add nsw i32 %i.o, 56                     ; 4 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %3 = sext i32 %i.o to i64
  %4 = add nsw i64 %3, 184
  %i.r = icmp ult i64 %4, 256
  br i1 %i.r, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.6.sroa.4.0.extract.shift = and i32 %i.p, -256
  br label %.thread

bb.f:                                             ; preds = %bb.a
  %i.s = icmp sgt i32 %i.n, 0
  br i1 %i.s, label %.lr.ph, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit52

.thread165:                                       ; preds = %bb.b
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i8 0, i32 noundef 8) #8
  %i.t = icmp sgt i32 %i.n, 0
  br i1 %i.t, label %.lr.ph.thread166, label %._crit_edge

.lr.ph.thread166:                                 ; preds = %.thread165
  %.0124167 = add nsw i32 %i.n, -1
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  br label %.lr.ph.split.preheader

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.6.sroa.4.sroa.0.0 = phi i32 [ %.sroa.6.sroa.4.0.extract.shift, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ]
  %.sroa.6.sroa.0.0 = phi i32 [ %i.p, %bb.e ], [ 0, %bb.c ], [ %i.p, %bb.d ]
  %.sroa.2.0 = phi i64 [ 8650752, %bb.e ], [ 262144, %bb.c ], [ 4456448, %bb.d ]
  %i.v = phi ptr [ inttoptr (i64 6 to ptr), %bb.e ], [ inttoptr (i64 2 to ptr), %bb.c ], [ inttoptr (i64 3 to ptr), %bb.d ]
  %.sroa.6.sroa.0.0.insert.ext = and i32 %.sroa.6.sroa.0.0, 255
  %.sroa.6.sroa.0.0.insert.insert = or disjoint i32 %.sroa.6.sroa.4.sroa.0.0, %.sroa.6.sroa.0.0.insert.ext
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.sroa.0.0.insert.insert to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.2.0
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, 603979776
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %.sroa.2.0.insert.insert, ptr nonnull %i.v, i8 0, i32 noundef 8) #8
  %i.w = icmp sgt i32 %i.n, 0
  br i1 %i.w, label %.lr.ph.thread, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit52

.lr.ph.thread:                                    ; preds = %.thread
  %.0124163 = add nsw i32 %i.n, -1
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  br label %.lr.ph.split.us.preheader

.lr.ph:                                           ; preds = %bb.f
  %.0124 = add nsw i32 %i.n, -1                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 2 uses
  br i1 %1, label %.lr.ph.split.preheader, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph.thread, %.lr.ph
  %i.z = phi ptr [ %i.x, %.lr.ph.thread ], [ %i.y, %.lr.ph ]
  %.0124164 = phi i32 [ %.0124163, %.lr.ph.thread ], [ %.0124, %.lr.ph ]
  %i.aa = zext nneg i32 %.0124164 to i64
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph.thread166, %.lr.ph
  %i.ab = phi ptr [ %i.u, %.lr.ph.thread166 ], [ %i.y, %.lr.ph ]
  %.0124168 = phi i32 [ %.0124167, %.lr.ph.thread166 ], [ %.0124, %.lr.ph ]
  %i.ac = zext nneg i32 %.0124168 to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %.lr.ph.split.us ] ; 3 uses
  %i.ad = load ptr, ptr %i.z, align 8
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = trunc i32 %i.af to i8                   ; 2 uses
  %i.ah = icmp samesign ult i8 %i.ag, 16
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %i.ag) #8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit52, label %.lr.ph.split.us, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.h, %.thread165
  %or.cond = and i1 %1, %2
  br i1 %or.cond, label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit52

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.h
  %indvars.iv128 = phi i64 [ %i.ac, %.lr.ph.split.preheader ], [ %indvars.iv.next129, %bb.h ] ; 3 uses
  %i.ai = load ptr, ptr %i.ab, align 8
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv128
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = trunc i32 %i.ak to i8                   ; 3 uses
  %i.am = icmp samesign ult i8 %i.al, 16
  tail call void @llvm.assume(i1 %i.am)
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %i.al) #8
  %i.an = icmp eq i32 %i.ak, 0
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.split
  tail call void @_ZN2v88internal14MacroAssembler16SmiUntagUnsignedENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.al) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.split
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, -1
  %i.ao = icmp sgt i64 %indvars.iv128, 0
  br i1 %i.ao, label %.lr.ph.split, label %._crit_edge, !llvm.loop !10

_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit: ; preds = %._crit_edge
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 209451220992, ptr nonnull inttoptr (i64 3 to ptr), i8 10, i32 noundef 8) #8
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit52

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit52: ; preds = %.lr.ph.split.us, %bb.f, %.thread, %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit, %._crit_edge
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 5, i64 172407128064, ptr nonnull inttoptr (i64 3 to ptr), i32 noundef 8) #8
  tail call void @_ZN2v88internal9Assembler4popqENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 138047389696, ptr nonnull inttoptr (i64 3 to ptr)) #8
  tail call void @_ZN2v88internal14MacroAssembler4DropEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 4) #8
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10) #8
  %i.ap = tail call { i64, ptr } @_ZN2v88internal14MacroAssembler30EntryFromBuiltinIndexAsOperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10) #8 ; 2 uses
  %i.aq = extractvalue { i64, ptr } %i.ap, 0
  %i.ar = extractvalue { i64, ptr } %i.ap, 1
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 %i.aq, ptr %i.ar, i32 noundef 8) #8
  tail call void @_ZN2v88internal9Assembler3jmpENS0_8RegisterEb(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins44Generate_ContinueToCodeStubBuiltinWithResultEPNS0_14MacroAssemblerE(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_132Generate_ContinueToBuiltinHelperEPNS0_14MacroAssemblerEbb(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins36Generate_ContinueToJavaScriptBuiltinEPNS0_14MacroAssemblerE(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_132Generate_ContinueToBuiltinHelperEPNS0_14MacroAssemblerEbb(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins46Generate_ContinueToJavaScriptBuiltinWithResultEPNS0_14MacroAssemblerE(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_132Generate_ContinueToBuiltinHelperEPNS0_14MacroAssemblerEbb(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins26Generate_NotifyDeoptimizedEPNS0_14MacroAssemblerE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
_ZN2v88internal10FrameScopeD2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 426 ; 3 uses
  %i.b = load i8, ptr %i.a, align 2, !range !5, !noundef !6
  store i8 1, ptr %i.a, align 2
  tail call void @_ZN2v88internal14MacroAssembler10EnterFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 23) #8
  %i.c = tail call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef 71) #8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i8, ptr %i.d, align 8
  %i.f = sext i8 %i.e to i32
  tail call void @_ZN2v88internal14MacroAssembler11CallRuntimeEPKNS0_7Runtime8FunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef %i.c, i32 noundef %i.f) #8
  tail call void @_ZN2v88internal14MacroAssembler10LeaveFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 23) #8
  store i8 %i.b, ptr %i.a, align 2
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 0, i64 34968174592, ptr nonnull inttoptr (i64 3 to ptr), i32 noundef 8) #8
  tail call void @_ZN2v88internal9Assembler3retEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 8) #8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins31Generate_FunctionPrototypeApplyEPNS0_14MacroAssemblerE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %2 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %3 = alloca %"class.v8::internal::StackArgumentsAccessor", align 1 ; 6 uses
  %4 = alloca %"class.v8::internal::Label", align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  store i32 0, ptr %1, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i32 0, ptr %2, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store i8 0, ptr %3, align 1
  tail call void @_ZN2v88internal14MacroAssembler8LoadRootENS0_8RegisterENS0_9RootIndexE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 2, i16 noundef zeroext 0) #8
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 3, i8 2, i32 noundef 8) #8
  %i.c = call { i64, ptr } @_ZNK2v88internal22StackArgumentsAccessor18GetArgumentOperandEi(ptr noundef nonnull align 1 dereferenceable(1) %3, i32 noundef 0) #8 ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %i.e = extractvalue { i64, ptr } %i.c, 1
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 7, i64 %i.d, ptr %i.e, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 7, i8 0, i64 1, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 4, ptr noundef nonnull %2, i32 noundef 0) #8
  %i.f = call { i64, ptr } @_ZNK2v88internal22StackArgumentsAccessor18GetArgumentOperandEi(ptr noundef nonnull align 1 dereferenceable(1) %3, i32 noundef 1) #8 ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0
  %i.h = extractvalue { i64, ptr } %i.f, 1
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 2, i64 %i.g, ptr %i.h, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 7, i8 0, i64 2, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 4, ptr noundef nonnull %1, i32 noundef 0) #8
  %i.i = call { i64, ptr } @_ZNK2v88internal22StackArgumentsAccessor18GetArgumentOperandEi(ptr noundef nonnull align 1 dereferenceable(1) %3, i32 noundef 2) #8 ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0
  %i.k = extractvalue { i64, ptr } %i.i, 1
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 3, i64 %i.j, ptr %i.k, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %1) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %2) #8
  call void @_ZN2v88internal14MacroAssembler31DropArgumentsAndPushNewReceiverENS0_8RegisterES2_S2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0, i8 2, i8 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store i32 0, ptr %4, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.l, align 4
  call void @_ZN2v88internal14MacroAssembler11CompareRootENS0_8RegisterENS0_9RootIndexE14ComparisonMode(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3, i16 noundef zeroext 2, i32 noundef 0) #8
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 4, ptr noundef nonnull %4, i32 noundef 0) #8
  call void @_ZN2v88internal14MacroAssembler11CompareRootENS0_8RegisterENS0_9RootIndexE14ComparisonMode(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3, i16 noundef zeroext 0, i32 noundef 0) #8
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_118OnStackReplacementEPNS0_14MacroAssemblerENS1_13OsrSourceTierENS0_8RegisterES5_:_ZN2v88internal10FrameScopeD2Ev.exit
  unreachable

_ZN2v88internal10FrameScopeD2Ev.exit105:          ; preds = %_ZN2v88internal10AreAliasedIJNS0_8RegisterES2_S2_EEEbDpT_Qoooosr3stdE13conjunction_vIDpSt7is_sameIS2_S3_EEsr3stdE13conjunction_vIDpS5_INS0_11XMMRegisterES3_EEsr3stdE13conjunction_vIDpS5_INS0_11YMMRegisterES3_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  store i32 0, ptr %8, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 0, ptr %i.u, align 4
  %i.v = call i64 @_ZN2v88internal17ExternalReference27address_of_log_or_trace_osrEv() #8
  %i.w = call { i64, ptr } @_ZN2v88internal14MacroAssembler26ExternalReferenceAsOperandENS0_17ExternalReferenceENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %i.v, i8 10) #8 ; 2 uses
  %i.x = extractvalue { i64, ptr } %i.w, 0
  %i.y = extractvalue { i64, ptr } %i.w, 1
  call void @_ZN2v88internal9Assembler25immediate_arithmetic_op_8EhNS0_7OperandENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 7, i64 %i.x, ptr %i.y, i64 0) #8
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 4, ptr noundef nonnull %8, i32 noundef 0) #8
  %i.z = load i8, ptr %i.b, align 2, !range !5, !noundef !6
  store i8 1, ptr %i.b, align 2
  call void @_ZN2v88internal14MacroAssembler10EnterFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 23) #8
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %2) #8
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %3) #8
  %i.aa = call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef 65) #8
  call void @_ZN2v88internal14MacroAssembler11CallRuntimeEPKNS0_7Runtime8FunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef %i.aa, i32 noundef 0) #8
  call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %3) #8
  call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %2) #8
  call void @_ZN2v88internal14MacroAssembler10LeaveFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 23) #8
  store i8 %i.z, ptr %i.b, align 2
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  %i.ab = icmp eq i32 %1, 0
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal10FrameScopeD2Ev.exit105
  call void @_ZN2v88internal9Assembler5leaveEv(ptr noundef nonnull align 8 dereferenceable(408) %0) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal10FrameScopeD2Ev.exit105
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 2 uses
  store i64 0, ptr %6, align 8
  switch i8 %2, label %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge [
    i8 4, label %bb.f
    i8 12, label %bb.f
  ]

._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge: ; preds = %bb.e
  %.pre = and i8 %2, 7
  br label %_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit

bb.f:                                             ; preds = %bb.e, %bb.e
  %scevgep.i = getelementptr inbounds nuw i8, ptr %6, i64 3
  %i.ae = and i8 %2, 7                            ; 2 uses
  %i.af = or disjoint i8 %i.ae, 32
  store i8 %i.af, ptr %scevgep.i, align 1
  %i.ag = icmp samesign ult i8 %2, 16
  call void @llvm.assume(i1 %i.ag)
  br label %_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit

_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit: ; preds = %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge, %bb.f
  %.pre-phi = phi i8 [ %.pre, %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge ], [ %i.ae, %bb.f ] ; 3 uses
  %i.ah = phi i64 [ 1, %._ZN2v88internal12FieldOperandENS0_8RegisterEi.exit_crit_edge ], [ 2, %bb.f ] ; 2 uses
  %.pre-phi143 = lshr i8 %2, 3                    ; 3 uses
  %i.ai = or disjoint i8 %.pre-phi, 64            ; 3 uses
  store i8 %i.ai, ptr %i.ad, align 2
  %i.aj = icmp samesign ult i8 %2, 16
  call void @llvm.assume(i1 %i.aj)
  store i8 %.pre-phi143, ptr %i.ac, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah
  store i8 67, ptr %i.ak, align 1
  %i.al = add nuw nsw i64 %i.ah, 1
  %i.am = inttoptr i64 %i.al to ptr
  %.fca.0.load.i = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 1, i64 %.fca.0.load.i, ptr nonnull %i.am, i32 noundef 4) #8
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 7, i8 1, i64 4294967295, i32 noundef 4) #8
  call void @_ZN2v88internal14MacroAssembler8SbxCheckENS0_9ConditionENS0_11AbortReasonE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 5, i8 noundef zeroext 8) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  store i64 0, ptr %5, align 8
  switch i8 %2, label %_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit111 [
    i8 4, label %bb.g
    i8 12, label %bb.g
  ]

bb.g:                                             ; preds = %_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit, %_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit
  %scevgep.i106 = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.ap = or disjoint i8 %.pre-phi, 32
  store i8 %i.ap, ptr %scevgep.i106, align 1
  br label %_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit111

_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit111: ; preds = %_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit, %bb.g
  %i.aq = phi i64 [ 1, %_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit ], [ 2, %bb.g ] ; 2 uses
  store i8 %i.ai, ptr %i.ao, align 2
  store i8 %.pre-phi143, ptr %i.an, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq
  store i8 87, ptr %i.ar, align 1
  %i.as = add nuw nsw i64 %i.aq, 1
  %i.at = inttoptr i64 %i.as to ptr
  %.fca.0.load.i108 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZN2v88internal9Assembler11emit_movzxwENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 1, i64 %.fca.0.load.i108, ptr nonnull %i.at, i32 noundef 8) #8
  call void @_ZN2v88internal14MacroAssembler8SmiUntagENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %3) #8
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 59, i8 1, i8 %3, i32 noundef 8) #8
  call void @_ZN2v88internal14MacroAssembler8SbxCheckENS0_9ConditionENS0_11AbortReasonE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 4, i8 noundef zeroext 49) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 0, ptr %4, align 8
  switch i8 %2, label %_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit117 [
    i8 4, label %bb.h
    i8 12, label %bb.h
  ]

bb.h:                                             ; preds = %_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit111, %_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit111
  %scevgep.i112 = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.au = or disjoint i8 %.pre-phi, 32
  store i8 %i.au, ptr %scevgep.i112, align 1
  br label %_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit117

_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit117: ; preds = %_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit111, %bb.h
  %i.av = phi i64 [ 1, %_ZN2v88internal12FieldOperandENS0_8RegisterEi.exit111 ], [ 2, %bb.h ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 %i.ai, ptr %i.aw, align 2
  store i8 %.pre-phi143, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 7, ptr %i.ay, align 1
  %i.az = add nuw nsw i64 %i.av, 1
  %i.ba = inttoptr i64 %i.az to ptr
  %.fca.0.load.i114 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZN2v88internal14MacroAssembler25LoadProtectedPointerFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 1, i64 %.fca.0.load.i114, ptr nonnull %i.ba) #8
  call void @_ZN2v88internal14MacroAssembler13SmiUntagFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 1, i64 927006720, ptr nonnull inttoptr (i64 2 to ptr)) #8
  call void @_ZN2v88internal14MacroAssembler24LoadCodeInstructionStartENS0_8RegisterES2_NS0_17CodeEntrypointTagE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %2, i8 %2, i64 noundef 0) #8
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 3, i8 %2, i8 1, i32 noundef 8) #8
  call void @_ZN2v88internal14MacroAssembler4DropEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 1) #8
  call void @_ZN2v88internal9Assembler3jmpENS0_8RegisterEb(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %2, i1 noundef zeroext true) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins35Generate_BaselineOnStackReplacementEPNS0_14MacroAssemblerE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 6, i64 4165271552, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_118OnStackReplacementEPNS0_14MacroAssemblerENS1_13OsrSourceTierENS0_8RegisterES5_(ptr noundef nonnull %0, i32 noundef 1, i8 0, i8 3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins38Generate_MaglevFunctionEntryStackCheckEPNS0_14MacroAssemblerEb(ptr noundef nonnull %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
_ZN2v88internal10FrameScopeC2EPNS0_14MacroAssemblerENS0_10StackFrame4TypeENS_14SourceLocationE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 426 ; 3 uses
  %i.b = load i8, ptr %i.a, align 2, !range !5, !noundef !6
  store i8 1, ptr %i.a, align 2
  tail call void @_ZN2v88internal14MacroAssembler10EnterFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 23) #8
  br i1 %1, label %bb.a, label %.critedge

bb.a:                                             ; preds = %_ZN2v88internal10FrameScopeC2EPNS0_14MacroAssemblerENS0_10StackFrame4TypeENS_14SourceLocationE.exit
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 2) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0) #8
  %i.c = tail call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef 214) #8
  tail call void @_ZN2v88internal14MacroAssembler11CallRuntimeEPKNS0_7Runtime8FunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef %i.c, i32 noundef 1) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 2) #8
  br label %_ZN2v88internal10FrameScopeD2Ev.exit

.critedge:                                        ; preds = %_ZN2v88internal10FrameScopeC2EPNS0_14MacroAssemblerENS0_10StackFrame4TypeENS_14SourceLocationE.exit
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0) #8
  %i.d = tail call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef 214) #8
  tail call void @_ZN2v88internal14MacroAssembler11CallRuntimeEPKNS0_7Runtime8FunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef %i.d, i32 noundef 1) #8
  br label %_ZN2v88internal10FrameScopeD2Ev.exit

_ZN2v88internal10FrameScopeD2Ev.exit:             ; preds = %.critedge, %bb.a
  tail call void @_ZN2v88internal14MacroAssembler10LeaveFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 23) #8
  store i8 %i.b, ptr %i.a, align 2
  tail call void @_ZN2v88internal14MacroAssembler3RetEv(ptr noundef nonnull align 8 dereferenceable(436) %0) #8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 16, 1) i32 @_ZN2v88internal14SaveWasmParamsEPNS0_14MacroAssemblerE(ptr noundef nonnull %0) local_unnamed_addr #0 {
_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.5:
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 2) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 1) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 9) #8
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 5, i8 4, i64 96, i32 noundef 8) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr), i8 1) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 69327912960, ptr nonnull inttoptr (i64 3 to ptr), i8 2) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 138047389696, ptr nonnull inttoptr (i64 3 to ptr), i8 3) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 206766866432, ptr nonnull inttoptr (i64 3 to ptr), i8 4) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 275486343168, ptr nonnull inttoptr (i64 3 to ptr), i8 5) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 344205819904, ptr nonnull inttoptr (i64 3 to ptr), i8 6) #8
  ret i32 96
}

declare void @_ZN2v88internal9Assembler6movdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408), i64, ptr, i8) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17RestoreWasmParamsEPNS0_14MacroAssemblerEi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = sext i32 %1 to i64                         ; 6 uses
  %indvars.iv.next = add i32 %1, -16              ; 4 uses
  %i.a = icmp eq i32 %indvars.iv.next, 0
  br i1 %i.a, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %3 = add nsw i64 %2, 112
  %i.b = icmp ult i64 %3, 256
  br i1 %i.b, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.36.sroa.24.0.extract.shift = and i32 %indvars.iv.next, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.12.0 = phi i64 [ 8650752, %bb.c ], [ 262144, %bb.a ], [ 4456448, %bb.b ]
  %.sroa.36.sroa.0.0 = phi i32 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ]
  %.sroa.36.sroa.24.sroa.0.0 = phi i32 [ %.sroa.36.sroa.24.0.extract.shift, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.c = phi ptr [ inttoptr (i64 6 to ptr), %bb.c ], [ inttoptr (i64 2 to ptr), %bb.a ], [ inttoptr (i64 3 to ptr), %bb.b ]
  %.sroa.36.sroa.0.0.insert.ext = and i32 %.sroa.36.sroa.0.0, 255
  %.sroa.36.sroa.0.0.insert.insert = or disjoint i32 %.sroa.36.sroa.24.sroa.0.0, %.sroa.36.sroa.0.0.insert.ext
  %.sroa.36.0.insert.ext = zext i32 %.sroa.36.sroa.0.0.insert.insert to i64
  %.sroa.36.0.insert.shift = shl nuw i64 %.sroa.36.0.insert.ext, 32
  %.sroa.30.0.insert.insert = or disjoint i64 %.sroa.36.0.insert.shift, %.sroa.12.0
  %.sroa.12.0.insert.insert = or disjoint i64 %.sroa.30.0.insert.insert, 603979776
  tail call void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 6, i64 %.sroa.12.0.insert.insert, ptr nonnull %i.c) #8
  %indvars.iv.next.1 = add i32 %1, -32            ; 4 uses
  %i.d = icmp eq i32 %indvars.iv.next.1, 0
  br i1 %i.d, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.1, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  %4 = add nsw i64 %2, 96
  %i.e = icmp ult i64 %4, 256
  br i1 %i.e, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.1, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.36.sroa.24.0.extract.shift191 = and i32 %indvars.iv.next.1, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.1

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.1: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, %bb.d, %bb.e
  %.sroa.12.1 = phi i64 [ 4456448, %bb.d ], [ 8650752, %bb.e ], [ 262144, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit ]
  %.sroa.36.sroa.0.1 = phi i32 [ %indvars.iv.next.1, %bb.d ], [ %indvars.iv.next.1, %bb.e ], [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit ]
  %.sroa.36.sroa.24.sroa.0.1 = phi i32 [ 0, %bb.d ], [ %.sroa.36.sroa.24.0.extract.shift191, %bb.e ], [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit ]
  %i.f = phi ptr [ inttoptr (i64 3 to ptr), %bb.d ], [ inttoptr (i64 6 to ptr), %bb.e ], [ inttoptr (i64 2 to ptr), %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit ]
  %.sroa.36.sroa.0.0.insert.ext151 = and i32 %.sroa.36.sroa.0.1, 255
  %.sroa.36.sroa.0.0.insert.insert153 = or disjoint i32 %.sroa.36.sroa.24.sroa.0.1, %.sroa.36.sroa.0.0.insert.ext151
  %.sroa.36.0.insert.ext127 = zext i32 %.sroa.36.sroa.0.0.insert.insert153 to i64
  %.sroa.36.0.insert.shift128 = shl nuw i64 %.sroa.36.0.insert.ext127, 32
  %.sroa.30.0.insert.insert105 = or disjoint i64 %.sroa.36.0.insert.shift128, %.sroa.12.1
  %.sroa.12.0.insert.insert80 = or disjoint i64 %.sroa.30.0.insert.insert105, 603979776
  tail call void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 5, i64 %.sroa.12.0.insert.insert80, ptr nonnull %i.f) #8
  %indvars.iv.next.2 = add i32 %1, -48            ; 4 uses
  %i.g = icmp eq i32 %indvars.iv.next.2, 0
  br i1 %i.g, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.2, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.1
  %5 = add nsw i64 %2, 80
  %i.h = icmp ult i64 %5, 256
  br i1 %i.h, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.2, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.36.sroa.24.0.extract.shift193 = and i32 %indvars.iv.next.2, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.2

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.2: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.1, %bb.f, %bb.g
  %.sroa.12.2 = phi i64 [ 4456448, %bb.f ], [ 8650752, %bb.g ], [ 262144, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.1 ]
  %.sroa.36.sroa.0.2 = phi i32 [ %indvars.iv.next.2, %bb.f ], [ %indvars.iv.next.2, %bb.g ], [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.1 ]
  %.sroa.36.sroa.24.sroa.0.2 = phi i32 [ 0, %bb.f ], [ %.sroa.36.sroa.24.0.extract.shift193, %bb.g ], [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.1 ]
  %i.i = phi ptr [ inttoptr (i64 3 to ptr), %bb.f ], [ inttoptr (i64 6 to ptr), %bb.g ], [ inttoptr (i64 2 to ptr), %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.1 ]
  %.sroa.36.sroa.0.0.insert.ext154 = and i32 %.sroa.36.sroa.0.2, 255
  %.sroa.36.sroa.0.0.insert.insert156 = or disjoint i32 %.sroa.36.sroa.24.sroa.0.2, %.sroa.36.sroa.0.0.insert.ext154
  %.sroa.36.0.insert.ext132 = zext i32 %.sroa.36.sroa.0.0.insert.insert156 to i64
  %.sroa.36.0.insert.shift133 = shl nuw i64 %.sroa.36.0.insert.ext132, 32
  %.sroa.30.0.insert.insert110 = or disjoint i64 %.sroa.36.0.insert.shift133, %.sroa.12.2
  %.sroa.12.0.insert.insert85 = or disjoint i64 %.sroa.30.0.insert.insert110, 603979776
  tail call void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 4, i64 %.sroa.12.0.insert.insert85, ptr nonnull %i.i) #8
  %indvars.iv.next.3 = add i32 %1, -64            ; 4 uses
  %i.j = icmp eq i32 %indvars.iv.next.3, 0
  br i1 %i.j, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.3, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.2
  %6 = add nsw i64 %2, 64
  %i.k = icmp ult i64 %6, 256
  br i1 %i.k, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.3, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.36.sroa.24.0.extract.shift195 = and i32 %indvars.iv.next.3, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.3

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.3: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.2, %bb.h, %bb.i
  %.sroa.12.3 = phi i64 [ 4456448, %bb.h ], [ 8650752, %bb.i ], [ 262144, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.2 ]
  %.sroa.36.sroa.0.3 = phi i32 [ %indvars.iv.next.3, %bb.h ], [ %indvars.iv.next.3, %bb.i ], [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.2 ]
  %.sroa.36.sroa.24.sroa.0.3 = phi i32 [ 0, %bb.h ], [ %.sroa.36.sroa.24.0.extract.shift195, %bb.i ], [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.2 ]
  %i.l = phi ptr [ inttoptr (i64 3 to ptr), %bb.h ], [ inttoptr (i64 6 to ptr), %bb.i ], [ inttoptr (i64 2 to ptr), %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.2 ]
  %.sroa.36.sroa.0.0.insert.ext157 = and i32 %.sroa.36.sroa.0.3, 255
  %.sroa.36.sroa.0.0.insert.insert159 = or disjoint i32 %.sroa.36.sroa.24.sroa.0.3, %.sroa.36.sroa.0.0.insert.ext157
  %.sroa.36.0.insert.ext137 = zext i32 %.sroa.36.sroa.0.0.insert.insert159 to i64
  %.sroa.36.0.insert.shift138 = shl nuw i64 %.sroa.36.0.insert.ext137, 32
  %.sroa.30.0.insert.insert115 = or disjoint i64 %.sroa.36.0.insert.shift138, %.sroa.12.3
  %.sroa.12.0.insert.insert90 = or disjoint i64 %.sroa.30.0.insert.insert115, 603979776
  tail call void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 3, i64 %.sroa.12.0.insert.insert90, ptr nonnull %i.l) #8
  %indvars.iv.next.4 = add i32 %1, -80            ; 4 uses
  %i.m = icmp eq i32 %indvars.iv.next.4, 0
  br i1 %i.m, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.3
  %7 = add nsw i64 %2, 48
  %i.n = icmp ult i64 %7, 256
  br i1 %i.n, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.36.sroa.24.0.extract.shift197 = and i32 %indvars.iv.next.4, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.3, %bb.j, %bb.k
  %.sroa.12.4 = phi i64 [ 4456448, %bb.j ], [ 8650752, %bb.k ], [ 262144, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.3 ]
  %.sroa.36.sroa.0.4 = phi i32 [ %indvars.iv.next.4, %bb.j ], [ %indvars.iv.next.4, %bb.k ], [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.3 ]
  %.sroa.36.sroa.24.sroa.0.4 = phi i32 [ 0, %bb.j ], [ %.sroa.36.sroa.24.0.extract.shift197, %bb.k ], [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.3 ]
  %i.o = phi ptr [ inttoptr (i64 3 to ptr), %bb.j ], [ inttoptr (i64 6 to ptr), %bb.k ], [ inttoptr (i64 2 to ptr), %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.3 ]
  %.sroa.36.sroa.0.0.insert.ext160 = and i32 %.sroa.36.sroa.0.4, 255
  %.sroa.36.sroa.0.0.insert.insert162 = or disjoint i32 %.sroa.36.sroa.24.sroa.0.4, %.sroa.36.sroa.0.0.insert.ext160
  %.sroa.36.0.insert.ext142 = zext i32 %.sroa.36.sroa.0.0.insert.insert162 to i64
  %.sroa.36.0.insert.shift143 = shl nuw i64 %.sroa.36.0.insert.ext142, 32
  %.sroa.30.0.insert.insert120 = or disjoint i64 %.sroa.36.0.insert.shift143, %.sroa.12.4
  %.sroa.12.0.insert.insert95 = or disjoint i64 %.sroa.30.0.insert.insert120, 603979776
  tail call void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 2, i64 %.sroa.12.0.insert.insert95, ptr nonnull %i.o) #8
  %indvars.iv.next.5 = add i32 %1, -96            ; 4 uses
  %i.p = icmp eq i32 %indvars.iv.next.5, 0
  br i1 %i.p, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.5, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4
  %8 = add nsw i64 %2, 32
  %i.q = icmp ult i64 %8, 256
  br i1 %i.q, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.5, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.36.sroa.24.0.extract.shift199 = and i32 %indvars.iv.next.5, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.5

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.5: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4, %bb.l, %bb.m
  %.sroa.12.5 = phi i64 [ 4456448, %bb.l ], [ 8650752, %bb.m ], [ 262144, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4 ]
  %.sroa.36.sroa.0.5 = phi i32 [ %indvars.iv.next.5, %bb.l ], [ %indvars.iv.next.5, %bb.m ], [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4 ]
  %.sroa.36.sroa.24.sroa.0.5 = phi i32 [ 0, %bb.l ], [ %.sroa.36.sroa.24.0.extract.shift199, %bb.m ], [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4 ]
  %i.r = phi ptr [ inttoptr (i64 3 to ptr), %bb.l ], [ inttoptr (i64 6 to ptr), %bb.m ], [ inttoptr (i64 2 to ptr), %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4 ]
  %.sroa.36.sroa.0.0.insert.ext163 = and i32 %.sroa.36.sroa.0.5, 255
  %.sroa.36.sroa.0.0.insert.insert165 = or disjoint i32 %.sroa.36.sroa.24.sroa.0.5, %.sroa.36.sroa.0.0.insert.ext163
  %.sroa.36.0.insert.ext147 = zext i32 %.sroa.36.sroa.0.0.insert.insert165 to i64
  %.sroa.36.0.insert.shift148 = shl nuw i64 %.sroa.36.0.insert.ext147, 32
  %.sroa.30.0.insert.insert125 = or disjoint i64 %.sroa.36.0.insert.shift148, %.sroa.12.5
  %.sroa.12.0.insert.insert100 = or disjoint i64 %.sroa.30.0.insert.insert125, 603979776
  tail call void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 1, i64 %.sroa.12.0.insert.insert100, ptr nonnull %i.r) #8
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 0, i8 4, i64 96, i32 noundef 8) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 9) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 1) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 2) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6) #8
  ret void
}

declare void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins30Generate_WasmLiftoffFrameSetupEPNS0_14MacroAssemblerE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit74:
  %1 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %2 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 5) #8
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 5, i8 4) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 8) #8
  tail call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 15, i64 4152754176, ptr nonnull inttoptr (i64 5 to ptr)) #8
  tail call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 15, i64 68304503552, ptr nonnull inttoptr (i64 3 to ptr)) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  store i32 0, ptr %1, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i32 0, ptr %2, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.b, align 4
  call void @_ZN2v88internal14MacroAssembler9JumpIfSmiENS0_8RegisterEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 15, ptr noundef nonnull %1, i32 noundef 1) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %2) #8
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6) #8
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 15) #8
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7) #8
  call void @_ZN2v88internal9Assembler3retEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 0) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %1) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 4165271552, ptr nonnull inttoptr (i64 2 to ptr), i64 24, i32 noundef 8) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 426
  store i8 1, ptr %i.c, align 2
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7) #8
  %i.d = call noundef i32 @_ZN2v88internal14SaveWasmParamsEPNS0_14MacroAssemblerE(ptr noundef nonnull %0)
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6) #8
  call void @_ZN2v88internal14MacroAssembler6SmiTagENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 12) #8
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 12) #8
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 4) #8
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6, i64 0) #8
  %i.e = call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef 588) #8
  call void @_ZN2v88internal14MacroAssembler11CallRuntimeEPKNS0_7Runtime8FunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef %i.e, i32 noundef 3) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 15, i8 0, i32 noundef 8) #8
  call void @_ZN2v88internal17RestoreWasmParamsEPNS0_14MacroAssemblerEi(ptr noundef nonnull %0, i32 noundef %i.d)
  call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 4165271552, ptr nonnull inttoptr (i64 2 to ptr), i64 8, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret void
}

declare void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(436), i8, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins24Generate_WasmCompileLazyEPNS0_14MacroAssemblerE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
_ZN2v88internal10FrameScopeC2EPNS0_14MacroAssemblerENS0_10StackFrame4TypeENS_14SourceLocationE.exit:
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 15) #8
  tail call void @_ZN2v88internal14MacroAssembler6SmiTagENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 15) #8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 425 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !range !5, !noundef !6
  store i8 1, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 426 ; 3 uses
  %i.d = load i8, ptr %i.c, align 2, !range !5, !noundef !6
  store i8 1, ptr %i.c, align 2
  tail call void @_ZN2v88internal14MacroAssembler10EnterFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 23) #8
  %i.e = tail call noundef i32 @_ZN2v88internal14SaveWasmParamsEPNS0_14MacroAssemblerE(ptr noundef nonnull %0)
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 15) #8
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6, i64 0) #8
  %i.f = tail call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef 587) #8
  tail call void @_ZN2v88internal14MacroAssembler11CallRuntimeEPKNS0_7Runtime8FunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef %i.f, i32 noundef 2) #8
  tail call void @_ZN2v88internal14MacroAssembler16SmiUntagUnsignedENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0) #8
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 15, i8 0, i32 noundef 8) #8
  tail call void @_ZN2v88internal17RestoreWasmParamsEPNS0_14MacroAssemblerEi(ptr noundef nonnull %0, i32 noundef %i.e)
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 3, i8 15, i64 927334400, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  tail call void @_ZN2v88internal14MacroAssembler10LeaveFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 23) #8
  store i8 %i.d, ptr %i.c, align 2
  store i8 %i.b, ptr %i.a, align 1
  tail call void @_ZN2v88internal9Assembler3jmpENS0_8RegisterEb(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 15, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins23Generate_WasmDebugBreakEPNS0_14MacroAssemblerE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
_ZN2v88internal10FrameScopeC2EPNS0_14MacroAssemblerENS0_10StackFrame4TypeENS_14SourceLocationE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 425 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !range !5, !noundef !6
  store i8 1, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 426 ; 3 uses
  %i.d = load i8, ptr %i.c, align 2, !range !5, !noundef !6
  store i8 1, ptr %i.c, align 2
  tail call void @_ZN2v88internal14MacroAssembler10EnterFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 8) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 15) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 12) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 9) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 8) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 2) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 1) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0) #8
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 5, i8 4, i64 128, i32 noundef 8) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 481644773376, ptr nonnull inttoptr (i64 3 to ptr), i8 7) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 412925296640, ptr nonnull inttoptr (i64 3 to ptr), i8 6) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 344205819904, ptr nonnull inttoptr (i64 3 to ptr), i8 5) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 275486343168, ptr nonnull inttoptr (i64 3 to ptr), i8 4) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 206766866432, ptr nonnull inttoptr (i64 3 to ptr), i8 3) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 138047389696, ptr nonnull inttoptr (i64 3 to ptr), i8 2) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 69327912960, ptr nonnull inttoptr (i64 3 to ptr), i8 1) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr), i8 0) #8
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6, i64 0) #8
  %i.e = tail call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef 594) #8
  tail call void @_ZN2v88internal14MacroAssembler11CallRuntimeEPKNS0_7Runtime8FunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef %i.e, i32 noundef 0) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 0, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr)) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 1, i64 69327912960, ptr nonnull inttoptr (i64 3 to ptr)) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 2, i64 138047389696, ptr nonnull inttoptr (i64 3 to ptr)) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 3, i64 206766866432, ptr nonnull inttoptr (i64 3 to ptr)) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 4, i64 275486343168, ptr nonnull inttoptr (i64 3 to ptr)) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 5, i64 344205819904, ptr nonnull inttoptr (i64 3 to ptr)) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 6, i64 412925296640, ptr nonnull inttoptr (i64 3 to ptr)) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 7, i64 481644773376, ptr nonnull inttoptr (i64 3 to ptr)) #8
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 0, i8 4, i64 128, i32 noundef 8) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 1) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 2) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 8) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 9) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 12) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 15) #8
  tail call void @_ZN2v88internal14MacroAssembler10LeaveFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 8) #8
  store i8 %i.d, ptr %i.c, align 2
  tail call void @_ZN2v88internal9Assembler3retEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 0) #8
  store i8 %i.b, ptr %i.a, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins27Generate_JSToWasmWrapperAsmEPNS0_14MacroAssemblerE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_121JSToWasmWrapperHelperEPNS0_14MacroAssemblerENS0_4wasm7PromiseE(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_121JSToWasmWrapperHelperEPNS0_14MacroAssemblerENS0_4wasm7PromiseE(ptr noundef nonnull %0, i32 noundef range(i32 0, 3) %1) unnamed_addr #0 {
_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit327:
  %2 = alloca [4 x %"class.v8::internal::Register"], align 4 ; 4 uses
  %3 = alloca [4 x %"class.v8::internal::Register"], align 4 ; 4 uses
  %4 = alloca [4 x %"class.v8::internal::Register"], align 4 ; 4 uses
  %5 = alloca [2 x %"class.v8::internal::Register"], align 1 ; 5 uses
  %6 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %7 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %8 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %9 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %i.a = icmp eq i32 %1, 0                        ; 3 uses
  %i.b = icmp eq i32 %1, 2
  %i.c = or i1 %i.a, %i.b                         ; 3 uses
  %i.d = select i1 %i.c, i32 7, i32 6             ; 2 uses
  tail call void @_ZN2v88internal14MacroAssembler10EnterFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef %i.d) #8
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 5, i8 4, i64 32, i32 noundef 8) #8
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 6, i64 407175168, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  %.sroa.088.0.copyload.sroa.speculated = select i1 %i.c, i8 3, i8 7 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  store i32 0, ptr %6, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.e, align 4
  %i.f = icmp eq i32 %1, 1                        ; 5 uses
  br i1 %i.f, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit320.thread, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit313

end_hunk_1
