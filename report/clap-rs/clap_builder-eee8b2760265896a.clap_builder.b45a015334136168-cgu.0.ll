Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/clap_builder-eee8b2760265896a.clap_builder.b45a015334136168-cgu.0?download=true
inline.NumInlined: 5218
inline.NumDeleted: 2692
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RINvMs0_NtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_onehEBc_:bb.a
  br i1 %i.w, label %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i14.i) ]
  %.idx.i.i.i.i = mul nuw nsw i64 %.val1.i.i, 24
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i14.i, i64 %.idx.i.i.i.i
  %i.y = icmp eq i64 %.val1.i.i, 0
  br i1 %i.y, label %.loopexit27, label %.lr.ph.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %i.z = icmp eq ptr %i.ab, %i.x
  br i1 %i.z, label %.loopexit27, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %.loopexit.i.i.i.i.i.i.i
  %i.aa = phi ptr [ %i.ab, %.loopexit.i.i.i.i.i.i.i ], [ %.val.i14.i, %bb.e ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  %.val4.i.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !noalias !287, !nonnull !11, !noundef !11 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.aa, i64 16
  %.val5.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !noalias !287, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %.val5.i.i.i.i.i.i.i, 5
  %i.ae = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i.i.i, i64 %.idx
  %i.af = icmp eq i64 %.val5.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.ae
  br i1 %i.ah, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
  %i.ai = phi ptr [ %i.ag, %bb.f ], [ %.val4.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  %.val3.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.aj, align 8, !alias.scope !288, !noalias !289 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i128 %.val3.i.i.i.i.i.i.i.i.i.i, -64211143891970825072924515826960835547
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %.loopexit

_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id.exit.i: ; preds = %bb.d
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5.0.copyload.i.i = load i128, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !290, !noalias !282 ; 3 uses
  %i.ak = icmp eq i128 %.sroa.5.0.copyload.i.i, -64211143891970825072924515826960835547
  %extract.t = trunc i128 %.sroa.5.0.copyload.i.i to i64
  %extract = lshr i128 %.sroa.5.0.copyload.i.i, 64
  %extract.t24 = trunc nuw i128 %extract to i64
  br i1 %i.ak, label %.loopexit27, label %bb.g

.loopexit:                                        ; preds = %.lr.ph
  %extract.t23.le = trunc i128 %.val3.i.i.i.i.i.i.i.i.i.i to i64
  %extract25.le = lshr i128 %.val3.i.i.i.i.i.i.i.i.i.i, 64
  %extract.t26.le = trunc nuw i128 %extract25.le to i64
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id.exit.i
  %.sroa.0.023.i.off0 = phi i64 [ %extract.t, %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id.exit.i ], [ %extract.t23.le, %.loopexit ]
  %.sroa.0.023.i.off64 = phi i64 [ %extract.t24, %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id.exit.i ], [ %extract.t26.le, %.loopexit ]
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.023.i.off0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.023.i.off64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i128 -64211143891970825072924515826960835547, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.k

.loopexit27:                                      ; preds = %.loopexit.i.i.i.i.i.i.i, %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id.exit.i, %bb.e
  %.idx47 = mul nuw nsw i64 %.val1.i.i, 24
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i14.i, i64 %.idx47
  %i.am = icmp eq i64 %.val1.i.i, 0
  br i1 %i.am, label %.thread, label %.lr.ph46

select.unfold.i.i:                                ; preds = %.lr.ph46
  %i.an = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.al
  br i1 %i.ao, label %.thread, label %.lr.ph46

.lr.ph46:                                         ; preds = %.loopexit27, %select.unfold.i.i
  %i.ap = phi ptr [ %i.an, %select.unfold.i.i ], [ %.val.i14.i, %.loopexit27 ] ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  %.val4.i.i = load i64, ptr %i.aq, align 8, !noalias !291, !noundef !11
  %i.ar = icmp eq i64 %.val4.i.i, 0
  br i1 %i.ar, label %select.unfold.i.i, label %bb.h

.thread:                                          ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i, %select.unfold.i.i, %.loopexit27, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.as, align 8
  store i64 2, ptr %0, align 8
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph46
  %i.at = getelementptr i8, ptr %i.ap, i64 8
  %.val.i.le.i = load ptr, ptr %i.at, align 8, !noalias !291, !nonnull !11, !noundef !11 ; 2 uses
  %.val = load ptr, ptr %.val.i.le.i, align 8, !nonnull !11, !noundef !11
  %i.au = getelementptr i8, ptr %.val.i.le.i, i64 8
  %.val10 = load ptr, ptr %i.au, align 8, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !18, !invariant.load !11
  %i.ax = add nsw i64 %i.aw, -1
  %i.ay = and i64 %i.ax, -16
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bb = getelementptr inbounds nuw i8, ptr %.val10, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !11, !nonnull !11
  call void %i.bc(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.ba) #45, !inline_history !273
  %i.bd = load i128, ptr %i.a, align 16, !noundef !11
  %.not = icmp eq i128 %i.bd, -64211143891970825072924515826960835547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not, label %bb.i, label %bb.j, !prof !16

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.be, align 8
  store i64 2, ptr %0, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #44
  unreachable

bb.k:                                             ; preds = %bb.g, %.thread, %bb.i
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs3_NtCs4wP2HXfJTCR_5alloc3stre7replaceReECsfu0rQaTkGUu_12clap_builder(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit:
  %i.a = alloca [104 x i8], align 8               ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 8 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 15 uses
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsu_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 3) #43
  %.sroa.048.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.449.0.copyload = load i64, ptr %.sroa.449.0..sroa_idx, align 8
  %.fr63.i115 = freeze i64 %.sroa.449.0.copyload  ; 27 uses
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.651.0.copyload = load i64, ptr %.sroa.651.0..sroa_idx, align 8 ; 5 uses
  %.sroa.752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.752.0.copyload = load i64, ptr %.sroa.752.0..sroa_idx, align 8 ; 3 uses
  %.sroa.853.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.853.0.copyload = load i64, ptr %.sroa.853.0..sroa_idx, align 8
  %.sroa.1055.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.1055.0.copyload = load i64, ptr %.sroa.1055.0..sroa_idx, align 8
  %.sroa.1257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.1257.0.copyload = load ptr, ptr %.sroa.1257.0..sroa_idx, align 8 ; 19 uses
  %.sroa.1358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.1358.0.copyload = load i64, ptr %.sroa.1358.0..sroa_idx, align 8 ; 38 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8 ; 6 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8 ; 15 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = trunc nuw i64 %.sroa.048.0.copyload to i1
  %i.d = add nsw i64 %.sroa.15.0.copyload, -1     ; 4 uses
  br i1 %i.c, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.split.us, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.split

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.split.us: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1257.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload) ]
  %i.e = sub i64 %.sroa.15.0.copyload, %.sroa.651.0.copyload
  %i.f = add i64 %.fr63.i115, -1                  ; 2 uses
  %umax.i.i.us = tail call i64 @llvm.umax.i64(i64 %.fr63.i115, i64 range(i64 0, -9223372036854775808) %.sroa.15.0.copyload) ; 2 uses
  %.first_iter.i9.i.us = icmp ult i64 %i.f, %.sroa.15.0.copyload
  %i.g = sub i64 1, %.fr63.i115                   ; 2 uses
  %.not34.i.i.us = icmp eq i64 %.fr63.i115, 0
  %invariant.op = sub i64 1, %.fr63.i115
  %exitcond.not.i.i.us35.not = icmp ult i64 %.fr63.i115, %.sroa.15.0.copyload
  %exitcond.not.i.us.i.us40.not = icmp ult i64 %.fr63.i115, %.sroa.15.0.copyload
  %.not34.i.us.us.i.us43 = icmp eq i64 %.fr63.i115, 0
  br label %bb.a

bb.a:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit25.us, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.split.us
  %i.h = phi ptr [ inttoptr (i64 1 to ptr), %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.split.us ], [ %i.db, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit25.us ] ; 2 uses
  %i.i = phi i64 [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.split.us ], [ %i.de, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit25.us ] ; 10 uses
  %.sroa.2713.0.us = phi i64 [ %.sroa.1055.0.copyload, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.split.us ], [ %.sroa.2713.2.us, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit25.us ] ; 2 uses
  %.sroa.18.0.us = phi i64 [ %.sroa.853.0.copyload, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.split.us ], [ %.sroa.961.0.us, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit25.us ] ; 4 uses
  %.sroa.04.0.us = phi i64 [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.split.us ], [ %.sroa.961.0.us, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit25.us ] ; 8 uses
  %i.j = icmp eq i64 %.sroa.2713.0.us, -1
  %i.k = add i64 %.sroa.18.0.us, %i.d             ; 4 uses
  %i.l = icmp ult i64 %i.k, %.sroa.1358.0.copyload ; 2 uses
  br i1 %i.j, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  br i1 %i.l, label %.lr.ph.split.i.i.us, label %.loopexit

.lr.ph.split.i.i.us:                              ; preds = %bb.b, %bb.h
  %i.m = phi i64 [ %.sink.i4.i.us, %bb.h ], [ %.sroa.2713.0.us, %bb.b ] ; 3 uses
  %i.n = phi i64 [ %i.ap, %bb.h ], [ %i.k, %bb.b ]
  %i.o = phi i64 [ %i.ao, %bb.h ], [ %.sroa.18.0.us, %bb.b ] ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.1257.0.copyload, i64 %i.n
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !327, !noalias !329, !noundef !11
  %i.r = and i8 %i.q, 63
  %i.s = zext nneg i8 %i.r to i64
  %3 = lshr i64 %.sroa.752.0.copyload, %i.s
  %4 = trunc i64 %3 to i1
  br i1 %4, label %bb.c, label %5

5:                                                ; preds = %.lr.ph.split.i.i.us
  %6 = add i64 %i.o, %.sroa.15.0.copyload
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph.split.i.i.us
  %..i.i3.i.us = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %.fr63.i115) ; 2 uses
  %i.t = icmp ult i64 %..i.i3.i.us, %.sroa.15.0.copyload
  br i1 %i.t, label %.lr.ph, label %.preheader36.i.i.us.preheader

bb.d:                                             ; preds = %.lr.ph
  %i.u = add nuw nsw i64 %.sroa.04.0.i.i.us31, 1  ; 2 uses
  %i.v = icmp ult i64 %i.u, %.sroa.15.0.copyload
  br i1 %i.v, label %.lr.ph, label %.preheader36.i.i.us.preheader

.preheader36.i.i.us.preheader:                    ; preds = %bb.d, %bb.c
  %i.w = icmp ult i64 %i.m, %.fr63.i115
  br i1 %i.w, label %.lr.ph33, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.us

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.04.0.i.i.us31 = phi i64 [ %i.u, %bb.d ], [ %..i.i3.i.us, %bb.c ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.04.0.i.i.us31
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !328, !noalias !330, !noundef !11
  %i.z = add i64 %.sroa.04.0.i.i.us31, %i.o       ; 2 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.1358.0.copyload
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.1257.0.copyload, i64 %i.z
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !327, !noalias !329, !noundef !11
  %.not21.i.i.us = icmp eq i8 %i.y, %i.ac
  br i1 %.not21.i.i.us, label %bb.d, label %bb.g

.preheader36.i.i.us:                              ; preds = %bb.e
  %i.ad = icmp ult i64 %i.m, %i.ae
  br i1 %i.ad, label %.lr.ph33, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.us

.lr.ph33:                                         ; preds = %.preheader36.i.i.us.preheader, %.preheader36.i.i.us
  %.sroa.2.0.i.i.us32 = phi i64 [ %i.ae, %.preheader36.i.i.us ], [ %.fr63.i115, %.preheader36.i.i.us.preheader ]
  %i.ae = add i64 %.sroa.2.0.i.i.us32, -1         ; 6 uses
  %i.af = icmp ult i64 %i.ae, %.sroa.15.0.copyload
  br i1 %i.af, label %bb.e, label %.split32.us.i.i

bb.e:                                             ; preds = %.lr.ph33
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.ae
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !328, !noalias !330, !noundef !11
  %i.ai = add i64 %i.ae, %i.o                     ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %.sroa.1358.0.copyload
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.1257.0.copyload, i64 %i.ai
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !327, !noalias !329, !noundef !11
  %.not20.i.i.us = icmp eq i8 %i.ah, %i.al
  br i1 %.not20.i.i.us, label %.preheader36.i.i.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = add i64 %i.o, %.sroa.651.0.copyload
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %.reass.i.us.reass.reass = add i64 %i.o, %invariant.op
  %i.an = add i64 %.reass.i.us.reass.reass, %.sroa.04.0.i.i.us31
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %5
  %.sink.i4.i.us = phi i64 [ 0, %bb.g ], [ %i.e, %bb.f ], [ 0, %5 ]
  %i.ao = phi i64 [ %i.an, %bb.g ], [ %i.am, %bb.f ], [ %6, %5 ] ; 2 uses
  %i.ap = add i64 %i.ao, %i.d                     ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %.sroa.1358.0.copyload
  br i1 %i.aq, label %.lr.ph.split.i.i.us, label %.loopexit

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  br i1 %i.l, label %.lr.ph.i8.i.us, label %.loopexit

.lr.ph.i8.i.us:                                   ; preds = %bb.i
  br i1 %.first_iter.i9.i.us, label %.lr.ph.split.us.i.us.i.us, label %.lr.ph.split.us.i.i.us

.lr.ph.split.us.i.i.us:                           ; preds = %.lr.ph.i8.i.us, %bb.k
  %i.ar = phi i64 [ %i.bh, %bb.k ], [ %i.k, %.lr.ph.i8.i.us ]
  %i.as = phi i64 [ %i.bg, %bb.k ], [ %.sroa.18.0.us, %.lr.ph.i8.i.us ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.1257.0.copyload, i64 %i.ar
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !331, !noalias !333, !noundef !11
  %i.av = and i8 %i.au, 63
  %i.aw = zext nneg i8 %i.av to i64
  %7 = lshr i64 %.sroa.752.0.copyload, %i.aw
  %8 = trunc i64 %7 to i1
  br i1 %8, label %.preheader35.i.i.us.preheader, label %9

.preheader35.i.i.us.preheader:                    ; preds = %.lr.ph.split.us.i.i.us
  br i1 %exitcond.not.i.i.us35.not, label %.lr.ph37, label %.preheader.i10.i.us

9:                                                ; preds = %.lr.ph.split.us.i.i.us
  %10 = add i64 %i.as, %.sroa.15.0.copyload
  br label %bb.k

.preheader35.i.i.us:                              ; preds = %.lr.ph37
  %i.ax = add i64 %.sroa.04.0.us.i.i.us36, 1      ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.ax, %umax.i.i.us
  br i1 %exitcond.not.i.i.us, label %.preheader.i10.i.us, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader35.i.i.us.preheader, %.preheader35.i.i.us
  %.sroa.04.0.us.i.i.us36 = phi i64 [ %i.ax, %.preheader35.i.i.us ], [ %.fr63.i115, %.preheader35.i.i.us.preheader ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.04.0.us.i.i.us36
  %i.az = load i8, ptr %i.ay, align 1, !alias.scope !332, !noalias !334, !noundef !11
  %i.ba = add i64 %.sroa.04.0.us.i.i.us36, %i.as  ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %.sroa.1358.0.copyload
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.1257.0.copyload, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !331, !noalias !333, !noundef !11
  %.not21.us.i.i.us = icmp eq i8 %i.az, %i.bd
  br i1 %.not21.us.i.i.us, label %.preheader35.i.i.us, label %bb.j

bb.j:                                             ; preds = %.lr.ph37
  %i.be = add i64 %i.as, %i.g
  %i.bf = add i64 %i.be, %.sroa.04.0.us.i.i.us36
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %9
  %i.bg = phi i64 [ %i.bf, %bb.j ], [ %10, %9 ]   ; 2 uses
  %i.bh = add i64 %i.bg, %i.d                     ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %.sroa.1358.0.copyload
  br i1 %i.bi, label %.lr.ph.split.us.i.i.us, label %.loopexit

.preheader.i10.i.us:                              ; preds = %.preheader35.i.i.us.preheader, %.preheader35.i.i.us
  br i1 %.not34.i.i.us, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.us, label %.split32.us.i11.i

.lr.ph.split.us.i.us.i.us:                        ; preds = %.lr.ph.i8.i.us, %bb.n
  %i.bj = phi i64 [ %i.ch, %bb.n ], [ %i.k, %.lr.ph.i8.i.us ]
  %i.bk = phi i64 [ %i.cg, %bb.n ], [ %.sroa.18.0.us, %.lr.ph.i8.i.us ] ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.1257.0.copyload, i64 %i.bj
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !331, !noalias !333, !noundef !11
  %i.bn = and i8 %i.bm, 63
  %i.bo = zext nneg i8 %i.bn to i64
  %11 = lshr i64 %.sroa.752.0.copyload, %i.bo
  %12 = trunc i64 %11 to i1
  br i1 %12, label %.preheader35.i.us.i.us.preheader, label %13

.preheader35.i.us.i.us.preheader:                 ; preds = %.lr.ph.split.us.i.us.i.us
  br i1 %exitcond.not.i.us.i.us40.not, label %.lr.ph42, label %.preheader.i10.us.us.i.us.preheader

13:                                               ; preds = %.lr.ph.split.us.i.us.i.us
  %14 = add i64 %i.bk, %.sroa.15.0.copyload
  br label %bb.n

.preheader35.i.us.i.us:                           ; preds = %.lr.ph42
  %i.bp = add i64 %.sroa.04.0.us.i.us.i.us41, 1   ; 2 uses
  %exitcond.not.i.us.i.us = icmp eq i64 %i.bp, %umax.i.i.us
  br i1 %exitcond.not.i.us.i.us, label %.preheader.i10.us.us.i.us.preheader, label %.lr.ph42

.preheader.i10.us.us.i.us.preheader:              ; preds = %.preheader35.i.us.i.us, %.preheader35.i.us.i.us.preheader
  br i1 %.not34.i.us.us.i.us43, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.us, label %.lr.ph45

.lr.ph42:                                         ; preds = %.preheader35.i.us.i.us.preheader, %.preheader35.i.us.i.us
  %.sroa.04.0.us.i.us.i.us41 = phi i64 [ %i.bp, %.preheader35.i.us.i.us ], [ %.fr63.i115, %.preheader35.i.us.i.us.preheader ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.04.0.us.i.us.i.us41
  %i.br = load i8, ptr %i.bq, align 1, !alias.scope !332, !noalias !334, !noundef !11
  %i.bs = add i64 %.sroa.04.0.us.i.us.i.us41, %i.bk ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %.sroa.1358.0.copyload
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.1257.0.copyload, i64 %i.bs
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !331, !noalias !333, !noundef !11
  %.not21.us.i.us.i.us = icmp eq i8 %i.br, %i.bv
  br i1 %.not21.us.i.us.i.us, label %.preheader35.i.us.i.us, label %bb.l

bb.l:                                             ; preds = %.lr.ph42
  %i.bw = add i64 %i.bk, %i.g
  %i.bx = add i64 %i.bw, %.sroa.04.0.us.i.us.i.us41
  br label %bb.n

.preheader.i10.us.us.i.us:                        ; preds = %.lr.ph45
  %.not34.i.us.us.i.us = icmp eq i64 %i.by, 0
  br i1 %.not34.i.us.us.i.us, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.us, label %.lr.ph45

.lr.ph45:                                         ; preds = %.preheader.i10.us.us.i.us.preheader, %.preheader.i10.us.us.i.us
  %.sroa.2.0.us.i.us.us.i.us44 = phi i64 [ %i.by, %.preheader.i10.us.us.i.us ], [ %.fr63.i115, %.preheader.i10.us.us.i.us.preheader ]
  %i.by = add i64 %.sroa.2.0.us.i.us.us.i.us44, -1 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !332, !noalias !334, !noundef !11
  %i.cb = add i64 %i.by, %i.bk                    ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %.sroa.1358.0.copyload
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.1257.0.copyload, i64 %i.cb
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !331, !noalias !333, !noundef !11
  %.not20.us.i.us.us.i.us = icmp eq i8 %i.ca, %i.ce
  br i1 %.not20.us.i.us.us.i.us, label %.preheader.i10.us.us.i.us, label %bb.m

bb.m:                                             ; preds = %.lr.ph45
  %i.cf = add i64 %.sroa.651.0.copyload, %i.bk
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %13
  %i.cg = phi i64 [ %i.bx, %bb.l ], [ %14, %13 ], [ %i.cf, %bb.m ] ; 2 uses
  %i.ch = add i64 %i.cg, %i.d                     ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %.sroa.1358.0.copyload
  br i1 %i.ci, label %.lr.ph.split.us.i.us.i.us, label %.loopexit

_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.us: ; preds = %.preheader36.i.i.us.preheader, %.preheader.i10.us.us.i.us.preheader, %.preheader36.i.i.us, %.preheader.i10.us.us.i.us, %.preheader.i10.i.us
  %.sroa.560.0.us = phi i64 [ %i.bk, %.preheader.i10.us.us.i.us ], [ %i.as, %.preheader.i10.i.us ], [ %i.o, %.preheader36.i.i.us ], [ %i.bk, %.preheader.i10.us.us.i.us.preheader ], [ %i.o, %.preheader36.i.i.us.preheader ] ; 3 uses
  %.sroa.2713.2.us = phi i64 [ -1, %.preheader.i10.us.us.i.us ], [ -1, %.preheader.i10.i.us ], [ 0, %.preheader36.i.i.us ], [ -1, %.preheader.i10.us.us.i.us.preheader ], [ 0, %.preheader36.i.i.us.preheader ]
  %.sroa.961.0.us = add i64 %.sroa.560.0.us, %.sroa.15.0.copyload ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0.us
  %gepdiff.us = sub nuw nsw i64 %.sroa.560.0.us, %.sroa.04.0.us ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.ck = load i64, ptr %i.b, align 8, !range !12, !alias.scope !336, !noundef !11 ; 3 uses
  %i.cl = sub i64 %i.ck, %i.i
  %i.cm = icmp ugt i64 %gepdiff.us, %i.cl
  br i1 %i.cm, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.us, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.us, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.us: ; preds = %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.us
  %i.cn = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.cn)
  %.not.i.us = icmp eq i64 %.sroa.560.0.us, %.sroa.04.0.us
  br i1 %.not.i.us, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit.us, label %bb.o

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.us: ; preds = %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.us
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.i, i64 noundef %gepdiff.us, i64 noundef 1, i64 noundef 1) #43
  %i.co = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !335, !noundef !11 ; 2 uses
  %i.cp = icmp sgt i64 %i.co, -1
  tail call void @llvm.assume(i1 %i.cp)
  %.pre156 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !335
  %.pre157.pre = load i64, ptr %i.b, align 8, !range !12, !alias.scope !337
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.us, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.us
  %.pre157 = phi i64 [ %.pre157.pre, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.us ], [ %i.ck, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.us ]
  %i.cq = phi ptr [ %.pre156, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.us ], [ %i.h, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.us ] ; 2 uses
  %i.cr = phi i64 [ %i.co, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.us ], [ %i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.us ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cr
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cs, ptr nonnull readonly align 1 %i.cj, i64 %gepdiff.us, i1 false), !noalias !335
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit.us

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit.us: ; preds = %bb.o, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.us
  %i.ct = phi ptr [ %i.cq, %bb.o ], [ %i.h, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.us ]
  %i.cu = phi i64 [ %.pre157, %bb.o ], [ %i.ck, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.us ] ; 2 uses
  %i.cv = phi i64 [ %i.cr, %bb.o ], [ %i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.us ]
  %i.cw = add i64 %i.cv, %gepdiff.us              ; 4 uses
  store i64 %i.cw, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !335
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.cx = icmp eq i64 %i.cu, %i.cw
  br i1 %i.cx, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i24.us, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i22.us, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i22.us: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit.us
  %i.cy = icmp sgt i64 %i.cw, -1
  tail call void @llvm.assume(i1 %i.cy)
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit25.us

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i24.us: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit.us
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.cu, i64 noundef 1, i64 noundef 1, i64 noundef 1) #43
  %i.cz = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !338, !noundef !11 ; 2 uses
  %i.da = icmp sgt i64 %i.cz, -1
  tail call void @llvm.assume(i1 %i.da)
  %.pre158 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !338
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit25.us

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit25.us: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i24.us, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i22.us
  %i.db = phi ptr [ %.pre158, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i24.us ], [ %i.ct, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i22.us ] ; 2 uses
  %i.dc = phi i64 [ %i.cz, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i24.us ], [ %i.cw, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i22.us ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc
  store i8 10, ptr %i.dd, align 1, !noalias !338
  %i.de = add nuw i64 %i.dc, 1                    ; 2 uses
  store i64 %i.de, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !338
  br label %bb.a

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.split: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit
  %i.df = and i64 %.sroa.651.0.copyload, 65536
  %.not = icmp eq i64 %i.df, 0
  br i1 %.not, label %.lr.ph.i.lr.ph, label %.loopexit

.lr.ph.i.lr.ph:                                   ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.split
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1257.0.copyload) ]
  %i.dg = trunc i64 %.sroa.651.0.copyload to i1   ; 2 uses
  %i.dh = icmp eq i64 %.fr63.i115, 0
  br i1 %i.dh, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.lr.ph
  %.not.i.i.i21.peel.peel = icmp ult i64 %.fr63.i115, %.sroa.1358.0.copyload
  br i1 %.not.i.i.i21.peel.peel, label %bb.q, label %.split.i.i.i.peel.peel

