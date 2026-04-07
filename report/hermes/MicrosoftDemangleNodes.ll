inline.NumInlined: 377
inline.NumDeleted: 22
begin_hunk_0_@_ZNK4llvh11ms_demangle13ArrayTypeNode20outputDimensionsImplER12OutputStreamNS0_11OutputFlagsE:bb.a
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(25) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) #12
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !103
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre11 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !22
end_hunk_0
begin_hunk_1_@_ZNK4llvh11ms_demangle13ArrayTypeNode20outputDimensionsImplER12OutputStreamNS0_11OutputFlagsE:bb.a
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(25) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) #12
  %.pre12 = load ptr, ptr %i.a, align 8, !tbaa !103
  br label %_ZNK4llvh11ms_demangle13ArrayTypeNode18outputOneDimensionER12OutputStreamNS0_11OutputFlagsEPNS0_4NodeE.exit9

end_hunk_1
begin_hunk_2_@_ZNK4llvh11ms_demangle13ArrayTypeNode20outputDimensionsImplER12OutputStreamNS0_11OutputFlagsE:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !22
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.d, label %.loopexit, !llvm.loop !104

.loopexit:                                        ; preds = %_ZNK4llvh11ms_demangle13ArrayTypeNode18outputOneDimensionER12OutputStreamNS0_11OutputFlagsEPNS0_4NodeE.exit9, %_ZNK4llvh11ms_demangle13ArrayTypeNode18outputOneDimensionER12OutputStreamNS0_11OutputFlagsEPNS0_4NodeE.exit, %bb.a
  ret void
end_hunk_2
begin_hunk_3_@_ZNK4llvh11ms_demangle10SymbolNode6outputER12OutputStreamNS0_11OutputFlagsE
define hidden void @_ZNK4llvh11ms_demangle10SymbolNode6outputER12OutputStreamNS0_11OutputFlagsE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_3
begin_hunk_4_@_ZNK4llvh11ms_demangle18FunctionSymbolNode6outputER12OutputStreamNS0_11OutputFlagsE
define hidden void @_ZNK4llvh11ms_demangle18FunctionSymbolNode6outputER12OutputStreamNS0_11OutputFlagsE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_4
begin_hunk_5_@_ZNK4llvh11ms_demangle18FunctionSymbolNode6outputER12OutputStreamNS0_11OutputFlagsE:bb.a

_ZL22outputSpaceIfNecessaryR12OutputStream.exit:  ; preds = %bb.a, %_ZNK12OutputStream4backEv.exit.i, %_ZN12OutputStream4growEm.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !105 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) #12
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !106 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !29
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
end_hunk_5
begin_hunk_6_@_ZNK4llvh11ms_demangle18VariableSymbolNode6outputER12OutputStreamNS0_11OutputFlagsE
define hidden void @_ZNK4llvh11ms_demangle18VariableSymbolNode6outputER12OutputStreamNS0_11OutputFlagsE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !109
  %.off = add i8 %i.b, -1
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %bb.b, label %_ZN12OutputStreamlsE10StringView.exit
end_hunk_6
begin_hunk_7_@_ZNK4llvh11ms_demangle18VariableSymbolNode6outputER12OutputStreamNS0_11OutputFlagsE:bb.a

_ZN12OutputStreamlsE10StringView.exit:            ; preds = %_ZN12OutputStream4growEm.exit.i.i, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !112  ; 3 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %_ZL22outputSpaceIfNecessaryR12OutputStream.exit, label %bb.e

end_hunk_7
begin_hunk_8_@_ZNK4llvh11ms_demangle18VariableSymbolNode6outputER12OutputStreamNS0_11OutputFlagsE:bb.a

_ZL22outputSpaceIfNecessaryR12OutputStream.exit:  ; preds = %_ZN12OutputStream4growEm.exit.i.i.i, %_ZNK12OutputStream4backEv.exit.i, %bb.e, %_ZN12OutputStreamlsE10StringView.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !105 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) #12
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !112 ; 3 uses
  %.not9 = icmp eq ptr %i.av, null
  br i1 %.not9, label %bb.j, label %bb.i

