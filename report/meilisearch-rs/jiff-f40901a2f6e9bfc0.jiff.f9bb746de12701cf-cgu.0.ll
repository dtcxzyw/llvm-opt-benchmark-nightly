Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/jiff-f40901a2f6e9bfc0.jiff.f9bb746de12701cf-cgu.0?download=true
inline.NumInlined: 4054
inline.NumDeleted: 1353
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZN4jiff3fmt8friendly7printer11SpanPrinter18duration_to_string17h7bd0dba7056506f5E:bb.a
bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h75638f39b226f9c2E.exit"
  invoke void @_ZN4jiff3fmt8friendly7printer11SpanPrinter33print_signed_duration_designators17h0bbefdaaa9a44930E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc unwind label %bb.f

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h75638f39b226f9c2E.exit"
  invoke void @_ZN4jiff3fmt8friendly7printer11SpanPrinter25print_signed_duration_hms17h2758a982cadd0c8cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d, %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !noalias !6315, !nonnull !30, !align !32, !noundef !30
  %i.l = load i16, ptr %i.g, align 8, !noalias !6315, !noundef !30 ; 2 uses
  %i.m = zext i16 %i.l to i64                     ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6317)
  call void @llvm.experimental.noalias.scope.decl(metadata !6318)
  call void @llvm.experimental.noalias.scope.decl(metadata !6319)
  call void @llvm.experimental.noalias.scope.decl(metadata !6320)
  %i.n = icmp ugt i16 %i.l, 4
  br i1 %i.n, label %bb.e, label %bb.h, !prof !42

bb.e:                                             ; preds = %.noexc
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h38682c382e765932E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %i.m)
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %bb.e
  %.pre.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !6321, !noalias !6322
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !6321, !noalias !6322
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !6323)
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !6323 ; 2 uses
  %i.p = icmp eq i64 %.val.i, 0
  br i1 %i.p, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6595dbafa76a25cdE.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val1.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !6323, !nonnull !30, !noundef !30
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !6323
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6595dbafa76a25cdE.exit"

bb.h:                                             ; preds = %.noexc, %.noexc4
  %i.q = phi ptr [ %i.d, %.noexc ], [ %.pre, %.noexc4 ]
  %i.r = phi i64 [ 0, %.noexc ], [ %.pre.i.i.i.i.i.i, %.noexc4 ] ; 3 uses
  %i.s = icmp sgt i64 %i.r, -1
  call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.k, i64 %i.m, i1 false), !noalias !6324
  %i.u = add nuw i64 %i.r, %i.m
  store i64 %i.u, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !6321, !noalias !6322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6595dbafa76a25cdE.exit": ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4jiff3fmt8friendly7printer11SpanPrinter18print_duration_hms17hffc76618f9c8407dE(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 %.0.val, i32 %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !6333 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i8, ptr %i.b, align 4, !range !40, !noundef !30
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.f = load i8, ptr %i.e, align 1
  %.sroa.0.0 = select i1 %i.d, i8 %i.f, i8 2      ; 2 uses
  %i.g = udiv i64 %.0.val, 3600                   ; 2 uses
  %i.h = urem i64 %.0.val, 3600                   ; 2 uses
  %.lhs.trunc = trunc nuw nsw i64 %i.h to i16     ; 2 uses
  %i.i = udiv i16 %.lhs.trunc, 60
  %i.j = urem i16 %.lhs.trunc, 60
  %.zext = zext nneg i16 %i.i to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6334)
  %.sroa.0.0.i.i = tail call noundef range(i8 0, 21) i8 @llvm.umin.i8(i8 %.sroa.0.0, i8 20) ; 2 uses
  %i.k = icmp ult i64 %.0.val, 36000
  br i1 %i.k, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %.0.val, 360000
  br i1 %i.l, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ult i64 %.0.val, 3600000
  br i1 %i.m, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ult i64 %.0.val, 36000000
  br i1 %i.n, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ugt i64 %.0.val, 35999999999999     ; 2 uses
  %i.p = udiv i64 %.0.val, 36000000000000
  %.sroa.05.0.i.i.i = select i1 %i.o, i32 10, i32 0 ; 2 uses
  %.sroa.0.0.i.i.i = select i1 %i.o, i64 %i.p, i64 %i.g ; 3 uses
  %i.q = icmp samesign ugt i64 %.sroa.0.0.i.i.i, 99999
  br i1 %i.q, label %bb.f, label %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.r = udiv i64 %.sroa.0.0.i.i.i, 100000
  %i.s = or disjoint i32 %.sroa.05.0.i.i.i, 5
  br label %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i

_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.05.1.i.i.i = phi i32 [ %i.s, %bb.f ], [ %.sroa.05.0.i.i.i, %bb.e ]
  %.sroa.0.1.i.i.i = phi i64 [ %i.r, %bb.f ], [ %.sroa.0.0.i.i.i, %bb.e ]
  %i.t = trunc nuw nsw i64 %.sroa.0.1.i.i.i to i32 ; 4 uses
  %i.u = add nuw nsw i32 %i.t, 393206
  %i.v = add nuw nsw i32 %i.t, 524188
  %i.w = and i32 %i.u, %i.v
  %i.x = add nuw nsw i32 %i.t, 916504
  %i.y = add nuw nsw i32 %i.t, 514288
  %i.z = and i32 %i.x, %i.y
  %i.aa = xor i32 %i.w, %i.z
  %i.ab = lshr i32 %i.aa, 17
  %i.ac = add nuw nsw i32 %i.ab, %.sroa.05.1.i.i.i
  %i.ad = trunc nuw nsw i32 %i.ac to i8
  %i.ae = add nuw nsw i8 %i.ad, 1
  br label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i

_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i: ; preds = %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i20.i = phi i8 [ %i.ae, %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i ], [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ]
  %.sroa.0.0.i21.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 24) %.sroa.0.0.i20.i, i8 %.sroa.0.0.i.i) ; 2 uses
  %i.af = zext nneg i8 %.sroa.0.0.i21.i to i64    ; 2 uses
  %i.ag = load ptr, ptr %1, align 8, !alias.scope !6334, !nonnull !30, !align !32, !noundef !30 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !6334, !noundef !30 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ak = load i16, ptr %i.aj, align 8, !alias.scope !6334, !noundef !30 ; 2 uses
  %i.al = zext i16 %i.ak to i64                   ; 2 uses
  %i.am = sub nuw i64 %i.ai, %i.al
  %i.an = getelementptr i8, ptr %i.ag, i64 %i.al  ; 2 uses
  %.not.i = icmp ult i64 %i.am, %i.af
  br i1 %.not.i, label %bb.g, label %.preheader22.i, !prof !76

bb.g:                                             ; preds = %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @123, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #45, !noalias !6334
  unreachable