.split.i.i.i.peel.peel:                           ; preds = %bb.p
  %i.di = icmp eq i64 %.fr63.i115, %.sroa.1358.0.copyload
  br i1 %i.di, label %bb.r, label %.loopexit150

bb.q:                                             ; preds = %bb.p
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.1257.0.copyload, i64 %.fr63.i115
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !339, !noalias !340, !noundef !11
  %i.dl = icmp sgt i8 %i.dk, -65
  br i1 %i.dl, label %bb.r, label %.loopexit150

bb.r:                                             ; preds = %bb.q, %.split.i.i.i.peel.peel, %.lr.ph.i.lr.ph
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.1257.0.copyload, i64 %.fr63.i115 ; 4 uses
  %i.dn = icmp samesign eq i64 %.fr63.i115, %.sroa.1358.0.copyload
  br i1 %i.dn, label %.loopexit151.peel, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.do = load i8, ptr %i.dm, align 1, !noalias !341, !noundef !11 ; 5 uses
  %i.dp = icmp sgt i8 %i.do, -1
  br i1 %i.dp, label %bb.t, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.i.i.peel.peel

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.i.i.peel.peel: ; preds = %bb.s
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %i.dr = and i8 %i.do, 31
  %i.ds = zext nneg i8 %i.dr to i32               ; 3 uses
  %i.dt = add nuw nsw i64 %.fr63.i115, 1
  %i.du = icmp samesign ne i64 %i.dt, %.sroa.1358.0.copyload
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = load i8, ptr %i.dq, align 1, !noalias !341, !noundef !11
  %i.dw = shl nuw nsw i32 %i.ds, 6
  %i.dx = and i8 %i.dv, 63
  %i.dy = zext nneg i8 %i.dx to i32               ; 2 uses
  %i.dz = or disjoint i32 %i.dw, %i.dy
  %i.ea = icmp samesign ugt i8 %i.do, -33
  br i1 %i.ea, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.i.i.peel.peel, label %bb.u

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.i.i.peel.peel: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.i.i.peel.peel
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %i.ec = add nuw nsw i64 %.fr63.i115, 2
  %i.ed = icmp samesign ne i64 %i.ec, %.sroa.1358.0.copyload
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = load i8, ptr %i.eb, align 1, !noalias !341, !noundef !11
  %i.ef = shl nuw nsw i32 %i.dy, 6
  %i.eg = and i8 %i.ee, 63
  %i.eh = zext nneg i8 %i.eg to i32
  %i.ei = or disjoint i32 %i.ef, %i.eh            ; 2 uses
  %i.ej = shl nuw nsw i32 %i.ds, 12
  %i.ek = or disjoint i32 %i.ei, %i.ej
  %i.el = icmp samesign ugt i8 %i.do, -17
  br i1 %i.el, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.i.i.peel.peel, label %bb.u

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.i.i.peel.peel: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.i.i.peel.peel
  %i.em = getelementptr inbounds nuw i8, ptr %i.dm, i64 3
  %i.en = add nuw nsw i64 %.fr63.i115, 3
  %i.eo = icmp samesign ne i64 %i.en, %.sroa.1358.0.copyload
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = load i8, ptr %i.em, align 1, !noalias !341, !noundef !11
  %i.eq = shl nuw nsw i32 %i.ds, 18
  %i.er = and i32 %i.eq, 1835008
  %i.es = shl nuw nsw i32 %i.ei, 6
  %i.et = and i8 %i.ep, 63
  %i.eu = zext nneg i8 %i.et to i32
  %i.ev = or disjoint i32 %i.es, %i.eu
  %i.ew = or disjoint i32 %i.ev, %i.er
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ex = zext nneg i8 %i.do to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.i.i.peel.peel, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.i.i.peel.peel, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.i.i.peel.peel
  %.sroa.4.0.i.ph.i.i.peel.peel = phi i32 [ %i.ek, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.i.i.peel.peel ], [ %i.ew, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.i.i.peel.peel ], [ %i.dz, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.i.i.peel.peel ], [ %i.ex, %bb.t ]
  %.sroa.4.0.i.ph.i.i.peel.peel.fr = freeze i32 %.sroa.4.0.i.ph.i.i.peel.peel ; 4 uses
  %i.ey = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel.fr, 1114112
  tail call void @llvm.assume(i1 %i.ey)
  br i1 %i.dg, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.peel, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ez = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel.fr, 128
  br i1 %i.ez, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.peel, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fa = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel.fr, 2048
  br i1 %i.fa, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.peel, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fb = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel.fr, 65536
  %..i.i.peel.peel = select i1 %i.fb, i64 3, i64 4
  br label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.peel

_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.peel: ; preds = %bb.x, %bb.w, %bb.v
  %.sroa.01.0.i.i.peel.peel = phi i64 [ 2, %bb.w ], [ %..i.i.peel.peel, %bb.x ], [ 1, %bb.v ]
  %i.fc = add i64 %.sroa.01.0.i.i.peel.peel, %.fr63.i115 ; 15 uses
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.peel
  %.not.i.i.i21.peel85 = icmp ult i64 %i.fc, %.sroa.1358.0.copyload
  br i1 %.not.i.i.i21.peel85, label %bb.z, label %.split.i.i.i.peel86

.split.i.i.i.peel86:                              ; preds = %bb.y
  %i.fe = icmp eq i64 %i.fc, %.sroa.1358.0.copyload
  br i1 %i.fe, label %bb.aa, label %.loopexit150

bb.z:                                             ; preds = %bb.y
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.1257.0.copyload, i64 %i.fc
  %i.fg = load i8, ptr %i.ff, align 1, !alias.scope !339, !noalias !340, !noundef !11
  %i.fh = icmp sgt i8 %i.fg, -65
  br i1 %i.fh, label %bb.aa, label %.loopexit150

bb.aa:                                            ; preds = %bb.z, %.split.i.i.i.peel86, %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.peel
  %i.fi = icmp samesign eq i64 %i.fc, %.sroa.1358.0.copyload
  br i1 %i.fi, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.peel, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
end_hunk_0
begin_hunk_1_@_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser21parse_help_subcommandINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3r_7RawArgs9remaining0EEB9_:bb.a
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !400
  %i.ch = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @140, ptr noundef nonnull %i.a) #43, !noalias !400, !inline_history !23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !400
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage20write_usage_no_title(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, ptr noalias nofree noundef align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8trim_end(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #43, !noalias !402, !inline_history !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !400
  %i.ci = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error23unrecognized_subcommandB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %.sroa.06.056, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.h) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d

bb.r:                                             ; preds = %_RNCINvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB7_6Parser21parse_help_subcommandINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3t_7RawArgs9remaining0EE0Bb_.exit.thread
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !404
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RNCINvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB7_6Parser21parse_help_subcommandINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3t_7RawArgs9remaining0EE0Bb_.exit, %bb.r
  %i.cj = phi ptr [ %i.ar, %bb.r ], [ %i.aq, %_RNCINvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB7_6Parser21parse_help_subcommandINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3t_7RawArgs9remaining0EE0Bb_.exit ] ; 2 uses
  %i.ck = icmp eq ptr %i.m, %1
  br i1 %i.ck, label %._crit_edge, label %.lr.ph

bb.s:                                             ; preds = %_RNCINvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB7_6Parser21parse_help_subcommandINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3t_7RawArgs9remaining0EE0Bb_.exit.thread, %_RNCINvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB7_6Parser21parse_help_subcommandINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3t_7RawArgs9remaining0EE0Bb_.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #44
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_EB9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(600) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(600) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i:
  %.sroa.66.16.copyload = load ptr, ptr %2, align 8, !alias.scope !450 ; 2 uses
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.8.16.copyload = load i64, ptr %.sroa.8.16..sroa_idx, align 8, !alias.scope !450
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !451
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #43, !noalias !451 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.a, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterB10_.exit

bb.a:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #46, !noalias !452
  unreachable

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterB10_.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.66.16.copyload) ]
  store ptr %.sroa.66.16.copyload, ptr %i.a, align 8, !noalias !453
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.8.16.copyload, ptr %i.c, align 8, !noalias !454
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %.val.i = load i64, ptr %i.d, align 8, !range !12, !alias.scope !455, !noundef !11 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit, label %bb.b

bb.b:                                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterB10_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !455, !nonnull !11, !noundef !11
  %i.g = shl nuw i64 %.val.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !455
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit: ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterB10_.exit, %bb.b
  store i64 1, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 352
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(600) %1, i64 600, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs4wP2HXfJTCR_5alloc3str17join_generic_copyehNtNtB4_6string6StringECsfu0rQaTkGUu_12clap_builder(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.idx = mul nuw nsw i64 %2, 24                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 7 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.e = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !11, !noundef !11
  %i.f = getelementptr i8, ptr %1, i64 16
  %.val80 = load i64, ptr %i.f, align 8, !noundef !11 ; 6 uses
  %gepdiff = add nsw i64 %.idx, -24
  %i.g = udiv exact i64 %gepdiff, 24
  %i.h = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %i.g) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  %i.j = extractvalue { i64, i1 } %i.h, 0         ; 2 uses
  %i.k = add i64 %.val80, %i.j                    ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.j
  %or.cond = or i1 %i.i, %i.l
  br i1 %or.cond, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECsfu0rQaTkGUu_12clap_builder.exit, label %.preheader217.preheader, !prof !24

.preheader217.preheader:                          ; preds = %bb.b
  %i.m = icmp eq i64 %2, 1
  br i1 %i.m, label %.preheader217._crit_edge, label %.lr.ph308

.preheader217:                                    ; preds = %.lr.ph308
  %i.n = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %.preheader217._crit_edge, label %.lr.ph308

.lr.ph308:                                        ; preds = %.preheader217.preheader, %.preheader217
  %.sroa.01.0.i307 = phi i64 [ %i.r, %.preheader217 ], [ %i.k, %.preheader217.preheader ] ; 2 uses
  %i.p = phi ptr [ %i.n, %.preheader217 ], [ %i.d, %.preheader217.preheader ] ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %.val8.i = load i64, ptr %i.q, align 8, !noalias !530, !noundef !11
  %i.r = add i64 %.val8.i, %.sroa.01.0.i307       ; 3 uses
  %i.s = icmp ult i64 %i.r, %.sroa.01.0.i307
  br i1 %i.s, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECsfu0rQaTkGUu_12clap_builder.exit, label %.preheader217

.preheader217._crit_edge:                         ; preds = %.preheader217, %.preheader217.preheader
  %.sroa.01.0.i.lcssa = phi i64 [ %i.k, %.preheader217.preheader ], [ %i.r, %.preheader217 ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i.i = icmp slt i64 %.sroa.01.0.i.lcssa, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !21

bb.c:                                             ; preds = %.preheader217._crit_edge
  %i.t = icmp eq i64 %.sroa.01.0.i.lcssa, 0
  br i1 %i.t, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !531
  %i.u = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.01.0.i.lcssa, i64 noundef range(i64 1, 9) 1) #43, !noalias !531 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit

bb.d:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i, %.preheader217._crit_edge
  %.sroa.4.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %.preheader217._crit_edge ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.01.0.i.lcssa) #46
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.c ], [ %i.u, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i ] ; 3 uses
  store i64 %.sroa.01.0.i.lcssa, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.x, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %i.y = icmp ugt i64 %.val80, %.sroa.01.0.i.lcssa
  br i1 %i.y, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %.val80, i64 noundef 1, i64 noundef 1) #43
  %i.z = load i64, ptr %i.x, align 8, !alias.scope !534, !noundef !11 ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1
  tail call void @llvm.assume(i1 %i.aa)
  %.pre = load ptr, ptr %i.w, align 8, !alias.scope !534
  br label %bb.e

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit
  %.not.i.i81 = icmp samesign eq i64 %.val80, 0
  br i1 %.not.i.i81, label %_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCsfu0rQaTkGUu_12clap_builder.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i
  %i.ab = phi ptr [ %.pre, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i ], [ %.sroa.10.0.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i ] ; 2 uses
  %i.ac = phi i64 [ %i.z, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i ], [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull readonly align 1 %.val, i64 %.val80, i1 false), !noalias !534
  br label %_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCsfu0rQaTkGUu_12clap_builder.exit

_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i, %bb.e
  %i.ae = phi ptr [ %i.ab, %bb.e ], [ %.sroa.10.0.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i ]
  %i.af = phi i64 [ %i.ac, %bb.e ], [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i ]
  %i.ag = add i64 %i.af, %.val80                  ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag ; 8 uses
  %i.aj = sub nsw i64 %.sroa.01.0.i.lcssa, %i.ag  ; 14 uses
  %i.ak = icmp eq i64 %2, 1                       ; 6 uses
  switch i64 %4, label %.preheader [
    i64 0, label %.preheader207
    i64 1, label %.preheader209
    i64 2, label %.preheader211
    i64 3, label %.preheader213
    i64 4, label %.preheader215
  ]

.preheader215:                                    ; preds = %_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCsfu0rQaTkGUu_12clap_builder.exit
  br i1 %i.ak, label %.loopexit, label %.lr.ph

.preheader213:                                    ; preds = %_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCsfu0rQaTkGUu_12clap_builder.exit
  br i1 %i.ak, label %.loopexit, label %.lr.ph236

.preheader211:                                    ; preds = %_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCsfu0rQaTkGUu_12clap_builder.exit
  br i1 %i.ak, label %.loopexit, label %.lr.ph241

.preheader209:                                    ; preds = %_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCsfu0rQaTkGUu_12clap_builder.exit
  br i1 %i.ak, label %.loopexit, label %.lr.ph246

.preheader207:                                    ; preds = %_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCsfu0rQaTkGUu_12clap_builder.exit
  br i1 %i.ak, label %.loopexit, label %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit.preheader

_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit.preheader: ; preds = %.preheader207
  %5 = trunc i64 %2 to i1
  br i1 %5, label %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit.prol.loopexit, label %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit.prol

_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit.prol: ; preds = %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit.preheader
  %i.al = getelementptr i8, ptr %1, i64 40
  %.sroa.012.0.val79.prol = load i64, ptr %i.al, align 8, !noundef !11 ; 4 uses
  %.not.i82.prol = icmp ugt i64 %.sroa.012.0.val79.prol, %i.aj
  br i1 %.not.i82.prol, label %.loopexit321, label %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit87.prol, !prof !19

_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit87.prol: ; preds = %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit.prol
  %i.am = getelementptr i8, ptr %1, i64 32
  %.sroa.012.0.val.prol = load ptr, ptr %i.am, align 8, !nonnull !11, !noundef !11
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.012.0.val79.prol
  %i.ap = sub nuw nsw i64 %i.aj, %.sroa.012.0.val79.prol ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr nonnull readonly align 1 %.sroa.012.0.val.prol, i64 range(i64 0, -9223372036854775808) %.sroa.012.0.val79.prol, i1 false), !alias.scope !535
  br label %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit.prol.loopexit

_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit.prol.loopexit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit87.prol, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit.preheader
  %.lcssa310.unr = phi i64 [ poison, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit.preheader ], [ %i.ap, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit87.prol ]
  %.sroa.012.0250.unr = phi ptr [ %i.d, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit.preheader ], [ %i.an, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit87.prol ]
  %.sroa.035.0249.unr = phi ptr [ %i.ai, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit.preheader ], [ %i.ao, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit87.prol ]
  %.sroa.26.0248.unr = phi i64 [ %i.aj, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit.preheader ], [ %i.ap, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit87.prol ]
  %i.aq = icmp eq i64 %2, 2
  br i1 %i.aq, label %.loopexit, label %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit

.preheader:                                       ; preds = %_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCsfu0rQaTkGUu_12clap_builder.exit
  br i1 %i.ak, label %.loopexit, label %.lr.ph255

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %.lr.ph308, %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #44
  unreachable

_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit.prol.loopexit, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit87.1
  %.sroa.012.0250 = phi ptr [ %i.ax, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit87.1 ], [ %.sroa.012.0250.unr, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit.prol.loopexit ] ; 5 uses
  %.sroa.035.0249 = phi ptr [ %i.ay, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit87.1 ], [ %.sroa.035.0249.unr, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit.prol.loopexit ] ; 2 uses
  %.sroa.26.0248 = phi i64 [ %i.az, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit87.1 ], [ %.sroa.26.0248.unr, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit.prol.loopexit ] ; 2 uses
  %i.ar = getelementptr i8, ptr %.sroa.012.0250, i64 16
  %.sroa.012.0.val79 = load i64, ptr %i.ar, align 8, !noundef !11 ; 4 uses
  %.not.i82 = icmp ugt i64 %.sroa.012.0.val79, %.sroa.26.0248
  br i1 %.not.i82, label %.loopexit321, label %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit87, !prof !19

.loopexit321:                                     ; preds = %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit87, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit.prol
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @105, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44, !noalias !536
  unreachable

_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit87: ; preds = %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit
  %i.as = getelementptr i8, ptr %.sroa.012.0250, i64 8
  %.sroa.012.0.val = load ptr, ptr %i.as, align 8, !nonnull !11, !noundef !11
  %i.at = sub nuw nsw i64 %.sroa.26.0248, %.sroa.012.0.val79 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.035.0249, ptr nonnull readonly align 1 %.sroa.012.0.val, i64 range(i64 0, -9223372036854775808) %.sroa.012.0.val79, i1 false), !alias.scope !535
  %i.au = getelementptr i8, ptr %.sroa.012.0250, i64 40
  %.sroa.012.0.val79.1 = load i64, ptr %i.au, align 8, !noundef !11 ; 4 uses
  %.not.i82.1 = icmp ugt i64 %.sroa.012.0.val79.1, %i.at
  br i1 %.not.i82.1, label %.loopexit321, label %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit87.1, !prof !19

