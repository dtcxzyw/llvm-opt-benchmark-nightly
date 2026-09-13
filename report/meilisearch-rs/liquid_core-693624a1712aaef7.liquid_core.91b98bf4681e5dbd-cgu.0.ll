Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/liquid_core-693624a1712aaef7.liquid_core.91b98bf4681e5dbd-cgu.0?download=true
inline.NumInlined: 4312
inline.NumDeleted: 1825
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN11liquid_core5model6scalar8datetime8DateTime11with_offset17h3bde7edfaac80f67E:bb.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp sgt i8 %.sroa.011.2.extract.trunc.i, -26
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp slt i8 %.sroa.011.2.extract.trunc.i, 26
  tail call void @llvm.assume(i1 %i.v)
  %.sroa.025.0.insert.insert.i = zext i24 %2 to i32
  %i.w = icmp eq i32 %.sroa.018.0.insert.insert.i, %.sroa.025.0.insert.insert.i
  br i1 %i.w, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3764
  call fastcc void @_ZN4time16offset_date_time14OffsetDateTime13to_offset_raw17h28295743bf0bcc34E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %1, i24 %2), !noalias !3762
  %i.x = load i32, ptr %i.a, align 4, !noalias !3764, !noundef !6 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.z = load i16, ptr %i.y, align 4, !noalias !3764, !noundef !6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.012.0.copyload.i = load i64, ptr %i.aa, align 4, !noalias !3764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3764
  %i.ab = add i32 %i.x, -10000
  %or.cond.i = icmp ult i32 %i.ab, -19999
  br i1 %or.cond.i, label %_ZN4time16offset_date_time14OffsetDateTime17checked_to_offset17h3927e3f3c3b27d89E.exit.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload4 = load i64, ptr %1, align 4, !alias.scope !3764
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.0.copyload7 = load i32, ptr %.sroa.7.0..sroa_idx6, align 4, !alias.scope !3764
  %.sroa.11.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %1, i64 15
  %.sroa.11.0.copyload15 = load i8, ptr %.sroa.11.0..sroa_idx14, align 1, !alias.scope !3764
  br label %_ZN4time16offset_date_time14OffsetDateTime17checked_to_offset17h3927e3f3c3b27d89E.exit

bb.d:                                             ; preds = %bb.b
  %.sroa.032.0.i = tail call i32 @llvm.abs.i32(i32 %i.x, i1 true)
  %i.ac = mul i32 %.sroa.032.0.i, 33555415
  %i.ad = and i32 %i.ac, 100695055
  %i.ae = icmp samesign ult i32 %i.ad, 31745
  %i.af = shl nsw i32 %i.x, 10
  %i.ag = select i1 %i.ae, i32 512, i32 0
  %i.ah = or disjoint i32 %i.ag, %i.af
  %i.ai = zext i16 %i.z to i32
  %i.aj = or i32 %i.ah, %i.ai                     ; 2 uses
  %i.ak = icmp ne i32 %i.aj, 0
  tail call void @llvm.assume(i1 %i.ak)
  br label %_ZN4time16offset_date_time14OffsetDateTime17checked_to_offset17h3927e3f3c3b27d89E.exit

_ZN4time16offset_date_time14OffsetDateTime17checked_to_offset17h3927e3f3c3b27d89E.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.sroa.0.sroa.0.0.in = phi i64 [ %.sroa.0.0.copyload4, %bb.c ], [ %.sroa.012.0.copyload.i, %bb.d ] ; 2 uses
  %.sroa.11.0 = phi i8 [ %.sroa.11.0.copyload15, %bb.c ], [ undef, %bb.d ]
  %.sroa.10.0 = phi i8 [ %i.j, %bb.c ], [ %.sroa.011.2.extract.trunc.i, %bb.d ]
  %.sroa.9.0 = phi i8 [ %i.h, %bb.c ], [ %.sroa.011.1.extract.trunc.i, %bb.d ]
  %.sroa.8.0 = phi i8 [ %i.c, %bb.c ], [ %.sroa.011.0.extract.trunc.i, %bb.d ]
  %.sroa.7.0 = phi i32 [ %.sroa.7.0.copyload7, %bb.c ], [ %i.aj, %bb.d ]
  %i.al = and i64 %.sroa.0.sroa.0.sroa.0.0.in, 72057594037927936
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %bb.e, label %_ZN4time16offset_date_time14OffsetDateTime17checked_to_offset17h3927e3f3c3b27d89E.exit.thread, !prof !23

bb.e:                                             ; preds = %_ZN4time16offset_date_time14OffsetDateTime17checked_to_offset17h3927e3f3c3b27d89E.exit
  store i64 %.sroa.0.sroa.0.sroa.0.0.in, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sroa.8.0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %.sroa.9.0, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %.sroa.10.0, ptr %.sroa.719.0..sroa_idx, align 2
  %.sroa.820.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %.sroa.11.0, ptr %.sroa.820.0..sroa_idx, align 1
  ret void

_ZN4time16offset_date_time14OffsetDateTime17checked_to_offset17h3927e3f3c3b27d89E.exit.thread: ; preds = %bb.b, %_ZN4time16offset_date_time14OffsetDateTime17checked_to_offset17h3927e3f3c3b27d89E.exit
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @152, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #57
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11liquid_core5model6scalar8datetime8DateTime3now17hb83d870a0e385b2cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  tail call fastcc void @_ZN4time16offset_date_time14OffsetDateTime7now_utc17h9389a0b5e004fd02E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11liquid_core5model6scalar8datetime8DateTime8from_str17h802d3cad70e0f1adE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [64 x i8], align 16               ; 19 uses
  %.sroa.33.i.i.i.i.i = alloca [10 x i8], align 2 ; 6 uses
  %i.c = alloca [64 x i8], align 16               ; 13 uses
  %.sroa.40.i.i.i.i = alloca [10 x i8], align 2   ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 15 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [64 x i8], align 16               ; 19 uses
  %.sroa.33.i.i.i = alloca [10 x i8], align 2     ; 5 uses
  %i.k = alloca [64 x i8], align 16               ; 12 uses
  %.sroa.41.i.i = alloca [10 x i8], align 2       ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [48 x i8], align 8                ; 10 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3873)
  %i.t = icmp eq i64 %2, 0
  br i1 %i.t, label %_ZN11liquid_core5model6scalar8datetime15parse_date_time17h35cadb16bafd5598E.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3874
  call void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$12to_lowercase17h0e67131649baacd2E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2), !noalias !3875
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !noalias !3874, !nonnull !6, !noundef !6
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !3874, !noundef !6
  %i.y = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h03fe2cfe0c149ccaE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.v, i64 noundef %i.x), !noalias !3875 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 4 uses
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  switch i64 %i.aa, label %bb.h [
    i64 3, label %bb.e
    i64 5, label %bb.g
  ]

.body.i:                                          ; preds = %.body29.i, %bb.af, %bb.ae, %bb.ad, %bb.d
  %.pn12.i = phi { ptr, i32 } [ %.pn.i, %.body29.i ], [ %i.ac, %bb.d ], [ %i.df, %bb.af ], [ %i.df, %bb.ae ], [ %i.df, %bb.ad ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3876)
  call void @llvm.experimental.noalias.scope.decl(metadata !3877)
  %.val.i.i.i = load i64, ptr %i.s, align 8, !range !21, !alias.scope !3878, !noalias !3874, !noundef !6 ; 2 uses
  %i.ab = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ab, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit.i", label %bb.c

bb.c:                                             ; preds = %.body.i
  %.val1.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !3878, !noalias !3874, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3879
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit.i"

bb.d:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit46.i", %.loopexit103.i, %bb.y, %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit.i", %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.e:                                             ; preds = %bb.b
  %i.ad = load i16, ptr %i.z, align 1
  %i.ae = xor i16 %i.ad, 28526
  %i.af = getelementptr i8, ptr %i.z, i64 2
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i16
  %i.ai = xor i16 %i.ah, 119
  %i.aj = or i16 %i.ae, %i.ai
  %i.ak = icmp ne i16 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3874
  invoke fastcc void @_ZN4time16offset_date_time14OffsetDateTime7now_utc17h9389a0b5e004fd02E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.r)
          to label %bb.t unwind label %bb.d, !noalias !3875

bb.g:                                             ; preds = %bb.b
  %i.an = load i32, ptr %i.z, align 1
  %i.ao = xor i32 %i.an, 1633972084
  %i.ap = getelementptr i8, ptr %i.z, i64 4
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = xor i32 %i.ar, 121
  %i.at = or i32 %i.ao, %i.as
  %i.au = icmp ne i32 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.b
  %cond.i = icmp eq i64 %2, 1
  %i.ax = load i8, ptr %1, align 1, !alias.scope !3880, !noalias !3881 ; 2 uses
  br i1 %cond.i, label %bb.i, label %thread-pre-split.i.i

bb.i:                                             ; preds = %bb.h
  switch i8 %i.ax, label %.lr.ph117.i.i.preheader [
    i8 43, label %.loopexit103.i
    i8 45, label %.loopexit103.i
  ]

thread-pre-split.i.i:                             ; preds = %bb.h
  switch i8 %i.ax, label %bb.p [
    i8 43, label %bb.j
    i8 45, label %bb.k
  ]

bb.j:                                             ; preds = %thread-pre-split.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.az = add i64 %2, -1                          ; 2 uses
  %i.ba = icmp ult i64 %2, 17
  br i1 %i.ba, label %.lr.ph117.i.i.preheader, label %.preheader95.i.i

bb.k:                                             ; preds = %thread-pre-split.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.bc = add i64 %2, -1                          ; 2 uses
  %i.bd = icmp ult i64 %2, 17
  br i1 %i.bd, label %.lr.ph.i.i, label %.lr.ph.a