.preheader22.i:                                   ; preds = %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, %.preheader22.i
  %.sroa.06.0.i = phi i64 [ %i.ao, %.preheader22.i ], [ %i.af, %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i ]
  %.sroa.0.0.i = phi i64 [ %i.at, %.preheader22.i ], [ %i.g, %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i ] ; 3 uses
  %i.ao = add i64 %.sroa.06.0.i, -1               ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  %i.aq = urem i64 %.sroa.0.0.i, 10
  %i.ar = trunc nuw nsw i64 %i.aq to i8
  %i.as = or disjoint i8 %i.ar, 48
  store i8 %i.as, ptr %i.ap, align 1, !noalias !6334
  %i.at = udiv i64 %.sroa.0.0.i, 10
  %i.au = icmp samesign ugt i64 %.sroa.0.0.i, 9
  %i.av = icmp ne i64 %i.ao, 0                    ; 2 uses
  %or.cond2.i = and i1 %i.au, %i.av
  br i1 %or.cond2.i, label %.preheader22.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader22.i
  br i1 %i.av, label %.lr.ph.preheader.i, label %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.an, i8 48, i64 %i.ao, i1 false), !noalias !6334
  br label %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit

_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit: ; preds = %.preheader.i, %.lr.ph.preheader.i
  %i.aw = zext nneg i8 %.sroa.0.0.i21.i to i16
  %i.ax = add i16 %i.ak, %i.aw                    ; 3 uses
  store i16 %i.ax, ptr %i.aj, align 8, !alias.scope !6334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6335)
  %i.ay = zext i16 %i.ax to i64                   ; 2 uses
  %.not.i10 = icmp eq i64 %i.ai, %i.ay
  br i1 %.not.i10, label %bb.h, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit, !prof !42

bb.h:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !6335
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit: ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ay
  store i8 58, ptr %i.az, align 1, !noalias !6335
  %i.ba = add i16 %i.ax, 1                        ; 3 uses
  store i16 %i.ba, ptr %i.aj, align 8, !alias.scope !6335
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6336)
  %i.bb = icmp samesign ult i64 %i.h, 600
  %spec.select = select i1 %i.bb, i8 1, i8 2
  %.sroa.0.0.i21.i19 = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 24) %spec.select, i8 %.sroa.0.0.i.i) ; 2 uses
  %i.bc = zext nneg i8 %.sroa.0.0.i21.i19 to i64  ; 2 uses
  %i.bd = zext i16 %i.ba to i64                   ; 2 uses
  %i.be = sub nuw i64 %i.ai, %i.bd
  %i.bf = getelementptr i8, ptr %i.ag, i64 %i.bd  ; 2 uses
  %.not.i20 = icmp ult i64 %i.be, %i.bc
  br i1 %.not.i20, label %bb.i, label %.preheader22.i21, !prof !76

bb.i:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @123, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #45, !noalias !6336
  unreachable

.preheader22.i21:                                 ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit, %.preheader22.i21
  %.sroa.06.0.i22 = phi i64 [ %i.bg, %.preheader22.i21 ], [ %i.bc, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit ]
  %.sroa.0.0.i23 = phi i64 [ %i.bl, %.preheader22.i21 ], [ %.zext, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit ] ; 3 uses
  %i.bg = add nsw i64 %.sroa.06.0.i22, -1         ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bg
  %i.bi = urem i64 %.sroa.0.0.i23, 10
  %i.bj = trunc nuw nsw i64 %i.bi to i8
  %i.bk = or disjoint i8 %i.bj, 48
  store i8 %i.bk, ptr %i.bh, align 1, !noalias !6336
  %i.bl = udiv i64 %.sroa.0.0.i23, 10
  %i.bm = icmp samesign ugt i64 %.sroa.0.0.i23, 9
  %i.bn = icmp ne i64 %i.bg, 0                    ; 2 uses
  %or.cond2.i24 = and i1 %i.bm, %i.bn
  br i1 %or.cond2.i24, label %.preheader22.i21, label %.preheader.i25

.preheader.i25:                                   ; preds = %.preheader22.i21
  br i1 %i.bn, label %.lr.ph.preheader.i26, label %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit27

.lr.ph.preheader.i26:                             ; preds = %.preheader.i25
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bf, i8 48, i64 %i.bg, i1 false), !noalias !6336
  br label %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit27

_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit27: ; preds = %.preheader.i25, %.lr.ph.preheader.i26
  %i.bo = zext nneg i8 %.sroa.0.0.i21.i19 to i16
  %i.bp = add i16 %i.ba, %i.bo                    ; 3 uses
  store i16 %i.bp, ptr %i.aj, align 8, !alias.scope !6336
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6337)
  %i.bq = zext i16 %i.bp to i64                   ; 2 uses
  %.not.i28 = icmp eq i64 %i.ai, %i.bq
  br i1 %.not.i28, label %bb.j, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit29, !prof !42

bb.j:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit27
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !6337
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit29: ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit27
  %.zext2 = zext nneg i16 %i.j to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bq
  store i8 58, ptr %i.br, align 1, !noalias !6337
  %i.bs = add i16 %i.bp, 1
  store i16 %i.bs, ptr %i.aj, align 8, !alias.scope !6337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.bu = load i8, ptr %i.bt, align 2, !range !40, !noundef !30
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.bw = load i8, ptr %i.bv, align 1
  store i64 %.zext2, ptr %i.a, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.8.val, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 %.sroa.0.0, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 %i.bu, ptr %i.bz, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 %i.bw, ptr %i.ca, align 2
  call fastcc void @_ZN4jiff3fmt8friendly7printer17FractionalPrinter5print17h03b1d0b260f91b71E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4jiff3fmt8friendly7printer11SpanPrinter22print_span_designators17h8a0baad01b77487dE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !guid !6353 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.c = load i8, ptr %i.b, align 4, !range !33, !noundef !30 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6355)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i8, ptr %i.d, align 2, !range !46, !alias.scope !6355, !noundef !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 17
  %.val3.i = load i8, ptr %i.f, align 1, !alias.scope !6355
  switch i8 %i.e, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 11
  %.val.i = load i8, ptr %i.g, align 1, !alias.scope !6355
  %i.h = icmp eq i8 %.val.i, 0
  %i.i = icmp slt i8 %i.c, 0                      ; 2 uses
  br i1 %i.h, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.j = icmp slt i8 %i.c, 0
  %spec.select = select i1 %i.j, i8 0, i8 2
  br label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit

bb.d:                                             ; preds = %bb.a
  %i.k = icmp slt i8 %i.c, 0
  %.3.i.i = select i1 %i.k, i8 45, i8 43
  br label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit

bb.e:                                             ; preds = %bb.a
  %i.l = icmp slt i8 %i.c, 0
  %.4.i.i = select i1 %i.l, i8 1, i8 2
  br label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit

bb.f:                                             ; preds = %bb.b
  %spec.select8 = select i1 %i.i, i8 0, i8 2
  br label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit

bb.g:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.h, label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit

bb.h:                                             ; preds = %bb.g
  %.not.i.i = and i8 %.val3.i, 1
  %.8.i.i = xor i8 %.not.i.i, 1
  br label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit

_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit: ; preds = %bb.f, %bb.c, %bb.d, %bb.e, %bb.g, %bb.h
  %.sroa.11.0.i.i = phi i8 [ undef, %bb.e ], [ 45, %bb.f ], [ 45, %bb.h ], [ undef, %bb.g ], [ 45, %bb.c ], [ %.3.i.i, %bb.d ] ; 2 uses
  %.sroa.0.0.i.i = phi i8 [ %.4.i.i, %bb.e ], [ %spec.select8, %bb.f ], [ %.8.i.i, %bb.h ], [ 2, %bb.g ], [ %spec.select, %bb.c ], [ 0, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i8, ptr %i.m, align 4, !range !40, !alias.scope !6355, !noundef !30
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !6355
  %.sroa.0.0.i = select i1 %i.o, i8 %i.q, i8 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.s = load i8, ptr %i.r, align 2, !range !40, !alias.scope !6355, !noundef !30
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !6355
  store ptr %0, ptr %i.a, align 8, !alias.scope !6354
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %2, ptr %i.v, align 8, !alias.scope !6354
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i8 %.sroa.0.0.i.i, ptr %i.w, align 8, !alias.scope !6354
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %.sroa.11.0.i.i, ptr %i.x, align 1, !alias.scope !6354
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i8 %.sroa.0.0.i, ptr %i.y, align 2, !alias.scope !6354
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  store i8 %i.s, ptr %i.z, align 1, !alias.scope !6354
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i8 %i.u, ptr %i.aa, align 4, !alias.scope !6354
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 21 ; 2 uses
  store i8 0, ptr %i.ab, align 1, !alias.scope !6354
  %cond.i = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %cond.i, label %bb.i, label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter23maybe_write_prefix_sign17h6ccb525e196fe915E.exit

bb.i:                                             ; preds = %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6356)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !6356, !noalias !6357, !noundef !30
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 8, !alias.scope !6356, !noalias !6357, !noundef !30 ; 2 uses
  %i.ag = zext i16 %i.af to i64                   ; 2 uses
  %.not.i.i2 = icmp eq i64 %i.ad, %i.ag
  br i1 %.not.i.i2, label %bb.j, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit.i, !prof !42

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !6358
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit.i: ; preds = %bb.i
  %i.ah = load ptr, ptr %2, align 8, !alias.scope !6356, !noalias !6357, !nonnull !30, !align !32, !noundef !30
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 %.sroa.11.0.i.i, ptr %i.ai, align 1, !noalias !6358
  %i.aj = add i16 %i.af, 1
  store i16 %i.aj, ptr %i.ae, align 8, !alias.scope !6356, !noalias !6357
  br label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter23maybe_write_prefix_sign17h6ccb525e196fe915E.exit

_ZN4jiff3fmt8friendly7printer16DesignatorWriter23maybe_write_prefix_sign17h6ccb525e196fe915E.exit: ; preds = %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.al = load i8, ptr %i.ak, align 1, !range !48, !noundef !30 ; 2 uses
  %.not = icmp eq i8 %i.al, 5
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4jiff3fmt8friendly7printer16DesignatorWriter23maybe_write_prefix_sign17h6ccb525e196fe915E.exit
  call fastcc void @_ZN4jiff3fmt8friendly7printer11SpanPrinter33print_span_designators_fractional17h1038edff75b5d250E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, i8 noundef %i.al, ptr noalias noundef align 8 dereferenceable(24) %i.a)
  br label %bb.m

bb.l:                                             ; preds = %_ZN4jiff3fmt8friendly7printer16DesignatorWriter23maybe_write_prefix_sign17h6ccb525e196fe915E.exit
  call fastcc void @_ZN4jiff3fmt8friendly7printer11SpanPrinter35print_span_designators_non_fraction17hcab3b49a1801b0a5E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(24) %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.am = load i8, ptr %i.ab, align 1, !range !40, !alias.scope !6359, !noundef !30
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter16maybe_write_zero17he622e2818998873fE.exit, label %bb.n, !prof !35

bb.n:                                             ; preds = %bb.m
  call fastcc void @_ZN4jiff3fmt8friendly7printer16DesignatorWriter16maybe_write_zero3imp17h8c1d3667e3fa93c7E(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.a)
  br label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter16maybe_write_zero17he622e2818998873fE.exit

_ZN4jiff3fmt8friendly7printer16DesignatorWriter16maybe_write_zero17he622e2818998873fE.exit: ; preds = %bb.m, %bb.n
  %.val = load ptr, ptr %i.v, align 8             ; 4 uses
  %.val1 = load i8, ptr %i.w, align 8, !range !41, !noundef !30
  %i.ao = icmp eq i8 %.val1, 1
  br i1 %i.ao, label %bb.o, label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter23maybe_write_suffix_sign17h7eb097eec35d03acE.exit

bb.o:                                             ; preds = %_ZN4jiff3fmt8friendly7printer16DesignatorWriter16maybe_write_zero17he622e2818998873fE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6360)
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !6360, !noundef !30
end_hunk_0
begin_hunk_1_@_ZN4jiff3fmt8temporal7printer11SpanPrinter15print_span_impl17ha18461465727eeadE:bb.a

bb.cr:                                            ; preds = %bb.cq
  %i.pz = icmp ult i64 %.sroa.0.0.i116, 1000
  br i1 %i.pz, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i123, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.qa = icmp ult i64 %.sroa.0.0.i116, 10000
  br i1 %i.qa, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i123, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.qb = icmp ugt i64 %.sroa.0.0.i116, 9999999999 ; 2 uses
  %i.qc = udiv i64 %.sroa.0.0.i116, 10000000000
  %.sroa.05.0.i.i.i118 = select i1 %i.qb, i32 10, i32 0 ; 2 uses
  %.sroa.0.0.i.i.i119 = select i1 %i.qb, i64 %i.qc, i64 %.sroa.0.0.i116 ; 3 uses
  %i.qd = icmp samesign ugt i64 %.sroa.0.0.i.i.i119, 99999
  br i1 %i.qd, label %bb.cu, label %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i120

bb.cu:                                            ; preds = %bb.ct
  %i.qe = udiv i64 %.sroa.0.0.i.i.i119, 100000
  %i.qf = or disjoint i32 %.sroa.05.0.i.i.i118, 5
  br label %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i120

