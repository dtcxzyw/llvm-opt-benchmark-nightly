inline.NumInlined: 12588
inline.NumDeleted: 1676
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2v88internal8compiler13CodeGenerator18AssembleArchSelectEPNS1_11InstructionENS1_14FlagsConditionE:bb.a
  %i.dq = trunc nuw i64 %i.aa to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = tail call i32 @_ZNK2v88internal8compiler16FrameAccessState14GetFrameOffsetEi(ptr noundef nonnull align 8 dereferenceable(17) %i.ds, i32 noundef %i.dq) #18 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 5 uses
  %i.dv = trunc i32 %i.dt to i1                   ; 2 uses
  %.sroa.0.0.copyload.i.i.i52 = select i1 %i.dv, i8 4, i8 5 ; 2 uses
  %i.dw = and i32 %i.dt, -2                       ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %4, align 8
  store i64 1, ptr %i.dx, align 8
  br i1 %i.dv, label %bb.t, label %.thread.i.i.i53

bb.t:                                             ; preds = %bb.s
  %scevgep.i.i.i59 = getelementptr inbounds nuw i8, ptr %4, i64 3
  store i8 36, ptr %scevgep.i.i.i59, align 1
  store i64 2, ptr %i.dx, align 8
  %i.dy = icmp eq i32 %i.dw, 0
  br i1 %i.dy, label %bb.u, label %bb.v

.thread.i.i.i53:                                  ; preds = %bb.s
  %i.dz = icmp eq i32 %i.dw, 0
  br i1 %i.dz, label %.thread23.i.i.i58, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i8 4, ptr %i.du, align 2
  br label %_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi.exit60

bb.v:                                             ; preds = %.thread.i.i.i53, %bb.t
  %i.ea = phi i64 [ 1, %.thread.i.i.i53 ], [ 2, %bb.t ] ; 2 uses
  %i.eb = sext i32 %i.dt to i64
  %i.ec = add nsw i64 %i.eb, 128
  %i.ed = icmp ult i64 %i.ec, 256
  br i1 %i.ed, label %.thread23.i.i.i58, label %bb.w

.thread23.i.i.i58:                                ; preds = %bb.v, %.thread.i.i.i53
  %i.ee = phi i64 [ 1, %.thread.i.i.i53 ], [ %i.ea, %bb.v ] ; 2 uses
  %i.ef = or disjoint i8 %.sroa.0.0.copyload.i.i.i52, 64
  store i8 %i.ef, ptr %i.du, align 2
  %i.eg = trunc i32 %i.dw to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ee
  store i8 %i.eg, ptr %i.eh, align 1
  %i.ei = add nuw nsw i64 %i.ee, 1
  %i.ej = inttoptr i64 %i.ei to ptr
  br label %_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi.exit60

bb.w:                                             ; preds = %bb.v
  %i.ek = or disjoint i8 %.sroa.0.0.copyload.i.i.i52, -128
  store i8 %i.ek, ptr %i.du, align 2
  %i.el = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ea
  store i32 %i.dw, ptr %i.el, align 1
  %i.em = load i64, ptr %i.dx, align 8
  %i.en = add i64 %i.em, 4
  %i.eo = inttoptr i64 %i.en to ptr
  br label %_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi.exit60

_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi.exit60: ; preds = %bb.u, %.thread23.i.i.i58, %bb.w
  %.fca.1.load.i.i.i54 = phi ptr [ inttoptr (i64 2 to ptr), %bb.u ], [ %i.ej, %.thread23.i.i.i58 ], [ %i.eo, %bb.w ]
  %.fca.0.load.i.i.i55 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  tail call void @_ZN2v88internal9Assembler5cmovqENS0_9ConditionENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %i.w, i32 noundef %switch.ext, i8 %i.y, i64 %.fca.0.load.i.i.i55, ptr %.fca.1.load.i.i.i54) #18
  %i.ep = icmp eq i8 %2, 19
  br i1 %i.ep, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi.exit60
  %i.eq = load i64, ptr %i.a, align 8
  %i.er = lshr i64 %i.eq, 32
  %i.es = trunc i64 %i.er to i8                   ; 2 uses
  %i.et = icmp samesign ult i8 %i.es, 16
  tail call void @llvm.assume(i1 %i.et)
  %i.eu = load i32, ptr %i.e, align 4
  %i.ev = and i32 %i.eu, 255
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr [8 x i8], ptr %i.a, i64 %i.ew
  %i.ey = getelementptr [8 x i8], ptr %i.ex, i64 %i.j
  %i.ez = load i64, ptr %i.ey, align 8
  %i.fa = lshr i64 %i.ez, 32
  %i.fb = trunc nuw i64 %i.fa to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.fc = load ptr, ptr %i.dr, align 8
  %i.fd = tail call i32 @_ZNK2v88internal8compiler16FrameAccessState14GetFrameOffsetEi(ptr noundef nonnull align 8 dereferenceable(17) %i.fc, i32 noundef %i.fb) #18 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 5 uses
  %i.ff = trunc i32 %i.fd to i1                   ; 2 uses
  %.sroa.0.0.copyload.i.i.i61 = select i1 %i.ff, i8 4, i8 5 ; 2 uses
  %i.fg = and i32 %i.fd, -2                       ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %3, align 8
  store i64 1, ptr %i.fh, align 8
  br i1 %i.ff, label %bb.y, label %.thread.i.i.i62

bb.y:                                             ; preds = %bb.x
  %scevgep.i.i.i68 = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 36, ptr %scevgep.i.i.i68, align 1
  store i64 2, ptr %i.fh, align 8
  %i.fi = icmp eq i32 %i.fg, 0
  br i1 %i.fi, label %bb.z, label %bb.aa

.thread.i.i.i62:                                  ; preds = %bb.x
  %i.fj = icmp eq i32 %i.fg, 0
  br i1 %i.fj, label %.thread23.i.i.i67, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i8 4, ptr %i.fe, align 2
  br label %_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi.exit69

