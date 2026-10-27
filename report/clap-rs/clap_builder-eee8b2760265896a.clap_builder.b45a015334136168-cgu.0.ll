Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/clap_builder-eee8b2760265896a.clap_builder.b45a015334136168-cgu.0?download=true
inline.NumInlined: 5218
inline.NumDeleted: 2692
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RINvMs0_NtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_onehEBc_:bb.a
  %i.j = getelementptr i8, ptr %.sroa.0.0917.i.i, i64 8
  %.val7.i.i = load i64, ptr %i.j, align 8, !noalias !287, !noundef !10
  %i.k = icmp eq i64 %.val7.i.i, %3
  br i1 %i.k, label %.split.i.i, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %.val.i.i = load ptr, ptr %.sroa.0.0917.i.i, align 8, !noalias !287, !nonnull !10, !noundef !10
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %2, i64 %3), !alias.scope !288, !noalias !289
  %i.l = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.l, label %bb.b, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i: ; preds = %.split.i.i, %.lr.ph.i.i
  %i.m = icmp eq ptr %i.h, %i.f
  br i1 %i.m, label %.thread, label %.lr.ph.i.i

bb.b:                                             ; preds = %.split.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !286, !noundef !10 ; 2 uses
  %i.p = icmp ult i64 %.sroa.8.016.i.i, %i.o
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !287
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !286, !nonnull !10, !noundef !10
  %i.s = getelementptr inbounds nuw [104 x i8], ptr %i.r, i64 %.sroa.8.016.i.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.val.i14.i = load ptr, ptr %i.t, align 8, !alias.scope !290, !noalias !291 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %.val1.i.i = load i64, ptr %i.u, align 8, !alias.scope !290, !noalias !291 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.v = load i64, ptr %i.s, align 8, !range !13, !alias.scope !294, !noalias !291, !noundef !10
  %i.w = trunc nuw i64 %i.v to i1
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
  %.val4.i.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !noalias !295, !nonnull !10, !noundef !10 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.aa, i64 16
  %.val5.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !noalias !295, !noundef !10 ; 2 uses
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
  %.val3.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.aj, align 8, !alias.scope !296, !noalias !297 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i128 %.val3.i.i.i.i.i.i.i.i.i.i, -64211143891970825072924515826960835547
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %.loopexit

_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id.exit.i: ; preds = %bb.d
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5.0.copyload.i.i = load i128, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !298, !noalias !291 ; 3 uses
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
  %.val4.i.i = load i64, ptr %i.aq, align 8, !noalias !299, !noundef !10
  %i.ar = icmp eq i64 %.val4.i.i, 0
  br i1 %i.ar, label %select.unfold.i.i, label %bb.h

.thread:                                          ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i, %select.unfold.i.i, %.loopexit27, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.as, align 8
  store i64 2, ptr %0, align 8
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph46
  %i.at = getelementptr i8, ptr %i.ap, i64 8
  %.val.i.le.i = load ptr, ptr %i.at, align 8, !noalias !299, !nonnull !10, !noundef !10 ; 2 uses
  %.val = load ptr, ptr %.val.i.le.i, align 8, !nonnull !10, !noundef !10
  %i.au = getelementptr i8, ptr %.val.i.le.i, i64 8
  %.val10 = load ptr, ptr %i.au, align 8, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !17, !invariant.load !10
  %i.ax = add nsw i64 %i.aw, -1
  %i.ay = and i64 %i.ax, -16
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bb = getelementptr inbounds nuw i8, ptr %.val10, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !10, !nonnull !10
  call void %i.bc(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.ba) #45, !inline_history !283
  %i.bd = load i128, ptr %i.a, align 16, !noundef !10
  %.not = icmp eq i128 %i.bd, -64211143891970825072924515826960835547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not, label %bb.i, label %bb.j, !prof !15

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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1257.0.copyload), "nonnull"(ptr %.sroa.14.0.copyload) ]
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
  %i.h = phi ptr [ inttoptr (i64 1 to ptr), %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.split.us ], [ %i.dk, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit25.us ] ; 2 uses
  %i.i = phi i64 [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.split.us ], [ %i.dn, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit25.us ] ; 10 uses
  %.sroa.2713.0.us = phi i64 [ %.sroa.1055.0.copyload, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.split.us ], [ %.sroa.2713.2.us, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit25.us ] ; 2 uses
  %.sroa.18.0.us = phi i64 [ %.sroa.853.0.copyload, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.split.us ], [ %.sroa.961.0.us, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit25.us ] ; 4 uses
  %.sroa.04.0.us = phi i64 [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.split.us ], [ %.sroa.961.0.us, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit25.us ] ; 8 uses
  %i.j = icmp eq i64 %.sroa.2713.0.us, -1
  %i.k = add i64 %.sroa.18.0.us, %i.d             ; 4 uses
  %i.l = icmp ult i64 %i.k, %.sroa.1358.0.copyload ; 2 uses
  br i1 %i.j, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  br i1 %i.l, label %.lr.ph.split.i.i.us, label %.loopexit

.lr.ph.split.i.i.us:                              ; preds = %bb.b, %bb.i
  %i.m = phi i64 [ %.sink.i4.i.us, %bb.i ], [ %.sroa.2713.0.us, %bb.b ] ; 3 uses
  %i.n = phi i64 [ %i.as, %bb.i ], [ %i.k, %bb.b ]
  %i.o = phi i64 [ %i.ar, %bb.i ], [ %.sroa.18.0.us, %bb.b ] ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.1257.0.copyload, i64 %i.n
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !337, !noalias !339, !noundef !10
  %i.r = and i8 %i.q, 63
  %i.s = zext nneg i8 %i.r to i64
  %i.t = shl nuw i64 1, %i.s
  %i.u = and i64 %i.t, %.sroa.752.0.copyload
  %.not.i2.i.us = icmp eq i64 %i.u, 0
  br i1 %.not.i2.i.us, label %bb.h, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i.i.us
  %..i.i3.i.us = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %.fr63.i115) ; 2 uses
  %i.v = icmp ult i64 %..i.i3.i.us, %.sroa.15.0.copyload
  br i1 %i.v, label %.lr.ph, label %.preheader36.i.i.us.preheader

bb.d:                                             ; preds = %.lr.ph
  %i.w = add nuw nsw i64 %.sroa.04.0.i.i.us31, 1  ; 2 uses
  %i.x = icmp ult i64 %i.w, %.sroa.15.0.copyload
  br i1 %i.x, label %.lr.ph, label %.preheader36.i.i.us.preheader

