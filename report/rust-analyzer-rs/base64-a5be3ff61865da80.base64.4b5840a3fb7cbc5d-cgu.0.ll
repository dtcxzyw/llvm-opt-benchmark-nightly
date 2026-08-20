inline.NumInlined: 41
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs2_NtNtCs6t3BXPRE3GP_6base645write21encoder_string_writerNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB5_11StrConsumer7consume:bb.a
  tail call void @llvm.assume(i1 %i.h)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs6t3BXPRE3GP_6base64.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs6t3BXPRE3GP_6base64.exit.i, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs6t3BXPRE3GP_6base64.exit.thread.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs6t3BXPRE3GP_6base64.exit.thread.i ], [ %i.b, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs6t3BXPRE3GP_6base64.exit.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !53, !nonnull !8, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !53
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs6t3BXPRE3GP_6base64.exit

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs6t3BXPRE3GP_6base64.exit: ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs6t3BXPRE3GP_6base64.exit.i, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.b, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs6t3BXPRE3GP_6base64.exit.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !53
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtCshzWfHUSfYae_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 11, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !8 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RNvXs_NtCs6t3BXPRE3GP_6base648alphabetNtB4_8AlphabetINtNtCshzWfHUSfYae_4core7convert7TryFromReE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([65 x i8]) align 1 captures(none) dereferenceable(65) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.a = icmp eq i64 %2, 64
  br i1 %i.a, label %.preheader10.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.b, align 1, !alias.scope !59, !noalias !62
  br label %_RNvMNtCs6t3BXPRE3GP_6base648alphabetNtB2_8Alphabet3new.exit

bb.c:                                             ; preds = %bb.g
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(64) %1, i64 64, i1 false), !alias.scope !64
  br label %_RNvMNtCs6t3BXPRE3GP_6base648alphabetNtB2_8Alphabet3new.exit