_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit87.1: ; preds = %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit87
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.035.0249, i64 %.sroa.012.0.val79 ; 2 uses
  %i.aw = getelementptr i8, ptr %.sroa.012.0250, i64 32
  %.sroa.012.0.val.1 = load ptr, ptr %i.aw, align 8, !nonnull !11, !noundef !11
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.012.0250, i64 48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.012.0.val79.1
  %i.az = sub nuw nsw i64 %i.at, %.sroa.012.0.val79.1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr nonnull readonly align 1 %.sroa.012.0.val.1, i64 range(i64 0, -9223372036854775808) %.sroa.012.0.val79.1, i1 false), !alias.scope !535
  %i.ba = icmp eq ptr %i.ax, %i.b
  br i1 %i.ba, label %.loopexit, label %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit

.loopexit:                                        ; preds = %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit143, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit129, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit115, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit101, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit.prol.loopexit, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit87.1, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit157, %.preheader215, %.preheader213, %.preheader211, %.preheader209, %.preheader207, %.preheader
  %.sroa.26.1 = phi i64 [ %i.cr, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit157 ], [ %i.ca, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit129 ], [ %i.az, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit87.1 ], [ %i.bj, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit101 ], [ %i.bs, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit115 ], [ %i.aj, %.preheader ], [ %i.aj, %.preheader207 ], [ %i.aj, %.preheader209 ], [ %i.aj, %.preheader211 ], [ %i.aj, %.preheader213 ], [ %i.aj, %.preheader215 ], [ %.lcssa310.unr, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit.prol.loopexit ], [ %i.cj, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit143 ]
  %i.bb = sub i64 %.sroa.01.0.i.lcssa, %.sroa.26.1
  store i64 %i.bb, ptr %i.x, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

.lr.ph246:                                        ; preds = %.preheader209, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit101
  %.sroa.012.1245 = phi ptr [ %i.bc, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit101 ], [ %i.d, %.preheader209 ] ; 3 uses
  %.sroa.035.2244 = phi ptr [ %i.bi, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit101 ], [ %i.ai, %.preheader209 ] ; 2 uses
  %.sroa.26.2243 = phi i64 [ %i.bj, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit101 ], [ %i.aj, %.preheader209 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.012.1245, i64 24 ; 2 uses
  %i.bd = getelementptr i8, ptr %.sroa.012.1245, i64 8
  %.sroa.012.1.val = load ptr, ptr %i.bd, align 8, !nonnull !11, !noundef !11
  %i.be = getelementptr i8, ptr %.sroa.012.1245, i64 16
  %.sroa.012.1.val78 = load i64, ptr %i.be, align 8, !noundef !11 ; 4 uses
  %.not.i88 = icmp eq i64 %.sroa.26.2243, 0
  br i1 %.not.i88, label %bb.f, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCsfu0rQaTkGUu_12clap_builder.exit92, !prof !19

bb.f:                                             ; preds = %.lr.ph246
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @105, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44, !noalias !537
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCsfu0rQaTkGUu_12clap_builder.exit92: ; preds = %.lr.ph246
  %i.bf = add nsw i64 %.sroa.26.2243, -1          ; 2 uses
  %i.bg = load i8, ptr %3, align 1, !alias.scope !538
  store i8 %i.bg, ptr %.sroa.035.2244, align 1, !alias.scope !538
  %.not.i95 = icmp ugt i64 %.sroa.012.1.val78, %i.bf
  br i1 %.not.i95, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit101, !prof !19

bb.g:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCsfu0rQaTkGUu_12clap_builder.exit92
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @105, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44, !noalias !539
  unreachable

_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit101: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCsfu0rQaTkGUu_12clap_builder.exit92
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.035.2244, i64 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sroa.012.1.val78
  %i.bj = sub nuw nsw i64 %i.bf, %.sroa.012.1.val78 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr nonnull readonly align 1 %.sroa.012.1.val, i64 range(i64 0, -9223372036854775808) %.sroa.012.1.val78, i1 false), !alias.scope !540
  %i.bk = icmp eq ptr %i.bc, %i.b
  br i1 %i.bk, label %.loopexit, label %.lr.ph246

.lr.ph241:                                        ; preds = %.preheader211, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit115
  %.sroa.012.2240 = phi ptr [ %i.bl, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit115 ], [ %i.d, %.preheader211 ] ; 3 uses
  %.sroa.035.3239 = phi ptr [ %i.br, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit115 ], [ %i.ai, %.preheader211 ] ; 2 uses
  %.sroa.26.3238 = phi i64 [ %i.bs, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit115 ], [ %i.aj, %.preheader211 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.012.2240, i64 24 ; 2 uses
  %i.bm = getelementptr i8, ptr %.sroa.012.2240, i64 8
  %.sroa.012.2.val = load ptr, ptr %i.bm, align 8, !nonnull !11, !noundef !11
  %i.bn = getelementptr i8, ptr %.sroa.012.2240, i64 16
  %.sroa.012.2.val77 = load i64, ptr %i.bn, align 8, !noundef !11 ; 4 uses
  %.not.i102 = icmp ult i64 %.sroa.26.3238, 2
  br i1 %.not.i102, label %bb.h, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCsfu0rQaTkGUu_12clap_builder.exit106, !prof !19

bb.h:                                             ; preds = %.lr.ph241
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @105, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44, !noalias !541
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCsfu0rQaTkGUu_12clap_builder.exit106: ; preds = %.lr.ph241
  %i.bo = add nsw i64 %.sroa.26.3238, -2          ; 2 uses
  %i.bp = load i16, ptr %3, align 1, !alias.scope !542
  store i16 %i.bp, ptr %.sroa.035.3239, align 1, !alias.scope !542
  %.not.i109 = icmp ugt i64 %.sroa.012.2.val77, %i.bo
  br i1 %.not.i109, label %bb.i, label %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit115, !prof !19

bb.i:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCsfu0rQaTkGUu_12clap_builder.exit106
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @105, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44, !noalias !543
  unreachable

_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit115: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCsfu0rQaTkGUu_12clap_builder.exit106
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.035.3239, i64 2 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.012.2.val77
  %i.bs = sub nuw nsw i64 %i.bo, %.sroa.012.2.val77 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr nonnull readonly align 1 %.sroa.012.2.val, i64 range(i64 0, -9223372036854775808) %.sroa.012.2.val77, i1 false), !alias.scope !544
  %i.bt = icmp eq ptr %i.bl, %i.b
  br i1 %i.bt, label %.loopexit, label %.lr.ph241

.lr.ph236:                                        ; preds = %.preheader213, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit129
  %.sroa.012.3235 = phi ptr [ %i.bu, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit129 ], [ %i.d, %.preheader213 ] ; 3 uses
  %.sroa.035.4234 = phi ptr [ %i.bz, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit129 ], [ %i.ai, %.preheader213 ] ; 2 uses
  %.sroa.26.4233 = phi i64 [ %i.ca, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit129 ], [ %i.aj, %.preheader213 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.012.3235, i64 24 ; 2 uses
  %i.bv = getelementptr i8, ptr %.sroa.012.3235, i64 8
  %.sroa.012.3.val = load ptr, ptr %i.bv, align 8, !nonnull !11, !noundef !11
  %i.bw = getelementptr i8, ptr %.sroa.012.3235, i64 16
  %.sroa.012.3.val76 = load i64, ptr %i.bw, align 8, !noundef !11 ; 4 uses
  %.not.i116 = icmp ult i64 %.sroa.26.4233, 3
  br i1 %.not.i116, label %bb.j, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCsfu0rQaTkGUu_12clap_builder.exit120, !prof !19

bb.j:                                             ; preds = %.lr.ph236
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @105, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44, !noalias !545
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCsfu0rQaTkGUu_12clap_builder.exit120: ; preds = %.lr.ph236
  %i.bx = add nsw i64 %.sroa.26.4233, -3          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.035.4234, ptr noundef nonnull readonly align 1 dereferenceable(3) %3, i64 3, i1 false), !alias.scope !546
  %.not.i123 = icmp ugt i64 %.sroa.012.3.val76, %i.bx
  br i1 %.not.i123, label %bb.k, label %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit129, !prof !19

bb.k:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCsfu0rQaTkGUu_12clap_builder.exit120
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @105, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44, !noalias !547
  unreachable

_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit129: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCsfu0rQaTkGUu_12clap_builder.exit120
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.035.4234, i64 3 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %.sroa.012.3.val76
  %i.ca = sub nuw nsw i64 %i.bx, %.sroa.012.3.val76 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr nonnull readonly align 1 %.sroa.012.3.val, i64 range(i64 0, -9223372036854775808) %.sroa.012.3.val76, i1 false), !alias.scope !548
  %i.cb = icmp eq ptr %i.bu, %i.b
  br i1 %i.cb, label %.loopexit, label %.lr.ph236

.lr.ph:                                           ; preds = %.preheader215, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit143
  %.sroa.012.4232 = phi ptr [ %i.cc, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit143 ], [ %i.d, %.preheader215 ] ; 3 uses
  %.sroa.035.5231 = phi ptr [ %i.ci, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit143 ], [ %i.ai, %.preheader215 ] ; 2 uses
  %.sroa.26.5230 = phi i64 [ %i.cj, %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit143 ], [ %i.aj, %.preheader215 ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.012.4232, i64 24 ; 2 uses
  %i.cd = getelementptr i8, ptr %.sroa.012.4232, i64 8
  %.sroa.012.4.val = load ptr, ptr %i.cd, align 8, !nonnull !11, !noundef !11
  %i.ce = getelementptr i8, ptr %.sroa.012.4232, i64 16
  %.sroa.012.4.val75 = load i64, ptr %i.ce, align 8, !noundef !11 ; 4 uses
  %.not.i130 = icmp ult i64 %.sroa.26.5230, 4
  br i1 %.not.i130, label %bb.l, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCsfu0rQaTkGUu_12clap_builder.exit134, !prof !19

bb.l:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @105, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44, !noalias !549
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCsfu0rQaTkGUu_12clap_builder.exit134: ; preds = %.lr.ph
  %i.cf = add nsw i64 %.sroa.26.5230, -4          ; 2 uses
  %i.cg = load i32, ptr %3, align 1, !alias.scope !550
  store i32 %i.cg, ptr %.sroa.035.5231, align 1, !alias.scope !550
  %.not.i137 = icmp ugt i64 %.sroa.012.4.val75, %i.cf
  br i1 %.not.i137, label %bb.m, label %_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsfu0rQaTkGUu_12clap_builder.exit143, !prof !19

end_hunk_1
begin_hunk_2_@_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command11__build_self:bb.a
_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit.i.i: ; preds = %bb.ax, %bb.aw
  %i.on = load ptr, ptr %i.oc, align 8, !alias.scope !5708, !noalias !5709, !nonnull !11, !noundef !11
  %i.oo = getelementptr inbounds nuw [32 x i8], ptr %i.on, i64 %i.ok ; 3 uses
  store i32 2, ptr %i.oo, align 8, !noalias !5710
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  store i64 %i.oj, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !5710
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.oo, i64 24
  store i64 %.sroa.7.09.i, ptr %.sroa.529.0..sroa_idx.i.i, align 8, !noalias !5710
  %i.op = add i64 %i.ok, 1
  store i64 %i.op, ptr %i.nt, align 8, !alias.scope !5708, !noalias !5709
  br label %_RNvNtCsfu0rQaTkGUu_12clap_builder7mkeymap11append_keys.exit.i

bb.ay:                                            ; preds = %bb.av
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 584
  %i.or = load i32, ptr %i.oq, align 8, !range !45, !alias.scope !5705, !noalias !5706, !noundef !11 ; 2 uses
  %.not.i.i131 = icmp eq i32 %i.or, -1
  br i1 %.not.i.i131, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !5711)
  %i.os = load i64, ptr %i.nt, align 8, !alias.scope !5712, !noalias !5713, !noundef !11 ; 3 uses
  %i.ot = load i64, ptr %i.nr, align 8, !range !12, !alias.scope !5712, !noalias !5713, !noundef !11
  %i.ou = icmp eq i64 %i.os, %i.ot
  br i1 %i.ou, label %bb.ba, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit24.i.i

bb.ba:                                            ; preds = %bb.az
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nr) #42, !noalias !5713
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit24.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit24.i.i: ; preds = %bb.ba, %bb.az
  %i.ov = load ptr, ptr %i.oc, align 8, !alias.scope !5712, !noalias !5713, !nonnull !11, !noundef !11
  %i.ow = getelementptr inbounds nuw [32 x i8], ptr %i.ov, i64 %i.os ; 3 uses
  store i32 0, ptr %i.ow, align 8, !noalias !5714
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ow, i64 4
  store i32 %i.or, ptr %.sroa.431.0..sroa_idx.i.i, align 4, !noalias !5714
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  store i64 %.sroa.7.09.i, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !noalias !5714
  %i.ox = add i64 %i.os, 1
  store i64 %i.ox, ptr %i.nt, align 8, !alias.scope !5712, !noalias !5713
  br label %bb.bb

bb.bb:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit24.i.i, %bb.ay
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 552
  %i.oz = load ptr, ptr %i.oy, align 8, !alias.scope !5705, !noalias !5706, !noundef !11 ; 2 uses
  %.not23.i.i = icmp eq ptr %i.oz, null
  br i1 %.not23.i.i, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 560
  %i.pb = load i64, ptr %i.pa, align 8, !alias.scope !5705, !noalias !5706, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !5715)
  %i.pc = load i64, ptr %i.nt, align 8, !alias.scope !5716, !noalias !5717, !noundef !11 ; 3 uses
  %i.pd = load i64, ptr %i.nr, align 8, !range !12, !alias.scope !5716, !noalias !5717, !noundef !11
  %i.pe = icmp eq i64 %i.pc, %i.pd
  br i1 %i.pe, label %bb.bd, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit25.i.i

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nr) #42, !noalias !5717
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit25.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit25.i.i: ; preds = %bb.bd, %bb.bc
  %i.pf = load ptr, ptr %i.oc, align 8, !alias.scope !5716, !noalias !5717, !nonnull !11, !noundef !11
  %i.pg = getelementptr inbounds nuw [32 x i8], ptr %i.pf, i64 %i.pc ; 4 uses
  store i32 1, ptr %i.pg, align 8, !noalias !5718
  %.sroa.436.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  store ptr %i.oz, ptr %.sroa.436.0..sroa_idx.i.i, align 8, !noalias !5718
  %.sroa.537.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  store i64 %i.pb, ptr %.sroa.537.0..sroa_idx.i.i, align 8, !noalias !5718
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pg, i64 24
  store i64 %.sroa.7.09.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !5718
  %i.ph = add i64 %i.pc, 1
  store i64 %i.ph, ptr %i.nt, align 8, !alias.scope !5716, !noalias !5717
  br label %bb.be

bb.be:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit25.i.i, %bb.bb
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 328
  %i.pj = load ptr, ptr %i.pi, align 8, !alias.scope !5705, !noalias !5706, !nonnull !11, !noundef !11 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 336
  %i.pl = load i64, ptr %i.pk, align 8, !alias.scope !5705, !noalias !5706, !noundef !11 ; 2 uses
  %.idx.i.i132 = shl nuw nsw i64 %i.pl, 3
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.idx.i.i132
  %i.pn = icmp eq i64 %i.pl, 0
  br i1 %i.pn, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.be
  %.pre.i.i = load i64, ptr %i.nt, align 8, !alias.scope !5719, !noalias !5720
  %.pre53.i.i = load i64, ptr %i.nr, align 8, !range !12, !alias.scope !5719, !noalias !5720
  br label %bb.bf

bb.bf:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i, %.lr.ph.i.i
  %i.po = phi i64 [ %.pre53.i.i, %.lr.ph.i.i ], [ %i.pt, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i ] ; 2 uses
  %i.pp = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.pw, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i ] ; 3 uses
  %.sroa.011.047.i.i = phi ptr [ %i.pj, %.lr.ph.i.i ], [ %i.pq, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i ] ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.011.047.i.i, i64 8 ; 2 uses
  %i.pr = load i32, ptr %.sroa.011.047.i.i, align 4, !range !52, !noalias !5721, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !5722)
  %i.ps = icmp eq i64 %i.pp, %i.po
  br i1 %i.ps, label %bb.bg, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i

bb.bg:                                            ; preds = %bb.bf
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nr) #42, !noalias !5720
  %.pre52.i.i = load i64, ptr %i.nr, align 8, !range !12, !alias.scope !5719, !noalias !5720
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i: ; preds = %bb.bg, %bb.bf
  %i.pt = phi i64 [ %i.po, %bb.bf ], [ %.pre52.i.i, %bb.bg ]
  %i.pu = load ptr, ptr %i.oc, align 8, !alias.scope !5719, !noalias !5720, !nonnull !11, !noundef !11
  %i.pv = getelementptr inbounds nuw [32 x i8], ptr %i.pu, i64 %i.pp ; 3 uses
  store i32 0, ptr %i.pv, align 8, !noalias !5723
  %.sroa.439.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pv, i64 4
  store i32 %i.pr, ptr %.sroa.439.0..sroa_idx.i.i, align 4, !noalias !5723
  %.sroa.541.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  store i64 %.sroa.7.09.i, ptr %.sroa.541.0..sroa_idx.i.i, align 8, !noalias !5723
  %i.pw = add i64 %i.pp, 1                        ; 2 uses
  store i64 %i.pw, ptr %i.nt, align 8, !alias.scope !5719, !noalias !5720
  %i.px = icmp eq ptr %i.pq, %i.pm
  br i1 %i.px, label %._crit_edge.i.i, label %bb.bf

._crit_edge.i.i:                                  ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit26.i.i, %bb.be
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 304
  %i.pz = load ptr, ptr %i.py, align 8, !alias.scope !5705, !noalias !5706, !nonnull !11, !noundef !11 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 312
  %i.qb = load i64, ptr %i.qa, align 8, !alias.scope !5705, !noalias !5706, !noundef !11 ; 2 uses
  %.idx51.i.i = mul nuw nsw i64 %i.qb, 24
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pz, i64 %.idx51.i.i
  %i.qd = icmp eq i64 %i.qb, 0
  br i1 %i.qd, label %_RNvNtCsfu0rQaTkGUu_12clap_builder7mkeymap11append_keys.exit.i, label %.lr.ph50.i.i

.lr.ph50.i.i:                                     ; preds = %._crit_edge.i.i
  %.pre54.i.i = load i64, ptr %i.nt, align 8, !alias.scope !5724, !noalias !5725
  %.pre56.i.i = load i64, ptr %i.nr, align 8, !range !12, !alias.scope !5724, !noalias !5725
  br label %bb.bh

bb.bh:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit27.i.i, %.lr.ph50.i.i
  %i.qe = phi i64 [ %.pre56.i.i, %.lr.ph50.i.i ], [ %i.ql, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit27.i.i ] ; 2 uses
  %i.qf = phi i64 [ %.pre54.i.i, %.lr.ph50.i.i ], [ %i.qo, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit27.i.i ] ; 3 uses
  %.sroa.016.048.i.i = phi ptr [ %i.pz, %.lr.ph50.i.i ], [ %i.qg, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit27.i.i ] ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.016.048.i.i, i64 24 ; 2 uses
  %i.qh = load ptr, ptr %.sroa.016.048.i.i, align 8, !noalias !5721, !nonnull !11, !noundef !11
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.016.048.i.i, i64 8
  %i.qj = load i64, ptr %i.qi, align 8, !noalias !5721, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !5726)
  %i.qk = icmp eq i64 %i.qf, %i.qe
  br i1 %i.qk, label %bb.bi, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit27.i.i

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nr) #42, !noalias !5725
  %.pre55.i.i = load i64, ptr %i.nr, align 8, !range !12, !alias.scope !5724, !noalias !5725
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit27.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit27.i.i: ; preds = %bb.bi, %bb.bh
  %i.ql = phi i64 [ %i.qe, %bb.bh ], [ %.pre55.i.i, %bb.bi ]
  %i.qm = load ptr, ptr %i.oc, align 8, !alias.scope !5724, !noalias !5725, !nonnull !11, !noundef !11
  %i.qn = getelementptr inbounds nuw [32 x i8], ptr %i.qm, i64 %i.qf ; 4 uses
  store i32 1, ptr %i.qn, align 8, !noalias !5727
  %.sroa.444.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  store ptr %i.qh, ptr %.sroa.444.0..sroa_idx.i.i, align 8, !noalias !5727
  %.sroa.545.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  store i64 %i.qj, ptr %.sroa.545.0..sroa_idx.i.i, align 8, !noalias !5727
  %.sroa.646.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.qn, i64 24
  store i64 %.sroa.7.09.i, ptr %.sroa.646.0..sroa_idx.i.i, align 8, !noalias !5727
  %i.qo = add i64 %i.qf, 1                        ; 2 uses
  store i64 %i.qo, ptr %i.nt, align 8, !alias.scope !5724, !noalias !5725
  %i.qp = icmp eq ptr %i.qg, %i.qc
  br i1 %i.qp, label %_RNvNtCsfu0rQaTkGUu_12clap_builder7mkeymap11append_keys.exit.i, label %bb.bh

_RNvNtCsfu0rQaTkGUu_12clap_builder7mkeymap11append_keys.exit.i: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit27.i.i, %._crit_edge.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE8push_mutBJ_.exit.i.i
  %i.qq = icmp eq ptr %i.od, %i.oa
  br i1 %i.qq, label %_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap6__build.exit, label %bb.av

