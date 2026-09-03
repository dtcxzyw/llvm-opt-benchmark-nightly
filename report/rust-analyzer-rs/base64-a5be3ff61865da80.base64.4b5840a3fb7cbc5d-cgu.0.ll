Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/base64-a5be3ff61865da80.base64.4b5840a3fb7cbc5d-cgu.0?download=true
inline.NumInlined: 41
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXsZ_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_5Debug3fmt:bb.a
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.a = icmp eq i64 %2, 64
  br i1 %i.a, label %.preheader10.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.b, align 1, !alias.scope !63, !noalias !64
  br label %_RNvMNtCs6t3BXPRE3GP_6base648alphabetNtB2_8Alphabet3new.exit

bb.c:                                             ; preds = %bb.g
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(64) %1, i64 64, i1 false), !alias.scope !65
  br label %_RNvMNtCs6t3BXPRE3GP_6base648alphabetNtB2_8Alphabet3new.exit

.preheader10.i:                                   ; preds = %bb.a, %bb.g
  %.sroa.0.014.i = phi i64 [ %i.l, %bb.g ], [ 0, %bb.a ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.014.i
  %i.e = load i8, ptr %i.d, align 1, !alias.scope !64, !noalias !63, !noundef !5 ; 8 uses
  %i.f = add i8 %i.e, -32
  %or.cond.i = icmp ult i8 %i.f, 95
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader10.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.g, align 1, !alias.scope !63, !noalias !64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.e, ptr %i.h, align 1, !alias.scope !63, !noalias !64
  br label %_RNvMNtCs6t3BXPRE3GP_6base648alphabetNtB2_8Alphabet3new.exit

bb.e:                                             ; preds = %.preheader10.i
  %i.i = icmp eq i8 %i.e, 61
  br i1 %i.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.j, align 1, !alias.scope !63, !noalias !64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 61, ptr %i.k, align 1, !alias.scope !63, !noalias !64
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
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !64, !noalias !63, !noundef !5
  %i.q = icmp eq i8 %i.e, %i.p
  br i1 %i.q, label %bb.l, label %.backedge.i.1

.backedge.i.1:                                    ; preds = %bb.h, %.backedge.i
  %.sroa.04.0.be.i.1 = or disjoint i64 %.sroa.04.013.i, 2 ; 2 uses
  %i.r = icmp eq i64 %.sroa.04.0.be.i.1, %.sroa.0.014.i
  br i1 %i.r, label %.backedge.i.2, label %bb.i

bb.i:                                             ; preds = %.backedge.i.1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0.be.i.1
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !64, !noalias !63, !noundef !5
  %i.u = icmp eq i8 %i.e, %i.t
  br i1 %i.u, label %bb.l, label %.backedge.i.2

.backedge.i.2:                                    ; preds = %bb.i, %.backedge.i.1
  %.sroa.04.0.be.i.2 = or disjoint i64 %.sroa.04.013.i, 3 ; 2 uses
  %i.v = icmp eq i64 %.sroa.04.0.be.i.2, %.sroa.0.014.i
  br i1 %i.v, label %.backedge.i.3, label %bb.j

bb.j:                                             ; preds = %.backedge.i.2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0.be.i.2
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !64, !noalias !63, !noundef !5
  %i.y = icmp eq i8 %i.e, %i.x
  br i1 %i.y, label %bb.l, label %.backedge.i.3

.backedge.i.3:                                    ; preds = %bb.j, %.backedge.i.2
  %.sroa.04.0.be.i.3 = add nuw nsw i64 %.sroa.04.013.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %.sroa.04.0.be.i.3, 64
  br i1 %exitcond.not.i.3, label %bb.g, label %.preheader.i

bb.k:                                             ; preds = %.preheader.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.013.i
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !64, !noalias !63, !noundef !5
  %i.ab = icmp eq i8 %i.e, %i.aa
  br i1 %i.ab, label %bb.l, label %.backedge.i

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ac, align 1, !alias.scope !63, !noalias !64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.e, ptr %i.ad, align 1, !alias.scope !63, !noalias !64
  br label %_RNvMNtCs6t3BXPRE3GP_6base648alphabetNtB2_8Alphabet3new.exit

_RNvMNtCs6t3BXPRE3GP_6base648alphabetNtB2_8Alphabet3new.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.f, %bb.l
  %.sink = phi i8 [ 1, %bb.b ], [ 0, %bb.c ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.l ]
  store i8 %.sink, ptr %0, align 1, !alias.scope !63, !noalias !64
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs6t3BXPRE3GP_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_decode(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(323) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull writeonly captures(none) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %7) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 67 ; 42 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !range !10, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i8, ptr %i.e, align 1, !range !126, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
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
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !133, !noalias !134, !noundef !5 ; 3 uses
  %i.r = icmp eq i8 %i.q, 61
  br i1 %i.r, label %bb.c, label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #19, !noalias !135
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.s = zext i8 %i.q to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !136, !noalias !137, !noundef !5
  %i.v = icmp eq i8 %i.u, -1
  br i1 %i.v, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f, %bb.c
  %.sroa.10111.0.ph.i = phi i64 [ %i.h, %bb.f ], [ undef, %bb.c ]
  %.sroa.8.0.ph.i = phi i8 [ %i.q, %bb.f ], [ undef, %bb.c ]
  %.sroa.0.0.ph.i = phi i8 [ 0, %bb.f ], [ -1, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.0.ph.i, ptr %i.w, align 8, !alias.scope !127, !noalias !138
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.8.0.ph.i, ptr %.sroa.417.0..sroa_idx.i, align 1, !alias.scope !127, !noalias !138
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10111.0.ph.i, ptr %.sroa.518.0..sroa_idx.i, align 8, !alias.scope !127, !noalias !138
  store i64 2, ptr %0, align 8, !alias.scope !127, !noalias !138
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode18complete_quads_len.exit.i: ; preds = %bb.c
  %i.x = and i64 %i.l, 9223372036854775776        ; 11 uses
  %.not32.i = icmp samesign ugt i64 %i.x, %3
  br i1 %.not32.i, label %bb.h, label %.preheader.i, !prof !11

.preheader.i:                                     ; preds = %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode18complete_quads_len.exit.i
  %.not.i.i1116.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i1116.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %8 = udiv i64 %5, 24                            ; 2 uses
  br label %.lr.ph.i

bb.h:                                             ; preds = %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode18complete_quads_len.exit.i
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.x, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #19, !noalias !139
  unreachable

.lr.ph.i:                                         ; preds = %bb.ck, %.lr.ph.preheader.i
  %.sroa.0116.01119.i = phi ptr [ %i.y, %bb.ck ], [ %2, %.lr.ph.preheader.i ] ; 33 uses
  %.sroa.6117.01118.i = phi i64 [ %i.z, %bb.ck ], [ %i.x, %.lr.ph.preheader.i ]
  %.sroa.13.01117.i = phi i64 [ %i.aa, %bb.ck ], [ 0, %.lr.ph.preheader.i ] ; 14 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 32
  %i.z = add i64 %.sroa.6117.01118.i, -32         ; 2 uses
  %i.aa = add nuw nsw i64 %.sroa.13.01117.i, 1
  %i.ab = mul nuw nsw i64 %.sroa.13.01117.i, 24   ; 2 uses
  %exitcond.i = icmp eq i64 %.sroa.13.01117.i, %8
  br i1 %exitcond.i, label %bb.av, label %bb.aw, !prof !11

._crit_edge.i:                                    ; preds = %bb.ck, %.preheader.i
  %i.ac = lshr exact i64 %i.x, 2                  ; 2 uses
  %i.ad = mul nuw nsw i64 %i.ac, 3                ; 3 uses
  %i.ae = icmp samesign ult i64 %i.m, %i.ac
  br i1 %i.ae, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.ad, i64 noundef %i.n, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #19, !noalias !139
  unreachable

bb.j:                                             ; preds = %._crit_edge.i
  %i.af = sub nuw nsw i64 %i.n, %i.ad             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 %i.ad
  %.not35.i = icmp samesign ugt i64 %i.l, %3
  br i1 %.not35.i, label %bb.k, label %bb.l, !prof !7

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.x, i64 noundef %i.l, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #19, !noalias !139
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ah = and i64 %i.l, 28                        ; 2 uses
  %.not.i.i1031127.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i1031127.i, label %._crit_edge1133.i, label %.lr.ph1132.preheader.i

.lr.ph1132.preheader.i:                           ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %i.x
  br label %.lr.ph1132.i

.lr.ph1132.i:                                     ; preds = %bb.au, %.lr.ph1132.preheader.i
  %.sroa.0141.01130.i = phi ptr [ %i.aj, %bb.au ], [ %i.ai, %.lr.ph1132.preheader.i ] ; 5 uses
  %.sroa.6142.01129.i = phi i64 [ %i.ak, %bb.au ], [ %i.ah, %.lr.ph1132.preheader.i ]
  %.sroa.13146.01128.i = phi i64 [ %i.al, %bb.au ], [ 0, %.lr.ph1132.preheader.i ] ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0141.01130.i, i64 4
  %i.ak = add i64 %.sroa.6142.01129.i, -4         ; 2 uses
  %i.al = add nuw nsw i64 %.sroa.13146.01128.i, 1
  %i.am = mul nuw i64 %.sroa.13146.01128.i, 3     ; 3 uses
  %i.an = add nuw i64 %i.am, 3                    ; 2 uses
  %.not37.i = icmp ugt i64 %i.an, %i.af
  br i1 %.not37.i, label %bb.al, label %bb.am, !prof !11

._crit_edge1133.i:                                ; preds = %bb.au, %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 3 uses
  %i.ap = icmp samesign eq i64 %i.l, %3
  br i1 %i.ap, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.preheader.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.preheader.i.i: ; preds = %._crit_edge1133.i
  %i.aq = ptrtoaddr ptr %2 to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %i.l ; 6 uses
  %i.as = add i64 %3, %i.aq                       ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.au = load i8, ptr %i.ar, align 1, !alias.scope !144, !noalias !145, !noundef !5 ; 3 uses
  %i.av = icmp eq i8 %i.au, 61
  br i1 %i.av, label %.loopexit211.i.i, label %bb.z

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i: ; preds = %._crit_edge1133.i
  %.not368.i.i = icmp eq i64 %3, 0
  br i1 %.not368.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.thread.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i: ; preds = %bb.aj, %bb.ag, %bb.ad, %bb.ah, %.outer.3.i.i, %bb.ae, %.outer.2.i.i, %bb.ab, %.outer.1.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i
  %.sroa.011.0.lcssa294.i.i = phi i64 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ 0, %.outer.1.i.i ], [ 0, %.outer.2.i.i ], [ 0, %.outer.3.i.i ], [ %i.dy, %bb.ae ], [ %i.ep, %bb.ah ], [ %i.dy, %bb.ag ], [ %i.dh, %bb.ad ], [ %i.dh, %bb.ab ], [ %i.ep, %bb.aj ] ; 3 uses
  %.sroa.017.0.lcssa293.i.i = phi i64 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ 0, %.outer.1.i.i ], [ 0, %.outer.2.i.i ], [ 0, %.outer.3.i.i ], [ 3, %bb.ae ], [ 4, %bb.ah ], [ 3, %bb.ag ], [ 2, %bb.ad ], [ 2, %bb.ab ], [ 4, %bb.aj ]
  %.sroa.04.0.ph.lcssa143292.i.i = phi i64 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ 2, %.outer.1.i.i ], [ 3, %.outer.2.i.i ], [ 4, %.outer.3.i.i ], [ 3, %bb.ae ], [ 4, %bb.ah ], [ 3, %bb.ag ], [ 2, %bb.ad ], [ 2, %bb.ab ], [ 4, %bb.aj ] ; 3 uses
  %.sroa.019.0.ph.lcssa147291.i.i = phi i8 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ %i.cz, %.outer.1.i.i ], [ %i.dj, %.outer.2.i.i ], [ %i.ea, %.outer.3.i.i ], [ %i.dj, %bb.ae ], [ %i.ea, %bb.ah ], [ %i.dj, %bb.ag ], [ %i.cz, %bb.ad ], [ %i.cz, %bb.ab ], [ %i.ea, %bb.aj ]
  %.sroa.0.0290.i.i = phi i8 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ %i.cs, %.outer.1.i.i ], [ %i.cs, %.outer.2.i.i ], [ %i.cs, %.outer.3.i.i ], [ %i.cs, %bb.ae ], [ %i.cs, %bb.ah ], [ %i.cs, %bb.ag ], [ %i.cs, %bb.ad ], [ %i.cs, %bb.ab ], [ %i.cs, %bb.aj ]
  %.sroa.6.0289.i.i = phi i8 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ %i.dd, %.outer.1.i.i ], [ %i.dd, %.outer.2.i.i ], [ %i.dd, %.outer.3.i.i ], [ %i.dd, %bb.ae ], [ %i.dd, %bb.ah ], [ %i.dd, %bb.ag ], [ %i.dd, %bb.ad ], [ %i.dd, %bb.ab ], [ %i.dd, %bb.aj ]
  %.sroa.8.0288.i.i = phi i8 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ 0, %.outer.1.i.i ], [ %i.dt, %.outer.2.i.i ], [ %i.dt, %.outer.3.i.i ], [ %i.dt, %bb.ae ], [ %i.dt, %bb.ah ], [ %i.dt, %bb.ag ], [ 0, %bb.ad ], [ 0, %bb.ab ], [ %i.dt, %bb.aj ]
  %.sroa.10.0287.i.i = phi i8 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ], [ 0, %.outer.1.i.i ], [ 0, %.outer.2.i.i ], [ %i.ej, %.outer.3.i.i ], [ 0, %bb.ae ], [ %i.ej, %bb.ah ], [ 0, %bb.ag ], [ 0, %bb.ad ], [ 0, %bb.ab ], [ %i.ej, %bb.aj ]
  switch i8 %i.f, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
  ]

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.thread.i: ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i, %.outer.i.i
  %.sroa.04.0.ph.lcssa143.i301.i = phi i64 [ 1, %.outer.i.i ], [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.i.i ]
  %i.aw = add nuw i64 %.sroa.04.0.ph.lcssa143.i301.i, %i.l
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ax, align 8, !alias.scope !146, !noalias !147
  %.sroa.550.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aw, ptr %.sroa.550.0..sroa_idx.i.i, align 8, !alias.scope !146, !noalias !147
  store i64 2, ptr %0, align 8, !alias.scope !146, !noalias !147
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