.preheader10.i:                                   ; preds = %bb.a, %bb.g
  %.sroa.0.014.i = phi i64 [ %i.l, %bb.g ], [ 0, %bb.a ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.014.i
  %i.e = load i8, ptr %i.d, align 1, !alias.scope !62, !noalias !59, !noundef !8 ; 8 uses
  %i.f = add i8 %i.e, -32
  %or.cond.i = icmp ult i8 %i.f, 95
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader10.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.g, align 1, !alias.scope !59, !noalias !62
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.e, ptr %i.h, align 1, !alias.scope !59, !noalias !62
  br label %_RNvMNtCs6t3BXPRE3GP_6base648alphabetNtB2_8Alphabet3new.exit

bb.e:                                             ; preds = %.preheader10.i
  %i.i = icmp eq i8 %i.e, 61
  br i1 %i.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.j, align 1, !alias.scope !59, !noalias !62
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 61, ptr %i.k, align 1, !alias.scope !59, !noalias !62
  br label %_RNvMNtCs6t3BXPRE3GP_6base648alphabetNtB2_8Alphabet3new.exit

bb.g:                                             ; preds = %.backedge.i.3
  %i.l = add nuw nsw i64 %.sroa.0.014.i, 1        ; 2 uses
  %exitcond18.not.i = icmp eq i64 %i.l, 64
  br i1 %exitcond18.not.i, label %bb.c, label %.preheader10.i

.preheader.i:                                     ; preds = %bb.e, %.backedge.i.3
  %.sroa.04.013.i = phi i64 [ %.sroa.04.0.be.i.3, %.backedge.i.3 ], [ 0, %bb.e ] ; 6 uses
  %i.m = icmp eq i64 %.sroa.04.013.i, %.sroa.0.014.i
  br i1 %i.m, label %.backedge.i, label %bb.k

.backedge.i:                                      ; preds = %bb.k, %.preheader.i
  %.sroa.04.0.be.i = or disjoint i64 %.sroa.04.013.i, 1 ; 2 uses
  %i.n = icmp eq i64 %.sroa.04.0.be.i, %.sroa.0.014.i
  br i1 %i.n, label %.backedge.i.1, label %bb.h

bb.h:                                             ; preds = %.backedge.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0.be.i
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !62, !noalias !59, !noundef !8
  %i.q = icmp eq i8 %i.e, %i.p
  br i1 %i.q, label %bb.l, label %.backedge.i.1

.backedge.i.1:                                    ; preds = %bb.h, %.backedge.i
  %.sroa.04.0.be.i.1 = or disjoint i64 %.sroa.04.013.i, 2 ; 2 uses
  %i.r = icmp eq i64 %.sroa.04.0.be.i.1, %.sroa.0.014.i
  br i1 %i.r, label %.backedge.i.2, label %bb.i

bb.i:                                             ; preds = %.backedge.i.1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0.be.i.1
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !62, !noalias !59, !noundef !8
  %i.u = icmp eq i8 %i.e, %i.t
  br i1 %i.u, label %bb.l, label %.backedge.i.2

.backedge.i.2:                                    ; preds = %bb.i, %.backedge.i.1
  %.sroa.04.0.be.i.2 = or disjoint i64 %.sroa.04.013.i, 3 ; 2 uses
  %i.v = icmp eq i64 %.sroa.04.0.be.i.2, %.sroa.0.014.i
  br i1 %i.v, label %.backedge.i.3, label %bb.j

bb.j:                                             ; preds = %.backedge.i.2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0.be.i.2
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !62, !noalias !59, !noundef !8
  %i.y = icmp eq i8 %i.e, %i.x
  br i1 %i.y, label %bb.l, label %.backedge.i.3

.backedge.i.3:                                    ; preds = %bb.j, %.backedge.i.2
  %.sroa.04.0.be.i.3 = add nuw nsw i64 %.sroa.04.013.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %.sroa.04.0.be.i.3, 64
  br i1 %exitcond.not.i.3, label %bb.g, label %.preheader.i

bb.k:                                             ; preds = %.preheader.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.013.i
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !62, !noalias !59, !noundef !8
  %i.ab = icmp eq i8 %i.e, %i.aa
  br i1 %i.ab, label %bb.l, label %.backedge.i

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ac, align 1, !alias.scope !59, !noalias !62
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.e, ptr %i.ad, align 1, !alias.scope !59, !noalias !62
  br label %_RNvMNtCs6t3BXPRE3GP_6base648alphabetNtB2_8Alphabet3new.exit

_RNvMNtCs6t3BXPRE3GP_6base648alphabetNtB2_8Alphabet3new.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.f, %bb.l
  %.sink = phi i8 [ 1, %bb.b ], [ 0, %bb.c ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.l ]
  store i8 %.sink, ptr %0, align 1, !alias.scope !59, !noalias !62
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs6t3BXPRE3GP_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_decode(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(323) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull writeonly captures(none) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %7) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 67 ; 42 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !range !44, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i8, ptr %i.e, align 1, !range !65, !noundef !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.g = icmp eq i64 %6, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i64 %3, -1                       ; 3 uses
  %.not.i102.i = icmp eq i64 %3, 0
  br i1 %.not.i102.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.f, %bb.d, %bb.a
  %i.i = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %3, i64 %6) ; 2 uses
  %i.j = icmp eq i64 %6, 0
  %i.k = tail call i64 @llvm.usub.sat.i64(i64 %i.i, i64 4)
  %i.l = select i1 %i.j, i64 %i.k, i64 %i.i       ; 19 uses
  %i.m = lshr i64 %i.l, 2                         ; 2 uses
  %i.n = mul nuw nsw i64 %i.m, 3                  ; 10 uses
  %i.o = icmp samesign ult i64 %5, %i.n
  br i1 %i.o, label %bb.g, label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode18complete_quads_len.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !80, !noalias !81, !noundef !8 ; 3 uses
  %i.r = icmp eq i8 %i.q, 61
  br i1 %i.r, label %bb.c, label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #19, !noalias !83
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.s = zext i8 %i.q to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !84, !noalias !85, !noundef !8
  %i.v = icmp eq i8 %i.u, -1
  br i1 %i.v, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f, %bb.c
  %.sroa.10111.0.ph.i = phi i64 [ %i.h, %bb.f ], [ undef, %bb.c ]
  %.sroa.8.0.ph.i = phi i8 [ %i.q, %bb.f ], [ undef, %bb.c ]
  %.sroa.0.0.ph.i = phi i8 [ 0, %bb.f ], [ -1, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.0.ph.i, ptr %i.w, align 8, !alias.scope !66, !noalias !86
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.8.0.ph.i, ptr %.sroa.417.0..sroa_idx.i, align 1, !alias.scope !66, !noalias !86
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10111.0.ph.i, ptr %.sroa.518.0..sroa_idx.i, align 8, !alias.scope !66, !noalias !86
  store i64 2, ptr %0, align 8, !alias.scope !66, !noalias !86
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode18complete_quads_len.exit.i: ; preds = %bb.c
  %i.x = and i64 %i.l, 9223372036854775776        ; 11 uses
  %.not32.i = icmp samesign ugt i64 %i.x, %3
  br i1 %.not32.i, label %bb.h, label %.preheader.i, !prof !87

.preheader.i:                                     ; preds = %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode18complete_quads_len.exit.i
  %.not.i.i1118.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i1118.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.y = udiv i64 %5, 24                          ; 2 uses
  br label %.lr.ph.i

bb.h:                                             ; preds = %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode18complete_quads_len.exit.i
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.x, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #19, !noalias !88
  unreachable

.lr.ph.i:                                         ; preds = %bb.cl, %.lr.ph.preheader.i
  %.sroa.0116.01121.i = phi ptr [ %i.z, %bb.cl ], [ %2, %.lr.ph.preheader.i ] ; 33 uses
  %.sroa.6117.01120.i = phi i64 [ %i.aa, %bb.cl ], [ %i.x, %.lr.ph.preheader.i ]
  %.sroa.13.01119.i = phi i64 [ %i.ab, %bb.cl ], [ 0, %.lr.ph.preheader.i ] ; 14 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0116.01121.i, i64 32
  %i.aa = add i64 %.sroa.6117.01120.i, -32        ; 2 uses
  %i.ab = add nuw nsw i64 %.sroa.13.01119.i, 1
  %i.ac = mul nuw nsw i64 %.sroa.13.01119.i, 24   ; 2 uses
  %exitcond.i = icmp eq i64 %.sroa.13.01119.i, %i.y
  br i1 %exitcond.i, label %bb.aw, label %bb.ax, !prof !87

._crit_edge.i:                                    ; preds = %bb.cl, %.preheader.i
  %i.ad = lshr exact i64 %i.x, 2                  ; 2 uses
  %i.ae = mul nuw nsw i64 %i.ad, 3                ; 3 uses
  %i.af = icmp samesign ult i64 %i.m, %i.ad
  br i1 %i.af, label %bb.i, label %bb.j, !prof !16

bb.i:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.ae, i64 noundef %i.n, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #19, !noalias !88
  unreachable

bb.j:                                             ; preds = %._crit_edge.i
  %i.ag = sub nuw nsw i64 %i.n, %i.ae             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 %i.ae
  %.not35.i = icmp samesign ugt i64 %i.l, %3
  br i1 %.not35.i, label %bb.k, label %bb.l, !prof !16

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.x, i64 noundef %i.l, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #19, !noalias !88
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ai = and i64 %i.l, 28                        ; 2 uses
  %.not.i.i1031129.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i1031129.i, label %._crit_edge1135.i, label %.lr.ph1134.preheader.i

.lr.ph1134.preheader.i:                           ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %i.x
  br label %.lr.ph1134.i

.lr.ph1134.i:                                     ; preds = %bb.av, %.lr.ph1134.preheader.i
  %.sroa.0141.01132.i = phi ptr [ %i.ak, %bb.av ], [ %i.aj, %.lr.ph1134.preheader.i ] ; 5 uses
  %.sroa.6142.01131.i = phi i64 [ %i.al, %bb.av ], [ %i.ai, %.lr.ph1134.preheader.i ]
  %.sroa.13146.01130.i = phi i64 [ %i.am, %bb.av ], [ 0, %.lr.ph1134.preheader.i ] ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0141.01132.i, i64 4
  %i.al = add i64 %.sroa.6142.01131.i, -4         ; 2 uses
  %i.am = add nuw nsw i64 %.sroa.13146.01130.i, 1
  %i.an = mul nuw i64 %.sroa.13146.01130.i, 3     ; 3 uses
  %i.ao = add nuw i64 %i.an, 3                    ; 2 uses
  %.not37.i = icmp ugt i64 %i.ao, %i.ag
  br i1 %.not37.i, label %bb.am, label %bb.an, !prof !87

._crit_edge1135.i:                                ; preds = %bb.av, %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 3 uses
  %i.aq = icmp samesign eq i64 %i.l, %3
  br i1 %i.aq, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.preheader.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.preheader.i.i: ; preds = %._crit_edge1135.i
  %i.ar = ptrtoaddr ptr %2 to i64
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %i.l ; 6 uses
  %i.at = add i64 %3, %i.ar                       ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.av = load i8, ptr %i.as, align 1, !alias.scope !98, !noalias !99, !noundef !8 ; 3 uses
  %i.aw = icmp eq i8 %i.av, 61
  br i1 %i.aw, label %.loopexit211.i.i, label %bb.z

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i: ; preds = %._crit_edge1135.i
  %.not368.i.i = icmp eq i64 %3, 0
  br i1 %.not368.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.thread.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i: ; preds = %bb.ak, %bb.ah, %bb.ae, %bb.ai, %.outer.3.i.i, %bb.af, %.outer.2.i.i, %bb.ac, %.outer.1.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i
  %.sroa.011.0.lcssa294.i.i = phi i64 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ 0, %.outer.1.i.i ], [ 0, %.outer.2.i.i ], [ 0, %.outer.3.i.i ], [ %i.dx, %bb.af ], [ %i.eo, %bb.ai ], [ %i.dx, %bb.ah ], [ %i.di, %bb.ae ], [ %i.di, %bb.ac ], [ %i.eo, %bb.ak ] ; 3 uses
  %.sroa.017.0.lcssa293.i.i = phi i64 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ 0, %.outer.1.i.i ], [ 0, %.outer.2.i.i ], [ 0, %.outer.3.i.i ], [ 3, %bb.af ], [ 4, %bb.ai ], [ 3, %bb.ah ], [ 2, %bb.ae ], [ 2, %bb.ac ], [ 4, %bb.ak ]
  %.sroa.04.0.ph.lcssa143292.i.i = phi i64 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ 2, %.outer.1.i.i ], [ 3, %.outer.2.i.i ], [ 4, %.outer.3.i.i ], [ 3, %bb.af ], [ 4, %bb.ai ], [ 3, %bb.ah ], [ 2, %bb.ae ], [ 2, %bb.ac ], [ 4, %bb.ak ] ; 3 uses
  %.sroa.019.0.ph.lcssa147291.i.i = phi i8 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ %i.da, %.outer.1.i.i ], [ %i.dk, %.outer.2.i.i ], [ %i.dz, %.outer.3.i.i ], [ %i.dk, %bb.af ], [ %i.dz, %bb.ai ], [ %i.dk, %bb.ah ], [ %i.da, %bb.ae ], [ %i.da, %bb.ac ], [ %i.dz, %bb.ak ]
  %.sroa.0.0290.i.i = phi i8 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ %i.ct, %.outer.1.i.i ], [ %i.ct, %.outer.2.i.i ], [ %i.ct, %.outer.3.i.i ], [ %i.ct, %bb.af ], [ %i.ct, %bb.ai ], [ %i.ct, %bb.ah ], [ %i.ct, %bb.ae ], [ %i.ct, %bb.ac ], [ %i.ct, %bb.ak ]
  %.sroa.6.0289.i.i = phi i8 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ %i.de, %.outer.1.i.i ], [ %i.de, %.outer.2.i.i ], [ %i.de, %.outer.3.i.i ], [ %i.de, %bb.af ], [ %i.de, %bb.ai ], [ %i.de, %bb.ah ], [ %i.de, %bb.ae ], [ %i.de, %bb.ac ], [ %i.de, %bb.ak ]
  %.sroa.8.0288.i.i = phi i8 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ 0, %.outer.1.i.i ], [ %i.ds, %.outer.2.i.i ], [ %i.ds, %.outer.3.i.i ], [ %i.ds, %bb.af ], [ %i.ds, %bb.ai ], [ %i.ds, %bb.ah ], [ 0, %bb.ae ], [ 0, %bb.ac ], [ %i.ds, %bb.ak ]
  %.sroa.10.0287.i.i = phi i8 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ 0, %.outer.1.i.i ], [ 0, %.outer.2.i.i ], [ %i.ei, %.outer.3.i.i ], [ 0, %bb.af ], [ %i.ei, %bb.ai ], [ 0, %bb.ah ], [ 0, %bb.ae ], [ 0, %bb.ac ], [ %i.ei, %bb.ak ]
  switch i8 %i.f, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
  ]

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.thread.i: ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i, %.outer.i.i
  %.sroa.04.0.ph.lcssa143.i301.i = phi i64 [ 1, %.outer.i.i ], [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ]
  %i.ax = add nuw i64 %.sroa.04.0.ph.lcssa143.i301.i, %i.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ay, align 8, !alias.scope !100, !noalias !101
  %.sroa.550.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ax, ptr %.sroa.550.0..sroa_idx.i.i, align 8, !alias.scope !100, !noalias !101
  store i64 2, ptr %0, align 8, !alias.scope !100, !noalias !101
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

