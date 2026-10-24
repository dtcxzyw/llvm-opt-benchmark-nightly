Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LVCodeViewReader?download=true
inline.NumInlined: 7669
inline.NumDeleted: 2956
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm11logicalview16LVCodeViewReader24getFileNameForFileOffsetEjPKNS_3pdb11SymbolGroupE:bb.a
  %i.bz = load ptr, ptr %4, align 8, !tbaa !57, !noalias !853 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZN4llvm5ErrorD2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17: ; preds = %bb.l
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !58, !noalias !853
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #23
  br label %_ZN4llvm5ErrorD2Ev.exit20

_ZN4llvm5ErrorD2Ev.exit20:                        ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !853
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 8
  %i.cg = or i8 %i.cf, 1
  store i8 %i.cg, ptr %i.ce, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !854)
  %i.ch = load ptr, ptr %17, align 8, !tbaa !62, !noalias !854
  store ptr %i.ch, ptr %0, align 8, !tbaa !70, !alias.scope !854
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  %.pre45 = load i8, ptr %i.bo, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 8
  %i.ck = and i8 %i.cj, -2
  store i8 %i.ck, ptr %i.ci, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 16, i1 false), !tbaa.struct !69
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN4llvm5ErrorD2Ev.exit20
  %i.cl = phi i8 [ %i.bp, %bb.m ], [ %.pre45, %_ZN4llvm5ErrorD2Ev.exit20 ]
  %i.cm = trunc i8 %i.cl to i1
  br i1 %i.cm, label %bb.o, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit24

bb.o:                                             ; preds = %bb.n
  %i.cn = load ptr, ptr %16, align 8, !tbaa !70   ; 3 uses
  %.not.i.i22 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i22, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit24, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i23

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i23: ; preds = %bb.o
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cn) #21, !inline_history !3
  br label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit24

_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit24:     ; preds = %bb.n, %bb.o, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.p

bb.p:                                             ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit24, %_ZN4llvm5ErrorD2Ev.exit15
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !193 ; 8 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i25, label %_ZN4llvm22VarStreamArrayIteratorINS_8codeview17FileChecksumEntryENS_23VarStreamArrayExtractorIS2_EEED2Ev.exit29, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.cu = load atomic i64, ptr %i.ct acquire, align 8 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 4294967297
  %i.cw = trunc i64 %i.cu to i32                  ; 2 uses
  br i1 %i.cv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.ct, align 8, !tbaa !195
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !196
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #21, !inline_history !846
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #21, !inline_history !846
  br label %_ZN4llvm22VarStreamArrayIteratorINS_8codeview17FileChecksumEntryENS_23VarStreamArrayExtractorIS2_EEED2Ev.exit29

bb.s:                                             ; preds = %bb.q
  %i.de = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i26 = icmp eq i8 %i.de, 0
  br i1 %.not.i.i.i.i.i26, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = add nsw i32 %i.cw, -1
  store i32 %i.df, ptr %i.ct, align 8, !tbaa !197
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i27

bb.u:                                             ; preds = %bb.s
  %i.dg = atomicrmw volatile add ptr %i.ct, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i27

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i27: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i28 = phi i32 [ %i.cw, %bb.t ], [ %i.dg, %bb.u ]
  %i.dh = icmp eq i32 %.0.i.i.i.i.i.i28, 1
  br i1 %i.dh, label %bb.v, label %_ZN4llvm22VarStreamArrayIteratorINS_8codeview17FileChecksumEntryENS_23VarStreamArrayExtractorIS2_EEED2Ev.exit29, !prof !198

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i27
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #21
  br label %_ZN4llvm22VarStreamArrayIteratorINS_8codeview17FileChecksumEntryENS_23VarStreamArrayExtractorIS2_EEED2Ev.exit29

_ZN4llvm22VarStreamArrayIteratorINS_8codeview17FileChecksumEntryENS_23VarStreamArrayExtractorIS2_EEED2Ev.exit29: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i27, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.w