_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap6__build.exit: ; preds = %_RNvNtCsfu0rQaTkGUu_12clap_builder7mkeymap11append_keys.exit.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE7reserveBI_.exit.i.thread, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE7reserveBI_.exit.i
  %i.qr = phi ptr [ %i.na, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE7reserveBI_.exit.i.thread ], [ %i.nt, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyE7reserveBI_.exit.i ], [ %i.nt, %_RNvNtCsfu0rQaTkGUu_12clap_builder7mkeymap11append_keys.exit.i ]
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.qt = load ptr, ptr %i.qs, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.qu = load i64, ptr %i.qr, align 8, !noundef !11 ; 2 uses
  %.idx260 = shl nuw nsw i64 %i.qu, 5
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 %.idx260 ; 3 uses
  %.not.not.not.not.i.not.not.not.i.not.i.not257 = icmp eq i64 %i.qu, 0
  br i1 %.not.not.not.not.i.not.not.not.i.not.i.not257, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit, label %.lr.ph258

bb.bj:                                            ; preds = %.lr.ph258
  %.not.not.not.not.i.not.not.not.i.not.i.not = icmp eq ptr %i.qx, %i.qv
  br i1 %.not.not.not.not.i.not.not.not.i.not.i.not, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit, label %.lr.ph258

.lr.ph258:                                        ; preds = %_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap6__build.exit, %bb.bj
  %i.qw = phi ptr [ %i.qx, %bb.bj ], [ %i.qt, %_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap6__build.exit ] ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 32 ; 7 uses
  %.val.i.i.i.i.i134 = load i32, ptr %i.qw, align 8, !range !31, !noalias !5728, !noundef !11
  %i.qy = icmp eq i32 %.val.i.i.i.i.i134, 2
  br i1 %i.qy, label %bb.bk, label %bb.bj

bb.bk:                                            ; preds = %.lr.ph258
  %i.qz = getelementptr i8, ptr %i.qw, i64 8
  %.val6.i.i.i.i.i = load i64, ptr %i.qz, align 8, !noalias !5728 ; 3 uses
  %i.ra = icmp eq ptr %i.qx, %i.qv
  br i1 %i.ra, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.rb = ptrtoint ptr %i.qv to i64
  %i.rc = ptrtoint ptr %i.qx to i64
  %i.rd = sub nuw i64 %i.rb, %i.rc                ; 2 uses
  %i.re = lshr exact i64 %i.rd, 5                 ; 3 uses
  %i.rf = icmp eq i64 %i.rd, 32
  br i1 %i.rf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.bl
  %unroll_iter = and i64 %i.re, 576460752303423486
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.new
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %.new ], [ %i.rn, %bb.bm ] ; 3 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ %.val6.i.i.i.i.i, %.new ], [ %.sroa.0.0.i.i.i.i.i.i135.1, %bb.bm ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.bm ]
  %i.rg = getelementptr inbounds nuw [32 x i8], ptr %i.qx, i64 %.sroa.04.0.i.i.i.i ; 2 uses
  %.val.i.i.i.i = load i32, ptr %i.rg, align 8, !range !31, !noundef !11
  %i.rh = getelementptr i8, ptr %i.rg, i64 8
  %.val11.i.i.i.i = load i64, ptr %i.rh, align 8
  %i.ri = icmp eq i32 %.val.i.i.i.i, 2
  %..i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.val11.i.i.i.i, i64 %.sroa.02.0.i.i.i.i)
  %.sroa.0.0.i.i.i.i.i.i135 = select i1 %i.ri, i64 %..i.i.i.i.i.i.i.i, i64 %.sroa.02.0.i.i.i.i ; 2 uses
  %i.rj = getelementptr inbounds nuw [32 x i8], ptr %i.qx, i64 %.sroa.04.0.i.i.i.i ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 32
  %.val.i.i.i.i.1 = load i32, ptr %i.rk, align 8, !range !31, !noundef !11
  %i.rl = getelementptr i8, ptr %i.rj, i64 40
  %.val11.i.i.i.i.1 = load i64, ptr %i.rl, align 8
  %i.rm = icmp eq i32 %.val.i.i.i.i.1, 2
  %..i.i.i.i.i.i.i.i.1 = call i64 @llvm.umax.i64(i64 %.val11.i.i.i.i.1, i64 %.sroa.0.0.i.i.i.i.i.i135)
  %.sroa.0.0.i.i.i.i.i.i135.1 = select i1 %i.rm, i64 %..i.i.i.i.i.i.i.i.1, i64 %.sroa.0.0.i.i.i.i.i.i135 ; 3 uses
  %i.rn = add nuw i64 %.sroa.04.0.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit.loopexit.unr-lcssa, label %bb.bm

_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit.loopexit.unr-lcssa: ; preds = %bb.bm
  %2 = trunc i64 %i.re to i1
  br i1 %2, label %.epil.preheader, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit

.epil.preheader:                                  ; preds = %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit.loopexit.unr-lcssa, %bb.bl
  %.sroa.04.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.bl ], [ %i.rn, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ %.val6.i.i.i.i.i, %bb.bl ], [ %.sroa.0.0.i.i.i.i.i.i135.1, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod269 = trunc i64 %i.re to i1
  call void @llvm.assume(i1 %lcmp.mod269)
  %i.ro = getelementptr inbounds nuw [32 x i8], ptr %i.qx, i64 %.sroa.04.0.i.i.i.i.epil.init ; 2 uses
  %.val.i.i.i.i.epil = load i32, ptr %i.ro, align 8, !range !31, !noundef !11
  %i.rp = getelementptr i8, ptr %i.ro, i64 8
  %.val11.i.i.i.i.epil = load i64, ptr %i.rp, align 8
  %i.rq = icmp eq i32 %.val.i.i.i.i.epil, 2
  %..i.i.i.i.i.i.i.i.epil = call i64 @llvm.umax.i64(i64 %.val11.i.i.i.i.epil, i64 %.sroa.02.0.i.i.i.i.epil.init)
  %.sroa.0.0.i.i.i.i.i.i135.epil = select i1 %i.rq, i64 %..i.i.i.i.i.i.i.i.epil, i64 %.sroa.02.0.i.i.i.i.epil.init
  br label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit

_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit: ; preds = %bb.bj, %.epil.preheader, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit.loopexit.unr-lcssa, %_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap6__build.exit, %bb.bk
  %.sroa.016.0 = phi i64 [ 0, %_RNvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB5_7MKeyMap6__build.exit ], [ %.val6.i.i.i.i.i, %bb.bk ], [ %.sroa.0.0.i.i.i.i.i.i135.epil, %.epil.preheader ], [ %.sroa.0.0.i.i.i.i.i.i135.1, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B1N_NtB1N_7MKeyMap4keys0ENCNvMs3_NtNtB1P_7builder7commandNtB39_7Command11__build_selfs_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvYjNtNtBc_3cmp3Ord3maxEB1P_.exit.loopexit.unr-lcssa ], [ 0, %bb.bj ]
  %i.rr = load i32, ptr %i.u, align 4, !noundef !11 ; 4 uses
  %i.rs = and i32 %i.rr, 32
  %.not116 = icmp ne i32 %i.rs, 0
  %i.rt = load i32, ptr %i.aa, align 8            ; 3 uses
  %i.ru = and i32 %i.rt, 32
  %i.rv = icmp ne i32 %i.ru, 0
  %.sroa.019.0 = select i1 %.not116, i1 true, i1 %i.rv
  %i.rw = and i32 %i.rr, 2
  %.not117 = icmp ne i32 %i.rw, 0
  %i.rx = and i32 %i.rt, 2
  %i.ry = icmp ne i32 %i.rx, 0
  %.sroa.020.0 = select i1 %.not117, i1 true, i1 %i.ry
  %i.rz = and i32 %i.rr, 4
  %.not118 = icmp ne i32 %i.rz, 0
  %i.sa = and i32 %i.rt, 4
  %i.sb = icmp ne i32 %i.sa, 0
  %.sroa.021.0 = select i1 %.not118, i1 true, i1 %i.sb
  %i.sc = load ptr, ptr %i.mu, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.sd = load i64, ptr %i.mw, align 8, !noundef !11 ; 2 uses
  %.idx176 = mul nuw nsw i64 %i.sd, 600
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 %.idx176
  %i.sf = icmp eq i64 %i.sd, 0
  br i1 %i.sf, label %._crit_edge173, label %.lr.ph172

bb.bn:                                            ; preds = %.lr.ph, %bb.cl
  %.sroa.011.0164 = phi ptr [ %i.nk, %.lr.ph ], [ %i.sg, %bb.cl ] ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.011.0164, i64 16 ; 2 uses
  %i.sh = load ptr, ptr %i.nb, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.si = load i64, ptr %i.nc, align 8, !noundef !11 ; 2 uses
  %.idx = mul nuw nsw i64 %i.si, 96
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 %.idx
  %i.sk = icmp eq i64 %i.si, 0
  %.pre189 = load ptr, ptr %.sroa.011.0164, align 8 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.011.0164, i64 8
  %.pre190 = load i64, ptr %.phi.trans.insert, align 8 ; 3 uses
  br i1 %i.sk, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit144, label %.lr.ph.i136

.lr.ph.i136:                                      ; preds = %bb.bn, %_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.thread.i
  %i.sl = phi ptr [ %i.sm, %_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.thread.i ], [ %i.sh, %bb.bn ] ; 7 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 96 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 80
  %i.so = load i64, ptr %i.sn, align 8, !noalias !5729, !noundef !11
  %i.sp = icmp eq i64 %i.so, %.pre190
  br i1 %i.sp, label %_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.i, label %_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.thread.i

_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.i: ; preds = %.lr.ph.i136
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sl, i64 72
  %i.sr = load ptr, ptr %i.sq, align 8, !noalias !5729, !nonnull !11, !noundef !11
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.sr, ptr nonnull %.pre189, i64 %.pre190), !noalias !5729
  %i.ss = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ss, label %_RINvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_7IterMutNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs3_NtBX_7commandNtB2L_7Command11__build_self0EBZ_.exit, label %_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.thread.i

_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.thread.i: ; preds = %_RNCNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command11__build_self0Bb_.exit.i, %.lr.ph.i136
  %i.st = icmp eq ptr %i.sm, %i.sj
  br i1 %i.st, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit144, label %.lr.ph.i136

._crit_edge:                                      ; preds = %bb.cl, %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !5730)
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 596 ; 3 uses
  %i.sv = load i8, ptr %i.su, align 4, !range !53, !alias.scope !5730, !noundef !11 ; 2 uses
  %.not.i138 = icmp eq i8 %i.sv, -1
  br i1 %.not.i138, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %._crit_edge
  %i.sw = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 16
  %i.sx = load i64, ptr %i.sw, align 8, !range !14, !alias.scope !5730, !noundef !11
  %i.sy = trunc nuw i64 %i.sx to i1               ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 24
  %i.ta = load i64, ptr %i.sz, align 8, !alias.scope !5730
  %i.tb = icmp eq i64 %i.ta, 0
  %or.cond.i142 = select i1 %i.sy, i1 %i.tb, i1 false
  %i.tc = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 32
  %i.td = load i64, ptr %i.tc, align 8, !alias.scope !5730 ; 2 uses
  %i.te = icmp eq i64 %i.td, 0
  %or.cond8.i = select i1 %or.cond.i142, i1 %i.te, i1 false
  br i1 %or.cond8.i, label %.thread.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 552
  %i.tg = load ptr, ptr %i.tf, align 8, !alias.scope !5730, !noundef !11
  %.not33.i = icmp eq ptr %i.tg, null
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 584
  %i.ti = load i32, ptr %i.th, align 8, !range !45, !alias.scope !5730
  %.not34.i = icmp eq i32 %i.ti, -1
  %or.cond43.not89.not90.i = select i1 %.not33.i, i1 %.not34.i, i1 false
  %brmerge.not.i = and i1 %or.cond43.not89.not90.i, %i.sy
  %i.tj = icmp eq i64 %i.td, -1
  %narrow.i = select i1 %brmerge.not.i, i1 %i.tj, i1 false
  %.sroa.0.0.i143 = zext i1 %narrow.i to i8       ; 2 uses
  store i8 %.sroa.0.0.i143, ptr %i.su, align 4, !alias.scope !5730
  br label %bb.bq

.thread.i:                                        ; preds = %bb.bo
  store i8 2, ptr %i.su, align 4, !alias.scope !5730
  br label %bb.bt

bb.bq:                                            ; preds = %bb.bp, %._crit_edge
  %i.tk = phi i8 [ %i.sv, %._crit_edge ], [ %.sroa.0.0.i143, %bb.bp ] ; 10 uses
  switch i8 %i.tk, label %default.unreachable [
    i8 0, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i
    i8 1, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i
    i8 2, label %bb.bt
    i8 3, label %bb.br
    i8 4, label %bb.bs
    i8 5, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i
    i8 6, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i
    i8 7, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i
    i8 8, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i
  ]

bb.br:                                            ; preds = %bb.bq
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  br label %bb.bt

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction21default_missing_value.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit54.i, %bb.by, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 80 ; 3 uses
  %i.tm = load i64, ptr %i.tl, align 8, !range !25, !alias.scope !5730, !noundef !11
  %.not38.i = icmp eq i64 %i.tm, -1
  br i1 %.not38.i, label %bb.cd, label %bb.cc

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq, %.thread.i
  %i.tn = phi i8 [ %i.tk, %bb.bs ], [ %i.tk, %bb.br ], [ 2, %.thread.i ], [ %i.tk, %bb.bq ] ; 2 uses
  %.sroa.10.0.i.ph.i = phi i64 [ 1, %bb.bs ], [ 4, %bb.br ], [ 5, %.thread.i ], [ 5, %bb.bq ]
  %.sroa.0.0.i.ph.i = phi ptr [ @57, %bb.bs ], [ @48, %bb.br ], [ @55, %.thread.i ], [ @55, %bb.bq ]
  %i.to = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 384 ; 2 uses
  %i.tp = load i64, ptr %i.to, align 8, !alias.scope !5730, !noundef !11 ; 2 uses
  %i.tq = icmp ult i64 %i.tp, 576460752303423488
  call void @llvm.assume(i1 %i.tq)
  %i.tr = icmp eq i64 %i.tp, 0
  br i1 %i.tr, label %bb.bu, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i

bb.bu:                                            ; preds = %bb.bt
  %i.ts = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 368 ; 2 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !5730, !inline_history !5600
  %i.tt = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #43, !noalias !5730, !inline_history !5600 ; 4 uses
  %i.tu = icmp eq ptr %i.tt, null
  br i1 %i.tu, label %bb.bv, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i, !prof !33

bb.bv:                                            ; preds = %bb.bu
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #46, !noalias !5730, !inline_history !5600
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.bu
  store ptr %.sroa.0.0.i.ph.i, ptr %i.tt, align 8, !noalias !5730
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  store i64 %.sroa.10.0.i.ph.i, ptr %i.tv, align 8, !noalias !5730
  call void @llvm.experimental.noalias.scope.decl(metadata !5731)
  %.val.i.i = load i64, ptr %i.ts, align 8, !range !12, !alias.scope !5732, !noundef !11 ; 2 uses
  %i.tw = icmp eq i64 %.val.i.i, 0
  br i1 %i.tw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit.i, label %bb.bw

bb.bw:                                            ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i
  %i.tx = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 376
  %.val1.i.i = load ptr, ptr %i.tx, align 8, !alias.scope !5732, !nonnull !11, !noundef !11
  %i.ty = shl nuw i64 %.val.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.ty, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !5732, !inline_history !5600
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit.i: ; preds = %bb.bw, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i
  store i64 1, ptr %i.ts, align 8, !alias.scope !5730
  %.sroa.4.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %.sroa.09.0165, i64 376
  store ptr %i.tt, ptr %.sroa.4.0..sroa_idx.i141, align 8, !alias.scope !5730
  store i64 1, ptr %i.to, align 8, !alias.scope !5730
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit.i, %bb.bt, %bb.bq, %bb.bq, %bb.bq, %bb.bq, %bb.bq, %bb.bq
  %i.tz = phi i8 [ %i.tn, %bb.bt ], [ %i.tn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit.i ], [ %i.tk, %bb.bq ], [ %i.tk, %bb.bq ], [ %i.tk, %bb.bq ], [ %i.tk, %bb.bq ], [ %i.tk, %bb.bq ], [ %i.tk, %bb.bq ] ; 3 uses
  switch i8 %i.tz, label %default.unreachable [
    i8 0, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction21default_missing_value.exit.i
    i8 1, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction21default_missing_value.exit.i
    i8 2, label %bb.by
    i8 3, label %bb.bx
    i8 4, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction21default_missing_value.exit.i
    i8 5, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction21default_missing_value.exit.i
    i8 6, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction21default_missing_value.exit.i
    i8 7, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction21default_missing_value.exit.i
    i8 8, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction21default_missing_value.exit.i
  ]

bb.bx:                                            ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder6actionNtB2_9ArgAction13default_value.exit.i
  br label %bb.by
end_hunk_2
begin_hunk_3_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !10410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10410
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage20write_usage_no_title(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fp, ptr noalias nofree noundef align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.8.sroa.5.i.sroa.0.0.copyload, i64 noundef range(i64 0, 576460752303423488) %.sroa.8.sroa.5.i.sroa.4.0.copyload) #43
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8trim_end(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #43, !noalias !10412, !inline_history !8804
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fq, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !10413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10410
  %i.yd = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error15too_many_valuesB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.wv, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.fr, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %.sroa.946.i, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.fq) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq), !noalias !10288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp), !noalias !10288
  %i.ye = icmp eq i64 %.sroa.8.sroa.0.0.copyload.i, 0
  br i1 %i.ye, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit, label %bb.ce

bb.ce:                                            ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit576
  %i.yf = shl nuw i64 %.sroa.8.sroa.0.0.copyload.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.sroa.5.i.sroa.0.0.copyload, i64 noundef %i.yf, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !10414
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit576, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr), !noalias !10288
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit417

bb.cf:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw), !noalias !10288
  br label %bb.fi

bb.cg:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu), !noalias !10288
  store ptr %.sroa.3.0.copyload.i, ptr %i.fu, align 8, !noalias !10288
  %.sroa.737.8..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store i64 %.sroa.737.0.copyload.i, ptr %.sroa.737.8..sroa_idx40.i, align 8, !noalias !10288
  %.sroa.8.8..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store i64 %.sroa.8.sroa.0.0.copyload.i, ptr %.sroa.8.8..sroa_idx44.i, align 8, !noalias !10288
  %i.yg = call fastcc noundef align 8 ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15resolve_pending(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) #43, !inline_history !8602 ; 2 uses
  %i.yh = icmp eq ptr %i.yg, null
  br i1 %i.yh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit545, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEBF_(ptr nonnull %i.yg) #43, !noalias !10285
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit545

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit545: ; preds = %bb.cg, %bb.ch
  %i.yi = load ptr, ptr %i.gc, align 8, !alias.scope !10285, !noalias !10289, !nonnull !11, !align !17, !noundef !11 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ft), !noalias !10288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs), !noalias !10288
  call void @llvm.experimental.noalias.scope.decl(metadata !10415)
  call void @llvm.experimental.noalias.scope.decl(metadata !10416)
  call void @llvm.experimental.noalias.scope.decl(metadata !10417), !noalias !10285
  call void @llvm.experimental.noalias.scope.decl(metadata !10418), !noalias !10285
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 232
  %i.yk = load ptr, ptr %i.yj, align 8, !alias.scope !10419, !noalias !10420, !nonnull !11, !noundef !11 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yi, i64 240
  %i.ym = load i64, ptr %i.yl, align 8, !alias.scope !10419, !noalias !10420, !noundef !11 ; 2 uses
  %.idx4598 = shl nuw nsw i64 %i.ym, 4
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yk, i64 %.idx4598
  %i.yo = icmp eq i64 %i.ym, 0
  br i1 %i.yo, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit544, label %.lr.ph4566

bb.ci:                                            ; preds = %.lr.ph4566
  %i.yp = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i5364565, i64 16 ; 2 uses
  %i.yq = add i64 %.sroa.8.0.i.i.i5354564, 1
  %i.yr = icmp eq ptr %i.yp, %i.yn
  br i1 %i.yr, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit544, label %.lr.ph4566

.lr.ph4566:                                       ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit545, %bb.ci
  %.sroa.0.01.i.i.i5364565 = phi ptr [ %i.yp, %bb.ci ], [ %i.yk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit545 ] ; 2 uses
  %.sroa.8.0.i.i.i5354564 = phi i64 [ %i.yq, %bb.ci ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit545 ] ; 4 uses
  %.val.i.i.i537 = load i128, ptr %.sroa.0.01.i.i.i5364565, align 8, !noalias !10421
  %i.ys = icmp eq i128 %.val.i.i.i537, -100310019091698447603793328749864812255
  br i1 %i.ys, label %bb.cj, label %bb.ci

bb.cj:                                            ; preds = %.lr.ph4566
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yi, i64 264
  %i.yu = load i64, ptr %i.yt, align 8, !alias.scope !10419, !noalias !10420, !noundef !11 ; 2 uses
  %i.yv = icmp ult i64 %.sroa.8.0.i.i.i5354564, %i.yu
  br i1 %i.yv, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i5354564, i64 noundef %i.yu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !10421
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yi, i64 256
  %i.yx = load ptr, ptr %i.yw, align 8, !alias.scope !10419, !noalias !10420, !nonnull !11, !noundef !11
  %i.yy = getelementptr inbounds nuw [32 x i8], ptr %i.yx, i64 %.sroa.8.0.i.i.i5354564 ; 2 uses
  %.val5.i.i538 = load ptr, ptr %i.yy, align 8, !noalias !10422, !nonnull !11, !noundef !11
  %i.yz = getelementptr i8, ptr %i.yy, i64 8
  %.val6.i.i539 = load ptr, ptr %i.yz, align 8, !noalias !10422, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %.val6.i.i539, i64 16
  %i.zb = load i64, ptr %i.za, align 8, !range !18, !invariant.load !11, !noalias !10422
  %i.zc = add nsw i64 %i.zb, -1
  %i.zd = and i64 %i.zc, -16
  %i.ze = getelementptr inbounds nuw i8, ptr %.val5.i.i538, i64 %i.zd
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !10422
  %i.zg = getelementptr inbounds nuw i8, ptr %.val6.i.i539, i64 24
  %i.zh = load ptr, ptr %i.zg, align 8, !invariant.load !11, !noalias !10422, !nonnull !11
  call void %i.zh(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.p, ptr noundef nonnull %i.zf) #45, !noalias !10422, !inline_history !8797
  %i.zi = load i128, ptr %i.p, align 16, !noalias !10422, !noundef !11
  %.not.i.i540 = icmp eq i128 %i.zi, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10422
  br i1 %.not.i.i540, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit544, label %bb.cm, !prof !16