default.unreachable:                              ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i
  %i.az = mul nuw nsw i64 %.sroa.04.0.ph.lcssa143292.i.i, 6 ; 2 uses
  %i.ba = lshr i64 %i.az, 3                       ; 3 uses
  %i.bb = zext i8 %.sroa.0.0290.i.i to i32
  %i.bc = shl i32 %i.bb, 26
  %i.bd = zext i8 %.sroa.6.0289.i.i to i32
  %i.be = shl nuw nsw i32 %i.bd, 20
  %i.bf = or i32 %i.be, %i.bc                     ; 2 uses
  %i.bg = zext i8 %.sroa.8.0288.i.i to i32
  %i.bh = shl nuw nsw i32 %i.bg, 14
  %i.bi = zext i8 %.sroa.10.0287.i.i to i32
  %i.bj = shl nuw nsw i32 %i.bi, 8
  %i.bk = or i32 %i.bh, %i.bj                     ; 2 uses
  %i.bl = or i32 %i.bk, %i.bf                     ; 2 uses
  br i1 %i.d, label %bb.s, label %bb.r

bb.n:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i
  %i.bm = add i64 %.sroa.04.0.ph.lcssa143292.i.i, %.sroa.011.0.lcssa294.i.i
  %i.bn = and i64 %i.bm, 3
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.m, label %bb.p