bb.l:                                             ; preds = %bb.r
  %i.be = extractvalue { i64, i1 } %i.ci, 0
  %.not90.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not90.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit.i", label %.lr.ph57

.preheader99.i.i:                                 ; preds = %bb.n
  %i.bf = extractvalue { i64, i1 } %i.bq, 0
  %.not.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit.i", label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.k, %.preheader99.i.i
  %.sroa.01.2.i.i52 = phi ptr [ %i.bg, %.preheader99.i.i ], [ %i.bb, %bb.k ] ; 2 uses
  %.sroa.27.2.i.i51 = phi i64 [ %i.bh, %.preheader99.i.i ], [ %i.bc, %bb.k ]
  %.sroa.031.2.i.i50 = phi i64 [ %i.bf, %.preheader99.i.i ], [ 0, %bb.k ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.01.2.i.i52, i64 1
  %i.bh = add i64 %.sroa.27.2.i.i51, -1           ; 2 uses
  %i.bi = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.2.i.i50, i64 10) ; 2 uses
  %i.bj = extractvalue { i64, i1 } %i.bi, 0
  %i.bk = load i8, ptr %.sroa.01.2.i.i52, align 1, !alias.scope !3880, !noalias !3881, !noundef !6
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nsw i32 %i.bl, -48                  ; 2 uses
  %i.bn = icmp ult i32 %i.bm, 10
  br i1 %i.bn, label %bb.m, label %.loopexit103.i

bb.m:                                             ; preds = %.lr.ph.a
  %i.bo = extractvalue { i64, i1 } %i.bi, 1
  br i1 %i.bo, label %.loopexit103.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = zext nneg i32 %i.bm to i64
  %i.bq = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.bj, i64 %i.bp) ; 2 uses
  %i.br = extractvalue { i64, i1 } %i.bq, 1
  br i1 %i.br, label %.loopexit103.i, label %.preheader99.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.o
  %.sroa.01.3112.i.i = phi ptr [ %i.bw, %bb.o ], [ %i.bb, %bb.k ] ; 2 uses
  %.sroa.27.3111.i.i = phi i64 [ %i.bv, %bb.o ], [ %i.bc, %bb.k ]
  %i.bs = load i8, ptr %.sroa.01.3112.i.i, align 1, !alias.scope !3880, !noalias !3881, !noundef !6
  %i.bt = add i8 %i.bs, -48
  %i.bu = icmp ult i8 %i.bt, 10
  br i1 %i.bu, label %bb.o, label %.loopexit103.i

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.bv = add nsw i64 %.sroa.27.3111.i.i, -1      ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.01.3112.i.i, i64 1
  %.not89.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not89.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit.i", label %.lr.ph.i.i

bb.p:                                             ; preds = %thread-pre-split.i.i
  %i.bx = icmp ult i64 %2, 16
  br i1 %i.bx, label %.lr.ph117.i.i.preheader, label %.preheader95.i.i

.lr.ph117.i.i.preheader:                          ; preds = %bb.i, %bb.j, %bb.p
  %.sroa.01.1116.i.i.ph = phi ptr [ %1, %bb.i ], [ %i.ay, %bb.j ], [ %1, %bb.p ]
  %.sroa.27.1115.i.i.ph = phi i64 [ 1, %bb.i ], [ %i.az, %bb.j ], [ %2, %bb.p ]
  br label %.lr.ph117.i.i

.preheader95.i.i:                                 ; preds = %bb.p, %bb.j
  %.sroa.27.0.ph.i.i = phi i64 [ %2, %bb.p ], [ %i.az, %bb.j ] ; 2 uses
  %.sroa.01.0.ph.i.i = phi ptr [ %1, %bb.p ], [ %i.ay, %bb.j ]
  %.not90.i.i53 = icmp eq i64 %.sroa.27.0.ph.i.i, 0
  br i1 %.not90.i.i53, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit.i", label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader95.i.i, %bb.l
  %.sroa.01.0.i.i56 = phi ptr [ %i.by, %bb.l ], [ %.sroa.01.0.ph.i.i, %.preheader95.i.i ] ; 2 uses
  %.sroa.27.0.i.i55 = phi i64 [ %i.bz, %bb.l ], [ %.sroa.27.0.ph.i.i, %.preheader95.i.i ]
  %.sroa.031.0.i.i54 = phi i64 [ %i.be, %bb.l ], [ 0, %.preheader95.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i56, i64 1
  %i.bz = add i64 %.sroa.27.0.i.i55, -1           ; 2 uses
  %i.ca = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.0.i.i54, i64 10) ; 2 uses
  %i.cb = extractvalue { i64, i1 } %i.ca, 0
  %i.cc = load i8, ptr %.sroa.01.0.i.i56, align 1, !alias.scope !3880, !noalias !3881, !noundef !6
  %i.cd = zext i8 %i.cc to i32
  %i.ce = add nsw i32 %i.cd, -48                  ; 2 uses
  %i.cf = icmp ult i32 %i.ce, 10
  br i1 %i.cf, label %bb.q, label %.loopexit103.i

bb.q:                                             ; preds = %.lr.ph57
  %i.cg = extractvalue { i64, i1 } %i.ca, 1
  br i1 %i.cg, label %.loopexit103.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = zext nneg i32 %i.ce to i64
  %i.ci = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cb, i64 %i.ch) ; 2 uses
  %i.cj = extractvalue { i64, i1 } %i.ci, 1
  br i1 %i.cj, label %.loopexit103.i, label %bb.l

.lr.ph117.i.i:                                    ; preds = %.lr.ph117.i.i.preheader, %bb.s
  %.sroa.01.1116.i.i = phi ptr [ %i.co, %bb.s ], [ %.sroa.01.1116.i.i.ph, %.lr.ph117.i.i.preheader ] ; 2 uses
  %.sroa.27.1115.i.i = phi i64 [ %i.cn, %bb.s ], [ %.sroa.27.1115.i.i.ph, %.lr.ph117.i.i.preheader ]
  %i.ck = load i8, ptr %.sroa.01.1116.i.i, align 1, !alias.scope !3880, !noalias !3881, !noundef !6
  %i.cl = add i8 %i.ck, -48
  %i.cm = icmp ult i8 %i.cl, 10
  br i1 %i.cm, label %bb.s, label %.loopexit103.i

bb.s:                                             ; preds = %.lr.ph117.i.i
  %i.cn = add nsw i64 %.sroa.27.1115.i.i, -1      ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.01.1116.i.i, i64 1
  %.not91.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not91.i.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit.i", label %.lr.ph117.i.i

bb.t:                                             ; preds = %bb.f
  %.sroa.0.0.copyload1 = load i64, ptr %i.r, align 8, !noalias !3873 ; 2 uses
  %i.cp = and i64 %.sroa.0.0.copyload1, 72057594037927936
  %.sroa.0.sroa.6.0.extract.trunc12 = icmp ne i64 %i.cp, 0
  %.sroa.10.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.10.0.copyload6 = load i64, ptr %.sroa.10.0..sroa_idx5, align 8, !noalias !3873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3874
  br label %bb.u

bb.u:                                             ; preds = %bb.z, %.sink.split.i, %bb.bo, %bb.aa, %bb.t
  %.sroa.0.sroa.0.sroa.0.1 = phi i64 [ %.sroa.6.082.i, %bb.aa ], [ %.sroa.0.0.copyload1, %bb.t ], [ %.sroa.0.sroa.0.sroa.0.0, %bb.bo ], [ 0, %.sink.split.i ], [ 0, %bb.z ]
  %.sroa.0.sroa.6.1 = phi i1 [ %.sroa.0.sroa.6.0.extract.trunc10, %bb.aa ], [ %.sroa.0.sroa.6.0.extract.trunc12, %bb.t ], [ %.sroa.0.sroa.6.0, %bb.bo ], [ true, %.sink.split.i ], [ true, %bb.z ]
  %.sroa.10.1 = phi i64 [ %.sroa.10.081.i, %bb.aa ], [ %.sroa.10.0.copyload6, %bb.t ], [ %.sroa.10.0, %bb.bo ], [ undef, %.sink.split.i ], [ undef, %bb.z ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3882)
  call void @llvm.experimental.noalias.scope.decl(metadata !3883)
  %.val.i.i17.i = load i64, ptr %i.s, align 8, !range !21, !alias.scope !3884, !noalias !3874, !noundef !6 ; 2 uses
  %i.cq = icmp eq i64 %.val.i.i17.i, 0
  br i1 %i.cq, label %_ZN11liquid_core5model6scalar8datetime15parse_date_time17h35cadb16bafd5598E.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val1.i.i18.i = load ptr, ptr %i.u, align 8, !alias.scope !3884, !noalias !3874, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i18.i, i64 noundef %.val.i.i17.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3885
  br label %_ZN11liquid_core5model6scalar8datetime15parse_date_time17h35cadb16bafd5598E.exit

