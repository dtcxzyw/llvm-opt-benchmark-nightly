Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.01?download=true
inline.NumInlined: 5575
inline.NumDeleted: 3074
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtB7_11collections5btree3set8BTreeSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEE6retainNCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern13merge_scripts0EB2u_:bb.a
  br i1 %.not.i.i.i27.i, label %.thread47.i, label %.lr.ph.i.i.i25.i

.thread47.i:                                      ; preds = %.noexc31.i, %.noexc29.i
  store i8 1, ptr %2, align 1, !noalias !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !73
  %i.al = add nuw nsw i64 %.sroa.8.166.i, 1       ; 2 uses
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_ENtNtB4_7set_val9SetValZSTENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEECshxhuDJfZv4T_6fontbe.exit34.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !64

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEECshxhuDJfZv4T_6fontbe.exit34.i: ; preds = %.thread47.i, %.thread.i
  %.sroa.15.2.i = phi i64 [ %i.aa, %.thread.i ], [ %.sroa.15.165.i, %.thread47.i ] ; 2 uses
  %.sroa.8.2.i = phi i64 [ %i.ab, %.thread.i ], [ %i.al, %.thread47.i ] ; 2 uses
  %i.am = icmp samesign ult i64 %.sroa.8.2.i, %i.d
  br i1 %i.am, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEECshxhuDJfZv4T_6fontbe.exit._crit_edge.i

.loopexit.i:                                      ; preds = %.noexc30.i, %.lr.ph.i.i.i25.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.thread47.i, %bb.f, %bb.e
  %.sroa.8.0.ph.ph.i = phi i64 [ %i.al, %.thread47.i ], [ %.sroa.8.166.i, %bb.e ], [ %.sroa.8.166.i, %bb.f ]
  %lpad.loopexit48.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.loopexit51.i
  %lpad.loopexit.split-lp49.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.sroa.15.0.i = phi i64 [ %.sroa.15.165.i, %.loopexit.i ], [ %.sroa.15.165.i, %.loopexit.split-lp.loopexit.i ], [ %.sroa.0.0.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %.sroa.8.0.i = phi i64 [ %.sroa.8.166.i, %.loopexit.i ], [ %.sroa.8.0.ph.ph.i, %.loopexit.split-lp.loopexit.i ], [ %i.v, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit48.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp49.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %i.an = sub i64 %i.d, %.sroa.8.0.i              ; 2 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.8.0.i
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.15.0.i
  %i.aq = mul nuw nsw i64 %i.an, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr nonnull align 8 %i.ao, i64 %i.aq, i1 false), !noalias !77
  %i.ar = add i64 %i.an, %.sroa.15.0.i
  store i64 %i.ar, ptr %i.c, align 8, !alias.scope !64, !noalias !78
  resume { ptr, i32 } %lpad.phi.i

_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtB7_11collections5btree3set8BTreeSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEE10retain_mutNCINvB2_6retainNCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern13merge_scripts0E0EB2O_.exit: ; preds = %bb.d, %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetINtNtCs2sOuOmxaxiH_7tinystr5ascii12TinyAsciiStrKj4_EEECshxhuDJfZv4T_6fontbe.exit._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6ycZ7hHN0vs_14icu_properties5props9BidiClassE5drainNtNtNtCsf3Ta7LF998c_4core3ops5range9RangeFullECshxhuDJfZv4T_6fontbe(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECshxhuDJfZv4T_6fontbe(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E6retainNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB1I_10MaxBuilder23update_composite_limitss_0EB1K_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !85, !noundef !4 ; 6 uses
  %i.c = icmp ult i64 %i.b, 4611686018427387904
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E10retain_mutNCINvB2_6retainNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB22_10MaxBuilder23update_composite_limitss_0E0EB24_.exit, label %.preheader21.i

.preheader21.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !85, !nonnull !4, !noundef !4 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader21.i
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %.preheader21.i ] ; 4 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %.sroa.0.0.i
  %i.h = tail call fastcc noundef zeroext i1 @_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E6retainNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB1K_10MaxBuilder23update_composite_limitss_0E0B1M_(ptr nonnull readonly align 8 %1, ptr noalias nofree noundef align 2 dereferenceable(2) %i.g) #23, !noalias !85
  %i.i = add nuw nsw i64 %.sroa.0.0.i, 1          ; 4 uses
  br i1 %i.h, label %bb.c, label %.preheader.i, !prof !5

.preheader.i:                                     ; preds = %bb.b
  %i.j = icmp samesign ult i64 %i.i, %i.b
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.i

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.i, %i.b
  br i1 %i.k, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E10retain_mutNCINvB2_6retainNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB22_10MaxBuilder23update_composite_limitss_0E0EB24_.exit, label %bb.b

._crit_edge.i:                                    ; preds = %bb.f, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i, %.preheader.i ], [ %.sroa.13.1.i, %bb.f ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !85
  br label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E10retain_mutNCINvB2_6retainNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB22_10MaxBuilder23update_composite_limitss_0E0EB24_.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.f
  %.sroa.7.029.i = phi i64 [ %.sroa.7.0.i, %bb.f ], [ %i.i, %.preheader.i ] ; 3 uses
  %.sroa.13.028.i = phi i64 [ %.sroa.13.1.i, %bb.f ], [ %.sroa.0.0.i, %.preheader.i ] ; 5 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %.sroa.7.029.i ; 3 uses
  %i.m = invoke fastcc noundef zeroext i1 @_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E6retainNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB1K_10MaxBuilder23update_composite_limitss_0E0B1M_(ptr nonnull readonly align 8 %1, ptr noalias nofree noundef align 2 dereferenceable(2) %i.l)
          to label %bb.d unwind label %bb.g, !noalias !85

bb.d:                                             ; preds = %.lr.ph.i
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %.sroa.13.028.i
  %i.o = load i16, ptr %i.l, align 2, !noalias !85
  store i16 %i.o, ptr %i.n, align 2, !noalias !85
  %i.p = add i64 %.sroa.13.028.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.13.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.13.028.i, %bb.d ] ; 2 uses
  %.sroa.7.0.i = add nuw nsw i64 %.sroa.7.029.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.0.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = sub nuw nsw i64 %i.b, %.sroa.7.029.i     ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %.sroa.13.028.i
  %i.t = shl nuw nsw i64 %i.r, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.s, ptr nonnull align 2 %i.l, i64 %i.t, i1 false), !noalias !86
  %i.u = add i64 %i.r, %.sroa.13.028.i
  store i64 %i.u, ptr %i.a, align 8, !alias.scope !85, !noalias !87
  resume { ptr, i32 } %i.q