end_hunk_8
begin_hunk_9_@_ZNK4llvh11ms_demangle14CustomTypeNode9outputPreER12OutputStreamNS0_11OutputFlagsE
define hidden void @_ZNK4llvh11ms_demangle14CustomTypeNode9outputPreER12OutputStreamNS0_11OutputFlagsE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_9
begin_hunk_10_@_ZNK4llvh11ms_demangle17QualifiedNameNode6outputER12OutputStreamNS0_11OutputFlagsE
define hidden void @_ZNK4llvh11ms_demangle17QualifiedNameNode6outputER12OutputStreamNS0_11OutputFlagsE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115
  tail call void @_ZNK4llvh11ms_demangle13NodeArrayNode6outputER12OutputStreamNS0_11OutputFlagsE10StringView(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, ptr nonnull @.str.123, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.123, i64 2))
  ret void
}
end_hunk_10
begin_hunk_11_@_ZNK4llvh11ms_demangle27RttiBaseClassDescriptorNode6outputER12OutputStreamNS0_11OutputFlagsE:bb.a
  %i.m = add i64 %i.l, 32
  store i64 %i.m, ptr %i.a, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !117
  %i.p = zext i32 %i.o to i64
  tail call void @_ZN12OutputStream13writeUnsignedEmb(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.p, i1 noundef zeroext false)
  %i.q = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
end_hunk_11
begin_hunk_12_@_ZNK4llvh11ms_demangle27RttiBaseClassDescriptorNode6outputER12OutputStreamNS0_11OutputFlagsE:bb.a
  %i.aa = add i64 %i.z, 2
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !119 ; 2 uses
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = icmp slt i32 %i.ac, 0
  br i1 %i.ae, label %bb.f, label %bb.g
end_hunk_12
begin_hunk_13_@_ZNK4llvh11ms_demangle27RttiBaseClassDescriptorNode6outputER12OutputStreamNS0_11OutputFlagsE:bb.a
  %i.aq = add i64 %i.ap, 2
  store i64 %i.aq, ptr %i.a, align 8, !tbaa !14
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !120
  %i.at = zext i32 %i.as to i64
  tail call void @_ZN12OutputStream13writeUnsignedEmb(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.at, i1 noundef zeroext false)
  %i.au = load i64, ptr %i.a, align 8, !tbaa !14  ; 2 uses
end_hunk_13
begin_hunk_14_@_ZNK4llvh11ms_demangle27RttiBaseClassDescriptorNode6outputER12OutputStreamNS0_11OutputFlagsE:bb.a
  %i.be = add i64 %i.bd, 2
  store i64 %i.be, ptr %i.a, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !121
  %i.bh = zext i32 %i.bg to i64
  tail call void @_ZN12OutputStream13writeUnsignedEmb(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bh, i1 noundef zeroext false)
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !14  ; 2 uses
end_hunk_14
begin_hunk_15_@_ZNK4llvh11ms_demangle28LocalStaticGuardVariableNode6outputER12OutputStreamNS0_11OutputFlagsE
define hidden void @_ZNK4llvh11ms_demangle28LocalStaticGuardVariableNode6outputER12OutputStreamNS0_11OutputFlagsE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_15
begin_hunk_16_@_ZNK4llvh11ms_demangle24VcallThunkIdentifierNode6outputER12OutputStreamNS0_11OutputFlagsE:bb.a
  %i.m = add i64 %i.l, 8
  store i64 %i.m, ptr %i.a, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !122
  tail call void @_ZN12OutputStream13writeUnsignedEmb(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.o, i1 noundef zeroext false)
  %i.p = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.q = add i64 %i.p, 9                          ; 2 uses
end_hunk_16
begin_hunk_17_@_ZNK4llvh11ms_demangle22SpecialTableSymbolNode6outputER12OutputStreamNS0_11OutputFlagsE
define hidden void @_ZNK4llvh11ms_demangle22SpecialTableSymbolNode6outputER12OutputStreamNS0_11OutputFlagsE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !124   ; 4 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %_ZL16outputQualifiersR12OutputStreamN4llvh11ms_demangle10QualifiersEbb.exit, label %bb.b