bb.o:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i
  %.not113.i.i = icmp eq i64 %.sroa.011.0.lcssa294.i.i, 0
  br i1 %.not113.i.i, label %bb.m, label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.bp, align 8, !alias.scope !100, !noalias !101
  store i64 2, ptr %0, align 8, !alias.scope !100, !noalias !101
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

bb.q:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.bq, align 8, !alias.scope !100, !noalias !101
  store i64 2, ptr %0, align 8, !alias.scope !100, !noalias !101
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

bb.r:                                             ; preds = %bb.m
  %i.br = trunc nuw nsw i64 %i.az to i32
  %i.bs = and i32 %i.br, 24
  %i.bt = lshr i32 -1, %i.bs
  %i.bu = and i32 %i.bl, %i.bt
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.m
  %.not.i107.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i107.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.s
  %i.bw = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %5, i64 range(i64 0, -9223372036854775808) %i.n) ; 2 uses
  %exitcond.not.i.i.not = icmp samesign ugt i64 %5, %i.n
  br i1 %exitcond.not.i.i.not, label %bb.w, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bx = add nsw i64 %i.l, -1
  %i.by = add i64 %i.bx, %.sroa.04.0.ph.lcssa143292.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.bz, align 8, !alias.scope !100, !noalias !101
  %.sroa.467.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.019.0.ph.lcssa147291.i.i, ptr %.sroa.467.0..sroa_idx.i.i, align 1, !alias.scope !100, !noalias !101
  %.sroa.669.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.by, ptr %.sroa.669.0..sroa_idx.i.i, align 8, !alias.scope !100, !noalias !101
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  store i64 2, ptr %0, align 8, !alias.scope !100, !noalias !101
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

._crit_edge.i.i:                                  ; preds = %bb.w, %bb.x, %bb.y, %bb.s
  %.sroa.0.0.lcssa.i.i = phi i64 [ %i.n, %bb.s ], [ %i.cf, %bb.w ], [ %i.cj, %bb.x ], [ %i.cn, %bb.y ]
  %.not114.i.i = icmp ne i64 %.sroa.011.0.lcssa294.i.i, 0 ; 2 uses
  %i.ca = add nuw i64 %.sroa.017.0.lcssa293.i.i, %i.l
  %.sroa.093.0.i.i = zext i1 %.not114.i.i to i64
  %.sroa.594.0.i.i = select i1 %.not114.i.i, i64 %i.ca, i64 undef
  store i64 %.sroa.093.0.i.i, ptr %0, align 8, !alias.scope !100, !noalias !101
  %.sroa.491.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.594.0.i.i, ptr %.sroa.491.0..sroa_idx.i.i, align 8, !alias.scope !100, !noalias !101
  %.sroa.592.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.lcssa.i.i, ptr %.sroa.592.0..sroa_idx.i.i, align 8, !alias.scope !100, !noalias !101
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

bb.v:                                             ; preds = %.lr.ph.i.i.2, %.lr.ph.i.i.1, %.lr.ph.preheader.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -1, ptr %i.cb, align 8, !alias.scope !100, !noalias !101
  br label %bb.u