bb.aa:                                            ; preds = %.thread.i.i.i62, %bb.y
  %i.fk = phi i64 [ 1, %.thread.i.i.i62 ], [ 2, %bb.y ] ; 2 uses
  %i.fl = sext i32 %i.fd to i64
  %i.fm = add nsw i64 %i.fl, 128
  %i.fn = icmp ult i64 %i.fm, 256
  br i1 %i.fn, label %.thread23.i.i.i67, label %bb.ab

.thread23.i.i.i67:                                ; preds = %bb.aa, %.thread.i.i.i62
  %i.fo = phi i64 [ 1, %.thread.i.i.i62 ], [ %i.fk, %bb.aa ] ; 2 uses
  %i.fp = or disjoint i8 %.sroa.0.0.copyload.i.i.i61, 64
  store i8 %i.fp, ptr %i.fe, align 2
  %i.fq = trunc i32 %i.fg to i8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fo
  store i8 %i.fq, ptr %i.fr, align 1
  %i.fs = add nuw nsw i64 %i.fo, 1
  %i.ft = inttoptr i64 %i.fs to ptr
  br label %_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi.exit69

bb.ab:                                            ; preds = %bb.aa
  %i.fu = or disjoint i8 %.sroa.0.0.copyload.i.i.i61, -128
  store i8 %i.fu, ptr %i.fe, align 2
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fk
  store i32 %i.fg, ptr %i.fv, align 1
  %i.fw = load i64, ptr %i.fh, align 8
  %i.fx = add i64 %i.fw, 4
  %i.fy = inttoptr i64 %i.fx to ptr
  br label %_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi.exit69

_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi.exit69: ; preds = %bb.z, %.thread23.i.i.i67, %bb.ab
  %.fca.1.load.i.i.i63 = phi ptr [ inttoptr (i64 2 to ptr), %bb.z ], [ %i.ft, %.thread23.i.i.i67 ], [ %i.fy, %bb.ab ]
  %.fca.0.load.i.i.i64 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  tail call void @_ZN2v88internal9Assembler5cmovqENS0_9ConditionENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %i.w, i32 noundef 10, i8 %i.es, i64 %.fca.0.load.i.i.i64, ptr %.fca.1.load.i.i.i63) #18
  br label %bb.ac

bb.ac:                                            ; preds = %bb.r, %bb.q, %_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi.exit69, %_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi.exit60, %bb.e, %bb.d, %_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi.exit51, %_ZN2v88internal8compiler19X64OperandConverter12InputOperandEmi.exit
  ret void
}

declare void @_ZN2v88internal9Assembler5cmovlENS0_9ConditionENS0_8RegisterES3_(ptr noundef nonnull align 8 dereferenceable(408), i32 noundef, i8, i8) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler5cmovlENS0_9ConditionENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i32 noundef, i8, i64, ptr) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler5cmovqENS0_9ConditionENS0_8RegisterES3_(ptr noundef nonnull align 8 dereferenceable(408), i32 noundef, i8, i8) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler5cmovqENS0_9ConditionENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i32 noundef, i8, i64, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeGenerator11FinishFrameEPNS1_5FrameE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1560) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %.sroa.0.0.copyload.i = load i16, ptr %i.d, align 4 ; 2 uses
  %i.e = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.g = tail call noundef i32 @_ZN2v88internal20AlignedSlotAllocator5AlignEi(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i32 noundef 1) #18
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add nsw i32 %i.i, %i.g
  store i32 %i.j, ptr %i.h, align 4
  %i.k = tail call range(i16 1, 17) i16 @llvm.ctpop.i16(i16 %.sroa.0.0.copyload.i)
  %i.l = shl nuw nsw i16 %i.k, 1
  %i.m = zext nneg i16 %i.l to i32
  %i.n = tail call noundef i32 @_ZN2v88internal20AlignedSlotAllocator17AllocateUnalignedEi(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i32 noundef %i.m) #18 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 58
  %.sroa.0.0.copyload.i6 = load i16, ptr %i.o, align 2 ; 2 uses
  %i.p = icmp eq i16 %.sroa.0.0.copyload.i6, 0
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call range(i16 1, 17) i16 @llvm.ctpop.i16(i16 %.sroa.0.0.copyload.i6)
  %i.r = zext nneg i16 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = tail call noundef i32 @_ZN2v88internal20AlignedSlotAllocator17AllocateUnalignedEi(ptr noundef nonnull align 4 dereferenceable(16) %i.s, i32 noundef %i.r) #18 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeGenerator22AssembleConstructFrameEv(ptr noundef nonnull align 8 dereferenceable(1560) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i8, ptr %i.f, align 8, !range !5, !noundef !6
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = load i32, ptr %i.c, align 8
  switch i32 %i.r, label %bb.f [
    i32 2, label %bb.c
    i32 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.i, i8 5) #18
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.i, i8 5, i8 4, i32 noundef 8) #18
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 @_ZNK2v88internal24OptimizedCompilationInfo23GetOutputStackFrameTypeEv(ptr noundef nonnull align 8 dereferenceable(192) %i.t) #18
  %i.v = icmp eq i32 %i.u, 9
  br i1 %i.v, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(436) %i.i, i64 18) #18
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %i.i, i8 noundef zeroext 5, i8 4, i64 8, i32 noundef 8) #18
  br label %.thread

bb.e:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal14MacroAssembler8PrologueEv(ptr noundef nonnull align 8 dereferenceable(436) %i.i) #18
  br label %.thread