bb.w:                                             ; preds = %_ZN4llvm22VarStreamArrayIteratorINS_8codeview17FileChecksumEntryENS_23VarStreamArrayExtractorIS2_EEED2Ev.exit29, %_ZN4llvm5ErrorD2Ev.exit9, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit
  ret void
}

declare void @_ZNK4llvm3pdb11SymbolGroup20getNameFromChecksumsEj(ptr dead_on_unwind writable sret(%"class.llvm::Expected") align 8, ptr noundef nonnull align 8 dereferenceable(168), i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12consumeErrorENS_5ErrorE(ptr nofree noundef align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat {
bb.a:
  %1 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %2 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %3 = alloca %class.anon.830, align 1            ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !62
  store ptr null, ptr %0, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.a, ptr %2, align 8, !tbaa !62
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.b = load ptr, ptr %2, align 8, !tbaa !62     ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #21, !inline_history !855
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17createStringErrorESt10error_codeRKNS_5TwineE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, i32 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(34) %3) local_unnamed_addr #4 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(34) %3) #21
  call void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 %1, ptr %2) #21
  %i.a = load ptr, ptr %4, align 8, !tbaa !57     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !58
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

declare void @_ZNK4llvm8codeview29DebugStringTableSubsectionRef9getStringEj(ptr dead_on_unwind writable sret(%"class.llvm::Expected") align 8, ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm11logicalview16LVCodeViewReader22printFileNameForOffsetENS_9StringRefEjPKNS_3pdb11SymbolGroupE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(4600) %1, ptr %2, i64 %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.llvm::Expected", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN4llvm11logicalview16LVCodeViewReader24getFileNameForFileOffsetEjPKNS_3pdb11SymbolGroupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %6, ptr noundef nonnull align 8 dereferenceable(4600) %1, i32 noundef %4, ptr noundef %5)
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2784
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !166, !nonnull !167, !align !168 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !55
  %i.f = zext i32 %4 to i64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(44) %i.e, ptr %2, i64 %3, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i64 %i.f) #21, !inline_history !856
  br label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load i64, ptr %6, align 8, !tbaa !70, !noalias !859
  %i.k = inttoptr i64 %i.j to ptr
  br label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit

_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit:       ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %i.k, %bb.c ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm11logicalview16LVCodeViewReader16cacheRelocationsEv(ptr noundef nonnull align 8 dereferenceable(4600) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.llvm::object::content_iterator", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3696 ; 2 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(232) ptr @_ZN4llvm3pdb9InputFile3objEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #21 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64, !noalias !868
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %i.f = load ptr, ptr %i.e, align 8, !noalias !868
  %i.g = tail call { i64, ptr } %i.f(ptr noundef nonnull align 8 dereferenceable(48) %i.c) #21, !noalias !868, !inline_history !4 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 2 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !64, !noalias !868
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 360
  %i.l = load ptr, ptr %i.k, align 8, !noalias !868
  %i.m = tail call { i64, ptr } %i.l(ptr noundef nonnull align 8 dereferenceable(48) %i.c) #21, !noalias !868, !inline_history !4 ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { i64, ptr } %i.m, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i64 %i.h, ptr %1, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store ptr %i.i, ptr %i.p, align 8
  %i.q = icmp ne ptr %i.i, %i.o
  %.not.i.i.i.i21 = icmp ne i64 %i.h, %i.n
  %.not2.i22 = select i1 %i.q, i1 true, i1 %.not.i.i.i.i21
  br i1 %.not2.i22, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4136
  br label %bb.b

._crit_edge:                                      ; preds = %"_ZN4llvm4sortIRSt6vectorINS_6object13RelocationRefESaIS3_EEZNS_11logicalview16LVCodeViewReader16cacheRelocationsEvE3$_0EEvOT_T0_.exit", %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.b:                                             ; preds = %.lr.ph, %"_ZN4llvm4sortIRSt6vectorINS_6object13RelocationRefESaIS3_EEZNS_11logicalview16LVCodeViewReader16cacheRelocationsEvE3$_0EEvOT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.s = call noundef nonnull align 8 dereferenceable(232) ptr @_ZN4llvm3pdb9InputFile3objEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #21
  %i.t = call noundef ptr @_ZNK4llvm6object14COFFObjectFile14getCOFFSectionERKNS0_10SectionRefE(ptr noundef nonnull align 8 dereferenceable(232) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %1) #21
  store ptr %i.t, ptr %i.a, align 8, !tbaa !200
  %i.u = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object12coff_sectionESt6vectorINS2_13RelocationRefESaIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSE_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.u, 0 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !203, !noalias !869 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !58, !noalias !869
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64, !noalias !869
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 272
  %i.z = load ptr, ptr %i.y, align 8, !noalias !869
  %i.aa = call { i64, ptr } %i.z(ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 %.sroa.0.0.copyload.i.i) #21, !noalias !869, !inline_history !864 ; 2 uses
  %i.ab = extractvalue { i64, ptr } %i.aa, 0
  %i.ac = extractvalue { i64, ptr } %i.aa, 1
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !203, !noalias !869 ; 2 uses
  %.sroa.0.0.copyload.i3.i = load i64, ptr %1, align 8, !tbaa !58, !noalias !869
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !64, !noalias !869
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 280
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !869
  %i.ah = call { i64, ptr } %i.ag(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i64 %.sroa.0.0.copyload.i3.i) #21, !noalias !869, !inline_history !865 ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0
  %i.aj = extractvalue { i64, ptr } %i.ah, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !205
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !205 ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 %i.ap
  call void @_ZNSt6vectorIN4llvm6object13RelocationRefESaIS2_EE15_M_range_insertINS1_16content_iteratorIS2_EEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr %i.aq, i64 %i.ab, ptr %i.ac, i64 %i.ai, ptr %i.aj)
  %.val = load ptr, ptr %i.v, align 8, !tbaa !205 ; 6 uses
  %.val7 = load ptr, ptr %i.ak, align 8, !tbaa !205 ; 6 uses
  %.not.i.i.i.i13 = icmp eq ptr %.val, %.val7
  br i1 %.not.i.i.i.i13, label %"_ZN4llvm4sortIRSt6vectorINS_6object13RelocationRefESaIS3_EEZNS_11logicalview16LVCodeViewReader16cacheRelocationsEvE3$_0EEvOT_T0_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = ptrtoint ptr %.val7 to i64
  %i.as = ptrtoint ptr %.val to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 2 uses
  %i.au = ashr exact i64 %i.at, 4
  %i.av = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 true)
  %i.aw = shl nuw nsw i64 %i.av, 1
  %i.ax = xor i64 %i.aw, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm6object13RelocationRefESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11logicalview16LVCodeViewReader16cacheRelocationsEvE3$_0EEEvT_SG_T0_T1_"(ptr %.val, ptr %.val7, i64 noundef %i.ax)
  %i.ay = icmp sgt i64 %i.at, 256
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 256 ; 3 uses
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object13RelocationRefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11logicalview16LVCodeViewReader16cacheRelocationsEvE3$_0EEEvT_SG_T0_"(ptr %.val, ptr nonnull %i.az)
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.az, %.val7
  br i1 %.not6.i.i.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorINS_6object13RelocationRefESaIS3_EEZNS_11logicalview16LVCodeViewReader16cacheRelocationsEvE3$_0EEvOT_T0_.exit", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object13RelocationRefESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11logicalview16LVCodeViewReader16cacheRelocationsEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i = phi ptr [ %i.bs, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object13RelocationRefESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11logicalview16LVCodeViewReader16cacheRelocationsEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i" ], [ %i.az, %bb.d ] ; 7 uses
  %.sroa.04.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.07.i.i.i.i.i.i, align 8, !tbaa !58 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !206 ; 5 uses
  %.sroa.0.011.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i12.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.011.i.i.i.i.i.i.i, align 8, !tbaa !58
  %.sroa.2.0..sroa_idx.i13.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 -8
  %.sroa.2.0.copyload.i14.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i13.i.i.i.i.i.i.i, align 8, !tbaa !206 ; 2 uses
  %i.ba = load ptr, ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i, align 8, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 304
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call noundef i64 %i.bc(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.04.0.copyload.i.i.i.i.i.i.i) #21, !inline_history !866
  %i.be = load ptr, ptr %.sroa.2.0.copyload.i14.i.i.i.i.i.i.i, align 8, !tbaa !64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 304
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call noundef i64 %i.bg(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2.0.copyload.i14.i.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i12.i.i.i.i.i.i.i) #21, !inline_history !866
  %i.bi = icmp ult i64 %i.bd, %i.bh
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object13RelocationRefESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11logicalview16LVCodeViewReader16cacheRelocationsEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.016.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.011.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %.sroa.08.015.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.016.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.015.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.016.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !207
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.016.i.i.i.i.i.i.i, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !tbaa !58
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.016.i.i.i.i.i.i.i, i64 -8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !206 ; 2 uses
  %i.bj = load ptr, ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i, align 8, !tbaa !64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 304
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call noundef i64 %i.bl(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.04.0.copyload.i.i.i.i.i.i.i) #21, !inline_history !866
  %i.bn = load ptr, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, align 8, !tbaa !64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 304
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call noundef i64 %i.bp(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i) #21, !inline_history !866
  %i.br = icmp ult i64 %i.bm, %i.bq
  br i1 %i.br, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object13RelocationRefESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11logicalview16LVCodeViewReader16cacheRelocationsEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", !llvm.loop !5

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object13RelocationRefESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11logicalview16LVCodeViewReader16cacheRelocationsEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.08.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  store i64 %.sroa.04.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.08.0.lcssa.i.i.i.i.i.i.i, align 8, !tbaa !58
  %.sroa.5.0..sroa_idx6.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx6.i.i.i.i.i.i.i, align 8, !tbaa !206
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bs, %.val7
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorINS_6object13RelocationRefESaIS3_EEZNS_11logicalview16LVCodeViewReader16cacheRelocationsEvE3$_0EEvOT_T0_.exit", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !867