default.unreachable:                              ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i
  %i.ay = mul nuw nsw i64 %.sroa.04.0.ph.lcssa143292.i.i, 6 ; 2 uses
  %i.az = lshr i64 %i.ay, 3                       ; 3 uses
  %i.ba = zext i8 %.sroa.0.0290.i.i to i32
  %i.bb = shl i32 %i.ba, 26
  %i.bc = zext i8 %.sroa.6.0289.i.i to i32
  %i.bd = shl nuw nsw i32 %i.bc, 20
  %i.be = or i32 %i.bd, %i.bb                     ; 2 uses
  %i.bf = zext i8 %.sroa.8.0288.i.i to i32
  %i.bg = shl nuw nsw i32 %i.bf, 14
  %i.bh = zext i8 %.sroa.10.0287.i.i to i32
  %i.bi = shl nuw nsw i32 %i.bh, 8
  %i.bj = or i32 %i.bg, %i.bi                     ; 2 uses
  %i.bk = or i32 %i.bj, %i.be                     ; 2 uses
  br i1 %i.d, label %bb.s, label %bb.r

bb.n:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i
  %i.bl = add i64 %.sroa.04.0.ph.lcssa143292.i.i, %.sroa.011.0.lcssa294.i.i
  %i.bm = and i64 %i.bl, 3
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.m, label %bb.p