bb.f:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i32 @_ZNK2v88internal24OptimizedCompilationInfo23GetOutputStackFrameTypeEv(ptr noundef nonnull align 8 dereferenceable(192) %i.x) #18
  tail call void @_ZN2v88internal14MacroAssembler12StubPrologueENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %i.i, i32 noundef %i.y) #18
  %i.z = load i32, ptr %i.c, align 8
  %i.aa = add i32 %i.z, -3
  %i.ab = icmp ult i32 %i.aa, 4
  br i1 %i.ab, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.i, i8 6) #18
  %.pre = load i32, ptr %i.c, align 8
  %i.ac = icmp eq i32 %.pre, 3
  br i1 %i.ac, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %i.i, i8 noundef zeroext 5, i8 4, i64 8, i32 noundef 8) #18
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.h, %bb.g, %bb.c, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN2v88internal8compiler19UnwindingInfoWriter20MarkFrameConstructedEi(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i32 noundef %i.q) #18
  %.pre274 = load ptr, ptr %i.d, align 8
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.a
  %i.ae = phi ptr [ %.pre274, %.thread ], [ %i.e, %bb.a ]
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = add nsw i32 %i.aj, %i.ah
  %i.al = load i32, ptr %i.af, align 8
  %i.am = sub i32 %i.ak, %i.al                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.aq = load i32, ptr %i.ap, align 4
  %.not232 = icmp eq i32 %i.aq, -1
  br i1 %.not232, label %bb.l, label %_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit

_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit: ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  tail call void @_ZN2v88internal14MacroAssembler5AbortENS0_11AbortReasonE(ptr noundef nonnull align 8 dereferenceable(436) %i.ar, i8 noundef zeroext 47) #18
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i32 %i.az, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = trunc i64 %i.bc to i32
  %i.be = shl i32 %i.bd, 3
  %i.bf = add i32 %i.be, 24                       ; 5 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit101, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit
  %i.bh = sext i32 %i.bf to i64
  %i.bi = add nsw i64 %i.bh, 128
  %i.bj = icmp ult i64 %i.bi, 256
  br i1 %i.bj, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit101, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.6.sroa.4.0.extract.shift = and i32 %i.bf, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit101

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit101: ; preds = %bb.j, %_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit, %bb.k
  %.sroa.2361.0 = phi i64 [ 8650752, %bb.k ], [ 262144, %_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit ], [ 4456448, %bb.j ]
  %.sroa.6.sroa.0366.0 = phi i32 [ %i.bf, %bb.k ], [ 0, %_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit ], [ %i.bf, %bb.j ]
  %.sroa.6.sroa.4.sroa.0.0 = phi i32 [ %.sroa.6.sroa.4.0.extract.shift, %bb.k ], [ 0, %_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit ], [ 0, %bb.j ]
  %i.bk = phi ptr [ inttoptr (i64 6 to ptr), %bb.k ], [ inttoptr (i64 2 to ptr), %_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit ], [ inttoptr (i64 3 to ptr), %bb.j ]
  %.sroa.6.sroa.0366.0.insert.ext = and i32 %.sroa.6.sroa.0366.0, 255
  %.sroa.6.sroa.0366.0.insert.insert = or disjoint i32 %.sroa.6.sroa.4.sroa.0.0, %.sroa.6.sroa.0366.0.insert.ext
  %.sroa.6.0.insert.ext362 = zext i32 %.sroa.6.sroa.0366.0.insert.insert to i64
  %.sroa.6.0.insert.shift363 = shl nuw i64 %.sroa.6.0.insert.ext362, 32
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift363, %.sroa.2361.0
  %.sroa.2361.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, 603979776
  tail call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.ar, i8 10, i64 %.sroa.2361.0.insert.insert, ptr nonnull %i.bk, i32 noundef 8) #18
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.ar, i8 noundef zeroext 59, i8 10, i8 5, i32 noundef 8) #18
  tail call void @_ZN2v88internal14MacroAssembler8SbxCheckENS0_9ConditionENS0_11AbortReasonE(ptr noundef nonnull align 8 dereferenceable(436) %i.ar, i32 noundef 4, i8 noundef zeroext 49) #18
  %i.bl = load i64, ptr %i.bb, align 8
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = sub nsw i32 %i.am, %i.bm
  br label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit101, %bb.i
  %.0 = phi i32 [ %i.bn, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit101 ], [ %i.am, %bb.i ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 58
  %2 = load <2 x i16>, ptr %i.bo, align 2         ; 3 uses
  %3 = extractelement <2 x i16> %2, i64 1         ; 5 uses
  %i.bp = icmp sgt i32 %.0, 0
  br i1 %i.bp, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %i.an, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i8, ptr %i.br, align 8
  %i.bt = icmp eq i8 %i.bs, 4
  br i1 %i.bt, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.bu = shl nsw i32 %.0, 3                      ; 3 uses
  %i.bv = icmp samesign ugt i32 %.0, 512
  br i1 %i.bv, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store i32 0, ptr %1, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.bw, align 4
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1464), align 8
  %i.by = shl nsw i32 %i.bx, 10
  %i.bz = icmp slt i32 %i.bu, %i.by
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.cb = tail call { i64, ptr } @_ZN2v88internal14MacroAssembler19StackLimitAsOperandENS0_14StackLimitKindE(ptr noundef nonnull align 8 dereferenceable(436) %i.ca, i32 noundef 1) #18 ; 2 uses
  %i.cc = extractvalue { i64, ptr } %i.cb, 0
  %i.cd = extractvalue { i64, ptr } %i.cb, 1
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %i.ca, i8 10, i64 %i.cc, ptr %i.cd, i32 noundef 8) #18
  %.sroa.0161.0.insert.ext = zext nneg i32 %i.bu to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.ca, i8 noundef zeroext 0, i8 10, i64 %.sroa.0161.0.insert.ext, i32 noundef 8) #18
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.ca, i8 noundef zeroext 59, i8 4, i8 10, i32 noundef 8) #18
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %i.ca, i32 noundef 3, ptr noundef nonnull %1, i32 noundef 0) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ce = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 844), align 4, !range !5, !noundef !6
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 9 uses
  br i1 %i.cf, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit.preheader, label %bb.s