"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit.i": ; preds = %.preheader99.i.i, %bb.o, %bb.l, %bb.s, %.preheader95.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3886
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.41.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.33.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3887
  store i128 -170141183460469231731687303715884105728, ptr %i.j, align 16, !noalias !3888
  %.sroa.7.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store i32 -2147483648, ptr %.sroa.7.0..sroa_idx3.i.i.i, align 16, !noalias !3888
  %.sroa.8.0..sroa_idx7.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 -2147483648, ptr %.sroa.8.0..sroa_idx7.i.i.i, align 4, !noalias !3888
  %.sroa.9.0..sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 -1, ptr %.sroa.9.0..sroa_idx11.i.i.i, align 8, !noalias !3888
  %.sroa.10.0..sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  store i16 -32768, ptr %.sroa.10.0..sroa_idx15.i.i.i, align 4, !noalias !3888
  %.sroa.11.0..sroa_idx19.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 30
  store i16 -32768, ptr %.sroa.11.0..sroa_idx19.i.i.i, align 2, !noalias !3888
  %.sroa.12.0..sroa_idx23.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  store i16 0, ptr %.sroa.12.0..sroa_idx23.i.i.i, align 16, !noalias !3888
  %.sroa.13.0..sroa_idx27.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 34 ; 2 uses
  %.sroa.17.0..sroa_idx43.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 38
  store i32 -1, ptr %.sroa.13.0..sroa_idx27.i.i.i, align 2, !noalias !3889
  store <8 x i8> <i8 0, i8 0, i8 -1, i8 0, i8 -1, i8 -1, i8 -128, i8 -128>, ptr %.sroa.17.0..sroa_idx43.i.i.i, align 2, !noalias !3888
  %.sroa.25.0..sroa_idx75.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 46
  store <4 x i8> <i8 -128, i8 0, i8 7, i8 2>, ptr %.sroa.25.0..sroa_idx75.i.i.i, align 2, !noalias !3888
  %.sroa.29.0..sroa_idx91.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 50 ; 2 uses
  store i32 0, ptr %.sroa.29.0..sroa_idx91.i.i.i, align 2, !noalias !3889
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3887
  invoke fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @136, ptr noalias noundef align 16 dereferenceable(64) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 1, 0) %2)
          to label %.noexc.i unwind label %bb.d, !noalias !3875

.noexc.i:                                         ; preds = %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit.i"
  %i.cs = load i64, ptr %i.i, align 8, !range !40, !noalias !3887, !noundef !6
  %.not.i.i.i.i.i = icmp eq i64 %i.cs, 3
  br i1 %.not.i.i.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc.i
  %.sroa.33.0..sroa_idx107.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 54
  %.sroa.32.0..sroa_idx103.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 53
  %i.ct = load i64, ptr %i.cr, align 8, !noalias !3887, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3887
  %.sroa.0.0.copyload2.i1.i.i = load i64, ptr %i.j, align 16, !noalias !3886 ; 2 uses
  %.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.0.0.copyload2.i2.i.i = load i64, ptr %.sroa_idx.i.i, align 8, !noalias !3886 ; 2 uses
  %i.cu = load <2 x i64>, ptr %.sroa.7.0..sroa_idx3.i.i.i, align 16, !noalias !3888
  %.sroa.7.0.copyload6.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx3.i.i.i, align 16, !noalias !3888
  %.sroa.12.0.copyload26.i.i.i = load i16, ptr %.sroa.12.0..sroa_idx23.i.i.i, align 16, !noalias !3888
  %i.cv = load <16 x i8>, ptr %.sroa.13.0..sroa_idx27.i.i.i, align 2, !noalias !3888
  %.sroa.32.0.copyload106.i.i.i = load i8, ptr %.sroa.32.0..sroa_idx103.i.i.i, align 1, !noalias !3888
  %i.cw = load <4 x i8>, ptr %.sroa.29.0..sroa_idx91.i.i.i, align 2, !noalias !3888
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.33.i.i.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.33.0..sroa_idx107.i.i.i, i64 10, i1 false), !noalias !3888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3887
  %i.cx = icmp eq i64 %i.ct, 0
  br i1 %i.cx, label %_ZN4time7parsing8parsable6sealed6Sealed5parse17hc38c4a338d54d05cE.exit.i.i, label %.thread88.i

bb.x:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3887
  br label %.thread88.i

.thread88.i:                                      ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.41.i.i)
  br label %.sink.split.i

_ZN4time7parsing8parsable6sealed6Sealed5parse17hc38c4a338d54d05cE.exit.i.i: ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.41.i.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.33.i.i.i, i64 10, i1 false), !noalias !3890
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33.i.i.i)
  %i.cy = icmp eq i8 %.sroa.32.0.copyload106.i.i.i, 2
  br i1 %i.cy, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZN4time7parsing8parsable6sealed6Sealed5parse17hc38c4a338d54d05cE.exit.i.i
  %.sroa.88.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.88.0..sroa_idx9.i.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.41.i.i, i64 10, i1 false), !noalias !3886
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.41.i.i)
  store i64 %.sroa.0.0.copyload2.i1.i.i, ptr %i.k, align 16, !noalias !3886
  %.sroa.04.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sroa.0.0.copyload2.i2.i.i, ptr %.sroa.04.sroa.7.0..sroa_idx.i.i, align 8, !noalias !3886
  %.sroa.04.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <2 x i64> %i.cu, ptr %.sroa.04.sroa.8.0..sroa_idx.i.i, align 16, !noalias !3886
  %.sroa.04.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i16 %.sroa.12.0.copyload26.i.i.i, ptr %.sroa.04.sroa.10.0..sroa_idx.i.i, align 16, !noalias !3886
  %.sroa.04.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 34
  store <16 x i8> %i.cv, ptr %.sroa.04.sroa.11.0..sroa_idx.i.i, align 2, !noalias !3886
  %.sroa.04.sroa.27.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 50
  store <4 x i8> %i.cw, ptr %.sroa.04.sroa.27.0..sroa_idx.i.i, align 2, !noalias !3886
  invoke fastcc void @"_ZN4time7parsing6parsed128_$LT$impl$u20$core..convert..TryFrom$LT$time..parsing..parsed..Parsed$GT$$u20$for$u20$time..offset_date_time..OffsetDateTime$GT$8try_from17h32607eccdf9a5eabE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef align 16 captures(address) dereferenceable(64) %i.k)
          to label %.noexc21.i unwind label %bb.d, !noalias !3875

.noexc21.i:                                       ; preds = %bb.y
  %i.cz = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.da = load i8, ptr %i.cz, align 8, !range !17, !noalias !3886, !noundef !6
  %.not.i20.i = icmp eq i8 %i.da, 3
  br i1 %.not.i20.i, label %.thread.i, label %.sink.split.i

.thread.i:                                        ; preds = %.noexc21.i
  %.sroa.0.i.sroa.0.0.copyload72.i = load i64, ptr %i.l, align 8, !noalias !3886
  %.sroa.0.i.sroa.6.0..sroa_idx73.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0.i.sroa.6.0.copyload74.i = load i64, ptr %.sroa.0.i.sroa.6.0..sroa_idx73.i, align 8, !noalias !3886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3874
  br label %bb.aa

.loopexit103.i:                                   ; preds = %bb.n, %bb.m, %.lr.ph.a, %.lr.ph.i.i, %bb.r, %bb.q, %.lr.ph57, %.lr.ph117.i.i, %bb.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3874
  invoke void @_ZN5regex5regex6string5Regex3new17he0191b94bce4878dE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.p, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @137, i64 noundef 17)
          to label %bb.ab unwind label %bb.d, !noalias !3875

bb.z:                                             ; preds = %_ZN4time7parsing8parsable6sealed6Sealed5parse17hc38c4a338d54d05cE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.41.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3874
  %.not14.i = icmp eq i64 %.sroa.0.0.copyload2.i1.i.i, 2
  br i1 %.not14.i, label %bb.aa, label %bb.u

.sink.split.i:                                    ; preds = %.noexc21.i, %.thread88.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3874
  br label %bb.u

bb.aa:                                            ; preds = %bb.z, %.thread.i
  %.sroa.6.082.i = phi i64 [ %.sroa.0.i.sroa.0.0.copyload72.i, %.thread.i ], [ %.sroa.0.0.copyload2.i2.i.i, %bb.z ] ; 2 uses
  %.sroa.10.081.i = phi i64 [ %.sroa.0.i.sroa.6.0.copyload74.i, %.thread.i ], [ %.sroa.7.0.copyload6.i.i.i, %bb.z ]
  %i.db = and i64 %.sroa.6.082.i, 72057594037927936
  %.sroa.0.sroa.6.0.extract.trunc10 = icmp ne i64 %i.db, 0
  br label %bb.u

bb.ab:                                            ; preds = %.loopexit103.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3891)
  call void @llvm.experimental.noalias.scope.decl(metadata !3892)
  %i.dc = load ptr, ptr %i.p, align 8, !alias.scope !3892, !noalias !3893, !noundef !6
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.ac, label %bb.ai, !prof !12

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3894
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 24, i1 false), !noalias !3893
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @475, i64 noundef 43, ptr noundef nonnull align 1 %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @477, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #57
          to label %bb.ag unwind label %bb.ad, !noalias !3895

bb.ad:                                            ; preds = %bb.ac
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3896)
  %i.dg = load i64, ptr %i.m, align 8, !range !10, !alias.scope !3896, !noalias !3894, !noundef !6 ; 3 uses
  %.not.i22.i = icmp eq i64 %i.dg, -9223372036854775808
  br i1 %.not.i22.i, label %.body.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !3897), !noalias !3898
  call void @llvm.experimental.noalias.scope.decl(metadata !3899), !noalias !3898
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %.body.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.di = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.di, align 8, !alias.scope !3900, !noalias !3894, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.dg, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3901
  br label %.body.i

bb.ag:                                            ; preds = %bb.ac
  unreachable

.body29.i:                                        ; preds = %bb.bm, %bb.bl, %bb.bf, %bb.be, %bb.ax, %.body.thread.i.i, %bb.ah
  %.pn.i = phi { ptr, i32 } [ %i.gn, %bb.be ], [ %lpad.thr_comm.split-lp.i.i, %bb.ax ], [ %i.dj, %bb.ah ], [ %i.ge, %.body.thread.i.i ], [ %i.gn, %bb.bf ], [ %lpad.phi.i, %bb.bl ], [ %lpad.phi.i, %bb.bm ]
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$regex..regex..string..Regex$GT$17hf80129cfa839a837E"(ptr noalias noundef align 8 dereferenceable(32) %i.q) #58
          to label %.body.i unwind label %bb.bp, !noalias !3875