_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i120: ; preds = %bb.cu, %bb.ct
  %.sroa.05.1.i.i.i121 = phi i32 [ %i.qf, %bb.cu ], [ %.sroa.05.0.i.i.i118, %bb.ct ]
  %.sroa.0.1.i.i.i122 = phi i64 [ %i.qe, %bb.cu ], [ %.sroa.0.0.i.i.i119, %bb.ct ]
  %i.qg = trunc nuw nsw i64 %.sroa.0.1.i.i.i122 to i32 ; 4 uses
  %i.qh = add nuw nsw i32 %i.qg, 393206
  %i.qi = add nuw nsw i32 %i.qg, 524188
  %i.qj = and i32 %i.qh, %i.qi
  %i.qk = add nuw nsw i32 %i.qg, 916504
  %i.ql = add nuw nsw i32 %i.qg, 514288
  %i.qm = and i32 %i.qk, %i.ql
  %i.qn = xor i32 %i.qj, %i.qm
  %i.qo = lshr i32 %i.qn, 17
  %i.qp = add nuw nsw i32 %i.qo, %.sroa.05.1.i.i.i121
  %i.qq = trunc nuw nsw i32 %i.qp to i8
  %i.qr = add nuw nsw i8 %i.qq, 1
  br label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i123

_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i123: ; preds = %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i120, %bb.cs, %bb.cr, %bb.cq, %bb.cp
  %.sroa.0.0.i.i124 = phi i8 [ %i.qr, %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i120 ], [ 1, %bb.cp ], [ 2, %bb.cq ], [ 3, %bb.cr ], [ 4, %bb.cs ] ; 3 uses
  %i.qs = zext nneg i8 %.sroa.0.0.i.i124 to i64   ; 4 uses
  %i.qt = zext i16 %i.mj to i64                   ; 2 uses
  %i.qu = sub nuw i64 %i.m, %i.qt
  %i.qv = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.qt ; 3 uses
  %.not.i125 = icmp ult i64 %i.qu, %i.qs
  br i1 %.not.i125, label %bb.cv, label %.preheader.i126.preheader, !prof !76

.preheader.i126.preheader:                        ; preds = %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i123
  %xtraiter203 = and i64 %i.qs, 1
  %lcmp.mod204.not = icmp eq i64 %xtraiter203, 0
  br i1 %lcmp.mod204.not, label %.preheader.i126.prol.loopexit, label %.preheader.i126.prol

.preheader.i126.prol:                             ; preds = %.preheader.i126.preheader
  %i.qw = add nsw i64 %i.qs, -1                   ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.qw
  %i.qy = urem i64 %.sroa.0.0.i116, 10
  %i.qz = trunc nuw nsw i64 %i.qy to i8
  %i.ra = or disjoint i8 %i.qz, 48
  store i8 %i.ra, ptr %i.qx, align 1, !noalias !8107
  %i.rb = udiv i64 %.sroa.0.0.i116, 10
  br label %.preheader.i126.prol.loopexit

.preheader.i126.prol.loopexit:                    ; preds = %.preheader.i126.prol, %.preheader.i126.preheader
  %.sroa.0.010.i127.unr = phi i64 [ %.sroa.0.0.i116, %.preheader.i126.preheader ], [ %i.rb, %.preheader.i126.prol ]
  %.sroa.03.09.i128.unr = phi i64 [ %i.qs, %.preheader.i126.preheader ], [ %i.qw, %.preheader.i126.prol ]
  %i.rc = icmp eq i8 %.sroa.0.0.i.i124, 1
  br i1 %i.rc, label %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_int17hcfbb16a051838feaE.exit130, label %.preheader.i126

bb.cv:                                            ; preds = %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i123
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @123, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #45, !noalias !8107
  unreachable

.preheader.i126:                                  ; preds = %.preheader.i126.prol.loopexit, %.preheader.i126
  %.sroa.0.010.i127 = phi i64 [ %i.ro, %.preheader.i126 ], [ %.sroa.0.010.i127.unr, %.preheader.i126.prol.loopexit ] ; 3 uses
  %.sroa.03.09.i128 = phi i64 [ %i.rj, %.preheader.i126 ], [ %.sroa.03.09.i128.unr, %.preheader.i126.prol.loopexit ] ; 2 uses
  %i.rd = getelementptr i8, ptr %i.qv, i64 %.sroa.03.09.i128
  %i.re = getelementptr i8, ptr %i.rd, i64 -1
  %i.rf = urem i64 %.sroa.0.010.i127, 10
  %i.rg = trunc nuw nsw i64 %i.rf to i8
  %i.rh = or disjoint i8 %i.rg, 48
  store i8 %i.rh, ptr %i.re, align 1, !noalias !8107
  %i.ri = udiv i64 %.sroa.0.010.i127, 10
  %i.rj = add nsw i64 %.sroa.03.09.i128, -2       ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.rj
  %i.rl = urem i64 %i.ri, 10
  %i.rm = trunc nuw nsw i64 %i.rl to i8
  %i.rn = or disjoint i8 %i.rm, 48
  store i8 %i.rn, ptr %i.rk, align 1, !noalias !8107
  %i.ro = udiv i64 %.sroa.0.010.i127, 100
  %.not8.i129.1 = icmp eq i64 %i.rj, 0
  br i1 %.not8.i129.1, label %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_int17hcfbb16a051838feaE.exit130, label %.preheader.i126

_ZN4jiff3fmt6buffer14BorrowedBuffer9write_int17hcfbb16a051838feaE.exit130: ; preds = %.preheader.i126, %.preheader.i126.prol.loopexit
  %i.rp = zext nneg i8 %.sroa.0.0.i.i124 to i16
  %i.rq = add i16 %i.mj, %i.rp                    ; 3 uses
  store i16 %i.rq, ptr %i.o, align 8, !alias.scope !8107
  %i.rr = icmp eq i32 %.sroa.4.0.i115, 0
  br i1 %i.rr, label %bb.cx, label %bb.db

bb.cw:                                            ; preds = %bb.cm, %bb.ck
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @280, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @281) #45
  unreachable

bb.cx:                                            ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit134, %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_int17hcfbb16a051838feaE.exit130
  %.val = load ptr, ptr %0, align 8, !nonnull !30, !align !32, !noundef !30
  %i.rs = getelementptr inbounds nuw i8, ptr %.val, i64 3
  %i.rt = load i8, ptr %i.rs, align 1, !alias.scope !8108, !noundef !30 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8109)
  %i.ru = icmp sgt i8 %i.rt, -1
  br i1 %i.ru, label %bb.cz, label %bb.cy, !prof !35

bb.cy:                                            ; preds = %bb.cx
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @139, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #45, !noalias !8109
  unreachable