_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit.preheader: ; preds = %bb.q
  %i.ch = call noundef i32 @_ZN2v88internal14MacroAssembler7PushAllENS0_11RegListBaseINS0_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(436) %i.cg, i16 591) #18 ; 0 uses
  %i.ci = call noundef i32 @_ZN2v88internal14MacroAssembler7PushAllENS0_11RegListBaseINS0_11XMMRegisterEEEi(ptr noundef nonnull align 8 dereferenceable(436) %i.cg, i16 126, i32 noundef 16) #18 ; 0 uses
  %.sroa.0150.0.insert.ext = zext nneg i32 %i.bu to i64
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.cg, i8 3, i64 %.sroa.0150.0.insert.ext, i32 noundef 8) #18
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.cg, i8 0, i8 5, i32 noundef 8) #18
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = shl i64 %i.ck, 3
  %i.cm = add i64 %i.cl, 16
  %.sroa.0147.0.insert.ext = and i64 %i.cm, 4294967288
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.cg, i8 noundef zeroext 0, i8 0, i64 %.sroa.0147.0.insert.ext, i32 noundef 8) #18
  call void @_ZN2v88internal9Assembler9near_callElNS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(408) %i.cg, i64 noundef 711, i8 noundef signext 6) #18
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.co = load ptr, ptr %i.cn, align 8            ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 3 uses
  %i.cs = load i64, ptr %i.cr, align 8            ; 2 uses
  %i.ct = sub i64 %i.cq, %i.cs
  %i.cu = icmp ult i64 %i.ct, 40
  br i1 %i.cu, label %bb.r, label %_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit, !prof !9

bb.r:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit.preheader
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.co, i64 noundef 40) #18
  %.pre.i.i = load i64, ptr %i.cr, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit.preheader, %bb.r
  %i.cv = phi i64 [ %.pre.i.i, %bb.r ], [ %i.cs, %_ZN2v88internal11RegListBaseINS0_8RegisterEE3setES2_.exit.preheader ] ; 2 uses
  %i.cw = inttoptr i64 %i.cv to ptr               ; 4 uses
  %i.cx = add i64 %i.cv, 40
  store i64 %i.cx, ptr %i.cr, align 8
  store ptr %i.co, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i8 0, i64 24, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store i32 -1, ptr %i.cz, align 8
  call void @_ZN2v88internal8compiler13CodeGenerator15RecordSafepointEPNS1_12ReferenceMapEi(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef nonnull %i.cw, i32 noundef 0) #18
  %i.da = call noundef i32 @_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_11XMMRegisterEEEi(ptr noundef nonnull align 8 dereferenceable(436) %i.cg, i16 126, i32 noundef 16) #18 ; 0 uses
  %i.db = call noundef i32 @_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(436) %i.cg, i16 591) #18 ; 0 uses
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  call void @_ZN2v88internal9Assembler9near_callElNS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(408) %i.cg, i64 noundef 1345, i8 noundef signext 6) #18
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8            ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8            ; 2 uses
  %i.di = sub i64 %i.df, %i.dh
  %i.dj = icmp ult i64 %i.di, 40
  br i1 %i.dj, label %bb.t, label %_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit122, !prof !9

bb.t:                                             ; preds = %bb.s
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.dd, i64 noundef 40) #18
  %.pre.i.i121 = load i64, ptr %i.dg, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit122

_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit122: ; preds = %bb.s, %bb.t
  %i.dk = phi i64 [ %.pre.i.i121, %bb.t ], [ %i.dh, %bb.s ] ; 2 uses
  %i.dl = inttoptr i64 %i.dk to ptr               ; 4 uses
  %i.dm = add i64 %i.dk, 40
  store i64 %i.dm, ptr %i.dg, align 8
  store ptr %i.dd, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, i8 0, i64 24, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store i32 -1, ptr %i.do, align 8
  call void @_ZN2v88internal8compiler13CodeGenerator15RecordSafepointEPNS1_12ReferenceMapEi(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef nonnull %i.dl, i32 noundef 0) #18
  br label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit122, %_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.dp, ptr noundef nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.n, %bb.m
  %4 = call range(i16 0, 17) <2 x i16> @llvm.ctpop.v2i16(<2 x i16> %2) ; 2 uses
  %5 = extractelement <2 x i16> %4, i64 1
  %i.dq = shl nuw nsw i16 %5, 1
  %6 = extractelement <2 x i16> %4, i64 0
  %narrow = add nuw nsw i16 %i.dq, %6
  %i.dr = zext nneg i16 %narrow to i32
  %i.ds = load ptr, ptr %i.d, align 8
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load i32, ptr %i.du, align 8
  %i.dw = add i32 %i.dv, %i.dr
  %i.dx = sub i32 %.0, %i.dw                      ; 2 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit, label %bb.w

_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit: ; preds = %bb.v
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ea = shl nsw i32 %i.dx, 3
  %.sroa.0.0.insert.ext.i = zext nneg i32 %i.ea to i64
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %i.dz, i8 noundef zeroext 5, i8 4, i64 %.sroa.0.0.insert.ext.i, i32 noundef 8) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit, %bb.l
  %i.eb = icmp eq i16 %3, 0
  br i1 %i.eb, label %.loopexit240, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit93.peel

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit93.peel: ; preds = %bb.w
  %i.ec = call range(i16 1, 17) i16 @llvm.ctpop.i16(i16 %3)
  %i.ed = shl nuw nsw i16 %i.ec, 4
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %.sroa.0.0.insert.ext.i123 = zext nneg i16 %i.ed to i64
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %i.ee, i8 noundef zeroext 5, i8 4, i64 %.sroa.0.0.insert.ext.i123, i32 noundef 8) #18
  %i.ef = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %3, i1 true)
  %i.eg = trunc nuw nsw i16 %i.ef to i8           ; 2 uses
  %i.eh = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.ei = and i32 %i.eh, 32
  %.not.i.i126.peel = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i126.peel, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit93.peel
  call void @_ZN2v88internal9Assembler7vmovdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.ee, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr), i8 %i.eg) #18
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.peel