bb.o:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i
  %.not113.i.i = icmp eq i64 %.sroa.011.0.lcssa294.i.i, 0
  br i1 %.not113.i.i, label %bb.m, label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.bo, align 8, !alias.scope !146, !noalias !147
  store i64 2, ptr %0, align 8, !alias.scope !146, !noalias !147
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

bb.q:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.bp, align 8, !alias.scope !146, !noalias !147
  store i64 2, ptr %0, align 8, !alias.scope !146, !noalias !147
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

bb.r:                                             ; preds = %bb.m
  %i.bq = trunc nuw nsw i64 %i.ay to i32
  %i.br = and i32 %i.bq, 24
  %i.bs = lshr i32 -1, %i.br
  %i.bt = and i32 %i.bk, %i.bs
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.m
  %.not.i107.i = icmp eq i64 %i.az, 0
  br i1 %.not.i107.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.s
  %i.bv = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %5, i64 range(i64 0, -9223372036854775808) %i.n) ; 2 uses
  %exitcond.not.i.i.not = icmp samesign ugt i64 %5, %i.n
  br i1 %exitcond.not.i.i.not, label %bb.w, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bw = add nsw i64 %i.l, -1
  %i.bx = add i64 %i.bw, %.sroa.04.0.ph.lcssa143292.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.by, align 8, !alias.scope !146, !noalias !147
  %.sroa.467.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.019.0.ph.lcssa147291.i.i, ptr %.sroa.467.0..sroa_idx.i.i, align 1, !alias.scope !146, !noalias !147
  %.sroa.669.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bx, ptr %.sroa.669.0..sroa_idx.i.i, align 8, !alias.scope !146, !noalias !147
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  store i64 2, ptr %0, align 8, !alias.scope !146, !noalias !147
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