.preheader36.i.i.us.preheader:                    ; preds = %bb.d, %bb.c
  %i.y = icmp ult i64 %i.m, %.fr63.i115
  br i1 %i.y, label %.lr.ph33, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.us

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.04.0.i.i.us31 = phi i64 [ %i.w, %bb.d ], [ %..i.i3.i.us, %bb.c ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.04.0.i.i.us31
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !338, !noalias !339, !noundef !10
  %i.ab = add i64 %.sroa.04.0.i.i.us31, %i.o      ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %.sroa.1358.0.copyload
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.1257.0.copyload, i64 %i.ab
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !337, !noalias !339, !noundef !10
  %.not21.i.i.us = icmp eq i8 %i.aa, %i.ae
  br i1 %.not21.i.i.us, label %bb.d, label %bb.g

.preheader36.i.i.us:                              ; preds = %bb.e
  %i.af = icmp ult i64 %i.m, %i.ag
  br i1 %i.af, label %.lr.ph33, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.us

.lr.ph33:                                         ; preds = %.preheader36.i.i.us.preheader, %.preheader36.i.i.us
  %.sroa.2.0.i.i.us32 = phi i64 [ %i.ag, %.preheader36.i.i.us ], [ %.fr63.i115, %.preheader36.i.i.us.preheader ]
  %i.ag = add i64 %.sroa.2.0.i.i.us32, -1         ; 6 uses
  %i.ah = icmp ult i64 %i.ag, %.sroa.15.0.copyload
  br i1 %i.ah, label %bb.e, label %.split32.us.i.i

bb.e:                                             ; preds = %.lr.ph33
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.ag
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !338, !noalias !339, !noundef !10
  %i.ak = add i64 %i.ag, %i.o                     ; 2 uses
  %i.al = icmp ult i64 %i.ak, %.sroa.1358.0.copyload
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.1257.0.copyload, i64 %i.ak
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !337, !noalias !339, !noundef !10
  %.not20.i.i.us = icmp eq i8 %i.aj, %i.an
  br i1 %.not20.i.i.us, label %.preheader36.i.i.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = add i64 %i.o, %.sroa.651.0.copyload
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %.reass.i.us.reass.reass = add i64 %i.o, %invariant.op
  %i.ap = add i64 %.reass.i.us.reass.reass, %.sroa.04.0.i.i.us31
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.i.i.us
  %i.aq = add i64 %i.o, %.sroa.15.0.copyload
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sink.i4.i.us = phi i64 [ 0, %bb.g ], [ %i.e, %bb.f ], [ 0, %bb.h ]
  %i.ar = phi i64 [ %i.ap, %bb.g ], [ %i.ao, %bb.f ], [ %i.aq, %bb.h ] ; 2 uses
  %i.as = add i64 %i.ar, %i.d                     ; 2 uses
  %i.at = icmp ult i64 %i.as, %.sroa.1358.0.copyload
  br i1 %i.at, label %.lr.ph.split.i.i.us, label %.loopexit

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  br i1 %i.l, label %.lr.ph.i8.i.us, label %.loopexit

.lr.ph.i8.i.us:                                   ; preds = %bb.j
  br i1 %.first_iter.i9.i.us, label %.lr.ph.split.us.i.us.i.us, label %.lr.ph.split.us.i.i.us

.lr.ph.split.us.i.i.us:                           ; preds = %.lr.ph.i8.i.us, %bb.m
  %i.au = phi i64 [ %i.bn, %bb.m ], [ %i.k, %.lr.ph.i8.i.us ]
  %i.av = phi i64 [ %i.bm, %bb.m ], [ %.sroa.18.0.us, %.lr.ph.i8.i.us ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.1257.0.copyload, i64 %i.au
  %i.ax = load i8, ptr %i.aw, align 1, !alias.scope !340, !noalias !339, !noundef !10
  %i.ay = and i8 %i.ax, 63
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = and i64 %i.ba, %.sroa.752.0.copyload
  %.not.us.i.i.us = icmp eq i64 %i.bb, 0
  br i1 %.not.us.i.i.us, label %bb.l, label %.preheader35.i.i.us.preheader

.preheader35.i.i.us.preheader:                    ; preds = %.lr.ph.split.us.i.i.us
  br i1 %exitcond.not.i.i.us35.not, label %.lr.ph37, label %.preheader.i10.i.us

.preheader35.i.i.us:                              ; preds = %.lr.ph37
  %i.bc = add i64 %.sroa.04.0.us.i.i.us36, 1      ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.bc, %umax.i.i.us
  br i1 %exitcond.not.i.i.us, label %.preheader.i10.i.us, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader35.i.i.us.preheader, %.preheader35.i.i.us
  %.sroa.04.0.us.i.i.us36 = phi i64 [ %i.bc, %.preheader35.i.i.us ], [ %.fr63.i115, %.preheader35.i.i.us.preheader ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.04.0.us.i.i.us36
  %i.be = load i8, ptr %i.bd, align 1, !alias.scope !341, !noalias !339, !noundef !10
  %i.bf = add i64 %.sroa.04.0.us.i.i.us36, %i.av  ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %.sroa.1358.0.copyload
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.1257.0.copyload, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !340, !noalias !339, !noundef !10
  %.not21.us.i.i.us = icmp eq i8 %i.be, %i.bi
  br i1 %.not21.us.i.i.us, label %.preheader35.i.i.us, label %bb.k

bb.k:                                             ; preds = %.lr.ph37
  %i.bj = add i64 %i.av, %i.g
  %i.bk = add i64 %i.bj, %.sroa.04.0.us.i.i.us36
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.split.us.i.i.us
  %i.bl = add i64 %i.av, %.sroa.15.0.copyload
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bm = phi i64 [ %i.bk, %bb.k ], [ %i.bl, %bb.l ] ; 2 uses
  %i.bn = add i64 %i.bm, %i.d                     ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %.sroa.1358.0.copyload
  br i1 %i.bo, label %.lr.ph.split.us.i.i.us, label %.loopexit

.preheader.i10.i.us:                              ; preds = %.preheader35.i.i.us.preheader, %.preheader35.i.i.us
  br i1 %.not34.i.i.us, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.us, label %.split32.us.i11.i

.lr.ph.split.us.i.us.i.us:                        ; preds = %.lr.ph.i8.i.us, %bb.p
  %i.bp = phi i64 [ %i.cq, %bb.p ], [ %i.k, %.lr.ph.i8.i.us ]
  %i.bq = phi i64 [ %i.cp, %bb.p ], [ %.sroa.18.0.us, %.lr.ph.i8.i.us ] ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.1257.0.copyload, i64 %i.bp
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !340, !noalias !339, !noundef !10
  %i.bt = and i8 %i.bs, 63
  %i.bu = zext nneg i8 %i.bt to i64
  %i.bv = shl nuw i64 1, %i.bu
  %i.bw = and i64 %i.bv, %.sroa.752.0.copyload
  %.not.us.i.us.i.us = icmp eq i64 %i.bw, 0
  br i1 %.not.us.i.us.i.us, label %bb.o, label %.preheader35.i.us.i.us.preheader

.preheader35.i.us.i.us.preheader:                 ; preds = %.lr.ph.split.us.i.us.i.us
  br i1 %exitcond.not.i.us.i.us40.not, label %.lr.ph42, label %.preheader.i10.us.us.i.us.preheader

.preheader35.i.us.i.us:                           ; preds = %.lr.ph42
  %i.bx = add i64 %.sroa.04.0.us.i.us.i.us41, 1   ; 2 uses
  %exitcond.not.i.us.i.us = icmp eq i64 %i.bx, %umax.i.i.us
  br i1 %exitcond.not.i.us.i.us, label %.preheader.i10.us.us.i.us.preheader, label %.lr.ph42

.preheader.i10.us.us.i.us.preheader:              ; preds = %.preheader35.i.us.i.us, %.preheader35.i.us.i.us.preheader
  br i1 %.not34.i.us.us.i.us43, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.us, label %.lr.ph45

.lr.ph42:                                         ; preds = %.preheader35.i.us.i.us.preheader, %.preheader35.i.us.i.us
  %.sroa.04.0.us.i.us.i.us41 = phi i64 [ %i.bx, %.preheader35.i.us.i.us ], [ %.fr63.i115, %.preheader35.i.us.i.us.preheader ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.04.0.us.i.us.i.us41
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !341, !noalias !339, !noundef !10
  %i.ca = add i64 %.sroa.04.0.us.i.us.i.us41, %i.bq ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %.sroa.1358.0.copyload
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.1257.0.copyload, i64 %i.ca
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !340, !noalias !339, !noundef !10
  %.not21.us.i.us.i.us = icmp eq i8 %i.bz, %i.cd
  br i1 %.not21.us.i.us.i.us, label %.preheader35.i.us.i.us, label %bb.n
end_hunk_0
begin_hunk_1_@_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18validate_conflicts:bb.a
  %i.dt = load i128, ptr %i.ac, align 16, !noalias !2093, !noundef !10
  %.not.i.i.i.i = icmp eq i128 %i.dt, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2093
  br i1 %.not.i.i.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18validate_exclusive.exit, label %bb.h, !prof !15

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !2093
  unreachable

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18validate_exclusive.exit: ; preds = %bb.d, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i.i, %bb.g
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.dq, %bb.g ], [ null, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i.i ], [ null, %bb.d ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  %..i.i.i = select i1 %.not.i.i.i, ptr @99, ptr %.sroa.0.0.i.i.i.i ; 5 uses
  store ptr %i.au, ptr %i.af, align 8, !alias.scope !2094, !noalias !2084
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %..i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2094, !noalias !2084
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2094, !noalias !2084
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2095
  store i64 0, ptr %i.ab, align 8, !alias.scope !2096, !noalias !2095
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2096, !noalias !2095
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2096, !noalias !2095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2095
  %i.du = getelementptr inbounds nuw i8, ptr %..i.i.i, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.aa, ptr noundef nonnull align 2 dereferenceable(14) %i.du, i64 14, i1 false), !noalias !2097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2095
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.du, align 2, !noalias !2097
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %..i.i.i, i64 32
  %.sroa.7.0.copyload.i.i.i = load i8, ptr %.sroa.7.0..sroa_idx.i.i.i, align 2, !noalias !2097
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %..i.i.i, i64 36
  %.sroa.11.0.copyload.i.i.i = load i8, ptr %.sroa.11.0..sroa_idx.i.i.i, align 2, !noalias !2097
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %..i.i.i, i64 40
  %.sroa.15.0.copyload.i.i.i = load i16, ptr %.sroa.15.0..sroa_idx.i.i.i, align 2, !noalias !2097
  %.not.i.i1.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i, -1
  %.not5.i.i.i.i = icmp eq i8 %.sroa.7.0.copyload.i.i.i, -1
  %or.cond.i.i.i = select i1 %.not.i.i1.i.i, i1 %.not5.i.i.i.i, i1 false
  %.not7.i.i.i.i = icmp eq i8 %.sroa.11.0.copyload.i.i.i, -1
  %or.cond35.i.i.i = select i1 %or.cond.i.i.i, i1 %.not7.i.i.i.i, i1 false
  %i.dv = icmp eq i16 %.sroa.15.0.copyload.i.i.i, 0
  %or.cond36.i.i.i = select i1 %or.cond35.i.i.i, i1 %i.dv, i1 false ; 2 uses
  %spec.select.i.i.i = select i1 %or.cond36.i.i.i, ptr inttoptr (i64 1 to ptr), ptr @139
  %spec.select38.i.i.i = select i1 %or.cond36.i.i.i, i64 0, i64 4
  store ptr %spec.select.i.i.i, ptr %i.z, align 8, !noalias !2095, !captures !21
  %i.dw = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %spec.select38.i.i.i, ptr %i.dw, align 8, !noalias !2095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2095
  store ptr %i.aa, ptr %i.y, align 8, !noalias !2095
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXs8_NtCscy4Zx2DW6cp_7anstyle5styleNtB5_12StyleDisplayNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !noalias !2095
  %i.dx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.z, ptr %i.dx, align 8, !noalias !2095
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !2095
  %i.dy = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @140, ptr noundef nonnull %i.y) #43, !noalias !2097, !inline_history !22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2095
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage20write_usage_no_title(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af, ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8trim_end(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #43, !noalias !2098, !inline_history !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !2099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2095
  %i.dz = call fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error17argument_conflictB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.au, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.ag) #43, !noalias !2100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2084
  br label %.loopexit

.lr.ph.i.lr.ph:                                   ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowRNtNtNtB1d_7builder3arg3ArgENCNvMNtB1X_9validatorNtB3V_9Validator18validate_exclusives_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B3o_NCB3S_s0_0E0E0B1d_.exit.i.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator18validate_exclusive0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i, %.lr.ph.split.us.i.i.preheader.i
  %i.ea = getelementptr inbounds nuw [104 x i8], ptr %i.aq, i64 %i.as ; 2 uses
  %i.eb = getelementptr i8, ptr %i.au, i64 136
  %i.ec = getelementptr i8, ptr %i.au, i64 144
  %i.ed = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.backedge, %.lr.ph.i.lr.ph
  %i.ef = phi ptr [ %i.aq, %.lr.ph.i.lr.ph ], [ %i.ej, %.lr.ph.i.backedge ] ; 3 uses
  %i.eg = phi ptr [ %i.al, %.lr.ph.i.lr.ph ], [ %i.eh, %.lr.ph.i.backedge ] ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 3 uses
  %i.ei = icmp eq ptr %i.ef, %i.ea
  br i1 %i.ei, label %bb.i, label %bb.j, !prof !18

bb.i:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #44, !noalias !2101
  unreachable

bb.j:                                             ; preds = %.lr.ph.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 97
  %i.el = load i8, ptr %i.ek, align 1, !range !38, !alias.scope !2104, !noalias !2105, !noundef !10
  %cond.i.i.not.i.i = icmp eq i8 %i.el, 0
  br i1 %cond.i.i.not.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMNtB1X_9validatorNtB3y_9Validator18validate_conflicts0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3v_s_0E0E0B1d_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2106)
  %.val.i.i.i.i.i = load ptr, ptr %i.eb, align 8, !noalias !2107, !nonnull !10, !noundef !10 ; 2 uses
  %.val1.i.i.i.i.i = load i64, ptr %i.ec, align 8, !noalias !2107, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2108)
  %.idx.i.i.i.i.i.i16 = mul nuw nsw i64 %.val1.i.i.i.i.i, 600
  %i.em = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i16
  %i.en = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.en, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMNtB1X_9validatorNtB3y_9Validator18validate_conflicts0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3v_s_0E0E0B1d_.exit.i, label %.lr.ph.i.i.i.i.i.i.i17

.lr.ph.i.i.i.i.i.i.i17:                           ; preds = %bb.k
  %i.eo = getelementptr i8, ptr %i.eg, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !2109, !noalias !2110, !noundef !10 ; 3 uses
  %i.eq = load ptr, ptr %i.eg, align 8, !alias.scope !2109, !noalias !2105 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i18, %.lr.ph.i.i.i.i.i.i.i17
  %i.er = phi ptr [ %.val.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i17 ], [ %i.es, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i18 ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 600 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 544
  %i.eu = load i64, ptr %i.et, align 8, !noalias !2111, !noundef !10
  %i.ev = icmp eq i64 %i.eu, %i.ep
  br i1 %i.ev, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i19, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i18

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i19: ; preds = %bb.l
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 536
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !2111, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i.i.i.i20 = tail call i32 @bcmp(ptr nonnull %i.ex, ptr nonnull %i.eq, i64 %i.ep), !noalias !2111
  %i.ey = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i20, 0
  br i1 %i.ey, label %bb.m, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i18

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i18: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i19, %bb.l
  %i.ez = icmp eq ptr %i.es, %i.em
  br i1 %i.ez, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMNtB1X_9validatorNtB3y_9Validator18validate_conflicts0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3v_s_0E0E0B1d_.exit.i, label %bb.l

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMNtB1X_9validatorNtB3y_9Validator18validate_conflicts0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3v_s_0E0E0B1d_.exit.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i18, %bb.k, %bb.j
  %i.fa = icmp eq ptr %i.eh, %i.ao
  br i1 %i.fa, label %.loopexit, label %.lr.ph.i.backedge

.lr.ph.i.backedge:                                ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMNtB1X_9validatorNtB3y_9Validator18validate_conflicts0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3v_s_0E0E0B1d_.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit56
  br label %.lr.ph.i

bb.m:                                             ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i19
  %i.fb = getelementptr i8, ptr %i.eg, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.fc = load ptr, ptr %i.at, align 8, !nonnull !10, !align !16, !noundef !10
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Conflicts16gather_conflicts(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.fc, ptr %i.eq, i64 %i.ep) #43
  %i.fd = load ptr, ptr %i.ed, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.fe = load i64, ptr %i.ee, align 8, !noundef !10 ; 2 uses
  %.val14 = load ptr, ptr %i.eg, align 8
  %.val15 = load i64, ptr %i.fb, align 8          ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2113)
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18build_conflict_err.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.fd, i64 %i.fe
  %i.fh = load ptr, ptr %i.at, align 8, !alias.scope !2112, !nonnull !10, !align !16, !noundef !10 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2114
  store i64 0, ptr %i.u, align 8, !noalias !2114
  %.sroa.4.0..sroa_idx.i.i21 = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i21, align 8, !noalias !2114
  %.sroa.5.0..sroa_idx.i.i22 = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i22, align 8, !noalias !2114
  %.sroa.8.0..sroa_idx12.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx12.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.fi = getelementptr i8, ptr %i.fh, i64 208
  %i.fj = getelementptr i8, ptr %i.fh, i64 216
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i.outer

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i.outer: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i, %bb.n
  %.sroa.5.0.copyload.i.ph = phi i64 [ %i.gt, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i ], [ 0, %bb.n ] ; 14 uses
  %.ph = phi ptr [ %i.gq, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.n ] ; 3 uses
  %.sroa.23.0.i.i.ph = phi ptr [ %.sroa.23.1.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i ], [ %i.fd, %bb.n ]
  %.sroa.13.0.i.i.ph = phi ptr [ %.sroa.13.1.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i ], [ undef, %bb.n ]
  %.sroa.10.0.i.i.ph = phi i64 [ %.sroa.10.1.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i ], [ undef, %bb.n ]
  %.sroa.7.0.i.i.ph = phi ptr [ %i.gi, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i ], [ undef, %bb.n ]
  %.sroa.0.0.i.i.ph = phi ptr [ %.sroa.0.1.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i ], [ null, %bb.n ]
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.5.0.copyload.i.ph, 4
  %i.fk = getelementptr inbounds nuw i8, ptr %.ph, i64 %.idx.i.i.i
  %i.fl = icmp eq i64 %.sroa.5.0.copyload.i.ph, 0
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i: ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i.outer
  %.sroa.23.0.i.i = phi ptr [ %.sroa.23.0.i.i.ph, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i.outer ], [ %.sroa.23.1.i.i, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i ]
  %.sroa.13.0.i.i = phi ptr [ %.sroa.13.0.i.i.ph, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i.outer ], [ %.sroa.13.1.i.i, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i ]
  %.sroa.10.0.i.i = phi i64 [ %.sroa.10.0.i.i.ph, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i.outer ], [ %.sroa.10.1.i.i, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i ]
  %.sroa.7.0.i.i = phi ptr [ %.sroa.7.0.i.i.ph, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i.outer ], [ %i.gi, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.i.i.ph, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i.outer ], [ %.sroa.0.1.i.i, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i ]
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i
  %.sroa.23.1.i.i = phi ptr [ %.sroa.23.0.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i ], [ %i.fq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i ] ; 7 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.0.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i ], [ %i.gh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i ] ; 4 uses
  %.sroa.10.1.i.i = phi i64 [ %.sroa.10.0.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i ], [ %.sroa.0.0.copyload1136.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i ] ; 4 uses
  %.sroa.7.1.i.i = phi ptr [ %.sroa.7.0.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i ], [ %.sroa.8.sroa.0.0.copyload37.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i ] ; 5 uses
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.0.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i ], [ %.sroa.8.sroa.0.0.copyload37.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i ] ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.1.i.i, null
  br i1 %.not.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.1.i.i), "nonnull"(ptr %.sroa.7.1.i.i) ]
  %i.fm = icmp eq ptr %.sroa.7.1.i.i, %.sroa.13.1.i.i
  br i1 %i.fm, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.fn = icmp eq i64 %.sroa.10.1.i.i, 0
  br i1 %i.fn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fo = shl nuw i64 %.sroa.10.1.i.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.1.i.i, i64 noundef %i.fo, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !2115
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.o
  %i.fp = icmp eq ptr %.sroa.23.1.i.i, %i.fg
  br i1 %i.fp, label %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1p_8adapters7flatten7FlatMapINtNtNtB1r_5slice4iter4IterB14_EINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_ENCNvMNtNtBa_6parser9validatorNtB4k_9Validator18build_conflict_err0EEBa_.exit.i, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.23.1.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2116
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2117)
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.fi, align 8, !noalias !2118, !nonnull !10, !noundef !10 ; 2 uses
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.fj, align 8, !noalias !2118, !noundef !10 ; 2 uses
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %.sroa.23.1.i.i, align 8, !alias.scope !2119, !noalias !2120 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.23.1.i.i, i64 8
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.fr, align 8, !alias.scope !2119, !noalias !2120 ; 3 uses
  %.idx.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.val1.i.i.i.i.i.i.i, 96
  %i.fs = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i
  %i.ft = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.ft, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.s, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i.i.i.i.i
  %i.fu = phi ptr [ %i.fv, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i, %bb.s ] ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 96 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 80
  %i.fx = load i64, ptr %i.fw, align 8, !noalias !2121, !noundef !10
  %i.fy = icmp eq i64 %i.fx, %.val3.i.i.i.i.i.i.i
  br i1 %i.fy, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i.i.i.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 72
  %i.ga = load ptr, ptr %i.fz, align 8, !noalias !2121, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ga, ptr nonnull readonly %.val2.i.i.i.i.i.i.i, i64 %.val3.i.i.i.i.i.i.i), !noalias !2121
  %i.gb = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gb, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.gc = icmp eq ptr %i.fv, %i.fs
  br i1 %i.gc, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i.i.i.i.i, %bb.s
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !2118
  %i.gd = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #43, !noalias !2118 ; 4 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.t, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread29.i.i.i.i, !prof !32