bb.cm:                                            ; preds = %bb.cl
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !10422
  unreachable

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit544: ; preds = %bb.ci, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit545, %bb.cl
  %.sroa.0.0.i.i541 = phi ptr [ %i.zf, %bb.cl ], [ null, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit545 ], [ null, %bb.ci ] ; 2 uses
  %.not.i542 = icmp eq ptr %.sroa.0.0.i.i541, null
  %..i543 = select i1 %.not.i542, ptr @99, ptr %.sroa.0.0.i.i541 ; 5 uses
  store ptr %i.yi, ptr %i.fs, align 8, !alias.scope !10415, !noalias !10423
  %i.zj = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store ptr %..i543, ptr %i.zj, align 8, !alias.scope !10415, !noalias !10423
  %i.zk = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store ptr null, ptr %i.zk, align 8, !alias.scope !10415, !noalias !10423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !10424
  store i64 0, ptr %i.t, align 8, !alias.scope !10425, !noalias !10424
  %.sroa.42.0..sroa_idx.i.i516 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i516, align 8, !alias.scope !10425, !noalias !10424
  %.sroa.53.0..sroa_idx.i.i517 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i517, align 8, !alias.scope !10425, !noalias !10424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !10424
  %i.zl = getelementptr inbounds nuw i8, ptr %..i543, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.s, ptr noundef nonnull align 2 dereferenceable(14) %i.zl, i64 14, i1 false), !noalias !10424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !10424
  %.sroa.0.0.copyload.i518 = load i8, ptr %i.zl, align 2, !noalias !10424
  %.sroa.7.0..sroa_idx.i519 = getelementptr inbounds nuw i8, ptr %..i543, i64 32
  %.sroa.7.0.copyload.i520 = load i8, ptr %.sroa.7.0..sroa_idx.i519, align 2, !noalias !10424
  %.sroa.11.0..sroa_idx.i521 = getelementptr inbounds nuw i8, ptr %..i543, i64 36
  %.sroa.11.0.copyload.i522 = load i8, ptr %.sroa.11.0..sroa_idx.i521, align 2, !noalias !10424
  %.sroa.15.0..sroa_idx.i523 = getelementptr inbounds nuw i8, ptr %..i543, i64 40
  %.sroa.15.0.copyload.i524 = load i16, ptr %.sroa.15.0..sroa_idx.i523, align 2, !noalias !10424
  %.not.i.i525 = icmp eq i8 %.sroa.0.0.copyload.i518, -1
  %.not5.i.i526 = icmp eq i8 %.sroa.7.0.copyload.i520, -1
  %or.cond.i527 = select i1 %.not.i.i525, i1 %.not5.i.i526, i1 false
  %.not7.i.i528 = icmp eq i8 %.sroa.11.0.copyload.i522, -1
  %or.cond35.i529 = select i1 %or.cond.i527, i1 %.not7.i.i528, i1 false
  %i.zm = icmp eq i16 %.sroa.15.0.copyload.i524, 0
  %or.cond36.i530 = select i1 %or.cond35.i529, i1 %i.zm, i1 false ; 2 uses
  %spec.select.i531 = select i1 %or.cond36.i530, ptr inttoptr (i64 1 to ptr), ptr @139
  %spec.select38.i532 = select i1 %or.cond36.i530, i64 0, i64 4
  store ptr %spec.select.i531, ptr %i.r, align 8, !noalias !10424, !captures !22
  %i.zn = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %spec.select38.i532, ptr %i.zn, align 8, !noalias !10424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !10424
  store ptr %i.s, ptr %i.q, align 8, !noalias !10424
  %.sroa.48.0..sroa_idx.i533 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs8_NtCscy4Zx2DW6cp_7anstyle5styleNtB5_12StyleDisplayNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i533, align 8, !noalias !10424
  %i.zo = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.r, ptr %i.zo, align 8, !noalias !10424
  %.sroa.412.0..sroa_idx.i534 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.412.0..sroa_idx.i534, align 8, !noalias !10424
  %i.zp = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @140, ptr noundef nonnull %i.q) #43, !noalias !10424, !inline_history !8804 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !10424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !10424
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage20write_usage_no_title(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fs, ptr noalias nofree noundef align 8 dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8trim_end(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #43, !noalias !10426, !inline_history !8804
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ft, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !10427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !10424
  %i.zq = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error9no_equalsB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.yi, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.fu, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.ft) #43, !noalias !10285, !inline_history !8602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft), !noalias !10288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs), !noalias !10288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu), !noalias !10288
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit417

bb.cn:                                            ; preds = %bb.bt
  %i.zr = ptrtoint ptr %.sroa.3.0.copyload.i to i64
  %i.zs = call fastcc noundef align 8 ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15resolve_pending(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) #43, !inline_history !8602 ; 2 uses
  %i.zt = icmp eq ptr %i.zs, null
  br i1 %i.zt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit515, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEBF_(ptr nonnull %i.zs) #43, !noalias !10285
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit515

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit515: ; preds = %bb.cn, %bb.co
  %i.zu = call { ptr, ptr } @_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs9remaining(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ga) #43, !noalias !10285, !inline_history !8602 ; 2 uses
  %i.zv = extractvalue { ptr, ptr } %i.zu, 0      ; 5 uses
  %i.zw = extractvalue { ptr, ptr } %i.zu, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.zw) ], !noalias !10285
  %i.zx = ptrtoint ptr %i.zw to i64
  %i.zy = ptrtoint ptr %i.zv to i64
  %i.zz = sub nuw i64 %i.zx, %i.zy                ; 3 uses
  %i.aaa = udiv i64 %i.zz, 24                     ; 6 uses
  %i.aab = shl nuw i64 %i.aaa, 4                  ; 2 uses
  %.not.i.i.i511 = icmp ugt i64 %i.zz, -4611686018427387928
  br i1 %.not.i.i.i511, label %bb.cq, label %bb.cp, !prof !21

bb.cp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit515
  %i.aac = icmp eq ptr %i.zw, %i.zv
  br i1 %i.aac, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i512

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i512: ; preds = %bb.cp
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10428
  %i.aad = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aab, i64 noundef range(i64 1, 9) 8) #43, !noalias !10428 ; 6 uses
  %i.aae = icmp eq ptr %i.aad, null
  br i1 %i.aae, label %bb.cq, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i512
  %.off = add i64 %i.zz, -24
  %i.aaf = icmp ult i64 %.off, 24
  br i1 %i.aaf, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter5355 = and i64 %i.aaa, 1152921504606846974
  br label %.preheader.i.i.i

bb.cq:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i512, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit515
  %.sroa.10.0.ph.i.i = phi i64 [ %i.aab, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i512 ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit515 ]
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i512 ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorEEB12_.exit515 ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.10.0.ph.i.i) #46, !noalias !10429
  unreachable

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %i.aag = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.aas, %.preheader.i.i.i ] ; 4 uses
  %niter5356 = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter5356.next.1, %.preheader.i.i.i ]
  %i.aah = getelementptr inbounds nuw [24 x i8], ptr %i.zv, i64 %i.aag ; 2 uses
  %i.aai = getelementptr i8, ptr %i.aah, i64 8
  %.val11.i.i.i.i.i.i = load ptr, ptr %i.aai, align 8, !noalias !10430, !nonnull !11, !noundef !11
  %i.aaj = getelementptr i8, ptr %i.aah, i64 16
  %.val12.i.i.i.i.i.i = load i64, ptr %i.aaj, align 8, !noalias !10430, !noundef !11
  %i.aak = getelementptr inbounds nuw [16 x i8], ptr %i.aad, i64 %i.aag ; 2 uses
  store ptr %.val11.i.i.i.i.i.i, ptr %i.aak, align 8, !noalias !10431, !captures !22
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 8
  store i64 %.val12.i.i.i.i.i.i, ptr %i.aal, align 8, !noalias !10432
  %i.aam = or disjoint i64 %i.aag, 1              ; 2 uses
  %i.aan = getelementptr inbounds nuw [24 x i8], ptr %i.zv, i64 %i.aam ; 2 uses
  %i.aao = getelementptr i8, ptr %i.aan, i64 8
  %.val11.i.i.i.i.i.i.1 = load ptr, ptr %i.aao, align 8, !noalias !10430, !nonnull !11, !noundef !11
  %i.aap = getelementptr i8, ptr %i.aan, i64 16
  %.val12.i.i.i.i.i.i.1 = load i64, ptr %i.aap, align 8, !noalias !10430, !noundef !11
  %i.aaq = getelementptr inbounds nuw [16 x i8], ptr %i.aad, i64 %i.aam ; 2 uses
  store ptr %.val11.i.i.i.i.i.i.1, ptr %i.aaq, align 8, !noalias !10431, !captures !22
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8
  store i64 %.val12.i.i.i.i.i.i.1, ptr %i.aar, align 8, !noalias !10432
  %i.aas = add nuw i64 %i.aag, 2                  ; 2 uses
  %niter5356.next.1 = add i64 %niter5356, 2       ; 2 uses
  %niter5356.ncmp.1 = icmp eq i64 %niter5356.next.1, %unroll_iter5355
  br i1 %niter5356.ncmp.1, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit.loopexit.unr-lcssa, label %.preheader.i.i.i

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %4 = trunc i64 %i.aaa to i1
  br i1 %4, label %.preheader.i.i.i.epil.preheader, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit

.preheader.i.i.i.epil.preheader:                  ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.aas, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod5354 = trunc i64 %i.aaa to i1
  call void @llvm.assume(i1 %lcmp.mod5354)
  %i.aat = getelementptr inbounds nuw [24 x i8], ptr %i.zv, i64 %.epil.init ; 2 uses
  %i.aau = getelementptr i8, ptr %i.aat, i64 8
  %.val11.i.i.i.i.i.i.epil = load ptr, ptr %i.aau, align 8, !noalias !10430, !nonnull !11, !noundef !11
  %i.aav = getelementptr i8, ptr %i.aat, i64 16
  %.val12.i.i.i.i.i.i.epil = load i64, ptr %i.aav, align 8, !noalias !10430, !noundef !11
  %i.aaw = getelementptr inbounds nuw [16 x i8], ptr %i.aad, i64 %.epil.init ; 2 uses
  store ptr %.val11.i.i.i.i.i.i.epil, ptr %i.aaw, align 8, !noalias !10431, !captures !22
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  store i64 %.val12.i.i.i.i.i.i.epil, ptr %i.aax, align 8, !noalias !10432
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %.preheader.i.i.i.epil.preheader, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit.loopexit.unr-lcssa, %bb.cp
  %.sroa.4.0.i8.i = phi i64 [ 0, %bb.cp ], [ %i.aaa, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit.loopexit.unr-lcssa ], [ %i.aaa, %.preheader.i.i.i.epil.preheader ] ; 3 uses
  %.sroa.10.0.i7.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.cp ], [ %i.aad, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit.loopexit.unr-lcssa ], [ %i.aad, %.preheader.i.i.i.epil.preheader ] ; 2 uses
  %i.aay = inttoptr i64 %.sroa.737.0.copyload.i to ptr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10433)
  call void @llvm.experimental.noalias.scope.decl(metadata !10434)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store ptr %i.aay, ptr %i.as, align 8, !noalias !10435
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  store i64 %.sroa.8.sroa.0.0.copyload.i, ptr %i.aaz, align 8, !noalias !10435
  %i.aba = load ptr, ptr %i.gc, align 8, !alias.scope !10433, !noalias !10436, !nonnull !11, !align !17, !noundef !11 ; 19 uses
  %i.abb = getelementptr i8, ptr %i.aba, i64 160  ; 2 uses
  %.val22.i418 = load ptr, ptr %i.abb, align 8, !noalias !10437, !nonnull !11, !noundef !11 ; 2 uses
  %i.abc = getelementptr i8, ptr %i.aba, i64 168  ; 2 uses
  %.val23.i = load i64, ptr %i.abc, align 8, !noalias !10437, !noundef !11 ; 2 uses
  %.idx4595.a = shl nuw nsw i64 %.val23.i, 5
  %i.abd = getelementptr inbounds nuw i8, ptr %.val22.i418, i64 %.idx4595.a ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !10438
  %i.abe = icmp eq i64 %.val23.i, 0
  br i1 %i.abe, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i, label %.lr.ph4557

bb.cr:                                            ; preds = %.lr.ph4557
  %i.abf = icmp eq ptr %i.abh, %i.abd
  br i1 %i.abf, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1W_3map3MapINtNtNtB20_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3D_NtB3D_7MKeyMap4keys0ENCNvMs0_NtNtB3F_6parser6parserNtB4Z_6Parser18did_you_mean_error0EE9from_iterB3F_.exit.i, label %.lr.ph4557

.lr.ph4557:                                       ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit, %bb.cr
  %i.abg = phi ptr [ %i.abh, %bb.cr ], [ %.val22.i418, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtB16_8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3O_7RawArgs9remaining0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit ] ; 4 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10439)
  call void @llvm.experimental.noalias.scope.decl(metadata !10440)
  call void @llvm.experimental.noalias.scope.decl(metadata !10441)
  call void @llvm.experimental.noalias.scope.decl(metadata !10442)
  %i.abi = load i32, ptr %i.abg, align 8, !range !31, !alias.scope !10443, !noalias !10444, !noundef !11
  %i.abj = icmp eq i32 %i.abi, 1
  br i1 %i.abj, label %bb.cs, label %bb.cr

bb.cs:                                            ; preds = %.lr.ph4557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !10445
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abg, i64 8
  %i.abl = load ptr, ptr %i.abk, align 8, !alias.scope !10443, !noalias !10444, !nonnull !11, !noundef !11
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abg, i64 16
  %i.abn = load i64, ptr %i.abm, align 8, !alias.scope !10443, !noalias !10444, !noundef !11
  call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.abl, i64 noundef %i.abn) #43, !noalias !10446
  %i.abo = load i64, ptr %i.aj, align 8, !range !13, !noalias !10445, !noundef !11 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.abo, -1
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.abq = load ptr, ptr %i.abp, align 8, !noalias !10445 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.abs = load i64, ptr %i.abr, align 8, !noalias !10445 ; 8 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ct, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i419

bb.ct:                                            ; preds = %bb.cs
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %i.abs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.cv, label %bb.cu, !prof !21

bb.cu:                                            ; preds = %bb.ct
  %i.abt = icmp eq i64 %i.abs, 0
  br i1 %i.abt, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i419, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cu
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10447
  %i.abu = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.abs, i64 noundef range(i64 1, 9) 1) #43, !noalias !10447 ; 3 uses
  %i.abv = icmp eq ptr %i.abu, null
  br i1 %i.abv, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.ct
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.ct ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i, i64 %i.abs) #46, !noalias !10446
  unreachable

bb.cw:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.abu, ptr nonnull align 1 %i.abq, i64 %i.abs, i1 false), !noalias !10446
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i419

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i419: ; preds = %bb.cw, %bb.cu, %bb.cs
  %.sroa.65.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.cu ], [ %i.abs, %bb.cw ], [ %i.abs, %bb.cs ]
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.cu ], [ %i.abu, %bb.cw ], [ %i.abq, %bb.cs ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.cu ], [ %i.abs, %bb.cw ], [ %i.abo, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !10445
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10448
  %i.abw = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 96, i64 noundef range(i64 1, 9) 8) #43, !noalias !10448 ; 6 uses
  %i.abx = icmp eq ptr %i.abw, null
  br i1 %i.abx, label %bb.cx, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i

bb.cx:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i419
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #46, !noalias !10449
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i419
  store i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i, ptr %i.abw, align 8, !noalias !10449
  %.sroa.412.0..sroa_idx.i.i420 = getelementptr inbounds nuw i8, ptr %i.abw, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i420, align 8, !noalias !10449
  %.sroa.513.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.abw, i64 16
  store i64 %.sroa.65.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !noalias !10449
  store i64 4, ptr %i.ak, align 8, !noalias !10438
  %.sroa.4.0..sroa_idx.i.i421 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  store ptr %i.abw, ptr %.sroa.4.0..sroa_idx.i.i421, align 8, !noalias !10438
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !10438
  call void @llvm.experimental.noalias.scope.decl(metadata !10450)
  call void @llvm.experimental.noalias.scope.decl(metadata !10451)
  %i.aby = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.abz = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  br label %bb.cy

bb.cy:                                            ; preds = %bb.dh, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i
  %i.aca = phi ptr [ %i.abw, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i ], [ %i.act, %bb.dh ]
  %.sroa.8.0.copyload.i = phi i64 [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i ], [ %i.acv, %bb.dh ] ; 6 uses
  %.sroa.0.0.i.i.i.i422 = phi ptr [ %i.abh, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i ], [ %i.acd, %bb.dh ]
  br label %bb.cz

bb.cz:                                            ; preds = %bb.da, %bb.cy
  %i.acb = phi ptr [ %i.acd, %bb.da ], [ %.sroa.0.0.i.i.i.i422, %bb.cy ] ; 5 uses
  %i.acc = icmp eq ptr %i.acb, %i.abd
  br i1 %i.acc, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters10filter_map9FilterMapINtNtB1D_3map3MapINtNtNtB1H_5slice4iter4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENCNvMs4_B3k_NtB3k_7MKeyMap4keys0ENCNvMs0_NtNtB3m_6parser6parserNtB4G_6Parser18did_you_mean_error0EE11spec_extendB3m_.exit.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acb, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10452)
  call void @llvm.experimental.noalias.scope.decl(metadata !10453)
  call void @llvm.experimental.noalias.scope.decl(metadata !10454)
  call void @llvm.experimental.noalias.scope.decl(metadata !10455)
  %i.ace = load i32, ptr %i.acb, align 8, !range !31, !alias.scope !10456, !noalias !10457, !noundef !11
  %i.acf = icmp eq i32 %i.ace, 1
  br i1 %i.acf, label %bb.db, label %bb.cz

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !10458
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acb, i64 8
  %i.ach = load ptr, ptr %i.acg, align 8, !alias.scope !10456, !noalias !10457, !nonnull !11, !noundef !11
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acb, i64 16
  %i.acj = load i64, ptr %i.aci, align 8, !alias.scope !10456, !noalias !10457, !noundef !11
  call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ach, i64 noundef %i.acj) #43, !noalias !10459
  %i.ack = load i64, ptr %i.ai, align 8, !range !13, !noalias !10458, !noundef !11 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i423 = icmp eq i64 %i.ack, -1
  %i.acl = load ptr, ptr %i.aby, align 8, !noalias !10458 ; 2 uses
  %i.acm = load i64, ptr %i.abz, align 8, !noalias !10458 ; 8 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i423, label %bb.dc, label %bb.dg

bb.dc:                                            ; preds = %bb.db
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %i.acm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.de, label %bb.dd, !prof !21

bb.dd:                                            ; preds = %bb.dc
  %i.acn = icmp eq i64 %i.acm, 0
  br i1 %i.acn, label %bb.dg, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dd
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10460
  %i.aco = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.acm, i64 noundef range(i64 1, 9) 1) #43, !noalias !10460 ; 3 uses
  %i.acp = icmp eq ptr %i.aco, null
  br i1 %i.acp, label %bb.de, label %bb.df

bb.de:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dc
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.dc ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.acm) #46, !noalias !10459
  unreachable

bb.df:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aco, ptr nonnull align 1 %i.acl, i64 %i.acm, i1 false), !noalias !10459
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.dd, %bb.db
  %.sroa.65.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.dd ], [ %i.acm, %bb.df ], [ %i.acm, %bb.db ]
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.dd ], [ %i.aco, %bb.df ], [ %i.acl, %bb.db ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.dd ], [ %i.acm, %bb.df ], [ %i.ack, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !10458
  %i.acq = icmp samesign ult i64 %.sroa.8.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.acq)
  %i.acr = load i64, ptr %i.ak, align 8, !range !12, !alias.scope !10461, !noalias !10438, !noundef !11
  %i.acs = icmp eq i64 %.sroa.8.0.copyload.i, %i.acr
  br i1 %i.acs, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, label %bb.dh

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %bb.dg
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak, i64 noundef %.sroa.8.0.copyload.i, i64 noundef 1, i64 noundef 8, i64 noundef 24) #43, !noalias !10449
  %.pre.i.i424 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i421, align 8, !alias.scope !10461, !noalias !10438
  br label %bb.dh

bb.dh:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, %bb.dg
  %i.act = phi ptr [ %.pre.i.i424, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ], [ %i.aca, %bb.dg ] ; 2 uses
  %i.acu = getelementptr inbounds nuw [24 x i8], ptr %i.act, i64 %.sroa.8.0.copyload.i ; 3 uses
end_hunk_3
begin_hunk_4_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a

