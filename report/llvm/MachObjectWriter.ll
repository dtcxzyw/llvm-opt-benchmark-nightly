Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachObjectWriter?download=true
inline.NumInlined: 1835
inline.NumDeleted: 881
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm16MachObjectWriter23computeSectionAddressesERKNS_11MCAssemblerE:bb.a
  %i.dl = shl nuw i64 1, %i.dk                    ; 2 uses
  %i.dm = add i64 %i.cx, -1
  %i.dn = add i64 %i.dm, %i.dl
  %i.do = sub i64 0, %i.dl
  %i.dp = and i64 %i.dn, %i.do
  %i.dq = sub i64 %i.dp, %i.cx
  br label %_ZNK4llvm16MachObjectWriter14getPaddingSizeERKNS_11MCAssemblerEPKNS_9MCSectionE.exit

_ZNK4llvm16MachObjectWriter14getPaddingSizeERKNS_11MCAssemblerEPKNS_9MCSectionE.exit: ; preds = %_ZNK4llvm16MachObjectWriter17getSectionAddressEPKNS_9MCSectionE.exit.i, %bb.p, %bb.q
  %.1.i = phi i64 [ 0, %_ZNK4llvm16MachObjectWriter17getSectionAddressEPKNS_9MCSectionE.exit.i ], [ %i.dq, %bb.q ], [ 0, %bb.p ]
  %i.dr = add i64 %i.bm, %.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ds = getelementptr inbounds nuw i8, ptr %.02654, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ds, %i.ai
  br i1 %.not, label %._crit_edge57, label %bb.l
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16MachObjectWriter24executePostLayoutBindingEv(ptr noundef nonnull align 8 dereferenceable(2064) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  tail call void @_ZN4llvm16MachObjectWriter23computeSectionAddressesERKNS_11MCAssemblerE(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 8 dereferenceable(400) %i.b)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !136
  tail call void @_ZN4llvm16MachObjectWriter19bindIndirectSymbolsERNS_11MCAssemblerE(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 8 dereferenceable(400) %i.c)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16MachObjectWriter38isSymbolRefDifferenceFullyResolvedImplERKNS_8MCSymbolERKNS_10MCFragmentEbb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2064) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #0 align 2 {
