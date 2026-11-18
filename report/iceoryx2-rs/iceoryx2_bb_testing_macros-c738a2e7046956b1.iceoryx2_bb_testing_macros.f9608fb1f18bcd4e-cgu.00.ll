Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_testing_macros-c738a2e7046956b1.iceoryx2_bb_testing_macros.f9608fb1f18bcd4e-cgu.00?download=true
inline.NumInlined: 737
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXNtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internalNtB2_15MacroParametersNtNtCs2TChw36tfyQ_3syn5parse5Parse5parse:bb.a
  %common.resume.op = phi { ptr, i32 } [ %i.bw, %bb.ay ], [ %.pn81, %.body83 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecTNtNtCs2TChw36tfyQ_3syn4path15GenericArgumentB19_EEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs2TChw36tfyQ_3syn5parse11ParseBufferECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit89
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecTNtNtCs2TChw36tfyQ_3syn4path15GenericArgumentBN_EENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.d, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecTNtNtCs2TChw36tfyQ_3syn4path15GenericArgumentB19_EEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit, %bb.e, %bb.i
  ret void

.thread:                                          ; preds = %.body.thread102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w, %bb.aw
  %.pn92 = phi { ptr, i32 } [ %i.am, %bb.w ], [ %lpad.thr_comm.split-lp101, %bb.aw ], [ %lpad.loopexit.split-lp144, %.body.thread102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs2TChw36tfyQ_3syn5parse11ParseBufferECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #15
          to label %.body83 unwind label %bb.ax
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs8Chj7Szqq0n_4core3ops8function5implsQNCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internal18strip_requires_std0INtB7_5FnMutTRRNtNtCs2TChw36tfyQ_3syn4attr9AttributeEE8call_mutBU_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !13, !align !12, !noundef !13
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMNtCs2TChw36tfyQ_3syn4attrNtB2_9Attribute4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.val)
  %i.b = tail call noundef zeroext i1 @_RINvMs_NtCs2TChw36tfyQ_3syn4pathNtB5_4Path8is_identeECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 12)
  %i.c = xor i1 %i.b, true
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs8Chj7Szqq0n_4core3ops8function5implsQNCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internal21strip_test_attributes0INtB7_5FnMutTRRNtNtCs2TChw36tfyQ_3syn4attr9AttributeEE8call_mutBU_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !13, !align !12, !noundef !13 ; 3 uses
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMNtCs2TChw36tfyQ_3syn4attrNtB2_9Attribute4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.val), !noalias !1470
  %i.b = tail call noundef zeroext i1 @_RINvMs_NtCs2TChw36tfyQ_3syn4pathNtB5_4Path8is_identReECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) @7), !noalias !1471
  br i1 %i.b, label %_RNCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internal21strip_test_attributes0B5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 ptr @_RNvMNtCs2TChw36tfyQ_3syn4attrNtB2_9Attribute4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.val), !noalias !1470
  %i.d = tail call noundef zeroext i1 @_RINvMs_NtCs2TChw36tfyQ_3syn4pathNtB5_4Path8is_identReECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @7, i64 16)), !noalias !1471
  br i1 %i.d, label %_RNCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internal21strip_test_attributes0B5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMNtCs2TChw36tfyQ_3syn4attrNtB2_9Attribute4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.val), !noalias !1470
  %i.f = tail call noundef zeroext i1 @_RINvMs_NtCs2TChw36tfyQ_3syn4pathNtB5_4Path8is_identReECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @7, i64 32)), !noalias !1471
  %not..i = xor i1 %i.f, true
  br label %_RNCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internal21strip_test_attributes0B5_.exit

_RNCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internal21strip_test_attributes0B5_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.not.not.not.i.not.lcssa.i = phi i1 [ %not..i, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.not.not.not.i.not.lcssa.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs8Chj7Szqq0n_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1474, !noundef !13 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1474, !nonnull !13, !noundef !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1474, !nonnull !13, !noundef !13
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !1474
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  tail call void @_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !1480
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1481, !noundef !13 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1481, !nonnull !13, !noundef !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !1481
  br label %_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !1481
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !13, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !13
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs8Chj7Szqq0n_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !29, !noundef !13
  switch i64 %i.a, label %default.unreachable260 [
    i64 0, label %.preheader
    i64 1, label %bb.q
    i64 2, label %bb.r
  ]

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !range !32
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !13 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i64, ptr %i.i, align 8              ; 16 uses
  br i1 %i.e, label %_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.promoted205 = load i8, ptr %i.f, align 8      ; 4 uses
  %.promoted156 = load i64, ptr %i.b, align 8     ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  %i.k = trunc nuw i8 %.promoted205 to i1         ; 2 uses
  %i.l = icmp eq i64 %.promoted156, 0
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader
  %.not.i.i.us.peel = icmp ult i64 %.promoted156, %i.j
  br i1 %.not.i.i.us.peel, label %bb.c, label %.split.i.i.us.peel

.split.i.i.us.peel:                               ; preds = %bb.b
  %i.m = icmp eq i64 %.promoted156, %i.j
  br i1 %i.m, label %bb.d, label %.split.us160

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %.promoted156
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !1508, !noalias !1509, !noundef !13
  %i.p = icmp sgt i8 %i.o, -65
  br i1 %i.p, label %bb.d, label %.split.us160

bb.d:                                             ; preds = %bb.c, %.split.i.i.us.peel, %.lr.ph.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 %.promoted156 ; 4 uses
  %i.r = icmp samesign eq i64 %.promoted156, %i.j
  br i1 %i.r, label %.split165.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.q, align 1, !noalias !1510, !noundef !13 ; 5 uses
  %i.t = icmp sgt i8 %i.s, -1
  br i1 %i.t, label %bb.f, label %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit12.i.i.us.peel

_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit12.i.i.us.peel: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.v = and i8 %i.s, 31
  %i.w = zext nneg i8 %i.v to i32                 ; 3 uses
  %i.x = add nuw nsw i64 %.promoted156, 1
  %i.y = icmp samesign ne i64 %i.x, %i.j
  tail call void @llvm.assume(i1 %i.y)
  %i.z = load i8, ptr %i.u, align 1, !noalias !1510, !noundef !13
  %i.aa = shl nuw nsw i32 %i.w, 6
  %i.ab = and i8 %i.z, 63
  %i.ac = zext nneg i8 %i.ab to i32               ; 2 uses
  %i.ad = or disjoint i32 %i.aa, %i.ac
  %i.ae = icmp samesign ugt i8 %i.s, -33
  br i1 %i.ae, label %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit14.i.i.us.peel, label %bb.g

_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit14.i.i.us.peel: ; preds = %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit12.i.i.us.peel
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.ag = add nuw nsw i64 %.promoted156, 2
  %i.ah = icmp samesign ne i64 %i.ag, %i.j
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = load i8, ptr %i.af, align 1, !noalias !1510, !noundef !13
  %i.aj = shl nuw nsw i32 %i.ac, 6
  %i.ak = and i8 %i.ai, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al            ; 2 uses
  %i.an = shl nuw nsw i32 %i.w, 12
  %i.ao = or disjoint i32 %i.am, %i.an
  %i.ap = icmp samesign ugt i8 %i.s, -17
  br i1 %i.ap, label %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit16.i.i.us.peel, label %bb.g

_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit16.i.i.us.peel: ; preds = %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit14.i.i.us.peel
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.ar = add nuw nsw i64 %.promoted156, 3
  %i.as = icmp samesign ne i64 %i.ar, %i.j
  tail call void @llvm.assume(i1 %i.as)
  %i.at = load i8, ptr %i.aq, align 1, !noalias !1510, !noundef !13
  %i.au = shl nuw nsw i32 %i.w, 18
  %i.av = and i32 %i.au, 1835008
  %i.aw = shl nuw nsw i32 %i.am, 6
  %i.ax = and i8 %i.at, 63
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  %i.ba = or disjoint i32 %i.az, %i.av
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = zext nneg i8 %i.s to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit16.i.i.us.peel, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit14.i.i.us.peel, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit12.i.i.us.peel
  %.sroa.4.0.i.ph.i.us.peel = phi i32 [ %i.ao, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit14.i.i.us.peel ], [ %i.ba, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit16.i.i.us.peel ], [ %i.ad, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit12.i.i.us.peel ], [ %i.bb, %bb.f ] ; 4 uses
  %i.bc = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.peel, 1114112
  tail call void @llvm.assume(i1 %i.bc)
  br i1 %i.k, label %.loopexit41.split.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.peel, 128
  br i1 %i.bd, label %_RNvXsv_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.peel, 2048
  br i1 %i.be, label %_RNvXsv_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.peel, 65536
  %..i.us.peel = select i1 %i.bf, i64 3, i64 4
  br label %_RNvXsv_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel

_RNvXsv_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.us.peel = phi i64 [ 2, %bb.i ], [ %..i.us.peel, %bb.j ], [ 1, %bb.h ]
  %i.bg = add i64 %.sroa.01.0.i.us.peel, %.promoted156 ; 13 uses
  store i64 %i.bg, ptr %i.b, align 8, !alias.scope !1507
  %i.bh = icmp eq i64 %i.bg, 0
  %.not.i.i.us = icmp ult i64 %i.bg, %i.j
  %i.bi = icmp eq i64 %i.bg, %i.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bg
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bg ; 4 uses
  %i.bl = icmp samesign eq i64 %i.bg, %i.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bn = add nuw nsw i64 %i.bg, 1
  %i.bo = icmp samesign ne i64 %i.bn, %i.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bq = add nuw nsw i64 %i.bg, 2
  %i.br = icmp samesign ne i64 %i.bq, %i.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  %i.bt = add nuw nsw i64 %i.bg, 3
  %i.bu = icmp samesign ne i64 %i.bt, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_RNvXsv_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %.not.i.i.us, label %bb.l, label %.split.i.i.us

.split.i.i.us:                                    ; preds = %bb.k
  br i1 %i.bi, label %bb.m, label %.split.us160

bb.l:                                             ; preds = %bb.k
  %i.bv = load i8, ptr %i.bj, align 1, !alias.scope !1508, !noalias !1512, !noundef !13
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.m, label %.split.us160

bb.m:                                             ; preds = %bb.l, %.split.i.i.us, %_RNvXsv_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %i.bl, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i8, ptr %i.bk, align 1, !noalias !1513, !noundef !13 ; 5 uses
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.o, label %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit12.i.i.us

_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit12.i.i.us: ; preds = %bb.n
  %i.bz = and i8 %i.bx, 31
  %i.ca = zext nneg i8 %i.bz to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bo)
  %i.cb = load i8, ptr %i.bm, align 1, !noalias !1513, !noundef !13
  %i.cc = shl nuw nsw i32 %i.ca, 6
  %i.cd = and i8 %i.cb, 63
  %i.ce = zext nneg i8 %i.cd to i32               ; 2 uses
  %i.cf = or disjoint i32 %i.cc, %i.ce
  %i.cg = icmp samesign ugt i8 %i.bx, -33
  br i1 %i.cg, label %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit14.i.i.us, label %.loopexit41.split.us.loopexit

_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit14.i.i.us: ; preds = %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit12.i.i.us
  tail call void @llvm.assume(i1 %i.br)
  %i.ch = load i8, ptr %i.bp, align 1, !noalias !1513, !noundef !13
  %i.ci = shl nuw nsw i32 %i.ce, 6
  %i.cj = and i8 %i.ch, 63
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ci, %i.ck            ; 2 uses
  %i.cm = shl nuw nsw i32 %i.ca, 12
  %i.cn = or disjoint i32 %i.cl, %i.cm
  %i.co = icmp samesign ugt i8 %i.bx, -17
  br i1 %i.co, label %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit16.i.i.us, label %.loopexit41.split.us.loopexit

_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit16.i.i.us: ; preds = %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit14.i.i.us
  tail call void @llvm.assume(i1 %i.bu)
  %i.cp = load i8, ptr %i.bs, align 1, !noalias !1513, !noundef !13
  %i.cq = shl nuw nsw i32 %i.ca, 18
  %i.cr = and i32 %i.cq, 1835008
  %i.cs = shl nuw nsw i32 %i.cl, 6
  %i.ct = and i8 %i.cp, 63
  %i.cu = zext nneg i8 %i.ct to i32
  %i.cv = or disjoint i32 %i.cs, %i.cu
  %i.cw = or disjoint i32 %i.cv, %i.cr
  br label %.loopexit41.split.us.loopexit

bb.o:                                             ; preds = %bb.n
  %i.cx = zext nneg i8 %i.bx to i32
  br label %.loopexit41.split.us.loopexit

.loopexit41.split.us.loopexit:                    ; preds = %bb.o, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit16.i.i.us, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit14.i.i.us, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit12.i.i.us
  %.sroa.4.0.i.ph.i.us = phi i32 [ %i.cn, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit14.i.i.us ], [ %i.cw, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit16.i.i.us ], [ %i.cf, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros.exit12.i.i.us ], [ %i.cx, %bb.o ]
  %i.cy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us, 1114112
  tail call void @llvm.assume(i1 %i.cy)
  br label %.loopexit41.split.us

.split.us160:                                     ; preds = %bb.l, %.split.i.i.us, %bb.c, %.split.i.i.us.peel
  %.lcssa322 = phi i64 [ %.promoted156, %.split.i.i.us.peel ], [ %.promoted156, %bb.c ], [ %i.bg, %.split.i.i.us ], [ %i.bg, %bb.l ]
  %.lcssa319 = phi i8 [ %.promoted205, %.split.i.i.us.peel ], [ %.promoted205, %bb.c ], [ 1, %.split.i.i.us ], [ 1, %bb.l ]
  %i.cz = xor i8 %.lcssa319, 1
  store i8 %i.cz, ptr %i.f, align 8, !alias.scope !1511
  tail call void @_RNvNtCs8Chj7Szqq0n_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, i64 noundef %.lcssa322, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #18, !noalias !1512
  unreachable

