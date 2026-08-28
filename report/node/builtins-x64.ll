Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/builtins-x64?download=true
inline.NumInlined: 3912
inline.NumDeleted: 462
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN2v88internal8Builtins34Generate_BaselineOutOfLinePrologueEPNS0_14MacroAssemblerE:bb.a
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
  %i.r = sext i32 %i.o to i64
  %i.s = add nsw i64 %i.r, 184
  %i.t = icmp ult i64 %i.s, 256
  br i1 %i.t, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.6.sroa.4.0.extract.shift = and i32 %i.p, -256
  br label %.thread

bb.f:                                             ; preds = %bb.a
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.lr.ph, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit52

.thread165:                                       ; preds = %bb.b
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i8 0, i32 noundef 8) #8
  %i.v = icmp sgt i32 %i.n, 0
  br i1 %i.v, label %.lr.ph.thread166, label %._crit_edge

.lr.ph.thread166:                                 ; preds = %.thread165
  %.0124167 = add nsw i32 %i.n, -1
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  br label %.lr.ph.split.preheader

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.6.sroa.0.0 = phi i32 [ %i.p, %bb.e ], [ 0, %bb.c ], [ %i.p, %bb.d ]
  %.sroa.2.0 = phi i64 [ 8650752, %bb.e ], [ 262144, %bb.c ], [ 4456448, %bb.d ]
  %.sroa.6.sroa.4.sroa.0.0 = phi i32 [ %.sroa.6.sroa.4.0.extract.shift, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ]
  %i.x = phi ptr [ inttoptr (i64 6 to ptr), %bb.e ], [ inttoptr (i64 2 to ptr), %bb.c ], [ inttoptr (i64 3 to ptr), %bb.d ]
  %.sroa.6.sroa.0.0.insert.ext = and i32 %.sroa.6.sroa.0.0, 255
  %.sroa.6.sroa.0.0.insert.insert = or disjoint i32 %.sroa.6.sroa.4.sroa.0.0, %.sroa.6.sroa.0.0.insert.ext
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.sroa.0.0.insert.insert to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.2.0
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, 603979776
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %.sroa.2.0.insert.insert, ptr nonnull %i.x, i8 0, i32 noundef 8) #8
  %i.y = icmp sgt i32 %i.n, 0
  br i1 %i.y, label %.lr.ph.thread, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit52

.lr.ph.thread:                                    ; preds = %.thread
  %.0124163 = add nsw i32 %i.n, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  br label %.lr.ph.split.us.preheader

.lr.ph:                                           ; preds = %bb.f
  %.0124 = add nsw i32 %i.n, -1                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 2 uses
  br i1 %1, label %.lr.ph.split.preheader, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph.thread, %.lr.ph
  %i.ab = phi ptr [ %i.z, %.lr.ph.thread ], [ %i.aa, %.lr.ph ]
  %.0124164 = phi i32 [ %.0124163, %.lr.ph.thread ], [ %.0124, %.lr.ph ]
  %i.ac = zext nneg i32 %.0124164 to i64
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph.thread166, %.lr.ph
  %i.ad = phi ptr [ %i.w, %.lr.ph.thread166 ], [ %i.aa, %.lr.ph ]
  %.0124168 = phi i32 [ %.0124167, %.lr.ph.thread166 ], [ %.0124, %.lr.ph ]
  %i.ae = zext nneg i32 %.0124168 to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %i.ac, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %.lr.ph.split.us ] ; 3 uses
  %i.af = load ptr, ptr %i.ab, align 8
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = trunc i32 %i.ah to i8                   ; 2 uses
  %i.aj = icmp samesign ult i8 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %i.ai) #8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit52, label %.lr.ph.split.us, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.h, %.thread165
  %or.cond = and i1 %1, %2
  br i1 %or.cond, label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit52

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.h
  %indvars.iv128 = phi i64 [ %i.ae, %.lr.ph.split.preheader ], [ %indvars.iv.next129, %bb.h ] ; 3 uses
  %i.ak = load ptr, ptr %i.ad, align 8
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv128
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = trunc i32 %i.am to i8                   ; 3 uses
  %i.ao = icmp samesign ult i8 %i.an, 16
  tail call void @llvm.assume(i1 %i.ao)
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %i.an) #8
  %i.ap = icmp eq i32 %i.am, 0
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.split
  tail call void @_ZN2v88internal14MacroAssembler16SmiUntagUnsignedENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.an) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.split
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, -1
  %i.aq = icmp sgt i64 %indvars.iv128, 0
  br i1 %i.aq, label %.lr.ph.split, label %._crit_edge, !llvm.loop !9

_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit: ; preds = %._crit_edge
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 209451220992, ptr nonnull inttoptr (i64 3 to ptr), i8 10, i32 noundef 8) #8
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit52

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit52: ; preds = %.lr.ph.split.us, %bb.f, %.thread, %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit, %._crit_edge
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 5, i64 172407128064, ptr nonnull inttoptr (i64 3 to ptr), i32 noundef 8) #8
  tail call void @_ZN2v88internal9Assembler4popqENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 138047389696, ptr nonnull inttoptr (i64 3 to ptr)) #8
  tail call void @_ZN2v88internal14MacroAssembler4DropEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 4) #8
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10) #8
  %i.ar = tail call { i64, ptr } @_ZN2v88internal14MacroAssembler30EntryFromBuiltinIndexAsOperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10) #8 ; 2 uses
  %i.as = extractvalue { i64, ptr } %i.ar, 0
  %i.at = extractvalue { i64, ptr } %i.ar, 1
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 %i.as, ptr %i.at, i32 noundef 8) #8
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
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 4, ptr noundef nonnull %4, i32 noundef 0) #8
  call void @_ZN2v88internal14MacroAssembler15TailCallBuiltinENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 37) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %4) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0, i64 1, i32 noundef 4) #8
  call void @_ZN2v88internal14MacroAssembler15TailCallBuiltinENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 22) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret void
}

declare void @_ZN2v88internal14MacroAssembler31DropArgumentsAndPushNewReceiverENS0_8RegisterES2_S2_(ptr noundef nonnull align 8 dereferenceable(436), i8, i8, i8) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins30Generate_FunctionPrototypeCallEPNS0_14MacroAssemblerE(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::StackArgumentsAccessor", align 1 ; 4 uses
  %2 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  store i8 0, ptr %1, align 1
  %i.a = call { i64, ptr } @_ZNK2v88internal22StackArgumentsAccessor18GetArgumentOperandEi(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 0) #8 ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 7, i64 %i.b, ptr %i.c, i32 noundef 8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3) #8
end_hunk_0
