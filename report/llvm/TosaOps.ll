Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TosaOps?download=true
inline.NumInlined: 86712
inline.NumDeleted: 28499
loop-unroll.NumCompletelyUnrolled: 97
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZN4mlir4tosa11TosaDialectD2Ev:bb.a

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4tosa11TosaDialectD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4mlir4tosa11TosaDialectD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #30
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4tosa21QueryProfileInterface11getProfilesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !630  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !90
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.b, ptr noundef %i.c) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4tosa23QueryExtensionInterface13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.4") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !634  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !90
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.4") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.b, ptr noundef %i.c) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4mlir4tosa19stringifyBlockShapeENS0_10BlockShapeE(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %cond = icmp eq i32 %0, 32                      ; 2 uses
  %. = select i1 %cond, i64 14, i64 0
  %.str..str.1 = select i1 %cond, ptr @.str, ptr @.str.1
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.str..str.1, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %., 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294967329) i64 @_ZN4mlir4tosa19symbolizeBlockShapeEN4llvm9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #6 {
bb.a:
  %.not.i.i.i.i = icmp eq i64 %1, 14
  br i1 %.not.i.i.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa10BlockShapeEES5_E4CaseENS_13StringLiteralES5_.exit

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.a
  %i.a = load i64, ptr %0, align 1
  %i.b = xor i64 %i.a, 5211613970654252098
  %i.c = getelementptr i8, ptr %0, i64 6
  %i.d = load i64, ptr %i.c, align 1
  %i.e = xor i64 %i.d, 3617339677012478035
  %i.f = or i64 %i.b, %i.e
  %i.g = icmp ne i64 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %.not.i.i = icmp eq i32 %i.h, 0
  %i.i = select i1 %.not.i.i, i64 4294967328, i64 0
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa10BlockShapeEES5_E4CaseENS_13StringLiteralES5_.exit