bb.y:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit93.peel
  call void @_ZN2v88internal9Assembler6movupsENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.ee, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr), i8 %i.eg) #18
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.peel

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.peel: ; preds = %bb.y, %bb.x
  %i.ej = add i16 %3, -1
  %i.ek = and i16 %i.ej, %3                       ; 2 uses
  %.not233.peel = icmp eq i16 %i.ek, 0
  br i1 %.not233.peel, label %.loopexit240, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.peel.next

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.peel.next: ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.peel, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit
  %.082256 = phi i32 [ %i.es, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit ], [ 1, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.peel ] ; 2 uses
  %.sroa.0143.0255 = phi i16 [ %i.eu, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit ], [ %i.ek, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.peel ] ; 3 uses
  %i.el = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0143.0255, i1 true)
  %i.em = trunc nuw nsw i16 %i.el to i8           ; 2 uses
  %i.en = shl nsw i32 %.082256, 4                 ; 3 uses
  %i.eo = icmp samesign ult i32 %i.en, 128        ; 3 uses
  %.sroa.9.sroa.6.0.extract.shift = and i32 %i.en, 2147483392
  %.sroa.4.0 = select i1 %i.eo, i64 4456448, i64 8650752
  %.sroa.9.sroa.6.sroa.0.0 = select i1 %i.eo, i32 0, i32 %.sroa.9.sroa.6.0.extract.shift
  %i.ep = select i1 %i.eo, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 6 to ptr) ; 2 uses
  %.sroa.9.sroa.0.0.insert.ext = and i32 %i.en, 240
  %.sroa.9.sroa.0.0.insert.insert = or disjoint i32 %.sroa.9.sroa.6.sroa.0.0, %.sroa.9.sroa.0.0.insert.ext
  %.sroa.9.0.insert.ext = zext nneg i32 %.sroa.9.sroa.0.0.insert.insert to i64
  %.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.9.0.insert.ext, 32
  %.sroa.7.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.shift, %.sroa.4.0
  %.sroa.4.0.insert.insert332 = or disjoint i64 %.sroa.7.0.insert.insert, 603979776 ; 2 uses
  %i.eq = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.er = and i32 %i.eq, 32
  %.not.i.i126 = icmp eq i32 %i.er, 0
  br i1 %.not.i.i126, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.peel.next
  call void @_ZN2v88internal9Assembler7vmovdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.ee, i64 %.sroa.4.0.insert.insert332, ptr nonnull %i.ep, i8 %i.em) #18
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit

bb.aa:                                            ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.peel.next
  call void @_ZN2v88internal9Assembler6movupsENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.ee, i64 %.sroa.4.0.insert.insert332, ptr nonnull %i.ep, i8 %i.em) #18
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit: ; preds = %bb.aa, %bb.z
  %i.es = add nuw nsw i32 %.082256, 1
  %i.et = add i16 %.sroa.0143.0255, -2
  %i.eu = and i16 %i.et, %.sroa.0143.0255         ; 2 uses
  %.not233 = icmp eq i16 %i.eu, 0
  br i1 %.not233, label %.loopexit240, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.peel.next, !llvm.loop !325

.loopexit240:                                     ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.peel, %bb.w
  %7 = extractelement <2 x i16> %2, i64 0         ; 2 uses
  %i.ev = icmp eq i16 %7, 0
  br i1 %i.ev, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit240
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit

_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit: ; preds = %.preheader, %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit
  %.sroa.0138.0257 = phi i16 [ %7, %.preheader ], [ %i.fe, %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit ] ; 3 uses
  %i.ex = zext i16 %.sroa.0138.0257 to i32
  %i.ey = call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.ex, i1 true)
  %i.ez = trunc nuw nsw i32 %i.ey to i8
  %i.fa = xor i8 %i.ez, 31
  call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.ew, i8 %i.fa) #18
  %i.fb = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %.sroa.0138.0257, i1 true)
  %i.fc = lshr exact i16 -32768, %i.fb
  %i.fd = xor i16 %i.fc, -1
  %i.fe = and i16 %.sroa.0138.0257, %i.fd         ; 2 uses
  %.not235 = icmp eq i16 %i.fe, 0
  br i1 %.not235, label %.loopexit, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit

.loopexit:                                        ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit, %.loopexit240
  %i.ff = load ptr, ptr %i.d, align 8
  %i.fg = load ptr, ptr %i.ff, align 8            ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load i32, ptr %i.fh, align 8            ; 2 uses
  %i.fj = icmp sgt i32 %i.fi, 0
  br i1 %i.fj, label %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit130, label %bb.ab

