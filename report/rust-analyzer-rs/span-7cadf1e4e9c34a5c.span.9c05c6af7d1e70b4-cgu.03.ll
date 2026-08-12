inline.NumInlined: 170
inline.NumDeleted: 123
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMNtCs9GitHPCrz2Q_5rowan3astINtB2_13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE3newCsdovh4xi6v3I_4span:bb.a

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i
  %.sroa.02.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i ], [ %i.v, %bb.g ]
  %i.w = add i32 %.sroa.02.0.i, %.sroa.0.0.i1     ; 2 uses
  %.not.i = icmp ugt i32 %.sroa.0.0.i1, %i.w
  br i1 %.not.i, label %bb.i, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit, !prof !189

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #30
  unreachable

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit: ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.g, ptr %i.x, align 4
  store i32 %.sroa.0.0.i1, ptr %0, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.w, ptr %i.y, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsfjX3T6UU9IB_9hashbrown11rustc_entryINtNtB4_3map7HashMapTNtNtCsdovh4xi6v3I_4span6ast_id19ErasedFileAstIdKindtEmNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11rustc_entryB14_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i8 noundef range(i8 0, 22) %2, i16 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 2                 ; 3 uses
  store i8 %2, ptr %i.a, align 2
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %3, ptr %i.b, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRTNtNtCsdovh4xi6v3I_4span6ast_id19ErasedFileAstIdKindtEEB1E_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.a) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.e = lshr i64 %i.d, 57
  %i.f = trunc nuw nsw i64 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !215, !noalias !216, !noundef !5 ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !alias.scope !215, !noalias !216, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.k = shufflevector <16 x i8> %i.j, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.ad, %bb.d ]
  %.pn.i = phi i64 [ %i.d, %bb.a ], [ %i.ae, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.h          ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i24.i = load <16 x i8>, ptr %i.l, align 1, !noalias !218 ; 2 uses
  %i.m = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, %i.k
  %i.n = bitcast <16 x i1> %i.m to i16            ; 2 uses
  %.not.i.not30.i = icmp eq i16 %i.n, 0
  br i1 %.not.i.not30.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.06.0.i31.i = phi i16 [ %i.ac, %bb.c ], [ %i.n, %bb.b ] ; 3 uses
  %i.o = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = add i64 %.sroa.01.0.i.i, %i.p
  %i.r = and i64 %i.q, %i.h
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.s ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  %.val2.i.i = load i8, ptr %i.u, align 1, !range !221, !noalias !222, !noundef !5
  %i.v = getelementptr i8, ptr %i.t, i64 -6
  %.val3.i.i = load i16, ptr %i.v, align 2, !noalias !222
  %i.w = icmp eq i8 %.val2.i.i, %2
  %i.x = icmp eq i16 %.val3.i.i, %3
  %spec.select.i.i.i.i = select i1 %i.w, i1 %i.x, i1 false
  br i1 %spec.select.i.i.i.i, label %_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTTNtNtCsdovh4xi6v3I_4span6ast_id19ErasedFileAstIdKindtEmEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_mNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11rustc_entry0EBV_.exit, label %bb.c, !prof !225

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.y = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, splat (i8 -1)
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %bb.d, label %bb.e, !prof !189

bb.c:                                             ; preds = %.lr.ph.i
  %i.ab = add i16 %.sroa.06.0.i31.i, -1
  %i.ac = and i16 %i.ab, %.sroa.06.0.i31.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.ad = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ae = add i64 %.sroa.01.0.i.i, %i.ad
  br label %bb.b

_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTTNtNtCsdovh4xi6v3I_4span6ast_id19ErasedFileAstIdKindtEmEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_mNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11rustc_entry0EBV_.exit: ; preds = %.lr.ph.i
  store ptr %i.t, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %i.ag, align 8
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTTNtNtCsdovh4xi6v3I_4span6ast_id19ErasedFileAstIdKindtEmEE7reserveNCINvNtB8_3map11make_hasherBQ_mNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0EBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c)
  store ptr %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %3, ptr %.sroa.63.0..sroa_idx, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTTNtNtCsdovh4xi6v3I_4span6ast_id19ErasedFileAstIdKindtEmEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_mNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11rustc_entry0EBV_.exit
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef align 8 ptr @_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsd9Lm8bEdjjY_5salsa5table4PageEKj3a_E3getCsdovh4xi6v3I_4span(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true) ; 2 uses
  %i.b = lshr exact i64 -9223372036854775808, %i.a
  %i.c = sub i64 %1, %i.b
  %i.d = sub nsw i64 58, %i.a                     ; 2 uses
  %i.e = icmp ult i64 %i.d, 58
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.g = load atomic ptr, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.c
  %.sroa.0.0 = select i1 %i.h, ptr null, ptr %i.i
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i16 0, 329) i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsdovh4xi6v3I_4span(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !4, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.e = shl nuw nsw i64 %i.b, 2
  %.sroa.0.0.in.idx = xor i64 %i.e, 4
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.0.in.idx
  %.sroa.0.0 = load i16, ptr %.sroa.0.0.in, align 4, !noundef !5
  %i.f = tail call noundef i16 @_RNvXNtCsjJXvCMGntp8_6syntax11syntax_nodeNtB2_12RustLanguageNtNtCs9GitHPCrz2Q_5rowan3api8Language13kind_from_raw(i16 noundef %.sroa.0.0)
  ret i16 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable
define hidden noundef range(i64 32, -9223372036854775808) i64 @_RNvMs8_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsdovh4xi6v3I_4span(i64 noundef %0) unnamed_addr #9 {
bb.a:
  %i.a = icmp ult i64 %0, 9223372036854775776
  tail call void @llvm.assume(i1 %i.a)
  %i.b = add nuw nsw i64 %0, 32
  ret i64 %i.b
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E21reserve_one_uncheckedCsdovh4xi6v3I_4span(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noalias !226, !noundef !5 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 3
  br i1 %i.b, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsdovh4xi6v3I_4span.exit, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsdovh4xi6v3I_4span.exit.thread

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsdovh4xi6v3I_4span.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noalias !226, !noundef !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.e, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsdovh4xi6v3I_4span.exit.thread, !prof !229

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsdovh4xi6v3I_4span.exit.thread: ; preds = %bb.a, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsdovh4xi6v3I_4span.exit
  %.sink10.i7 = phi i64 [ %i.d, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsdovh4xi6v3I_4span.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = icmp eq i64 %.sink10.i7, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i7, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.e, label %bb.b, !prof !189

bb.b:                                             ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsdovh4xi6v3I_4span.exit.thread
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E8try_growCsdovh4xi6v3I_4span(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsdovh4xi6v3I_4span.exit
    i64 0, label %bb.d
  ], !prof !230

bb.c:                                             ; preds = %bb.b
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #30
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsdovh4xi6v3I_4span.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsdovh4xi6v3I_4span.exit.thread, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsdovh4xi6v3I_4span.exit
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E8try_growCsdovh4xi6v3I_4span(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !5   ; 6 uses
  %i.c = icmp ult i64 %i.b, 4                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !231, !noalias !234, !nonnull !5 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 3) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !5 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !189

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 4
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = shl i64 %1, 3                            ; 6 uses
  %2 = icmp ult i64 %1, 2305843009213693952
  %i.j = icmp ult i64 %i.i, 9223372036854775801
  %or.cond = and i1 %2, %i.j
  br i1 %or.cond, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsdovh4xi6v3I_4span.exit, label %bb.m, !prof !236

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsdovh4xi6v3I_4span.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsdovh4xi6v3I_4span.exit
  %3 = shl i64 %.sink.i, 3                        ; 3 uses
  %4 = icmp ult i64 %i.b, 2305843009213693952
  %i.k = icmp ult i64 %3, 9223372036854775801
  %or.cond60 = and i1 %4, %i.k
  br i1 %or.cond60, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsdovh4xi6v3I_4span.exit45, label %bb.m, !prof !236

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsdovh4xi6v3I_4span.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31
  %i.l = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #31 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsdovh4xi6v3I_4span.exit45: ; preds = %bb.g
  %i.n = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %3, i64 noundef 8, i64 noundef %i.i) #31 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsdovh4xi6v3I_4span.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.n, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsdovh4xi6v3I_4span.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.e, i64 %i.p, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.q = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.q, i1 false)
  store i64 %i.g, ptr %0, align 8
  %5 = shl i64 %.sink.i, 3                        ; 3 uses
  %6 = icmp ult i64 %i.b, 2305843009213693952
  %i.r = icmp ult i64 %5, 9223372036854775801
  %or.cond.i = and i1 %6, %i.r
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsdovh4xi6v3I_4span.exit, label %bb.l, !prof !236

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !237
  store i64 0, ptr %i.a, align 8, !noalias !237
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %5, ptr %7, align 8, !noalias !237
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #30, !noalias !237
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsdovh4xi6v3I_4span.exit: ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %5, i64 noundef 8) #31
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsdovh4xi6v3I_4span.exit45, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsdovh4xi6v3I_4span.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsdovh4xi6v3I_4span.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsdovh4xi6v3I_4span.exit45 ], [ %3, %bb.g ], [ %i.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsdovh4xi6v3I_4span.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECsdovh4xi6v3I_4span.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtB6_5Debug3fmtCsdovh4xi6v3I_4span(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !149, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !240
  store ptr %i.b, ptr %i.a, align 8, !noalias !240
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @352, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @353, i64 noundef 4, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @350, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @354, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @351)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !240
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRRTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtB6_5Debug3fmtB2b_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !align !244, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !245, !noalias !248, !nonnull !5, !align !149, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !250
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !noalias !254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !250
  store ptr %i.e, ptr %i.b, align 8, !noalias !250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !250
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store ptr %i.f, ptr %i.a, align 8, !noalias !250
  %i.g = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17), !noalias !245 ; 0 uses
  %i.h = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18), !noalias !245 ; 0 uses
  %i.i = call noundef zeroext i1 @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !250
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtB6_5Debug3fmtB2a_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !align !149, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !255
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !noalias !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !255
  store ptr %i.d, ptr %i.b, align 8, !noalias !255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !255
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store ptr %i.e, ptr %i.a, align 8, !noalias !255
  %i.f = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17) ; 0 uses
  %i.g = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18) ; 0 uses
  %i.h = call noundef zeroext i1 @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !255
  ret i1 %i.h
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEINtB5_14SlicePartialEqBC_E17equal_same_lengthB2g_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtNtB7_3cmp9PartialEq2neB2a_.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtNtB7_3cmp9PartialEq2neB2a_.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtNtB7_3cmp9PartialEq2neB2a_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.06 ; 4 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.06 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i.i.i = load i16, ptr %i.e, align 2, !range !177, !alias.scope !275, !noalias !276, !noundef !5
  %.val1.i.i.i = load i16, ptr %i.f, align 2, !range !177, !alias.scope !276, !noalias !275, !noundef !5
  %i.g = icmp eq i16 %.val.i.i.i, %.val1.i.i.i
  br i1 %i.g, label %bb.c, label %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtNtB7_3cmp9PartialEq2neB2a_.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.h = load i32, ptr %i.c, align 4, !alias.scope !275, !noalias !276, !noundef !5
  %i.i = load i32, ptr %i.d, align 4, !alias.scope !276, !noalias !275, !noundef !5
  %i.j = icmp eq i32 %i.h, %i.i
  br i1 %i.j, label %_RNvYINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCsdovh4xi6v3I_4span.exit.i, label %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtNtB7_3cmp9PartialEq2neB2a_.exit.thread

_RNvYINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCsdovh4xi6v3I_4span.exit.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !275, !noalias !276, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !276, !noalias !275, !noundef !5
  %.not.i = icmp eq i32 %i.l, %i.n
  br i1 %.not.i, label %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtNtB7_3cmp9PartialEq2neB2a_.exit, label %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtNtB7_3cmp9PartialEq2neB2a_.exit.thread

_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtNtB7_3cmp9PartialEq2neB2a_.exit: ; preds = %_RNvYINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCsdovh4xi6v3I_4span.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.val.i = load i32, ptr %i.o, align 4, !alias.scope !260, !noalias !263, !noundef !5
  %.val1.i = load i32, ptr %i.p, align 4, !alias.scope !263, !noalias !260, !noundef !5
  %.not = icmp eq i32 %.val.i, %.val1.i
  br i1 %.not, label %bb.b, label %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtNtB7_3cmp9PartialEq2neB2a_.exit.thread

_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtNtB7_3cmp9PartialEq2neB2a_.exit.thread: ; preds = %bb.b, %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtNtB7_3cmp9PartialEq2neB2a_.exit, %_RNvYINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCsdovh4xi6v3I_4span.exit.i, %.lr.ph, %bb.c, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ false, %.lr.ph ], [ false, %_RNvYINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCsdovh4xi6v3I_4span.exit.i ], [ false, %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtNtB7_3cmp9PartialEq2neB2a_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCsdVrXiLXuAnx_6parser11syntax_kind9generatedNtB5_10SyntaxKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #12 {
switch.lookup:
  %i.a = load i16, ptr %0, align 2, !range !177, !noundef !5 ; 2 uses
  %i.b = zext nneg i16 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs6_NtNtCsdVrXiLXuAnx_6parser11syntax_kind9generatedNtB5_10SyntaxKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i16 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs6_NtNtCsdVrXiLXuAnx_6parser11syntax_kind9generatedNtB5_10SyntaxKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.55, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #12 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @349, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @348)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsdovh4xi6v3I_4span(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXsj_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildrenNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_Csjpcu9PwIgok_8smallvecNtB5_18CollectionAllocErrNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #12 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !277, !noundef !5
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @357, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @358, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @356)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @355, i64 noundef 16)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXsa_NtCs9GitHPCrz2Q_5rowan3apiINtB5_8PreorderNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsdovh4xi6v3I_4span(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXsn_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8PreorderNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 2 uses
  %.not = icmp eq i64 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, ptr } %i.a, 1
  %i.d = tail call { i64, ptr } @_RINvMs1_NtCs9GitHPCrz2Q_5rowan13utility_typesINtB6_9WalkEventNtNtB8_6cursor10SyntaxNodeE3mapNvYINtNtB8_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtCshzWfHUSfYae_4core7convert4FromBX_E4fromB1v_ECsdovh4xi6v3I_4span(i64 noundef %i.b, ptr noundef %i.c) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.e, %bb.b ], [ 2, %bb.a ]
  %i.g = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.h = insertvalue { i64, ptr } %i.g, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.h
end_hunk_0