bb.e:                                             ; preds = %bb.c
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object13RelocationRefESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11logicalview16LVCodeViewReader16cacheRelocationsEvE3$_0EEEvT_SG_T0_"(ptr %.val, ptr %.val7)
  br label %"_ZN4llvm4sortIRSt6vectorINS_6object13RelocationRefESaIS3_EEZNS_11logicalview16LVCodeViewReader16cacheRelocationsEvE3$_0EEvOT_T0_.exit"

"_ZN4llvm4sortIRSt6vectorINS_6object13RelocationRefESaIS3_EEZNS_11logicalview16LVCodeViewReader16cacheRelocationsEvE3$_0EEvOT_T0_.exit": ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object13RelocationRefESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11logicalview16LVCodeViewReader16cacheRelocationsEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.bt = load ptr, ptr %i.p, align 8, !tbaa !203 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %1) #21, !inline_history !6
  %i.bx = load ptr, ptr %i.p, align 8, !tbaa !203
  %i.by = icmp ne ptr %i.bx, %i.o
  %lhsv.i.i.i.i = load i64, ptr %1, align 8
  %.not.i.i.i.i = icmp ne i64 %lhsv.i.i.i.i, %i.n
  %.not2.i = select i1 %i.by, i1 true, i1 %.not.i.i.i.i
  br i1 %.not2.i, label %bb.b, label %._crit_edge
}