_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa10BlockShapeEES5_E4CaseENS_13StringLiteralES5_.exit: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %bb.a
  %.sroa.8.0 = phi i64 [ 0, %bb.a ], [ %i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ]
  ret i64 %.sroa.8.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i64 32, 4294967329) i64 @_ZN4mlir4tosa19symbolizeBlockShapeEj(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %cond = icmp eq i32 %0, 32
  %.sroa.0.0.insert.insert = select i1 %cond, i64 4294967328, i64 32
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4mlir4tosa16stringifyProfileENS0_7ProfileE(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i32 %0, 3
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvm10interleaveIPKN4mlir4tosa7ProfileEZNS_15interleaveCommaINS_8ArrayRefIS3_EENS1_10AsmPrinterES4_EEvRKT_RT0_EUlRS4_E_ZNS_10interleaveIS8_SG_S9_S4_EEvSC_RT1_SD_RKNS_9StringRefEEUlvE_vEEvSA_SA_SD_SI_.2374, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i32 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvm10interleaveIPKN4mlir4tosa7ProfileEZNS_15interleaveCommaINS_8ArrayRefIS3_EENS1_10AsmPrinterES4_EEvRKT_RT0_EUlRS4_E_ZNS_10interleaveIS8_SG_S9_S4_EEvSC_RT1_SD_RKNS_9StringRefEEUlvE_vEEvSA_SA_SD_SI_.2375, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.5.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %switch.load2, %switch.lookup ], [ @.str.1, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294967299) i64 @_ZN4mlir4tosa16symbolizeProfileEN4llvm9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #6 {
bb.a:
  switch i64 %1, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa7ProfileEES5_E4CaseENS_13StringLiteralES5_.exit21 [
    i64 7, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 6, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i8
    i64 4, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i17
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = xor i32 %i.a, 1601139312
  %i.c = getelementptr i8, ptr %0, i64 3
  %i.d = load i32, ptr %i.c, align 1
  %i.e = xor i32 %i.d, 1953392991
  %i.f = or i32 %i.b, %i.e
  %i.g = icmp ne i32 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa7ProfileEES5_E4CaseENS_13StringLiteralES5_.exit21, label %.thread62

_ZN4llvmneENS_9StringRefES0_.exit.i.i8:           ; preds = %bb.a
  %i.i = load i32, ptr %0, align 1
  %i.j = xor i32 %i.i, 1601139312
  %i.k = getelementptr i8, ptr %0, i64 4
  %i.l = load i16, ptr %i.k, align 1
  %i.m = zext i16 %i.l to i32
  %i.n = xor i32 %i.m, 28774
  %i.o = or i32 %i.j, %i.n
  %i.p = icmp ne i32 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %.not.i.i10 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i10, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa7ProfileEES5_E4CaseENS_13StringLiteralES5_.exit21, label %.thread62

.thread62:                                        ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa7ProfileEES5_E4CaseENS_13StringLiteralES5_.exit21

_ZN4llvmneENS_9StringRefES0_.exit.i.i17:          ; preds = %bb.a
  %i.r = load i32, ptr %0, align 1
  %i.s = icmp ne i32 %i.r, 1701736302
  %i.t = zext i1 %i.s to i32
  %.not.i.i19 = icmp eq i32 %i.t, 0
  %i.u = select i1 %.not.i.i19, i64 4294967296, i64 0
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa7ProfileEES5_E4CaseENS_13StringLiteralES5_.exit21

_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa7ProfileEES5_E4CaseENS_13StringLiteralES5_.exit21: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i17, %bb.a, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8, %.thread62, %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %.sroa.14.2 = phi i64 [ 0, %bb.a ], [ 4294967298, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8 ], [ %i.u, %_ZN4llvmneENS_9StringRefES0_.exit.i.i17 ], [ 4294967297, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 0, %.thread62 ]
  ret i64 %.sroa.14.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 4294967299) i64 @_ZN4mlir4tosa16symbolizeProfileEj(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i32 %0, 3
  %switch.idx.cast = zext i32 %0 to i64
  %switch.offset = or disjoint i64 %switch.idx.cast, 4294967296
  %.sroa.4.0 = select i1 %i.a, i64 %switch.offset, i64 0
  ret i64 %.sroa.4.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4mlir4tosa18stringifyExtensionENS0_9ExtensionE(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i32 %0, 23
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvm10interleaveIPKN4mlir4tosa9ExtensionEZNS_15interleaveCommaINS_8ArrayRefIS3_EENS1_10AsmPrinterES4_EEvRKT_RT0_EUlRS4_E_ZNS_10interleaveIS8_SG_S9_S4_EEvSC_RT1_SD_RKNS_9StringRefEEUlvE_vEEvSA_SA_SD_SI_.2377, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i32 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvm10interleaveIPKN4mlir4tosa9ExtensionEZNS_15interleaveCommaINS_8ArrayRefIS3_EENS1_10AsmPrinterES4_EEvRKT_RT0_EUlRS4_E_ZNS_10interleaveIS8_SG_S9_S4_EEvSC_RT1_SD_RKNS_9StringRefEEUlvE_vEEvSA_SA_SD_SI_.2378, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.25.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %switch.load2, %switch.lookup ], [ @.str.1, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.25.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294967319) i64 @_ZN4mlir4tosa18symbolizeExtensionEN4llvm9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #6 {
bb.a:
  switch i64 %1, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit201 [
    i64 4, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 5, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i8
    i64 7, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i35
    i64 3, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i53
    i64 8, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i62
    i64 11, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i71
    i64 12, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i89
    i64 9, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i125
    i64 10, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i152
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = icmp ne i32 %i.a, 1701736302
  %i.c = zext i1 %i.b to i32
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit201, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i17

_ZN4llvmneENS_9StringRefES0_.exit.i.i8:           ; preds = %bb.a
  %i.d = load i32, ptr %0, align 1
  %i.e = xor i32 %i.d, 829714025
  %i.f = getelementptr i8, ptr %0, i64 4
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = xor i32 %i.h, 54
  %i.j = or i32 %i.e, %i.i
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %.not.i.i10 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i10, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit201, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i116

_ZN4llvmneENS_9StringRefES0_.exit.i.i17:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %i.m = load i32, ptr %0, align 1
  %i.n = icmp ne i32 %i.m, 880045673
  %i.o = zext i1 %i.n to i32
  %.not.i.i19 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i19, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit201, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i26

_ZN4llvmneENS_9StringRefES0_.exit.i.i26:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i17
  %i.p = load i32, ptr %0, align 1
  %i.q = icmp ne i32 %i.p, 909207138
  %i.r = zext i1 %i.q to i32
  %.not.i.i28 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i28, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit201, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i107

_ZN4llvmneENS_9StringRefES0_.exit.i.i35:          ; preds = %bb.a
  %i.s = load i32, ptr %0, align 1
  %i.t = xor i32 %i.s, 1698197606
  %i.u = getelementptr i8, ptr %0, i64 3
  %i.v = load i32, ptr %i.u, align 1
  %i.w = xor i32 %i.v, 862794853
  %i.x = or i32 %i.t, %i.w
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %.not.i.i37 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i37, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit201, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i44

_ZN4llvmneENS_9StringRefES0_.exit.i.i44:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i35
  %i.aa = load i32, ptr %0, align 1
  %i.ab = xor i32 %i.aa, 1698197606
  %i.ac = getelementptr i8, ptr %0, i64 3
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = xor i32 %i.ad, 846017893
  %i.af = or i32 %i.ab, %i.ae
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %.not.i.i46 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i46, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit201, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i98

_ZN4llvmneENS_9StringRefES0_.exit.i.i53:          ; preds = %bb.a
  %i.ai = load i16, ptr %0, align 1
  %i.aj = xor i16 %i.ai, 26214
  %i.ak = getelementptr i8, ptr %0, i64 2
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i16
  %i.an = xor i16 %i.am, 116
  %i.ao = or i16 %i.aj, %i.an
  %i.ap = icmp ne i16 %i.ao, 0
  %i.aq = zext i1 %i.ap to i32
  %.not.i.i55 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i55, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit201, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit147.thread706.thread

_ZN4llvmneENS_9StringRefES0_.exit.i.i62:          ; preds = %bb.a
  %i.ar = load i64, ptr %0, align 1
  %i.as = icmp ne i64 %i.ar, 7308324465835925878
  %i.at = zext i1 %i.as to i32
  %.not.i.i64 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i64, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit201, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit147.thread706.thread

_ZN4llvmneENS_9StringRefES0_.exit.i.i71:          ; preds = %bb.a
  %i.au = load i64, ptr %0, align 1
  %i.av = xor i64 %i.au, 7380396426723749731
  %i.aw = getelementptr i8, ptr %0, i64 3
  %i.ax = load i64, ptr %i.aw, align 1
  %i.ay = xor i64 %i.ax, 8606216600090014324
  %i.az = or i64 %i.av, %i.ay
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %.not.i.i73 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i73, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit201, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i80

_ZN4llvmneENS_9StringRefES0_.exit.i.i80:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i71
  %i.bc = load i64, ptr %0, align 1
  %i.bd = xor i64 %i.bc, 8030592601737752420
  %i.be = getelementptr i8, ptr %0, i64 3
  %i.bf = load i64, ptr %i.be, align 1
  %i.bg = xor i64 %i.bf, 7236850772752034914
  %i.bh = or i64 %i.bd, %i.bg
  %i.bi = icmp ne i64 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %.not.i.i82 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i82, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit201, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit147.thread706.thread

_ZN4llvmneENS_9StringRefES0_.exit.i.i89:          ; preds = %bb.a
  %i.bk = load i64, ptr %0, align 1
  %i.bl = xor i64 %i.bk, 8247326087905111657
  %i.bm = getelementptr i8, ptr %0, i64 8
  %i.bn = load i32, ptr %i.bm, align 1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = xor i64 %i.bo, 1684960623
  %i.bq = or i64 %i.bl, %i.bp
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = zext i1 %i.br to i32
  %.not.i.i91 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i91, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit201, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit147.thread706.thread

_ZN4llvmneENS_9StringRefES0_.exit.i.i98:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i44
  %i.bt = load i32, ptr %0, align 1
  %i.bu = xor i32 %i.bt, 1634629988
  %i.bv = getelementptr i8, ptr %0, i64 3
  %i.bw = load i32, ptr %i.bv, align 1
  %i.bx = xor i32 %i.bw, 1667853665
  %i.by = or i32 %i.bu, %i.bx
  %i.bz = icmp ne i32 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %.not.i.i100 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i100, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit201, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i197

_ZN4llvmneENS_9StringRefES0_.exit.i.i107:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i26
  %i.cb = load i32, ptr %0, align 1
  %i.cc = icmp ne i32 %i.cb, 1885763693
  %i.cd = zext i1 %i.cc to i32
  %.not.i.i109 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i109, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit201, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit147.thread706.thread

_ZN4llvmneENS_9StringRefES0_.exit.i.i116:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i8
  %i.ce = load i32, ptr %0, align 1
  %i.cf = xor i32 %i.ce, 913600105
  %i.cg = getelementptr i8, ptr %0, i64 4
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = zext i8 %i.ch to i32
  %i.cj = xor i32 %i.ci, 52
  %i.ck = or i32 %i.cf, %i.cj
  %i.cl = icmp ne i32 %i.ck, 0
  %i.cm = zext i1 %i.cl to i32
  %.not.i.i118 = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i118, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit201, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i134

_ZN4llvmneENS_9StringRefES0_.exit.i.i125:         ; preds = %bb.a
  %i.cn = load i64, ptr %0, align 1
  %i.co = xor i64 %i.cn, 7957688328145762413
  %i.cp = getelementptr i8, ptr %0, i64 8
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = zext i8 %i.cq to i64
  %i.cs = xor i64 %i.cr, 118
  %i.ct = or i64 %i.co, %i.cs
  %i.cu = icmp ne i64 %i.ct, 0
  %i.cv = zext i1 %i.cu to i32
  %.not.i.i127 = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i127, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit201, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i143

_ZN4llvmneENS_9StringRefES0_.exit.i.i134:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i116
  %i.cw = load i32, ptr %0, align 1
  %i.cx = xor i32 %i.cw, 1885431923
  %i.cy = getelementptr i8, ptr %0, i64 4
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cz to i32
  %i.db = xor i32 %i.da, 101
  %i.dc = or i32 %i.cx, %i.db
  %i.dd = icmp ne i32 %i.dc, 0
  %i.de = zext i1 %i.dd to i32
  %.not.i.i136 = icmp eq i32 %i.de, 0
  br i1 %.not.i.i136, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit201, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit147.thread706.thread

_ZN4llvmneENS_9StringRefES0_.exit.i.i143:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i125
  %i.df = load i64, ptr %0, align 1
  %i.dg = xor i64 %i.df, 8029194035847460973
  %i.dh = getelementptr i8, ptr %0, i64 8
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = zext i8 %i.di to i64
  %i.dk = xor i64 %i.dj, 110
  %i.dl = or i64 %i.dg, %i.dk
  %i.dm = icmp ne i64 %i.dl, 0
  %i.dn = zext i1 %i.dm to i32
  %.not.i.i145 = icmp eq i32 %i.dn, 0
  br i1 %.not.i.i145, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit201, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit147.thread706.thread

_ZN4llvmneENS_9StringRefES0_.exit.i.i152:         ; preds = %bb.a
  %i.do = load i64, ptr %0, align 1
  %i.dp = xor i64 %i.do, 3631366331902687341
  %i.dq = getelementptr i8, ptr %0, i64 8
  %i.dr = load i16, ptr %i.dq, align 1
  %i.ds = zext i16 %i.dr to i64
  %i.dt = xor i64 %i.ds, 12653
  %i.du = or i64 %i.dp, %i.dt
  %i.dv = icmp ne i64 %i.du, 0
  %i.dw = zext i1 %i.dv to i32
  %.not.i.i154 = icmp eq i32 %i.dw, 0
  br i1 %.not.i.i154, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4tosa9ExtensionEES5_E4CaseENS_13StringLiteralES5_.exit201, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i161
end_hunk_0