bb.t:                                             ; preds = %.loopexit.i.i.i.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #46, !noalias !2118
  unreachable

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread29.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i
  store ptr %.val2.i.i.i.i.i.i.i, ptr %i.gd, align 8, !noalias !2118
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i64 %.val3.i.i.i.i.i.i.i, ptr %i.gf, align 8, !noalias !2118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2116
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i.i.i.i.i.i.i
  call fastcc void @_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command20unroll_args_in_group(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.fh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.23.1.i.i) #43, !noalias !2122
  %.sroa.0.0.copyload11.pr.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !2123 ; 2 uses
  %.sroa.8.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.sroa.8.0..sroa_idx12.i.i.i.i, align 8, !noalias !2123
  %.sroa.8.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx12.sroa_idx.i.i.i.i, align 8, !noalias !2123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2116
  %.not1.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload11.pr.i.i.i.i, -1
  br i1 %.not1.i.i.i.i, label %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1p_8adapters7flatten7FlatMapINtNtNtB1r_5slice4iter4IterB14_EINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_ENCNvMNtNtBa_6parser9validatorNtB4k_9Validator18build_conflict_err0EEBa_.exit.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i: ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.i.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread29.i.i.i.i
  %.sroa.8.sroa.5.0.copyload38.i.i.i.i = phi i64 [ 1, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread29.i.i.i.i ], [ %.sroa.8.sroa.5.0.copyload.i.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.i.i.i.i ] ; 2 uses
  %.sroa.8.sroa.0.0.copyload37.i.i.i.i = phi ptr [ %i.gd, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread29.i.i.i.i ], [ %.sroa.8.sroa.0.0.copyload.i.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.i.i.i.i ] ; 4 uses
  %.sroa.0.0.copyload1136.i.i.i.i = phi i64 [ 1, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread29.i.i.i.i ], [ %.sroa.0.0.copyload11.pr.i.i.i.i, %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.i.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.0.0.copyload37.i.i.i.i) ]
  %i.gg = icmp ult i64 %.sroa.8.sroa.5.0.copyload38.i.i.i.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.gg)
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.sroa.0.0.copyload37.i.i.i.i, i64 %.sroa.8.sroa.5.0.copyload38.i.i.i.i
  br label %bb.o

