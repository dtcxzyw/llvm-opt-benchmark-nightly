Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/base64-rs/original/base64-2bb5e08323c56fc8.base64.be38770df9fbf2a4-cgu.0?download=true
inline.NumInlined: 222
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs1o_NtCskKLDkoKarTP_4core3fmtRhNtB6_8LowerHex3fmtCsgkxsgNF9KUO_6base64:bb.a
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCsgkxsgNF9KUO_6base645write21encoder_string_writerNtNtCsexYYUdYSQU6_5alloc6string6StringNtB5_11StrConsumer7consume(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !81, !noundef !39 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !38, !alias.scope !81, !noundef !39
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i, !prof !50

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.thread.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgkxsgNF9KUO_6base64(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2)
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !78, !noundef !39 ; 2 uses
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
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !78, !nonnull !39, !noundef !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !78
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsgkxsgNF9KUO_6base64.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsgkxsgNF9KUO_6base64.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64.exit.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !78
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
  %i.b = load i32, ptr %i.a, align 8, !noundef !39 ; 2 uses
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
  %i.c = load i8, ptr %i.b, align 1, !range !69, !noundef !39
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 323
  %i.f = load i8, ptr %i.e, align 1, !noundef !39 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.h = load i8, ptr %i.g, align 1, !range !84, !noundef !39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
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
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !99, !noalias !100, !noundef !39 ; 3 uses
  %.not9.i.i = icmp eq i8 %i.s, %i.f
  br i1 %.not9.i.i, label %bb.c, label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #18, !noalias !102
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !103, !noalias !104, !noundef !39
  %i.w = icmp eq i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f, %bb.c
  %.sroa.102.0.ph.i = phi i64 [ %i.j, %bb.f ], [ undef, %bb.c ]
  %.sroa.8.0.ph.i = phi i8 [ %i.s, %bb.f ], [ undef, %bb.c ]
  %.sroa.0.0.ph.i = phi i8 [ 0, %bb.f ], [ -1, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.0.ph.i, ptr %i.x, align 8, !alias.scope !85, !noalias !105
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.8.0.ph.i, ptr %.sroa.418.0..sroa_idx.i, align 1, !alias.scope !85, !noalias !105
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.102.0.ph.i, ptr %.sroa.519.0..sroa_idx.i, align 8, !alias.scope !85, !noalias !105
  store i64 2, ptr %0, align 8, !alias.scope !85, !noalias !105
  br label %_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs_B4_NtB4_14GeneralPurposeNtB6_6Engine15internal_decode0EB8_.exit

_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.y = and i64 %i.n, 9223372036854775776        ; 11 uses
  %.not.i21.i = icmp samesign ugt i64 %i.y, %3
  br i1 %.not.i21.i, label %bb.h, label %.preheader.i.i, !prof !50

.preheader.i.i:                                   ; preds = %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i
  %.not.i.i1029.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i1029.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.z = udiv i64 %5, 24                          ; 2 uses
  br label %.lr.ph.i.i

bb.h:                                             ; preds = %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.y, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #18, !noalias !113
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.bh, %.lr.ph.preheader.i.i
  %.sroa.0.01032.i.i = phi ptr [ %i.aa, %bb.bh ], [ %2, %.lr.ph.preheader.i.i ] ; 33 uses
  %.sroa.684.01031.i.i = phi i64 [ %i.ab, %bb.bh ], [ %i.y, %.lr.ph.preheader.i.i ]
  %.sroa.13.01030.i.i = phi i64 [ %i.ac, %bb.bh ], [ 0, %.lr.ph.preheader.i.i ] ; 14 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.01032.i.i, i64 32
  %i.ab = add i64 %.sroa.684.01031.i.i, -32       ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.13.01030.i.i, 1
  %i.ad = mul nuw nsw i64 %.sroa.13.01030.i.i, 24 ; 2 uses
  %exitcond.i.i = icmp eq i64 %.sroa.13.01030.i.i, %i.z
  br i1 %exitcond.i.i, label %bb.t, label %bb.u, !prof !49

._crit_edge.i.i:                                  ; preds = %bb.bh, %.preheader.i.i
  %i.ae = lshr exact i64 %i.y, 2
  %.not12.i.i = icmp samesign ugt i64 %i.n, %3
  br i1 %.not12.i.i, label %bb.i, label %bb.j, !prof !50

bb.i:                                             ; preds = %._crit_edge.i.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.y, i64 noundef %i.n, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #18, !noalias !113
  unreachable

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.af = and i64 %i.n, 28                        ; 2 uses
  %.not.i.i791040.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i791040.i.i, label %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads.exit.i, label %.lr.ph1045.preheader.i.i

.lr.ph1045.preheader.i.i:                         ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.y
  br label %.lr.ph1045.i.i

.lr.ph1045.i.i:                                   ; preds = %bb.s, %.lr.ph1045.preheader.i.i
  %.sroa.0107.01042.i.i = phi ptr [ %i.ah, %bb.s ], [ %i.ag, %.lr.ph1045.preheader.i.i ] ; 5 uses
  %.sroa.6108.01042.i.i = phi i64 [ %i.ai, %bb.s ], [ %i.af, %.lr.ph1045.preheader.i.i ]
  %.sroa.13112.01040.i.i = phi i64 [ %i.aj, %bb.s ], [ 0, %.lr.ph1045.preheader.i.i ] ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0107.01042.i.i, i64 4
  %i.ai = add i64 %.sroa.6108.01042.i.i, -4       ; 2 uses
  %i.aj = add nuw nsw i64 %.sroa.13112.01040.i.i, 1
  %i.ak = add nuw nsw i64 %.sroa.13112.01040.i.i, %i.ae
  %i.al = mul nuw i64 %i.ak, 3                    ; 3 uses
  %i.am = add nuw i64 %i.al, 3                    ; 2 uses
  %.not14.i.i = icmp ugt i64 %i.am, %5
  br i1 %.not14.i.i, label %bb.r, label %bb.k, !prof !49

bb.k:                                             ; preds = %.lr.ph1045.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 %i.al
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.ao = load i8, ptr %.sroa.0107.01042.i.i, align 1, !alias.scope !120, !noalias !121, !noundef !39 ; 2 uses
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !124, !noalias !125, !noundef !39 ; 2 uses
  %i.as = icmp eq i8 %i.ar, -1
  br i1 %i.as, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0107.01042.i.i, i64 1
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !120, !noalias !121, !noundef !39 ; 2 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !alias.scope !124, !noalias !125, !noundef !39 ; 2 uses
  %i.ay = icmp eq i8 %i.ax, -1
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = shl i64 %.sroa.13112.01040.i.i, 2
  %i.ba = add i64 %i.az, %i.y
  %i.bb = or disjoint i64 %i.ba, 1
  br label %bb.bi

bb.n:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0107.01042.i.i, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !120, !noalias !121, !noundef !39 ; 2 uses
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !124, !noalias !125, !noundef !39 ; 2 uses
  %i.bh = icmp eq i8 %i.bg, -1
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bi = shl i64 %.sroa.13112.01040.i.i, 2
  %i.bj = add i64 %i.bi, %i.y
  %i.bk = or disjoint i64 %i.bj, 2
  br label %bb.bi

bb.p:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0107.01042.i.i, i64 3
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !120, !noalias !121, !noundef !39 ; 2 uses
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !124, !noalias !125, !noundef !39 ; 2 uses
  %i.bq = icmp eq i8 %i.bp, -1
  br i1 %i.bq, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.br = shl i64 %.sroa.13112.01040.i.i, 2
  %i.bs = add i64 %i.br, %i.y
  %i.bt = or disjoint i64 %i.bs, 3
  br label %bb.bi

bb.r:                                             ; preds = %.lr.ph1045.i.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.al, i64 noundef %i.am, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #18, !noalias !113
  unreachable

.loopexit.i.i:                                    ; preds = %bb.k
  %i.bu = shl i64 %.sroa.13112.01040.i.i, 2
  %i.bv = add i64 %i.bu, %i.y
  br label %bb.bi

bb.s:                                             ; preds = %bb.p
  %i.bw = zext i8 %i.ar to i32
  %i.bx = shl i32 %i.bw, 26
  %i.by = zext i8 %i.ax to i32
  %i.bz = shl nuw nsw i32 %i.by, 20
  %i.ca = or i32 %i.bz, %i.bx
  %i.cb = zext i8 %i.bg to i32
  %i.cc = shl nuw nsw i32 %i.cb, 14
  %i.cd = or i32 %i.ca, %i.cc
  %i.ce = zext i8 %i.bp to i32
  %i.cf = shl nuw nsw i32 %i.ce, 8
  %i.cg = or i32 %i.cd, %i.cf
  %i.ch = tail call i32 @llvm.bswap.i32(i32 %i.cg)
  %.sroa.0240.0.extract.trunc.i.i = trunc nuw i32 %i.ch to i24
  store i24 %.sroa.0240.0.extract.trunc.i.i, ptr %i.an, align 1, !alias.scope !126, !noalias !130
  %.not.i.i79.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i79.i.i, label %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads.exit.i, label %.lr.ph1045.i.i

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.ci = mul nuw nsw i64 %i.z, 24
  %i.cj = add nuw i64 %i.ci, 24
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ad, i64 noundef %i.cj, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #18, !noalias !113
  unreachable

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 %i.ad ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.cl = load i8, ptr %.sroa.0.01032.i.i, align 1, !alias.scope !137, !noalias !138, !noundef !39 ; 2 uses
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !141, !noalias !142, !noundef !39 ; 2 uses
  %i.cp = icmp eq i8 %i.co, -1
  br i1 %i.cp, label %.loopexit293.i.i.a, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.01032.i.i, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !alias.scope !137, !noalias !138, !noundef !39 ; 2 uses
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !alias.scope !141, !noalias !142, !noundef !39 ; 2 uses
  %i.cv = icmp eq i8 %i.cu, -1
  br i1 %i.cv, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.01032.i.i, i64 2
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !137, !noalias !138, !noundef !39 ; 2 uses
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !alias.scope !141, !noalias !142, !noundef !39 ; 2 uses
  %i.db = icmp eq i8 %i.da, -1
  br i1 %i.db, label %bb.z, label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.dc = shl i64 %.sroa.13.01030.i.i, 5
  %i.dd = or disjoint i64 %i.dc, 1
  br label %bb.bi

bb.y:                                             ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.01032.i.i, i64 3
  %i.df = load i8, ptr %i.de, align 1, !alias.scope !137, !noalias !138, !noundef !39 ; 2 uses
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !alias.scope !141, !noalias !142, !noundef !39 ; 2 uses
  %i.dj = icmp eq i8 %i.di, -1
  br i1 %i.dj, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.dk = shl i64 %.sroa.13.01030.i.i, 5
  %i.dl = or disjoint i64 %i.dk, 2
  br label %bb.bi

bb.aa:                                            ; preds = %bb.y
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.01032.i.i, i64 4
  %i.dn = load i8, ptr %i.dm, align 1, !alias.scope !137, !noalias !138, !noundef !39 ; 2 uses
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !alias.scope !141, !noalias !142, !noundef !39 ; 2 uses
  %i.dr = icmp eq i8 %i.dq, -1
  br i1 %i.dr, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.ds = shl i64 %.sroa.13.01030.i.i, 5
  %i.dt = or disjoint i64 %i.ds, 3
  br label %bb.bi

bb.ac:                                            ; preds = %bb.aa
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.01032.i.i, i64 5
  %i.dv = load i8, ptr %i.du, align 1, !alias.scope !137, !noalias !138, !noundef !39 ; 2 uses
  %i.dw = zext i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !141, !noalias !142, !noundef !39 ; 2 uses
  %i.dz = icmp eq i8 %i.dy, -1
  br i1 %i.dz, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.ea = shl i64 %.sroa.13.01030.i.i, 5
  %i.eb = or disjoint i64 %i.ea, 4
  br label %bb.bi

bb.ae:                                            ; preds = %bb.ac
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.01032.i.i, i64 6
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !137, !noalias !138, !noundef !39 ; 2 uses
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !alias.scope !141, !noalias !142, !noundef !39 ; 2 uses
  %i.eh = icmp eq i8 %i.eg, -1
  br i1 %i.eh, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %i.ei = shl i64 %.sroa.13.01030.i.i, 5
  %i.ej = or disjoint i64 %i.ei, 5
  br label %bb.bi

bb.ag:                                            ; preds = %bb.ae
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.01032.i.i, i64 7
  %i.el = load i8, ptr %i.ek, align 1, !alias.scope !137, !noalias !138, !noundef !39 ; 2 uses
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !alias.scope !141, !noalias !142, !noundef !39 ; 2 uses
  %i.ep = icmp eq i8 %i.eo, -1
  br i1 %i.ep, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  %i.eq = shl i64 %.sroa.13.01030.i.i, 5
  %i.er = or disjoint i64 %i.eq, 6
  br label %bb.bi

bb.ai:                                            ; preds = %bb.ag
  %i.es = shl i64 %.sroa.13.01030.i.i, 5
  %i.et = or disjoint i64 %i.es, 7
  br label %bb.bi

.loopexit293.i.i.a:                               ; preds = %bb.u
  %i.eu = shl i64 %.sroa.13.01030.i.i, 5
  br label %bb.bi

bb.aj:                                            ; preds = %bb.ag
  %i.ev = zext i8 %i.co to i64
  %i.ew = shl i64 %i.ev, 58
  %i.ex = zext i8 %i.cu to i64
  %i.ey = shl nuw nsw i64 %i.ex, 52
  %i.ez = or i64 %i.ey, %i.ew
  %i.fa = zext i8 %i.da to i64
  %i.fb = shl nuw nsw i64 %i.fa, 46
  %i.fc = or i64 %i.ez, %i.fb
  %i.fd = zext i8 %i.di to i64
  %i.fe = shl nuw nsw i64 %i.fd, 40
  %i.ff = or i64 %i.fc, %i.fe
  %i.fg = zext i8 %i.dq to i64
  %i.fh = shl nuw nsw i64 %i.fg, 34
  %i.fi = or i64 %i.ff, %i.fh
  %i.fj = zext i8 %i.dy to i64
  %i.fk = shl nuw nsw i64 %i.fj, 28
  %i.fl = or i64 %i.fi, %i.fk
  %i.fm = zext i8 %i.eg to i64
  %i.fn = shl nuw nsw i64 %i.fm, 22
  %i.fo = or i64 %i.fl, %i.fn
  %i.fp = zext i8 %i.eo to i64
  %i.fq = shl nuw nsw i64 %i.fp, 16
  %i.fr = or i64 %i.fo, %i.fq
  %i.fs = tail call i64 @llvm.bswap.i64(i64 %i.fr)
  %.sroa.0244.0.extract.trunc.i.i = trunc i64 %i.fs to i48
  store i48 %.sroa.0244.0.extract.trunc.i.i, ptr %i.ck, align 1, !alias.scope !143, !noalias !147
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.01032.i.i, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ck, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.fv = load i8, ptr %i.ft, align 1, !alias.scope !154, !noalias !155, !noundef !39 ; 2 uses
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !alias.scope !158, !noalias !159, !noundef !39 ; 2 uses
  %i.fz = icmp eq i8 %i.fy, -1
  br i1 %i.fz, label %.loopexit294.i.i.a, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0.01032.i.i, i64 9
  %i.gb = load i8, ptr %i.ga, align 1, !alias.scope !154, !noalias !155, !noundef !39 ; 2 uses
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !alias.scope !158, !noalias !159, !noundef !39 ; 2 uses
  %i.gf = icmp eq i8 %i.ge, -1
  br i1 %i.gf, label %.loopexit294.i.i.a, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0.01032.i.i, i64 10
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !154, !noalias !155, !noundef !39 ; 2 uses
  %i.gi = zext i8 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !alias.scope !158, !noalias !159, !noundef !39 ; 2 uses
  %i.gl = icmp eq i8 %i.gk, -1
  br i1 %i.gl, label %.loopexit294.i.i.a, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.01032.i.i, i64 11
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !154, !noalias !155, !noundef !39 ; 2 uses
  %i.go = zext i8 %i.gn to i64
end_hunk_0