bb.cz:                                            ; preds = %bb.cx
  %i.rv = load i64, ptr %i.n, align 8, !alias.scope !8109, !noundef !30
  %i.rw = load i16, ptr %i.o, align 8, !alias.scope !8109, !noundef !30 ; 2 uses
  %i.rx = zext i16 %i.rw to i64                   ; 2 uses
  %.not.i131 = icmp eq i64 %i.rv, %i.rx
  br i1 %.not.i131, label %bb.da, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit132, !prof !42

bb.da:                                            ; preds = %bb.cz
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !8109
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit132: ; preds = %bb.cz
  %i.ry = load ptr, ptr %2, align 8, !alias.scope !8109, !nonnull !30, !align !32, !noundef !30
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.rx
  store i8 %i.rt, ptr %i.rz, align 1, !noalias !8109
  %i.sa = add i16 %i.rw, 1
  br label %.sink.split

bb.db:                                            ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_int17hcfbb16a051838feaE.exit130
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8110)
  %i.sb = zext i16 %i.rq to i64                   ; 2 uses
  %.not.i133 = icmp eq i64 %i.m, %i.sb
  br i1 %.not.i133, label %bb.dc, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit134, !prof !42

bb.dc:                                            ; preds = %bb.db
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !8110
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit134: ; preds = %bb.db
  %i.sc = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.sb
  store i8 46, ptr %i.sc, align 1, !noalias !8110
  %i.sd = add i16 %i.rq, 1
  store i16 %i.sd, ptr %i.o, align 8, !alias.scope !8110
  tail call fastcc void @_ZN4jiff3fmt6buffer14BorrowedBuffer14write_fraction17ha7dd1ed5073b7660E(ptr noalias noundef align 8 dereferenceable(24) %2, i1 noundef zeroext false, i8 undef, i32 noundef %.sroa.4.0.i115)
  br label %bb.cx
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4jiff3fmt8temporal7printer11SpanPrinter28print_unsigned_duration_impl17h86655651e0db6e5aE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 !guid !8135 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8136)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !8136, !noundef !30 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.d = load i16, ptr %i.c, align 8, !alias.scope !8136, !noundef !30 ; 3 uses
  %i.e = zext i16 %i.d to i64                     ; 2 uses
  %.not.i = icmp eq i64 %i.b, %i.e
  br i1 %.not.i, label %bb.b, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit, !prof !42

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !8136
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit: ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !alias.scope !8136, !nonnull !30, !align !32, !noundef !30 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e
  store i8 80, ptr %i.g, align 1, !noalias !8136
  %i.h = add i16 %i.d, 1                          ; 2 uses
  store i16 %i.h, ptr %i.c, align 8, !alias.scope !8136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8137)
  %i.i = zext i16 %i.h to i64                     ; 2 uses
  %.not.i14 = icmp eq i64 %i.b, %i.i
  br i1 %.not.i14, label %bb.c, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit15, !prof !42

bb.c:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !8137
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit15: ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  store i8 84, ptr %i.j, align 1, !noalias !8137
  %i.k = add i16 %i.d, 2                          ; 5 uses
  store i16 %i.k, ptr %i.c, align 8, !alias.scope !8137
  %i.l = load i64, ptr %1, align 8, !noundef !30  ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 8, !range !92, !noundef !30 ; 3 uses
  %i.o = icmp ugt i64 %i.l, 59
  br i1 %i.o, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit15
  %i.p = urem i64 %i.l, 3600                      ; 3 uses
  %i.q = udiv i64 %i.l, 3600                      ; 3 uses
  %.lhs.trunc = trunc nuw nsw i64 %i.p to i16     ; 2 uses
  %i.r = udiv i16 %.lhs.trunc, 60
  %.zext = trunc nuw nsw i16 %i.r to i8           ; 2 uses
  %i.s = urem i16 %.lhs.trunc, 60                 ; 2 uses
  %.zext52 = zext nneg i16 %i.s to i64
  %i.t = icmp ult i64 %i.l, 3600
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit18, %bb.d
  %i.u = phi i16 [ %i.bv, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit18 ], [ %i.k, %bb.d ] ; 3 uses
  %i.v = icmp samesign ult i64 %i.p, 60
  br i1 %i.v, label %bb.p, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i24

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8138)
  %i.w = icmp ult i64 %i.l, 36000
  br i1 %i.w, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp ult i64 %i.l, 360000
  br i1 %i.x, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = icmp ult i64 %i.l, 3600000
  br i1 %i.y, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = icmp ult i64 %i.l, 36000000
  br i1 %i.z, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = icmp ugt i64 %i.l, 35999999999999       ; 2 uses
  %i.ab = udiv i64 %i.l, 36000000000000
  %.sroa.05.0.i.i.i = select i1 %i.aa, i32 10, i32 0 ; 2 uses
  %.sroa.0.0.i.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.q ; 3 uses
  %i.ac = icmp samesign ugt i64 %.sroa.0.0.i.i.i, 99999
  br i1 %i.ac, label %bb.k, label %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.ad = udiv i64 %.sroa.0.0.i.i.i, 100000
  %i.ae = or disjoint i32 %.sroa.05.0.i.i.i, 5
  br label %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i

_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i: ; preds = %bb.k, %bb.j
  %.sroa.05.1.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %.sroa.05.0.i.i.i, %bb.j ]
  %.sroa.0.1.i.i.i = phi i64 [ %i.ad, %bb.k ], [ %.sroa.0.0.i.i.i, %bb.j ]
  %i.af = trunc nuw nsw i64 %.sroa.0.1.i.i.i to i32 ; 4 uses
  %i.ag = add nuw nsw i32 %i.af, 393206
  %i.ah = add nuw nsw i32 %i.af, 524188
  %i.ai = and i32 %i.ag, %i.ah
  %i.aj = add nuw nsw i32 %i.af, 916504
  %i.ak = add nuw nsw i32 %i.af, 514288
  %i.al = and i32 %i.aj, %i.ak
  %i.am = xor i32 %i.ai, %i.al
  %i.an = lshr i32 %i.am, 17
  %i.ao = add nuw nsw i32 %i.an, %.sroa.05.1.i.i.i
  %i.ap = trunc nuw nsw i32 %i.ao to i8
  %i.aq = add nuw nsw i8 %i.ap, 1
  br label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i

_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i: ; preds = %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i, %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i = phi i8 [ %i.aq, %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i ], [ 1, %bb.f ], [ 2, %bb.g ], [ 3, %bb.h ], [ 4, %bb.i ] ; 3 uses
  %i.ar = zext nneg i8 %.sroa.0.0.i.i to i64      ; 4 uses
  %i.as = zext i16 %i.k to i64                    ; 2 uses
  %i.at = sub nuw i64 %i.b, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.as ; 3 uses
  %.not.i16 = icmp ult i64 %i.at, %i.ar
  br i1 %.not.i16, label %bb.l, label %.preheader.i.preheader, !prof !76