bb.u:                                             ; preds = %bb.p
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i, i64 16 ; 2 uses
  %.sroa.0.0.i.i.i.i23 = load ptr, ptr %.sroa.7.1.i.i, align 8, !noalias !2124, !nonnull !10, !noundef !10 ; 2 uses
  %.sroa.3.0.i6.pn.i.i.in.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i, i64 8
  %.sroa.3.0.i6.pn.i.i.i.i = load i64, ptr %.sroa.3.0.i6.pn.i.i.in.i.i, align 8, !noalias !2124, !noundef !10 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2125)
  br i1 %i.fl, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i24

.lr.ph.i.i.i24:                                   ; preds = %bb.u, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i.i
  %.sroa.03.09.i.i.i = phi ptr [ %i.gm, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i.i ], [ %.ph, %bb.u ] ; 3 uses
  %i.gj = getelementptr i8, ptr %.sroa.03.09.i.i.i, i64 8
  %.sroa.03.0.val5.i.i.i = load i64, ptr %i.gj, align 8, !noalias !2126, !noundef !10
  %i.gk = icmp eq i64 %.sroa.03.0.val5.i.i.i, %.sroa.3.0.i6.pn.i.i.i.i
  br i1 %i.gk, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i: ; preds = %.lr.ph.i.i.i24
  %.sroa.03.0.val.i.i.i = load ptr, ptr %.sroa.03.09.i.i.i, align 8, !noalias !2126, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.sroa.03.0.val.i.i.i, ptr nonnull readonly %.sroa.0.0.i.i.i.i23, i64 %.sroa.3.0.i6.pn.i.i.i.i), !noalias !2127
  %i.gl = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.gl, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i.i: ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i, %.lr.ph.i.i.i24
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i, i64 16 ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.fk
  br i1 %i.gn, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i24

._crit_edge.i.i.i:                                ; preds = %bb.u, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2128)
  %i.go = load i64, ptr %i.u, align 8, !range !11, !alias.scope !2129, !noalias !2114, !noundef !10
  %i.gp = icmp eq i64 %.sroa.5.0.copyload.i.ph, %i.go
  br i1 %i.gp, label %bb.v, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #42, !noalias !2130
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i21, align 8, !alias.scope !2129, !noalias !2114
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i: ; preds = %bb.v, %._crit_edge.i.i.i
  %i.gq = phi ptr [ %.ph, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %bb.v ] ; 2 uses
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %.sroa.5.0.copyload.i.ph ; 2 uses
  store ptr %.sroa.0.0.i.i.i.i23, ptr %i.gr, align 8, !noalias !2131
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i64 %.sroa.3.0.i6.pn.i.i.i.i, ptr %i.gs, align 8, !noalias !2132
  %i.gt = add i64 %.sroa.5.0.copyload.i.ph, 1     ; 2 uses
  store i64 %i.gt, ptr %.sroa.5.0..sroa_idx.i.i22, align 8, !alias.scope !2129, !noalias !2114
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetNtNtB4_2id2IdE6insertB6_.exit.i.i.outer

_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1p_8adapters7flatten7FlatMapINtNtNtB1r_5slice4iter4IterB14_EINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_ENCNvMNtNtBa_6parser9validatorNtB4k_9Validator18build_conflict_err0EEBa_.exit.i: ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i.i
  %.sroa.04.0.copyload.i = load i64, ptr %i.u, align 8, !noalias !2133 ; 2 uses
  %.sroa.45.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i21, align 8, !noalias !2133, !nonnull !10, !noundef !10 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2134
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2135)
  %i.gu = mul i64 %.sroa.5.0.copyload.i.ph, 24    ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.sroa.5.0.copyload.i.ph, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb.x, label %bb.w, !prof !20

bb.w:                                             ; preds = %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1p_8adapters7flatten7FlatMapINtNtNtB1r_5slice4iter4IterB14_EINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_ENCNvMNtNtBa_6parser9validatorNtB4k_9Validator18build_conflict_err0EEBa_.exit.i
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.w
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !2136
  %i.gw = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.gu, i64 noundef range(i64 1, 9) 8) #43, !noalias !2136 ; 2 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %bb.x, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i

bb.x:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i, %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1p_8adapters7flatten7FlatMapINtNtNtB1r_5slice4iter4IterB14_EINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_ENCNvMNtNtBa_6parser9validatorNtB4k_9Validator18build_conflict_err0EEBa_.exit.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ 0, %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1p_8adapters7flatten7FlatMapINtNtNtB1r_5slice4iter4IterB14_EINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_ENCNvMNtNtBa_6parser9validatorNtB4k_9Validator18build_conflict_err0EEBa_.exit.i ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.gu) #46, !noalias !2137
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i, %bb.w
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.w ], [ %i.gw, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.w ], [ %.sroa.5.0.copyload.i.ph, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 2 uses
  %i.gy = icmp samesign ule i64 %.sroa.5.0.copyload.i.ph, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.gy)
  %i.gz = icmp eq i64 %.sroa.5.0.copyload.i.ph, 0
  br i1 %i.gz, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB3e_6parser9validatorNtB3X_9Validator18build_conflict_errs_0EE9from_iterB3e_.exit.i, label %bb.y

bb.y:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i
  %i.ha = getelementptr i8, ptr %i.fh, i64 136
  %i.hb = getelementptr i8, ptr %i.fh, i64 144
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %bb.z

bb.z:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtCs4wP2HXfJTCR_5alloc6string6StringuNCNvMNtNtB11_6parser9validatorNtB2m_9Validator18build_conflict_errs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtB1I_3vecINtB4u_3VecB1E_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2h_EE0E0E0B11_.exit.i.i.i.i.i.i.i, %bb.y
  %i.he = phi i64 [ 0, %bb.y ], [ %i.hu, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtCs4wP2HXfJTCR_5alloc6string6StringuNCNvMNtNtB11_6parser9validatorNtB2m_9Validator18build_conflict_errs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsk_NtB1I_3vecINtB4u_3VecB1E_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2h_EE0E0E0B11_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.45.0.copyload.i, i64 %i.he ; 2 uses
  %.val11.i.i.i.i.i.i.i = load ptr, ptr %i.hf, align 8, !noalias !2138
  %i.hg = getelementptr i8, ptr %i.hf, i64 8
  %.val12.i.i.i.i.i.i.i = load i64, ptr %i.hg, align 8, !noalias !2138 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ha, align 8, !noalias !2139, !nonnull !10, !noundef !10 ; 2 uses
  %.val2.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hb, align 8, !noalias !2139, !noundef !10 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.val2.i.i.i.i.i.i.i.i.i, 600
  %i.hh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.hi = icmp eq i64 %.val2.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.hi, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.z, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i
  %i.hj = phi ptr [ %i.hk, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i.i, %bb.z ] ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 600 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 544
  %i.hm = load i64, ptr %i.hl, align 8, !noalias !2140, !noundef !10
  %i.hn = icmp eq i64 %i.hm, %.val12.i.i.i.i.i.i.i
  br i1 %i.hn, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 536
  %i.hp = load ptr, ptr %i.ho, align 8, !noalias !2140, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.hp, ptr nonnull readonly %.val11.i.i.i.i.i.i.i, i64 %.val12.i.i.i.i.i.i.i), !noalias !2140
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %spec.select38.i139, ptr %i.bpu, align 8, !noalias !10432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !10432
  store ptr %i.bx, ptr %i.bv, align 8, !noalias !10432
  %.sroa.48.0..sroa_idx.i140 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr @_RNvXs8_NtCscy4Zx2DW6cp_7anstyle5styleNtB5_12StyleDisplayNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i140, align 8, !noalias !10432
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.bw, ptr %i.bpv, align 8, !noalias !10432
  %.sroa.412.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.412.0..sroa_idx.i141, align 8, !noalias !10432
  %i.bpw = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.by, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @140, ptr noundef nonnull %i.bv) #43, !noalias !10432, !inline_history !8553 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !10432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !10432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !10432
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage20write_usage_no_title(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.et, ptr noalias nofree noundef align 8 dereferenceable(24) %i.by, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8trim_end(ptr noalias nofree noundef align 8 dereferenceable(24) %i.by) #43, !noalias !10434, !inline_history !8553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false), !noalias !10435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !10432
  %i.bpx = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error12invalid_utf8B4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.bop, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.eu) #43, !noalias !10006, !inline_history !8350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu), !noalias !10009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et), !noalias !10009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev), !noalias !10009
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit104

bb.le:                                            ; preds = %_RNvXsb_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_11ValueParserNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.bpz = load ptr, ptr %i.bpy, align 8, !noalias !10009, !nonnull !10, !noundef !10
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.bqb = load i64, ptr %i.bqa, align 8, !noalias !10009, !noundef !10 ; 8 uses
  %.not.i118 = icmp slt i64 %i.bqb, 0
  br i1 %.not.i118, label %bb.lg, label %bb.lf, !prof !20

bb.lf:                                            ; preds = %bb.le
  %i.bqc = icmp eq i64 %i.bqb, 0                  ; 2 uses
  br i1 %i.bqc, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher5entry.exit.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i120

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i120: ; preds = %bb.lf
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10436
  %i.bqd = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bqb, i64 noundef range(i64 1, 9) 1) #43, !noalias !10436 ; 3 uses
  %i.bqe = icmp eq ptr %i.bqd, null
  br i1 %i.bqe, label %bb.lg, label %bb.lq

bb.lg:                                            ; preds = %bb.le, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i120
  %.sroa.4769.0.ph = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i120 ], [ 0, %bb.le ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4769.0.ph, i64 %i.bqb) #46, !noalias !10006, !inline_history !8350
  unreachable

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher5entry.exit.i: ; preds = %bb.lf, %bb.lq
  %i.bqf = phi ptr [ %i.bqd, %bb.lq ], [ inttoptr (i64 1 to ptr), %bb.lf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev), !noalias !10009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es), !noalias !10009
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.es, i64 64 ; 2 uses
  store i64 0, ptr %i.bqg, align 8, !alias.scope !10437, !noalias !10009
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.es, i64 72
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !alias.scope !10437, !noalias !10009
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.es, i64 80
  %.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.es, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !10437, !noalias !10009
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !10437, !noalias !10009
  %.sroa.0.sroa.6.sroa.5.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.es, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.6.sroa.5.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !10437, !noalias !10009
  store i64 2, ptr %i.es, align 8, !alias.scope !10437, !noalias !10009
  call void @llvm.experimental.noalias.scope.decl(metadata !10438)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !10439
  store ptr %i.bqg, ptr %i.ca, align 8, !alias.scope !10440, !noalias !10439
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !10440, !noalias !10439
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !10440, !noalias !10439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !10439
  call void @llvm.experimental.noalias.scope.decl(metadata !10441), !noalias !10006
  call void @llvm.experimental.noalias.scope.decl(metadata !10442), !noalias !10006
  %i.bqh = load i32, ptr %i.bkc, align 4, !alias.scope !10443, !noalias !10006, !noundef !10
  %i.bqi = and i32 %i.bqh, 1024
  %.not.i.i110 = icmp eq i32 %i.bqi, 0
  br i1 %.not.i.i110, label %bb.lh, label %bb.lj