bb.ah:                                            ; preds = %bb.bb, %.noexc6.i.i, %bb.av, %bb.ao, %bb.an
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body29.i

bb.ai:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !alias.scope !3898, !noalias !3874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3874
  store i32 0, ptr %i.n, align 8, !noalias !3874
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %1, ptr %.sroa.462.0..sroa_idx.i, align 8, !noalias !3874
  %.sroa.563.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %2, ptr %.sroa.563.0..sroa_idx.i, align 8, !noalias !3874
  %.sroa.7.0..sroa_idx64.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 0, ptr %.sroa.7.0..sroa_idx64.i, align 8, !noalias !3874
  %.sroa.9.0..sroa_idx65.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %2, ptr %.sroa.9.0..sroa_idx65.i, align 8, !noalias !3874
  %.sroa.1166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i8 1, ptr %.sroa.1166.0..sroa_idx.i, align 8, !noalias !3874
  %.val.i = load ptr, ptr %i.q, align 8, !noalias !3874, !nonnull !6, !noundef !6 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val16.i = load ptr, ptr %i.dk, align 8, !noalias !3874 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3874
  %i.dl = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !3902, !nonnull !6, !noundef !6 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 138
  %i.do = load i8, ptr %i.dn, align 2, !range !17, !noalias !3902, !noundef !6
  %cond.i.i = icmp eq i8 %i.do, 2
  br i1 %cond.i.i, label %.thread135.i, label %._crit_edge.i.i
end_hunk_0
begin_hunk_1_@_ZN11liquid_core5model6scalar9ScalarCow10into_owned17h3e6c58a38f652d16E:bb.a
  %i.b = load i64, ptr %1, align 8, !range !7, !noundef !6 ; 3 uses
  %i.c = add nsw i64 %i.b, -2
  %i.d = icmp samesign ugt i64 %i.b, 1
  %i.e = select i1 %i.d, i64 %i.c, i64 5
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 9 uses
  %i.f = trunc nuw i64 %i.b to i1
  br i1 %i.f, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.o, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  ret void

bb.j:                                             ; preds = %bb.h
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.o

bb.k:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = icmp ult i64 %.sroa.46.0.copyload, 16
  br i1 %i.g, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.h = icmp slt i64 %.sroa.46.0.copyload, 0
  br i1 %i.h, label %bb.m, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", !prof !14

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i": ; preds = %bb.l
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !4294
  %i.i = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.46.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !4294 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.m, label %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i"

bb.m:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %bb.l
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ], [ 0, %bb.l ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.sroa.46.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #57, !noalias !4295
  unreachable

"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i"
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %.sroa.2.0.copyload, i64 %.sroa.46.0.copyload, i1 false), !noalias !4296
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit"