end_hunk_17
begin_hunk_18_@_ZNK4llvh11ms_demangle22SpecialTableSymbolNode6outputER12OutputStreamNS0_11OutputFlagsE:bb.a

_ZL16outputQualifiersR12OutputStreamN4llvh11ms_demangle10QualifiersEbb.exit: ; preds = %bb.a, %_ZL24outputQualifierIfPresentR12OutputStreamN4llvh11ms_demangle10QualifiersES3_b.exit, %_ZN12OutputStream4growEm.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !105 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !29
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) #12
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !126
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %_ZN12OutputStreamlsE10StringView.exit13, label %bb.i

end_hunk_18
begin_hunk_19_@_ZNK4llvh11ms_demangle22SpecialTableSymbolNode6outputER12OutputStreamNS0_11OutputFlagsE:bb.a
  %i.ax = load i64, ptr %i.am, align 8, !tbaa !14
  %i.ay = add i64 %i.ax, 6
  store i64 %i.ay, ptr %i.am, align 8, !tbaa !14
  %i.az = load ptr, ptr %i.ak, align 8, !tbaa !126 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
end_hunk_19
begin_hunk_20_@_ZN12OutputStream13writeUnsignedEmb:bb.a
  store i8 %i.p, ptr %.ptr15, align 1, !tbaa !46
  %i.q = udiv i64 %.0817, 10
  %.not = icmp ult i64 %.0817, 10
  br i1 %.not, label %bb.g, label %bb.f, !llvm.loop !127

bb.g:                                             ; preds = %bb.f
  br i1 %2, label %bb.h, label %bb.i
end_hunk_20
begin_hunk_21_@llvm.memcpy.p0.p0.i64
!101 = !{!102, !72, i64 24}
!102 = !{!"_ZTSN4llvh11ms_demangle13ArrayTypeNodeE", !9, i64 0, !59, i64 16, !72, i64 24}
!103 = !{!102, !59, i64 16}
!104 = distinct !{!104, !32}
!105 = !{!35, !36, i64 16}
!106 = !{!107, !108, i64 24}
!107 = !{!"_ZTSN4llvh11ms_demangle18FunctionSymbolNodeE", !35, i64 0, !108, i64 24}
!108 = !{!"p1 _ZTSN4llvh11ms_demangle21FunctionSignatureNodeE", !17, i64 0}
!109 = !{!110, !111, i64 24}
!110 = !{!"_ZTSN4llvh11ms_demangle18VariableSymbolNodeE", !35, i64 0, !111, i64 24, !72, i64 32}
!111 = !{!"_ZTSN4llvh11ms_demangle12StorageClassE", !5, i64 0}
!112 = !{!110, !72, i64 32}
!113 = !{!114, !75, i64 16}
!114 = !{!"_ZTSN4llvh11ms_demangle14CustomTypeNodeE", !9, i64 0, !75, i64 16}
!115 = !{!116, !59, i64 16}
!116 = !{!"_ZTSN4llvh11ms_demangle17QualifiedNameNodeE", !10, i64 0, !59, i64 16}
!117 = !{!118, !4, i64 24}
!118 = !{!"_ZTSN4llvh11ms_demangle27RttiBaseClassDescriptorNodeE", !58, i64 0, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36}
!119 = !{!118, !4, i64 28}
!120 = !{!118, !4, i64 32}
!121 = !{!118, !4, i64 36}
!122 = !{!123, !18, i64 24}
!123 = !{!"_ZTSN4llvh11ms_demangle24VcallThunkIdentifierNodeE", !58, i64 0, !18, i64 24}
!124 = !{!125, !12, i64 32}
!125 = !{!"_ZTSN4llvh11ms_demangle22SpecialTableSymbolNodeE", !35, i64 0, !36, i64 24, !12, i64 32}
!126 = !{!125, !36, i64 24}
!127 = distinct !{!127, !32}
end_hunk_21