bb.lh:                                            ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher5entry.exit.i
  %i.bqj = load i32, ptr %i.bkd, align 8, !alias.scope !10443, !noalias !10006, !noundef !10
  %i.bqk = and i32 %i.bqj, 1024
  %.not11.i.i = icmp eq i32 %i.bqk, 0
  br i1 %.not11.i.i, label %bb.li, label %bb.lj, !prof !18

bb.li:                                            ; preds = %bb.lh
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #44, !noalias !10444
  unreachable

bb.lj:                                            ; preds = %bb.lh, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher5entry.exit.i
  %i.bql = load i64, ptr %i.bnu, align 8, !range !24, !alias.scope !10443, !noalias !10006, !noundef !10
  %.not12.i.i = icmp eq i64 %i.bql, -1
  %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command36get_external_subcommand_value_parser7DEFAULT..i.i = select i1 %.not12.i.i, ptr @_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command36get_external_subcommand_value_parser7DEFAULT, ptr %i.bnu ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10445), !noalias !10006
  %i.bqm = load i64, ptr %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command36get_external_subcommand_value_parser7DEFAULT..i.i, align 8, !range !47, !alias.scope !10445, !noalias !10446, !noundef !10
  switch i64 %i.bqm, label %default.unreachable [
    i64 0, label %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg12new_external.exit.i
    i64 1, label %bb.lk
    i64 2, label %bb.ll
    i64 3, label %bb.lm
    i64 4, label %bb.ln
  ]

bb.lk:                                            ; preds = %bb.lj
  br label %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg12new_external.exit.i

bb.ll:                                            ; preds = %bb.lj
  br label %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg12new_external.exit.i

bb.lm:                                            ; preds = %bb.lj
  br label %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg12new_external.exit.i

bb.ln:                                            ; preds = %bb.lj
  %i.bqn = getelementptr inbounds nuw i8, ptr %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command36get_external_subcommand_value_parser7DEFAULT..i.i, i64 8
  %i.bqo = load ptr, ptr %i.bqn, align 8, !alias.scope !10445, !noalias !10446, !nonnull !10, !noundef !10
  %i.bqp = getelementptr inbounds nuw i8, ptr %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command36get_external_subcommand_value_parser7DEFAULT..i.i, i64 16
  %i.bqq = load ptr, ptr %i.bqp, align 8, !alias.scope !10445, !noalias !10446, !nonnull !10, !align !16, !noundef !10
  br label %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg12new_external.exit.i

_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg12new_external.exit.i: ; preds = %bb.ln, %bb.lm, %bb.ll, %bb.lk, %bb.lj
  %.sroa.6.0.i.i.i111 = phi ptr [ %i.bqq, %bb.ln ], [ @256, %bb.lk ], [ @257, %bb.ll ], [ @258, %bb.lm ], [ @255, %bb.lj ]
  %.sroa.0.0.i.i.i112 = phi ptr [ %i.bqo, %bb.ln ], [ inttoptr (i64 1 to ptr), %bb.lk ], [ inttoptr (i64 1 to ptr), %bb.ll ], [ inttoptr (i64 1 to ptr), %bb.lm ], [ inttoptr (i64 1 to ptr), %bb.lj ]
  %i.bqr = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i.i.i111, i64 40
  %i.bqs = load ptr, ptr %i.bqr, align 8, !invariant.load !10, !noalias !10447, !nonnull !10
  %.sroa.42.0..sroa_idx.i.i113 = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  call void %i.bqs(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %.sroa.42.0..sroa_idx.i.i113, ptr noundef nonnull %.sroa.0.0.i.i.i112) #45, !noalias !10448, !inline_history !9160
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bz, i64 97
  store i8 -1, ptr %i.bqt, align 1, !alias.scope !10441, !noalias !10439
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store i64 0, ptr %i.bqu, align 8, !alias.scope !10441, !noalias !10439
  %.sroa.4.0..sroa_idx.i.i114 = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i114, align 8, !alias.scope !10441, !noalias !10439
  %.sroa.5.0..sroa_idx.i.i115 = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i115, align 8, !alias.scope !10441, !noalias !10439
  store i64 1, ptr %i.bz, align 8, !alias.scope !10441, !noalias !10439
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  store i64 0, ptr %i.bqv, align 8, !alias.scope !10441, !noalias !10439
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !10441, !noalias !10439
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !10441, !noalias !10439
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !10441, !noalias !10439
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 88
  store i64 0, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !10441, !noalias !10439
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bz, i64 96
  store i8 0, ptr %i.bqw, align 8, !alias.scope !10441, !noalias !10439
  %i.bqx = call fastcc noundef nonnull align 8 ptr @_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB5_5EntryNtNtB7_2id2IdNtNtNtNtB9_6parser7matches11matched_arg10MatchedArgE9or_insertB9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.ca, ptr noalias nofree noundef align 8 captures(address) dereferenceable(104) %i.bz) #43, !noalias !10449 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !10439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !10439
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqx, i64 97
  store i8 2, ptr %i.bqy, align 1, !alias.scope !10450, !noalias !10449
  call void @llvm.experimental.noalias.scope.decl(metadata !10451), !noalias !10006
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.bqx, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10452), !noalias !10006
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqx, i64 64 ; 2 uses
  %i.brb = load i64, ptr %i.bra, align 8, !alias.scope !10453, !noalias !10449, !noundef !10 ; 3 uses
  %i.brc = load i64, ptr %i.bqz, align 8, !range !11, !alias.scope !10453, !noalias !10449, !noundef !10
  %i.brd = icmp eq i64 %i.brb, %i.brc
  br i1 %i.brd, label %bb.lo, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEE8push_mutBP_.exit.i.i

bb.lo:                                            ; preds = %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg12new_external.exit.i
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEE8grow_oneB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bqz) #42, !noalias !10454
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEE8push_mutBP_.exit.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEE8push_mutBP_.exit.i.i: ; preds = %bb.lo, %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg12new_external.exit.i
  %i.bre = getelementptr inbounds nuw i8, ptr %i.bqx, i64 56
  %i.brf = load ptr, ptr %i.bre, align 8, !alias.scope !10453, !noalias !10449, !nonnull !10, !noundef !10
  %i.brg = getelementptr inbounds nuw [24 x i8], ptr %i.brf, i64 %i.brb ; 3 uses
  store i64 0, ptr %i.brg, align 8, !noalias !10455
  %.sroa.4.0..sroa_idx.i2.i = getelementptr inbounds nuw i8, ptr %i.brg, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i2.i, align 8, !noalias !10455
  %.sroa.5.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %i.brg, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i3.i, align 8, !noalias !10455
  %i.brh = add i64 %i.brb, 1
  store i64 %i.brh, ptr %i.bra, align 8, !alias.scope !10453, !noalias !10449
  %i.bri = getelementptr inbounds nuw i8, ptr %i.bqx, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10456), !noalias !10006
  %i.brj = getelementptr inbounds nuw i8, ptr %i.bqx, i64 88 ; 2 uses
  %i.brk = load i64, ptr %i.brj, align 8, !alias.scope !10457, !noalias !10449, !noundef !10 ; 3 uses
  %i.brl = load i64, ptr %i.bri, align 8, !range !11, !alias.scope !10457, !noalias !10449, !noundef !10
  %i.brm = icmp eq i64 %i.brk, %i.brl
  br i1 %i.brm, label %bb.lp, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher28start_occurrence_of_external.exit

bb.lp:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEE8push_mutBP_.exit.i.i
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEE8grow_oneCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bri) #42, !noalias !10458
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher28start_occurrence_of_external.exit

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher28start_occurrence_of_external.exit: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEE8push_mutBP_.exit.i.i, %bb.lp
  %i.brn = getelementptr inbounds nuw i8, ptr %i.bqx, i64 80
  %i.bro = load ptr, ptr %i.brn, align 8, !alias.scope !10457, !noalias !10449, !nonnull !10, !noundef !10
  %i.brp = getelementptr inbounds nuw [24 x i8], ptr %i.bro, i64 %i.brk ; 3 uses
  store i64 0, ptr %i.brp, align 8, !noalias !10459
  %.sroa.42.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.brp, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i4.i, align 8, !noalias !10459
  %.sroa.53.0..sroa_idx.i.i116 = getelementptr inbounds nuw i8, ptr %i.brp, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i116, align 8, !noalias !10459
  %i.brq = add i64 %i.brk, 1
  store i64 %i.brq, ptr %i.brj, align 8, !alias.scope !10457, !noalias !10449
  %i.brr = call { ptr, ptr } @_RNvMCs3RZUOUhPFQ6_8clap_lexNtB2_7RawArgs9remaining(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ga) #43, !noalias !10006, !inline_history !8350 ; 2 uses
  %i.brs = extractvalue { ptr, ptr } %i.brr, 0    ; 3 uses
  %i.brt = extractvalue { ptr, ptr } %i.brr, 1    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.brs), "nonnull"(ptr %i.brt) ]
  %i.bru = icmp eq ptr %i.brs, %i.brt
  br i1 %i.bru, label %._crit_edge, label %.lr.ph1823

.lr.ph1823:                                       ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher28start_occurrence_of_external.exit
  %.sroa.4140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.sroa.5141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  br label %bb.lr

bb.lq:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i120
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bqd, ptr nonnull align 1 %i.bpz, i64 %i.bqb, i1 false), !noalias !10006
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher5entry.exit.i