bb.n:                                             ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !4297
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %.sroa.2.0.copyload, i64 %.sroa.46.0.copyload, i1 false), !noalias !4296
  %.0..0..0..sroa.0.1.copyload = load i56, ptr %i.a, align 8, !noalias !4298
  %.sroa.0.1.insert.ext = zext i56 %.0..0..0..sroa.0.1.copyload to i64
  %.sroa.0.1.insert.shift = shl nuw i64 %.sroa.0.1.insert.ext, 8
  %.sroa.0.1.insert.insert = or disjoint i64 %.sroa.0.1.insert.shift, %.sroa.46.0.copyload
  %i.k = inttoptr i64 %.sroa.0.1.insert.insert to ptr
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !4298
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit": ; preds = %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i", %bb.n
  %.sroa.0.0 = phi ptr [ %i.k, %bb.n ], [ %i.i, %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i" ]
  %.sroa.6.015 = phi i64 [ %.7..7..7..sroa.6.1.copyload, %bb.n ], [ %.sroa.46.0.copyload, %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i" ]
  %.sink.i = phi i64 [ 72057594037927936, %bb.n ], [ -72057594037927936, %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.o:                                             ; preds = %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit", %bb.j
  %.sroa.010.0 = phi ptr [ %.sroa.2.0.copyload, %bb.j ], [ %.sroa.0.0, %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit" ]
  %.sroa.512.0 = phi i64 [ %.sroa.46.0.copyload, %bb.j ], [ %.sroa.6.015, %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit" ]
  %.sroa.6.0 = phi i64 [ %.sroa.5.0.copyload, %bb.j ], [ %.sink.i, %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit" ]
  store i64 1, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.010.0, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.44.sroa.4.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.512.0, ptr %.sroa.44.sroa.4.0..sroa.44.0..sroa_idx.sroa_idx, align 8
  %.sroa.44.sroa.5.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0, ptr %.sroa.44.sroa.5.0..sroa.44.0..sroa_idx.sroa_idx, align 8
  br label %bb.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i64 } @_ZN11liquid_core5model6scalar9ScalarCow10to_integer17h822563f805932902E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #22 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !6 ; 3 uses
  %i.b = add nsw i64 %i.a, -2
  %i.c = icmp samesign ugt i64 %i.a, 1
  %i.d = select i1 %i.c, i64 %i.b, i64 5
  switch i64 %i.d, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit" [
    i64 0, label %bb.b
    i64 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !6
  br label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit"

bb.c:                                             ; preds = %bb.a
  %i.g = trunc nuw i64 %i.a to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !4304, !noundef !6
  switch i8 %i.j, label %bb.h [
    i8 0, label %bb.f
    i8 -1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.h, align 8, !alias.scope !4304, !nonnull !6, !align !8, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !4304, !noundef !6
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"

bb.f:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.h, align 8, !alias.scope !4304, !nonnull !6, !align !8, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !4304, !noundef !6
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"

bb.g:                                             ; preds = %bb.d
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !4304, !nonnull !6, !align !8, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.q, align 8, !alias.scope !4304, !noundef !6
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"

bb.h:                                             ; preds = %bb.d
  %i.r = load i8, ptr %i.h, align 8, !alias.scope !4304, !noundef !6
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"

"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit": ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.5.0.i = phi i64 [ %i.m, %bb.e ], [ %i.s, %bb.h ], [ %i.p, %bb.f ], [ %.val2.i, %bb.g ] ; 9 uses
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.e ], [ %i.t, %bb.h ], [ %i.n, %bb.f ], [ %.val.i, %bb.g ] ; 6 uses
  switch i64 %.sroa.5.0.i, label %thread-pre-split.i [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit"
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"
  %i.u = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !4305, !noalias !4306, !noundef !6 ; 2 uses
  switch i8 %i.u, label %bb.j [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit"
  ]

thread-pre-split.i:                               ; preds = %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"
  %.pr.i = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !4305, !noalias !4306
  br label %bb.j

bb.j:                                             ; preds = %thread-pre-split.i, %bb.i
  %i.v = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.u, %bb.i ]
  switch i8 %i.v, label %bb.q [
    i8 43, label %bb.k
    i8 45, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1 ; 2 uses
  %i.x = add i64 %.sroa.5.0.i, -1                 ; 3 uses
  %i.y = icmp ult i64 %.sroa.5.0.i, 17
  br i1 %i.y, label %.preheader.i, label %.preheader95.i

bb.l:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1 ; 2 uses
  %i.aa = add i64 %.sroa.5.0.i, -1                ; 3 uses
  %i.ab = icmp ult i64 %.sroa.5.0.i, 17
  br i1 %i.ab, label %.preheader97.i, label %.lr.ph.a

.preheader97.i:                                   ; preds = %bb.l
  %.not89109.i = icmp eq i64 %i.aa, 0
  br i1 %.not89109.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %.lr.ph.i

bb.m:                                             ; preds = %bb.s
  %i.ac = extractvalue { i64, i1 } %i.bk, 0       ; 2 uses
  %.not90.i.not = icmp eq i64 %i.bb, 0
  br i1 %.not90.i.not, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %.lr.ph66

.preheader99.i:                                   ; preds = %bb.o
  %i.ad = extractvalue { i64, i1 } %i.ao, 0       ; 2 uses
  %.not.i.not = icmp eq i64 %i.af, 0
  br i1 %.not.i.not, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.l, %.preheader99.i
  %.sroa.01.2.i52 = phi ptr [ %i.ae, %.preheader99.i ], [ %i.z, %bb.l ] ; 2 uses
  %.sroa.27.2.i51 = phi i64 [ %i.af, %.preheader99.i ], [ %i.aa, %bb.l ]
  %.sroa.031.2.i50 = phi i64 [ %i.ad, %.preheader99.i ], [ 0, %bb.l ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.01.2.i52, i64 1
  %i.af = add i64 %.sroa.27.2.i51, -1             ; 2 uses
  %i.ag = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.2.i50, i64 10) ; 2 uses
  %i.ah = extractvalue { i64, i1 } %i.ag, 0
  %i.ai = load i8, ptr %.sroa.01.2.i52, align 1, !alias.scope !4305, !noalias !4306, !noundef !6
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -48                  ; 2 uses
  %i.al = icmp ult i32 %i.ak, 10
  br i1 %i.al, label %bb.n, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit"

bb.n:                                             ; preds = %.lr.ph.a
  %i.am = extractvalue { i64, i1 } %i.ag, 1
  br i1 %i.am, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = zext nneg i32 %i.ak to i64
  %i.ao = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ah, i64 %i.an) ; 2 uses
  %i.ap = extractvalue { i64, i1 } %i.ao, 1
  br i1 %i.ap, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %.preheader99.i

.lr.ph.i:                                         ; preds = %.preheader97.i, %bb.p
  %.sroa.01.3112.i = phi ptr [ %i.aw, %bb.p ], [ %i.z, %.preheader97.i ] ; 2 uses
  %.sroa.27.3111.i = phi i64 [ %i.av, %bb.p ], [ %i.aa, %.preheader97.i ]
  %.sroa.031.4110.i = phi i64 [ %i.ay, %bb.p ], [ 0, %.preheader97.i ]
  %i.aq = load i8, ptr %.sroa.01.3112.i, align 1, !alias.scope !4305, !noalias !4306, !noundef !6
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -48                  ; 2 uses
  %i.at = icmp ugt i32 %i.as, 9
  br i1 %i.at, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.au = mul i64 %.sroa.031.4110.i, 10
  %i.av = add nsw i64 %.sroa.27.3111.i, -1        ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.01.3112.i, i64 1
  %i.ax = zext nneg i32 %i.as to i64
  %i.ay = sub i64 %i.au, %i.ax                    ; 2 uses
  %.not89.i = icmp eq i64 %i.av, 0
  br i1 %.not89.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %.lr.ph.i

bb.q:                                             ; preds = %bb.j
  %i.az = icmp ult i64 %.sroa.5.0.i, 16
  br i1 %i.az, label %.lr.ph117.i.preheader, label %.preheader95.i

.lr.ph117.i.preheader:                            ; preds = %.preheader.i, %bb.q
  %.sroa.01.1116.i.ph = phi ptr [ %.sroa.0.0.i, %bb.q ], [ %i.w, %.preheader.i ]
  %.sroa.27.1115.i.ph = phi i64 [ %.sroa.5.0.i, %bb.q ], [ %i.x, %.preheader.i ]
  br label %.lr.ph117.i

.preheader95.i:                                   ; preds = %bb.q, %bb.k
  %.sroa.27.0.ph.i = phi i64 [ %.sroa.5.0.i, %bb.q ], [ %i.x, %bb.k ] ; 2 uses
  %.sroa.01.0.ph.i = phi ptr [ %.sroa.0.0.i, %bb.q ], [ %i.w, %bb.k ]
  %.not90.i.not62 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not90.i.not62, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %.lr.ph66

.preheader.i:                                     ; preds = %bb.k
  %.not91113.i = icmp eq i64 %i.x, 0
  br i1 %.not91113.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %.lr.ph117.i.preheader

.lr.ph66:                                         ; preds = %.preheader95.i, %bb.m
  %.sroa.01.0.i65 = phi ptr [ %i.ba, %bb.m ], [ %.sroa.01.0.ph.i, %.preheader95.i ] ; 2 uses
  %.sroa.27.0.i64 = phi i64 [ %i.bb, %bb.m ], [ %.sroa.27.0.ph.i, %.preheader95.i ]
  %.sroa.031.0.i63 = phi i64 [ %i.ac, %bb.m ], [ 0, %.preheader95.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i65, i64 1
  %i.bb = add i64 %.sroa.27.0.i64, -1             ; 2 uses
  %i.bc = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.0.i63, i64 10) ; 2 uses
  %i.bd = extractvalue { i64, i1 } %i.bc, 0
  %i.be = load i8, ptr %.sroa.01.0.i65, align 1, !alias.scope !4305, !noalias !4306, !noundef !6
  %i.bf = zext i8 %i.be to i32
  %i.bg = add nsw i32 %i.bf, -48                  ; 2 uses
  %i.bh = icmp ult i32 %i.bg, 10
  br i1 %i.bh, label %bb.r, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit"

bb.r:                                             ; preds = %.lr.ph66
  %i.bi = extractvalue { i64, i1 } %i.bc, 1
  br i1 %i.bi, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = zext nneg i32 %i.bg to i64
  %i.bk = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bd, i64 %i.bj) ; 2 uses
  %i.bl = extractvalue { i64, i1 } %i.bk, 1
  br i1 %i.bl, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %bb.m

.lr.ph117.i:                                      ; preds = %.lr.ph117.i.preheader, %bb.t
  %.sroa.01.1116.i = phi ptr [ %i.bs, %bb.t ], [ %.sroa.01.1116.i.ph, %.lr.ph117.i.preheader ] ; 2 uses
  %.sroa.27.1115.i = phi i64 [ %i.br, %bb.t ], [ %.sroa.27.1115.i.ph, %.lr.ph117.i.preheader ]
  %.sroa.031.1114.i = phi i64 [ %i.bu, %bb.t ], [ 0, %.lr.ph117.i.preheader ]
  %i.bm = load i8, ptr %.sroa.01.1116.i, align 1, !alias.scope !4305, !noalias !4306, !noundef !6
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nsw i32 %i.bn, -48                  ; 2 uses
  %i.bp = icmp ugt i32 %i.bo, 9
  br i1 %i.bp, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %bb.t

bb.t:                                             ; preds = %.lr.ph117.i
  %i.bq = mul i64 %.sroa.031.1114.i, 10
  %i.br = add nsw i64 %.sroa.27.1115.i, -1        ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.01.1116.i, i64 1
  %i.bt = zext nneg i32 %i.bo to i64
  %i.bu = add i64 %i.bq, %i.bt                    ; 2 uses
  %.not91.i = icmp eq i64 %i.br, 0
  br i1 %.not91.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit", label %.lr.ph117.i

"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit": ; preds = %.preheader99.i, %.lr.ph.a, %bb.n, %bb.o, %bb.p, %.lr.ph.i, %bb.r, %.lr.ph66, %bb.s, %bb.m, %bb.t, %.lr.ph117.i, %.preheader97.i, %.preheader.i, %bb.i, %bb.i, %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit", %.preheader95.i, %bb.a, %bb.b
  %.sroa.5.0 = phi i64 [ undef, %bb.a ], [ %i.f, %bb.b ], [ 0, %.preheader.i ], [ 0, %.preheader95.i ], [ undef, %bb.i ], [ undef, %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit" ], [ %i.bu, %bb.t ], [ 0, %.preheader97.i ], [ undef, %bb.i ], [ undef, %.lr.ph.i ], [ undef, %bb.r ], [ undef, %.lr.ph117.i ], [ %i.ac, %bb.m ], [ undef, %bb.s ], [ undef, %.lr.ph66 ], [ %i.ay, %bb.p ], [ undef, %.lr.ph.a ], [ undef, %bb.n ], [ undef, %bb.o ], [ %i.ad, %.preheader99.i ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %.preheader.i ], [ 1, %.preheader95.i ], [ 0, %bb.i ], [ %.sroa.5.0.i, %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit" ], [ 1, %bb.t ], [ 1, %.preheader97.i ], [ 0, %bb.i ], [ 0, %.lr.ph.i ], [ 0, %bb.r ], [ 0, %.lr.ph117.i ], [ 1, %bb.m ], [ 0, %bb.s ], [ 0, %.lr.ph66 ], [ 1, %bb.p ], [ 0, %.lr.ph.a ], [ 0, %bb.n ], [ 0, %bb.o ], [ 1, %.preheader99.i ]
  %i.bv = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.bw = insertvalue { i64, i64 } %i.bv, i64 %.sroa.5.0, 1
  ret { i64, i64 } %i.bw
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11liquid_core5model6scalar9ScalarCow11into_string17h14588ec4a73b624bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [15 x i8], align 8                ; 6 uses
  %i.c = alloca [15 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [15 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [15 x i8], align 8                ; 6 uses
  %i.j = alloca [15 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [15 x i8], align 8                ; 6 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = load i64, ptr %1, align 8, !range !7, !noundef !6 ; 3 uses
  %i.r = add nsw i64 %i.q, -2
  %i.s = icmp samesign ugt i64 %i.q, 1
  %i.t = select i1 %i.s, i64 %i.r, i64 5
  switch i64 %i.t, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.i
    i64 2, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit36"
    i64 3, label %bb.s
    i64 4, label %bb.ac
    i64 5, label %bb.am
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call fastcc void @"_ZN51_$LT$i64$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h43f0aca62bb23cf4E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p, i64 %i.v)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4416)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !4416, !noalias !4417, !noundef !6 ; 9 uses
  %i.y = icmp sgt i64 %i.x, -1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp samesign ult i64 %i.x, 16
  br i1 %i.z, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.018.0.copyload.i = load i64, ptr %i.p, align 8, !alias.scope !4416, !noalias !4417 ; 3 uses
  %.sroa.219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.219.0.copyload.i = load ptr, ptr %.sroa.219.0..sroa_idx.i, align 8, !alias.scope !4416, !noalias !4417 ; 4 uses
  %i.aa = icmp ugt i64 %.sroa.018.0.copyload.i, %i.x
  br i1 %i.aa, label %bb.e, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.219.0.copyload.i) ]
  %i.ab = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.219.0.copyload.i, i64 noundef %.sroa.018.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %i.x) #59, !noalias !4418 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.f, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i unwind label %.body.i, !noalias !4419

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

common.resume:                                    ; preds = %bb.ad, %bb.ae, %bb.t, %bb.u, %bb.j, %bb.k, %.body.i73, %.body.i52, %.body.i16, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %.body.i ], [ %i.cc, %.body.i73 ], [ %i.au, %.body.i16 ], [ %i.an, %bb.j ], [ %i.bn, %.body.i52 ], [ %i.bg, %bb.t ], [ %i.an, %bb.k ], [ %i.bg, %bb.u ], [ %i.bv, %bb.ae ], [ %i.bv, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.219.0.copyload.i, i64 noundef %.sroa.018.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !4420
  br label %common.resume

bb.g:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !4416, !noalias !4417, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.m, i8 0, i64 15, i1 false), !noalias !4421
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull readonly align 1 %i.af, i64 %i.x, i1 false), !noalias !4421
  %.0..0..0..sroa.096.1.copyload = load i56, ptr %i.m, align 8, !noalias !4416
  %.sroa.096.1.insert.ext = zext i56 %.0..0..0..sroa.096.1.copyload to i64
  %.sroa.096.1.insert.shift = shl nuw i64 %.sroa.096.1.insert.ext, 8
  %.sroa.096.1.insert.insert = or disjoint i64 %.sroa.096.1.insert.shift, %i.x
  %i.ag = inttoptr i64 %.sroa.096.1.insert.insert to ptr ; 2 uses
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 7
  %.7..7..7..sroa.697.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !4416 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4423)
  %.val.i.i.i = load i64, ptr %i.p, align 8, !range !21, !alias.scope !4424, !noalias !4417, !noundef !6 ; 2 uses
  %i.ah = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ah, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !4425
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit": ; preds = %bb.d, %bb.e, %bb.g, %bb.h
  %.sroa.096.0 = phi ptr [ %i.ag, %bb.g ], [ %i.ag, %bb.h ], [ %i.ab, %bb.e ], [ %.sroa.219.0.copyload.i, %bb.d ]
  %.sroa.799.0 = phi i8 [ 1, %bb.g ], [ 1, %bb.h ], [ -1, %bb.e ], [ -1, %bb.d ]
  %.sroa.697.0 = phi i64 [ %.7..7..7..sroa.697.1.copyload, %bb.g ], [ %.7..7..7..sroa.697.1.copyload, %bb.h ], [ %i.x, %bb.e ], [ %i.x, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store ptr %.sroa.096.0, ptr %0, align 8
  %.sroa.697.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.697.0, ptr %.sroa.697.0..sroa_idx, align 8
  %.sroa.799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %.sroa.799.0, ptr %.sroa.799.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.an

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load double, ptr %i.ai, align 8, !noundef !6
  store double %i.aj, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4426
  store i64 0, ptr %i.l, align 8, !noalias !4426
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !4426
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !4426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4426
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i32 -536870880, ptr %i.ak, align 8, !noalias !4426
  %.sroa.4.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i7, align 4, !noalias !4426
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !4426
  store ptr %i.l, ptr %i.k, align 8, !noalias !4426
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @443, ptr %i.al, align 8, !noalias !4426
  %i.am = invoke noundef zeroext i1 @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hd9bcbe11d7fbf124E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.l unwind label %bb.j, !noalias !4427

bb.j:                                             ; preds = %bb.m, %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4428)
  call void @llvm.experimental.noalias.scope.decl(metadata !4429)
  %.val.i.i.i8 = load i64, ptr %i.l, align 8, !range !21, !alias.scope !4430, !noalias !4426, !noundef !6 ; 2 uses
  %i.ao = icmp eq i64 %.val.i.i.i8, 0
  br i1 %i.ao, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !4430, !noalias !4426, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i8, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !4431
  br label %common.resume

bb.l:                                             ; preds = %bb.i
  br i1 %i.am, label %bb.m, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17ha180ef6590d8fa77E.exit", !prof !12

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @444, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @468, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #57
          to label %.noexc.i unwind label %bb.j, !noalias !4427

.noexc.i:                                         ; preds = %bb.m
  unreachable

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17ha180ef6590d8fa77E.exit": ; preds = %bb.l
  %.sroa.081.0.copyload = load i64, ptr %i.l, align 8, !noalias !4432 ; 5 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !4432 ; 7 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !4432 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ap = icmp sgt i64 %.sroa.7.0.copyload, -1
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp samesign ult i64 %.sroa.7.0.copyload, 16
  br i1 %i.aq, label %bb.q, label %bb.n

bb.n:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17ha180ef6590d8fa77E.exit"
  %i.ar = icmp ugt i64 %.sroa.081.0.copyload, %.sroa.7.0.copyload
  br i1 %i.ar, label %bb.o, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit21"

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.as = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.081.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %.sroa.7.0.copyload) #59, !noalias !4433 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.p, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit21"

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.7.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i17 unwind label %.body.i16, !noalias !4434

