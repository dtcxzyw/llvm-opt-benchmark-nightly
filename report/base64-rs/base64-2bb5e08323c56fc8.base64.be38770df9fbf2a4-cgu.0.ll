Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/base64-rs/original/base64-2bb5e08323c56fc8.base64.be38770df9fbf2a4-cgu.0?download=true
inline.NumInlined: 222
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs1g_NtCskKLDkoKarTP_4core3fmtReNtB6_5Debug3fmtCsgkxsgNF9KUO_6base64:bb.a
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCsgkxsgNF9KUO_6base64(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !76, !noalias !77, !noundef !5 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsg_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit

_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1o_NtCskKLDkoKarTP_4core3fmtRhNtB6_8LowerHex3fmtCsgkxsgNF9KUO_6base64(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCsgkxsgNF9KUO_6base645write21encoder_string_writerNtNtCsexYYUdYSQU6_5alloc6string6StringNtB5_11StrConsumer7consume(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !83, !noundef !5 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !4, !alias.scope !83, !noundef !5
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i, !prof !8

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.thread.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgkxsgNF9KUO_6base64(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2)
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !82, !noundef !5 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsgkxsgNF9KUO_6base64.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.thread.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.thread.i ], [ %i.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !82, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !82
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsgkxsgNF9KUO_6base64.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsgkxsgNF9KUO_6base64.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !82
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtCskKLDkoKarTP_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 11, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsgkxsgNF9KUO_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_decode(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(324) %1, ptr noalias nofree noundef nonnull readonly captures(address) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull writeonly captures(none) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 67 ; 38 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !range !10, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 323
  %i.f = load i8, ptr %i.e, align 1, !noundef !5  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.h = load i8, ptr %i.g, align 1, !range !143, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.i = icmp eq i64 %6, 1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i64 %3, -1                       ; 3 uses
  %.not.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.f, %bb.d, %bb.a
  %i.k = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %3, i64 %6) ; 2 uses
  %i.l = icmp eq i64 %6, 0
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 4)
  %i.n = select i1 %i.l, i64 %i.m, i64 %i.k       ; 6 uses
  %i.o = lshr i64 %i.n, 2
  %i.p = mul nuw nsw i64 %i.o, 3                  ; 2 uses
  %i.q = icmp samesign ult i64 %5, %i.p
  br i1 %i.q, label %bb.g, label %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %i.j
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !150, !noalias !151, !noundef !5 ; 3 uses
  %.not9.i.i = icmp eq i8 %i.s, %i.f
  br i1 %.not9.i.i, label %bb.c, label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #18, !noalias !152
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !153, !noalias !154, !noundef !5
  %i.w = icmp eq i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f, %bb.c
  %.sroa.102.0.ph.i = phi i64 [ %i.j, %bb.f ], [ undef, %bb.c ]
  %.sroa.8.0.ph.i = phi i8 [ %i.s, %bb.f ], [ undef, %bb.c ]
  %.sroa.0.0.ph.i = phi i8 [ 0, %bb.f ], [ -1, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.0.ph.i, ptr %i.x, align 8, !alias.scope !144, !noalias !155
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.8.0.ph.i, ptr %.sroa.418.0..sroa_idx.i, align 1, !alias.scope !144, !noalias !155
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.102.0.ph.i, ptr %.sroa.519.0..sroa_idx.i, align 8, !alias.scope !144, !noalias !155
  store i64 2, ptr %0, align 8, !alias.scope !144, !noalias !155
  br label %_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs_B4_NtB4_14GeneralPurposeNtB6_6Engine15internal_decode0EB8_.exit

_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.y = and i64 %i.n, 9223372036854775776        ; 11 uses
  %.not.i21.i = icmp samesign ugt i64 %i.y, %3
  br i1 %.not.i21.i, label %bb.h, label %.preheader.i.i, !prof !8

.preheader.i.i:                                   ; preds = %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i
  %.not.i.i1028.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i1028.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.y, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #18, !noalias !159
  unreachable

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.bh
  %.sroa.0.01031.i.i = phi ptr [ %i.z, %bb.bh ], [ %2, %.preheader.i.i ] ; 33 uses
  %.sroa.684.01030.i.i = phi i64 [ %i.aa, %bb.bh ], [ %i.y, %.preheader.i.i ]
  %.sroa.13.01029.i.i = phi i64 [ %i.ab, %bb.bh ], [ 0, %.preheader.i.i ] ; 13 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 32
  %i.aa = add i64 %.sroa.684.01030.i.i, -32       ; 2 uses
  %i.ab = add nuw nsw i64 %.sroa.13.01029.i.i, 1
  %i.ac = mul nuw nsw i64 %.sroa.13.01029.i.i, 24 ; 3 uses
  %8 = add nuw i64 %i.ac, 24                      ; 2 uses
  %.not16.i.i = icmp ugt i64 %8, %5
  br i1 %.not16.i.i, label %bb.t, label %bb.u, !prof !7

._crit_edge.i.i:                                  ; preds = %bb.bh, %.preheader.i.i
  %i.ad = lshr exact i64 %i.y, 2
  %.not12.i.i = icmp samesign ugt i64 %i.n, %3
  br i1 %.not12.i.i, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %._crit_edge.i.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.y, i64 noundef %i.n, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #18, !noalias !159
  unreachable

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ae = and i64 %i.n, 28                        ; 2 uses
  %.not.i.i791039.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i791039.i.i, label %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads.exit.i, label %.lr.ph1044.preheader.i.i

.lr.ph1044.preheader.i.i:                         ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %i.y
  br label %.lr.ph1044.i.i

.lr.ph1044.i.i:                                   ; preds = %bb.s, %.lr.ph1044.preheader.i.i
  %.sroa.0107.01042.i.i = phi ptr [ %i.ag, %bb.s ], [ %i.af, %.lr.ph1044.preheader.i.i ] ; 5 uses
  %.sroa.6108.01041.i.i = phi i64 [ %i.ah, %bb.s ], [ %i.ae, %.lr.ph1044.preheader.i.i ]
  %.sroa.13112.01040.i.i = phi i64 [ %i.ai, %bb.s ], [ 0, %.lr.ph1044.preheader.i.i ] ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0107.01042.i.i, i64 4
  %i.ah = add i64 %.sroa.6108.01041.i.i, -4       ; 2 uses
  %i.ai = add nuw nsw i64 %.sroa.13112.01040.i.i, 1
  %i.aj = add nuw nsw i64 %.sroa.13112.01040.i.i, %i.ad
  %i.ak = mul nuw i64 %i.aj, 3                    ; 3 uses
  %i.al = add nuw i64 %i.ak, 3                    ; 2 uses
  %.not14.i.i = icmp ugt i64 %i.al, %5
  br i1 %.not14.i.i, label %bb.r, label %bb.k, !prof !7

bb.k:                                             ; preds = %.lr.ph1044.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %i.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.an = load i8, ptr %.sroa.0107.01042.i.i, align 1, !alias.scope !162, !noalias !163, !noundef !5 ; 2 uses
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !164, !noalias !165, !noundef !5 ; 2 uses
  %i.ar = icmp eq i8 %i.aq, -1
  br i1 %i.ar, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0107.01042.i.i, i64 1
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !162, !noalias !163, !noundef !5 ; 2 uses
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !164, !noalias !165, !noundef !5 ; 2 uses
  %i.ax = icmp eq i8 %i.aw, -1
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = shl i64 %.sroa.13112.01040.i.i, 2
  %i.az = add i64 %i.ay, %i.y
  %i.ba = or disjoint i64 %i.az, 1
  br label %bb.bi

bb.n:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0107.01042.i.i, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !162, !noalias !163, !noundef !5 ; 2 uses
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !164, !noalias !165, !noundef !5 ; 2 uses
  %i.bg = icmp eq i8 %i.bf, -1
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bh = shl i64 %.sroa.13112.01040.i.i, 2
  %i.bi = add i64 %i.bh, %i.y
  %i.bj = or disjoint i64 %i.bi, 2
  br label %bb.bi

bb.p:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0107.01042.i.i, i64 3
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !162, !noalias !163, !noundef !5 ; 2 uses
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !164, !noalias !165, !noundef !5 ; 2 uses
  %i.bp = icmp eq i8 %i.bo, -1
  br i1 %i.bp, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bq = shl i64 %.sroa.13112.01040.i.i, 2
  %i.br = add i64 %i.bq, %i.y
  %i.bs = or disjoint i64 %i.br, 3
  br label %bb.bi

bb.r:                                             ; preds = %.lr.ph1044.i.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ak, i64 noundef %i.al, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #18, !noalias !159
  unreachable

.loopexit.i.i:                                    ; preds = %bb.k
  %i.bt = shl i64 %.sroa.13112.01040.i.i, 2
  %i.bu = add i64 %i.bt, %i.y
  br label %bb.bi

bb.s:                                             ; preds = %bb.p
  %i.bv = zext i8 %i.aq to i32
  %i.bw = shl i32 %i.bv, 26
  %i.bx = zext i8 %i.aw to i32
  %i.by = shl nuw nsw i32 %i.bx, 20
  %i.bz = or i32 %i.by, %i.bw
  %i.ca = zext i8 %i.bf to i32
  %i.cb = shl nuw nsw i32 %i.ca, 14
  %i.cc = or i32 %i.bz, %i.cb
  %i.cd = zext i8 %i.bo to i32
  %i.ce = shl nuw nsw i32 %i.cd, 8
  %i.cf = or i32 %i.cc, %i.ce
  %i.cg = tail call i32 @llvm.bswap.i32(i32 %i.cf)
  %.sroa.0240.0.extract.trunc.i.i = trunc nuw i32 %i.cg to i24
  store i24 %.sroa.0240.0.extract.trunc.i.i, ptr %i.am, align 1, !alias.scope !166, !noalias !167
  %.not.i.i79.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i79.i.i, label %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads.exit.i, label %.lr.ph1044.i.i

bb.t:                                             ; preds = %.lr.ph.i.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ac, i64 noundef %8, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #18, !noalias !159
  unreachable

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 %i.ac ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.ci = load i8, ptr %.sroa.0.01031.i.i, align 1, !alias.scope !170, !noalias !171, !noundef !5 ; 2 uses
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
  %i.cm = icmp eq i8 %i.cl, -1
  br i1 %i.cm, label %.loopexit292.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !170, !noalias !171, !noundef !5 ; 2 uses
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
  %i.cs = icmp eq i8 %i.cr, -1
  br i1 %i.cs, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 2
  %i.cu = load i8, ptr %i.ct, align 1, !alias.scope !170, !noalias !171, !noundef !5 ; 2 uses
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
  %i.cy = icmp eq i8 %i.cx, -1
  br i1 %i.cy, label %bb.z, label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.cz = shl i64 %.sroa.13.01029.i.i, 5
  %i.da = or disjoint i64 %i.cz, 1
  br label %bb.bi

bb.y:                                             ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 3
  %i.dc = load i8, ptr %i.db, align 1, !alias.scope !170, !noalias !171, !noundef !5 ; 2 uses
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
  %i.dg = icmp eq i8 %i.df, -1
  br i1 %i.dg, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.dh = shl i64 %.sroa.13.01029.i.i, 5
  %i.di = or disjoint i64 %i.dh, 2
  br label %bb.bi

bb.aa:                                            ; preds = %bb.y
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 4
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !170, !noalias !171, !noundef !5 ; 2 uses
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
  %i.do = icmp eq i8 %i.dn, -1
  br i1 %i.do, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.dp = shl i64 %.sroa.13.01029.i.i, 5
  %i.dq = or disjoint i64 %i.dp, 3
  br label %bb.bi

bb.ac:                                            ; preds = %bb.aa
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 5
  %i.ds = load i8, ptr %i.dr, align 1, !alias.scope !170, !noalias !171, !noundef !5 ; 2 uses
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
  %i.dw = icmp eq i8 %i.dv, -1
  br i1 %i.dw, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.dx = shl i64 %.sroa.13.01029.i.i, 5
  %i.dy = or disjoint i64 %i.dx, 4
  br label %bb.bi

bb.ae:                                            ; preds = %bb.ac
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 6
  %i.ea = load i8, ptr %i.dz, align 1, !alias.scope !170, !noalias !171, !noundef !5 ; 2 uses
  %i.eb = zext i8 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
  %i.ee = icmp eq i8 %i.ed, -1
  br i1 %i.ee, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %i.ef = shl i64 %.sroa.13.01029.i.i, 5
  %i.eg = or disjoint i64 %i.ef, 5
  br label %bb.bi

bb.ag:                                            ; preds = %bb.ae
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 7
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !170, !noalias !171, !noundef !5 ; 2 uses
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
  %i.em = icmp eq i8 %i.el, -1
  br i1 %i.em, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  %i.en = shl i64 %.sroa.13.01029.i.i, 5
  %i.eo = or disjoint i64 %i.en, 6
  br label %bb.bi

bb.ai:                                            ; preds = %bb.ag
  %i.ep = shl i64 %.sroa.13.01029.i.i, 5
  %i.eq = or disjoint i64 %i.ep, 7
  br label %bb.bi

.loopexit292.i.i:                                 ; preds = %bb.u
  %i.er = shl i64 %.sroa.13.01029.i.i, 5
  br label %bb.bi

bb.aj:                                            ; preds = %bb.ag
  %i.es = zext i8 %i.cl to i64
  %i.et = shl i64 %i.es, 58
  %i.eu = zext i8 %i.cr to i64
  %i.ev = shl nuw nsw i64 %i.eu, 52
  %i.ew = or i64 %i.ev, %i.et
  %i.ex = zext i8 %i.cx to i64
  %i.ey = shl nuw nsw i64 %i.ex, 46
  %i.ez = or i64 %i.ew, %i.ey
  %i.fa = zext i8 %i.df to i64
  %i.fb = shl nuw nsw i64 %i.fa, 40
  %i.fc = or i64 %i.ez, %i.fb
  %i.fd = zext i8 %i.dn to i64
  %i.fe = shl nuw nsw i64 %i.fd, 34
  %i.ff = or i64 %i.fc, %i.fe
  %i.fg = zext i8 %i.dv to i64
  %i.fh = shl nuw nsw i64 %i.fg, 28
  %i.fi = or i64 %i.ff, %i.fh
  %i.fj = zext i8 %i.ed to i64
  %i.fk = shl nuw nsw i64 %i.fj, 22
  %i.fl = or i64 %i.fi, %i.fk
  %i.fm = zext i8 %i.el to i64
  %i.fn = shl nuw nsw i64 %i.fm, 16
  %i.fo = or i64 %i.fl, %i.fn
  %i.fp = tail call i64 @llvm.bswap.i64(i64 %i.fo)
  %.sroa.0244.0.extract.trunc.i.i = trunc i64 %i.fp to i48
  store i48 %.sroa.0244.0.extract.trunc.i.i, ptr %i.ch, align 1, !alias.scope !174, !noalias !175
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ch, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.fs = load i8, ptr %i.fq, align 1, !alias.scope !178, !noalias !179, !noundef !5 ; 2 uses
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !alias.scope !180, !noalias !181, !noundef !5 ; 2 uses
  %i.fw = icmp eq i8 %i.fv, -1
  br i1 %i.fw, label %.loopexit293.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 9
  %i.fy = load i8, ptr %i.fx, align 1, !alias.scope !178, !noalias !179, !noundef !5 ; 2 uses
  %i.fz = zext i8 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !alias.scope !180, !noalias !181, !noundef !5 ; 2 uses
  %i.gc = icmp eq i8 %i.gb, -1
  br i1 %i.gc, label %.loopexit293.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 10
  %i.ge = load i8, ptr %i.gd, align 1, !alias.scope !178, !noalias !179, !noundef !5 ; 2 uses
  %i.gf = zext i8 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !180, !noalias !181, !noundef !5 ; 2 uses
  %i.gi = icmp eq i8 %i.gh, -1
  br i1 %i.gi, label %.loopexit293.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 11
  %i.gk = load i8, ptr %i.gj, align 1, !alias.scope !178, !noalias !179, !noundef !5 ; 2 uses
  %i.gl = zext i8 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !180, !noalias !181, !noundef !5 ; 2 uses
  %i.go = icmp eq i8 %i.gn, -1
  br i1 %i.go, label %.loopexit293.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 12
  %i.gq = load i8, ptr %i.gp, align 1, !alias.scope !178, !noalias !179, !noundef !5 ; 2 uses
  %i.gr = zext i8 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !alias.scope !180, !noalias !181, !noundef !5 ; 2 uses
  %i.gu = icmp eq i8 %i.gt, -1
  br i1 %i.gu, label %.loopexit293.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 13
  %i.gw = load i8, ptr %i.gv, align 1, !alias.scope !178, !noalias !179, !noundef !5 ; 2 uses
  %i.gx = zext i8 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !alias.scope !180, !noalias !181, !noundef !5 ; 2 uses
  %i.ha = icmp eq i8 %i.gz, -1
  br i1 %i.ha, label %.loopexit293.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 14
end_hunk_0