declare noundef ptr @_ZNK4llvm6object14COFFObjectFile14getCOFFSectionERKNS0_10SectionRefE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm11logicalview16LVCodeViewReader13resolveSymbolEPKNS_6object12coff_sectionEmRNS2_9SymbolRefE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(4600) %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !200
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4136
  %i.c = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object12coff_sectionESt6vectorINS2_13RelocationRefESaIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEEES5_S9_SB_SE_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSE_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.c, 0 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3696 ; 2 uses
  %i.f = call noundef nonnull align 8 dereferenceable(232) ptr @_ZN4llvm3pdb9InputFile3objEv(ptr noundef nonnull align 8 dereferenceable(56) %i.e) #21 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call { i64, ptr } %i.i(ptr noundef nonnull align 8 dereferenceable(232) %i.f) #21 ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !205  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !205  ; 2 uses
  %.not2326 = icmp eq ptr %i.k, %i.m
  br i1 %.not2326, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.sroa.019.027 = phi ptr [ %i.z, %.critedge ], [ %i.k, %bb.a ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.019.027, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !210  ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.019.027, align 8, !tbaa !58
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 304
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 %.sroa.0.0.copyload.i) #21, !inline_history !870
  %.not = icmp eq i64 %i.s, %3
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
end_hunk_0
begin_hunk_1_@_ZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefE:bb.a
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call { ptr, i64 } %i.d(ptr noundef nonnull align 8 dereferenceable(80) %1) #21 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.5.0 = phi i64 [ %i.g, %bb.b ], [ %3, %bb.a ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.f, %bb.b ], [ %2, %bb.a ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %.sroa.0.0, ptr %4, align 8, !tbaa !68
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !55
  %.not.i2.i.i = icmp ult i64 %.sroa.5.0, 2
  br i1 %.not.i2.i.i, label %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit12.thread3.i", label %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit.i"

