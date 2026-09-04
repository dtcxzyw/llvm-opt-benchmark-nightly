Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ELF_aarch64?download=true
inline.NumInlined: 4803
inline.NumDeleted: 2203
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm7jitlink9LinkGraph16addDefinedSymbolERNS0_5BlockEmNS_9StringRefEmNS0_7LinkageENS0_5ScopeEbb
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm7jitlink9LinkGraph16addDefinedSymbolERNS0_5BlockEmNS_9StringRefEmNS0_7LinkageENS0_5ScopeEbb(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %2, ptr %3, i64 %4, i64 noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i1 noundef zeroext %8, i1 noundef zeroext %9) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !236
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %10, ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr %3, i64 %4)
  %i.d = load ptr, ptr %10, align 8, !tbaa !180
  store ptr null, ptr %10, align 8, !tbaa !180
  %i.e = load ptr, ptr %0, align 8, !tbaa !199    ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = add i64 %i.f, 32                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !200
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %bb.c, !prof !154

bb.b:                                             ; preds = %bb.a
  %i.k = inttoptr i64 %i.g to ptr
  store ptr %i.k, ptr %0, align 8, !tbaa !199
  br label %_ZN4llvm7jitlink9LinkGraph16addDefinedSymbolERNS0_5BlockEmNS_3orc15SymbolStringPtrEmNS0_7LinkageENS0_5ScopeEbb.exit

bb.c:                                             ; preds = %bb.a
  %i.l = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(312) %0, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZN4llvm7jitlink9LinkGraph16addDefinedSymbolERNS0_5BlockEmNS_3orc15SymbolStringPtrEmNS0_7LinkageENS0_5ScopeEbb.exit

_ZN4llvm7jitlink9LinkGraph16addDefinedSymbolERNS0_5BlockEmNS_3orc15SymbolStringPtrEmNS0_7LinkageENS0_5ScopeEbb.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.l, %bb.c ] ; 6 uses
  store ptr %i.d, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !180
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 8
  store ptr %1, ptr %i.m, align 8, !tbaa !187
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.o = and i64 %2, 144115188075855871
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 24
  store i64 %5, ptr %i.p, align 8, !tbaa !219
  %i.q = and i8 %6, 1
  %i.r = zext nneg i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 57
  %i.t = and i8 %7, 3
  %i.u = zext nneg i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 58
  %i.w = or disjoint i64 %i.v, %i.s
  %i.x = select i1 %9, i64 1152921504606846976, i64 0
  %i.y = select i1 %8, i64 2305843009213693952, i64 0
  %i.z = or disjoint i64 %i.w, %i.x
  %i.aa = or disjoint i64 %i.z, %i.y
  %i.ab = or disjoint i64 %i.aa, %i.o
  store i64 %i.ab, ptr %i.n, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !208
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr %.0.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !181
  %i.af = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !1586 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ag = load ptr, ptr %10, align 8, !tbaa !126  ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %notsub.i.i.i = add i64 %i.ah, -1
  %i.ai = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.ai, label %bb.d, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

bb.d:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph16addDefinedSymbolERNS0_5BlockEmNS_3orc15SymbolStringPtrEmNS0_7LinkageENS0_5ScopeEbb.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit:           ; preds = %_ZN4llvm7jitlink9LinkGraph16addDefinedSymbolERNS0_5BlockEmNS_3orc15SymbolStringPtrEmNS0_7LinkageENS0_5ScopeEbb.exit, %bb.d
  ret ptr %.0.i.i.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm7jitlink19ELFLinkGraphBuilderINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEE24getSymbolLinkageAndScopeERKNS2_12Elf_Sym_ImplIS5_EENS_9StringRefE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.334") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 1 dereferenceable(24) %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i8, ptr %i.a, align 1, !tbaa !302   ; 2 uses
  %i.c = lshr i8 %i.b, 4                          ; 5 uses
  %i.d = icmp ult i8 %i.b, -80
  br i1 %i.d, label %switch.hole_check, label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %switch.hole_check, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %.sroa.0128.0.insert.ext = zext nneg i8 %i.c to i64
  %i.e = inttoptr i64 %.sroa.0128.0.insert.ext to ptr
  store ptr @.str.74, ptr %7, align 8, !alias.scope !1623
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.e, ptr %i.f, align 8, !alias.scope !1623
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 3, ptr %i.g, align 8, !tbaa !261, !alias.scope !1623
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 10, ptr %i.h, align 1, !tbaa !262, !alias.scope !1623
  store ptr %7, ptr %6, align 8, !alias.scope !1624
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.75, ptr %i.i, align 8, !alias.scope !1624
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.j, align 8, !tbaa !261, !alias.scope !1624
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.k, align 1, !tbaa !262, !alias.scope !1624
  store ptr %6, ptr %5, align 8, !alias.scope !1625
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.l, align 8, !alias.scope !1625
  %.sroa.2.0..sroa_idx.i.i.i36 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i.i.i36, align 8, !tbaa !45, !alias.scope !1625
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %i.m, align 8, !tbaa !261, !alias.scope !1625
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 5, ptr %i.n, align 1, !tbaa !262, !alias.scope !1625
  %i.o = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #19 ; 2 uses
  %i.p = extractvalue { i32, ptr } %i.o, 0
  %i.q = extractvalue { i32, ptr } %i.o, 1
  %i.r = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21, !noalias !1626 ; 2 uses
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.r, ptr noundef nonnull align 8 dereferenceable(34) %5, i32 %i.p, ptr %i.q) #19, !noalias !1626
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8
  %i.u = or i8 %i.t, 1
  store i8 %i.u, ptr %i.s, align 8
  store ptr %i.r, ptr %0, align 8, !tbaa !30, !alias.scope !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.d