_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit130: ; preds = %.loopexit
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.fl = shl nsw i32 %i.fi, 3
  %.sroa.0.0.insert.ext.i129 = zext nneg i32 %i.fl to i64
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %i.fk, i8 noundef zeroext 5, i8 4, i64 %.sroa.0.0.insert.ext.i129, i32 noundef 8) #18
  %.pre276 = load ptr, ptr %i.d, align 8
  %.pre277 = load ptr, ptr %.pre276, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit130, %.loopexit
  %i.fm = phi ptr [ %.pre277, %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit130 ], [ %i.fg, %.loopexit ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 72
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !326 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 80
  %i.fq = load ptr, ptr %i.fp, align 8, !noalias !326 ; 3 uses
  %i.fr = load i64, ptr %i.fo, align 8, !noalias !326 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.ft = load i64, ptr %i.fx, align 8, !noalias !326 ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !331

.lr.ph.i.i:                                       ; preds = %bb.ab, %bb.ac
  %i.fv = phi ptr [ %i.fx, %bb.ac ], [ %i.fo, %bb.ab ]
  %i.fw = phi i32 [ %i.fy, %bb.ac ], [ 0, %bb.ab ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 5 uses
  %i.fy = add nuw nsw i32 %i.fw, 64               ; 3 uses
  %i.fz = icmp eq ptr %i.fx, %i.fq
  br i1 %i.fz, label %_ZNK2v88internal17GrowableBitVector5beginEv.exit, label %bb.ac, !llvm.loop !331

._crit_edge.i.i:                                  ; preds = %bb.ac, %bb.ab
  %.lcssa4.i.i = phi ptr [ %i.fo, %bb.ab ], [ %i.fx, %bb.ac ]
  %.lcssa2.i.i = phi i32 [ 0, %bb.ab ], [ %i.fy, %bb.ac ]
  %.lcssa.i.i = phi i64 [ %i.fr, %bb.ab ], [ %i.ft, %bb.ac ]
  %i.ga = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i, i1 true)
  %i.gb = trunc nuw nsw i64 %i.ga to i32
  %i.gc = or disjoint i32 %.lcssa2.i.i, %i.gb
  br label %_ZNK2v88internal17GrowableBitVector5beginEv.exit

_ZNK2v88internal17GrowableBitVector5beginEv.exit: ; preds = %.lr.ph.i.i, %._crit_edge.i.i
  %.sroa.0134.1 = phi ptr [ %.lcssa4.i.i, %._crit_edge.i.i ], [ %i.fx, %.lr.ph.i.i ]
  %.sroa.8.1 = phi i32 [ %i.gc, %._crit_edge.i.i ], [ %i.fy, %.lr.ph.i.i ] ; 2 uses
  %i.gd = ptrtoint ptr %i.fq to i64
  %i.ge = ptrtoint ptr %i.fo to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %.tr.i.i.i = trunc i64 %i.gf to i32
  %tr.sh.diff.i.i.i = shl i32 %.tr.i.i.i, 3
  %i.gg = and i32 %tr.sh.diff.i.i.i, -64          ; 2 uses
  %.not236258 = icmp eq i32 %.sroa.8.1, %i.gg
  br i1 %.not236258, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2v88internal17GrowableBitVector5beginEv.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

._crit_edge:                                      ; preds = %_ZN2v88internal9BitVector8IteratorppEv.exit, %_ZNK2v88internal17GrowableBitVector5beginEv.exit
  ret void

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %.lr.ph, %_ZN2v88internal9BitVector8IteratorppEv.exit
  %.sroa.8.0260 = phi i32 [ %.sroa.8.1, %.lr.ph ], [ %.sroa.8.2, %_ZN2v88internal9BitVector8IteratorppEv.exit ] ; 4 uses
  %.sroa.0134.0259 = phi ptr [ %.sroa.0134.1, %.lr.ph ], [ %.sroa.0134.3, %_ZN2v88internal9BitVector8IteratorppEv.exit ] ; 3 uses
  %i.gi = load ptr, ptr %i.d, align 8
  %i.gj = call i32 @_ZNK2v88internal8compiler16FrameAccessState14GetFrameOffsetEi(ptr noundef nonnull align 8 dereferenceable(17) %i.gi, i32 noundef %.sroa.8.0260) #18 ; 3 uses
  %i.gk = sext i32 %i.gj to i64
  %i.gl = add nsw i64 %i.gk, 128
  %i.gm = icmp ult i64 %i.gl, 256                 ; 3 uses
  %.sroa.4.sroa.4.0.extract.shift = and i32 %i.gj, -256
  %.sroa.4.sroa.4.sroa.0.0 = select i1 %i.gm, i32 0, i32 %.sroa.4.sroa.4.0.extract.shift
  %.sroa.2.0 = select i1 %i.gm, i64 4521984, i64 8716288
  %storemerge = select i1 %i.gm, i64 2, i64 5
  %.sroa.4.sroa.0.0 = and i32 %i.gj, 254
  %.sroa.4.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.sroa.4.sroa.0.0, %.sroa.4.sroa.0.0
  %.sroa.4.0.insert.ext = zext i32 %.sroa.4.sroa.0.0.insert.insert to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 24
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.2.0
  %.cast = inttoptr i64 %storemerge to ptr
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %i.gh, i64 %.sroa.2.0.insert.insert, ptr nonnull %.cast, i64 0, i32 noundef 8) #18
  %i.gn = and i32 %.sroa.8.0260, 63               ; 2 uses
  %.not.i131 = icmp eq i32 %i.gn, 63
  br i1 %.not.i131, label %.critedge.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  %i.go = load i64, ptr %.sroa.0134.0259, align 8
  %i.gp = add nuw nsw i32 %i.gn, 1
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = lshr i64 %i.go, %i.gq                   ; 2 uses
  %.not11.i = icmp eq i64 %i.gr, 0
  br i1 %.not11.i, label %.critedge.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gs = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gr, i1 true)
  %i.gt = trunc nuw nsw i64 %i.gs to i32
  %i.gu = add i32 %.sroa.8.0260, 1
  %i.gv = add i32 %i.gu, %i.gt
  br label %_ZN2v88internal9BitVector8IteratorppEv.exit

.critedge.i:                                      ; preds = %bb.ad, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  %i.gw = and i32 %.sroa.8.0260, -64
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %.critedge.i
  %i.gx = phi i32 [ %i.ha, %bb.ag ], [ %i.gw, %.critedge.i ]
  %i.gy = phi ptr [ %i.gz, %bb.ag ], [ %.sroa.0134.0259, %.critedge.i ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 5 uses
  %i.ha = add nsw i32 %i.gx, 64                   ; 3 uses
  %i.hb = icmp eq ptr %i.gz, %i.fq
  br i1 %i.hb, label %_ZN2v88internal9BitVector8IteratorppEv.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hc = load i64, ptr %i.gz, align 8            ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %bb.af, label %bb.ah, !llvm.loop !332

bb.ah:                                            ; preds = %bb.ag
  %i.he = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.hc, i1 true)
  %i.hf = trunc nuw nsw i64 %i.he to i32
  %i.hg = or disjoint i32 %i.ha, %i.hf
  br label %_ZN2v88internal9BitVector8IteratorppEv.exit

_ZN2v88internal9BitVector8IteratorppEv.exit:      ; preds = %bb.af, %bb.ae, %bb.ah
  %.sroa.0134.3 = phi ptr [ %.sroa.0134.0259, %bb.ae ], [ %i.gz, %bb.ah ], [ %i.gz, %bb.af ]
  %.sroa.8.2 = phi i32 [ %i.gv, %bb.ae ], [ %i.hg, %bb.ah ], [ %i.ha, %bb.af ] ; 2 uses
  %.not236 = icmp eq i32 %.sroa.8.2, %i.gg
  br i1 %.not236, label %._crit_edge, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
}