"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit.i": ; preds = %bb.c
  %i.h = load i16, ptr %.sroa.0.0, align 1
  %i.i = icmp ne i16 %i.h, 24415
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_2clEv.exit.thread", label %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit.thread1.i"

"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit.thread1.i": ; preds = %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit.i"
  %.not.i2.i7.i = icmp ult i64 %.sroa.5.0, 4
  br i1 %.not.i2.i7.i, label %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit12.thread3.i", label %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit9.i"

"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit9.i": ; preds = %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit.thread1.i"
  %i.l = load i32, ptr %.sroa.0.0, align 1
  %i.m = icmp ne i32 %i.l, 1145917535
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_2clEv.exit.thread", label %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit9.thread2.i"

"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit9.thread2.i": ; preds = %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit9.i"
  %.not.i2.i10.i = icmp eq i64 %.sroa.5.0, 4
  br i1 %.not.i2.i10.i, label %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit12.thread3.i", label %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit12.i"

"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit12.i": ; preds = %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit9.thread2.i"
  %i.p = load i32, ptr %.sroa.0.0, align 1
  %i.q = xor i32 %i.p, 1179471967
  %i.r = getelementptr i8, ptr %.sroa.0.0, i64 4
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = xor i32 %i.t, 78
  %i.v = or i32 %i.q, %i.u
  %i.w = icmp ne i32 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_2clEv.exit.thread", label %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit12.thread3.i"

"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit12.thread3.i": ; preds = %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit12.i", %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit9.thread2.i", %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit.thread1.i", %bb.c
  %i.z = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.801, i64 4, i64 noundef 0) #21
  %.not.i = icmp eq i64 %i.z, -1
  br i1 %.not.i, label %bb.d, label %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_2clEv.exit.thread"

bb.d:                                             ; preds = %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit12.thread3.i"
  %i.aa = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.802, i64 14, i64 noundef 0) #21
  %.not4.i = icmp eq i64 %i.aa, -1
  br i1 %.not4.i, label %bb.e, label %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_2clEv.exit.thread"

bb.e:                                             ; preds = %bb.d
  %i.ab = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.803, i64 15, i64 noundef 0) #21
  %.not5.i = icmp eq i64 %i.ab, -1
  br i1 %.not5.i, label %bb.f, label %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_2clEv.exit.thread"

bb.f:                                             ; preds = %bb.e
  %i.ac = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.804, i64 20, i64 noundef 0) #21
  %.not = icmp eq i64 %i.ac, -1
  br i1 %.not, label %bb.g, label %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_2clEv.exit.thread"

bb.g:                                             ; preds = %bb.f
  %i.ad = call fastcc noundef zeroext i1 @"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_0clEPKc"(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.805)
  br i1 %i.ad, label %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_2clEv.exit.thread", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = call fastcc noundef zeroext i1 @"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_0clEPKc"(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.806)
  br i1 %i.ae, label %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_2clEv.exit.thread", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = call fastcc noundef zeroext i1 @"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_0clEPKc"(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.807)
  br i1 %i.af, label %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_2clEv.exit.thread", label %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_2clEv.exit"