.split165.us:                                     ; preds = %bb.d
  %i.da = xor i8 %.promoted205, 1
  store i8 %i.da, ptr %i.f, align 8, !alias.scope !1511
  br i1 %i.k, label %bb.s, label %bb.p

.loopexit41.split.us:                             ; preds = %.loopexit41.split.us.loopexit, %bb.g
  %.lcssa324 = phi i64 [ %.promoted156, %bb.g ], [ %i.bg, %.loopexit41.split.us.loopexit ]
  store i8 0, ptr %i.f, align 8, !alias.scope !1511
  br label %bb.s

default.unreachable260:                           ; preds = %bb.a
  unreachable

bb.p:                                             ; preds = %.split165.us
  store i8 1, ptr %i.c, align 2, !alias.scope !1511
  br label %_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit

bb.q:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dc = load i64, ptr %i.db, align 8, !noundef !13 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !noundef !13 ; 4 uses
  %.not = icmp ult i64 %i.de, %i.dc
  br i1 %.not, label %bb.t, label %_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit

bb.r:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !13 ; 2 uses
  %i.di = icmp eq i64 %i.dh, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !13, !noundef !13 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !13 ; 10 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !13 ; 14 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.ds = add nsw i64 %i.dq, -1                   ; 4 uses
  br i1 %i.di, label %bb.ae, label %bb.w

.critedge:                                        ; preds = %bb.m
  store i8 0, ptr %i.f, align 8, !alias.scope !1511
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %.loopexit41.split.us, %.split165.us
  %i.dt = phi i64 [ %.lcssa324, %.loopexit41.split.us ], [ %i.j, %.split165.us ], [ %i.j, %.critedge ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dt, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dt, ptr %i.dv, align 8
  br label %_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit

_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit: ; preds = %bb.s, %bb.p, %.preheader, %.split.us.i20, %._crit_edge.i12, %.split.us.i10, %._crit_edge.i, %.loopexit42, %.loopexit43, %bb.q
  %storemerge.i.sink = phi i64 [ 1, %.loopexit42 ], [ 1, %.split.us.i10 ], [ 0, %bb.q ], [ 1, %.split.us.i20 ], [ 0, %.loopexit43 ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i12 ], [ 1, %bb.s ], [ 0, %bb.p ], [ 0, %.preheader ]
  store i64 %storemerge.i.sink, ptr %0, align 8
  ret void

bb.t:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !13, !noundef !13
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dz = load i8, ptr %i.dy, align 8, !noundef !13 ; 2 uses
  %i.ea = sub nuw i64 %i.dc, %i.de                ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.de ; 2 uses
  %i.ec = icmp samesign ult i64 %i.ea, 16
  br i1 %i.ec, label %.lr.ph.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = tail call { i64, i64 } @_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr14memchr_aligned(i8 noundef %i.dz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ea) ; 2 uses
  %i.ee = extractvalue { i64, i64 } %i.ed, 0
  %i.ef = extractvalue { i64, i64 } %i.ed, 1
  %i.eg = trunc nuw i64 %i.ee to i1
  br i1 %i.eg, label %.loopexit42, label %.loopexit43

.lr.ph.i:                                         ; preds = %bb.t, %bb.v
  %.sroa.04.011.i = phi i64 [ %i.ek, %bb.v ], [ 0, %bb.t ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.sroa.04.011.i
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !1514, !noundef !13
  %i.ej = icmp eq i8 %i.ei, %i.dz
  br i1 %i.ej, label %.loopexit42, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %i.ek = add nuw nsw i64 %.sroa.04.011.i, 1      ; 2 uses
  %exitcond.not.i7 = icmp eq i64 %i.ek, %i.ea
  br i1 %exitcond.not.i7, label %.loopexit43, label %.lr.ph.i

.loopexit42:                                      ; preds = %.lr.ph.i, %bb.u
  %.sroa.5.0.i = phi i64 [ %i.ef, %bb.u ], [ %.sroa.04.011.i, %.lr.ph.i ] ; 2 uses
  %i.el = icmp ult i64 %.sroa.5.0.i, %i.ea
  tail call void @llvm.assume(i1 %i.el)
  %i.em = add i64 %.sroa.5.0.i, %i.de             ; 2 uses
  %i.en = add i64 %i.em, 1                        ; 2 uses
  store i64 %i.en, ptr %i.dd, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.em, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.en, ptr %i.ep, align 8
  br label %_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit

.loopexit43:                                      ; preds = %bb.v, %bb.u
  store i64 %i.dc, ptr %i.dd, align 8
  br label %_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit

bb.w:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  %.promoted.i = load i64, ptr %i.dr, align 8, !alias.scope !1516 ; 2 uses
  %i.eq = add i64 %.promoted.i, %i.ds             ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.dm
  br i1 %i.er, label %.lr.ph.i8, label %._crit_edge.i

.lr.ph.i8:                                        ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !1516, !noundef !13
  %i.eu = load i64, ptr %i.df, align 8, !alias.scope !1516 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !1516 ; 2 uses
  %i.ex = sub i64 %i.dq, %i.ew
  %invariant.op = sub i64 1, %i.eu
  br label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.z, %bb.w
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !1516
  br label %_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit

.lr.ph.split.i:                                   ; preds = %bb.z, %.lr.ph.i8
  %i.ey = phi i64 [ %.sink70.i, %bb.z ], [ %i.dh, %.lr.ph.i8 ] ; 3 uses
  %i.ez = phi i64 [ %i.fk, %bb.z ], [ %i.eq, %.lr.ph.i8 ]
  %i.fa = phi i64 [ %.sink71.i, %bb.z ], [ %.promoted.i, %.lr.ph.i8 ] ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ez
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !1517, !noundef !13
  %i.fd = and i8 %i.fc, 63
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.ff, %i.et
  %.not.i9 = icmp eq i64 %i.fg, 0
  br i1 %.not.i9, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.split.i
  %i.fh = add i64 %i.fa, %i.dq
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph.split.i
  %i.fi = tail call i64 @llvm.umax.i64(i64 %i.eu, i64 %i.ey) ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.dq
  br i1 %i.fj, label %.lr.ph305, label %.preheader36.i.preheader

bb.z:                                             ; preds = %bb.ad, %bb.ac, %bb.x
  %.sink71.i = phi i64 [ %i.gi, %bb.ad ], [ %i.gh, %bb.ac ], [ %i.fh, %bb.x ] ; 3 uses
  %.sink70.i = phi i64 [ 0, %bb.ad ], [ %i.ex, %bb.ac ], [ 0, %bb.x ] ; 2 uses
  store i64 %.sink71.i, ptr %i.dr, align 8, !alias.scope !1516
  store i64 %.sink70.i, ptr %i.dg, align 8, !alias.scope !1516
  %i.fk = add i64 %.sink71.i, %i.ds               ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.dm
  br i1 %i.fl, label %.lr.ph.split.i, label %._crit_edge.i

bb.aa:                                            ; preds = %.lr.ph305
  %i.fm = add nuw nsw i64 %.sroa.04.0.i304, 1     ; 2 uses
  %i.fn = icmp ult i64 %i.fm, %i.dq
  br i1 %i.fn, label %.lr.ph305, label %.preheader36.i.preheader

.preheader36.i.preheader:                         ; preds = %bb.aa, %bb.y
  %i.fo = icmp ult i64 %i.ey, %i.eu
  br i1 %i.fo, label %.lr.ph307, label %.split.us.i10

.lr.ph305:                                        ; preds = %bb.y, %bb.aa
  %.sroa.04.0.i304 = phi i64 [ %i.fm, %bb.aa ], [ %i.fi, %bb.y ] ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.i304
  %i.fq = load i8, ptr %i.fp, align 1, !alias.scope !1518, !noundef !13
  %i.fr = add i64 %.sroa.04.0.i304, %i.fa         ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.dm
  tail call void @llvm.assume(i1 %i.fs)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fr
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !1517, !noundef !13
  %.not21.i = icmp eq i8 %i.fq, %i.fu
  br i1 %.not21.i, label %bb.aa, label %bb.ad

.preheader36.i:                                   ; preds = %bb.ab
  %i.fv = icmp ult i64 %i.ey, %i.fz
  br i1 %i.fv, label %.lr.ph307, label %.split.us.i10

.split.us.i10:                                    ; preds = %.preheader36.i.preheader, %.preheader36.i
  %i.fw = add i64 %i.fa, %i.dq                    ; 2 uses
  store i64 %i.fw, ptr %i.dr, align 8, !alias.scope !1516
  store i64 0, ptr %i.dg, align 8, !alias.scope !1516
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fa, ptr %i.fx, align 8, !alias.scope !1519
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fw, ptr %i.fy, align 8, !alias.scope !1519
  br label %_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit

.lr.ph307:                                        ; preds = %.preheader36.i.preheader, %.preheader36.i
  %.sroa.2.0.i306 = phi i64 [ %i.fz, %.preheader36.i ], [ %i.eu, %.preheader36.i.preheader ]
  %i.fz = add i64 %.sroa.2.0.i306, -1             ; 6 uses
  %i.ga = icmp ult i64 %i.fz, %i.dq
  br i1 %i.ga, label %bb.ab, label %.split32.us.i

bb.ab:                                            ; preds = %.lr.ph307
  %i.gb = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fz
  %i.gc = load i8, ptr %i.gb, align 1, !alias.scope !1518, !noundef !13
  %i.gd = add i64 %i.fz, %i.fa                    ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.dm
  tail call void @llvm.assume(i1 %i.ge)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gd
  %i.gg = load i8, ptr %i.gf, align 1, !alias.scope !1517, !noundef !13
  %.not20.i = icmp eq i8 %i.gc, %i.gg
  br i1 %.not20.i, label %.preheader36.i, label %bb.ac

.split32.us.i:                                    ; preds = %.lr.ph307
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.fz, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18, !noalias !1520
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.gh = add i64 %i.fa, %i.ew
  br label %bb.z

bb.ad:                                            ; preds = %.lr.ph305
  %.reass.reass = add i64 %i.fa, %invariant.op
  %i.gi = add i64 %.reass.reass, %.sroa.04.0.i304
  br label %bb.z

bb.ae:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1524)
  %.promoted.i11 = load i64, ptr %i.dr, align 8, !alias.scope !1522 ; 2 uses
  %i.gj = add i64 %.promoted.i11, %i.ds           ; 2 uses
  %i.gk = icmp ult i64 %i.gj, %i.dm
  br i1 %i.gk, label %.lr.ph.i14, label %._crit_edge.i12

.lr.ph.i14:                                       ; preds = %bb.ae
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !1522, !noundef !13
  %i.gn = load i64, ptr %i.df, align 8, !alias.scope !1522
  %.fr214 = freeze i64 %i.gn                      ; 7 uses
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !1522
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.fr214, i64 range(i64 0, -9223372036854775808) %i.dq)
  %i.gq = add i64 %.fr214, -1                     ; 2 uses
  %.first_iter.i15 = icmp ult i64 %i.gq, %i.dq
  %exitcond.not.i16309.not = icmp ult i64 %.fr214, %i.dq
  %invariant.op358 = sub i64 1, %.fr214
  %.not34.i.us312 = icmp eq i64 %.fr214, 0        ; 2 uses
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.ah, %.lr.ph.i14
  %i.gr = phi i64 [ %i.hq, %bb.ah ], [ %i.gj, %.lr.ph.i14 ]
  %i.gs = phi i64 [ %.sink.i17, %bb.ah ], [ %.promoted.i11, %.lr.ph.i14 ] ; 7 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gr
  %i.gu = load i8, ptr %i.gt, align 1, !alias.scope !1523, !noundef !13
  %i.gv = and i8 %i.gu, 63
  %i.gw = zext nneg i8 %i.gv to i64
  %i.gx = shl nuw i64 1, %i.gw
  %i.gy = and i64 %i.gx, %i.gm
  %.not.us.i = icmp eq i64 %i.gy, 0
  br i1 %.not.us.i, label %bb.ag, label %.preheader35.i.preheader