.noexc.i.i17:                                     ; preds = %bb.p
  unreachable

.body.i16:                                        ; preds = %bb.p
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.081.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !4435
end_hunk_1
begin_hunk_2_@_ZN11liquid_core6parser6parser13parse_literal17h67e343576f749e45E:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !range !28, !noundef !6
  switch i8 %i.bs, label %.invoke [
    i8 24, label %bb.v
    i8 25, label %bb.p
    i8 26, label %bb.q
    i8 27, label %bb.r
    i8 28, label %bb.s
    i8 29, label %bb.t
    i8 30, label %bb.u
  ], !prof !4818

.invoke:                                          ; preds = %bb.o, %bb.n, %bb.m
  %i.bt = phi ptr [ @539, %bb.n ], [ @536, %bb.m ], [ @270, %bb.o ]
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @236, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bt) #57
          to label %.cont unwind label %.body41

.cont:                                            ; preds = %.invoke
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.bu, align 1
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.bv, align 1
  br label %bb.v

bb.r:                                             ; preds = %bb.o
  %i.bw = invoke fastcc { ptr, i64 } @"_ZN4pest9iterators4pair13Pair$LT$R$GT$6as_str17h64daa3b571d3e876E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.y unwind label %.body41    ; 2 uses

bb.s:                                             ; preds = %bb.o
  %i.bx = invoke fastcc { ptr, i64 } @"_ZN4pest9iterators4pair13Pair$LT$R$GT$6as_str17h64daa3b571d3e876E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.ah unwind label %.body41   ; 2 uses

bb.t:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.by = invoke fastcc { ptr, i64 } @"_ZN4pest9iterators4pair13Pair$LT$R$GT$6as_str17h64daa3b571d3e876E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.au unwind label %.body41   ; 2 uses

bb.u:                                             ; preds = %bb.o
  %i.bz = invoke fastcc { ptr, i64 } @"_ZN4pest9iterators4pair13Pair$LT$R$GT$6as_str17h64daa3b571d3e876E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.ay unwind label %.body41   ; 2 uses

bb.v:                                             ; preds = %bb.o, %select.unfold, %bb.ax, %.loopexit83, %bb.ag, %bb.q, %bb.p
  %.sink = phi i8 [ 0, %select.unfold ], [ 0, %bb.ax ], [ 0, %.loopexit83 ], [ 0, %bb.ag ], [ 3, %bb.q ], [ 3, %bb.p ], [ 4, %bb.o ]
  store i8 %.sink, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !4819)
  %i.ca = load i64, ptr %.val, align 8, !noalias !4820, !noundef !6
  %i.cb = add i64 %i.ca, -1                       ; 2 uses
  store i64 %i.cb, ptr %.val, align 8, !noalias !4820
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.w, label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i38"

bb.w:                                             ; preds = %bb.v
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hbb0a19576e836c63E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.h)
  br label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i38"

"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i38": ; preds = %bb.w, %bb.v
  %i.cd = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4821)
  call void @llvm.experimental.noalias.scope.decl(metadata !4822)
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !4823, !nonnull !6, !noundef !6 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !4823, !noundef !6
  %i.cg = add i64 %i.cf, -1                       ; 2 uses
  store i64 %i.cg, ptr %i.ce, align 8, !noalias !4823
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.x, label %"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit"

bb.x:                                             ; preds = %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i38"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h1ff8d69044974696E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cd)
  br label %"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit"

bb.y:                                             ; preds = %bb.r
  %i.ci = extractvalue { ptr, i64 } %i.bw, 0      ; 3 uses
  %i.cj = extractvalue { ptr, i64 } %i.bw, 1      ; 4 uses
  %i.ck = add i64 %i.cj, -1                       ; 2 uses
  %or.cond82 = icmp ugt i64 %i.cj, 1
  br i1 %or.cond82, label %bb.z, label %.split.i

bb.z:                                             ; preds = %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 1 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !4824, !noundef !6
  %i.cn = icmp sgt i8 %i.cm, -65
  br i1 %i.cn, label %bb.aa, label %.split.i

bb.aa:                                            ; preds = %bb.z
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ck
  %i.cp = load i8, ptr %i.co, align 1, !alias.scope !4824, !noundef !6
  %i.cq = icmp sgt i8 %i.cp, -65
  br i1 %i.cq, label %bb.ab, label %.split.i

bb.ab:                                            ; preds = %bb.aa
  %i.cr = add i64 %i.cj, -2                       ; 10 uses
  %i.cs = icmp slt i64 %i.cr, 0
  br i1 %i.cs, label %bb.ac, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !14

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.ab
  %i.ct = icmp eq i64 %i.cr, 0                    ; 2 uses
  br i1 %i.ct, label %.thread73, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

.thread73:                                        ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %bb.ae

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !4825
  %i.cu = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cr, i64 noundef range(i64 1, 9) 1) #59, !noalias !4825 ; 4 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.ab
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.ab ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @787) #57
          to label %.noexc39 unwind label %.body41

.noexc39:                                         ; preds = %bb.ac
  unreachable

.split.i:                                         ; preds = %bb.aa, %bb.z, %bb.y
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ci, i64 noundef %i.cj, i64 noundef 1, i64 noundef %i.ck, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #57
          to label %bb.l unwind label %.body41