"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_2clEv.exit": ; preds = %bb.i
  %i.ag = call fastcc noundef zeroext i1 @"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_0clEPKc"(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.808)
  br i1 %i.ag, label %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_2clEv.exit.thread", label %bb.j

"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_2clEv.exit.thread": ; preds = %bb.h, %bb.e, %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit9.i", %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit12.i", %bb.g, %bb.f, %bb.d, %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit12.thread3.i", %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_1clEPKc.exit.i", %bb.i, %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_2clEv.exit"
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !212
  %i.aj = or i32 %i.ai, 268435456
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !212
  br label %bb.j

bb.j:                                             ; preds = %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_2clEv.exit.thread", %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_2clEv.exit"
  %.0.i15 = phi i1 [ true, %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_2clEv.exit.thread" ], [ false, %"_ZZNK4llvm11logicalview16LVCodeViewReader13isSystemEntryEPNS0_9LVElementENS_9StringRefEENK3$_2clEv.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i1 %.0.i15
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm11logicalview16LVCodeViewReader18collectInlineeInfoERNS_8codeview30DebugInlineeLinesSubsectionRefEPKNS_3pdb11SymbolGroupE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(4600) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.llvm::codeview::TypeIndex", align 4 ; 4 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.std::tuple.853", align 8    ; 4 uses
  %7 = alloca %"class.std::tuple.856", align 8    ; 5 uses
  %8 = alloca %"class.llvm::VarStreamArrayIterator.308", align 8 ; 13 uses
  %9 = alloca %"class.llvm::VarStreamArrayIterator.308", align 8 ; 15 uses
  %10 = alloca %"class.llvm::Expected", align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !892, !noalias !893
  call void @_ZN4llvm22VarStreamArrayIteratorINS_8codeview17InlineeSourceLineENS_23VarStreamArrayExtractorIS2_EEEC2ERKNS_14VarStreamArrayIS2_S4_EERKS4_jPb(ptr noundef nonnull align 8 dereferenceable(144) %8, ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c, i32 noundef %i.e, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !894)
  call void @llvm.experimental.noalias.scope.decl(metadata !895)
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i8 0, ptr %i.g, align 8, !tbaa !214, !alias.scope !896
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 32, i1 false), !alias.scope !896
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  store i8 0, ptr %i.i, align 8, !tbaa !214, !alias.scope !896
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i8 0, i64 32, i1 false), !alias.scope !896
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.k = load i8, ptr %i.c, align 8, !tbaa !215, !noalias !896
  store i8 %i.k, ptr %i.j, align 8, !tbaa !215, !alias.scope !896
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 136
  store ptr null, ptr %i.m, align 8, !tbaa !221, !alias.scope !896
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.l, i8 0, i64 17, i1 false), !alias.scope !896
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4384
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.z = phi ptr [ %.pre, %bb.e ], [ null, %bb.a ]
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !222
  %.not.i.i = icmp eq ptr %i.aa, null             ; 2 uses
  %.not5.i.i = icmp eq ptr %i.z, null             ; 2 uses
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %or.cond.i.i, label %.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !179
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !179
  %.not.i.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i, label %bb.d, label %_ZNK4llvm20iterator_facade_baseINS_22VarStreamArrayIteratorINS_8codeview17InlineeSourceLineENS_23VarStreamArrayExtractorIS3_EEEESt20forward_iterator_tagKS3_lPS8_RS8_EneERKS6_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !223
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !223
  %.not7.i.i.i = icmp eq i64 %i.ad, %i.ae
  br i1 %.not7.i.i.i, label %_ZNK4llvm20iterator_facade_baseINS_22VarStreamArrayIteratorINS_8codeview17InlineeSourceLineENS_23VarStreamArrayExtractorIS3_EEEESt20forward_iterator_tagKS3_lPS8_RS8_EneERKS6_.exit, label %_ZNK4llvm20iterator_facade_baseINS_22VarStreamArrayIteratorINS_8codeview17InlineeSourceLineENS_23VarStreamArrayExtractorIS3_EEEESt20forward_iterator_tagKS3_lPS8_RS8_EneERKS6_.exit.thread