._crit_edge.i.i:                                  ; preds = %bb.w, %bb.x, %bb.y, %bb.s
  %.sroa.0.0.lcssa.i.i = phi i64 [ %i.n, %bb.s ], [ %i.ce, %bb.w ], [ %i.ci, %bb.x ], [ %i.cm, %bb.y ]
  %.not114.i.i = icmp ne i64 %.sroa.011.0.lcssa294.i.i, 0 ; 2 uses
  %i.bz = add nuw i64 %.sroa.017.0.lcssa293.i.i, %i.l
  %.sroa.093.0.i.i = zext i1 %.not114.i.i to i64
  %.sroa.594.0.i.i = select i1 %.not114.i.i, i64 %i.bz, i64 undef
  store i64 %.sroa.093.0.i.i, ptr %0, align 8, !alias.scope !146, !noalias !147
  %.sroa.491.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.594.0.i.i, ptr %.sroa.491.0..sroa_idx.i.i, align 8, !alias.scope !146, !noalias !147
  %.sroa.592.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.lcssa.i.i, ptr %.sroa.592.0..sroa_idx.i.i, align 8, !alias.scope !146, !noalias !147
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

bb.v:                                             ; preds = %.lr.ph.i.i.2, %.lr.ph.i.i.1, %.lr.ph.preheader.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -1, ptr %i.ca, align 8, !alias.scope !146, !noalias !147
  br label %bb.u

bb.w:                                             ; preds = %.lr.ph.preheader.i.i
  %i.cb = lshr i32 %i.be, 24
  %i.cc = trunc nuw i32 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 %i.n
  store i8 %i.cc, ptr %i.cd, align 1, !alias.scope !148, !noalias !149
  %i.ce = add nuw nsw i64 %i.n, 1                 ; 2 uses
  %exitcond247.not.i.i = icmp eq i64 %i.az, 1
  br i1 %exitcond247.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.w
  %exitcond.not.i.i.1 = icmp eq i64 %i.bv, 1
  br i1 %exitcond.not.i.i.1, label %bb.v, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.1
  %i.cf = lshr i32 %i.bk, 16
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !alias.scope !148, !noalias !149
  %i.ci = add nuw nsw i64 %i.n, 2                 ; 2 uses
  %exitcond247.not.i.i.1 = icmp eq i64 %i.az, 2
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCs6t3BXPRE3GP_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_decode:bb.a
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !150, !noalias !151, !noundef !5 ; 7 uses
  %i.du = icmp eq i8 %i.dt, -1
  br i1 %i.du, label %._crit_edge, label %.outer.2.i.i