declare noundef i32 @_ZNK2v88internal24OptimizedCompilationInfo23GetOutputStackFrameTypeEv(ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler8PrologueEv(ptr noundef nonnull align 8 dereferenceable(436)) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler12StubPrologueENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436), i32 noundef) local_unnamed_addr #4

declare void @_ZN2v88internal8compiler19UnwindingInfoWriter20MarkFrameConstructedEi(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler5AbortENS0_11AbortReasonE(ptr noundef nonnull align 8 dereferenceable(436), i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler8SbxCheckENS0_9ConditionENS0_11AbortReasonE(ptr noundef nonnull align 8 dereferenceable(436), i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

declare { i64, ptr } @_ZN2v88internal14MacroAssembler19StackLimitAsOperandENS0_14StackLimitKindE(ptr noundef nonnull align 8 dereferenceable(436), i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN2v88internal14MacroAssembler7PushAllENS0_11RegListBaseINS0_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(436), i16) local_unnamed_addr #4

declare noundef i32 @_ZN2v88internal14MacroAssembler7PushAllENS0_11RegListBaseINS0_11XMMRegisterEEEi(ptr noundef nonnull align 8 dereferenceable(436), i16, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_11XMMRegisterEEEi(ptr noundef nonnull align 8 dereferenceable(436), i16, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(436), i16) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler11LoadAddressENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(436), i8, i64) local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference15isolate_addressEv() local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference17wasm_shrink_stackEv() local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler3RetEiNS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436), i32 noundef, i8) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler13DropArgumentsENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436), i8, i8) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler3RetEv(ptr noundef nonnull align 8 dereferenceable(436)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeGenerator10FinishCodeEv(ptr noundef nonnull align 8 dereferenceable(1560) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN2v88internal9Assembler14PatchConstPoolEv(ptr noundef nonnull align 8 dereferenceable(408) %i.a) #18
  ret void
}

declare void @_ZN2v88internal9Assembler14PatchConstPoolEv(ptr noundef nonnull align 8 dereferenceable(408)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal8compiler13CodeGenerator29PrepareForDeoptimizationExitsEPNS0_9ZoneDequeIPNS1_18DeoptimizationExitEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1560) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13CodeGenerator27IncrementStackAccessCounterEPNS1_18InstructionOperandES4_(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 align 2 {
end_hunk_0
begin_hunk_1_@_ZN2v88internal9Assembler7vmovdquENS0_11XMMRegisterENS0_7OperandE

declare void @_ZN2v88internal9Assembler7vmovdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408), i64, ptr, i8) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler8emit_decENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408), i8, i32 noundef) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler8emit_incENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408), i8, i32 noundef) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler8vmovddupENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(408), i8, i8) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler7movddupENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(408), i8, i8) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler8vmovddupENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler7movddupENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler8insertpsENS0_11XMMRegisterES2_h(ptr noundef nonnull align 8 dereferenceable(408), i8, i8, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler8insertpsENS0_11XMMRegisterENS0_7OperandEh(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler8cvtdq2pdENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(408), i8, i8) local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference50address_of_wasm_f64x2_convert_low_i32x4_u_int_maskEv() local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference33address_of_wasm_double_2_power_52Ev() local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference35address_of_wasm_int32_max_as_doubleEv() local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference36address_of_wasm_uint32_max_as_doubleEv() local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler7roundpdENS0_11XMMRegisterES2_NS0_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(408), i8, i8, i32 noundef) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler6shufpsENS0_11XMMRegisterES2_h(ptr noundef nonnull align 8 dereferenceable(408), i8, i8, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler3vpsEhNS0_11XMMRegisterES2_S2_h(ptr noundef nonnull align 8 dereferenceable(408), i8 noundef zeroext, i8, i8, i8, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler7roundpsENS0_11XMMRegisterES2_NS0_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(408), i8, i8, i32 noundef) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler6pshufdENS0_11XMMRegisterES2_h(ptr noundef nonnull align 8 dereferenceable(408), i8, i8, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler11ssse3_instrENS0_11XMMRegisterES2_hhhh(ptr noundef nonnull align 8 dereferenceable(408), i8, i8, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler9vpmovmskbENS0_8RegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408), i8, i8) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler8pmovmskbENS0_8RegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408), i8, i8) local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference39address_of_wasm_int32_overflow_as_floatEv() local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler6movapsENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler9cvttps2dqENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(408), i8, i8) local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference34address_of_wasm_i16x8_splat_0x0001Ev() local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference32address_of_wasm_i8x16_splat_0x01Ev() local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler7vmovdqaENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler11ssse3_instrENS0_11XMMRegisterENS0_7OperandEhhhh(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler6pinsrbENS0_11XMMRegisterENS0_7OperandEh(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler6pinsrbENS0_11XMMRegisterENS0_8RegisterEh(ptr noundef nonnull align 8 dereferenceable(408), i8, i8, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler6pinsrwENS0_11XMMRegisterENS0_7OperandEh(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler6pinsrwENS0_11XMMRegisterENS0_8RegisterEh(ptr noundef nonnull align 8 dereferenceable(408), i8, i8, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler6pinsrdENS0_11XMMRegisterENS0_7OperandEh(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler14PinsrdPreSse41ENS0_11XMMRegisterENS0_7OperandEhPj(ptr noundef nonnull align 8 dereferenceable(436), i8, i64, ptr, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler6pinsrdENS0_11XMMRegisterENS0_8RegisterEh(ptr noundef nonnull align 8 dereferenceable(408), i8, i8, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler14PinsrdPreSse41ENS0_11XMMRegisterENS0_8RegisterEhPj(ptr noundef nonnull align 8 dereferenceable(436), i8, i8, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference34address_of_wasm_i8x16_swizzle_maskEv() local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler7vmovdquENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(408), i8, i8) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler6movupsENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(408), i8, i8) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler7vmovdqaENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(408), i8, i8) local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference32address_of_wasm_i8x16_splat_0x0fEv() local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference33address_of_wasm_i8x16_popcnt_maskEv() local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference32address_of_wasm_i8x16_splat_0x55Ev() local_unnamed_addr #4

declare i64 @_ZN2v88internal17ExternalReference32address_of_wasm_i8x16_splat_0x33Ev() local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler10sse4_instrENS0_11XMMRegisterENS0_7OperandEhhhh(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler6pshufdENS0_11XMMRegisterENS0_7OperandEh(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler7pshuflwENS0_11XMMRegisterES2_h(ptr noundef nonnull align 8 dereferenceable(408), i8, i8, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler7pshuflwENS0_11XMMRegisterENS0_7OperandEh(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler7pshufhwENS0_11XMMRegisterES2_h(ptr noundef nonnull align 8 dereferenceable(408), i8, i8, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler7pshufhwENS0_11XMMRegisterENS0_7OperandEh(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr, i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler9emit_xchgENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr, i32 noundef) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler12emit_cmpxchgENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408), i64, ptr, i8, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2v88internal8compiler13OutOfLineCodeD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #14

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define internal void @_ZN2v88internal8compiler12_GLOBAL__N_117WasmOutOfLineTrapD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #16 align 2 {
bb.a:
  tail call void @_ZN2v88internal8compiler13OutOfLineCodeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #18
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal8compiler12_GLOBAL__N_117WasmOutOfLineTrap8GenerateEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::compiler::X64OperandConverter", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %1, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = lshr i32 %i.f, 8
  %i.h = and i32 %i.g, 65535
  %i.i = zext nneg i32 %i.h to i64
  %i.j = and i32 %i.f, 255
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr [8 x i8], ptr %i.c, i64 %i.k
  %i.m = getelementptr [8 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %i.o = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.n)
  %i.p = extractvalue { i64, i64 } %i.o, 1
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = load ptr, ptr %i.b, align 8
  call void @_ZN2v88internal8compiler13CodeGenerator22AssembleSourcePositionEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1560) %i.q, ptr noundef %i.r) #18
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %sext = shl i64 %i.p, 32
  %i.u = ashr exact i64 %sext, 32
  call void @_ZN2v88internal9Assembler9near_callElNS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(408) %i.t, i64 noundef %i.u, i8 noundef signext 6) #18
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = sub i64 %i.z, %i.ab
  %i.ad = icmp ult i64 %i.ac, 40
  br i1 %i.ad, label %bb.b, label %_ZN2v88internal8compiler12_GLOBAL__N_117WasmOutOfLineTrap18GenerateWithTrapIdENS1_6TrapIdE.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.x, i64 noundef 40) #18
  %.pre.i.i.i.i = load i64, ptr %i.aa, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_117WasmOutOfLineTrap18GenerateWithTrapIdENS1_6TrapIdE.exit

_ZN2v88internal8compiler12_GLOBAL__N_117WasmOutOfLineTrap18GenerateWithTrapIdENS1_6TrapIdE.exit: ; preds = %bb.a, %bb.b
  %i.ae = phi i64 [ %.pre.i.i.i.i, %bb.b ], [ %i.ab, %bb.a ] ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr               ; 4 uses
  %i.ag = add i64 %i.ae, 40
  store i64 %i.ag, ptr %i.aa, align 8
  store ptr %i.x, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i32 -1, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %i.a, align 8
  call void @_ZN2v88internal8compiler13CodeGenerator15RecordSafepointEPNS1_12ReferenceMapEi(ptr noundef nonnull align 8 dereferenceable(1560) %i.aj, ptr noundef nonnull %i.af, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

declare void @_ZN2v88internal8compiler13CodeGenerator22AssembleSourcePositionEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1560), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.ctpop.v2i16(<2 x i16>) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!12 = distinct !{!12, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!15 = distinct !{!15, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!18 = distinct !{!18, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!21 = distinct !{!21, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!25 = distinct !{!25, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!28 = distinct !{!28, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!31 = distinct !{!31, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!34 = distinct !{!34, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!37 = distinct !{!37, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!40 = distinct !{!40, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!43 = distinct !{!43, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!46 = distinct !{!46, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!49 = distinct !{!49, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!52 = distinct !{!52, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!55 = distinct !{!55, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!58 = distinct !{!58, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!61 = distinct !{!61, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!64 = distinct !{!64, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!67 = distinct !{!67, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!70 = distinct !{!70, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!73 = distinct !{!73, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!76 = distinct !{!76, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!79 = distinct !{!79, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!82 = distinct !{!82, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!85 = distinct !{!85, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!88 = distinct !{!88, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!91 = distinct !{!91, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!94 = distinct !{!94, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!97 = distinct !{!97, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!100 = distinct !{!100, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!103 = distinct !{!103, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!106 = distinct !{!106, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!109 = distinct !{!109, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!112 = distinct !{!112, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!115 = distinct !{!115, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!118 = distinct !{!118, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!121 = distinct !{!121, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!124 = distinct !{!124, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!127 = distinct !{!127, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!130 = distinct !{!130, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!133 = distinct !{!133, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!136 = distinct !{!136, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!139 = distinct !{!139, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!142 = distinct !{!142, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!145 = distinct !{!145, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!148 = distinct !{!148, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!151 = distinct !{!151, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!154 = distinct !{!154, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!157 = distinct !{!157, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!160 = distinct !{!160, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!163 = distinct !{!163, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!166 = distinct !{!166, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!169 = distinct !{!169, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_: argument 0"}
!172 = distinct !{!172, !"_ZN2v88internal9Assembler4emitIhEEPhS3_T_"}
!173 = !{!174}
end_hunk_1