.split:                                           ; preds = %bb.b
  %or.cond10.i.i = select i1 %.not.i.i, i1 %.not5.i.i, i1 false
  br i1 %or.cond10.i.i, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZNK4llvm20iterator_facade_baseINS_22VarStreamArrayIteratorINS_8codeview17InlineeSourceLineENS_23VarStreamArrayExtractorIS3_EEEESt20forward_iterator_tagKS3_lPS8_RS8_EneERKS6_.exit.thread

_ZNK4llvm20iterator_facade_baseINS_22VarStreamArrayIteratorINS_8codeview17InlineeSourceLineENS_23VarStreamArrayExtractorIS3_EEEESt20forward_iterator_tagKS3_lPS8_RS8_EneERKS6_.exit: ; preds = %bb.d
  %i.af = load i8, ptr %i.u, align 8, !tbaa !214, !range !224, !noundef !167 ; 2 uses
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = load i8, ptr %i.i, align 8, !tbaa !214, !range !224, !noundef !167
  %i.ai = icmp ne i8 %i.af, %i.ah
  %i.aj = load i64, ptr %i.s, align 8
  %i.ak = load i64, ptr %i.t, align 8
  %i.al = icmp ne i64 %i.aj, %i.ak
  %i.am = select i1 %i.ag, i1 %i.al, i1 false
  %i.an = select i1 %i.ai, i1 true, i1 %i.am
  br i1 %i.an, label %_ZNK4llvm20iterator_facade_baseINS_22VarStreamArrayIteratorINS_8codeview17InlineeSourceLineENS_23VarStreamArrayExtractorIS3_EEEESt20forward_iterator_tagKS3_lPS8_RS8_EneERKS6_.exit.thread, label %_ZN4llvm5ErrorD2Ev.exit

_ZNK4llvm20iterator_facade_baseINS_22VarStreamArrayIteratorINS_8codeview17InlineeSourceLineENS_23VarStreamArrayExtractorIS3_EEEESt20forward_iterator_tagKS3_lPS8_RS8_EneERKS6_.exit.thread: ; preds = %bb.c, %bb.d, %.split, %_ZNK4llvm20iterator_facade_baseINS_22VarStreamArrayIteratorINS_8codeview17InlineeSourceLineENS_23VarStreamArrayExtractorIS3_EEEESt20forward_iterator_tagKS3_lPS8_RS8_EneERKS6_.exit
  %i.ao = load ptr, ptr %8, align 8, !tbaa !897   ; 3 uses
  %.sroa.04.0.copyload = load i32, ptr %i.ao, align 1, !tbaa !58
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.0.copyload.i.i.i = load i32, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %.0.copyload.i.i.i15 = load i32, ptr %i.aq, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @_ZN4llvm11logicalview16LVCodeViewReader24getFileNameForFileOffsetEjPKNS_3pdb11SymbolGroupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %10, ptr noundef nonnull align 8 dereferenceable(4600) %1, i32 noundef %.0.copyload.i.i.i15, ptr noundef %3)
  %i.ar = load i8, ptr %i.v, align 8
  %i.as = trunc i8 %i.ar to i1
  br i1 %i.as, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit.thread, label %bb.e

_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit.thread: ; preds = %_ZNK4llvm20iterator_facade_baseINS_22VarStreamArrayIteratorINS_8codeview17InlineeSourceLineENS_23VarStreamArrayExtractorIS3_EEEESt20forward_iterator_tagKS3_lPS8_RS8_EneERKS6_.exit.thread
  %i.at = load i64, ptr %10, align 8, !tbaa !70, !noalias !898
  %i.au = inttoptr i64 %i.at to ptr
  store ptr %i.au, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN4llvm22VarStreamArrayIteratorINS_8codeview17InlineeSourceLineENS_23VarStreamArrayExtractorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZN4llvm22VarStreamArrayIteratorINS_8codeview17InlineeSourceLineENS_23VarStreamArrayExtractorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.f