.preheader35.i.preheader:                         ; preds = %.lr.ph.split.us.i
  br i1 %exitcond.not.i16309.not, label %.lr.ph311, label %.preheader.i18.preheader

.preheader35.i:                                   ; preds = %.lr.ph311
  %i.gz = add i64 %.sroa.04.0.us.i310, 1          ; 2 uses
  %exitcond.not.i16 = icmp eq i64 %i.gz, %umax.i
  br i1 %exitcond.not.i16, label %.preheader.i18.preheader, label %.lr.ph311

.preheader.i18.preheader:                         ; preds = %.preheader35.i, %.preheader35.i.preheader
  br i1 %.first_iter.i15, label %.preheader.i18.us.preheader, label %.preheader.i18

.preheader.i18.us.preheader:                      ; preds = %.preheader.i18.preheader
  br i1 %.not34.i.us312, label %.split.us.i20, label %.lr.ph314

.preheader.i18.us:                                ; preds = %.lr.ph314
  %.not34.i.us = icmp eq i64 %i.ha, 0
  br i1 %.not34.i.us, label %.split.us.i20, label %.lr.ph314

.lr.ph314:                                        ; preds = %.preheader.i18.us.preheader, %.preheader.i18.us
  %.sroa.2.0.us.i.us313 = phi i64 [ %i.ha, %.preheader.i18.us ], [ %.fr214, %.preheader.i18.us.preheader ]
  %i.ha = add i64 %.sroa.2.0.us.i.us313, -1       ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !alias.scope !1524, !noundef !13
  %i.hd = add i64 %i.ha, %i.gs                    ; 2 uses
  %i.he = icmp ult i64 %i.hd, %i.dm
  tail call void @llvm.assume(i1 %i.he)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hd
  %i.hg = load i8, ptr %i.hf, align 1, !alias.scope !1523, !noundef !13
  %.not20.us.i.us = icmp eq i8 %i.hc, %i.hg
  br i1 %.not20.us.i.us, label %.preheader.i18.us, label %.split.us