.preheader.i.preheader:                           ; preds = %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i
  %xtraiter = and i64 %i.ar, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader
  %i.av = add nsw i64 %i.ar, -1                   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  %i.ax = urem i64 %i.q, 10
  %i.ay = trunc nuw nsw i64 %i.ax to i8
  %i.az = or disjoint i8 %i.ay, 48
  store i8 %i.az, ptr %i.aw, align 1, !noalias !8138
  %i.ba = udiv i64 %i.l, 36000
  br label %.preheader.i.prol.loopexit

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader
  %.sroa.0.010.i.unr = phi i64 [ %i.q, %.preheader.i.preheader ], [ %i.ba, %.preheader.i.prol ]
  %.sroa.03.09.i.unr = phi i64 [ %i.ar, %.preheader.i.preheader ], [ %i.av, %.preheader.i.prol ]
  %i.bb = icmp eq i8 %.sroa.0.0.i.i, 1
  br i1 %i.bb, label %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_int17hcfbb16a051838feaE.exit, label %.preheader.i

bb.l:                                             ; preds = %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @123, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #45, !noalias !8138
  unreachable

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %.sroa.0.010.i = phi i64 [ %i.bn, %.preheader.i ], [ %.sroa.0.010.i.unr, %.preheader.i.prol.loopexit ] ; 3 uses
  %.sroa.03.09.i = phi i64 [ %i.bi, %.preheader.i ], [ %.sroa.03.09.i.unr, %.preheader.i.prol.loopexit ] ; 2 uses
  %i.bc = getelementptr i8, ptr %i.au, i64 %.sroa.03.09.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 -1
  %i.be = urem i64 %.sroa.0.010.i, 10
  %i.bf = trunc nuw nsw i64 %i.be to i8
  %i.bg = or disjoint i8 %i.bf, 48
  store i8 %i.bg, ptr %i.bd, align 1, !noalias !8138
  %i.bh = udiv i64 %.sroa.0.010.i, 10
  %i.bi = add nsw i64 %.sroa.03.09.i, -2          ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bi
  %i.bk = urem i64 %i.bh, 10
  %i.bl = trunc nuw nsw i64 %i.bk to i8
  %i.bm = or disjoint i8 %i.bl, 48
  store i8 %i.bm, ptr %i.bj, align 1, !noalias !8138
  %i.bn = udiv i64 %.sroa.0.010.i, 100
  %.not8.i.1 = icmp eq i64 %i.bi, 0
  br i1 %.not8.i.1, label %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_int17hcfbb16a051838feaE.exit, label %.preheader.i

_ZN4jiff3fmt6buffer14BorrowedBuffer9write_int17hcfbb16a051838feaE.exit: ; preds = %.preheader.i, %.preheader.i.prol.loopexit
  %i.bo = zext nneg i8 %.sroa.0.0.i.i to i16
  %i.bp = add i16 %i.k, %i.bo                     ; 3 uses
  store i16 %i.bp, ptr %i.c, align 8, !alias.scope !8138
  %.val13 = load ptr, ptr %0, align 8, !nonnull !30, !align !32, !noundef !30
  %i.bq = getelementptr inbounds nuw i8, ptr %.val13, i64 5
  %i.br = load i8, ptr %i.bq, align 1, !alias.scope !8139, !noundef !30 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8140)
  %i.bs = icmp sgt i8 %i.br, -1
  br i1 %i.bs, label %bb.n, label %bb.m, !prof !35

bb.m:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_int17hcfbb16a051838feaE.exit
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @139, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #45, !noalias !8140
  unreachable

bb.n:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_int17hcfbb16a051838feaE.exit
  %i.bt = zext i16 %i.bp to i64                   ; 2 uses
  %.not.i17 = icmp eq i64 %i.b, %i.bt
  br i1 %.not.i17, label %bb.o, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit18, !prof !42

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !8140
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit18: ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bt
  store i8 %i.br, ptr %i.bu, align 1, !noalias !8140
  %i.bv = add i16 %i.bp, 1                        ; 2 uses
  store i16 %i.bv, ptr %i.c, align 8, !alias.scope !8140
  br label %bb.e

bb.p:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit33, %bb.e
  %i.bw = phi i16 [ %i.ct, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit33 ], [ %i.u, %bb.e ]
  %i.bx = icmp eq i16 %i.s, 0
  %i.by = icmp eq i32 %i.n, 0
  %or.cond2 = and i1 %i.by, %i.bx
  br i1 %or.cond2, label %bb.t, label %.critedge

_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i24: ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8141)
  %i.bz = icmp samesign ult i64 %i.p, 600
  %spec.select = select i1 %i.bz, i8 1, i8 2      ; 2 uses
  %i.ca = zext nneg i8 %spec.select to i64        ; 3 uses
  %i.cb = zext i16 %i.u to i64                    ; 2 uses
  %i.cc = sub nuw i64 %i.b, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.cb ; 2 uses
  %.not.i26 = icmp ult i64 %i.cc, %i.ca
  br i1 %.not.i26, label %.preheader.i27.preheader, label %.preheader.i27.prol, !prof !76

.preheader.i27.preheader:                         ; preds = %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i24
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @123, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #45, !noalias !8141
  unreachable

.preheader.i27.prol:                              ; preds = %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i24
  %i.ce = add nsw i64 %i.ca, -1                   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ce
  %i.cg = urem i8 %.zext, 10
  %3 = udiv i8 %.zext, 10
  %i.ch = or disjoint i8 %i.cg, 48
  store i8 %i.ch, ptr %i.cf, align 1, !noalias !8141
  %.not8.i30 = icmp eq i64 %i.ce, 0
  br i1 %.not8.i30, label %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_int17hcfbb16a051838feaE.exit31, label %.preheader.i27

.preheader.i27:                                   ; preds = %.preheader.i27.prol
  %i.ci = getelementptr i8, ptr %i.cd, i64 %i.ca
  %i.cj = getelementptr i8, ptr %i.ci, i64 -2
  %i.ck = urem i8 %3, 10
  %i.cl = or disjoint i8 %i.ck, 48
  store i8 %i.cl, ptr %i.cj, align 1, !noalias !8141
  br label %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_int17hcfbb16a051838feaE.exit31