bb.e:                                             ; preds = %_ZNK4llvm20iterator_facade_baseINS_22VarStreamArrayIteratorINS_8codeview17InlineeSourceLineENS_23VarStreamArrayExtractorIS3_EEEESt20forward_iterator_tagKS3_lPS8_RS8_EneERKS6_.exit.thread
  %.sroa.0.0.copyload = load ptr, ptr %10, align 8, !tbaa !68
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.sroa.04.0.copyload, ptr %4, align 4
  store ptr %.sroa.0.0.copyload, ptr %5, align 8
  store i64 %.sroa.2.0.copyload, ptr %i.w, align 8
  store i32 %.0.copyload.i.i.i, ptr %i.a, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %4, ptr %6, align 8, !tbaa !226, !alias.scope !899
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr %5, ptr %7, align 8, !tbaa !228, !alias.scope !900
  store ptr %i.a, ptr %i.y, align 8, !tbaa !230, !alias.scope !900
  %i.av = call { ptr, i8 } @_ZNSt8_Rb_treeIN4llvm8codeview9TypeIndexESt4pairIKS2_S3_IjNS0_9StringRefEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE17_M_emplace_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESI_IJRjRS5_EEEEES3_ISt17_Rb_tree_iteratorIS7_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.aw = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN4llvm22VarStreamArrayIteratorINS_8codeview17InlineeSourceLineENS_23VarStreamArrayExtractorIS2_EEEpLEj(ptr noundef nonnull align 8 dereferenceable(144) %8, i32 noundef 1) ; 0 uses
  %.pre = load ptr, ptr %i.l, align 8
  br label %bb.b

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %.split, %_ZNK4llvm20iterator_facade_baseINS_22VarStreamArrayIteratorINS_8codeview17InlineeSourceLineENS_23VarStreamArrayExtractorIS3_EEEESt20forward_iterator_tagKS3_lPS8_RS8_EneERKS6_.exit
  call void @_ZN4llvm22VarStreamArrayIteratorINS_8codeview17InlineeSourceLineENS_23VarStreamArrayExtractorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZN4llvm22VarStreamArrayIteratorINS_8codeview17InlineeSourceLineENS_23VarStreamArrayExtractorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  store ptr null, ptr %0, align 8, !tbaa !62
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit.thread, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm22VarStreamArrayIteratorINS_8codeview17InlineeSourceLineENS_23VarStreamArrayExtractorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !195
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !196
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !7
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !7
  br label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !197
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit, !prof !198

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit

_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !193  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm8codeview17InlineeSourceLineD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !195
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !196
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21, !inline_history !901
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21, !inline_history !901
  br label %_ZN4llvm8codeview17InlineeSourceLineD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !197
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN4llvm8codeview17InlineeSourceLineD2Ev.exit, !prof !198

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21
  br label %_ZN4llvm8codeview17InlineeSourceLineD2Ev.exit

_ZN4llvm8codeview17InlineeSourceLineD2Ev.exit:    ; preds = %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm11logicalview16LVCodeViewReader20traverseInlineeLinesENS_9StringRefE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(4600) %1, ptr %2, i64 %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.llvm::BinaryStreamReader", align 8 ; 8 uses
  %6 = alloca %"class.llvm::codeview::DebugInlineeLinesSubsectionRef", align 8 ; 7 uses
  %7 = alloca %"class.llvm::Error", align 8       ; 7 uses
  %8 = alloca %"class.llvm::BinaryStreamReader", align 8 ; 7 uses
  %9 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN4llvm18BinaryStreamReaderC1ENS_9StringRefENS_10endiannessE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr %2, i64 %3, i32 noundef 1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN4llvm8codeview30DebugInlineeLinesSubsectionRefC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm18BinaryStreamReaderE, i64 16), ptr %8, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !193  ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.b, align 8, !tbaa !231
  store <2 x ptr> %i.f, ptr %i.a, align 8, !tbaa !231
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm18BinaryStreamReaderC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !197
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !197
  br label %_ZN4llvm18BinaryStreamReaderC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4llvm18BinaryStreamReaderC2ERKS0_.exit

_ZN4llvm18BinaryStreamReaderC2ERKS0_.exit:        ; preds = %bb.a, %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !233
end_hunk_1
