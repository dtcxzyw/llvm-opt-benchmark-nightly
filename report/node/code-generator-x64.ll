inline.NumInlined: 12588
inline.NumDeleted: 1676
begin_hunk_0_@_ZN2v88internal8compiler13CodeGenerator22AssembleConstructFrameEv:bb.a
  %i.fd = xor i8 %i.fc, 31
  call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.ez, i8 %i.fd) #19
  %i.fe = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %.sroa.0138.0257, i1 true)
  %2 = lshr exact i16 -32768, %i.fe
  %i.ff = xor i16 %2, -1
  %i.fg = and i16 %.sroa.0138.0257, %i.ff         ; 2 uses
  %.not235 = icmp eq i16 %i.fg, 0
  br i1 %.not235, label %.loopexit, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit
end_hunk_0