_ZN4jiff3fmt6buffer14BorrowedBuffer9write_int17hcfbb16a051838feaE.exit31: ; preds = %.preheader.i27, %.preheader.i27.prol
  %i.cm = zext nneg i8 %spec.select to i16
  %i.cn = add i16 %i.u, %i.cm                     ; 3 uses
  store i16 %i.cn, ptr %i.c, align 8, !alias.scope !8141
  %.val12 = load ptr, ptr %0, align 8, !nonnull !30, !align !32, !noundef !30
  %i.co = getelementptr inbounds nuw i8, ptr %.val12, i64 4
  %i.cp = load i8, ptr %i.co, align 1, !alias.scope !8142, !noundef !30 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8143)
  %i.cq = icmp sgt i8 %i.cp, -1
  br i1 %i.cq, label %bb.r, label %bb.q, !prof !35

bb.q:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_int17hcfbb16a051838feaE.exit31
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @139, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #45, !noalias !8143
  unreachable

bb.r:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_int17hcfbb16a051838feaE.exit31
  %i.cr = zext i16 %i.cn to i64                   ; 2 uses
  %.not.i32 = icmp eq i64 %i.b, %i.cr
  br i1 %.not.i32, label %bb.s, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit33, !prof !42

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !8143
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit33: ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.cr
  store i8 %i.cp, ptr %i.cs, align 1, !noalias !8143
  %i.ct = add i16 %i.cn, 1                        ; 2 uses
  store i16 %i.ct, ptr %i.c, align 8, !alias.scope !8143
  br label %bb.p

.critedge:                                        ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit15, %bb.p
  %i.cu = phi i16 [ %i.bw, %bb.p ], [ %i.k, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit15 ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.zext52, %bb.p ], [ %i.l, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit15 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8144)
  %i.cv = icmp samesign ult i64 %.sroa.0.0, 10
  %spec.select53 = select i1 %i.cv, i8 1, i8 2    ; 2 uses
  %i.cw = zext nneg i8 %spec.select53 to i64      ; 3 uses
  %i.cx = zext i16 %i.cu to i64                   ; 2 uses
  %i.cy = sub nuw i64 %i.b, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.cx ; 2 uses
  %.not.i41 = icmp ult i64 %i.cy, %i.cw
  br i1 %.not.i41, label %.preheader.i42.preheader, label %.preheader.i42.prol, !prof !76

.preheader.i42.preheader:                         ; preds = %.critedge
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @123, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #45, !noalias !8144
  unreachable

.preheader.i42.prol:                              ; preds = %.critedge
  %i.da = add nsw i64 %i.cw, -1                   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.da
  %i.dc = urem i64 %.sroa.0.0, 10
  %4 = udiv i64 %.sroa.0.0, 10
  %i.dd = trunc nuw nsw i64 %i.dc to i8
  %i.de = or disjoint i8 %i.dd, 48
  store i8 %i.de, ptr %i.db, align 1, !noalias !8144
  %.not8.i45 = icmp eq i64 %i.da, 0
  br i1 %.not8.i45, label %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_int17hcfbb16a051838feaE.exit46, label %.preheader.i42

.preheader.i42:                                   ; preds = %.preheader.i42.prol
  %i.df = getelementptr i8, ptr %i.cz, i64 %i.cw
  %i.dg = getelementptr i8, ptr %i.df, i64 -2
  %i.dh = urem i64 %4, 10
  %i.di = trunc nuw nsw i64 %i.dh to i8
  %i.dj = or disjoint i8 %i.di, 48
  store i8 %i.dj, ptr %i.dg, align 1, !noalias !8144
  br label %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_int17hcfbb16a051838feaE.exit46

_ZN4jiff3fmt6buffer14BorrowedBuffer9write_int17hcfbb16a051838feaE.exit46: ; preds = %.preheader.i42, %.preheader.i42.prol
  %i.dk = zext nneg i8 %spec.select53 to i16
  %i.dl = add i16 %i.cu, %i.dk                    ; 3 uses
  store i16 %i.dl, ptr %i.c, align 8, !alias.scope !8144
  %i.dm = icmp eq i32 %i.n, 0
  br i1 %i.dm, label %bb.u, label %bb.y

bb.t:                                             ; preds = %bb.p, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit48
  ret void

bb.u:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit50, %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_int17hcfbb16a051838feaE.exit46
  %.val = load ptr, ptr %0, align 8, !nonnull !30, !align !32, !noundef !30
  %i.dn = getelementptr inbounds nuw i8, ptr %.val, i64 3
  %i.do = load i8, ptr %i.dn, align 1, !alias.scope !8145, !noundef !30 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8146)
  %i.dp = icmp sgt i8 %i.do, -1
  br i1 %i.dp, label %bb.w, label %bb.v, !prof !35

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @139, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #45, !noalias !8146
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.dq = load i64, ptr %i.a, align 8, !alias.scope !8146, !noundef !30
  %i.dr = load i16, ptr %i.c, align 8, !alias.scope !8146, !noundef !30 ; 2 uses
  %i.ds = zext i16 %i.dr to i64                   ; 2 uses
  %.not.i47 = icmp eq i64 %i.dq, %i.ds
  br i1 %.not.i47, label %bb.x, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit48, !prof !42

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !8146
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit48: ; preds = %bb.w
  %i.dt = load ptr, ptr %2, align 8, !alias.scope !8146, !nonnull !30, !align !32, !noundef !30
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ds
  store i8 %i.do, ptr %i.du, align 1, !noalias !8146
  %i.dv = add i16 %i.dr, 1
  store i16 %i.dv, ptr %i.c, align 8, !alias.scope !8146
  br label %bb.t