_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E10retain_mutNCINvB2_6retainNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB22_10MaxBuilder23update_composite_limitss_0E0EB24_.exit: ; preds = %bb.c, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshxhuDJfZv4T_6fontbe8features10properties15ScriptDirectionE5drainNtNtNtCsf3Ta7LF998c_4core3ops5range9RangeFullEBL_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECshxhuDJfZv4T_6fontbe(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1o_EE8dedup_byNCNvMs5_B5_Bv_5dedup0ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 6 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
  %.sroa.0.025 = phi i64 [ 1, %bb.b ], [ %.sroa.5.026, %bb.d ] ; 4 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.025 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %.val11 = load ptr, ptr %i.g, align 8, !nonnull !4, !align !6, !noundef !4
  %.val12 = load ptr, ptr %i.h, align 8, !nonnull !4, !align !6, !noundef !4
  %i.i = tail call noundef zeroext i1 @_RNvXs1t_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB18_ENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val12)
  %.sroa.5.026 = add nuw i64 %.sroa.0.025, 1      ; 4 uses
  br i1 %i.i, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.j = icmp ult i64 %.sroa.5.026, %i.b
  br i1 %i.j, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i64 %.sroa.5.026, %i.b
  br i1 %.not, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.025, %.preheader ], [ %.sroa.11.1, %bb.f ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.sroa.5.028 = phi i64 [ %.sroa.5.0, %bb.f ], [ %.sroa.5.026, %.preheader ] ; 3 uses
  %.sroa.11.027 = phi i64 [ %.sroa.11.1, %bb.f ], [ %.sroa.0.025, %.preheader ] ; 4 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.028 ; 3 uses
  %i.l = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.11.027 ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  %.val = load ptr, ptr %i.k, align 8, !nonnull !4, !align !6, !noundef !4
  %.val10 = load ptr, ptr %i.m, align 8, !nonnull !4, !align !6, !noundef !4
  %i.n = invoke noundef zeroext i1 @_RNvXs1t_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB18_ENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val10)
          to label %_RNCNvMs5_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRINtNtNtNtB9_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1q_EE5dedup0CshxhuDJfZv4T_6fontbe.exit unwind label %bb.g

.thread:                                          ; preds = %bb.d, %bb.a, %._crit_edge
  ret void

_RNCNvMs5_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRINtNtNtNtB9_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1q_EE5dedup0CshxhuDJfZv4T_6fontbe.exit: ; preds = %.lr.ph
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNCNvMs5_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRINtNtNtNtB9_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1q_EE5dedup0CshxhuDJfZv4T_6fontbe.exit
  %i.o = load i64, ptr %i.k, align 8
  store i64 %i.o, ptr %i.l, align 8
  %i.p = add i64 %.sroa.11.027, 1
  br label %bb.f