switch.hole_check:                                ; preds = %bb.a
  %switch.maskindex = zext nneg i8 %i.c to i16
  %switch.shifted = lshr i16 1031, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %_ZN4llvm5ErrorD2Ev.exit

switch.lookup:                                    ; preds = %switch.hole_check
  %i.v = zext nneg i8 %i.c to i64
  %switch.gep142 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN4llvm7jitlink19ELFLinkGraphBuilderINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEE24getSymbolLinkageAndScopeERKNS2_12Elf_Sym_ImplIS5_EENS_9StringRefE.36, i64 %i.v
  %i.w = zext nneg i8 %i.c to i64
  %switch.gep144 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvm7jitlink19ELFLinkGraphBuilderINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEE24getSymbolLinkageAndScopeERKNS2_12Elf_Sym_ImplIS5_EENS_9StringRefE.37, i64 %i.w
  %switch.load145 = load i8, ptr %switch.gep144, align 1
  %switch.ext = zext i8 %switch.load145 to i16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.y = load i8, ptr %i.x, align 1, !tbaa !1628
  %i.z = and i8 %i.y, 3
  switch i8 %i.z, label %bb.c [
    i8 1, label %_ZN4llvm5ErrorD2Ev.exit86
    i8 2, label %bb.b
  ]

bb.b:                                             ; preds = %switch.lookup
  %i.aa = zext nneg i8 %i.c to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN4llvm7jitlink19ELFLinkGraphBuilderINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEE24getSymbolLinkageAndScopeERKNS2_12Elf_Sym_ImplIS5_EENS_9StringRefE, i64 %i.aa
  br label %bb.c