bb.y:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_int17hcfbb16a051838feaE.exit46
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8147)
  %i.dw = zext i16 %i.dl to i64                   ; 2 uses
  %.not.i49 = icmp eq i64 %i.b, %i.dw
  br i1 %.not.i49, label %bb.z, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit50, !prof !42

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !8147
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit50: ; preds = %bb.y
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.dw
  store i8 46, ptr %i.dx, align 1, !noalias !8147
  %i.dy = add i16 %i.dl, 1
  store i16 %i.dy, ptr %i.c, align 8, !alias.scope !8147
  tail call fastcc void @_ZN4jiff3fmt6buffer14BorrowedBuffer14write_fraction17ha7dd1ed5073b7660E(ptr noalias noundef align 8 dereferenceable(24) %2, i1 noundef zeroext false, i8 undef, i32 noundef %i.n)
  br label %bb.u
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN4jiff3fmt8temporal7printer15DateTimePrinter10print_date17h5e899837f0a4541bE(ptr noalias readonly align 1 captures(none) %0, ptr noalias noundef readonly align 2 captures(none) dereferenceable(4) %1, ptr noundef nonnull align 1 %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !8163 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [13 x i8], align 1                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val = load ptr, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val1 = load ptr, ptr %i.e, align 8
  %i.f = tail call noundef align 8 dereferenceable_or_null(24) ptr %.val1(ptr noundef nonnull align 1 %2), !noalias !8164, !inline_history !8150 ; 6 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !8165, !noalias !8164, !noundef !30 ; 3 uses
  %i.i = load i64, ptr %i.f, align 8, !range !69, !alias.scope !8165, !noalias !8164, !noundef !30
  %i.j = sub i64 %i.i, %i.h                       ; 2 uses
  %i.k = icmp ult i64 %i.j, 13
  br i1 %i.k, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb54712438bd08b87E.exit.i", !prof !42

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h38682c382e765932E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.h, i64 noundef 13)
  %.pre.i = load i64, ptr %i.g, align 8, !alias.scope !8166, !noalias !8164 ; 2 uses
  %.pre1.i = load i64, ptr %i.f, align 8, !range !69, !alias.scope !8166, !noalias !8164
  %.pre2.i = sub i64 %.pre1.i, %.pre.i
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb54712438bd08b87E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb54712438bd08b87E.exit.i": ; preds = %bb.c, %bb.b
  %.pre-phi.i = phi i64 [ %i.j, %bb.b ], [ %.pre2.i, %bb.c ]
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre.i, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8167)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8168
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8170)
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !8166, !noalias !8164, !nonnull !30, !noundef !30
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.pre-phi.i, i64 65535)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store ptr %i.o, ptr %i.a, align 8, !alias.scope !8171, !noalias !8168
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.p, align 8, !alias.scope !8171, !noalias !8168
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i16 0, ptr %i.q, align 8, !alias.scope !8171, !noalias !8168
  call fastcc void @_ZN4jiff3fmt8temporal7printer15DateTimePrinter14print_date_buf17hec63705f8879b2dcE(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !8167
  %i.r = load i16, ptr %i.q, align 8, !noalias !8168, !noundef !30
  %i.s = zext i16 %i.r to i64
  store i64 %i.s, ptr %i.g, align 8, !alias.scope !8167, !noalias !8164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8168
  br label %_ZN4jiff3fmt6buffer14BorrowedBuffer11with_writer17h07edf011af349d24E.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8164
  store ptr %i.c, ptr %i.b, align 8, !alias.scope !8172, !noalias !8164
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 13, ptr %i.t, align 8, !alias.scope !8172, !noalias !8164
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i16 0, ptr %i.u, align 8, !alias.scope !8172, !noalias !8164
  call fastcc void @_ZN4jiff3fmt8temporal7printer15DateTimePrinter14print_date_buf17hec63705f8879b2dcE(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.v = load ptr, ptr %i.b, align 8, !noalias !8164, !nonnull !30, !align !32, !noundef !30
  %i.w = load i16, ptr %i.u, align 8, !noalias !8164, !noundef !30
  %i.x = zext i16 %i.w to i64
  %i.y = call { i64, ptr } %.val(ptr noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.v, i64 noundef %i.x), !noalias !8164, !inline_history !8150 ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0        ; 2 uses
  %i.aa = extractvalue { i64, ptr } %i.y, 1
  %i.ab = trunc nuw i64 %i.z to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8164
  %..i = select i1 %i.ab, ptr %i.aa, ptr undef
  br label %_ZN4jiff3fmt6buffer14BorrowedBuffer11with_writer17h07edf011af349d24E.exit

_ZN4jiff3fmt6buffer14BorrowedBuffer11with_writer17h07edf011af349d24E.exit: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb54712438bd08b87E.exit.i", %bb.d
  %.sroa.5.0.i = phi ptr [ undef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb54712438bd08b87E.exit.i" ], [ %..i, %bb.d ]
  %.sroa.0.0.i = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb54712438bd08b87E.exit.i" ], [ %i.z, %bb.d ]
  %i.ac = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.ad = insertvalue { i64, ptr } %i.ac, ptr %.sroa.5.0.i, 1
  ret { i64, ptr } %i.ad
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN4jiff3fmt8temporal7printer15DateTimePrinter10print_time17hbeea800f3df06505E(ptr noalias noundef readonly align 1 captures(none) dereferenceable(4) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 1 %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !8194 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [18 x i8], align 1                ; 3 uses
  %i.d = load i32, ptr %1, align 4, !noundef !30
  %i.e = icmp ne i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1               ; 3 uses
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond = select i1 %i.e, i1 true, i1 %i.h
  %.sroa.0.0 = select i1 %or.cond, i64 18, i64 8  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val = load ptr, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val4 = load ptr, ptr %i.j, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8195)
  %i.k = tail call noundef align 8 dereferenceable_or_null(24) ptr %.val4(ptr noundef nonnull align 1 %2), !noalias !8196, !inline_history !8176 ; 6 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !8197, !noalias !8196, !noundef !30 ; 3 uses
  %i.n = load i64, ptr %i.k, align 8, !range !69, !alias.scope !8197, !noalias !8196, !noundef !30
  %i.o = sub i64 %i.n, %i.m                       ; 2 uses
  %i.p = icmp ugt i64 %.sroa.0.0, %i.o
  br i1 %i.p, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb54712438bd08b87E.exit.i", !prof !42

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h38682c382e765932E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.m, i64 noundef range(i64 8, 19) %.sroa.0.0)
  %.pre.i = load i64, ptr %i.l, align 8, !alias.scope !8198, !noalias !8196 ; 2 uses
  %.pre1.i = load i64, ptr %i.k, align 8, !range !69, !alias.scope !8198, !noalias !8196
  %.pre2.i = sub i64 %.pre1.i, %.pre.i
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb54712438bd08b87E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb54712438bd08b87E.exit.i": ; preds = %bb.c, %bb.b
  %.pre-phi.i = phi i64 [ %i.o, %bb.b ], [ %.pre2.i, %bb.c ]
  %i.q = phi i64 [ %i.m, %bb.b ], [ %.pre.i, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8200)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8203)
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !8198, !noalias !8196, !nonnull !30, !noundef !30
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.pre-phi.i, i64 65535)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store ptr %i.t, ptr %i.a, align 8, !alias.scope !8204, !noalias !8201
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.u, align 8, !alias.scope !8204, !noalias !8201
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i16 0, ptr %i.v, align 8, !alias.scope !8204, !noalias !8201
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.val1.i.i.i = load i8, ptr %i.w, align 1, !alias.scope !8205, !noalias !8206
  call fastcc void @_ZN4jiff3fmt8temporal7printer15DateTimePrinter14print_time_buf17h0df06d6d3c16aba9E(i8 %i.g, i8 %.val1.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !8207
  %i.x = load i16, ptr %i.v, align 8, !noalias !8201, !noundef !30
  %i.y = zext i16 %i.x to i64
  store i64 %i.y, ptr %i.l, align 8, !alias.scope !8199, !noalias !8196
end_hunk_1