bb.lr:                                            ; preds = %.lr.ph1823, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit101.thread913
  %.sroa.098.0.i1822 = phi ptr [ %i.brs, %.lr.ph1823 ], [ %i.brv, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit101.thread913 ] ; 3 uses
  %i.brv = getelementptr inbounds nuw i8, ptr %.sroa.098.0.i1822, i64 24 ; 2 uses
  %i.brw = getelementptr inbounds nuw i8, ptr %.sroa.098.0.i1822, i64 8
  %i.brx = load ptr, ptr %i.brw, align 8, !noalias !10006, !nonnull !10, !noundef !10 ; 2 uses
  %i.bry = getelementptr inbounds nuw i8, ptr %.sroa.098.0.i1822, i64 16
  %i.brz = load i64, ptr %i.bry, align 8, !noalias !10006, !noundef !10 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er), !noalias !10009
  switch i64 %i.bnw, label %default.unreachable [
    i64 0, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser9parse_ref.exit
    i64 1, label %bb.ls
    i64 2, label %bb.lt
    i64 3, label %bb.lu
    i64 4, label %bb.lv
  ]

bb.ls:                                            ; preds = %bb.lr
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser9parse_ref.exit

bb.lt:                                            ; preds = %bb.lr
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser9parse_ref.exit

bb.lu:                                            ; preds = %bb.lr
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser9parse_ref.exit

bb.lv:                                            ; preds = %bb.lr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.i), "nonnull"(ptr %.sroa.9.0.i) ]
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser9parse_ref.exit

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser9parse_ref.exit: ; preds = %bb.lr, %bb.ls, %bb.lt, %bb.lu, %bb.lv
  %.sroa.6.0.i105 = phi ptr [ %.sroa.9.0.i, %bb.lv ], [ @256, %bb.ls ], [ @257, %bb.lt ], [ @258, %bb.lu ], [ @255, %bb.lr ]
  %.sroa.0.0.i106 = phi ptr [ %.sroa.8.0.i, %bb.lv ], [ inttoptr (i64 1 to ptr), %bb.ls ], [ inttoptr (i64 1 to ptr), %bb.lt ], [ inttoptr (i64 1 to ptr), %bb.lu ], [ inttoptr (i64 1 to ptr), %bb.lr ]
  %i.bsa = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i105, i64 32
  %i.bsb = load ptr, ptr %i.bsa, align 8, !invariant.load !10, !noalias !10460, !nonnull !10
  call void %i.bsb(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.er, ptr noundef nonnull %.sroa.0.0.i106, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.bge, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) null, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.brx, i64 noundef %i.brz, i8 noundef 2) #45, !noalias !10461, !inline_history !9177
  %i.bsc = load ptr, ptr %i.er, align 8, !noalias !10009, !noundef !10
  %i.bsd = icmp eq ptr %i.bsc, null
  br i1 %i.bsd, label %bb.lw, label %bb.ly

._crit_edge:                                      ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit101.thread913, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher28start_occurrence_of_external.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo), !noalias !10009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en), !noalias !10009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.en, ptr noundef nonnull align 8 dereferenceable(120) %i.es, i64 120, i1 false), !noalias !10009
  %i.bse = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher10into_inner(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.bse, ptr noalias nofree noundef align 8 captures(address) dereferenceable(120) %i.en) #43, !noalias !10006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en), !noalias !10009
  store i64 %i.bqb, ptr %i.eo, align 8, !noalias !10009
  %.sroa.4740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr %i.bqf, ptr %.sroa.4740.0..sroa_idx, align 8, !noalias !10009
  %.sroa.5741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i64 %i.bqb, ptr %.sroa.5741.0..sroa_idx, align 8, !noalias !10009
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher10subcommand(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.eo) #43, !noalias !10006, !inline_history !8350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo), !noalias !10009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es), !noalias !10009
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit104

bb.lw:                                            ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser9parse_ref.exit
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.bsg = load ptr, ptr %i.bsf, align 8, !noalias !10009, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er), !noalias !10009
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcher10ArgMatcherEBH_(ptr noalias nofree noundef align 8 dereferenceable(120) %i.es) #43, !noalias !10006, !inline_history !8350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es), !noalias !10009
  br i1 %i.bqc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit104, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bqf, i64 noundef %i.bqb, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10462
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit104

bb.ly:                                            ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser9parse_ref.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eq, ptr noundef nonnull align 8 dereferenceable(32) %i.er, i64 32, i1 false), !noalias !10009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er), !noalias !10009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep), !noalias !10009
  %.not.i97 = icmp slt i64 %i.brz, 0
  br i1 %.not.i97, label %bb.ma, label %bb.lz, !prof !20

bb.lz:                                            ; preds = %bb.ly
  %i.bsh = icmp eq i64 %i.brz, 0
  br i1 %i.bsh, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit101.thread913, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i99

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i99: ; preds = %bb.lz
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10463
  %i.bsi = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.brz, i64 noundef range(i64 1, 9) 1) #43, !noalias !10463 ; 3 uses
  %i.bsj = icmp eq ptr %i.bsi, null
  br i1 %i.bsj, label %bb.ma, label %bb.mb

bb.ma:                                            ; preds = %bb.ly, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i99
  %.sroa.4773.0.ph = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i99 ], [ 0, %bb.ly ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4773.0.ph, i64 %i.brz) #46, !noalias !10006, !inline_history !8350
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit101.thread913: ; preds = %bb.lz, %bb.mb
  %i.bsk = phi ptr [ %i.bsi, %bb.mb ], [ inttoptr (i64 1 to ptr), %bb.lz ]
  store i64 %i.brz, ptr %i.ep, align 8, !noalias !10009
  store ptr %i.bsk, ptr %.sroa.4140.0..sroa_idx.i, align 8, !noalias !10009
  store i64 %i.brz, ptr %.sroa.5141.0..sroa_idx.i, align 8, !noalias !10009
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher10add_val_to(ptr noalias nofree noundef align 8 dereferenceable(120) %i.es, ptr nonnull inttoptr (i64 1 to ptr), i64 0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.eq, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ep) #43, !noalias !10006, !inline_history !8350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep), !noalias !10009
  %i.bsl = icmp eq ptr %i.brv, %i.brt
  br i1 %i.bsl, label %._crit_edge, label %bb.lr

bb.mb:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i99
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bsi, ptr nonnull align 1 %i.brx, i64 %i.brz, i1 false), !noalias !10006
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit101.thread913

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit104: ; preds = %bb.lx, %bb.lw, %._crit_edge, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit151
  %.sroa.0.5.i = phi ptr [ %i.bpx, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit151 ], [ null, %._crit_edge ], [ %i.bsg, %bb.lw ], [ %i.bsg, %bb.lx ] ; 3 uses
  %switch.i.i = icmp samesign ult i64 %i.bnw, 4
  br i1 %switch.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parser11ValueParserEBH_.exit, label %bb.mc

bb.mc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit104
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.i) ]
  %i.bsm = load ptr, ptr %.sroa.9.0.i, align 8, !invariant.load !10, !noalias !10464 ; 2 uses
  %.not.i.i.i96 = icmp eq ptr %i.bsm, null
  br i1 %.not.i.i.i96, label %bb.me, label %bb.md

bb.md:                                            ; preds = %bb.mc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.i) ], !noalias !10006
  call void %i.bsm(ptr noundef nonnull %.sroa.8.0.i) #45, !noalias !10464, !inline_history !9186
  br label %bb.me

bb.me:                                            ; preds = %bb.md, %bb.mc
  %i.bsn = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i, i64 8
  %i.bso = load i64, ptr %i.bsn, align 8, !range !11, !invariant.load !10, !noalias !10464 ; 2 uses
  %i.bsp = icmp eq i64 %i.bso, 0
  br i1 %i.bsp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parser11ValueParserEBH_.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.me
  %i.bsq = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i, i64 16
  %i.bsr = load i64, ptr %i.bsq, align 8, !range !17, !invariant.load !10, !noalias !10464
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.i) ], !noalias !10006
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.i, i64 noundef %i.bso, i64 noundef range(i64 1, -9223372036854775807) %i.bsr) #43, !noalias !10464
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parser11ValueParserEBH_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit25: ; preds = %bb.of, %bb.oe, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parser11ValueParserEBH_.exit
  %.sroa.0.6.i = phi ptr [ %.sroa.0.3.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parser11ValueParserEBH_.exit ], [ %i.caq, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit ], [ %i.cbb, %bb.oe ], [ %i.cbb, %bb.of ] ; 4 uses
  %.val194.i = load i64, ptr %i.fz, align 8, !range !12, !noalias !10009, !noundef !10 ; 2 uses
  %i.bss = icmp sgt i64 %.val194.i, 0
  br i1 %i.bss, label %bb.mf, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser5parse.exit

bb.mf:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit25
  %i.bst = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.val195.i = load ptr, ptr %i.bst, align 8, !noalias !10009, !nonnull !10, !noundef !10
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val195.i, i64 noundef %.val194.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10465
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser5parse.exit

bb.mg:                                            ; preds = %bb.hu
  %i.bsu = load ptr, ptr %i.gc, align 8, !alias.scope !10006, !nonnull !10, !align !16, !noundef !10 ; 9 uses
  %i.bsv = getelementptr i8, ptr %i.bsu, i64 700  ; 2 uses
  %.val186.i = load i32, ptr %i.bsv, align 4, !noundef !10 ; 2 uses
  %i.bsw = getelementptr i8, ptr %i.bsu, i64 704  ; 2 uses
  %.val187.i = load i32, ptr %i.bsw, align 8      ; 2 uses
  %i.bsx = and i32 %.val186.i, 8192
  %.not.i89 = icmp ne i32 %i.bsx, 0
  %i.bsy = and i32 %.val187.i, 8192
  %i.bsz = icmp ne i32 %i.bsy, 0
  %.sroa.0.0.i90 = select i1 %.not.i89, i1 true, i1 %i.bsz
  %i.bta = trunc nuw i8 %.sroa.0686.5 to i1
  %or.cond7.i = select i1 %.sroa.0.0.i90, i1 %i.bta, i1 false
  br i1 %or.cond7.i, label %bb.ml, label %bb.mi

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.oh, %bb.og
  %.val192.i.pr = load i64, ptr %i.fz, align 8, !noalias !10009 ; 2 uses
  %i.btb = icmp sgt i64 %.val192.i.pr, 0
  br i1 %i.btb, label %bb.mh, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser5parse.exit.thread