_ZN4llvm5ErrorD2Ev.exit86:                        ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store ptr @.str.76, ptr %10, align 8, !alias.scope !1629
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.ab, align 8, !alias.scope !1629
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 3, ptr %i.ac, align 8, !tbaa !261, !alias.scope !1629
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 10, ptr %i.ad, align 1, !tbaa !262, !alias.scope !1629
  store ptr %10, ptr %9, align 8, !alias.scope !1630
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.75, ptr %i.ae, align 8, !alias.scope !1630
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 2, ptr %i.af, align 8, !tbaa !261, !alias.scope !1630
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 3, ptr %i.ag, align 1, !tbaa !262, !alias.scope !1630
  store ptr %9, ptr %8, align 8, !alias.scope !1631
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %3, ptr %i.ah, align 8, !alias.scope !1631
  %.sroa.2.0..sroa_idx.i.i.i81 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i.i.i81, align 8, !tbaa !45, !alias.scope !1631
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 2, ptr %i.ai, align 8, !tbaa !261, !alias.scope !1631
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 5, ptr %i.aj, align 1, !tbaa !262, !alias.scope !1631
  %i.ak = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #19 ; 2 uses
  %i.al = extractvalue { i32, ptr } %i.ak, 0
  %i.am = extractvalue { i32, ptr } %i.ak, 1
  %i.an = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21, !noalias !1632 ; 2 uses
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.an, ptr noundef nonnull align 8 dereferenceable(34) %8, i32 %i.al, ptr %i.am) #19, !noalias !1632
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8
  %i.aq = or i8 %i.ap, 1
  store i8 %i.aq, ptr %i.ao, align 8
  store ptr %i.an, ptr %0, align 8, !tbaa !30, !alias.scope !1633
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %switch.lookup
  %.1.in = phi ptr [ %switch.gep142, %switch.lookup ], [ %switch.gep, %bb.b ]
  %.1 = load i16, ptr %.1.in, align 2
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.1, %switch.ext
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 8
  %i.at = and i8 %i.as, -2
  store i8 %i.at, ptr %i.ar, align 8
  store i16 %.sroa.0.0.insert.insert.i, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4llvm5ErrorD2Ev.exit86, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6object27getExtendedSymbolTableIndexINS0_7ELFTypeILNS_10endiannessE1ELb1EEEEENS_8ExpectedIjEERKNT_3SymEjNS0_10DataRegionINS7_4WordEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.344") align 8 %0, ptr noundef nonnull align 1 dereferenceable(24) %1, i32 noundef %2, ptr noundef byval(%"struct.llvm::object::DataRegion") align 8 %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvm::Expected.364", align 8 ; 8 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !309
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.b

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %.sroa.092.0.insert.ext = zext i32 %2 to i64
  %i.b = inttoptr i64 %.sroa.092.0.insert.ext to ptr
  store ptr @.str.77, ptr %5, align 8, !alias.scope !1673
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.b, ptr %i.c, align 8, !alias.scope !1673
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 3, ptr %i.d, align 8, !tbaa !261, !alias.scope !1673
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 9, ptr %i.e, align 1, !tbaa !262, !alias.scope !1673
  store ptr %5, ptr %4, align 8, !alias.scope !1674
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.78, ptr %i.f, align 8, !alias.scope !1674
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.g, align 8, !tbaa !261, !alias.scope !1674
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.h, align 1, !tbaa !262, !alias.scope !1674
  %i.i = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21, !noalias !1675 ; 2 uses
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #19, !noalias !1675
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.i, ptr noundef nonnull align 8 dereferenceable(34) %4, i32 3, ptr nonnull %i.j) #19, !noalias !1675
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8
  %i.m = or i8 %i.l, 1
  store i8 %i.m, ptr %i.k, align 8
  store ptr %i.i, ptr %0, align 8, !tbaa !30, !alias.scope !1676
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.n = zext i32 %2 to i64                       ; 2 uses
  call void @_ZN4llvm6object10DataRegionINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEixEm(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.364") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8               ; 2 uses
  %i.q = trunc i8 %i.p to i1
  br i1 %i.q, label %_ZN4llvm5ErrorD2Ev.exit63, label %bb.d

_ZN4llvm5ErrorD2Ev.exit63:                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.r = inttoptr i64 %i.n to ptr
  store ptr @.str.79, ptr %9, align 8, !alias.scope !1677
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.r, ptr %i.s, align 8, !alias.scope !1677
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 3, ptr %i.t, align 8, !tbaa !261, !alias.scope !1677
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 9, ptr %i.u, align 1, !tbaa !262, !alias.scope !1677
  store ptr %9, ptr %8, align 8, !alias.scope !1678
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.80, ptr %i.v, align 8, !alias.scope !1678
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 2, ptr %i.w, align 8, !tbaa !261, !alias.scope !1678
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 3, ptr %i.x, align 1, !tbaa !262, !alias.scope !1678
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !1679)
  %i.y = load i64, ptr %6, align 8, !tbaa !30, !noalias !1679
  %i.z = inttoptr i64 %i.y to ptr
  store ptr null, ptr %6, align 8, !tbaa !30, !noalias !1679
  store ptr %i.z, ptr %11, align 8, !tbaa !91, !alias.scope !1679
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nofree noundef nonnull align 8 dereferenceable(8) %11) #19
  store ptr %8, ptr %7, align 8, !alias.scope !1680
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %10, ptr %i.aa, align 8, !alias.scope !1680
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 2, ptr %i.ab, align 8, !tbaa !261, !alias.scope !1680
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 4, ptr %i.ac, align 1, !tbaa !262, !alias.scope !1680
  %i.ad = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21, !noalias !1681 ; 2 uses
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #19, !noalias !1681
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.ad, ptr noundef nonnull align 8 dereferenceable(34) %7, i32 3, ptr nonnull %i.ae) #19, !noalias !1681
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8
  %i.ah = or i8 %i.ag, 1
  store i8 %i.ah, ptr %i.af, align 8
  store ptr %i.ad, ptr %0, align 8, !tbaa !30, !alias.scope !1682
  %i.ai = load ptr, ptr %10, align 8, !tbaa !43   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit63
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !45
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.an = load ptr, ptr %11, align 8, !tbaa !91   ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN4llvm5ErrorD2Ev.exit64, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.an) #19, !inline_history !0
  br label %_ZN4llvm5ErrorD2Ev.exit64

_ZN4llvm5ErrorD2Ev.exit64:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.pre = load i8, ptr %i.o, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8
  %i.au = and i8 %i.at, -2
  store i8 %i.au, ptr %i.as, align 8
  %.0.copyload.i.i.i.i = load i32, ptr %6, align 8
  store i32 %.0.copyload.i.i.i.i, ptr %0, align 8, !tbaa !55
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4llvm5ErrorD2Ev.exit64
  %i.av = phi i8 [ %i.p, %bb.d ], [ %.pre, %_ZN4llvm5ErrorD2Ev.exit64 ]
  %i.aw = trunc i8 %i.av to i1
  br i1 %i.aw, label %bb.f, label %_ZN4llvm8ExpectedINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr %6, align 8, !tbaa !30    ; 3 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZN4llvm8ExpectedINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.f
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax) #19, !inline_history !1672
  br label %_ZN4llvm8ExpectedINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit

_ZN4llvm8ExpectedINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit: ; preds = %bb.e, %bb.f, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8ExpectedINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4llvm7jitlink9LinkGraph15allocateContentENS_5TwineE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef byval(%"class.llvm::Twine") align 8 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallString.373", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !1684
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !1685
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 256, ptr %i.c, align 8, !tbaa !1686
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.e = load i8, ptr %i.d, align 1, !tbaa !262
  %.not.i.i = icmp eq i8 %i.e, 1
  br i1 %.not.i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !261
  switch i8 %i.g, label %bb.g [
    i8 1, label %_ZNK4llvm5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit
    i8 3, label %bb.c
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %bb.f
  ]
end_hunk_0