bb.ad:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr nonnull readonly align 1 %i.cl, i64 %i.cr, i1 false), !noalias !4826
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cw = icmp samesign ult i64 %i.cr, 16
  br i1 %i.cw, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %.thread73, %bb.ad
  %.sroa.10.0.i.i75 = phi ptr [ inttoptr (i64 1 to ptr), %.thread73 ], [ %i.cu, %bb.ad ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.d, i8 0, i64 15, i1 false), !noalias !4827
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull readonly align 1 %.sroa.10.0.i.i75, i64 %i.cr, i1 false), !noalias !4827
  %.0..0..0..0..0..sroa.0.1.copyload.i = load i56, ptr %i.d, align 8, !noalias !4828
  %.sroa.0.1.insert.ext.i = zext i56 %.0..0..0..0..0..sroa.0.1.copyload.i to i64
  %.sroa.0.1.insert.shift.i = shl nuw i64 %.sroa.0.1.insert.ext.i, 8
  %.sroa.0.1.insert.insert.i = add nuw nsw i64 %.sroa.0.1.insert.shift.i, %i.cr
  %i.cx = inttoptr i64 %.sroa.0.1.insert.insert.i to ptr ; 2 uses
  %.7..7..7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  %.7..7..7..7..7..sroa.6.1.copyload.i = load i64, ptr %.7..7..7..7..7..sroa_idx, align 1, !noalias !4828 ; 2 uses
  br i1 %i.ct, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i75, i64 noundef %i.cr, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !4829
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.sroa.0.0.i40 = phi ptr [ %i.cx, %bb.ae ], [ %i.cx, %bb.af ], [ %i.cu, %bb.ad ]
  %.sroa.75.0.i = phi i8 [ 1, %bb.ae ], [ 1, %bb.af ], [ -1, %bb.ad ]
  %.sroa.6.0.i = phi i64 [ %.7..7..7..7..7..sroa.6.1.copyload.i, %bb.ae ], [ %.7..7..7..7..7..sroa.6.1.copyload.i, %bb.af ], [ %i.cr, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.cy, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.i40, ptr %.sroa.453.0..sroa_idx, align 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0.i, ptr %.sroa.554.0..sroa_idx, align 8
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 39
  store i8 %.sroa.75.0.i, ptr %.sroa.656.0..sroa_idx, align 1
  br label %bb.v

bb.ah:                                            ; preds = %bb.s
  %i.cz = extractvalue { ptr, i64 } %i.bx, 0      ; 6 uses
  %i.da = extractvalue { ptr, i64 } %i.bx, 1      ; 8 uses
  switch i64 %i.da, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.db = load i8, ptr %i.cz, align 1, !alias.scope !4830, !noalias !4831, !noundef !6 ; 2 uses
  switch i8 %i.db, label %bb.aj [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.ah
  %.pr.i = load i8, ptr %i.cz, align 1, !alias.scope !4830, !noalias !4831
  br label %bb.aj

bb.aj:                                            ; preds = %thread-pre-split.i, %bb.ai
  %i.dc = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.db, %bb.ai ]
  switch i8 %i.dc, label %bb.aq [
    i8 43, label %bb.ak
    i8 45, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 1 ; 2 uses
  %i.de = add i64 %i.da, -1                       ; 3 uses
  %i.df = icmp ult i64 %i.da, 17
  br i1 %i.df, label %.preheader.i, label %.preheader95.i

bb.al:                                            ; preds = %bb.aj
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 1 ; 2 uses
  %i.dh = add i64 %i.da, -1                       ; 3 uses
  %i.di = icmp ult i64 %i.da, 17
  br i1 %i.di, label %.preheader97.i, label %.lr.ph.a

.preheader97.i:                                   ; preds = %bb.al
  %.not89109.i = icmp eq i64 %i.dh, 0
  br i1 %.not89109.i, label %.loopexit83, label %.lr.ph.i

bb.am:                                            ; preds = %bb.as
  %i.dj = extractvalue { i64, i1 } %i.er, 0       ; 2 uses
  %.not90.i = icmp eq i64 %i.ei, 0
  br i1 %.not90.i, label %.loopexit83, label %.lr.ph155

.preheader99.i:                                   ; preds = %bb.ao
  %i.dk = extractvalue { i64, i1 } %i.dv, 0       ; 2 uses
  %.not.i43 = icmp eq i64 %i.dm, 0
  br i1 %.not.i43, label %.loopexit83, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.al, %.preheader99.i
  %.sroa.01.2.i150 = phi ptr [ %i.dl, %.preheader99.i ], [ %i.dg, %bb.al ] ; 2 uses
  %.sroa.27.2.i149 = phi i64 [ %i.dm, %.preheader99.i ], [ %i.dh, %bb.al ]
  %.sroa.031.2.i148 = phi i64 [ %i.dk, %.preheader99.i ], [ 0, %bb.al ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.01.2.i150, i64 1
  %i.dm = add i64 %.sroa.27.2.i149, -1            ; 2 uses
  %i.dn = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.2.i148, i64 10) ; 2 uses
  %i.do = extractvalue { i64, i1 } %i.dn, 0
  %i.dp = load i8, ptr %.sroa.01.2.i150, align 1, !alias.scope !4830, !noalias !4831, !noundef !6
  %i.dq = zext i8 %i.dp to i32
  %i.dr = add nsw i32 %i.dq, -48                  ; 2 uses
  %i.ds = icmp ult i32 %i.dr, 10
  br i1 %i.ds, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %.lr.ph.a
  %i.dt = extractvalue { i64, i1 } %i.dn, 1
  br i1 %i.dt, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.du = zext nneg i32 %i.dr to i64
  %i.dv = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.do, i64 %i.du) ; 2 uses
  %i.dw = extractvalue { i64, i1 } %i.dv, 1
  br i1 %i.dw, label %.loopexit, label %.preheader99.i

.lr.ph.i:                                         ; preds = %.preheader97.i, %bb.ap
  %.sroa.01.3112.i = phi ptr [ %i.ed, %bb.ap ], [ %i.dg, %.preheader97.i ] ; 2 uses
  %.sroa.27.3111.i = phi i64 [ %i.ec, %bb.ap ], [ %i.dh, %.preheader97.i ]
  %.sroa.031.4110.i = phi i64 [ %i.ef, %bb.ap ], [ 0, %.preheader97.i ]
  %i.dx = load i8, ptr %.sroa.01.3112.i, align 1, !alias.scope !4830, !noalias !4831, !noundef !6
  %i.dy = zext i8 %i.dx to i32
  %i.dz = add nsw i32 %i.dy, -48                  ; 2 uses
  %i.ea = icmp ult i32 %i.dz, 10
  br i1 %i.ea, label %bb.ap, label %.loopexit

bb.ap:                                            ; preds = %.lr.ph.i
  %i.eb = mul i64 %.sroa.031.4110.i, 10
  %i.ec = add nsw i64 %.sroa.27.3111.i, -1        ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.01.3112.i, i64 1
  %i.ee = zext nneg i32 %i.dz to i64
  %i.ef = sub i64 %i.eb, %i.ee                    ; 2 uses
  %.not89.i = icmp eq i64 %i.ec, 0
  br i1 %.not89.i, label %.loopexit83, label %.lr.ph.i

bb.aq:                                            ; preds = %bb.aj
  %i.eg = icmp ult i64 %i.da, 16
  br i1 %i.eg, label %.lr.ph117.i.preheader, label %.preheader95.i

.lr.ph117.i.preheader:                            ; preds = %.preheader.i, %bb.aq
  %.sroa.01.1116.i.ph = phi ptr [ %i.cz, %bb.aq ], [ %i.dd, %.preheader.i ]
  %.sroa.27.1115.i.ph = phi i64 [ %i.da, %bb.aq ], [ %i.de, %.preheader.i ]
  br label %.lr.ph117.i

.preheader95.i:                                   ; preds = %bb.aq, %bb.ak
  %.sroa.27.0.ph.i = phi i64 [ %i.da, %bb.aq ], [ %i.de, %bb.ak ] ; 2 uses
  %.sroa.01.0.ph.i = phi ptr [ %i.cz, %bb.aq ], [ %i.dd, %bb.ak ]
  %.not90.i151 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not90.i151, label %.loopexit83, label %.lr.ph155

.preheader.i:                                     ; preds = %bb.ak
  %.not91113.i = icmp eq i64 %i.de, 0
  br i1 %.not91113.i, label %.loopexit83, label %.lr.ph117.i.preheader

.lr.ph155:                                        ; preds = %.preheader95.i, %bb.am
  %.sroa.01.0.i154 = phi ptr [ %i.eh, %bb.am ], [ %.sroa.01.0.ph.i, %.preheader95.i ] ; 2 uses
  %.sroa.27.0.i153 = phi i64 [ %i.ei, %bb.am ], [ %.sroa.27.0.ph.i, %.preheader95.i ]
  %.sroa.031.0.i152 = phi i64 [ %i.dj, %bb.am ], [ 0, %.preheader95.i ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i154, i64 1
  %i.ei = add i64 %.sroa.27.0.i153, -1            ; 2 uses
  %i.ej = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.0.i152, i64 10) ; 2 uses
  %i.ek = extractvalue { i64, i1 } %i.ej, 0
  %i.el = load i8, ptr %.sroa.01.0.i154, align 1, !alias.scope !4830, !noalias !4831, !noundef !6
  %i.em = zext i8 %i.el to i32
  %i.en = add nsw i32 %i.em, -48                  ; 2 uses
  %i.eo = icmp ult i32 %i.en, 10
  br i1 %i.eo, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %.lr.ph155
  %i.ep = extractvalue { i64, i1 } %i.ej, 1
  br i1 %i.ep, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eq = zext nneg i32 %i.en to i64
  %i.er = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ek, i64 %i.eq) ; 2 uses
  %i.es = extractvalue { i64, i1 } %i.er, 1
  br i1 %i.es, label %.loopexit, label %bb.am

.lr.ph117.i:                                      ; preds = %.lr.ph117.i.preheader, %bb.at
  %.sroa.01.1116.i = phi ptr [ %i.ez, %bb.at ], [ %.sroa.01.1116.i.ph, %.lr.ph117.i.preheader ] ; 2 uses
  %.sroa.27.1115.i = phi i64 [ %i.ey, %bb.at ], [ %.sroa.27.1115.i.ph, %.lr.ph117.i.preheader ]
  %.sroa.031.1114.i = phi i64 [ %i.fb, %bb.at ], [ 0, %.lr.ph117.i.preheader ]
  %i.et = load i8, ptr %.sroa.01.1116.i, align 1, !alias.scope !4830, !noalias !4831, !noundef !6
  %i.eu = zext i8 %i.et to i32
  %i.ev = add nsw i32 %i.eu, -48                  ; 2 uses
  %i.ew = icmp ult i32 %i.ev, 10
  br i1 %i.ew, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %.lr.ph117.i
  %i.ex = mul i64 %.sroa.031.1114.i, 10
  %i.ey = add nsw i64 %.sroa.27.1115.i, -1        ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.01.1116.i, i64 1
  %i.fa = zext nneg i32 %i.ev to i64
  %i.fb = add i64 %i.ex, %i.fa                    ; 2 uses
  %.not91.i = icmp eq i64 %i.ey, 0
  br i1 %.not91.i, label %.loopexit83, label %.lr.ph117.i