bb.mh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit
  %i.btc = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.val193.i = load ptr, ptr %i.btc, align 8, !noalias !10009, !nonnull !10, !noundef !10
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val193.i, i64 noundef %.val192.i.pr, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10466
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser5parse.exit.thread

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser5parse.exit.thread: ; preds = %bb.hu, %bb.mh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz), !noalias !10009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultuNtNtCsfu0rQaTkGUu_12clap_builder5error5ErrorE11inspect_errNCNvMs_NtNtBN_6parser6parserNtB1M_6Parser16get_matches_with0EBN_.exit

bb.mi:                                            ; preds = %bb.mg
  %i.btd = getelementptr i8, ptr %i.bsu, i64 184
  %.val265.i = load ptr, ptr %i.btd, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.bte = getelementptr i8, ptr %i.bsu, i64 192
  %.val266.i = load i64, ptr %i.bte, align 8, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10467)
  %i.btf = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.val.i.i78 = load ptr, ptr %i.btf, align 8, !alias.scope !10467, !nonnull !10, !noundef !10 ; 2 uses
  %i.btg = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %.val1.i.i79 = load i64, ptr %i.btg, align 8, !alias.scope !10467, !noundef !10 ; 4 uses
  %.idx.i80 = mul nuw nsw i64 %.val266.i, 712
  %i.bth = getelementptr inbounds nuw i8, ptr %.val265.i, i64 %.idx.i80
  %i.bti = icmp eq i64 %.val266.i, 0
  br i1 %i.bti, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.mi, %_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB8_7Command15find_subcommandRNtNtCs4wP2HXfJTCR_5alloc6string6StringE0Bc_.exit.i.i
  %i.btj = phi ptr [ %i.btk, %_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB8_7Command15find_subcommandRNtNtCs4wP2HXfJTCR_5alloc6string6StringE0Bc_.exit.i.i ], [ %.val265.i, %bb.mi ] ; 6 uses
  %i.btk = getelementptr inbounds nuw i8, ptr %i.btj, i64 712 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10468)
  %i.btl = getelementptr i8, ptr %i.btj, i64 568
  %i.btm = load i64, ptr %i.btl, align 8, !alias.scope !10468, !noalias !10469, !noundef !10 ; 9 uses
  %i.btn = icmp eq i64 %.val1.i.i79, %i.btm
  br i1 %i.btn, label %bb.mj, label %bb.mk

bb.mj:                                            ; preds = %.lr.ph.i.i
  %i.bto = getelementptr inbounds nuw i8, ptr %i.btj, i64 560
  %i.btp = load ptr, ptr %i.bto, align 8, !alias.scope !10468, !noalias !10469, !nonnull !10, !noundef !10 ; 2 uses
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i78, ptr nonnull %i.btp, i64 %.val1.i.i79), !noalias !10470
  %i.btq = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.btq, label %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandRNtNtCs4wP2HXfJTCR_5alloc6string6StringEBa_.exit, label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %.lr.ph.i.i
  %i.btr = getelementptr inbounds nuw i8, ptr %i.btj, i64 64
  %i.bts = load ptr, ptr %i.btr, align 8, !alias.scope !10468, !noalias !10469, !nonnull !10, !noundef !10 ; 2 uses
  %i.btt = getelementptr inbounds nuw i8, ptr %i.btj, i64 72
  %i.btu = load i64, ptr %i.btt, align 8, !alias.scope !10468, !noalias !10469, !noundef !10 ; 2 uses
  %.idx.i.i.i.i81 = mul nuw nsw i64 %i.btu, 24
  %i.btv = getelementptr inbounds nuw i8, ptr %i.bts, i64 %.idx.i.i.i.i81
  %.not.i.i.i.i.i82 = icmp eq i64 %i.btu, 0
  br i1 %.not.i.i.i.i.i82, label %_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB8_7Command15find_subcommandRNtNtCs4wP2HXfJTCR_5alloc6string6StringE0Bc_.exit.i.i, label %.lr.ph.i.i.i.i.i83

.lr.ph.i.i.i.i.i83:                               ; preds = %bb.mk, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtB15_7commandNtB2J_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1R_NCINvMs5_B2J_B2X_10aliases_toRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrE0E0E0B17_.exit.backedge.i.i.i.i.i
  %i.btw = phi ptr [ %i.btx, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtB15_7commandNtB2J_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1R_NCINvMs5_B2J_B2X_10aliases_toRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrE0E0E0B17_.exit.backedge.i.i.i.i.i ], [ %i.bts, %bb.mk ] ; 3 uses
  %i.btx = getelementptr inbounds nuw i8, ptr %i.btw, i64 24 ; 2 uses
  %i.bty = getelementptr i8, ptr %i.btw, i64 8
  %.val6.i.i.i.i.i84 = load i64, ptr %i.bty, align 8, !noalias !10471, !noundef !10
  %i.btz = icmp eq i64 %.val1.i.i79, %.val6.i.i.i.i.i84
  br i1 %i.btz, label %.split.i.i.i.i.i86, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtB15_7commandNtB2J_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1R_NCINvMs5_B2J_B2X_10aliases_toRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrE0E0E0B17_.exit.backedge.i.i.i.i.i

.split.i.i.i.i.i86:                               ; preds = %.lr.ph.i.i.i.i.i83
end_hunk_2
begin_hunk_3_@_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3strNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_3StrE4from:bb.a

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_groupNtB5_8ArgGroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load i64, ptr %i.c, align 8, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5 = load i64, ptr %i.f, align 8, !noundef !10 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12551)
  %i.g = shl nuw nsw i64 %.val5, 4                ; 2 uses
  %i.h = icmp eq i64 %.val5, 0
  br i1 %i.h, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.a
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !12552
  %i.i = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, 9) 8) #43, !noalias !12552 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %.lr.ph.preheader.i.i

bb.b:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.g) #46, !noalias !12553
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.val4, i64 %.val5
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.preheader.i.i
  %.sroa.0.022.i.i = phi ptr [ %i.o, %bb.c ], [ %.val4, %.lr.ph.preheader.i.i ] ; 4 uses
  %.sroa.7.021.i.i = phi i64 [ %i.n, %bb.c ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.10.020.i.i = phi i64 [ %i.m, %bb.c ], [ %.val5, %.lr.ph.preheader.i.i ]
  %i.l = icmp eq ptr %.sroa.0.022.i.i, %i.k
  br i1 %i.l, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.m = add nsw i64 %.sroa.10.020.i.i, -1        ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.7.021.i.i, 1
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i, i64 16
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.sroa.7.021.i.i ; 2 uses
  %.val.i.i = load ptr, ptr %.sroa.0.022.i.i, align 8, !alias.scope !12551, !noalias !12554, !nonnull !10, !noundef !10
  %i.q = getelementptr i8, ptr %.sroa.0.022.i.i, i64 8
  %.val13.i.i = load i64, ptr %i.q, align 8, !alias.scope !12551, !noalias !12554, !noundef !10
  store ptr %.val.i.i, ptr %i.p, align 8, !noalias !12553
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.val13.i.i, ptr %i.r, align 8, !noalias !12553
  %i.s = icmp eq i64 %i.m, 0
  br i1 %i.s, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit, label %.lr.ph.i.i

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit: ; preds = %.lr.ph.i.i, %bb.c, %bb.a
  %.sroa.10.0.i30.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.i, %bb.c ], [ %i.i, %.lr.ph.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load i8, ptr %i.t, align 8, !range !33, !noundef !10
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val2 = load ptr, ptr %i.v, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val3 = load i64, ptr %i.w, align 8, !noundef !10 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12555)
  %i.x = shl nuw nsw i64 %.val3, 4                ; 2 uses
  %i.y = icmp eq i64 %.val3, 0
  br i1 %i.y, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit17, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i6

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i6: ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !12556
  %i.z = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.x, i64 noundef range(i64 1, 9) 8) #43, !noalias !12556 ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.d, label %.lr.ph.preheader.i.i7

bb.d:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i6
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.x) #46, !noalias !12557
  unreachable

.lr.ph.preheader.i.i7:                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i6
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.val2, i64 %.val3
  br label %.lr.ph.i.i8

.lr.ph.i.i8:                                      ; preds = %bb.e, %.lr.ph.preheader.i.i7
  %.sroa.0.022.i.i9 = phi ptr [ %i.af, %bb.e ], [ %.val2, %.lr.ph.preheader.i.i7 ] ; 4 uses
  %.sroa.7.021.i.i10 = phi i64 [ %i.ae, %bb.e ], [ 0, %.lr.ph.preheader.i.i7 ] ; 2 uses
  %.sroa.10.020.i.i11 = phi i64 [ %i.ad, %bb.e ], [ %.val3, %.lr.ph.preheader.i.i7 ]
  %i.ac = icmp eq ptr %.sroa.0.022.i.i9, %i.ab
  br i1 %i.ac, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit17, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i8
  %i.ad = add nsw i64 %.sroa.10.020.i.i11, -1     ; 2 uses
  %i.ae = add nuw nsw i64 %.sroa.7.021.i.i10, 1
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i9, i64 16
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.sroa.7.021.i.i10 ; 2 uses
  %.val.i.i12 = load ptr, ptr %.sroa.0.022.i.i9, align 8, !alias.scope !12555, !noalias !12558, !nonnull !10, !noundef !10
  %i.ah = getelementptr i8, ptr %.sroa.0.022.i.i9, i64 8
  %.val13.i.i13 = load i64, ptr %i.ah, align 8, !alias.scope !12555, !noalias !12558, !noundef !10
  store ptr %.val.i.i12, ptr %i.ag, align 8, !noalias !12557
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %.val13.i.i13, ptr %i.ai, align 8, !noalias !12557
  %i.aj = icmp eq i64 %i.ad, 0
  br i1 %i.aj, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit17, label %.lr.ph.i.i8

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit17: ; preds = %.lr.ph.i.i8, %bb.e, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit
  %.sroa.10.0.i30.i.i14 = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit ], [ %i.z, %bb.e ], [ %i.z, %.lr.ph.i.i8 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load ptr, ptr %i.ak, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val1 = load i64, ptr %i.al, align 8, !noundef !10 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12559)
  %i.am = shl nuw nsw i64 %.val1, 4               ; 2 uses
  %i.an = icmp eq i64 %.val1, 0
  br i1 %i.an, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit29, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i18

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i18: ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit17
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !12560
  %i.ao = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.am, i64 noundef range(i64 1, 9) 8) #43, !noalias !12560 ; 4 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.f, label %.lr.ph.preheader.i.i19