bb.a:
  br i1 %3, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 3
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %.lr.ph.i, label %_ZNK4llvm16MachObjectWriter17findAliasedSymbolERKNS_8MCSymbolE.exit

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.0916.i = phi ptr [ %i.i, %bb.c ], [ %1, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0916.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134  ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !163
  %.not.i = icmp eq i8 %i.g, 2
  br i1 %.not.i, label %bb.c, label %_ZNK4llvm16MachObjectWriter17findAliasedSymbolERKNS_8MCSymbolE.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !215  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, 3
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %.lr.ph.i, label %_ZNK4llvm16MachObjectWriter17findAliasedSymbolERKNS_8MCSymbolE.exit, !llvm.loop !6

_ZNK4llvm16MachObjectWriter17findAliasedSymbolERKNS_8MCSymbolE.exit: ; preds = %.lr.ph.i, %bb.c, %bb.b
  %.09.lcssa.i = phi ptr [ %1, %bb.b ], [ %i.i, %bb.c ], [ %.0916.i, %.lr.ph.i ] ; 7 uses
  %i.n = load ptr, ptr %.09.lcssa.i, align 8, !tbaa !141 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.d, label %_ZNK4llvm8MCSymbol10getSectionEv.exit

bb.d:                                             ; preds = %_ZNK4llvm16MachObjectWriter17findAliasedSymbolERKNS_8MCSymbolE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.09.lcssa.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !134
  %i.q = tail call noundef ptr @_ZNK4llvm6MCExpr22findAssociatedFragmentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #19 ; 2 uses
  store ptr %i.q, ptr %.09.lcssa.i, align 8, !tbaa !141
  br label %_ZNK4llvm8MCSymbol10getSectionEv.exit

_ZNK4llvm8MCSymbol10getSectionEv.exit:            ; preds = %_ZNK4llvm16MachObjectWriter17findAliasedSymbolERKNS_8MCSymbolE.exit, %bb.d
  %i.r = phi ptr [ %i.q, %bb.d ], [ %i.n, %_ZNK4llvm16MachObjectWriter17findAliasedSymbolERKNS_8MCSymbolE.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !153  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !153  ; 2 uses
  br i1 %4, label %bb.e, label %bb.k

bb.e:                                             ; preds = %_ZNK4llvm8MCSymbol10getSectionEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !137
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !206
  %i.aa = icmp eq i32 %i.z, 16777223
  br i1 %i.aa, label %bb.k, label %_ZNK4llvm8MCSymbol11isInSectionEv.exit

_ZNK4llvm8MCSymbol11isInSectionEv.exit:           ; preds = %bb.e
  %i.ab = load ptr, ptr @_ZN4llvm8MCSymbol22AbsolutePseudoFragmentE, align 8
  %i.ac = icmp ne ptr %i.r, %i.ab
  %.not = icmp eq ptr %i.t, %i.v
  %or.cond = and i1 %.not, %i.ac
  br i1 %or.cond, label %bb.f, label %.thread

bb.f:                                             ; preds = %_ZNK4llvm8MCSymbol11isInSectionEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.lcssa.i, i64 8
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = and i32 %i.ae, 8
  %.not33 = icmp eq i32 %i.af, 0
  br i1 %.not33, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ag = tail call noundef ptr @_ZNK4llvm10MCFragment7getAtomEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #19
  %i.ah = load ptr, ptr %.09.lcssa.i, align 8, !tbaa !141 ; 2 uses
  %.not.i24 = icmp eq ptr %i.ah, null
  br i1 %.not.i24, label %bb.h, label %_ZNK4llvm8MCSymbol11getFragmentEv.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.lcssa.i, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !134
  %i.ak = tail call noundef ptr @_ZNK4llvm6MCExpr22findAssociatedFragmentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #19 ; 2 uses
  store ptr %i.ak, ptr %.09.lcssa.i, align 8, !tbaa !141
  br label %_ZNK4llvm8MCSymbol11getFragmentEv.exit

_ZNK4llvm8MCSymbol11getFragmentEv.exit:           ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.ak, %bb.h ], [ %i.ah, %bb.g ]
  %i.al = tail call noundef ptr @_ZNK4llvm10MCFragment7getAtomEv(ptr noundef nonnull align 8 dereferenceable(80) %.0.i) #19
  %.not19 = icmp eq ptr %i.ag, %i.al
  br i1 %.not19, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm8MCSymbol11getFragmentEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.an = load i8, ptr %i.am, align 1, !tbaa !240, !range !241, !noundef !199
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK4llvm8MCSymbol11getFragmentEv.exit, %bb.f
  br label %.thread

bb.k:                                             ; preds = %bb.e, %_ZNK4llvm8MCSymbol10getSectionEv.exit
  %.not20 = icmp eq ptr %i.t, %i.v
  br i1 %.not20, label %_ZNK4llvm8MCSymbol11getFragmentEv.exit28, label %.thread

_ZNK4llvm8MCSymbol11getFragmentEv.exit28:         ; preds = %bb.k
  %i.ap = tail call noundef ptr @_ZNK4llvm10MCFragment7getAtomEv(ptr noundef nonnull align 8 dereferenceable(80) %i.r) #19
  %i.aq = tail call noundef ptr @_ZNK4llvm10MCFragment7getAtomEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #19
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %_ZNK4llvm8MCSymbol11isInSectionEv.exit, %_ZNK4llvm8MCSymbol11getFragmentEv.exit28, %bb.k, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ false, %bb.k ], [ %i.ar, %_ZNK4llvm8MCSymbol11getFragmentEv.exit28 ], [ false, %_ZNK4llvm8MCSymbol11isInSectionEv.exit ], [ false, %bb.i ], [ true, %bb.j ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16MachObjectWriter22populateAddrSigSectionERNS_11MCAssemblerE(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(400) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.llvm::MachO::any_relocation_info", align 4 ; 5 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(2208) ptr @_ZNK4llvm14MCObjectWriter10getContextEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !382
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 696
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !390
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !137
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i8, ptr %i.h, align 8
  %i.j = trunc i8 %i.i to i1
  %i.k = select i1 %i.j, i32 100663296, i32 67108864
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !391  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !391  ; 2 uses
  %.not10 = icmp eq ptr %i.m, %i.o
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.06.011 = phi ptr [ %i.m, %.lr.ph ], [ %i.u, %bb.d ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.06.011, align 8, !tbaa !226 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8
  %i.t = and i32 %i.s, 32
  %.not9 = icmp eq i32 %i.t, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store i32 0, ptr %2, align 4, !tbaa !392
  store i32 %i.k, ptr %i.p, align 4, !tbaa !393
  call void @_ZN4llvm16MachObjectWriter13addRelocationEPKNS_8MCSymbolEPKNS_9MCSectionERNS_5MachO19any_relocation_infoE(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull %i.q, ptr noundef %i.e, ptr noundef nonnull align 4 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.011, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.o
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16MachObjectWriter13addRelocationEPKNS_8MCSymbolEPKNS_9MCSectionERNS_5MachO19any_relocation_infoE(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !156
  %i.b = load i64, ptr %3, align 4                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_9MCSectionESt6vectorINS_16MachObjectWriter12RelAndSymbolESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSE_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.d, 0 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !394  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.g, align 8, !tbaa !226
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  %4 = load ptr, ptr %i.f, align 8, !tbaa !394
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.j, ptr %i.f, align 8, !tbaa !394
  br label %_ZNSt6vectorIN4llvm16MachObjectWriter12RelAndSymbolESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !31   ; 5 uses
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775792
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorIN4llvm16MachObjectWriter12RelAndSymbolESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #21
  unreachable

_ZNKSt6vectorIN4llvm16MachObjectWriter12RelAndSymbolESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = call i64 @llvm.umin.i64(i64 %i.q, i64 576460752303423487)
  %i.t = select i1 %i.r, i64 576460752303423487, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 4
  %i.v = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #22 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n ; 2 uses
  store ptr %1, ptr %i.w, align 8, !tbaa !226
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx4, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4llvm16MachObjectWriter12RelAndSymbolESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4llvm16MachObjectWriter12RelAndSymbolESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.v, %_ZNKSt6vectorIN4llvm16MachObjectWriter12RelAndSymbolESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.k, %_ZNKSt6vectorIN4llvm16MachObjectWriter12RelAndSymbolESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !495, !alias.scope !496
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm16MachObjectWriter12RelAndSymbolESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !494

_ZNSt6vectorIN4llvm16MachObjectWriter12RelAndSymbolESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4llvm16MachObjectWriter12RelAndSymbolESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorIN4llvm16MachObjectWriter12RelAndSymbolESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.y, %.lr.ph.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4llvm16MachObjectWriter12RelAndSymbolESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4llvm16MachObjectWriter12RelAndSymbolESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.m
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.ac) #18
  br label %_ZNSt6vectorIN4llvm16MachObjectWriter12RelAndSymbolESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4llvm16MachObjectWriter12RelAndSymbolESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN4llvm16MachObjectWriter12RelAndSymbolESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.v, ptr %i.e, align 8, !tbaa !31
  store ptr %i.z, ptr %i.f, align 8, !tbaa !394
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !32
  br label %_ZNSt6vectorIN4llvm16MachObjectWriter12RelAndSymbolESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4llvm16MachObjectWriter12RelAndSymbolESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4llvm16MachObjectWriter12RelAndSymbolESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN4llvm16MachObjectWriter11writeObjectEv(ptr noundef nonnull align 8 dereferenceable(2064) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i64, align 8                      ; 4 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %i.s = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"struct.llvm::MachO::any_relocation_info", align 4 ; 5 uses
  %2 = alloca %"class.llvm::SmallString.274", align 8 ; 7 uses
  %3 = alloca %"class.llvm::raw_svector_ostream", align 8 ; 13 uses
  %i.t = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.u = alloca ptr, align 8                      ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !136  ; 12 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 24 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !198, !nonnull !199, !align !200 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !202
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef i64 %i.ab(ptr noundef nonnull align 8 dereferenceable(48) %i.y) #19, !inline_history !5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !211
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !528
  %i.ah = tail call noundef nonnull align 8 dereferenceable(2208) ptr @_ZNK4llvm14MCObjectWriter10getContextEv(ptr noundef nonnull align 8 dereferenceable(2064) %0) #19
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 168
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !382
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 696
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !390
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !137
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i8, ptr %i.ao, align 8
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = select i1 %i.aq, i32 100663296, i32 67108864
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !391 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !391 ; 2 uses
  %.not10.i = icmp eq ptr %i.at, %i.av
  br i1 %.not10.i, label %_ZN4llvm16MachObjectWriter22populateAddrSigSectionERNS_11MCAssemblerE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.06.011.i = phi ptr [ %i.at, %.lr.ph.i ], [ %i.bb, %bb.d ] ; 2 uses
  %i.ax = load ptr, ptr %.sroa.06.011.i, align 8, !tbaa !226 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = and i32 %i.az, 32
  %.not9.i = icmp eq i32 %i.ba, 0
  br i1 %.not9.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store i32 0, ptr %1, align 4, !tbaa !392
  store i32 %i.ar, ptr %i.aw, align 4, !tbaa !393
  call void @_ZN4llvm16MachObjectWriter13addRelocationEPKNS_8MCSymbolEPKNS_9MCSectionERNS_5MachO19any_relocation_infoE(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull %i.ax, ptr noundef %i.al, ptr noundef nonnull align 4 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bb, %i.av
  br i1 %.not.i, label %_ZN4llvm16MachObjectWriter22populateAddrSigSectionERNS_11MCAssemblerE.exit, label %bb.b

_ZN4llvm16MachObjectWriter22populateAddrSigSectionERNS_11MCAssemblerE.exit: ; preds = %bb.d, %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  call void @_ZN4llvm16MachObjectWriter18computeSymbolTableERNS_11MCAssemblerERSt6vectorINS0_14MachSymbolDataESaIS4_EES7_S7_(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 8 dereferenceable(400) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !53
  %.not.i243 = icmp eq i32 %i.bg, 0
  br i1 %.not.i243, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm16MachObjectWriter22populateAddrSigSectionERNS_11MCAssemblerE.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.bi, ptr %2, align 8, !tbaa !529
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 2, ptr %i.bk, align 8, !tbaa !530
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.bl, align 8, !tbaa !531
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 1, ptr %i.bm, align 4, !tbaa !532
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !202
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %2, ptr %i.bo, align 8, !tbaa !534
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !58 ; 2 uses
  %i.bq = load i32, ptr %i.bf, align 8, !tbaa !53 ; 2 uses
  %i.br = zext i32 %i.bq to i64
  %.idx = mul nuw nsw i64 %i.br, 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx
  %.not432 = icmp eq i32 %i.bq, 0
  br i1 %.not432, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 3 uses
  br label %bb.j

._crit_edge:                                      ; preds = %bb.j, %bb.e
  %i.bu = call noundef nonnull align 8 dereferenceable(2208) ptr @_ZNK4llvm14MCObjectWriter10getContextEv(ptr noundef nonnull align 8 dereferenceable(112) %0) #19
  %i.bv = call noundef ptr @_ZN4llvm9MCContext15getMachOSectionENS_9StringRefES1_jjNS_11SectionKindEPKc(ptr noundef nonnull align 8 dereferenceable(2208) %i.bu, ptr nonnull @.str.8, i64 6, ptr nonnull @.str.9, i64 12, i32 noundef 0, i32 noundef 0, i32 0, ptr noundef null) #19
  %i.bw = load ptr, ptr %i.bo, align 8, !tbaa !537, !nonnull !199, !align !200 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !529 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !538 ; 3 uses
  %i.ca = load ptr, ptr %i.bv, align 8, !tbaa !539
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !541 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !153
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 160
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !529
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 44
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !542
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ci ; 2 uses
  %i.ck = icmp sgt i64 %i.bz, 1
  br i1 %i.ck, label %bb.f, label %bb.g, !prof !157

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %i.bx, i64 %i.bz, i1 false)
  br label %_ZN4llvm4copyINS_9StringRefEPcEET0_OT_S3_.exit

bb.g:                                             ; preds = %._crit_edge
  %i.cl = icmp eq i64 %i.bz, 1
  br i1 %i.cl, label %bb.h, label %_ZN4llvm4copyINS_9StringRefEPcEET0_OT_S3_.exit

bb.h:                                             ; preds = %bb.g
  %i.cm = load i8, ptr %i.bx, align 1, !tbaa !134
  store i8 %i.cm, ptr %i.cj, align 1, !tbaa !134
  br label %_ZN4llvm4copyINS_9StringRefEPcEET0_OT_S3_.exit

_ZN4llvm4copyINS_9StringRefEPcEET0_OT_S3_.exit:   ; preds = %bb.f, %bb.g, %bb.h
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.cn = load ptr, ptr %2, align 8, !tbaa !529   ; 2 uses
end_hunk_0