bb.il:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit278.thread844
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.56.0..sroa_idx.i.i281) #42, !noalias !10691
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8push_mutCsfu0rQaTkGUu_12clap_builder.exit273

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8push_mutCsfu0rQaTkGUu_12clap_builder.exit273: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit278.thread844, %bb.il
  %i.bdh = load ptr, ptr %.sroa.67.0..sroa_idx.i.i282, align 8, !alias.scope !10690, !noalias !10691, !nonnull !11, !noundef !11
  %i.bdi = getelementptr inbounds nuw [24 x i8], ptr %i.bdh, i64 %i.bde ; 3 uses
  store i64 %i.jv, ptr %i.bdi, align 8
  %.sroa.4714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bdi, i64 8
  store ptr %i.bdd, ptr %.sroa.4714.0..sroa_idx, align 8
  %.sroa.5715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bdi, i64 16
  store i64 %i.jv, ptr %.sroa.5715.0..sroa_idx, align 8
  %i.bdj = add i64 %i.bde, 1                      ; 4 uses
  store i64 %i.bdj, ptr %.sroa.78.0..sroa_idx.i.i283, align 8, !alias.scope !10690, !noalias !10691
  call void @llvm.experimental.noalias.scope.decl(metadata !10692)
  call void @llvm.experimental.noalias.scope.decl(metadata !10693)
  %i.bdk = load i64, ptr %1, align 8, !range !15, !alias.scope !10692, !noalias !10694, !noundef !11
  %.not.i267 = icmp eq i64 %i.bdk, 2
  br i1 %.not.i267, label %bb.ip, label %bb.im

bb.im:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8push_mutCsfu0rQaTkGUu_12clap_builder.exit273
  %i.bdl = load i64, ptr %.sroa.910.0..sroa_idx.i.i285, align 8, !alias.scope !10692, !noalias !10694, !noundef !11 ; 2 uses
  %i.bdm = load i64, ptr %i.bct, align 8, !alias.scope !10693, !noalias !10695, !noundef !11
  %i.bdn = icmp eq i64 %i.bdl, %i.bdm
  br i1 %i.bdn, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.bdo = icmp ult i64 %i.bdj, 384307168202282326
  call void @llvm.assume(i1 %i.bdo), !noalias !10285
  br label %bb.ip

bb.io:                                            ; preds = %bb.im
  %i.bdp = load ptr, ptr %i.bcu, align 8, !alias.scope !10693, !noalias !10695, !nonnull !11, !noundef !11
  %i.bdq = load ptr, ptr %.sroa.89.0..sroa_idx.i.i284, align 8, !alias.scope !10692, !noalias !10694, !nonnull !11, !noundef !11
  %bcmp.i271 = call i32 @bcmp(ptr nonnull %i.bdq, ptr nonnull %i.bdp, i64 %i.bdl), !noalias !10696
  %i.bdr = icmp eq i32 %bcmp.i271, 0
  %i.bds = icmp ult i64 %i.bdj, 384307168202282326
  call void @llvm.assume(i1 %i.bds), !noalias !10285
  %spec.select.i272 = select i1 %i.bdr, i64 %i.bdj, i64 0
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.in, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8push_mutCsfu0rQaTkGUu_12clap_builder.exit273
  %.sroa.0.0.i268 = phi i64 [ 0, %bb.in ], [ 0, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8push_mutCsfu0rQaTkGUu_12clap_builder.exit273 ], [ %spec.select.i272, %bb.io ]
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bck, i64 16
  %.sroa.03.0.copyload.i = load i64, ptr %i.bdt, align 8, !alias.scope !10693, !noalias !10695
  %i.bdu = trunc nuw i64 %.sroa.03.0.copyload.i to i1
  br i1 %i.bdu, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher15needs_more_vals.exit, label %bb.iq, !prof !16

bb.iq:                                            ; preds = %bb.ip
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @144) #44, !noalias !10696
  unreachable

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher15needs_more_vals.exit: ; preds = %bb.ip
  %.sroa.5.0..sroa_idx.i269 = getelementptr inbounds nuw i8, ptr %i.bck, i64 32
  %.sroa.5.0.copyload.i270 = load i64, ptr %.sroa.5.0..sroa_idx.i269, align 8, !alias.scope !10693, !noalias !10695
  %i.bdv = icmp ult i64 %.sroa.0.0.i268, %.sroa.5.0.copyload.i270
  br i1 %i.bdv, label %.thread850, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16check_terminator.exit293

bb.ir:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i276
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bdb, ptr nonnull align 1 %i.jt, i64 %i.jv, i1 false), !noalias !10285
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit278.thread844

.thread850:                                       ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher15needs_more_vals.exit
  %.val190.i = load ptr, ptr %i.bcu, align 8, !nonnull !11, !noundef !11
  %.val191.i = load i64, ptr %i.bct, align 8, !noundef !11
  br label %bb.is

bb.is:                                            ; preds = %.thread850, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16check_terminator.exit293
  %.sroa.070.0.i856 = phi i64 [ 1, %.thread850 ], [ 0, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16check_terminator.exit293 ] ; 2 uses
  %.sroa.571.0.i855 = phi ptr [ %.val190.i, %.thread850 ], [ undef, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16check_terminator.exit293 ]
  %.sroa.6.0.i854 = phi i64 [ %.val191.i, %.thread850 ], [ undef, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16check_terminator.exit293 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe), !noalias !10288
  br label %.backedge

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16check_terminator.exit293: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher15needs_more_vals.exit, %bb.ig
  store i64 -9223372036854775806, ptr %i.fe, align 8, !noalias !10288
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser6parser11ParseResultEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.fe) #43, !noalias !10285, !inline_history !8602
  br label %bb.is

.backedge:                                        ; preds = %bb.fh, %bb.hx, %bb.is, %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit304.thread, %bb.iw, %bb.ix, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16check_terminator.exit, %bb.kr, %bb.ks
  %.sroa.0686.0.be = phi i8 [ 1, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16check_terminator.exit ], [ 1, %bb.ks ], [ 1, %bb.kr ], [ %.sroa.0686.1, %bb.is ], [ %.sroa.0686.10818, %bb.fh ], [ %.sroa.0686.9822, %bb.hx ], [ %.sroa.0686.01812, %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit304.thread ], [ %.sroa.0686.01812, %bb.iw ], [ %.sroa.0686.01812, %bb.ix ] ; 2 uses
  %.sroa.0682.0.be = phi i64 [ %i.bmt, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16check_terminator.exit ], [ %.sroa.072.0.i, %bb.ks ], [ %i.bnt, %bb.kr ], [ %.sroa.0682.01814, %bb.is ], [ %.sroa.0682.01814, %bb.fh ], [ %.sroa.0682.01814, %bb.hx ], [ %.sroa.0682.3, %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit304.thread ], [ %.sroa.0682.3, %bb.iw ], [ %.sroa.0682.3, %bb.ix ]
  %.sroa.24.0.be = phi i64 [ undef, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16check_terminator.exit ], [ %.val189.i, %bb.ks ], [ undef, %bb.kr ], [ %.sroa.6.0.i854, %bb.is ], [ %.sroa.24.2, %bb.fh ], [ %.sroa.24.3827, %bb.hx ], [ %.sroa.24.01815, %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit304.thread ], [ %.sroa.24.01815, %bb.iw ], [ %.sroa.24.01815, %bb.ix ]
  %.sroa.12.0.be = phi ptr [ undef, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16check_terminator.exit ], [ %.val188.i, %bb.ks ], [ undef, %bb.kr ], [ %.sroa.571.0.i855, %bb.is ], [ %.sroa.12.2, %bb.fh ], [ %.sroa.12.3829, %bb.hx ], [ %.sroa.12.01816, %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit304.thread ], [ %.sroa.12.01816, %bb.iw ], [ %.sroa.12.01816, %bb.ix ]
  %.sroa.0.0797.be = phi i64 [ 0, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16check_terminator.exit ], [ 2, %bb.ks ], [ 0, %bb.kr ], [ %.sroa.070.0.i856, %bb.is ], [ %.sroa.0.2, %bb.fh ], [ %i.baj, %bb.hx ], [ %.sroa.0.07971817, %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit304.thread ], [ %.sroa.0.07971817, %bb.iw ], [ %.sroa.0.07971817, %bb.ix ]
  %.be = phi i64 [ 0, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16check_terminator.exit ], [ 2, %bb.ks ], [ 0, %bb.kr ], [ %.sroa.070.0.i856, %bb.is ], [ %.sroa.0.2, %bb.fh ], [ %i.baj, %bb.hx ], [ %i.jq, %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit304.thread ], [ %i.jq, %bb.iw ], [ %i.jq, %bb.ix ]
  %.sroa.013.0.i.be = phi i8 [ %spec.select182.i, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16check_terminator.exit ], [ %spec.select182.i, %bb.ks ], [ %spec.select182.i, %bb.kr ], [ 0, %bb.is ], [ 0, %bb.fh ], [ 0, %bb.hx ], [ 1, %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit304.thread ], [ 1, %bb.iw ], [ 1, %bb.ix ]
  %.be1010 = phi i64 [ %i.bmt, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16check_terminator.exit ], [ %.sroa.072.0.i, %bb.ks ], [ %i.bnt, %bb.kr ], [ %i.jp, %bb.is ], [ %i.jp, %bb.fh ], [ %i.jp, %bb.hx ], [ %i.bek, %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit304.thread ], [ %i.bek, %bb.iw ], [ %i.bek, %bb.ix ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy), !noalias !10288
  %.val216.i = load i64, ptr %i.hw, align 8, !alias.scope !10287, !noalias !10292, !noundef !11
  %i.bdw = load i64, ptr %i.ga, align 8, !alias.scope !10697, !noalias !10285, !noundef !11 ; 3 uses
  %i.bdx = icmp ult i64 %i.bdw, %.val216.i
  br i1 %i.bdx, label %bb.b, label %_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs4next.exit.thread

bb.it:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getjE0EBU_.exit.i302
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.jy, i64 136
  %i.bdz = load ptr, ptr %i.bdy, align 8, !alias.scope !10679, !noalias !10680, !nonnull !11, !noundef !11
  %i.bea = getelementptr inbounds nuw [600 x i8], ptr %i.bdz, i64 %i.bcb ; 2 uses
  %i.beb = getelementptr i8, ptr %i.bea, i64 568
  %.val250.i = load ptr, ptr %i.beb, align 8, !noalias !10285, !noundef !11 ; 2 uses
  %i.bec = getelementptr i8, ptr %i.bea, i64 576
  %.val251.i = load i64, ptr %i.bec, align 8, !noalias !10285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !10285
  call void @llvm.experimental.noalias.scope.decl(metadata !10698), !noalias !10285
  %.not.i.i264 = icmp ne ptr %.val250.i, null
  %i.bed = icmp eq i64 %.val251.i, 2
  %or.cond.i.i265 = select i1 %.not.i.i264, i1 %i.bed, i1 false
  br i1 %or.cond.i.i265, label %bb.iu, label %_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB6_6Parser5parses0_0Ba_.exit.thread

bb.iu:                                            ; preds = %bb.it
  %i.bee = load i16, ptr %i.jt, align 1
  %i.bef = load i16, ptr %.val250.i, align 1
  %i.beg = icmp ne i16 %i.bee, %i.bef
  %i.beh = zext i1 %i.beg to i32
  %i.bei = icmp eq i32 %i.beh, 0
  br i1 %i.bei, label %bb.iv, label %_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB6_6Parser5parses0_0Ba_.exit.thread

_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB6_6Parser5parses0_0Ba_.exit.thread: ; preds = %bb.iu, %bb.it
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !10285
  br label %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit304.thread

bb.iv:                                            ; preds = %bb.iu
  store i64 -9223372036854775806, ptr %i.bo, align 8, !alias.scope !10698, !noalias !10699
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser6parser11ParseResultEBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.bo) #43, !noalias !10285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !10285
  %i.bej = add i64 %i.jp, 1                       ; 2 uses
  br label %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit304.thread

_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit304.thread: ; preds = %bb.id, %bb.ic, %_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB6_6Parser5parses0_0Ba_.exit.thread, %bb.iv
  %.sroa.0682.3 = phi i64 [ %.sroa.0682.01814, %_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB6_6Parser5parses0_0Ba_.exit.thread ], [ %i.bej, %bb.iv ], [ %.sroa.0682.01814, %bb.ic ], [ %.sroa.0682.01814, %bb.id ] ; 3 uses
  %i.bek = phi i64 [ %i.jp, %_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB6_6Parser5parses0_0Ba_.exit.thread ], [ %i.bej, %bb.iv ], [ %i.jp, %bb.ic ], [ %i.jp, %bb.id ] ; 3 uses
  %i.bel = load i64, ptr %1, align 8, !range !15, !alias.scope !10700, !noalias !10285, !noundef !11 ; 2 uses
  %.not.i263 = icmp eq i64 %i.bel, 2
  br i1 %.not.i263, label %.backedge, label %bb.iw

bb.iw:                                            ; preds = %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit304.thread
  %i.bem = load i64, ptr %.sroa.78.0..sroa_idx.i.i283, align 8, !alias.scope !10700, !noalias !10285, !noundef !11 ; 2 uses
  %i.ben = icmp ult i64 %i.bem, 384307168202282326
  call void @llvm.assume(i1 %i.ben), !noalias !10285
  %i.beo = trunc nuw i64 %i.bel to i1
  br i1 %i.beo, label %.backedge, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  store i64 1, ptr %1, align 8, !alias.scope !10701, !noalias !10285
  store i64 %i.bem, ptr %i.jl, align 8, !alias.scope !10701, !noalias !10285
  br label %.backedge

bb.iy:                                            ; preds = %bb.d
  %i.bep = load ptr, ptr %i.gc, align 8, !alias.scope !10285, !noalias !10289, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.beq = getelementptr i8, ptr %i.bep, i64 136
  %.val209.i = load ptr, ptr %i.beq, align 8, !noalias !10285, !nonnull !11, !noundef !11 ; 5 uses
  %i.ber = getelementptr i8, ptr %i.bep, i64 144
  %.val210.i = load i64, ptr %i.ber, align 8, !noalias !10285, !noundef !11 ; 6 uses
  %.idx952.a = mul nuw nsw i64 %.val210.i, 600
  %i.bes = getelementptr inbounds nuw i8, ptr %.val209.i, i64 %.idx952.a
  %.not14.i = icmp eq i64 %.val210.i, 0
  br i1 %.not14.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread, label %.lr.ph.i255

.lr.ph.i255:                                      ; preds = %bb.iy, %.backedge.i
  %i.bet = phi ptr [ %i.beu, %.backedge.i ], [ %.val209.i, %bb.iy ] ; 9 uses
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bet, i64 600 ; 2 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bet, i64 552
  %i.bew = load ptr, ptr %i.bev, align 8, !alias.scope !10702, !noalias !10703, !noundef !11
  %.not.i.i.i256 = icmp eq ptr %i.bew, null
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bet, i64 584
  %i.bey = load i32, ptr %i.bex, align 8, !range !45, !alias.scope !10702, !noalias !10703
  %.not1.i.i.i257 = icmp eq i32 %i.bey, -1
  %or.cond.i.i258 = select i1 %.not.i.i.i256, i1 %.not1.i.i.i257, i1 false
  br i1 %or.cond.i.i258, label %bb.iz, label %.backedge.i

bb.iz:                                            ; preds = %.lr.ph.i255
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bet, i64 16
  %.sroa.04.0.copyload.i.i.i.i = load i64, ptr %i.bez, align 8, !alias.scope !10704, !noalias !10703
  %i.bfa = trunc nuw i64 %.sroa.04.0.copyload.i.i.i.i to i1
  %.sroa.5.0..sroa_idx.i.i.i.i259 = getelementptr inbounds nuw i8, ptr %i.bet, i64 32
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i259, align 8, !alias.scope !10704, !noalias !10703
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bet, i64 24
  %.sroa.45.0.copyload.i.i.i.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i.i.i, align 8, !alias.scope !10704, !noalias !10703 ; 2 uses
  %i.bfb = icmp ne i64 %.sroa.45.0.copyload.i.i.i.i, %.sroa.5.0.copyload.i.i.i.i
  %i.bfc = icmp ugt i64 %.sroa.45.0.copyload.i.i.i.i, 1
  %i.bfd = or i1 %i.bfb, %i.bfc
  %brmerge.i.i.i.i = select i1 %i.bfa, i1 %i.bfd, i1 false
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bet, i64 596
  %i.bff = load i8, ptr %i.bfe, align 4, !range !53, !alias.scope !10704, !noalias !10703
  %i.bfg = icmp eq i8 %i.bff, 1
  %or.cond.i.i.i.i260 = select i1 %brmerge.i.i.i.i, i1 true, i1 %i.bfg
  br i1 %or.cond.i.i.i.i260, label %.split.i, label %.backedge.i

.split.i:                                         ; preds = %bb.iz
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bet, i64 40
  %i.bfi = load i64, ptr %i.bfh, align 8, !range !14, !alias.scope !10704, !noalias !10703, !noundef !11
  %i.bfj = trunc nuw i64 %i.bfi to i1
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bet, i64 48
  %i.bfl = load i64, ptr %i.bfk, align 8, !alias.scope !10704, !noalias !10703
  %.sroa.01.0.i.i.i.i261 = select i1 %i.bfj, i64 %i.bfl, i64 0
  %.not.i262 = icmp eq i64 %.sroa.0.0.i.i.i667, %.sroa.01.0.i.i.i.i261
  br i1 %.not.i262, label %.backedge.i, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.split.i
  %i.bfm = icmp eq i64 %.val210.i, 1
  br i1 %i.bfm, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %.val210.i, -2
  br label %.preheader

.backedge.i:                                      ; preds = %.split.i, %bb.iz, %.lr.ph.i255
  %.not15.i = icmp eq ptr %i.beu, %i.bes
  br i1 %.not15.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread, label %.lr.ph.i255

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.bfy, %.preheader ] ; 3 uses
  %.sroa.02.0.i = phi ptr [ null, %.preheader.preheader.new ], [ %spec.select.i.i250.1, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.bfn = getelementptr inbounds nuw [600 x i8], ptr %.val209.i, i64 %.sroa.04.0.i ; 3 uses
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bfn, i64 552
  %i.bfp = load ptr, ptr %i.bfo, align 8, !alias.scope !10705, !noalias !10706, !noundef !11
  %.not.i.i.i247 = icmp eq ptr %i.bfp, null
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bfn, i64 584
  %i.bfr = load i32, ptr %i.bfq, align 8, !range !45, !alias.scope !10705, !noalias !10706
  %.not1.i.i.i248 = icmp eq i32 %i.bfr, -1
  %or.cond.i.i249 = select i1 %.not.i.i.i247, i1 %.not1.i.i.i248, i1 false
  %spec.select.i.i250 = select i1 %or.cond.i.i249, ptr %i.bfn, ptr %.sroa.02.0.i
  %i.bfs = getelementptr inbounds nuw [600 x i8], ptr %.val209.i, i64 %.sroa.04.0.i ; 3 uses
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfs, i64 600
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bfs, i64 1152
  %i.bfv = load ptr, ptr %i.bfu, align 8, !alias.scope !10705, !noalias !10706, !noundef !11
  %.not.i.i.i247.1 = icmp eq ptr %i.bfv, null
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfs, i64 1184
  %i.bfx = load i32, ptr %i.bfw, align 8, !range !45, !alias.scope !10705, !noalias !10706
  %.not1.i.i.i248.1 = icmp eq i32 %i.bfx, -1
  %or.cond.i.i249.1 = select i1 %.not.i.i.i247.1, i1 %.not1.i.i.i248.1, i1 false
  %spec.select.i.i250.1 = select i1 %or.cond.i.i249.1, ptr %i.bft, ptr %spec.select.i.i250 ; 3 uses
  %i.bfy = add nuw i64 %.sroa.04.0.i, 2           ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa: ; preds = %.preheader
  %5 = trunc i64 %.val210.i to i1
  br i1 %5, label %.preheader.epil.preheader, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.bfy, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi ptr [ null, %.preheader.preheader ], [ %spec.select.i.i250.1, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa ]
  %lcmp.mod5351 = trunc i64 %.val210.i to i1
  call void @llvm.assume(i1 %lcmp.mod5351)
  %i.bfz = getelementptr inbounds nuw [600 x i8], ptr %.val209.i, i64 %.sroa.04.0.i.epil.init ; 3 uses
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfz, i64 552
  %i.bgb = load ptr, ptr %i.bga, align 8, !alias.scope !10705, !noalias !10706, !noundef !11
  %.not.i.i.i247.epil = icmp eq ptr %i.bgb, null
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bfz, i64 584
  %i.bgd = load i32, ptr %i.bgc, align 8, !range !45, !alias.scope !10705, !noalias !10706
  %.not1.i.i.i248.epil = icmp eq i32 %i.bgd, -1
  %or.cond.i.i249.epil = select i1 %.not.i.i.i247.epil, i1 %.not1.i.i.i248.epil, i1 false
  %spec.select.i.i250.epil = select i1 %or.cond.i.i249.epil, ptr %i.bfz, ptr %.sroa.02.0.i.epil.init
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa, %.preheader.epil.preheader
  %spec.select.i.i250.lcssa = phi ptr [ %spec.select.i.i250.1, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa ], [ %spec.select.i.i250.epil, %.preheader.epil.preheader ] ; 2 uses
  %.not165.i = icmp eq ptr %spec.select.i.i250.lcssa, null
  br i1 %.not165.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread, label %bb.jc

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread: ; preds = %.backedge.i, %bb.iy, %bb.jc, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit, %bb.d
  %.sroa.073.0.i = phi i1 [ true, %bb.d ], [ true, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit ], [ %.not.i239, %bb.jc ], [ true, %bb.iy ], [ true, %.backedge.i ] ; 2 uses
  %i.bge = load ptr, ptr %i.gc, align 8, !alias.scope !10285, !noalias !10289, !nonnull !11, !align !17, !noundef !11 ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10707)
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bge, i64 160 ; 2 uses
  %i.bgg = load ptr, ptr %i.bgf, align 8, !alias.scope !10707, !noalias !10708, !nonnull !11, !noundef !11 ; 2 uses
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bge, i64 168 ; 2 uses
  %i.bgi = load i64, ptr %i.bgh, align 8, !alias.scope !10707, !noalias !10708, !noundef !11 ; 2 uses
  %.idx4608.a = shl nuw nsw i64 %i.bgi, 5
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgg, i64 %.idx4608.a
  %i.bgk = icmp eq i64 %i.bgi, 0
  br i1 %i.bgk, label %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit246.thread, label %.lr.ph4546