bb.f:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i18
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.am) #46, !noalias !12561
  unreachable

.lr.ph.preheader.i.i19:                           ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i18
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.val1
  br label %.lr.ph.i.i20

.lr.ph.i.i20:                                     ; preds = %bb.g, %.lr.ph.preheader.i.i19
  %.sroa.0.022.i.i21 = phi ptr [ %i.au, %bb.g ], [ %.val, %.lr.ph.preheader.i.i19 ] ; 4 uses
  %.sroa.7.021.i.i22 = phi i64 [ %i.at, %bb.g ], [ 0, %.lr.ph.preheader.i.i19 ] ; 2 uses
  %.sroa.10.020.i.i23 = phi i64 [ %i.as, %bb.g ], [ %.val1, %.lr.ph.preheader.i.i19 ]
  %i.ar = icmp eq ptr %.sroa.0.022.i.i21, %i.aq
  br i1 %i.ar, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit29, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i20
  %i.as = add nsw i64 %.sroa.10.020.i.i23, -1     ; 2 uses
  %i.at = add nuw nsw i64 %.sroa.7.021.i.i22, 1
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i21, i64 16
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %.sroa.7.021.i.i22 ; 2 uses
  %.val.i.i24 = load ptr, ptr %.sroa.0.022.i.i21, align 8, !alias.scope !12559, !noalias !12562, !nonnull !10, !noundef !10
  %i.aw = getelementptr i8, ptr %.sroa.0.022.i.i21, i64 8
  %.val13.i.i25 = load i64, ptr %i.aw, align 8, !alias.scope !12559, !noalias !12562, !noundef !10
  store ptr %.val.i.i24, ptr %i.av, align 8, !noalias !12561
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %.val13.i.i25, ptr %i.ax, align 8, !noalias !12561
  %i.ay = icmp eq i64 %i.as, 0
  br i1 %i.ay, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit29, label %.lr.ph.i.i20

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit29: ; preds = %.lr.ph.i.i20, %bb.g, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit17
  %.sroa.10.0.i30.i.i26 = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit17 ], [ %i.ao, %bb.g ], [ %i.ao, %.lr.ph.i.i20 ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.ba = load i8, ptr %i.az, align 1, !range !33, !noundef !10
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.b, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.d, ptr %i.bc, align 8
  store i64 %.val5, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i30.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val5, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %i.u, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val3, ptr %i.be, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.10.0.i30.i.i14, ptr %.sroa.431.0..sroa_idx, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.val3, ptr %.sroa.532.0..sroa_idx, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.val1, ptr %i.bf, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.10.0.i30.i.i26, ptr %.sroa.434.0..sroa_idx, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.val1, ptr %.sroa.535.0..sroa_idx, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 %i.ba, ptr %i.bg, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2_NtNtCsj6eKBz9Db1c_4core5slice3cmpINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsfu0rQaTkGUu_12clap_builder(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec10partial_eqINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec10partial_eqINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit
  %.sroa.01.011 = phi i64 [ %i.s, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec10partial_eqINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.011 ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.sroa.01.011 ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %.val5 = load i64, ptr %i.e, align 8, !noundef !10 ; 3 uses
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %.val6 = load ptr, ptr %i.f, align 8            ; 2 uses
  %i.g = getelementptr i8, ptr %i.c, i64 16
  %.val7 = load i64, ptr %i.g, align 8, !noundef !10
  %i.h = icmp eq i64 %.val5, %.val7               ; 3 uses
  br i1 %i.h, label %bb.b, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec10partial_eqINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit.thread

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6), "nonnull"(ptr %.val) ]
  %i.i = icmp eq i64 %.val5, 0
  br i1 %i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec10partial_eqINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %_RNvYNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit.i.i
  %i.j = add nuw i64 %.sroa.01.09.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.j, %.val5
  br i1 %exitcond.not.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec10partial_eqINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.01.09.i.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.01.09.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.val6, i64 %.sroa.01.09.i.i ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 16
  %.val5.i.i = load i64, ptr %i.m, align 8, !noundef !10 ; 2 uses
  %i.n = getelementptr i8, ptr %i.l, i64 16
  %.val7.i.i = load i64, ptr %i.n, align 8, !noundef !10
  %i.o = icmp eq i64 %.val5.i.i, %.val7.i.i
  br i1 %i.o, label %_RNvYNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec10partial_eqINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit.thread

_RNvYNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit.i.i: ; preds = %.lr.ph.i.i
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %.val6.i.i = load ptr, ptr %i.p, align 8, !nonnull !10, !noundef !10
  %i.q = getelementptr i8, ptr %i.k, i64 8
  %.val.i.i = load ptr, ptr %i.q, align 8, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val6.i.i, i64 %.val5.i.i)
  %.not.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not.i.i, label %bb.c, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec10partial_eqINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit.thread

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec10partial_eqINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit.thread: ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec10partial_eqINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit, %.lr.ph, %.lr.ph.i.i, %_RNvYNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit.i.i, %bb.a
  %i.r = phi i1 [ true, %bb.a ], [ false, %.lr.ph.i.i ], [ false, %_RNvYNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit.i.i ], [ %i.h, %.lr.ph ], [ %i.h, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec10partial_eqINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit ]
  ret i1 %i.r

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec10partial_eqINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.c, %bb.b
  %i.s = add nuw i64 %.sroa.01.011, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %2
  br i1 %exitcond.not, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec10partial_eqINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit.thread, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs4wP2HXfJTCR_5alloc6string6StringINtB5_14SlicePartialEqBC_E17equal_same_lengthCsfu0rQaTkGUu_12clap_builder(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit
  %i.b = add nuw i64 %.sroa.01.09, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.09 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.09 ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.sroa.01.09 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val5 = load i64, ptr %i.e, align 8, !noundef !10 ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %.val7 = load i64, ptr %i.f, align 8, !noundef !10
  %i.g = icmp eq i64 %.val5, %.val7
  br i1 %i.g, label %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit, label %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit.thread

_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %.lr.ph
  %i.h = getelementptr i8, ptr %i.d, i64 8
  %.val6 = load ptr, ptr %i.h, align 8, !nonnull !10, !noundef !10
  %i.i = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.i, align 8, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val6, i64 %.val5)
  %.not = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not, label %bb.b, label %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit.thread

_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit.thread: ; preds = %bb.b, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neCsfu0rQaTkGUu_12clap_builder.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB8_.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB8_.exit
  %i.b = add nuw i64 %.sroa.01.09, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB8_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.09 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.09 ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.sroa.01.09 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val5 = load i64, ptr %i.e, align 8, !noundef !10 ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %.val7 = load i64, ptr %i.f, align 8, !noundef !10
  %i.g = icmp eq i64 %.val5, %.val7
  br i1 %i.g, label %_RNvYNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB8_.exit, label %_RNvYNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB8_.exit.thread

_RNvYNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB8_.exit: ; preds = %.lr.ph
  %i.h = getelementptr i8, ptr %i.d, i64 8
  %.val6 = load ptr, ptr %i.h, align 8, !nonnull !10, !noundef !10
  %i.i = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.i, align 8, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val6, i64 %.val5)
  %.not = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not, label %bb.b, label %_RNvYNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB8_.exit.thread

_RNvYNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB8_.exit.thread: ; preds = %bb.b, %_RNvYNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB8_.exit, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_RNvYNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2neB8_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs2_NtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB5_10MatchedArgNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 97
  %i.b = load i8, ptr %i.a, align 1, !range !38, !noundef !10
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val2 = load i64, ptr %i.d, align 8, !noundef !10 ; 4 uses
  %i.e = shl nuw nsw i64 %.val2, 3                ; 3 uses
  %i.f = icmp eq i64 %.val2, 0
  br i1 %i.f, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.a
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !12610
  %i.g = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, 9) 8) #43, !noalias !12610 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #46, !noalias !12611
  unreachable

bb.c:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr nonnull readonly align 8 %.val, i64 %i.e, i1 false), !noalias !12612
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.a, %bb.c
  %.sroa.523.0 = phi ptr [ %i.g, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.i = load i64, ptr %1, align 8, !range !13, !noundef !10
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit, %bb.d
  %.sroa.01.0 = phi i64 [ 1, %bb.d ], [ 0, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsfu0rQaTkGUu_12clap_builder.exit ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val3 = load ptr, ptr %i.l, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val4 = load i64, ptr %i.m, align 8, !noundef !10 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12613)
  %i.n = mul nuw nsw i64 %.val4, 24               ; 2 uses
  %i.o = icmp eq i64 %.val4, 0
  br i1 %i.o, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBP_.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i7

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i7: ; preds = %bb.e
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !12614
  %i.p = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.n, i64 noundef range(i64 1, 9) 8) #43, !noalias !12614 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %.lr.ph.preheader.i.i

bb.f:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i7
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.n) #46, !noalias !12615
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i7
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %.val3, i64 %.val4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.036.i.i = phi ptr [ %i.u, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i.i ], [ %.val3, %.lr.ph.preheader.i.i ] ; 4 uses
  %.sroa.7.035.i.i = phi i64 [ %i.v, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.10.034.i.i = phi i64 [ %i.s, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i.i ], [ %.val4, %.lr.ph.preheader.i.i ]
  %i.s = add nsw i64 %.sroa.10.034.i.i, -1        ; 2 uses
  %i.t = icmp eq ptr %.sroa.0.036.i.i, %i.r
  br i1 %i.t, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBP_.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i.i, i64 24
  %i.v = add nuw nsw i64 %.sroa.7.035.i.i, 1
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.sroa.7.035.i.i ; 3 uses
  %i.x = getelementptr i8, ptr %.sroa.0.036.i.i, i64 8
  %.val.i.i = load ptr, ptr %i.x, align 8, !alias.scope !12613, !noalias !12616, !nonnull !10, !noundef !10 ; 2 uses
  %i.y = getelementptr i8, ptr %.sroa.0.036.i.i, i64 16
  %.val13.i.i = load i64, ptr %i.y, align 8, !alias.scope !12613, !noalias !12616, !noundef !10 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12617)
  %i.z = icmp eq i64 %.val13.i.i, 0
  br i1 %i.z, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.aa = shl nuw nsw i64 %.val13.i.i, 5          ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !12618
  %i.ab = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 9) 8) #43, !noalias !12618 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
end_hunk_3