bb.f:                                             ; preds = %_RNCNvMs5_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRINtNtNtNtB9_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1q_EE5dedup0CshxhuDJfZv4T_6fontbe.exit, %bb.e
  %.sroa.11.1 = phi i64 [ %i.p, %bb.e ], [ %.sroa.11.027, %_RNCNvMs5_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRINtNtNtNtB9_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1q_EE5dedup0CshxhuDJfZv4T_6fontbe.exit ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.028, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = sub nuw nsw i64 %i.b, %.sroa.5.028       ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.k, i64 %i.s, i1 false), !noalias !92
  %i.t = add i64 %i.r, %.sroa.11.027
  store i64 %i.t, ptr %i.a, align 8, !noalias !92
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1x_17MarkLookupBuilder3news_00EB1B_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 captures(address, read_provenance) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !99, !noundef !4 ; 6 uses
  %i.e = icmp ult i64 %i.d, 1152921504606846976
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE10retain_mutNCINvB2_6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1R_17MarkLookupBuilder3news_00E0EB1V_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !99, !nonnull !4, !noundef !4 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit.thread.i, %.preheader.i
  %.sroa.0.0.i = phi i64 [ %i.r, %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit.thread.i ], [ 0, %.preheader.i ] ; 5 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i
  %.val11.i = load ptr, ptr %i.i, align 8, !noalias !99, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val11.i, i64 24 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !100, !noalias !99, !noundef !4 ; 3 uses
  %i.l = icmp ne i8 %i.k, 28
  call void @llvm.assume(i1 %i.l)
  %i.m = add nsw i8 %i.k, -26
  %i.n = icmp samesign ugt i8 %i.k, 25
  %narrow.i.i.i = select i1 %i.n, i8 %i.m, i8 2
  switch i8 %narrow.i.i.i, label %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit.thread29.i [
    i8 6, label %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit.thread.i
    i8 7, label %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit.thread.i
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit.i
    i8 3, label %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit.thread.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.val11.i, i64 32
  br label %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.val11.i, i64 32
  br label %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit.i

_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.03.0.i.i.i = phi ptr [ %i.o, %bb.c ], [ %i.p, %bb.d ], [ %i.j, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !99
  store ptr %.sroa.03.0.i.i.i, ptr %i.b, align 8, !noalias !99, !captures !7
  %i.q = call noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapRRNtCs9NoVXegZYB5_8smol_str7SmolStruNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keyBP_ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !99
  br i1 %i.q, label %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit.thread.i, label %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit.thread29.i, !prof !101

_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit.thread.i: ; preds = %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit.i, %bb.b, %bb.b, %bb.b
  %i.r = add nuw nsw i64 %.sroa.0.0.i, 1          ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.d
  br i1 %i.s, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE10retain_mutNCINvB2_6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1R_17MarkLookupBuilder3news_00E0EB1V_.exit, label %bb.b

_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit.thread29.i: ; preds = %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit.i, %bb.b
  %.sroa.7.039.i = add nuw nsw i64 %.sroa.0.0.i, 1 ; 2 uses
  %i.t = icmp samesign ult i64 %.sroa.7.039.i, %i.d
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.thread32.i, %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit.thread29.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i, %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit.thread29.i ], [ %.sroa.13.1.i, %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.thread32.i ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.c, align 8, !alias.scope !99
  br label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE10retain_mutNCINvB2_6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1R_17MarkLookupBuilder3news_00E0EB1V_.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit.thread29.i, %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.thread32.i
  %.sroa.7.041.i = phi i64 [ %.sroa.7.0.i, %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.thread32.i ], [ %.sroa.7.039.i, %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit.thread29.i ] ; 3 uses
  %.sroa.13.040.i = phi i64 [ %.sroa.13.1.i, %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.thread32.i ], [ %.sroa.0.0.i, %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit.thread29.i ] ; 6 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.7.041.i ; 3 uses
  %.val9.i = load ptr, ptr %i.u, align 8, !noalias !99, !nonnull !4, !align !6, !noundef !4 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val9.i, i64 24 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !range !100, !noalias !99, !noundef !4 ; 3 uses
  %i.x = icmp ne i8 %i.w, 28
  call void @llvm.assume(i1 %i.x)
  %i.y = add nsw i8 %i.w, -26
  %i.z = icmp samesign ugt i8 %i.w, 25
  %narrow.i.i13.i = select i1 %i.z, i8 %i.y, i8 2
  %i.aa = ptrtoint ptr %.val9.i to i64            ; 3 uses
  switch i8 %narrow.i.i13.i, label %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.thread32.i [
    i8 6, label %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.thread.i
    i8 7, label %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.thread.i
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.thread.i
  ]

bb.e:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.val9.i, i64 32
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.val9.i, i64 32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.lr.ph.i
  %.sroa.03.0.i.i15.i = phi ptr [ %i.ab, %bb.e ], [ %i.ac, %bb.f ], [ %i.v, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !99
  store ptr %.sroa.03.0.i.i15.i, ptr %i.a, align 8, !noalias !99, !captures !7
  %i.ad = invoke noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapRRNtCs9NoVXegZYB5_8smol_str7SmolStruNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keyBP_ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.i unwind label %bb.h, !noalias !99

_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !99
  br i1 %i.ad, label %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16._RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.thread_crit_edge.i, label %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.thread32.i

_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16._RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.thread_crit_edge.i: ; preds = %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.i
  %.pre.i = load i64, ptr %i.u, align 8, !noalias !99
  br label %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.thread.i

_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.thread.i: ; preds = %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16._RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.thread_crit_edge.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.ae = phi i64 [ %.pre.i, %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16._RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.thread_crit_edge.i ], [ %i.aa, %.lr.ph.i ], [ %i.aa, %.lr.ph.i ], [ %i.aa, %.lr.ph.i ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.13.040.i
  store i64 %i.ae, ptr %i.af, align 8, !noalias !99
  %i.ag = add i64 %.sroa.13.040.i, 1
  br label %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.thread32.i

_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.thread32.i: ; preds = %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.thread.i, %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.i, %.lr.ph.i
  %.sroa.13.1.i = phi i64 [ %i.ag, %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.thread.i ], [ %.sroa.13.040.i, %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit16.i ], [ %.sroa.13.040.i, %.lr.ph.i ] ; 2 uses
  %.sroa.7.0.i = add nuw nsw i64 %.sroa.7.041.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.0.i, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.h:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = sub nuw nsw i64 %i.d, %.sroa.7.041.i    ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.13.040.i
  %i.ak = shl nuw nsw i64 %i.ai, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr nonnull align 8 %i.u, i64 %i.ak, i1 false), !noalias !102
  %i.al = add i64 %i.ai, %.sroa.13.040.i
  store i64 %i.al, ptr %i.c, align 8, !alias.scope !99, !noalias !103
  resume { ptr, i32 } %i.ah

_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE10retain_mutNCINvB2_6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1R_17MarkLookupBuilder3news_00E0EB1V_.exit: ; preds = %_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorE6retainNCNCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB1z_17MarkLookupBuilder3news_00E0B1D_.exit.thread.i, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_9UserSpaceEEE8dedup_byNCNvXs7_B1l_INtB1l_8LocationB20_EINtNtCsf3Ta7LF998c_4core7convert4FromBv_E4froms_0ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CshxhuDJfZv4T_6fontbe.exit
  %.sroa.0.023 = phi i64 [ 1, %bb.b ], [ %i.k, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CshxhuDJfZv4T_6fontbe.exit ] ; 5 uses
  %i.g = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.0.023 ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -16
  %.val11 = load i32, ptr %i.g, align 8, !noundef !4
  %i.i = load i32, ptr %i.h, align 8, !alias.scope !108, !noundef !4
  %i.j = icmp eq i32 %.val11, %i.i
  br i1 %i.j, label %bb.d, label %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CshxhuDJfZv4T_6fontbe.exit

_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.c
  %i.k = add nuw nsw i64 %.sroa.0.023, 1          ; 2 uses
  %.not = icmp eq i64 %i.k, %i.b
  br i1 %.not, label %.thread, label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %.val12 = load double, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.g, i64 -8
  store double %.val12, ptr %i.m, align 8, !alias.scope !108
  %.sroa.5.024 = add nuw i64 %.sroa.0.023, 1      ; 2 uses
  %i.n = icmp ult i64 %.sroa.5.024, %i.b
  br i1 %i.n, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.023, %bb.d ], [ %.sroa.11.1, %bb.f ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.sroa.5.026 = phi i64 [ %.sroa.5.0, %bb.f ], [ %.sroa.5.024, %bb.d ] ; 2 uses
  %.sroa.11.025 = phi i64 [ %.sroa.11.1, %bb.f ], [ %.sroa.0.023, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.5.026 ; 3 uses
  %i.p = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.11.025 ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -16
  %.val = load i32, ptr %i.o, align 8, !noundef !4
  %i.r = load i32, ptr %i.q, align 8, !alias.scope !109, !noundef !4
  %i.s = icmp eq i32 %.val, %i.r
  br i1 %i.s, label %bb.e, label %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CshxhuDJfZv4T_6fontbe.exit13

.thread:                                          ; preds = %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CshxhuDJfZv4T_6fontbe.exit, %bb.a, %._crit_edge
  ret void

_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CshxhuDJfZv4T_6fontbe.exit13: ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.t = add i64 %.sroa.11.025, 1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.u = getelementptr i8, ptr %i.o, i64 8
  %.val10 = load double, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.p, i64 -8
  store double %.val10, ptr %i.v, align 8, !alias.scope !109
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CshxhuDJfZv4T_6fontbe.exit13
  %.sroa.11.1 = phi i64 [ %.sroa.11.025, %bb.e ], [ %i.t, %_RNCNvXs7_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB7_8LocationNtB7_9UserSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB7_5CoordBV_EEEE4froms_0CshxhuDJfZv4T_6fontbe.exit13 ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.026, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTcNtNtCsbZq13ASDQ8l_10font_types8glyph_id7GlyphIdEE8dedup_byNCNvMs5_B5_Bv_5dedup0ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 7 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 7 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvar = phi i64 [ 0, %bb.b ], [ %indvar.next, %bb.e ] ; 3 uses
  %.sroa.0.027 = phi i64 [ 1, %bb.b ], [ %.sroa.5.028, %bb.e ] ; 8 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.027 ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %.val13 = load i32, ptr %i.g, align 4, !range !8, !noundef !4
  %i.i = getelementptr i8, ptr %i.g, i64 4
  %.val14 = load i32, ptr %i.i, align 4
  %.val15 = load i32, ptr %i.h, align 4, !range !8, !noundef !4
  %i.j = getelementptr i8, ptr %i.g, i64 -4
  %.val16 = load i32, ptr %i.j, align 4
  %i.k = icmp eq i32 %.val13, %.val15
  %i.l = icmp eq i32 %.val14, %.val16
  %spec.select.i.i = select i1 %i.k, i1 %i.l, i1 false
  %.sroa.5.028 = add nuw i64 %.sroa.0.027, 1      ; 5 uses
  br i1 %spec.select.i.i, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.m = icmp ult i64 %.sroa.5.028, %i.b
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.n = sub i64 %i.b, %indvar
  %i.o = add nsw i64 %i.b, -3
  %xtraiter = and i64 %i.n, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.028 ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.027 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 -8
  %i.s = load <2 x i32>, ptr %i.p, align 4
  %i.t = load <2 x i32>, ptr %i.r, align 4
  %i.u = icmp eq <2 x i32> %i.s, %i.t             ; 2 uses
  %i.v = extractelement <2 x i1> %i.u, i64 0
  %i.w = extractelement <2 x i1> %i.u, i64 1
  %spec.select.i.i17.prol = select i1 %i.v, i1 %i.w, i1 false
  br i1 %spec.select.i.i17.prol, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.prol
  %i.x = load i64, ptr %i.p, align 4
  store i64 %i.x, ptr %i.q, align 4
  %i.y = add i64 %.sroa.0.027, 1
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.d, %.lr.ph.prol
  %.sroa.11.1.prol = phi i64 [ %i.y, %bb.d ], [ %.sroa.0.027, %.lr.ph.prol ] ; 2 uses
  %.sroa.5.0.prol = add nuw i64 %.sroa.0.027, 2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.11.1.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.5.030.unr = phi i64 [ %.sroa.5.028, %.lr.ph.preheader ], [ %.sroa.5.0.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.11.029.unr = phi i64 [ %.sroa.0.027, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.z = icmp eq i64 %i.o, %indvar
  br i1 %i.z, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %.sroa.5.028, %i.b
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.h, %.preheader
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.027, %.preheader ], [ %.sroa.11.1.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.sroa.11.1.1, %bb.h ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.a, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.h
  %.sroa.5.030 = phi i64 [ %.sroa.5.0.1, %bb.h ], [ %.sroa.5.030.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.11.029 = phi i64 [ %.sroa.11.1.1, %bb.h ], [ %.sroa.11.029.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.030 ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.11.029 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -8
  %i.ad = load <2 x i32>, ptr %i.aa, align 4
  %i.ae = load <2 x i32>, ptr %i.ac, align 4
  %i.af = icmp eq <2 x i32> %i.ad, %i.ae          ; 2 uses
  %i.ag = extractelement <2 x i1> %i.af, i64 0
  %i.ah = extractelement <2 x i1> %i.af, i64 1
  %spec.select.i.i17 = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %spec.select.i.i17, label %.lr.ph.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ai = load i64, ptr %i.aa, align 4
  store i64 %i.ai, ptr %i.ab, align 4
  %i.aj = add i64 %.sroa.11.029, 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.f
  %.sroa.11.1 = phi i64 [ %i.aj, %bb.f ], [ %.sroa.11.029, %.lr.ph ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.030
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.am = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.11.1 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 -8
  %i.ao = load <2 x i32>, ptr %i.al, align 4
  %i.ap = load <2 x i32>, ptr %i.an, align 4
  %i.aq = icmp eq <2 x i32> %i.ao, %i.ap          ; 2 uses
  %i.ar = extractelement <2 x i1> %i.aq, i64 0
  %i.as = extractelement <2 x i1> %i.aq, i64 1
  %spec.select.i.i17.1 = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %spec.select.i.i17.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.1
  %i.at = load i64, ptr %i.al, align 4
  store i64 %i.at, ptr %i.am, align 4
  %i.au = add i64 %.sroa.11.1, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.1
  %.sroa.11.1.1 = phi i64 [ %i.au, %bb.g ], [ %.sroa.11.1, %.lr.ph.1 ] ; 2 uses
  %.sroa.5.0.1 = add nuw nsw i64 %.sroa.5.030, 2  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.sroa.5.0.1, %i.b
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTtlEE6retainNCINvMNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations11ivs_builderNtBX_21VariationStoreBuilder10add_deltassE0ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !113, !noundef !4 ; 9 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTtlEE10retain_mutNCINvB2_6retainNCINvMNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations11ivs_builderNtB1h_21VariationStoreBuilder10add_deltassE0E0ECshxhuDJfZv4T_6fontbe.exit, label %.preheader22.i

.preheader22.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !113, !nonnull !4, !noundef !4 ; 11 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.g = icmp samesign ult i64 %i.b, 4
  br i1 %i.g, label %.epil.preheader, label %.preheader22.i.new

.preheader22.i.new:                               ; preds = %.preheader22.i
  %unroll_iter = and i64 %i.b, 1152921504606846972
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.preheader22.i.new
  %.sroa.0.0.i = phi i64 [ 0, %.preheader22.i.new ], [ %.sroa.7.025.i.3, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader22.i.new ], [ %niter.next.3, %bb.g ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.0.0.i
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.val9.i = load i32, ptr %i.i, align 4, !noalias !113, !noundef !4
  %.not.i = icmp eq i32 %.val9.i, 0
  %.sroa.7.025.i = or disjoint i64 %.sroa.0.0.i, 1 ; 3 uses
  br i1 %.not.i, label %.preheader.i, label %bb.d, !prof !9

.preheader.i:                                     ; preds = %bb.k, %bb.b, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i.lcssa = phi i64 [ %.sroa.7.025.i.2, %bb.f ], [ %.sroa.0.0.i, %bb.b ], [ %.sroa.7.025.i, %bb.d ], [ %.sroa.7.025.i.1, %bb.e ], [ %.sroa.0.0.i.epil, %bb.k ] ; 5 uses
  %.sroa.7.025.i.lcssa = phi i64 [ %.sroa.7.025.i.3, %bb.f ], [ %.sroa.7.025.i, %bb.b ], [ %.sroa.7.025.i.1, %bb.d ], [ %.sroa.7.025.i.2, %bb.e ], [ %.sroa.7.025.i.epil, %bb.k ] ; 6 uses
  %i.j = icmp samesign ult i64 %.sroa.7.025.i.lcssa, %i.b
  br i1 %i.j, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.k = sub nuw i64 %i.b, %.sroa.7.025.i.lcssa
  %.neg = add i64 %.sroa.7.025.i.lcssa, 1
  %xtraiter12 = and i64 %i.k, 1
  %lcmp.mod13.not = icmp eq i64 %xtraiter12, 0
  br i1 %lcmp.mod13.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.7.025.i.lcssa ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %.val.i.prol = load i32, ptr %i.m, align 4, !noalias !113, !noundef !4
  %.not21.i.prol = icmp eq i32 %.val.i.prol, 0
  br i1 %.not21.i.prol, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.prol
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.0.0.i.lcssa
  %i.o = load i64, ptr %i.l, align 4, !noalias !113
  store i64 %i.o, ptr %i.n, align 4, !noalias !113
  %i.p = add i64 %.sroa.0.0.i.lcssa, 1
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.c, %.lr.ph.i.prol
  %.sroa.13.1.i.prol = phi i64 [ %i.p, %bb.c ], [ %.sroa.0.0.i.lcssa, %.lr.ph.i.prol ] ; 2 uses
  %.sroa.7.0.i.prol = add nuw nsw i64 %.sroa.7.025.i.lcssa, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.13.1.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %.sroa.13.1.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.sroa.7.027.i.unr = phi i64 [ %.sroa.7.025.i.lcssa, %.lr.ph.i.preheader ], [ %.sroa.7.0.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.sroa.13.026.i.unr = phi i64 [ %.sroa.0.0.i.lcssa, %.lr.ph.i.preheader ], [ %.sroa.13.1.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.q = icmp eq i64 %i.b, %.neg
  br i1 %i.q, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.7.025.i
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %.val9.i.1 = load i32, ptr %i.s, align 4, !noalias !113, !noundef !4
  %.not.i.1 = icmp eq i32 %.val9.i.1, 0
  %.sroa.7.025.i.1 = or disjoint i64 %.sroa.0.0.i, 2 ; 3 uses
  br i1 %.not.i.1, label %.preheader.i, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.7.025.i.1
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %.val9.i.2 = load i32, ptr %i.u, align 4, !noalias !113, !noundef !4
  %.not.i.2 = icmp eq i32 %.val9.i.2, 0
  %.sroa.7.025.i.2 = or disjoint i64 %.sroa.0.0.i, 3 ; 3 uses
  br i1 %.not.i.2, label %.preheader.i, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.7.025.i.2
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %.val9.i.3 = load i32, ptr %i.w, align 4, !noalias !113, !noundef !4
  %.not.i.3 = icmp eq i32 %.val9.i.3, 0
  %.sroa.7.025.i.3 = add nuw nsw i64 %.sroa.0.0.i, 4 ; 3 uses
  br i1 %.not.i.3, label %.preheader.i, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTtlEE10retain_mutNCINvB2_6retainNCINvMNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations11ivs_builderNtB1h_21VariationStoreBuilder10add_deltassE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.unr-lcssa, label %bb.b

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i.lcssa, %.preheader.i ], [ %.sroa.13.1.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.13.1.i.1, %bb.j ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !113
  br label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTtlEE10retain_mutNCINvB2_6retainNCINvMNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations11ivs_builderNtB1h_21VariationStoreBuilder10add_deltassE0E0ECshxhuDJfZv4T_6fontbe.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %.sroa.7.027.i = phi i64 [ %.sroa.7.0.i.1, %bb.j ], [ %.sroa.7.027.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.13.026.i = phi i64 [ %.sroa.13.1.i.1, %bb.j ], [ %.sroa.13.026.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.7.027.i ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 4
  %.val.i = load i32, ptr %i.y, align 4, !noalias !113, !noundef !4
  %.not21.i = icmp eq i32 %.val.i, 0
  br i1 %.not21.i, label %.lr.ph.i.1, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.13.026.i
  %i.aa = load i64, ptr %i.x, align 4, !noalias !113
  store i64 %i.aa, ptr %i.z, align 4, !noalias !113
  %i.ab = add i64 %.sroa.13.026.i, 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.h, %.lr.ph.i
  %.sroa.13.1.i = phi i64 [ %i.ab, %bb.h ], [ %.sroa.13.026.i, %.lr.ph.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.7.027.i ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 12
  %.val.i.1 = load i32, ptr %i.ad, align 4, !noalias !113, !noundef !4
  %.not21.i.1 = icmp eq i32 %.val.i.1, 0
  br i1 %.not21.i.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.13.1.i
  %i.ag = load i64, ptr %i.ae, align 4, !noalias !113
  store i64 %i.ag, ptr %i.af, align 4, !noalias !113
  %i.ah = add i64 %.sroa.13.1.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.1
  %.sroa.13.1.i.1 = phi i64 [ %i.ah, %bb.i ], [ %.sroa.13.1.i, %.lr.ph.i.1 ] ; 2 uses
  %.sroa.7.0.i.1 = add nuw nsw i64 %.sroa.7.027.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %.sroa.7.0.i.1, %i.b
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i

_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTtlEE10retain_mutNCINvB2_6retainNCINvMNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations11ivs_builderNtB1h_21VariationStoreBuilder10add_deltassE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTtlEE10retain_mutNCINvB2_6retainNCINvMNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations11ivs_builderNtB1h_21VariationStoreBuilder10add_deltassE0E0ECshxhuDJfZv4T_6fontbe.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTtlEE10retain_mutNCINvB2_6retainNCINvMNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations11ivs_builderNtB1h_21VariationStoreBuilder10add_deltassE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.unr-lcssa, %.preheader22.i
  %.sroa.0.0.i.epil.init = phi i64 [ 0, %.preheader22.i ], [ %.sroa.7.025.i.3, %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTtlEE10retain_mutNCINvB2_6retainNCINvMNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations11ivs_builderNtB1h_21VariationStoreBuilder10add_deltassE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.epil.preheader
  %.sroa.0.0.i.epil = phi i64 [ %.sroa.7.025.i.epil, %bb.l ], [ %.sroa.0.0.i.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.l ], [ 0, %.epil.preheader ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.0.0.i.epil
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %.val9.i.epil = load i32, ptr %i.aj, align 4, !noalias !113, !noundef !4
  %.not.i.epil = icmp eq i32 %.val9.i.epil, 0
  %.sroa.7.025.i.epil = add nuw nsw i64 %.sroa.0.0.i.epil, 1 ; 2 uses
  br i1 %.not.i.epil, label %.preheader.i, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTtlEE10retain_mutNCINvB2_6retainNCINvMNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations11ivs_builderNtB1h_21VariationStoreBuilder10add_deltassE0E0ECshxhuDJfZv4T_6fontbe.exit, label %bb.k, !llvm.loop !112

_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTtlEE10retain_mutNCINvB2_6retainNCINvMNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations11ivs_builderNtB1h_21VariationStoreBuilder10add_deltassE0E0ECshxhuDJfZv4T_6fontbe.exit: ; preds = %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTtlEE10retain_mutNCINvB2_6retainNCINvMNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations11ivs_builderNtB1h_21VariationStoreBuilder10add_deltassE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.unr-lcssa, %bb.l, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecbE5drainNtNtNtCsf3Ta7LF998c_4core3ops5range9RangeFullECshxhuDJfZv4T_6fontbe(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECshxhuDJfZv4T_6fontbe(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE5drainINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECshxhuDJfZv4T_6fontbe(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECshxhuDJfZv4T_6fontbe(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjE8dedup_byNCNvMs5_B5_Bv_5dedup0ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 7 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 7 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvar = phi i64 [ 0, %bb.b ], [ %indvar.next, %bb.e ] ; 3 uses
  %.sroa.0.022 = phi i64 [ 1, %bb.b ], [ %.sroa.5.023, %bb.e ] ; 8 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.022 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %.val11 = load i64, ptr %i.g, align 8, !noundef !4
  %.val12 = load i64, ptr %i.h, align 8, !noundef !4
  %i.i = icmp eq i64 %.val11, %.val12
  %.sroa.5.023 = add nuw i64 %.sroa.0.022, 1      ; 5 uses
  br i1 %i.i, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.j = icmp ult i64 %.sroa.5.023, %i.b
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.k = sub i64 %i.b, %indvar
  %i.l = add nsw i64 %i.b, -3
  %xtraiter = and i64 %i.k, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.023
  %i.n = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.022 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %.val.prol = load i64, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %.val10.prol = load i64, ptr %i.o, align 8, !noundef !4
  %i.p = icmp eq i64 %.val.prol, %.val10.prol
  br i1 %i.p, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.prol
  store i64 %.val.prol, ptr %i.n, align 8
  %i.q = add i64 %.sroa.0.022, 1
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.d, %.lr.ph.prol
  %.sroa.11.1.prol = phi i64 [ %i.q, %bb.d ], [ %.sroa.0.022, %.lr.ph.prol ] ; 2 uses
  %.sroa.5.0.prol = add nuw i64 %.sroa.0.022, 2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.11.1.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.5.025.unr = phi i64 [ %.sroa.5.023, %.lr.ph.preheader ], [ %.sroa.5.0.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.11.024.unr = phi i64 [ %.sroa.0.022, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.r = icmp eq i64 %i.l, %indvar
  br i1 %i.r, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %.sroa.5.023, %i.b
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.h, %.preheader
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.022, %.preheader ], [ %.sroa.11.1.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.sroa.11.1.1, %bb.h ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.a, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.h
  %.sroa.5.025 = phi i64 [ %.sroa.5.0.1, %bb.h ], [ %.sroa.5.025.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.11.024 = phi i64 [ %.sroa.11.1.1, %bb.h ], [ %.sroa.11.024.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.025
  %i.t = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.11.024 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %.val = load i64, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %.val10 = load i64, ptr %i.u, align 8, !noundef !4
  %i.v = icmp eq i64 %.val, %.val10
  br i1 %i.v, label %.lr.ph.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store i64 %.val, ptr %i.t, align 8
  %i.w = add i64 %.sroa.11.024, 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.f
  %.sroa.11.1 = phi i64 [ %i.w, %bb.f ], [ %.sroa.11.024, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.025
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.11.1 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -8
  %.val.1 = load i64, ptr %i.y, align 8, !noundef !4 ; 2 uses
  %.val10.1 = load i64, ptr %i.aa, align 8, !noundef !4
  %i.ab = icmp eq i64 %.val.1, %.val10.1
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.1
  store i64 %.val.1, ptr %i.z, align 8
  %i.ac = add i64 %.sroa.11.1, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.1
  %.sroa.11.1.1 = phi i64 [ %i.ac, %bb.g ], [ %.sroa.11.1, %.lr.ph.1 ] ; 2 uses
  %.sroa.5.0.1 = add nuw nsw i64 %.sroa.5.025, 2  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.sroa.5.0.1, %i.b
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmE5drainNtNtNtCsf3Ta7LF998c_4core3ops5range9RangeFullECshxhuDJfZv4T_6fontbe(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECshxhuDJfZv4T_6fontbe(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtCs6ycZ7hHN0vs_14icu_properties5props9BidiClassE14extend_trustedINtNtCsf3Ta7LF998c_4core6option8IntoIterBG_EECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i1 noundef zeroext %1, i8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i1 %1 to i64                        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !125, !noundef !4 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !range !10, !alias.scope !125, !noundef !4
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ult i64 %i.e, %i.a
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs6ycZ7hHN0vs_14icu_properties5props9BidiClassE7reserveCshxhuDJfZv4T_6fontbe.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %i.a, i64 noundef 1, i64 noundef 1)
  %.pre = load i64, ptr %i.b, align 8
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs6ycZ7hHN0vs_14icu_properties5props9BidiClassE7reserveCshxhuDJfZv4T_6fontbe.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs6ycZ7hHN0vs_14icu_properties5props9BidiClassE7reserveCshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.c, %bb.a ], [ %.pre, %bb.b ] ; 3 uses
  br i1 %1, label %.lr.ph.i.i, label %_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCs6ycZ7hHN0vs_14icu_properties5props9BidiClassENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2t_3VecBH_E14extend_trustedB3_E0ECshxhuDJfZv4T_6fontbe.exit

.lr.ph.i.i:                                       ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs6ycZ7hHN0vs_14icu_properties5props9BidiClassE7reserveCshxhuDJfZv4T_6fontbe.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  store i8 %2, ptr %i.j, align 1, !noalias !126
  %i.k = add i64 %i.g, 1
  br label %_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCs6ycZ7hHN0vs_14icu_properties5props9BidiClassENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2t_3VecBH_E14extend_trustedB3_E0ECshxhuDJfZv4T_6fontbe.exit

_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCs6ycZ7hHN0vs_14icu_properties5props9BidiClassENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB2t_3VecBH_E14extend_trustedB3_E0ECshxhuDJfZv4T_6fontbe.exit: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs6ycZ7hHN0vs_14icu_properties5props9BidiClassE7reserveCshxhuDJfZv4T_6fontbe.exit, %.lr.ph.i.i
  %.val6.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.g, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs6ycZ7hHN0vs_14icu_properties5props9BidiClassE7reserveCshxhuDJfZv4T_6fontbe.exit ]
  store i64 %.val6.i.i, ptr %i.b, align 8, !noalias !127
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1W_5slice4iter4IterINtNtBK_14feature_writer13PendingLookupNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders16MarkToLigBuilderEENCNvNvXs4_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtNtB57_13orchestration10FeaRsMarksNtB35_15FeatureProvider12add_features15add_all_lookupss_0EEB57_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = ptrtoint ptr %.val3 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 104                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !130, !noundef !4 ; 3 uses
  %i.i = load i64, ptr %0, align 8, !range !10, !alias.scope !130, !noundef !4
  %i.j = sub i64 %i.i, %i.h
  %i.k = icmp ugt i64 %i.f, %i.j
  br i1 %i.k, label %bb.b, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE7reserveCshxhuDJfZv4T_6fontbe.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.h, i64 noundef %i.f, i64 noundef 8, i64 noundef 16)
  %.pre = load i64, ptr %i.g, align 8
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE7reserveCshxhuDJfZv4T_6fontbe.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE7reserveCshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.a, %bb.b
  %i.l = phi i64 [ %i.h, %bb.a ], [ %.pre, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.o, align 8
  store ptr %i.g, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.l, ptr %i.p, align 8
  call void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer13PendingLookupNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders16MarkToLigBuilderEENCNvNvXs4_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtNtB3U_13orchestration10FeaRsMarksNtB1q_15FeatureProvider12add_features15add_all_lookupss_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5Z_8for_each4callNtNtB1s_7lookups8LookupIdNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB7A_3VecB72_E14extend_trustedBN_E0E0EB3U_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1W_5slice4iter4IterINtNtBK_14feature_writer13PendingLookupNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders17MarkToBaseBuilderEENCNvNvXs4_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtNtB58_13orchestration10FeaRsMarksNtB35_15FeatureProvider12add_features15add_all_lookups0EEB58_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = ptrtoint ptr %.val3 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 104                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !133, !noundef !4 ; 3 uses
  %i.i = load i64, ptr %0, align 8, !range !10, !alias.scope !133, !noundef !4
  %i.j = sub i64 %i.i, %i.h
  %i.k = icmp ugt i64 %i.f, %i.j
  br i1 %i.k, label %bb.b, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE7reserveCshxhuDJfZv4T_6fontbe.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.h, i64 noundef %i.f, i64 noundef 8, i64 noundef 16)
  %.pre = load i64, ptr %i.g, align 8
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE7reserveCshxhuDJfZv4T_6fontbe.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE7reserveCshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.a, %bb.b
  %i.l = phi i64 [ %i.h, %bb.a ], [ %.pre, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.o, align 8
  store ptr %i.g, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.l, ptr %i.p, align 8
  call void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer13PendingLookupNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos8builders17MarkToBaseBuilderEENCNvNvXs4_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtNtB3V_13orchestration10FeaRsMarksNtB1q_15FeatureProvider12add_features15add_all_lookups0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5Y_8for_each4callNtNtB1s_7lookups8LookupIdNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB7z_3VecB71_E14extend_trustedBN_E0E0EB3V_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