bb.ja:                                            ; preds = %.lr.ph4546
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bgn, i64 32 ; 2 uses
  %i.bgm = icmp eq ptr %i.bgl, %i.bgj
  br i1 %i.bgm, label %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit246.thread, label %.lr.ph4546

.lr.ph4546:                                       ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread, %bb.ja
  %i.bgn = phi ptr [ %i.bgl, %bb.ja ], [ %i.bgg, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread ] ; 4 uses
  %.val.i.i.i241 = load i32, ptr %i.bgn, align 8, !range !31, !noalias !10709, !noundef !11
  %i.bgo = getelementptr i8, ptr %i.bgn, i64 8
  %.val1.i.i.i242 = load i64, ptr %i.bgo, align 8, !noalias !10709
  %i.bgp = icmp eq i32 %.val.i.i.i241, 2
  %i.bgq = icmp eq i64 %.val1.i.i.i242, %.sroa.0682.01814
  %.sroa.0.0.i.i.i.i243 = select i1 %i.bgp, i1 %i.bgq, i1 false
  br i1 %.sroa.0.0.i.i.i.i243, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getjE0EBU_.exit.i244, label %bb.ja

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getjE0EBU_.exit.i244: ; preds = %.lr.ph4546
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgn, i64 24
  %i.bgs = load i64, ptr %i.bgr, align 8, !noalias !10710, !noundef !11 ; 3 uses
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bge, i64 144
  %i.bgu = load i64, ptr %i.bgt, align 8, !alias.scope !10707, !noalias !10708, !noundef !11 ; 2 uses
  %i.bgv = icmp ult i64 %i.bgs, %i.bgu
  br i1 %i.bgv, label %bb.jd, label %bb.jb

bb.jb:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getjE0EBU_.exit.i244
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bgs, i64 noundef %i.bgu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #44, !noalias !10710
  unreachable

bb.jc:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit
  %i.bgw = getelementptr i8, ptr %spec.select.i.i250.lcssa, i64 592
  %.val252.i = load i32, ptr %i.bgw, align 8, !noalias !10285, !noundef !11
  %i.bgx = and i32 %.val252.i, 256
  %.not.i239 = icmp ne i32 %i.bgx, 0
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread

bb.jd:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap3KeyENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCINvMs4_BS_NtBS_7MKeyMap3getjE0EBU_.exit.i244
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bge, i64 136
  %i.bgz = load ptr, ptr %i.bgy, align 8, !alias.scope !10707, !noalias !10708, !nonnull !11, !noundef !11
  %i.bha = getelementptr inbounds nuw [600 x i8], ptr %i.bgz, i64 %i.bgs
  %i.bhb = getelementptr i8, ptr %i.bha, i64 568
  %.val253.i = load ptr, ptr %i.bhb, align 8, !noalias !10285, !noundef !11
  %.not.i238 = icmp ne ptr %.val253.i, null
  br label %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit246.thread

_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit246.thread: ; preds = %bb.ja, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread, %bb.jd
  %.sroa.078.0.i = phi i1 [ %.not.i238, %bb.jd ], [ false, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread ], [ false, %bb.ja ] ; 2 uses
  %i.bhc = getelementptr i8, ptr %i.bge, i64 700
  %i.bhd = load <2 x i32>, ptr %i.bhc, align 4, !noalias !10285
  %i.bhe = and <2 x i32> %i.bhd, splat (i32 16)
  %i.bhf = icmp ne <2 x i32> %i.bhe, zeroinitializer ; 2 uses
  %i.bhg = extractelement <2 x i1> %i.bhf, i64 0
  %i.bhh = extractelement <2 x i1> %i.bhf, i64 1
  %.sroa.0.0.i237 = select i1 %i.bhg, i1 true, i1 %i.bhh ; 2 uses
  %brmerge.not.i = and i1 %i.ki, %.sroa.0.0.i237
  br i1 %brmerge.not.i, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit246.thread
  %brmerge181.i = or i1 %.sroa.073.0.i, %.sroa.078.0.i
  br i1 %brmerge181.i, label %bb.jg, label %bb.jh

bb.jf:                                            ; preds = %_RINvMs4_NtCsfu0rQaTkGUu_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_.exit246.thread
  %or.cond.not.i = and i1 %.sroa.073.0.i, %i.jx
  %brmerge.i = or i1 %or.cond.not.i, %.sroa.078.0.i
  br i1 %brmerge.i, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf, %bb.je
  br i1 %i.jx, label %bb.jq, label %bb.jn

bb.jh:                                            ; preds = %bb.jf, %bb.je
  %i.bhi = call { ptr, i64 } @_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs4peek(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ga) #43, !noalias !10285, !inline_history !8602 ; 2 uses
  %i.bhj = extractvalue { ptr, i64 } %i.bhi, 0    ; 2 uses
  %.not.i = icmp eq ptr %i.bhj, null
  br i1 %.not.i, label %bb.jm, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.bhk = extractvalue { ptr, i64 } %i.bhi, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd), !noalias !10288
  store ptr %i.bhj, ptr %i.fd, align 8, !noalias !10288
  store i64 %i.bhk, ptr %i.jm, align 8, !noalias !10288
  %i.bhl = getelementptr i8, ptr %i.bge, i64 136
  %.val205.i = load ptr, ptr %i.bhl, align 8, !noalias !10285, !nonnull !11, !noundef !11 ; 4 uses
  %i.bhm = getelementptr i8, ptr %i.bge, i64 144
  %.val206.i = load i64, ptr %i.bhm, align 8, !noalias !10285, !noundef !11 ; 2 uses
  %.idx953 = mul nuw nsw i64 %.val206.i, 600
  %i.bhn = getelementptr inbounds nuw i8, ptr %.val205.i, i64 %.idx953 ; 3 uses
  %i.bho = icmp eq i64 %.val206.i, 0
  br i1 %i.bho, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread865, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ji, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i
  %i.bhp = phi ptr [ %i.bhq, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i ], [ %.val205.i, %bb.ji ] ; 7 uses
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhp, i64 600 ; 2 uses
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhp, i64 552
  %i.bhs = load ptr, ptr %i.bhr, align 8, !alias.scope !10711, !noalias !10712, !noundef !11
  %.not.i.i.i233 = icmp eq ptr %i.bhs, null
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bhp, i64 584
  %i.bhu = load i32, ptr %i.bht, align 8, !range !45, !alias.scope !10711, !noalias !10712
  %.not1.i.i.i = icmp eq i32 %i.bhu, -1
  %or.cond.i.i234 = select i1 %.not.i.i.i233, i1 %.not1.i.i.i, i1 false
  br i1 %or.cond.i.i234, label %bb.jj, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i

bb.jj:                                            ; preds = %.lr.ph.i
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhp, i64 40
  %i.bhw = load i64, ptr %i.bhv, align 8, !range !14, !alias.scope !10713, !noalias !10712, !noundef !11
  %i.bhx = trunc nuw i64 %i.bhw to i1
  br i1 %i.bhx, label %_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB6_6Parser5parses5_0Ba_.exit.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i

_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB6_6Parser5parses5_0Ba_.exit.i.i.i: ; preds = %bb.jj
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhp, i64 48
  %i.bhz = load i64, ptr %i.bhy, align 8, !alias.scope !10713, !noalias !10712
  %.fr.i.i.i = freeze i64 %i.bhz
  %i.bia = icmp eq i64 %.fr.i.i.i, %.sroa.0682.01814
  br i1 %i.bia, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_NCNvMs_NtNtBP_6parser6parserNtB5k_6Parser5parses5_0E0E0B3c_EBP_.exit, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i: ; preds = %_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB6_6Parser5parses5_0Ba_.exit.i.i.i, %bb.jj, %.lr.ph.i
  %i.bib = icmp eq ptr %i.bhq, %i.bhn
  br i1 %i.bib, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread865, label %.lr.ph.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_NCNvMs_NtNtBP_6parser6parserNtB5k_6Parser5parses5_0E0E0B3c_EBP_.exit: ; preds = %_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB6_6Parser5parses5_0Ba_.exit.i.i.i
  %i.bic = getelementptr i8, ptr %i.bhp, i64 536
  %.val259.i = load ptr, ptr %i.bic, align 8, !noalias !10285 ; 2 uses
  %i.bid = getelementptr i8, ptr %i.bhp, i64 544
  %.val260.i = load i64, ptr %i.bid, align 8, !noalias !10285 ; 4 uses
  br label %.lr.ph.i.i.i.i226

.lr.ph.i.i.i.i226:                                ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_NCNvMs_NtNtBP_6parser6parserNtB5k_6Parser5parses5_0E0E0B3c_EBP_.exit, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i227
  %i.bie = phi ptr [ %i.bif, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i227 ], [ %.val205.i, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_NCNvMs_NtNtBP_6parser6parserNtB5k_6Parser5parses5_0E0E0B3c_EBP_.exit ] ; 4 uses
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bie, i64 600 ; 2 uses
  %i.big = getelementptr inbounds nuw i8, ptr %i.bie, i64 544
  %i.bih = load i64, ptr %i.big, align 8, !noalias !10714, !noundef !11
  %i.bii = icmp eq i64 %i.bih, %.val260.i
  br i1 %i.bii, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i229, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i227

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i229: ; preds = %.lr.ph.i.i.i.i226
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bie, i64 536
  %i.bik = load ptr, ptr %i.bij, align 8, !noalias !10714, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i230 = call i32 @bcmp(ptr nonnull %i.bik, ptr nonnull readonly %.val259.i, i64 %.val260.i), !noalias !10714
  %i.bil = icmp eq i32 %bcmp.i.i.i.i.i230, 0
  br i1 %i.bil, label %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i227

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i227: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i229, %.lr.ph.i.i.i.i226
  %i.bim = icmp eq ptr %i.bif, %i.bhn
  br i1 %i.bim, label %.loopexit.i.i228, label %.lr.ph.i.i.i.i226

.loopexit.i.i228:                                 ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i227
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 99, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #44, !noalias !10715
  unreachable

_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i229
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bie, i64 592
  %i.bio = load i32, ptr %i.bin, align 8, !noalias !10716, !noundef !11
  %i.bip = and i32 %i.bio, 32
  %.not.i231 = icmp eq i32 %i.bip, 0
  br i1 %.not.i231, label %.lr.ph.i.i.i5.i, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread

.lr.ph.i.i.i5.i:                                  ; preds = %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit.i, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i6.i
  %i.biq = phi ptr [ %i.bir, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i6.i ], [ %.val205.i, %_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index.exit.i ] ; 4 uses
  %i.bir = getelementptr inbounds nuw i8, ptr %i.biq, i64 600 ; 2 uses
  %i.bis = getelementptr inbounds nuw i8, ptr %i.biq, i64 544
  %i.bit = load i64, ptr %i.bis, align 8, !noalias !10717, !noundef !11
  %i.biu = icmp eq i64 %i.bit, %.val260.i
  br i1 %i.biu, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i8.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i6.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i8.i: ; preds = %.lr.ph.i.i.i5.i
  %i.biv = getelementptr inbounds nuw i8, ptr %i.biq, i64 536
  %i.biw = load ptr, ptr %i.biv, align 8, !noalias !10717, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i9.i = call i32 @bcmp(ptr nonnull %i.biw, ptr nonnull readonly %.val259.i, i64 %.val260.i), !noalias !10717
end_hunk_4
begin_hunk_5_@_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output4help10write_help:bb.a

.split.i:                                         ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB4_12HelpTemplate20write_templated_help(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 69) #43
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB2_8AutoHelp10write_help.exit

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB2_8AutoHelp10write_help.exit: ; preds = %.split3.i, %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator23gather_direct_conflicts(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %1, ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val5 = load i64, ptr %i.c, align 8, !noundef !11 ; 2 uses
  %.idx.i = mul nuw nsw i64 %.val5, 600
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i
  %i.e = icmp eq i64 %.val5, 0
  br i1 %i.e, label %.loopexit6, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i
  %i.f = phi ptr [ %i.g, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i ], [ %.val, %bb.a ] ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 600 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 544
  %i.i = load i64, ptr %i.h, align 8, !noalias !12345, !noundef !11
  %i.j = icmp eq i64 %i.i, %.8.val
  br i1 %i.j, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 536
  %i.l = load ptr, ptr %i.k, align 8, !noalias !12345, !nonnull !11, !noundef !11 ; 3 uses
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.l, ptr nonnull %.0.val, i64 %.8.val), !noalias !12345
  %i.m = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.m, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i, %.lr.ph.i.i
  %i.n = icmp eq ptr %i.g, %i.d
  br i1 %i.n, label %.loopexit6, label %.lr.ph.i.i

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val10 = load ptr, ptr %i.o, align 8           ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val11 = load i64, ptr %i.p, align 8           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12346)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12347
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %.val17.i = load ptr, ptr %i.q, align 8, !alias.scope !12346, !noalias !12348, !nonnull !11, !noundef !11 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %.val18.i = load i64, ptr %i.r, align 8, !alias.scope !12346, !noalias !12348, !noundef !11 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12351)
  %i.s = shl nuw nsw i64 %.val18.i, 4             ; 2 uses
  %i.t = icmp eq i64 %.val18.i, 0
  br i1 %i.t, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !12352
  %i.u = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.s, i64 noundef range(i64 1, 9) 8) #43, !noalias !12352 ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.b, label %.lr.ph.preheader.i.i.i

bb.b:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.s) #46, !noalias !12353
  unreachable

.lr.ph.preheader.i.i.i:                           ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.val17.i, i64 %.val18.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.preheader.i.i.i
  %.sroa.0.022.i.i.i = phi ptr [ %i.aa, %bb.c ], [ %.val17.i, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.sroa.7.021.i.i.i = phi i64 [ %i.z, %bb.c ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.10.020.i.i.i = phi i64 [ %i.y, %bb.c ], [ %.val18.i, %.lr.ph.preheader.i.i.i ]
  %i.x = icmp eq ptr %.sroa.0.022.i.i.i, %i.w
  br i1 %i.x, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.y = add nsw i64 %.sroa.10.020.i.i.i, -1      ; 2 uses
  %i.z = add nuw nsw i64 %.sroa.7.021.i.i.i, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 16
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.sroa.7.021.i.i.i ; 2 uses
  %.val.i.i.i = load ptr, ptr %.sroa.0.022.i.i.i, align 8, !alias.scope !12351, !noalias !12354, !nonnull !11, !noundef !11
  %i.ac = getelementptr i8, ptr %.sroa.0.022.i.i.i, i64 8
  %.val13.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !12351, !noalias !12354, !noundef !11
  store ptr %.val.i.i.i, ptr %i.ab, align 8, !noalias !12353
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %.val13.i.i.i, ptr %i.ad, align 8, !noalias !12353
  %i.ae = icmp eq i64 %i.y, 0
  br i1 %i.ae, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i, label %.lr.ph.i.i.i

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i: ; preds = %bb.c, %.lr.ph.i.i.i, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit
  %.sroa.10.0.i30.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit ], [ %i.u, %.lr.ph.i.i.i ], [ %i.u, %bb.c ] ; 2 uses
  store i64 %.val18.i, ptr %i.a, align 8, !alias.scope !12355, !noalias !12356
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store ptr %.sroa.10.0.i30.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !12355, !noalias !12356
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 6 uses
  store i64 %.val18.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !12355, !noalias !12356
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %.idx.i14 = mul nuw nsw i64 %.val11, 96
  %i.af = getelementptr inbounds nuw i8, ptr %.val10, i64 %.idx.i14 ; 3 uses
  %i.ag = icmp eq i64 %.val11, 0
  br i1 %i.ag, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.thread.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i, %.loopexit.i
  %i.ah = phi ptr [ %i.dx, %.loopexit.i ], [ %.sroa.10.0.i30.i.i.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i ] ; 2 uses
  %i.ai = phi i64 [ %i.dy, %.loopexit.i ], [ %.val18.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i ] ; 5 uses
  %.sroa.0.018.i = phi ptr [ %i.ak, %.loopexit.i ], [ %.val10, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i ]
  br label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %.loopexit.i.i, %.lr.ph.i.preheader.i
  %i.aj = phi ptr [ %i.ak, %.loopexit.i.i ], [ %.sroa.0.018.i, %.lr.ph.i.preheader.i ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 96 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noalias !12357, !nonnull !11, !noundef !11 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noalias !12357, !noundef !11 ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ao, 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i15, %_RNCNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command14groups_for_arg00Bd_.exit.backedge.i.i.i.i.i
  %i.aq = phi ptr [ %i.ar, %_RNCNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command14groups_for_arg00Bd_.exit.backedge.i.i.i.i.i ], [ %i.am, %.lr.ph.i.i15 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.as = getelementptr i8, ptr %i.aq, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.as, align 8, !noalias !12358, !noundef !11
  %i.at = icmp eq i64 %.val3.i.i.i.i.i, %.8.val
  br i1 %i.at, label %.split.i.i.i.i.i, label %_RNCNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command14groups_for_arg00Bd_.exit.backedge.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i
  %.val2.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !noalias !12358, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val2.i.i.i.i.i, ptr nonnull readonly %i.l, i64 %.8.val), !noalias !12358
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.au, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.i, label %_RNCNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command14groups_for_arg00Bd_.exit.backedge.i.i.i.i.i

_RNCNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command14groups_for_arg00Bd_.exit.backedge.i.i.i.i.i: ; preds = %.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.not7.i.i.i.i.i = icmp eq ptr %i.ar, %i.ap
  br i1 %.not7.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i

.loopexit.i.i:                                    ; preds = %_RNCNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command14groups_for_arg00Bd_.exit.backedge.i.i.i.i.i, %.lr.ph.i.i15
  %i.av = icmp eq ptr %i.ak, %i.af
  br i1 %i.av, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.thread.i, label %.lr.ph.i.i15

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.i: ; preds = %.split.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !12347, !nonnull !11, !noundef !11
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.az = load i64, ptr %i.ay, align 8, !noalias !12347, !noundef !11 ; 2 uses
  br label %.lr.ph.i.i20.i

.lr.ph.i.i20.i:                                   ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.i
  %i.ba = phi ptr [ %i.bb, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i ], [ %.val10, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.i ] ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 96 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !12359, !noundef !11
  %i.be = icmp eq i64 %i.bd, %i.az
  br i1 %i.be, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i: ; preds = %.lr.ph.i.i20.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !12359, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.bg, ptr nonnull readonly %i.ax, i64 %i.az), !noalias !12359
  %i.bh = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bh, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i, %.lr.ph.i.i20.i
  %i.bi = icmp eq ptr %i.bb, %i.af
  br i1 %i.bi, label %.loopexit7.i, label %.lr.ph.i.i20.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.thread.i: ; preds = %.loopexit.i, %.loopexit.i.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i
  %i.bj = phi i64 [ %i.ai, %.loopexit.i.i ], [ %.val18.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i ], [ %i.dy, %.loopexit.i ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !12346, !noalias !12348, !nonnull !11, !noundef !11 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !12346, !noalias !12348, !noundef !11 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12360)
  %i.bo = load i64, ptr %i.a, align 8, !range !12, !alias.scope !12361, !noalias !12347, !noundef !11
  %i.bp = sub i64 %i.bo, %i.bj
  %i.bq = icmp ugt i64 %i.bn, %i.bp
  br i1 %i.bq, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.thread.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.thread.i: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.thread.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.bj, i64 noundef %i.bn, i64 noundef 8, i64 noundef 16) #43, !noalias !12347
  %.pre.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !12360, !noalias !12347
  %i.br = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !12360, !noalias !12347, !nonnull !11, !noundef !11
  br label %.preheader.i.preheader.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.thread.i
  %i.bs = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !12360, !noalias !12347, !nonnull !11, !noundef !11
  %i.bt = icmp eq i64 %i.bn, 0
  br i1 %i.bt, label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator27gather_arg_direct_conflicts.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.thread.i
  %i.bu = phi ptr [ %i.br, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.thread.i ], [ %i.bs, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i ] ; 3 uses
  %i.bv = phi i64 [ %.pre.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.thread.i ], [ %i.bj, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i ] ; 2 uses
  %i.bw = icmp eq i64 %i.bn, 1
  br i1 %i.bw, label %.preheader.i.i.epil.preheader, label %.preheader.i.preheader.i.new