bb.w:                                             ; preds = %.lr.ph.preheader.i.i
  %i.cc = lshr i32 %i.bf, 24
  %i.cd = trunc nuw i32 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 %i.n
  store i8 %i.cd, ptr %i.ce, align 1, !alias.scope !102, !noalias !103
  %i.cf = add nuw nsw i64 %i.n, 1                 ; 2 uses
  %exitcond247.not.i.i = icmp eq i64 %i.ba, 1
  br i1 %exitcond247.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.w
  %exitcond.not.i.i.1 = icmp eq i64 %i.bw, 1
  br i1 %exitcond.not.i.i.1, label %bb.v, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.1
  %i.cg = lshr i32 %i.bl, 16
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 %i.cf
  store i8 %i.ch, ptr %i.ci, align 1, !alias.scope !102, !noalias !103
  %i.cj = add nuw nsw i64 %i.n, 2                 ; 2 uses
  %exitcond247.not.i.i.1 = icmp eq i64 %i.ba, 2
  br i1 %exitcond247.not.i.i.1, label %._crit_edge.i.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.x
  %exitcond.not.i.i.2 = icmp eq i64 %i.bw, 2
  br i1 %exitcond.not.i.i.2, label %bb.v, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.2
  %i.ck = lshr exact i32 %i.bk, 8
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 %i.cj
  store i8 %i.cl, ptr %i.cm, align 1, !alias.scope !102, !noalias !103
  %i.cn = add nuw nsw i64 %i.n, 3
  br label %._crit_edge.i.i

.loopexit211.i.i:                                 ; preds = %bb.aj, %bb.ag, %bb.ad, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.1.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.preheader.i.i
  %.sroa.8.0148.lcssa185.i.i = phi i64 [ 1, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.1.i.i ], [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.preheader.i.i ], [ 0, %bb.ag ], [ 0, %bb.ad ], [ 0, %bb.aj ]
  %i.co = add nuw i64 %.sroa.8.0148.lcssa185.i.i, %i.l
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cp, align 8, !alias.scope !100, !noalias !101
  %.sroa.427.0..sroa_idx.i108.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 61, ptr %.sroa.427.0..sroa_idx.i108.i, align 1, !alias.scope !100, !noalias !101
  %.sroa.6.0..sroa_idx.i109.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.co, ptr %.sroa.6.0..sroa_idx.i109.i, align 8, !alias.scope !100, !noalias !101
  store i64 2, ptr %0, align 8, !alias.scope !100, !noalias !101
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

