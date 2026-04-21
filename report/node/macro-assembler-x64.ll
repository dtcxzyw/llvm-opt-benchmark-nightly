inline.NumInlined: 3362
inline.NumDeleted: 638
begin_hunk_0_@_ZN2v88internal14MacroAssembler23CallEphemeronKeyBarrierENS0_8RegisterES2_NS0_14SaveFPRegsModeE:bb.a
  %i.j = xor i8 %i.i, 31
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.j) #15
  %i.k = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %.sroa.0.013.i, i1 true)
  %4 = xor i16 %i.k, 15
  %5 = shl nuw nsw i16 1, %4
  %i.l = xor i16 %5, -1
  %i.m = and i16 %.sroa.0.013.i, %i.l             ; 2 uses
  %.not.i18 = icmp eq i16 %i.m, 0
  br i1 %.not.i18, label %_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_8RegisterEEE.exit, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit.i
end_hunk_0
begin_hunk_1_@_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_8RegisterEEE:bb.a
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %i.d) #15
  %i.e = add nuw nsw i32 %.014, 8                 ; 2 uses
  %i.f = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %.sroa.0.013, i1 true)
  %2 = xor i16 %i.f, 15
  %3 = shl nuw i16 1, %2
  %i.g = xor i16 %3, -1
  %i.h = and i16 %.sroa.0.013, %i.g               ; 2 uses
  %.not = icmp eq i16 %i.h, 0
  br i1 %.not, label %._crit_edge, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit
end_hunk_1
begin_hunk_2_@_ZN2v88internal14MacroAssembler26CallIndirectPointerBarrierENS0_8RegisterES2_NS0_14SaveFPRegsModeENS0_18IndirectPointerTagE:bb.a
  %i.m = xor i8 %i.l, 31
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.m) #15
  %i.n = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %.sroa.0.013.i, i1 true)
  %5 = xor i16 %i.n, 15
  %6 = shl nuw nsw i16 1, %5
  %i.o = xor i16 %6, -1
  %i.p = and i16 %.sroa.0.013.i, %i.o             ; 2 uses
  %.not.i21 = icmp eq i16 %i.p, 0
  br i1 %.not.i21, label %_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_8RegisterEEE.exit, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit.i
end_hunk_2
begin_hunk_3_@_ZN2v88internal14MacroAssembler32CallRecordWriteStubSaveRegistersENS0_8RegisterES2_NS0_14SaveFPRegsModeENS0_12StubCallModeE:bb.a
  %i.p = xor i8 %i.o, 31
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.p) #15
  %i.q = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %.sroa.0.013.i, i1 true)
  %5 = xor i16 %i.q, 15
  %6 = shl nuw nsw i16 1, %5
  %i.r = xor i16 %6, -1
  %i.s = and i16 %.sroa.0.013.i, %i.r             ; 2 uses
  %.not.i24 = icmp eq i16 %i.s, 0
  br i1 %.not.i24, label %_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_8RegisterEEE.exit, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit.i
end_hunk_3
begin_hunk_4_@_ZN2v88internal14MacroAssembler14PopCallerSavedENS0_14SaveFPRegsModeENS0_8RegisterE:bb.a
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.s) #15
  %i.t = add nuw nsw i32 %.014.i, 8               ; 2 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %.sroa.0.013.i, i1 true)
  %3 = xor i16 %i.u, 15
  %4 = shl nuw nsw i16 1, %3
  %i.v = xor i16 %4, -1
  %i.w = and i16 %.sroa.0.013.i, %i.v             ; 2 uses
  %.not.i7 = icmp eq i16 %i.w, 0
  br i1 %.not.i7, label %_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_8RegisterEEE.exit, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit.i
end_hunk_4