.loopexit:                                        ; preds = %bb.ao, %bb.an, %.lr.ph.a, %.lr.ph.i, %.lr.ph155, %bb.ar, %bb.as, %.lr.ph117.i, %bb.ai, %bb.ai, %bb.ah
  %.sroa.4.0.ph = phi i8 [ 1, %bb.ai ], [ 1, %bb.ai ], [ 0, %bb.ah ], [ 2, %bb.ar ], [ 1, %.lr.ph.i ], [ 1, %.lr.ph117.i ], [ 2, %bb.as ], [ 1, %.lr.ph155 ], [ 1, %.lr.ph.a ], [ 3, %bb.ao ], [ 3, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4832
  store i8 %.sroa.4.0.ph, ptr %i.c, align 1, !noalias !4832
  br label %.loopexit.invoke

.loopexit.invoke:                                 ; preds = %bb.ay, %bb.ba, %bb.az, %bb.aw, %.loopexit
  %i.fc = phi ptr [ @264, %.loopexit ], [ @266, %bb.aw ], [ @268, %bb.az ], [ @268, %bb.ba ], [ @268, %bb.ay ]
  %i.fd = phi i64 [ 50, %.loopexit ], [ 48, %bb.aw ], [ 47, %bb.az ], [ 47, %bb.ba ], [ 47, %bb.ay ]
  %i.fe = phi ptr [ %i.c, %.loopexit ], [ %i.b, %bb.aw ], [ %i.a, %bb.az ], [ %i.a, %bb.ba ], [ %i.a, %bb.ay ]
  %i.ff = phi ptr [ @466, %.loopexit ], [ @473, %bb.aw ], [ @470, %bb.az ], [ @470, %bb.ba ], [ @470, %bb.ay ]
  %i.fg = phi ptr [ @265, %.loopexit ], [ @267, %bb.aw ], [ @269, %bb.az ], [ @269, %bb.ba ], [ @269, %bb.ay ]
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fc, i64 noundef %i.fd, ptr noundef nonnull align 1 %i.fe, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ff, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fg) #57
          to label %.loopexit.cont unwind label %.body41

.loopexit.cont:                                   ; preds = %.loopexit.invoke
  unreachable

.loopexit83:                                      ; preds = %.preheader99.i, %bb.ap, %bb.am, %bb.at, %.preheader95.i, %.preheader.i, %.preheader97.i
  %.sroa.1549.0 = phi i64 [ %i.fb, %bb.at ], [ %i.dj, %bb.am ], [ %i.ef, %bb.ap ], [ 0, %.preheader.i ], [ 0, %.preheader97.i ], [ 0, %.preheader95.i ], [ %i.dk, %.preheader99.i ]
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.fh, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.1549.0, ptr %.sroa.47.0..sroa_idx, align 8
  br label %bb.v

bb.au:                                            ; preds = %bb.t
  %i.fi = extractvalue { ptr, i64 } %i.by, 0
  %i.fj = extractvalue { ptr, i64 } %i.by, 1
  invoke void @"_ZN4core3num7dec2flt60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$f64$GT$8from_str17h27ef7ae142abe0bdE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fi, i64 noundef %i.fj)
          to label %bb.av unwind label %.body41

bb.av:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !4833)
  %i.fk = load i8, ptr %i.e, align 8, !range !11, !alias.scope !4833, !noundef !6
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.aw, label %bb.ax, !prof !12

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4833
  %i.fm = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !range !11, !alias.scope !4833, !noundef !6
  store i8 %i.fn, ptr %i.b, align 1, !noalias !4833
  br label %.loopexit.invoke

bb.ax:                                            ; preds = %bb.av
  %i.fo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.fp = load double, ptr %i.fo, align 8, !alias.scope !4833, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.fq, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.fp, ptr %.sroa.413.0..sroa_idx, align 8
  br label %bb.v

bb.ay:                                            ; preds = %bb.u
  %i.fr = extractvalue { ptr, i64 } %i.bz, 0      ; 3 uses
  %i.fs = extractvalue { ptr, i64 } %i.bz, 1
  switch i64 %i.fs, label %.loopexit.invoke [
    i64 4, label %bb.az
    i64 5, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  %i.ft = load i32, ptr %i.fr, align 1
  %i.fu = icmp ne i32 %i.ft, 1702195828
  %i.fv = zext i1 %i.fu to i32
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %select.unfold, label %.loopexit.invoke

bb.ba:                                            ; preds = %bb.ay
  %i.fx = load i32, ptr %i.fr, align 1
  %i.fy = xor i32 %i.fx, 1936482662
  %i.fz = getelementptr i8, ptr %i.fr, i64 4
  %i.ga = load i8, ptr %i.fz, align 1
  %i.gb = zext i8 %i.ga to i32
  %i.gc = xor i32 %i.gb, 101
  %i.gd = or i32 %i.fy, %i.gc
  %i.ge = icmp ne i32 %i.gd, 0
  %i.gf = zext i1 %i.ge to i32
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %select.unfold, label %.loopexit.invoke

select.unfold:                                    ; preds = %bb.ba, %bb.az
  %.sroa.0.0.i46 = phi i8 [ 1, %bb.az ], [ 0, %bb.ba ]
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.gh, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.0.0.i46, ptr %.sroa.419.0..sroa_idx, align 8
  br label %bb.v

"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE.exit": ; preds = %bb.x, %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i38"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

.thread60:                                        ; preds = %.body41, %bb.f, %bb.bb
  %.pn59 = phi { ptr, i32 } [ %i.ao, %bb.f ], [ %lpad.thr_comm, %bb.bb ], [ %i.az, %.body41 ]
  resume { ptr, i32 } %.pn59

bb.bb:                                            ; preds = %.invoke135, %.invoke133, %bb.e
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr96drop_in_place$LT$pest..iterators..pair..Pair$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h2a333599b0df0cbbE"(ptr noalias noundef align 8 dereferenceable(40) %1) #58
  br label %.thread60
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11liquid_core6parser6parser14parse_variable17hd4bedca70fa27241E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 2 uses
  %i.c = alloca [120 x i8], align 8               ; 8 uses
  %i.d = alloca [56 x i8], align 16               ; 10 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @"_ZN137_$LT$liquid_core..parser..parser..inner..LiquidParser$u20$as$u20$pest..parser..Parser$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$5parse17h78f6f1092b06af3eE"(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.c, i8 noundef 17, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %i.f = load i64, ptr %i.c, align 8, !range !37, !noundef !6
  %.not = icmp eq i64 %i.f, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %i.c, i64 120, i1 false)
  %i.g = call fastcc noundef nonnull align 8 ptr @_ZN11liquid_core6parser6parser18convert_pest_error17h1b49e119442899d5E(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store i64 7, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.616.0..sroa_idx, i64 40, i1 false)
  %i.j = load <2 x ptr>, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store <2 x ptr> %i.j, ptr %i.d, align 16
  invoke void @"_ZN97_$LT$pest..iterators..pairs..Pairs$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5dd2ff5d2b077a7eE"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr98drop_in_place$LT$pest..iterators..pairs..Pairs$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h35e9182a7d43856fE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d) #58
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.e, align 8, !noundef !6
  %.not22 = icmp eq ptr %i.l, null
  br i1 %.not22, label %bb.i, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4846)
  %i.m = load ptr, ptr %i.d, align 16, !alias.scope !4847, !nonnull !6, !noundef !6 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !4847, !noundef !6
  %i.o = add i64 %i.n, -1                         ; 2 uses
  store i64 %i.o, ptr %i.m, align 8, !noalias !4847
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.g, label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i"

bb.g:                                             ; preds = %bb.f
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hbb0a19576e836c63E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.d)
  br label %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i"

"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i": ; preds = %bb.g, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4849)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !4850, !nonnull !6, !noundef !6 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noalias !4850, !noundef !6
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.r, align 8, !noalias !4850
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.h, label %"_ZN4core3ptr98drop_in_place$LT$pest..iterators..pairs..Pairs$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h35e9182a7d43856fE.exit"

bb.h:                                             ; preds = %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h1ff8d69044974696E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.q)
  br label %"_ZN4core3ptr98drop_in_place$LT$pest..iterators..pairs..Pairs$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h35e9182a7d43856fE.exit"

bb.i:                                             ; preds = %bb.e
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @274, i64 noundef 26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @275) #57
          to label %bb.j unwind label %bb.d

bb.j:                                             ; preds = %bb.i
  unreachable

"_ZN4core3ptr98drop_in_place$LT$pest..iterators..pairs..Pairs$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h35e9182a7d43856fE.exit": ; preds = %bb.h, %"_ZN4core3ptr161drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$pest..iterators..queueable_token..QueueableToken$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$$GT$$GT$17h04898f9ed69cffcaE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @_ZN11liquid_core6parser6parser19parse_variable_pair17h1516911f094d03b2E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b)
  br label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr98drop_in_place$LT$pest..iterators..pairs..Pairs$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h35e9182a7d43856fE.exit", %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_ZN11liquid_core6parser6parser15error_from_pair17h610605060f03e103E(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [120 x i8], align 8               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 3 uses
  %.val3 = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val3, i64 32
  %i.h = load i64, ptr %i.g, align 8, !noundef !6 ; 3 uses
  %i.i = icmp ult i64 %i.f, %i.h
end_hunk_2