.preheader.i.preheader.i.new:                     ; preds = %.preheader.i.preheader.i
  %unroll_iter121 = and i64 %i.bn, -2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.preheader.i.new
  %i.bx = phi i64 [ %i.bv, %.preheader.i.preheader.i.new ], [ %i.ci, %.preheader.i.i ] ; 3 uses
  %.sroa.01.0.i.i.i.i.i = phi i64 [ 0, %.preheader.i.preheader.i.new ], [ %i.cj, %.preheader.i.i ] ; 3 uses
  %niter122 = phi i64 [ 0, %.preheader.i.preheader.i.new ], [ %niter122.next.1, %.preheader.i.i ]
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.sroa.01.0.i.i.i.i.i ; 2 uses
  %.val11.i.i.i.i.i = load ptr, ptr %i.by, align 8, !noalias !12362, !nonnull !11, !noundef !11
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %.val12.i.i.i.i.i = load i64, ptr %i.bz, align 8, !noalias !12362, !noundef !11
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bx ; 2 uses
  store ptr %.val11.i.i.i.i.i, ptr %i.ca, align 8, !noalias !12363
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 %.val12.i.i.i.i.i, ptr %i.cb, align 8, !noalias !12364
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.sroa.01.0.i.i.i.i.i ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %.val11.i.i.i.i.i.1 = load ptr, ptr %i.cd, align 8, !noalias !12362, !nonnull !11, !noundef !11
  %i.ce = getelementptr i8, ptr %i.cc, i64 24
  %.val12.i.i.i.i.i.1 = load i64, ptr %i.ce, align 8, !noalias !12362, !noundef !11
  %i.cf = getelementptr [16 x i8], ptr %i.bu, i64 %i.bx ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 16
  store ptr %.val11.i.i.i.i.i.1, ptr %i.cg, align 8, !noalias !12363
  %i.ch = getelementptr i8, ptr %i.cf, i64 24
  store i64 %.val12.i.i.i.i.i.1, ptr %i.ch, align 8, !noalias !12364
  %i.ci = add i64 %i.bx, 2                        ; 3 uses
  %i.cj = add nuw i64 %.sroa.01.0.i.i.i.i.i, 2    ; 2 uses
  %niter122.next.1 = add i64 %niter122, 2         ; 2 uses
  %niter122.ncmp.1 = icmp eq i64 %niter122.next.1, %unroll_iter121
  br i1 %niter122.ncmp.1, label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator27gather_arg_direct_conflicts.exit.loopexit.unr-lcssa, label %.preheader.i.i

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !12347, !nonnull !11, !noundef !11 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !12347, !noundef !11 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12365)
  %i.co = load i64, ptr %i.a, align 8, !range !12, !alias.scope !12366, !noalias !12347, !noundef !11
  %i.cp = sub i64 %i.co, %i.ai
  %i.cq = icmp ugt i64 %i.cn, %i.cp
  br i1 %i.cq, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.thread.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.i, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.thread.i: ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ai, i64 noundef %i.cn, i64 noundef 8, i64 noundef 16) #43, !noalias !12347
  %.pre.i27.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !12365, !noalias !12347
  %.pre.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !12365, !noalias !12347
  br label %.preheader.i22.preheader.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.i: ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.i
  %i.cr = icmp eq i64 %i.cn, 0
  br i1 %i.cr, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i, label %.preheader.i22.preheader.i

.preheader.i22.preheader.i:                       ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.thread.i
  %i.cs = phi i64 [ %.pre.i27.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.thread.i ], [ %i.ai, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.i ] ; 2 uses
  %i.ct = phi ptr [ %.pre.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.thread.i ], [ %i.ah, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.i ] ; 5 uses
  %i.cu = icmp eq i64 %i.cn, 1
  br i1 %i.cu, label %.preheader.i22.i.epil.preheader, label %.preheader.i22.preheader.i.new

.preheader.i22.preheader.i.new:                   ; preds = %.preheader.i22.preheader.i
  %unroll_iter = and i64 %i.cn, -2
  br label %.preheader.i22.i

.preheader.i22.i:                                 ; preds = %.preheader.i22.i, %.preheader.i22.preheader.i.new
  %i.cv = phi i64 [ %i.cs, %.preheader.i22.preheader.i.new ], [ %i.dg, %.preheader.i22.i ] ; 3 uses
  %.sroa.01.0.i.i.i.i23.i = phi i64 [ 0, %.preheader.i22.preheader.i.new ], [ %i.dh, %.preheader.i22.i ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.i22.preheader.i.new ], [ %niter.next.1, %.preheader.i22.i ]
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %.sroa.01.0.i.i.i.i23.i ; 2 uses
  %.val11.i.i.i.i24.i = load ptr, ptr %i.cw, align 8, !noalias !12367, !nonnull !11, !noundef !11
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  %.val12.i.i.i.i25.i = load i64, ptr %i.cx, align 8, !noalias !12367, !noundef !11
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cv ; 2 uses
  store ptr %.val11.i.i.i.i24.i, ptr %i.cy, align 8, !noalias !12368
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i64 %.val12.i.i.i.i25.i, ptr %i.cz, align 8, !noalias !12369
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %.sroa.01.0.i.i.i.i23.i ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %.val11.i.i.i.i24.i.1 = load ptr, ptr %i.db, align 8, !noalias !12367, !nonnull !11, !noundef !11
  %i.dc = getelementptr i8, ptr %i.da, i64 24
  %.val12.i.i.i.i25.i.1 = load i64, ptr %i.dc, align 8, !noalias !12367, !noundef !11
  %i.dd = getelementptr [16 x i8], ptr %i.ct, i64 %i.cv ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  store ptr %.val11.i.i.i.i24.i.1, ptr %i.de, align 8, !noalias !12368
  %i.df = getelementptr i8, ptr %i.dd, i64 24
  store i64 %.val12.i.i.i.i25.i.1, ptr %i.df, align 8, !noalias !12369
  %i.dg = add i64 %i.cv, 2                        ; 3 uses
  %i.dh = add nuw i64 %.sroa.01.0.i.i.i.i23.i, 2  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i.loopexit.unr-lcssa, label %.preheader.i22.i

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i.loopexit.unr-lcssa: ; preds = %.preheader.i22.i
  %2 = trunc i64 %i.cn to i1
  br i1 %2, label %.preheader.i22.i.epil.preheader, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i

.preheader.i22.i.epil.preheader:                  ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i.loopexit.unr-lcssa, %.preheader.i22.preheader.i
  %.epil.init = phi i64 [ %i.cs, %.preheader.i22.preheader.i ], [ %i.dg, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.i.i.i23.i.epil.init = phi i64 [ 0, %.preheader.i22.preheader.i ], [ %i.dh, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i.loopexit.unr-lcssa ]
  %lcmp.mod114 = trunc i64 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod114)
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %.sroa.01.0.i.i.i.i23.i.epil.init ; 2 uses
  %.val11.i.i.i.i24.i.epil = load ptr, ptr %i.di, align 8, !noalias !12367, !nonnull !11, !noundef !11
  %i.dj = getelementptr i8, ptr %i.di, i64 8
  %.val12.i.i.i.i25.i.epil = load i64, ptr %i.dj, align 8, !noalias !12367, !noundef !11
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %.epil.init ; 2 uses
  store ptr %.val11.i.i.i.i24.i.epil, ptr %i.dk, align 8, !noalias !12368
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %.val12.i.i.i.i25.i.epil, ptr %i.dl, align 8, !noalias !12369
  %i.dm = add i64 %.epil.init, 1
  br label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i: ; preds = %.preheader.i22.i.epil.preheader, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i.loopexit.unr-lcssa, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.i
  %i.dn = phi ptr [ %i.ah, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.i ], [ %i.ct, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i.loopexit.unr-lcssa ], [ %i.ct, %.preheader.i22.i.epil.preheader ] ; 3 uses
  %storemerge.i.i.i26.i = phi i64 [ %i.ai, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i21.i ], [ %i.dg, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i.loopexit.unr-lcssa ], [ %i.dm, %.preheader.i22.i.epil.preheader ] ; 4 uses
  store i64 %storemerge.i.i.i26.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !12365, !noalias !12370
  %i.do = getelementptr inbounds nuw i8, ptr %i.ba, i64 89
  %i.dp = load i8, ptr %i.do, align 1, !range !34, !noalias !12347, !noundef !11
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %.loopexit.i, label %bb.d

.loopexit7.i:                                     ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @299) #44, !noalias !12347
  unreachable

bb.d:                                             ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !12347, !nonnull !11, !noundef !11 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !noalias !12347, !noundef !11 ; 2 uses
  %.idx19.i = shl nuw nsw i64 %i.du, 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx19.i
  %i.dw = icmp eq i64 %i.du, 0
  br i1 %i.dw, label %.loopexit.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %bb.h, %bb.d, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i
  %i.dx = phi ptr [ %i.dn, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i ], [ %i.dn, %bb.d ], [ %i.em, %bb.h ]
  %i.dy = phi i64 [ %storemerge.i.i.i26.i, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtB1P_5slice4iter4IterBG_EEEBM_.exit28.i ], [ %storemerge.i.i.i26.i, %bb.d ], [ %i.en, %bb.h ] ; 2 uses
  %i.dz = icmp eq ptr %i.ak, %i.af
  br i1 %i.dz, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.thread.i, label %.lr.ph.i.preheader.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.h
  %i.ea = phi ptr [ %i.em, %bb.h ], [ %i.dn, %bb.d ]
  %i.eb = phi i64 [ %i.en, %bb.h ], [ %storemerge.i.i.i26.i, %bb.d ] ; 4 uses
  %.sroa.03.017.i = phi ptr [ %i.ec, %bb.h ], [ %i.ds, %bb.d ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.03.017.i, i64 16 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.03.017.i, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !12347, !noundef !11 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, %.8.val
  %.pre29.i = load ptr, ptr %.sroa.03.017.i, align 8, !noalias !12347 ; 2 uses
  br i1 %i.ef, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.pre29.i, ptr nonnull %i.l, i64 %.8.val), !noalias !12347
  %.not13.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not13.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12371)
  %i.eg = load i64, ptr %i.a, align 8, !range !12, !alias.scope !12371, !noalias !12372, !noundef !11
  %i.eh = icmp eq i64 %i.eb, %i.eg
  br i1 %i.eh, label %bb.g, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #42, !noalias !12372
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i: ; preds = %bb.g, %bb.f
  %i.ei = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !12371, !noalias !12372, !nonnull !11, !noundef !11 ; 2 uses
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.eb ; 2 uses
  store ptr %.pre29.i, ptr %i.ej, align 8, !noalias !12373
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i64 %i.ee, ptr %i.ek, align 8, !noalias !12374
  %i.el = add i64 %i.eb, 1                        ; 2 uses
  store i64 %i.el, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !12371, !noalias !12372
  br label %bb.h

bb.h:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i, %bb.e
  %i.em = phi ptr [ %i.ei, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i ], [ %i.ea, %bb.e ] ; 2 uses
  %i.en = phi i64 [ %i.el, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i ], [ %i.eb, %bb.e ] ; 2 uses
  %i.eo = icmp eq ptr %i.ec, %i.dv
  br i1 %i.eo, label %.loopexit.i, label %.lr.ph.i

_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator27gather_arg_direct_conflicts.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i
  %3 = trunc i64 %i.bn to i1
  br i1 %3, label %.preheader.i.i.epil.preheader, label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator27gather_arg_direct_conflicts.exit

.preheader.i.i.epil.preheader:                    ; preds = %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator27gather_arg_direct_conflicts.exit.loopexit.unr-lcssa, %.preheader.i.preheader.i
  %.epil.init117 = phi i64 [ %i.bv, %.preheader.i.preheader.i ], [ %i.ci, %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator27gather_arg_direct_conflicts.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader.i ], [ %i.cj, %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator27gather_arg_direct_conflicts.exit.loopexit.unr-lcssa ]
  %lcmp.mod120 = trunc i64 %i.bn to i1
  tail call void @llvm.assume(i1 %lcmp.mod120)
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.sroa.01.0.i.i.i.i.i.epil.init ; 2 uses
  %.val11.i.i.i.i.i.epil = load ptr, ptr %i.ep, align 8, !noalias !12362, !nonnull !11, !noundef !11
  %i.eq = getelementptr i8, ptr %i.ep, i64 8
  %.val12.i.i.i.i.i.epil = load i64, ptr %i.eq, align 8, !noalias !12362, !noundef !11
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %.epil.init117 ; 2 uses
  store ptr %.val11.i.i.i.i.i.epil, ptr %i.er, align 8, !noalias !12363
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store i64 %.val12.i.i.i.i.i.epil, ptr %i.es, align 8, !noalias !12364
  %i.et = add i64 %.epil.init117, 1
  br label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator27gather_arg_direct_conflicts.exit

_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator27gather_arg_direct_conflicts.exit: ; preds = %.preheader.i.i.epil.preheader, %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator27gather_arg_direct_conflicts.exit.loopexit.unr-lcssa, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i
  %storemerge.i.i.i.i = phi i64 [ %i.bj, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7reserveBK_.exit.i.i ], [ %i.ci, %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator27gather_arg_direct_conflicts.exit.loopexit.unr-lcssa ], [ %i.et, %.preheader.i.i.epil.preheader ]
  store i64 %storemerge.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !12360, !noalias !12375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !12346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12347
  br label %bb.i

.loopexit6:                                       ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i, %bb.a
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val6 = load ptr, ptr %i.eu, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val7 = load i64, ptr %i.ev, align 8, !noundef !11 ; 2 uses
  %.idx.i16 = mul nuw nsw i64 %.val7, 96
  %i.ew = getelementptr inbounds nuw i8, ptr %.val6, i64 %.idx.i16
  %i.ex = icmp eq i64 %.val7, 0
  br i1 %i.ex, label %.loopexit, label %.lr.ph.i.i17

.lr.ph.i.i17:                                     ; preds = %.loopexit6, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i
  %i.ey = phi ptr [ %i.ez, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i ], [ %.val6, %.loopexit6 ] ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 96 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 80
  %i.fb = load i64, ptr %i.fa, align 8, !noalias !12376, !noundef !11
  %i.fc = icmp eq i64 %i.fb, %.8.val
  br i1 %i.fc, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i: ; preds = %.lr.ph.i.i17
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 72
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !12376, !nonnull !11, !noundef !11
  %bcmp.i.i.i19 = tail call i32 @bcmp(ptr nonnull %i.fe, ptr nonnull readonly %.0.val, i64 %.8.val), !noalias !12376
  %i.ff = icmp eq i32 %bcmp.i.i.i19, 0
  br i1 %i.ff, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i, %.lr.ph.i.i17
  %i.fg = icmp eq ptr %i.ez, %i.ew
  br i1 %i.fg, label %.loopexit, label %.lr.ph.i.i17

bb.i:                                             ; preds = %.loopexit, %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator29gather_group_direct_conflicts.exit, %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator27gather_arg_direct_conflicts.exit
  ret void

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i
  %i.fh = getelementptr i8, ptr %i.ey, i64 56
  %.val12 = load ptr, ptr %i.fh, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.fi = getelementptr i8, ptr %i.ey, i64 64
  %.val13 = load i64, ptr %i.fi, align 8, !noundef !11 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12380)
  %i.fj = shl nuw nsw i64 %.val13, 4              ; 2 uses
  %i.fk = icmp eq i64 %.val13, 0
  br i1 %i.fk, label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator29gather_group_direct_conflicts.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i20

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i20: ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !12381
  %i.fl = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.fj, i64 noundef range(i64 1, 9) 8) #43, !noalias !12381 ; 4 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.j, label %.lr.ph.preheader.i.i.i21

bb.j:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i20
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.fj) #46, !noalias !12382
  unreachable

.lr.ph.preheader.i.i.i21:                         ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i20
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %.val12, i64 %.val13
  br label %.lr.ph.i.i.i22

.lr.ph.i.i.i22:                                   ; preds = %bb.k, %.lr.ph.preheader.i.i.i21
  %.sroa.0.022.i.i.i23 = phi ptr [ %i.fr, %bb.k ], [ %.val12, %.lr.ph.preheader.i.i.i21 ] ; 4 uses
  %.sroa.7.021.i.i.i24 = phi i64 [ %i.fq, %bb.k ], [ 0, %.lr.ph.preheader.i.i.i21 ] ; 2 uses
  %.sroa.10.020.i.i.i25 = phi i64 [ %i.fp, %bb.k ], [ %.val13, %.lr.ph.preheader.i.i.i21 ]
  %i.fo = icmp eq ptr %.sroa.0.022.i.i.i23, %i.fn
  br i1 %i.fo, label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator29gather_group_direct_conflicts.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i22
  %i.fp = add nsw i64 %.sroa.10.020.i.i.i25, -1   ; 2 uses
  %i.fq = add nuw nsw i64 %.sroa.7.021.i.i.i24, 1
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i23, i64 16
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.fl, i64 %.sroa.7.021.i.i.i24 ; 2 uses
  %.val.i.i.i26 = load ptr, ptr %.sroa.0.022.i.i.i23, align 8, !alias.scope !12380, !noalias !12383, !nonnull !11, !noundef !11
  %i.ft = getelementptr i8, ptr %.sroa.0.022.i.i.i23, i64 8
  %.val13.i.i.i27 = load i64, ptr %i.ft, align 8, !alias.scope !12380, !noalias !12383, !noundef !11
  store ptr %.val.i.i.i26, ptr %i.fs, align 8, !noalias !12382
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i64 %.val13.i.i.i27, ptr %i.fu, align 8, !noalias !12382
  %i.fv = icmp eq i64 %i.fp, 0
  br i1 %i.fv, label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator29gather_group_direct_conflicts.exit, label %.lr.ph.i.i.i22

_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator29gather_group_direct_conflicts.exit: ; preds = %.lr.ph.i.i.i22, %bb.k, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit
  %.sroa.10.0.i30.i.i.i29 = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit ], [ %i.fl, %bb.k ], [ %i.fl, %.lr.ph.i.i.i22 ]
  store i64 %.val13, ptr %0, align 8, !alias.scope !12383, !noalias !12380
  %.sroa.5.0..sroa_idx.i.i.i30 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i30.i.i.i29, ptr %.sroa.5.0..sroa_idx.i.i.i30, align 8, !alias.scope !12383, !noalias !12380
  %.sroa.7.0..sroa_idx.i.i.i31 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val13, ptr %.sroa.7.0..sroa_idx.i.i.i31, align 8, !alias.scope !12383, !noalias !12380
  br label %bb.i

.loopexit:                                        ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i, %.loopexit6
  store i64 0, ptr %0, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.fw, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.fx, align 8
  br label %bb.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_RNvNtNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4core13display_width(ptr noalias nofree noundef nonnull readonly captures(address) %0, i64 noundef %1) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 8 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %.loopexit26, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.sroa.0.0.ph35 = phi i64 [ %.sroa.0.1, %.loopexit ], [ 0, %bb.a ] ; 4 uses
  %.sroa.04.0.ph34 = phi i1 [ %.sroa.04.1, %.loopexit ], [ false, %bb.a ] ; 2 uses
  %.sroa.0.010.ph33 = phi ptr [ %.sroa.0.111.ph24, %.loopexit ], [ %0, %bb.a ] ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.010.ph33, i64 1 ; 3 uses
  %i.d = load i8, ptr %.sroa.0.010.ph33, align 1, !noalias !12386, !noundef !11 ; 5 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.b, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.peel

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.peel: ; preds = %.lr.ph
  %i.f = and i8 %i.d, 31
  %i.g = zext nneg i8 %i.f to i32                 ; 3 uses
  %i.h = icmp ne ptr %i.c, %i.a
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.ph33, i64 2 ; 3 uses
  %i.j = load i8, ptr %i.c, align 1, !noalias !12386, !noundef !11
  %i.k = shl nuw nsw i32 %i.g, 6
  %i.l = and i8 %i.j, 63
  %i.m = zext nneg i8 %i.l to i32                 ; 2 uses
  %i.n = or disjoint i32 %i.k, %i.m
  %i.o = icmp samesign ugt i8 %i.d, -33
  br i1 %i.o, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.peel, label %bb.c

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.peel: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.peel
  %i.p = icmp ne ptr %i.i, %i.a
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.010.ph33, i64 3 ; 3 uses
  %i.r = load i8, ptr %i.i, align 1, !noalias !12386, !noundef !11
  %i.s = shl nuw nsw i32 %i.m, 6
  %i.t = and i8 %i.r, 63
  %i.u = zext nneg i8 %i.t to i32
  %i.v = or disjoint i32 %i.s, %i.u               ; 2 uses
  %i.w = shl nuw nsw i32 %i.g, 12
  %i.x = or disjoint i32 %i.v, %i.w
  %i.y = icmp samesign ugt i8 %i.d, -17
  br i1 %i.y, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.peel, label %bb.c

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.peel: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.peel
  %i.z = icmp ne ptr %i.q, %i.a
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.010.ph33, i64 4
  %i.ab = load i8, ptr %i.q, align 1, !noalias !12386, !noundef !11
  %i.ac = shl nuw nsw i32 %i.g, 18
  %i.ad = and i32 %i.ac, 1835008
  %i.ae = shl nuw nsw i32 %i.v, 6
  %i.af = and i8 %i.ab, 63
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ae, %i.ag
  %i.ai = or disjoint i32 %i.ah, %i.ad
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.aj = zext nneg i8 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.peel, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.peel, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.peel
  %.sroa.0.111.ph.peel = phi ptr [ %i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.peel ], [ %i.q, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.peel ], [ %i.aa, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.peel ], [ %i.c, %bb.b ] ; 8 uses
  %.sroa.4.0.i.ph.peel = phi i32 [ %i.n, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.peel ], [ %i.x, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.peel ], [ %i.ai, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.peel ], [ %i.aj, %bb.b ] ; 4 uses
  %i.ak = icmp samesign ult i32 %.sroa.4.0.i.ph.peel, 1114112
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp samesign ult i32 %.sroa.4.0.i.ph.peel, 32
  %i.am = icmp eq i32 %.sroa.4.0.i.ph.peel, 127
  %or.cond2.peel = or i1 %i.al, %i.am
  br i1 %or.cond2.peel, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = icmp eq i32 %.sroa.4.0.i.ph.peel, 109
  %or.cond1.peel = and i1 %.sroa.04.0.ph34, %i.an
  br i1 %or.cond1.peel, label %.peel.next, label %.loopexit27

.peel.next:                                       ; preds = %bb.d
end_hunk_5