.loopexit1940.i:                                  ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.3.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.2.i.i
  %.pre-phi = phi i64 [ %i.du, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.3.i.i ], [ %i.dg, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.2.i.i ], [ %i.ek, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cq, align 8, !alias.scope !100, !noalias !101
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 61, ptr %.sroa.434.0..sroa_idx.i.i, align 1, !alias.scope !100, !noalias !101
  %.sroa.636.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.pre-phi, ptr %.sroa.636.0..sroa_idx.i.i, align 8, !alias.scope !100, !noalias !101
  store i64 2, ptr %0, align 8, !alias.scope !100, !noalias !101
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

bb.z:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.preheader.i.i
  %i.cr = zext i8 %i.av to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !104, !noalias !105, !noundef !8 ; 10 uses
  %i.cu = icmp eq i8 %i.ct, -1
  br i1 %i.cu, label %bb.aa, label %.outer.i.i

bb.aa:                                            ; preds = %bb.z, %.thread318.i.i, %.thread306.i.i, %.thread.i.i, %bb.ab
  %.sroa.8.0148.lcssa.lcssa187.i.i = phi i64 [ 4, %.thread318.i.i ], [ 1, %bb.ab ], [ 2, %.thread.i.i ], [ 3, %.thread306.i.i ], [ 0, %bb.z ]
  %.lcssa173.lcssa176.i.i = phi i8 [ %i.ep, %.thread318.i.i ], [ %i.da, %bb.ab ], [ %i.dk, %.thread.i.i ], [ %i.dz, %.thread306.i.i ], [ %i.av, %bb.z ]
  %i.cv = add nuw i64 %.sroa.8.0148.lcssa.lcssa187.i.i, %i.l
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cw, align 8, !alias.scope !100, !noalias !101
  %.sroa.442.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.lcssa173.lcssa176.i.i, ptr %.sroa.442.0..sroa_idx.i.i, align 1, !alias.scope !100, !noalias !101
  %.sroa.644.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cv, ptr %.sroa.644.0..sroa_idx.i.i, align 8, !alias.scope !100, !noalias !101
  store i64 2, ptr %0, align 8, !alias.scope !100, !noalias !101
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

.outer.i.i:                                       ; preds = %bb.z
  %i.cx = add nuw nsw i64 %i.l, 1
  %i.cy = icmp samesign eq i64 %i.cx, %3
  br i1 %i.cy, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.thread.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.1.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.1.i.i: ; preds = %.outer.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.as, i64 2 ; 2 uses
  %i.da = load i8, ptr %i.au, align 1, !alias.scope !98, !noalias !99, !noundef !8 ; 6 uses
  %i.db = icmp eq i8 %i.da, 61
  br i1 %i.db, label %.loopexit211.i.i, label %bb.ab

bb.ab:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.1.i.i
  %i.dc = zext i8 %i.da to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !alias.scope !104, !noalias !105, !noundef !8 ; 10 uses
  %i.df = icmp eq i8 %i.de, -1
  br i1 %i.df, label %bb.aa, label %.outer.1.i.i

.outer.1.i.i:                                     ; preds = %bb.ab
  %i.dg = add nuw i64 %i.l, 2                     ; 2 uses
  %i.dh = icmp samesign eq i64 %i.dg, %3
  br i1 %i.dh, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.2.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.2.i.i: ; preds = %.outer.1.i.i
  %.sroa.0.0116.ph160209.2.i.i = ptrtoaddr ptr %i.cz to i64
  %i.di = sub i64 %i.at, %.sroa.0.0116.ph160209.2.i.i ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.as, i64 3 ; 3 uses
  %i.dk = load i8, ptr %i.cz, align 1, !alias.scope !98, !noalias !99, !noundef !8 ; 6 uses
  %i.dl = icmp eq i8 %i.dk, 61
  br i1 %i.dl, label %bb.ac, label %.thread.i.i

bb.ac:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.2.i.i
  %i.dm = add nuw nsw i64 %i.l, 3
  %i.dn = icmp samesign eq i64 %i.dm, %3
  br i1 %i.dn, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.2.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.2.i.i: ; preds = %bb.ac, %bb.ae
  %.sroa.0.0116149.2.i.i = phi ptr [ %8, %bb.ae ], [ %i.dj, %bb.ac ] ; 2 uses
  %.sroa.011.0151.2.i.i = phi i64 [ %9, %bb.ae ], [ 3, %bb.ac ] ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.0.0116149.2.i.i, i64 1 ; 2 uses
  %9 = add i64 %.sroa.011.0151.2.i.i, 1
  %i.do = load i8, ptr %.sroa.0.0116149.2.i.i, align 1, !alias.scope !98, !noalias !99, !noundef !8
  %i.dp = icmp eq i8 %i.do, 61
  br i1 %i.dp, label %bb.ad, label %.loopexit1940.i

.thread.i.i:                                      ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.2.i.i
  %i.dq = zext i8 %i.dk to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !alias.scope !104, !noalias !105, !noundef !8 ; 7 uses
  %i.dt = icmp eq i8 %i.ds, -1
  br i1 %i.dt, label %bb.aa, label %.outer.2.i.i

.outer.2.i.i:                                     ; preds = %.thread.i.i
  %i.du = add nuw i64 %i.l, 3                     ; 2 uses
  %i.dv = icmp samesign eq i64 %i.du, %3
  br i1 %i.dv, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.3.i.i

bb.ad:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.2.i.i
  %exitcond1871.i = icmp eq i64 %.sroa.011.0151.2.i.i, 0
  br i1 %exitcond1871.i, label %.loopexit211.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dw = icmp eq ptr %8, %i.ap
  br i1 %i.dw, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.2.i.i, !llvm.loop !106

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.3.i.i: ; preds = %.outer.2.i.i
  %.sroa.0.0116.ph160209.3.i.i = ptrtoaddr ptr %i.dj to i64
  %i.dx = sub i64 %i.at, %.sroa.0.0116.ph160209.3.i.i ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 3 uses
  %i.dz = load i8, ptr %i.dj, align 1, !alias.scope !98, !noalias !99, !noundef !8 ; 6 uses
  %i.ea = icmp eq i8 %i.dz, 61
  br i1 %i.ea, label %bb.af, label %.thread306.i.i

bb.af:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.3.i.i
  %i.eb = add nuw nsw i64 %i.l, 4
  %i.ec = icmp samesign eq i64 %i.eb, %3
  br i1 %i.ec, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.3.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.3.i.i: ; preds = %bb.af, %bb.ah
  %.sroa.011.0151.3.i.i = phi i64 [ %i.em, %bb.ah ], [ 1, %bb.af ] ; 2 uses
  %.sroa.0.0116149.3.i.i = phi ptr [ %i.ed, %bb.ah ], [ %i.dy, %bb.af ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.0116149.3.i.i, i64 1 ; 2 uses
  %i.ee = load i8, ptr %.sroa.0.0116149.3.i.i, align 1, !alias.scope !98, !noalias !99, !noundef !8
  %i.ef = icmp eq i8 %i.ee, 61
  br i1 %i.ef, label %bb.ag, label %.loopexit1940.i

.thread306.i.i:                                   ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.3.i.i
  %i.eg = zext i8 %i.dz to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !104, !noalias !105, !noundef !8 ; 4 uses
  %i.ej = icmp eq i8 %i.ei, -1
  br i1 %i.ej, label %bb.aa, label %.outer.3.i.i

.outer.3.i.i:                                     ; preds = %.thread306.i.i
  %i.ek = add nuw i64 %i.l, 4                     ; 2 uses
  %i.el = icmp samesign eq i64 %i.ek, %3
  br i1 %i.el, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.4.i.i

bb.ag:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.3.i.i
  %exitcond.a = icmp eq i64 %.sroa.011.0151.3.i.i, -3
  br i1 %exitcond.a, label %.loopexit211.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.em = add nuw i64 %.sroa.011.0151.3.i.i, 1
  %i.en = icmp eq ptr %i.ed, %i.ap
  br i1 %i.en, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.3.i.i, !llvm.loop !106

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.4.i.i: ; preds = %.outer.3.i.i
  %.sroa.0.0116.ph160209.4.i.i = ptrtoaddr ptr %i.dy to i64
  %i.eo = sub i64 %i.at, %.sroa.0.0116.ph160209.4.i.i ; 2 uses
  %i.ep = load i8, ptr %i.dy, align 1, !alias.scope !98, !noalias !99, !noundef !8 ; 3 uses
  %i.eq = icmp eq i8 %i.ep, 61
  br i1 %i.eq, label %bb.ai, label %.thread318.i.i

bb.ai:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.4.i.i
  %i.er = add nuw nsw i64 %i.l, 5
  %i.es = icmp samesign eq i64 %i.er, %3
  br i1 %i.es, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i.preheader

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i.preheader: ; preds = %bb.ai
  %i.et = getelementptr inbounds nuw i8, ptr %i.as, i64 5
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i: ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i.preheader, %bb.ak
  %.sroa.0.0116149.4.i.i = phi ptr [ %i.eu, %bb.ak ], [ %i.et, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i.preheader ] ; 2 uses
  %.sroa.8.0148.4.in.i.i = phi i64 [ %.sroa.8.0148.4.i.i, %bb.ak ], [ 4, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i.preheader ] ; 2 uses
  %.sroa.8.0148.4.i.i = add i64 %.sroa.8.0148.4.in.i.i, 1
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.0116149.4.i.i, i64 1 ; 2 uses
  %i.ev = load i8, ptr %.sroa.0.0116149.4.i.i, align 1, !alias.scope !98, !noalias !99, !noundef !8
  %i.ew = icmp eq i8 %i.ev, 61
  br i1 %i.ew, label %bb.aj, label %.loopexit1940.i

.thread318.i.i:                                   ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.4.i.i
  %i.ex = zext i8 %i.ep to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !alias.scope !104, !noalias !105, !noundef !8
  %i.fa = icmp eq i8 %i.ez, -1
  br i1 %i.fa, label %bb.aa, label %bb.al

bb.aj:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i
  %exitcond = icmp eq i64 %.sroa.8.0148.4.in.i.i, -1
  br i1 %exitcond, label %.loopexit211.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fb = icmp eq ptr %i.eu, %i.ap
  br i1 %i.fb, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i, !llvm.loop !106

bb.al:                                            ; preds = %.thread318.i.i
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 4, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #19, !noalias !108
  unreachable

bb.am:                                            ; preds = %.lr.ph1134.i
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.an, i64 noundef %i.ao, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19, !noalias !88
  unreachable

bb.an:                                            ; preds = %.lr.ph1134.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.an
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.fd = load i8, ptr %.sroa.0141.01132.i, align 1, !alias.scope !114, !noalias !115, !noundef !8 ; 2 uses
  %i.fe = zext i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !alias.scope !118, !noalias !119, !noundef !8 ; 2 uses
  %i.fh = icmp eq i8 %i.fg, -1
  br i1 %i.fh, label %.loopexit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0141.01132.i, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !alias.scope !114, !noalias !115, !noundef !8 ; 2 uses
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !alias.scope !118, !noalias !119, !noundef !8 ; 2 uses
  %i.fn = icmp eq i8 %i.fm, -1
  br i1 %i.fn, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fo = shl i64 %.sroa.13146.01130.i, 2
  %i.fp = add i64 %i.fo, %i.x
  %i.fq = or disjoint i64 %i.fp, 1
  br label %bb.au

bb.aq:                                            ; preds = %bb.ao
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0141.01132.i, i64 2
  %i.fs = load i8, ptr %i.fr, align 1, !alias.scope !114, !noalias !115, !noundef !8 ; 2 uses
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !alias.scope !118, !noalias !119, !noundef !8 ; 2 uses
  %i.fw = icmp eq i8 %i.fv, -1
  br i1 %i.fw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fx = shl i64 %.sroa.13146.01130.i, 2
  %i.fy = add i64 %i.fx, %i.x
  %i.fz = or disjoint i64 %i.fy, 2
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0141.01132.i, i64 3
  %i.gb = load i8, ptr %i.ga, align 1, !alias.scope !114, !noalias !115, !noundef !8 ; 2 uses
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !alias.scope !118, !noalias !119, !noundef !8 ; 2 uses
  %i.gf = icmp eq i8 %i.ge, -1
  br i1 %i.gf, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.gg = shl i64 %.sroa.13146.01130.i, 2
  %i.gh = add i64 %i.gg, %i.x
  %i.gi = or disjoint i64 %i.gh, 3
  br label %bb.au

.loopexit.i:                                      ; preds = %bb.an
  %i.gj = shl i64 %.sroa.13146.01130.i, 2
  %i.gk = add i64 %i.gj, %i.x
  br label %bb.au

bb.au:                                            ; preds = %.loopexit.i, %bb.at, %bb.ar, %bb.ap
  %.sroa.14153.0.ph.i = phi i64 [ %i.fq, %bb.ap ], [ %i.gi, %bb.at ], [ %i.fz, %bb.ar ], [ %i.gk, %.loopexit.i ]
  %.sroa.10151.0.ph.i = phi i8 [ %i.fj, %bb.ap ], [ %i.gb, %bb.at ], [ %i.fs, %bb.ar ], [ %i.fd, %.loopexit.i ]
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.gl, align 8, !alias.scope !66, !noalias !86
  %.sroa.4269.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.10151.0.ph.i, ptr %.sroa.4269.0..sroa_idx.i, align 1, !alias.scope !66, !noalias !86
  %.sroa.6271.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.14153.0.ph.i, ptr %.sroa.6271.0..sroa_idx.i, align 8, !alias.scope !66, !noalias !86
  store i64 2, ptr %0, align 8, !alias.scope !66, !noalias !86
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

bb.av:                                            ; preds = %bb.as
  %i.gm = zext i8 %i.fg to i32
  %i.gn = shl i32 %i.gm, 26
  %i.go = zext i8 %i.fm to i32
  %i.gp = shl nuw nsw i32 %i.go, 20
  %i.gq = or i32 %i.gp, %i.gn
  %i.gr = zext i8 %i.fv to i32
  %i.gs = shl nuw nsw i32 %i.gr, 14
  %i.gt = or i32 %i.gq, %i.gs
  %i.gu = zext i8 %i.ge to i32
  %i.gv = shl nuw nsw i32 %i.gu, 8
  %i.gw = or i32 %i.gt, %i.gv
  %i.gx = tail call i32 @llvm.bswap.i32(i32 %i.gw)
  %.sroa.0272.0.extract.trunc.i = trunc nuw i32 %i.gx to i24
  store i24 %.sroa.0272.0.extract.trunc.i, ptr %i.fc, align 1, !alias.scope !120, !noalias !124
  %.not.i.i103.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i103.i, label %._crit_edge1135.i, label %.lr.ph1134.i

bb.aw:                                            ; preds = %.lr.ph.i
  %i.gy = mul nuw nsw i64 %i.y, 24
  %i.gz = add nuw i64 %i.gy, 24
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.ac, i64 noundef %i.gz, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #19, !noalias !88
  unreachable

bb.ax:                                            ; preds = %.lr.ph.i
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 %i.ac ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.hb = load i8, ptr %.sroa.0116.01121.i, align 1, !alias.scope !131, !noalias !132, !noundef !8 ; 2 uses
  %i.hc = zext i8 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !alias.scope !135, !noalias !136, !noundef !8 ; 2 uses
  %i.hf = icmp eq i8 %i.he, -1
  br i1 %i.hf, label %.loopexit342.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0116.01121.i, i64 1
  %i.hh = load i8, ptr %i.hg, align 1, !alias.scope !131, !noalias !132, !noundef !8 ; 2 uses
  %i.hi = zext i8 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !alias.scope !135, !noalias !136, !noundef !8 ; 2 uses
  %i.hl = icmp eq i8 %i.hk, -1
  br i1 %i.hl, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0116.01121.i, i64 2
  %i.hn = load i8, ptr %i.hm, align 1, !alias.scope !131, !noalias !132, !noundef !8 ; 2 uses
  %i.ho = zext i8 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !alias.scope !135, !noalias !136, !noundef !8 ; 2 uses
  %i.hr = icmp eq i8 %i.hq, -1
  br i1 %i.hr, label %bb.bc, label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.hs = shl i64 %.sroa.13.01119.i, 5
  %i.ht = or disjoint i64 %i.hs, 1
  br label %bb.bm

bb.bb:                                            ; preds = %bb.az
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0116.01121.i, i64 3
  %i.hv = load i8, ptr %i.hu, align 1, !alias.scope !131, !noalias !132, !noundef !8 ; 2 uses
  %i.hw = zext i8 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !alias.scope !135, !noalias !136, !noundef !8 ; 2 uses
  %i.hz = icmp eq i8 %i.hy, -1
  br i1 %i.hz, label %bb.be, label %bb.bd

bb.bc:                                            ; preds = %bb.az
  %i.ia = shl i64 %.sroa.13.01119.i, 5
  %i.ib = or disjoint i64 %i.ia, 2
  br label %bb.bm

bb.bd:                                            ; preds = %bb.bb
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0116.01121.i, i64 4
  %i.id = load i8, ptr %i.ic, align 1, !alias.scope !131, !noalias !132, !noundef !8 ; 2 uses
  %i.ie = zext i8 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !alias.scope !135, !noalias !136, !noundef !8 ; 2 uses
  %i.ih = icmp eq i8 %i.ig, -1
  br i1 %i.ih, label %bb.bg, label %bb.bf

bb.be:                                            ; preds = %bb.bb
  %i.ii = shl i64 %.sroa.13.01119.i, 5
  %i.ij = or disjoint i64 %i.ii, 3
  br label %bb.bm

bb.bf:                                            ; preds = %bb.bd
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0116.01121.i, i64 5
  %i.il = load i8, ptr %i.ik, align 1, !alias.scope !131, !noalias !132, !noundef !8 ; 2 uses
  %i.im = zext i8 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1, !alias.scope !135, !noalias !136, !noundef !8 ; 2 uses
  %i.ip = icmp eq i8 %i.io, -1
  br i1 %i.ip, label %bb.bi, label %bb.bh

bb.bg:                                            ; preds = %bb.bd
  %i.iq = shl i64 %.sroa.13.01119.i, 5
  %i.ir = or disjoint i64 %i.iq, 4
  br label %bb.bm

bb.bh:                                            ; preds = %bb.bf
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0116.01121.i, i64 6
  %i.it = load i8, ptr %i.is, align 1, !alias.scope !131, !noalias !132, !noundef !8 ; 2 uses
  %i.iu = zext i8 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.iu
  %i.iw = load i8, ptr %i.iv, align 1, !alias.scope !135, !noalias !136, !noundef !8 ; 2 uses
  %i.ix = icmp eq i8 %i.iw, -1
  br i1 %i.ix, label %bb.bk, label %bb.bj

bb.bi:                                            ; preds = %bb.bf
  %i.iy = shl i64 %.sroa.13.01119.i, 5
  %i.iz = or disjoint i64 %i.iy, 5
  br label %bb.bm

bb.bj:                                            ; preds = %bb.bh
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0116.01121.i, i64 7
end_hunk_0