.split.us:                                        ; preds = %.lr.ph314
  %i.hh = add i64 %i.gs, %i.gp
  br label %bb.ah

.lr.ph311:                                        ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.sroa.04.0.us.i310 = phi i64 [ %i.gz, %.preheader35.i ], [ %.fr214, %.preheader35.i.preheader ] ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.us.i310
  %i.hj = load i8, ptr %i.hi, align 1, !alias.scope !1524, !noundef !13
  %i.hk = add i64 %.sroa.04.0.us.i310, %i.gs      ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.dm
  tail call void @llvm.assume(i1 %i.hl)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hk
  %i.hn = load i8, ptr %i.hm, align 1, !alias.scope !1523, !noundef !13
  %.not21.us.i = icmp eq i8 %i.hj, %i.hn
  br i1 %.not21.us.i, label %.preheader35.i, label %bb.af

.preheader.i18:                                   ; preds = %.preheader.i18.preheader
  br i1 %.not34.i.us312, label %.split.us.i20, label %.split32.us.i19

.split32.us.i19:                                  ; preds = %.preheader.i18
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.gq, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18, !noalias !1525
  unreachable

bb.af:                                            ; preds = %.lr.ph311
  %.reass281.reass = add i64 %i.gs, %invariant.op358
  %i.ho = add i64 %.reass281.reass, %.sroa.04.0.us.i310
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.split.us.i
  %i.hp = add i64 %i.gs, %i.dq
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.split.us
  %.sink.i17 = phi i64 [ %i.hp, %bb.ag ], [ %i.ho, %bb.af ], [ %i.hh, %.split.us ] ; 3 uses
  store i64 %.sink.i17, ptr %i.dr, align 8, !alias.scope !1522
  %i.hq = add i64 %.sink.i17, %i.ds               ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %i.dm
  br i1 %i.hr, label %.lr.ph.split.us.i, label %._crit_edge.i12

._crit_edge.i12:                                  ; preds = %bb.ah, %bb.ae
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !1522
  br label %_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit

.split.us.i20:                                    ; preds = %.preheader.i18.us.preheader, %.preheader.i18.us, %.preheader.i18
  %i.hs = add i64 %i.gs, %i.dq                    ; 2 uses
  store i64 %i.hs, ptr %i.dr, align 8, !alias.scope !1522
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gs, ptr %i.ht, align 8, !alias.scope !1526
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hs, ptr %i.hu, align 8, !alias.scope !1526
  br label %_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtCs10RVWdu8coO_10proc_macro9TokenTreeENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtCslhcIeXEYQBj_11proc_macro211TokenStreamENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs2TChw36tfyQ_3syn4attr9AttributeENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs2TChw36tfyQ_3syn4expr3ArmENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs2TChw36tfyQ_3syn4stmt4StmtENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs2TChw36tfyQ_3syn5error12ErrorMessageENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecTNtNtCs2TChw36tfyQ_3syn2ty4TypeNtNtBK_5token5CommaEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecTNtNtCs2TChw36tfyQ_3syn2ty9BareFnArgNtNtBK_5token5CommaEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecTNtNtCs2TChw36tfyQ_3syn3pat3PatNtNtBK_5token2OrEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecTNtNtCs2TChw36tfyQ_3syn3pat3PatNtNtBK_5token5CommaEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecTNtNtCs2TChw36tfyQ_3syn3pat8FieldPatNtNtBK_5token5CommaEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecTNtNtCs2TChw36tfyQ_3syn4expr10FieldValueNtNtBK_5token5CommaEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecTNtNtCs2TChw36tfyQ_3syn4expr4ExprNtNtBK_5token5CommaEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecTNtNtCs2TChw36tfyQ_3syn4path11PathSegmentNtNtBK_5token7PathSepEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecTNtNtCs2TChw36tfyQ_3syn4path15GenericArgumentBG_EENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecTNtNtCs2TChw36tfyQ_3syn4path15GenericArgumentNtNtBK_5token5CommaEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecTNtNtCs2TChw36tfyQ_3syn8generics12GenericParamNtNtBK_5token5CommaEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecTNtNtCs2TChw36tfyQ_3syn8generics13CapturedParamNtNtBK_5token5CommaEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecTNtNtCs2TChw36tfyQ_3syn8generics14TypeParamBoundNtNtBK_5token4PlusEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecTNtNtCs2TChw36tfyQ_3syn8lifetime8LifetimeNtNtBK_5token4PlusEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtCs10RVWdu8coO_10proc_macro9TokenTreeENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtCslhcIeXEYQBj_11proc_macro211TokenStreamENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs2TChw36tfyQ_3syn4attr9AttributeENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs2TChw36tfyQ_3syn4expr3ArmENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs2TChw36tfyQ_3syn4stmt4StmtENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs2TChw36tfyQ_3syn5error12ErrorMessageENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecTNtNtCs2TChw36tfyQ_3syn2ty4TypeNtNtBR_5token5CommaEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecTNtNtCs2TChw36tfyQ_3syn2ty9BareFnArgNtNtBR_5token5CommaEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecTNtNtCs2TChw36tfyQ_3syn3pat3PatNtNtBR_5token2OrEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecTNtNtCs2TChw36tfyQ_3syn3pat3PatNtNtBR_5token5CommaEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecTNtNtCs2TChw36tfyQ_3syn3pat8FieldPatNtNtBR_5token5CommaEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecTNtNtCs2TChw36tfyQ_3syn4expr10FieldValueNtNtBR_5token5CommaEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecTNtNtCs2TChw36tfyQ_3syn4expr4ExprNtNtBR_5token5CommaEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecTNtNtCs2TChw36tfyQ_3syn4path11PathSegmentNtNtBR_5token7PathSepEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecTNtNtCs2TChw36tfyQ_3syn4path15GenericArgumentBN_EENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecTNtNtCs2TChw36tfyQ_3syn4path15GenericArgumentNtNtBR_5token5CommaEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecTNtNtCs2TChw36tfyQ_3syn8generics12GenericParamNtNtBR_5token5CommaEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecTNtNtCs2TChw36tfyQ_3syn8generics13CapturedParamNtNtBR_5token5CommaEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecTNtNtCs2TChw36tfyQ_3syn8generics14TypeParamBoundNtNtBR_5token4PlusEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecTNtNtCs2TChw36tfyQ_3syn8lifetime8LifetimeNtNtBR_5token4PlusEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCs2TChw36tfyQ_3syn5parseNtB2_11ParseBufferNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCslhcIeXEYQBj_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCs10RVWdu8coO_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 4 dereferenceable(4)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtCs2TChw36tfyQ_3syn4attrNtB2_9Attribute4path(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs_NtCs2TChw36tfyQ_3syn4pathNtB5_4Path8is_identReECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs_NtCs2TChw36tfyQ_3syn4pathNtB5_4Path8is_identeECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs2TChw36tfyQ_3syn3litNtB2_6LitStr5value(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCs2TChw36tfyQ_3syn5errorNtB5_5ErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #9

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecTNtNtCs2TChw36tfyQ_3syn4path15GenericArgumentBN_EE8grow_oneCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMNtCs2TChw36tfyQ_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE4lastCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0
end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!1286 = distinct !{!1286, i1 true, !"_RNvXsX_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1287 = distinct !{!1287, !1286, !"_RNvXsX_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1288 = distinct !{!1288, i1 true, !"_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalReE4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1289 = distinct !{!1289, !1288, !"_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalReE4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1290 = distinct !{!1290, i1 true, !"_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalReE7get_endCslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1291 = distinct !{!1291, !1290, !"_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalReE7get_endCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1292 = distinct !{!1292, i1 true, !"_RNvXsX_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1293 = distinct !{!1293, !1292, !"_RNvXsX_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0:h.rot"}
!1294 = distinct !{!1294, i1 true, !"_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalReE4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1295 = distinct !{!1295, !1294, !"_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalReE4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0:h.rot"}
!1296 = !{!1283, !1282}
!1297 = !{!1283}
!1298 = !{!1282}
!1299 = !{!1285}
!1300 = !{!1287}
!1301 = !{!1289}
!1302 = !{!1289, !1287, !1285}
!1303 = !{!1291, !1289, !1287, !1285}
!1304 = !{!1295, !1293, !1285}
!1305 = distinct !{!1305, i1 true, !"_RNvXsC_NtCsbqH9stoieM8_5alloc6stringNtCslhcIeXEYQBj_11proc_macro211TokenStreamNtB5_12SpecToString14spec_to_stringCslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1306 = distinct !{!1306, !1305, !"_RNvXsC_NtCsbqH9stoieM8_5alloc6stringNtCslhcIeXEYQBj_11proc_macro211TokenStreamNtB5_12SpecToString14spec_to_stringCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 1"}
!1307 = distinct !{!1307, !1305, !"_RNvXsC_NtCsbqH9stoieM8_5alloc6stringNtCslhcIeXEYQBj_11proc_macro211TokenStreamNtB5_12SpecToString14spec_to_stringCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1308 = distinct !{!1308, i1 true, !"_RINvMs3_NtCsbqH9stoieM8_5alloc3stre7replaceAcj5_ECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1309 = distinct !{!1309, !1308, !"_RINvMs3_NtCsbqH9stoieM8_5alloc3stre7replaceAcj5_ECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 1"}
!1310 = distinct !{!1310, !1308, !"_RINvMs3_NtCsbqH9stoieM8_5alloc3stre7replaceAcj5_ECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 2"}
!1311 = distinct !{!1311, !1308, !"_RINvMs3_NtCsbqH9stoieM8_5alloc3stre7replaceAcj5_ECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1312 = distinct !{!1312, i1 true, !"_RNvXsc_NtNtCs8Chj7Szqq0n_4core3str7patternINtB5_17CharArraySearcherKj5_ENtB5_8Searcher10next_matchCslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1313 = distinct !{!1313, !1312, !"_RNvXsc_NtNtCs8Chj7Szqq0n_4core3str7patternINtB5_17CharArraySearcherKj5_ENtB5_8Searcher10next_matchCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 1"}
!1314 = distinct !{!1314, !1312, !"_RNvXsc_NtNtCs8Chj7Szqq0n_4core3str7patternINtB5_17CharArraySearcherKj5_ENtB5_8Searcher10next_matchCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1315 = distinct !{!1315, i1 true, !"_RNvYINtNtNtCs8Chj7Szqq0n_4core3str7pattern19MultiCharEqSearcherAcj5_ENtB5_8Searcher10next_matchCslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1316 = distinct !{!1316, !1315, !"_RNvYINtNtNtCs8Chj7Szqq0n_4core3str7pattern19MultiCharEqSearcherAcj5_ENtB5_8Searcher10next_matchCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 1"}
!1317 = distinct !{!1317, !1315, !"_RNvYINtNtNtCs8Chj7Szqq0n_4core3str7pattern19MultiCharEqSearcherAcj5_ENtB5_8Searcher10next_matchCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1318 = distinct !{!1318, i1 true, !"_RNvXs8_NtNtCs8Chj7Szqq0n_4core3str7patternINtB5_19MultiCharEqSearcherAcj5_ENtB5_8Searcher4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1319 = distinct !{!1319, !1318, !"_RNvXs8_NtNtCs8Chj7Szqq0n_4core3str7patternINtB5_19MultiCharEqSearcherAcj5_ENtB5_8Searcher4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 1"}
!1320 = distinct !{!1320, !1318, !"_RNvXs8_NtNtCs8Chj7Szqq0n_4core3str7patternINtB5_19MultiCharEqSearcherAcj5_ENtB5_8Searcher4nextCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1321 = distinct !{!1321, i1 true, !"_RNvXs3_NtNtCs8Chj7Szqq0n_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!1322 = distinct !{!1322, !1321, !"_RNvXs3_NtNtCs8Chj7Szqq0n_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!1323 = distinct !{!1323, i1 true, !"_RINvNtNtCs8Chj7Szqq0n_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1324 = distinct !{!1324, !1323, !"_RINvNtNtCs8Chj7Szqq0n_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1325 = distinct !{!1325, i1 true, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1326 = distinct !{!1326, !1325, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1327 = distinct !{!1327, i1 true, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1328 = distinct !{!1328, !1327, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1329 = !{!1307, !1306}
!1330 = !{!1307}
!1331 = !{!1306}
!1332 = !{!1309}
!1333 = !{!1311, !1309, !1310}
!1334 = !{!1324, !1322, !1320, !1319, !1317, !1316, !1314, !1313}
!1335 = !{!1311, !1310}
!1336 = !{!1326}
!1337 = !{!1328}
!1338 = !{!1309, !1310}
!1339 = distinct !{!1339, i1 true, !"_RNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internal27generate_wrapper_identifier"}
!1340 = distinct !{!1340, !1339, !"_RNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internal27generate_wrapper_identifier: argument 2"}
!1341 = distinct !{!1341, !1339, !"_RNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internal27generate_wrapper_identifier: argument 1"}
!1342 = distinct !{!1342, !1339, !"_RNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internal27generate_wrapper_identifier: argument 0"}
!1343 = distinct !{!1343, i1 true, !"_RNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internal27constexpr_identifier_string"}
!1344 = distinct !{!1344, !1343, !"_RNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internal27constexpr_identifier_string: argument 1"}
!1345 = distinct !{!1345, !1343, !"_RNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internal27constexpr_identifier_string: argument 0"}
!1346 = distinct !{!1346, i1 true, !"_RINvMs3_NtCsbqH9stoieM8_5alloc3stre7replaceReECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1347 = distinct !{!1347, !1346, !"_RINvMs3_NtCsbqH9stoieM8_5alloc3stre7replaceReECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 1"}
!1348 = distinct !{!1348, !1346, !"_RINvMs3_NtCsbqH9stoieM8_5alloc3stre7replaceReECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1349 = distinct !{!1349, i1 true, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1350 = distinct !{!1350, !1349, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1351 = distinct !{!1351, i1 true, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1352 = distinct !{!1352, !1351, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1353 = distinct !{!1353, i1 true, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1354 = distinct !{!1354, !1353, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1355 = distinct !{!1355, i1 true, !"_RNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internal21generate_wrapper_body"}
!1356 = distinct !{!1356, !1355, !"_RNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internal21generate_wrapper_body: argument 1"}
!1357 = distinct !{!1357, !1355, !"_RNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internal21generate_wrapper_body: argument 2"}
!1358 = distinct !{!1358, !1355, !"_RNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internal21generate_wrapper_body: argument 0"}
!1359 = distinct !{!1359, i1 true, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro25IdentECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1360 = distinct !{!1360, !1359, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro25IdentECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1361 = distinct !{!1361, i1 true, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslhcIeXEYQBj_11proc_macro23imp5IdentECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1362 = distinct !{!1362, !1361, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslhcIeXEYQBj_11proc_macro23imp5IdentECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1363 = !{!1340}
!1364 = !{!1342, !1341, !1340}
!1365 = !{!1345, !1344, !1342, !1341, !1340}
!1366 = !{!1348, !1347, !1345, !1344, !1342, !1341, !1340}
!1367 = !{!1345, !1342, !1340}
!1368 = !{!1348, !1345, !1342, !1340}
!1369 = !{!1350}
!1370 = !{!1352}
!1371 = !{!1354}
!1372 = !{!1347, !1344, !1342, !1341, !1340}
!1373 = !{!1342, !1340}
!1374 = !{!1356}
!1375 = !{!1357}
!1376 = !{!1358, !1356, !1357}
!1377 = !{!1358, !1357}
!1378 = !{!"address", !"read_provenance"}
!1379 = !{!1356, !1357}
!1380 = !{!1360}
!1381 = !{!1362}
!1382 = !{!1362, !1360}
!1383 = distinct !{!1383, i1 true, !"_RNvXs_NtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internalNtB4_7RunModeNtNtCs2umgazJ8nt4_5quote9to_tokens8ToTokens9to_tokens"}
!1384 = distinct !{!1384, !1383, !"_RNvXs_NtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internalNtB4_7RunModeNtNtCs2umgazJ8nt4_5quote9to_tokens8ToTokens9to_tokens: argument 0"}
!1385 = distinct !{!1385, !1383, !"_RNvXs_NtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internalNtB4_7RunModeNtNtCs2umgazJ8nt4_5quote9to_tokens8ToTokens9to_tokens: argument 1"}
!1386 = distinct !{!1386, i1 true, !"_RNvXs0_NtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internalNtB5_11RequiresStdNtNtCs2umgazJ8nt4_5quote9to_tokens8ToTokens9to_tokens"}
!1387 = distinct !{!1387, !1386, !"_RNvXs0_NtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internalNtB5_11RequiresStdNtNtCs2umgazJ8nt4_5quote9to_tokens8ToTokens9to_tokens: argument 0"}
!1388 = distinct !{!1388, !1386, !"_RNvXs0_NtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internalNtB5_11RequiresStdNtNtCs2umgazJ8nt4_5quote9to_tokens8ToTokens9to_tokens: argument 1"}
!1389 = !{!1384}
!1390 = !{!1384, !1385}
!1391 = !{!1385}
!1392 = !{!1387}
!1393 = !{!1387, !1388}
!1394 = !{!1388}
!1395 = distinct !{!1395, i1 true, !"_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecTNtNtCs2TChw36tfyQ_3syn4path15GenericArgumentBG_EE8push_mutCslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1396 = distinct !{!1396, !1395, !"_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecTNtNtCs2TChw36tfyQ_3syn4path15GenericArgumentBG_EE8push_mutCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1397 = distinct !{!1397, !1395, !"_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecTNtNtCs2TChw36tfyQ_3syn4path15GenericArgumentBG_EE8push_mutCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 1"}
!1398 = distinct !{!1398, i1 true, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc2rc2RcIBC_NtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEEEECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1399 = distinct !{!1399, !1398, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc2rc2RcIBC_NtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEEEECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1400 = distinct !{!1400, i1 true, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc2rc2RcINtBE_4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEEEECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1401 = distinct !{!1401, !1400, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc2rc2RcINtBE_4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEEEECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1402 = distinct !{!1402, i1 true, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc2rc2RcINtNtB4_4cell4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEEECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1403 = distinct !{!1403, !1402, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc2rc2RcINtNtB4_4cell4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEEECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1404 = distinct !{!1404, i1 true, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs2TChw36tfyQ_3syn5parse11ParseBufferECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1405 = distinct !{!1405, !1404, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs2TChw36tfyQ_3syn5parse11ParseBufferECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1406 = distinct !{!1406, i1 true, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc2rc2RcINtNtB4_4cell4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1407 = distinct !{!1407, !1406, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc2rc2RcINtNtB4_4cell4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1408 = distinct !{!1408, i1 true, !"_RNvXsw_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtCs8Chj7Szqq0n_4core4cell4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEENtNtNtBI_3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1409 = distinct !{!1409, !1408, !"_RNvXsw_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtCs8Chj7Szqq0n_4core4cell4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEENtNtNtBI_3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1410 = distinct !{!1410, i1 true, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc2rc2RcIBC_NtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEEEECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1411 = distinct !{!1411, !1410, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc2rc2RcIBC_NtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEEEECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1412 = distinct !{!1412, i1 true, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc2rc2RcINtBE_4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEEEECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1413 = distinct !{!1413, !1412, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc2rc2RcINtBE_4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEEEECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1414 = distinct !{!1414, i1 true, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc2rc2RcINtNtB4_4cell4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEEECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1415 = distinct !{!1415, !1414, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc2rc2RcINtNtB4_4cell4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEEECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1416 = distinct !{!1416, i1 true, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc2rc2RcINtNtB4_4cell4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1417 = distinct !{!1417, !1416, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc2rc2RcINtNtB4_4cell4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1418 = distinct !{!1418, i1 true, !"_RNvXsw_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtCs8Chj7Szqq0n_4core4cell4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEENtNtNtBI_3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1419 = distinct !{!1419, !1418, !"_RNvXsw_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtCs8Chj7Szqq0n_4core4cell4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEENtNtNtBI_3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1420 = distinct !{!1420, i1 true, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc2rc2RcIBC_NtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEEEECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1421 = distinct !{!1421, !1420, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc2rc2RcIBC_NtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEEEECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1422 = distinct !{!1422, i1 true, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc2rc2RcINtBE_4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEEEECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1423 = distinct !{!1423, !1422, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc2rc2RcINtBE_4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEEEECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1424 = distinct !{!1424, i1 true, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc2rc2RcINtNtB4_4cell4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEEECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1425 = distinct !{!1425, !1424, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc2rc2RcINtNtB4_4cell4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEEECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1426 = distinct !{!1426, i1 true, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs2TChw36tfyQ_3syn5parse11ParseBufferECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1427 = distinct !{!1427, !1426, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs2TChw36tfyQ_3syn5parse11ParseBufferECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1428 = distinct !{!1428, i1 true, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc2rc2RcINtNtB4_4cell4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1429 = distinct !{!1429, !1428, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc2rc2RcINtNtB4_4cell4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1430 = distinct !{!1430, i1 true, !"_RNvXsw_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtCs8Chj7Szqq0n_4core4cell4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEENtNtNtBI_3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1431 = distinct !{!1431, !1430, !"_RNvXsw_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtCs8Chj7Szqq0n_4core4cell4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEENtNtNtBI_3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1432 = distinct !{!1432, i1 true, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc2rc2RcIBC_NtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEEEECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1433 = distinct !{!1433, !1432, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc2rc2RcIBC_NtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEEEECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1434 = distinct !{!1434, i1 true, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc2rc2RcINtBE_4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEEEECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1435 = distinct !{!1435, !1434, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc2rc2RcINtBE_4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEEEECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1436 = distinct !{!1436, i1 true, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc2rc2RcINtNtB4_4cell4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEEECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1437 = distinct !{!1437, !1436, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc2rc2RcINtNtB4_4cell4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEEECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1438 = distinct !{!1438, i1 true, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc2rc2RcINtNtB4_4cell4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1439 = distinct !{!1439, !1438, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc2rc2RcINtNtB4_4cell4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEEECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1440 = distinct !{!1440, i1 true, !"_RNvXsw_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtCs8Chj7Szqq0n_4core4cell4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEENtNtNtBI_3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1441 = distinct !{!1441, !1440, !"_RNvXsw_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtCs8Chj7Szqq0n_4core4cell4CellNtNtCs2TChw36tfyQ_3syn5parse10UnexpectedEENtNtNtBI_3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1442 = !{i64 -1, i64 23}
!1443 = !{!1396}
!1444 = !{i64 0, i64 -9223372036854775808}
!1445 = !{!1397}
!1446 = !{!1399}
!1447 = !{!1401}
!1448 = !{!1403}
!1449 = !{!1403, !1401, !1399, !1405}
!1450 = !{!1409, !1407, !1403, !1401, !1399}
!1451 = !{!1411}
!1452 = !{!1413}
!1453 = !{!1415}
!1454 = !{!1415, !1413, !1411, !1405}
!1455 = !{!1419, !1417, !1415, !1413, !1411}
!1456 = !{!1421}
!1457 = !{!1423}
!1458 = !{!1425}
!1459 = !{!1425, !1423, !1421, !1427}
!1460 = !{!1431, !1429, !1425, !1423, !1421}
!1461 = !{!1433}
!1462 = !{!1435}
!1463 = !{!1437}
!1464 = !{!1437, !1435, !1433, !1427}
!1465 = !{!1441, !1439, !1437, !1435, !1433}
!1466 = distinct !{!1466, i1 true, !"_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internal21strip_test_attributes00EB1K_"}
!1467 = distinct !{!1467, !1466, !"_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internal21strip_test_attributes00EB1K_: argument 0"}
!1468 = distinct !{!1468, i1 true, !"_RNCNCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internal21strip_test_attributes00B7_"}
!1469 = distinct !{!1469, !1468, !"_RNCNCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internal21strip_test_attributes00B7_: argument 0"}
!1470 = !{!1469, !1467}
!1471 = !{!1467}
!1472 = distinct !{!1472, i1 true, !"_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String4push"}
!1473 = distinct !{!1473, !1472, !"_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String4push: argument 0"}
!1474 = !{!1473}
!1475 = distinct !{!1475, i1 true, !"_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String8push_str"}
!1476 = distinct !{!1476, !1475, !"_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String8push_str: argument 1"}
!1477 = distinct !{!1477, !1475, !"_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String8push_str: argument 0"}
!1478 = distinct !{!1478, i1 true, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1479 = distinct !{!1479, !1478, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1480 = !{!1476}
!1481 = !{!1479, !1477}
!1482 = distinct !{!1482, i1 true, !"_RNvXsv_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!1483 = distinct !{!1483, !1482, !"_RNvXsv_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!1484 = distinct !{!1484, i1 true, !"_RNvXs9_NtNtCs8Chj7Szqq0n_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!1485 = distinct !{!1485, !1484, !"_RNvXs9_NtNtCs8Chj7Szqq0n_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!1486 = distinct !{!1486, i1 true, !"_RNvXsv_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!1487 = distinct !{!1487, !1486, !"_RNvXsv_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!1488 = distinct !{!1488, i1 true, !"_RINvNtNtCs8Chj7Szqq0n_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1489 = distinct !{!1489, !1488, !"_RINvNtNtCs8Chj7Szqq0n_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1490 = distinct !{!1490, !1486, !"_RNvXsv_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!1491 = distinct !{!1491, i1 true, !"_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr6memchr"}
!1492 = distinct !{!1492, !1491, !"_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr6memchr: argument 0"}
!1493 = distinct !{!1493, i1 true, !"_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1494 = distinct !{!1494, !1493, !"_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1495 = distinct !{!1495, !1493, !"_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 1"}
!1496 = distinct !{!1496, !1493, !"_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 2"}
!1497 = distinct !{!1497, !1493, !"_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 3"}
!1498 = distinct !{!1498, i1 true, !"_RNvXsy_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!1499 = distinct !{!1499, !1498, !"_RNvXsy_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!1500 = distinct !{!1500, i1 true, !"_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslpqARw9yB40_26iceoryx2_bb_testing_macros"}
!1501 = distinct !{!1501, !1500, !"_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 0"}
!1502 = distinct !{!1502, !1500, !"_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 1"}
!1503 = distinct !{!1503, !1500, !"_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 2"}
!1504 = distinct !{!1504, !1500, !"_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslpqARw9yB40_26iceoryx2_bb_testing_macros: argument 3"}
!1505 = distinct !{!1505, i1 true, !"_RNvXsy_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!1506 = distinct !{!1506, !1505, !"_RNvXsy_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!1507 = !{!1483}
!1508 = !{!1485}
!1509 = !{!1487, !1483}
!1510 = !{!1489, !1487, !1483}
!1511 = !{!1490}
!1512 = !{!1487, !1490}
!1513 = !{!1489, !1487, !1490}
!1514 = !{!1492}
!1515 = !{!1494}
!1516 = !{!1495}
!1517 = !{!1496}
!1518 = !{!1497}
!1519 = !{!1499, !1494}
!1520 = !{!1494, !1495, !1496, !1497}
!1521 = !{!1501}
!1522 = !{!1502}
!1523 = !{!1503}
!1524 = !{!1504}
!1525 = !{!1501, !1502, !1503, !1504}
!1526 = !{!1506, !1501}
end_hunk_1