.outer.2.i.i:                                     ; preds = %.thread.i.i
  %i.dv = add nuw i64 %i.l, 3                     ; 2 uses
  %i.dw = icmp samesign eq i64 %i.dv, %3
  br i1 %i.dw, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.3.i.i

bb.ac:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.2.i.i
  %exitcond1856.i = icmp eq i64 %.sroa.8.0148.2.i.i, 0
  br i1 %exitcond1856.i, label %.loopexit211.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dx = icmp eq ptr %i.dn, %i.ao
  br i1 %i.dx, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.2.i.i, !llvm.loop !80

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.3.i.i: ; preds = %.outer.2.i.i
  %.sroa.0.0116.ph160209.3.i.i = ptrtoaddr ptr %i.di to i64
  %i.dy = sub i64 %i.as, %.sroa.0.0116.ph160209.3.i.i ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 3 uses
  %i.ea = load i8, ptr %i.di, align 1, !alias.scope !144, !noalias !145, !noundef !5 ; 6 uses
  %i.eb = icmp eq i8 %i.ea, 61
  br i1 %i.eb, label %bb.ae, label %.thread306.i.i

bb.ae:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.3.i.i
  %i.ec = add nuw nsw i64 %i.l, 4
  %i.ed = icmp samesign eq i64 %i.ec, %3
  br i1 %i.ed, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.3.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.3.i.i: ; preds = %bb.ae, %bb.ag
  %.sroa.011.0151.3.i.i = phi i64 [ %i.en, %bb.ag ], [ 1, %bb.ae ] ; 2 uses
  %.sroa.0.0116149.3.i.i = phi ptr [ %i.ee, %bb.ag ], [ %i.dz, %bb.ae ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0116149.3.i.i, i64 1 ; 2 uses
  %i.ef = load i8, ptr %.sroa.0.0116149.3.i.i, align 1, !alias.scope !144, !noalias !145, !noundef !5
  %i.eg = icmp eq i8 %i.ef, 61
  br i1 %i.eg, label %bb.af, label %.loopexit1134.i

.thread306.i.i:                                   ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.3.i.i
  %i.eh = zext i8 %i.ea to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !150, !noalias !151, !noundef !5 ; 4 uses
  %i.ek = icmp eq i8 %i.ej, -1
  br i1 %i.ek, label %._crit_edge, label %.outer.3.i.i

.outer.3.i.i:                                     ; preds = %.thread306.i.i
  %i.el = add nuw i64 %i.l, 4                     ; 2 uses
  %i.em = icmp samesign eq i64 %i.el, %3
  br i1 %i.em, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.4.i.i

bb.af:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.3.i.i
  %exitcond1855.i = icmp eq i64 %.sroa.011.0151.3.i.i, -3
  br i1 %exitcond1855.i, label %.loopexit211.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.en = add nuw i64 %.sroa.011.0151.3.i.i, 1
  %i.eo = icmp eq ptr %i.ee, %i.ao
  br i1 %i.eo, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.3.i.i, !llvm.loop !80

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.4.i.i: ; preds = %.outer.3.i.i
  %.sroa.0.0116.ph160209.4.i.i = ptrtoaddr ptr %i.dz to i64
  %i.ep = sub i64 %i.as, %.sroa.0.0116.ph160209.4.i.i ; 2 uses
  %i.eq = load i8, ptr %i.dz, align 1, !alias.scope !144, !noalias !145, !noundef !5 ; 3 uses
  %i.er = icmp eq i8 %i.eq, 61
  br i1 %i.er, label %bb.ah, label %.thread318.i.i

bb.ah:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.4.i.i
  %i.es = add nuw nsw i64 %i.l, 5
  %i.et = icmp samesign eq i64 %i.es, %3
  br i1 %i.et, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i.preheader

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i.preheader: ; preds = %bb.ah
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ar, i64 5
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i: ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i.preheader, %bb.aj
  %.sroa.0.0116149.4.i.i = phi ptr [ %i.ev, %bb.aj ], [ %i.eu, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i.preheader ] ; 2 uses
  %.sroa.8.0148.4.in.i.i = phi i64 [ %.sroa.8.0148.4.i.i, %bb.aj ], [ 4, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i.preheader ] ; 2 uses
  %.sroa.8.0148.4.i.i = add i64 %.sroa.8.0148.4.in.i.i, 1
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.0116149.4.i.i, i64 1 ; 2 uses
  %i.ew = load i8, ptr %.sroa.0.0116149.4.i.i, align 1, !alias.scope !144, !noalias !145, !noundef !5
  %i.ex = icmp eq i8 %i.ew, 61
  br i1 %i.ex, label %bb.ai, label %.loopexit1134.i

.thread318.i.i:                                   ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.lr.ph.4.i.i
  %i.ey = zext i8 %i.eq to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !alias.scope !150, !noalias !151, !noundef !5
  %i.fb = icmp eq i8 %i.fa, -1
  br i1 %i.fb, label %._crit_edge, label %bb.ak

bb.ai:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i
  %exitcond = icmp eq i64 %.sroa.8.0148.4.in.i.i, -1
  br i1 %exitcond, label %.loopexit211.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fc = icmp eq ptr %i.ev, %i.ao
  br i1 %i.fc, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6t3BXPRE3GP_6base64.exit.4.i.i, !llvm.loop !80

bb.ak:                                            ; preds = %.thread318.i.i
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 4, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #19, !noalias !153
  unreachable

bb.al:                                            ; preds = %.lr.ph1132.i
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.am, i64 noundef %i.an, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19, !noalias !139
  unreachable

bb.am:                                            ; preds = %.lr.ph1132.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.am
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.fe = load i8, ptr %.sroa.0141.01130.i, align 1, !alias.scope !156, !noalias !157, !noundef !5 ; 2 uses
  %i.ff = zext i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !alias.scope !158, !noalias !159, !noundef !5 ; 2 uses
  %i.fi = icmp eq i8 %i.fh, -1
  br i1 %i.fi, label %.loopexit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0141.01130.i, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !alias.scope !156, !noalias !157, !noundef !5 ; 2 uses
  %i.fl = zext i8 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !alias.scope !158, !noalias !159, !noundef !5 ; 2 uses
  %i.fo = icmp eq i8 %i.fn, -1
  br i1 %i.fo, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fp = shl i64 %.sroa.13146.01128.i, 2
  %i.fq = add i64 %i.fp, %i.x
  %i.fr = or disjoint i64 %i.fq, 1
  br label %bb.at

bb.ap:                                            ; preds = %bb.an
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0141.01130.i, i64 2
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !156, !noalias !157, !noundef !5 ; 2 uses
  %i.fu = zext i8 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !158, !noalias !159, !noundef !5 ; 2 uses
  %i.fx = icmp eq i8 %i.fw, -1
  br i1 %i.fx, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fy = shl i64 %.sroa.13146.01128.i, 2
  %i.fz = add i64 %i.fy, %i.x
  %i.ga = or disjoint i64 %i.fz, 2
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0141.01130.i, i64 3
  %i.gc = load i8, ptr %i.gb, align 1, !alias.scope !156, !noalias !157, !noundef !5 ; 2 uses
  %i.gd = zext i8 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !alias.scope !158, !noalias !159, !noundef !5 ; 2 uses
  %i.gg = icmp eq i8 %i.gf, -1
  br i1 %i.gg, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.gh = shl i64 %.sroa.13146.01128.i, 2
  %i.gi = add i64 %i.gh, %i.x
  %i.gj = or disjoint i64 %i.gi, 3
  br label %bb.at

.loopexit.i:                                      ; preds = %bb.am
  %i.gk = shl i64 %.sroa.13146.01128.i, 2
  %i.gl = add i64 %i.gk, %i.x
  br label %bb.at

bb.at:                                            ; preds = %.loopexit.i, %bb.as, %bb.aq, %bb.ao
  %.sroa.14153.0.ph.i = phi i64 [ %i.fr, %bb.ao ], [ %i.gj, %bb.as ], [ %i.ga, %bb.aq ], [ %i.gl, %.loopexit.i ]
  %.sroa.10151.0.ph.i = phi i8 [ %i.fk, %bb.ao ], [ %i.gc, %bb.as ], [ %i.ft, %bb.aq ], [ %i.fe, %.loopexit.i ]
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.gm, align 8, !alias.scope !127, !noalias !138
  %.sroa.4269.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.10151.0.ph.i, ptr %.sroa.4269.0..sroa_idx.i, align 1, !alias.scope !127, !noalias !138
  %.sroa.6271.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.14153.0.ph.i, ptr %.sroa.6271.0..sroa_idx.i, align 8, !alias.scope !127, !noalias !138
  store i64 2, ptr %0, align 8, !alias.scope !127, !noalias !138
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

bb.au:                                            ; preds = %bb.ar
  %i.gn = zext i8 %i.fh to i32
  %i.go = shl i32 %i.gn, 26
  %i.gp = zext i8 %i.fn to i32
  %i.gq = shl nuw nsw i32 %i.gp, 20
  %i.gr = or i32 %i.gq, %i.go
  %i.gs = zext i8 %i.fw to i32
  %i.gt = shl nuw nsw i32 %i.gs, 14
  %i.gu = or i32 %i.gr, %i.gt
  %i.gv = zext i8 %i.gf to i32
  %i.gw = shl nuw nsw i32 %i.gv, 8
  %i.gx = or i32 %i.gu, %i.gw
  %i.gy = tail call i32 @llvm.bswap.i32(i32 %i.gx)
  %.sroa.0272.0.extract.trunc.i = trunc nuw i32 %i.gy to i24
  store i24 %.sroa.0272.0.extract.trunc.i, ptr %i.fd, align 1, !alias.scope !160, !noalias !161
  %.not.i.i103.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i103.i, label %._crit_edge1133.i, label %.lr.ph1132.i

bb.av:                                            ; preds = %.lr.ph.i
  %9 = mul nuw nsw i64 %8, 24
  %10 = add nuw i64 %9, 24
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.ab, i64 noundef %10, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #19, !noalias !139
  unreachable

bb.aw:                                            ; preds = %.lr.ph.i
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 %i.ab ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.ha = load i8, ptr %.sroa.0116.01119.i, align 1, !alias.scope !164, !noalias !165, !noundef !5 ; 2 uses
  %i.hb = zext i8 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !alias.scope !166, !noalias !167, !noundef !5 ; 2 uses
  %i.he = icmp eq i8 %i.hd, -1
  br i1 %i.he, label %.loopexit342.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 1
  %i.hg = load i8, ptr %i.hf, align 1, !alias.scope !164, !noalias !165, !noundef !5 ; 2 uses
  %i.hh = zext i8 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !alias.scope !166, !noalias !167, !noundef !5 ; 2 uses
  %i.hk = icmp eq i8 %i.hj, -1
  br i1 %i.hk, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 2
  %i.hm = load i8, ptr %i.hl, align 1, !alias.scope !164, !noalias !165, !noundef !5 ; 2 uses
  %i.hn = zext i8 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !alias.scope !166, !noalias !167, !noundef !5 ; 2 uses
  %i.hq = icmp eq i8 %i.hp, -1
  br i1 %i.hq, label %bb.bb, label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.hr = shl i64 %.sroa.13.01117.i, 5
  %i.hs = or disjoint i64 %i.hr, 1
  br label %bb.bl

bb.ba:                                            ; preds = %bb.ay
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 3
  %i.hu = load i8, ptr %i.ht, align 1, !alias.scope !164, !noalias !165, !noundef !5 ; 2 uses
  %i.hv = zext i8 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !alias.scope !166, !noalias !167, !noundef !5 ; 2 uses
  %i.hy = icmp eq i8 %i.hx, -1
  br i1 %i.hy, label %bb.bd, label %bb.bc

bb.bb:                                            ; preds = %bb.ay
  %i.hz = shl i64 %.sroa.13.01117.i, 5
  %i.ia = or disjoint i64 %i.hz, 2
  br label %bb.bl

bb.bc:                                            ; preds = %bb.ba
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 4
  %i.ic = load i8, ptr %i.ib, align 1, !alias.scope !164, !noalias !165, !noundef !5 ; 2 uses
  %i.id = zext i8 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !alias.scope !166, !noalias !167, !noundef !5 ; 2 uses
  %i.ig = icmp eq i8 %i.if, -1
  br i1 %i.ig, label %bb.bf, label %bb.be

bb.bd:                                            ; preds = %bb.ba
  %i.ih = shl i64 %.sroa.13.01117.i, 5
  %i.ii = or disjoint i64 %i.ih, 3
  br label %bb.bl

bb.be:                                            ; preds = %bb.bc
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 5
  %i.ik = load i8, ptr %i.ij, align 1, !alias.scope !164, !noalias !165, !noundef !5 ; 2 uses
  %i.il = zext i8 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1, !alias.scope !166, !noalias !167, !noundef !5 ; 2 uses
  %i.io = icmp eq i8 %i.in, -1
  br i1 %i.io, label %bb.bh, label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  %i.ip = shl i64 %.sroa.13.01117.i, 5
  %i.iq = or disjoint i64 %i.ip, 4
  br label %bb.bl

bb.bg:                                            ; preds = %bb.be
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 6
  %i.is = load i8, ptr %i.ir, align 1, !alias.scope !164, !noalias !165, !noundef !5 ; 2 uses
  %i.it = zext i8 %i.is to i64
  %i.iu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !alias.scope !166, !noalias !167, !noundef !5 ; 2 uses
  %i.iw = icmp eq i8 %i.iv, -1
  br i1 %i.iw, label %bb.bj, label %bb.bi

bb.bh:                                            ; preds = %bb.be
  %i.ix = shl i64 %.sroa.13.01117.i, 5
  %i.iy = or disjoint i64 %i.ix, 5
  br label %bb.bl

bb.bi:                                            ; preds = %bb.bg
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 7
  %i.ja = load i8, ptr %i.iz, align 1, !alias.scope !164, !noalias !165, !noundef !5 ; 2 uses
  %i.jb = zext i8 %i.ja to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jb
  %i.jd = load i8, ptr %i.jc, align 1, !alias.scope !166, !noalias !167, !noundef !5 ; 2 uses
  %i.je = icmp eq i8 %i.jd, -1
  br i1 %i.je, label %bb.bk, label %bb.bm

bb.bj:                                            ; preds = %bb.bg
  %i.jf = shl i64 %.sroa.13.01117.i, 5
  %i.jg = or disjoint i64 %i.jf, 6
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.jh = shl i64 %.sroa.13.01117.i, 5
  %i.ji = or disjoint i64 %i.jh, 7
  br label %bb.bl

.loopexit342.i:                                   ; preds = %bb.aw
  %i.jj = shl i64 %.sroa.13.01117.i, 5
  br label %bb.bl

bb.bl:                                            ; preds = %.loopexit342.i, %bb.bk, %bb.bj, %bb.bh, %bb.bf, %bb.bd, %bb.bb, %bb.az
  %.sroa.22123.0.ph.i = phi i64 [ %i.hs, %bb.az ], [ %i.ji, %bb.bk ], [ %i.jg, %bb.bj ], [ %i.iy, %bb.bh ], [ %i.iq, %bb.bf ], [ %i.ii, %bb.bd ], [ %i.ia, %bb.bb ], [ %i.jj, %.loopexit342.i ]
  %.sroa.14.0.ph.i = phi i8 [ %i.hg, %bb.az ], [ %i.ja, %bb.bk ], [ %i.is, %bb.bj ], [ %i.ik, %bb.bh ], [ %i.ic, %bb.bf ], [ %i.hu, %bb.bd ], [ %i.hm, %bb.bb ], [ %i.ha, %.loopexit342.i ]
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.jk, align 8, !alias.scope !127, !noalias !138
  %.sroa.4173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.14.0.ph.i, ptr %.sroa.4173.0..sroa_idx.i, align 1, !alias.scope !127, !noalias !138
  %.sroa.6175.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.22123.0.ph.i, ptr %.sroa.6175.0..sroa_idx.i, align 8, !alias.scope !127, !noalias !138
  store i64 2, ptr %0, align 8, !alias.scope !127, !noalias !138
  br label %_RNvNtNtNtCs6t3BXPRE3GP_6base646engine15general_purpose6decode13decode_helper.exit

bb.bm:                                            ; preds = %bb.bi
  %i.jl = zext i8 %i.hd to i64
  %i.jm = shl i64 %i.jl, 58
  %i.jn = zext i8 %i.hj to i64
  %i.jo = shl nuw nsw i64 %i.jn, 52
  %i.jp = or i64 %i.jo, %i.jm
  %i.jq = zext i8 %i.hp to i64
  %i.jr = shl nuw nsw i64 %i.jq, 46
  %i.js = or i64 %i.jp, %i.jr
  %i.jt = zext i8 %i.hx to i64
  %i.ju = shl nuw nsw i64 %i.jt, 40
  %i.jv = or i64 %i.js, %i.ju
  %i.jw = zext i8 %i.if to i64
  %i.jx = shl nuw nsw i64 %i.jw, 34
  %i.jy = or i64 %i.jv, %i.jx
  %i.jz = zext i8 %i.in to i64
  %i.ka = shl nuw nsw i64 %i.jz, 28
  %i.kb = or i64 %i.jy, %i.ka
  %i.kc = zext i8 %i.iv to i64
  %i.kd = shl nuw nsw i64 %i.kc, 22
  %i.ke = or i64 %i.kb, %i.kd
  %i.kf = zext i8 %i.jd to i64
  %i.kg = shl nuw nsw i64 %i.kf, 16
  %i.kh = or i64 %i.ke, %i.kg
  %i.ki = tail call i64 @llvm.bswap.i64(i64 %i.kh)
  %.sroa.0276.0.extract.trunc.i = trunc i64 %i.ki to i48
  store i48 %.sroa.0276.0.extract.trunc.i, ptr %i.gz, align 1, !alias.scope !168, !noalias !169
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.gz, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.kl = load i8, ptr %i.kj, align 1, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
  %i.km = zext i8 %i.kl to i64
  %i.kn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.km
  %i.ko = load i8, ptr %i.kn, align 1, !alias.scope !174, !noalias !175, !noundef !5 ; 2 uses
  %i.kp = icmp eq i8 %i.ko, -1
  br i1 %i.kp, label %.loopexit343.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 9
  %i.kr = load i8, ptr %i.kq, align 1, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
  %i.ks = zext i8 %i.kr to i64
  %i.kt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ks
  %i.ku = load i8, ptr %i.kt, align 1, !alias.scope !174, !noalias !175, !noundef !5 ; 2 uses
  %i.kv = icmp eq i8 %i.ku, -1
  br i1 %i.kv, label %.loopexit343.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 10
  %i.kx = load i8, ptr %i.kw, align 1, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
  %i.ky = zext i8 %i.kx to i64
  %i.kz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ky
  %i.la = load i8, ptr %i.kz, align 1, !alias.scope !174, !noalias !175, !noundef !5 ; 2 uses
  %i.lb = icmp eq i8 %i.la, -1
  br i1 %i.lb, label %.loopexit343.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 11
  %i.ld = load i8, ptr %i.lc, align 1, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
  %i.le = zext i8 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1, !alias.scope !174, !noalias !175, !noundef !5 ; 2 uses
  %i.lh = icmp eq i8 %i.lg, -1
  br i1 %i.lh, label %.loopexit343.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.0116.01119.i, i64 12
  %i.lj = load i8, ptr %i.li, align 1, !alias.scope !172, !noalias !173, !noundef !5 ; 2 uses
  %i.lk = zext i8 %i.lj to i64
  %i.ll = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1, !alias.scope !174, !noalias !175, !noundef !5 ; 2 uses
  %i.ln = icmp eq i8 %i.lm, -1
  br i1 %i.ln, label %.loopexit343.i, label %bb.br
end_hunk_1
