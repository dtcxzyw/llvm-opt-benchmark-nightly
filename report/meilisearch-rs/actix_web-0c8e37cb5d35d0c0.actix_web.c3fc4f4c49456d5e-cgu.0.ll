Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_web-0c8e37cb5d35d0c0.actix_web.c3fc4f4c49456d5e-cgu.0?download=true
inline.NumInlined: 5794
inline.NumDeleted: 2637
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 48
begin_hunk_0_@"_ZN92_$LT$actix_http..error..Error$u20$as$u20$actix_web..error..response_error..ResponseError$GT$14error_response17h1755ddf11da61db6E":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10140
  %i.ab = load ptr, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8, !alias.scope !10138, !noalias !10139, !align !36, !noundef !25
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.sroa.7.0..sroa_idx, i64 40, i1 false), !noalias !10149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10137
  store i64 %.sroa.0.0.i.i, ptr %0, align 8, !alias.scope !10136, !noalias !10149
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.i.i, ptr %.sroa.4.0..sroa_idx.i5, align 8, !alias.scope !10136, !noalias !10149
  %.sroa.5.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i6, align 8, !alias.scope !10136, !noalias !10149
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false), !noalias !10149
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ab, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !10136, !noalias !10149
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.ac, align 8, !alias.scope !10136, !noalias !10149
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN92_$LT$actix_web..http..header..range..ByteRangeSpec$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h58329ad440d651e9E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.a = phi i64 [ 0, %bb.a ], [ %i.n, %bb.d ]    ; 5 uses
  %i.b = sub nuw i64 %2, %i.a                     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 2 uses
  %i.d = icmp ult i64 %i.b, 16
  br i1 %i.d, label %.preheader.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %2, %i.a
  br i1 %.not.i.i.i, label %.loopexit220, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.c
  %.sroa.01.05.i.i.i = phi i64 [ %i.h, %bb.c ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.01.05.i.i.i
  %i.f = load i8, ptr %i.e, align 1, !alias.scope !10170, !noalias !10171, !noundef !25
  %i.g = icmp eq i8 %i.f, 45
  br i1 %i.g, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.h = add nuw nsw i64 %.sroa.01.05.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.h, %i.b
  br i1 %exitcond.not.i.i.i, label %.loopexit220, label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i: ; preds = %bb.b
  %i.i = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 45, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef %i.b), !noalias !10171 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = extractvalue { i64, i64 } %i.i, 1
  %i.l = trunc nuw i64 %i.j to i1
  br i1 %i.l, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %.loopexit220

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i: ; preds = %.lr.ph.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %.sroa.4.0.i27.i.i = phi i64 [ %i.k, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.m = add i64 %i.a, 1
  %i.n = add i64 %i.m, %.sroa.4.0.i27.i.i         ; 4 uses
  %.not21.i.i = icmp ugt i64 %i.n, %2
  %i.o = add i64 %.sroa.4.0.i27.i.i, %i.a         ; 14 uses
  %or.cond.i.not.i = icmp ult i64 %i.o, %2
  br i1 %or.cond.i.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  br i1 %.not21.i.i, label %.loopexit220, label %bb.b

bb.e:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %lhsc.i = load i8, ptr %i.p, align 1, !alias.scope !10172, !noalias !10173
  %i.q = icmp eq i8 %lhsc.i, 45
  br i1 %i.q, label %"_ZN4core3ptr50drop_in_place$LT$actix_http..error..ParseError$GT$17h2ea26676282a0d07E.exit", label %bb.d

"_ZN4core3ptr50drop_in_place$LT$actix_http..error..ParseError$GT$17h2ea26676282a0d07E.exit": ; preds = %bb.e
  %i.r = sub nuw i64 %2, %i.n                     ; 13 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.n ; 11 uses
  %.not51 = icmp eq i64 %i.o, 0
  br i1 %.not51, label %bb.h, label %bb.g

.loopexit220:                                     ; preds = %bb.d, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i, %.preheader.i.i.i, %bb.c
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 5 to ptr), ptr %.sroa.239.0..sroa_idx, align 8
  store i64 3, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.loopexit211, %.loopexit212, %.loopexit, %.loopexit208, %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit109.thread", %bb.am, %.loopexit220
  ret void

bb.g:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$actix_http..error..ParseError$GT$17h2ea26676282a0d07E.exit"
  %.not53 = icmp eq i64 %i.r, 0
  %cond = icmp eq i64 %i.o, 1                     ; 2 uses
  %i.t = load i8, ptr %1, align 1, !noalias !25   ; 4 uses
  br i1 %.not53, label %bb.ae, label %bb.p

bb.h:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$actix_http..error..ParseError$GT$17h2ea26676282a0d07E.exit"
  switch i64 %i.r, label %bb.j [
    i64 0, label %.loopexit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.s, align 1, !alias.scope !10174, !noalias !10175, !noundef !25
  switch i8 %i.u, label %.lr.ph.i.preheader [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

.lr.ph.i.preheader:                               ; preds = %bb.k, %bb.m, %bb.i
  %.sroa.01.162.i.ph = phi ptr [ %i.v, %bb.k ], [ %i.s, %bb.m ], [ %i.s, %bb.i ]
  %.sroa.16.161.i.ph = phi i64 [ %i.w, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.i ]
  br label %.lr.ph.i

bb.j:                                             ; preds = %bb.h
  %.pr.i = load i8, ptr %i.s, align 1, !alias.scope !10174, !noalias !10175
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %i.w = add i64 %i.r, -1                         ; 2 uses
  %i.x = icmp ult i64 %i.r, 18
  br i1 %i.x, label %.lr.ph.i.preheader, label %.preheader53.i

.preheader53.i:                                   ; preds = %bb.m, %bb.k
  %.sroa.16.0.ph.i = phi i64 [ %i.r, %bb.m ], [ %i.w, %bb.k ] ; 2 uses
  %.sroa.01.0.ph.i = phi ptr [ %i.s, %bb.m ], [ %i.v, %bb.k ]
  %.not.i330 = icmp eq i64 %.sroa.16.0.ph.i, 0
  br i1 %.not.i330, label %.loopexit208, label %.lr.ph334

bb.l:                                             ; preds = %bb.n
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i333, i64 1
  %i.z = add i64 %.sroa.16.0.i332, -1             ; 2 uses
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %.loopexit208, label %.lr.ph334

bb.m:                                             ; preds = %bb.j
  %i.aa = icmp ult i64 %i.r, 17
  br i1 %i.aa, label %.lr.ph.i.preheader, label %.preheader53.i

.lr.ph334:                                        ; preds = %.preheader53.i, %bb.l
  %.sroa.01.0.i333 = phi ptr [ %i.y, %bb.l ], [ %.sroa.01.0.ph.i, %.preheader53.i ] ; 2 uses
  %.sroa.16.0.i332 = phi i64 [ %i.z, %bb.l ], [ %.sroa.16.0.ph.i, %.preheader53.i ]
  %.sroa.017.0.i331 = phi i64 [ %i.aj, %bb.l ], [ 0, %.preheader53.i ]
  %i.ab = load i8, ptr %.sroa.01.0.i333, align 1, !alias.scope !10174, !noalias !10175, !noundef !25
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, -48                  ; 2 uses
  %i.ae = icmp ult i32 %i.ad, 10
  br i1 %i.ae, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.lr.ph334
  %i.af = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.017.0.i331, i64 10) ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 0       ; 2 uses
  %i.ah = extractvalue { i64, i1 } %i.af, 1
  %i.ai = zext nneg i32 %i.ad to i64
  %i.aj = add i64 %i.ag, %i.ai                    ; 3 uses
  %.not50.i = icmp ult i64 %i.aj, %i.ag
  %or.cond200 = select i1 %i.ah, i1 true, i1 %.not50.i
  br i1 %or.cond200, label %.loopexit, label %bb.l

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.o
  %.sroa.01.162.i = phi ptr [ %i.aq, %bb.o ], [ %.sroa.01.162.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.16.161.i = phi i64 [ %i.ap, %bb.o ], [ %.sroa.16.161.i.ph, %.lr.ph.i.preheader ]
  %.sroa.017.160.i = phi i64 [ %i.as, %bb.o ], [ 0, %.lr.ph.i.preheader ]
  %i.ak = load i8, ptr %.sroa.01.162.i, align 1, !alias.scope !10174, !noalias !10175, !noundef !25
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %.lr.ph.i
  %i.ao = mul i64 %.sroa.017.160.i, 10
  %i.ap = add nsw i64 %.sroa.16.161.i, -1         ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.01.162.i, i64 1
  %i.ar = zext nneg i32 %i.am to i64
  %i.as = add i64 %i.ao, %i.ar                    ; 2 uses
  %.not51.i = icmp eq i64 %i.ap, 0
  br i1 %.not51.i, label %.loopexit208, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.n, %.lr.ph334, %.lr.ph.i, %bb.i, %bb.i, %bb.h
  %.sroa.4173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %.sroa.4173.0..sroa_idx, align 8
  store i64 3, ptr %0, align 8
  br label %bb.f

.loopexit208:                                     ; preds = %bb.l, %bb.o, %.preheader53.i
  %.sroa.10148.0 = phi i64 [ %i.as, %bb.o ], [ 0, %.preheader53.i ], [ %i.aj, %bb.l ]
  store i64 2, ptr %0, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10148.0, ptr %.sroa.441.0..sroa_idx, align 8
  br label %bb.f

bb.p:                                             ; preds = %bb.g
  br i1 %cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  switch i8 %i.t, label %.lr.ph.i66.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit85"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit85"
  ]

.lr.ph.i66.preheader:                             ; preds = %bb.s, %bb.t, %bb.q
  %.sroa.01.162.i67.ph = phi ptr [ %i.at, %bb.s ], [ %1, %bb.t ], [ %1, %bb.q ]
  %.sroa.16.161.i68.ph = phi i64 [ %i.au, %bb.s ], [ %i.o, %bb.t ], [ 1, %bb.q ]
  br label %.lr.ph.i66

bb.r:                                             ; preds = %bb.p
  %cond.i74 = icmp eq i8 %i.t, 43
  br i1 %cond.i74, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.au = add i64 %i.o, -1                        ; 2 uses
  %i.av = icmp ult i64 %i.o, 18
  br i1 %i.av, label %.lr.ph.i66.preheader, label %bb.u

.preheader53.i75:                                 ; preds = %bb.v
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i80310, i64 1
  %4 = add i64 %.sroa.16.0.i79309, -1             ; 2 uses
  %.not.i81.not307 = icmp eq i64 %4, 0
  br i1 %.not.i81.not307, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit85", label %.lr.ph

bb.t:                                             ; preds = %bb.r
  %5 = icmp ult i64 %i.o, 17
  br i1 %5, label %.lr.ph.i66.preheader, label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.sroa.01.0.i80310.ph = phi ptr [ %i.at, %bb.s ], [ %1, %bb.t ]
  %.sroa.16.0.i79309.ph = phi i64 [ %i.au, %bb.s ], [ %i.o, %bb.t ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.u, %.preheader53.i75
  %.sroa.01.0.i80310 = phi ptr [ %3, %.preheader53.i75 ], [ %.sroa.01.0.i80310.ph, %bb.u ] ; 2 uses
  %.sroa.16.0.i79309 = phi i64 [ %4, %.preheader53.i75 ], [ %.sroa.16.0.i79309.ph, %bb.u ]
  %.sroa.017.0.i78308 = phi i64 [ %i.be, %.preheader53.i75 ], [ 0, %bb.u ]
  %i.aw = load i8, ptr %.sroa.01.0.i80310, align 1, !alias.scope !10176, !noalias !10177, !noundef !25
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add nsw i32 %i.ax, -48                  ; 2 uses
  %i.az = icmp ult i32 %i.ay, 10
  br i1 %i.az, label %bb.v, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit85"

bb.v:                                             ; preds = %.lr.ph
  %i.ba = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.017.0.i78308, i64 10) ; 2 uses
  %i.bb = extractvalue { i64, i1 } %i.ba, 0       ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.ba, 1
  %i.bd = zext nneg i32 %i.ay to i64
  %i.be = add i64 %i.bb, %i.bd                    ; 3 uses
  %.not50.i82 = icmp ult i64 %i.be, %i.bb
  %or.cond202 = select i1 %i.bc, i1 true, i1 %.not50.i82
  br i1 %or.cond202, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit85", label %.preheader53.i75

.lr.ph.i66:                                       ; preds = %.lr.ph.i66.preheader, %bb.w
  %.sroa.01.162.i67 = phi ptr [ %i.bl, %bb.w ], [ %.sroa.01.162.i67.ph, %.lr.ph.i66.preheader ] ; 2 uses
  %.sroa.16.161.i68 = phi i64 [ %i.bk, %bb.w ], [ %.sroa.16.161.i68.ph, %.lr.ph.i66.preheader ]
  %.sroa.017.160.i69 = phi i64 [ %i.bn, %bb.w ], [ 0, %.lr.ph.i66.preheader ]
  %i.bf = load i8, ptr %.sroa.01.162.i67, align 1, !alias.scope !10176, !noalias !10177, !noundef !25
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, -48                  ; 2 uses
  %i.bi = icmp ugt i32 %i.bh, 9                   ; 3 uses
  br i1 %i.bi, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit85", label %bb.w

bb.w:                                             ; preds = %.lr.ph.i66
  %i.bj = mul i64 %.sroa.017.160.i69, 10
  %i.bk = add nsw i64 %.sroa.16.161.i68, -1       ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.01.162.i67, i64 1
  %i.bm = zext nneg i32 %i.bh to i64
  %i.bn = add i64 %i.bj, %i.bm                    ; 2 uses
  %.not51.i70 = icmp eq i64 %i.bk, 0
  br i1 %.not51.i70, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit85", label %.lr.ph.i66

"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit85": ; preds = %.preheader53.i75, %.lr.ph, %bb.v, %.lr.ph.i66, %bb.w, %bb.q, %bb.q
  %.sroa.8168.0 = phi i64 [ undef, %bb.q ], [ undef, %bb.q ], [ %i.bn, %bb.w ], [ undef, %.lr.ph.i66 ], [ undef, %.lr.ph ], [ undef, %bb.v ], [ %i.be, %.preheader53.i75 ] ; 2 uses
  %.sink.i62 = phi i1 [ true, %bb.q ], [ true, %bb.q ], [ %i.bi, %.lr.ph.i66 ], [ %i.bi, %bb.w ], [ true, %.lr.ph ], [ true, %bb.v ], [ false, %.preheader53.i75 ]
  %cond288 = icmp eq i64 %i.r, 1
  %i.bo = load i8, ptr %i.s, align 1, !alias.scope !10178, !noalias !10179 ; 2 uses
  br i1 %cond288, label %bb.x, label %bb.y

bb.x:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit85"
  switch i8 %i.bo, label %.lr.ph.i90.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit109.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit109.thread"
  ]

.lr.ph.i90.preheader:                             ; preds = %bb.z, %bb.aa, %bb.x
  %.sroa.01.162.i91.ph = phi ptr [ %i.bp, %bb.z ], [ %i.s, %bb.aa ], [ %i.s, %bb.x ]
  %.sroa.16.161.i92.ph = phi i64 [ %i.bq, %bb.z ], [ %i.r, %bb.aa ], [ 1, %bb.x ]
  br label %.lr.ph.i90

bb.y:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit85"
  %cond.i98 = icmp eq i8 %i.bo, 43
  br i1 %cond.i98, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %i.bq = add i64 %i.r, -1                        ; 2 uses
  %i.br = icmp ult i64 %i.r, 18
  br i1 %i.br, label %.lr.ph.i90.preheader, label %bb.ab

.preheader53.i99:                                 ; preds = %bb.ac
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i104321, i64 1
  %7 = add i64 %.sroa.16.0.i103320, -1            ; 2 uses
  %.not.i105318 = icmp eq i64 %7, 0
  br i1 %.not.i105318, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit109", label %.lr.ph322

bb.aa:                                            ; preds = %bb.y
  %8 = icmp ult i64 %i.r, 17
  br i1 %8, label %.lr.ph.i90.preheader, label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.sroa.01.0.i104321.ph = phi ptr [ %i.bp, %bb.z ], [ %i.s, %bb.aa ]
  %.sroa.16.0.i103320.ph = phi i64 [ %i.bq, %bb.z ], [ %i.r, %bb.aa ]
  br label %.lr.ph322

.lr.ph322:                                        ; preds = %bb.ab, %.preheader53.i99
  %.sroa.01.0.i104321 = phi ptr [ %6, %.preheader53.i99 ], [ %.sroa.01.0.i104321.ph, %bb.ab ] ; 2 uses
  %.sroa.16.0.i103320 = phi i64 [ %7, %.preheader53.i99 ], [ %.sroa.16.0.i103320.ph, %bb.ab ]
  %.sroa.017.0.i102319 = phi i64 [ %i.ca, %.preheader53.i99 ], [ 0, %bb.ab ]
  %i.bs = load i8, ptr %.sroa.01.0.i104321, align 1, !alias.scope !10178, !noalias !10179, !noundef !25
  %i.bt = zext i8 %i.bs to i32
  %i.bu = add nsw i32 %i.bt, -48                  ; 2 uses
  %i.bv = icmp ult i32 %i.bu, 10
  br i1 %i.bv, label %bb.ac, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit109.thread"

bb.ac:                                            ; preds = %.lr.ph322
  %i.bw = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.017.0.i102319, i64 10) ; 2 uses
  %i.bx = extractvalue { i64, i1 } %i.bw, 0       ; 2 uses
  %i.by = extractvalue { i64, i1 } %i.bw, 1
  %i.bz = zext nneg i32 %i.bu to i64
  %i.ca = add i64 %i.bx, %i.bz                    ; 3 uses
  %.not50.i106 = icmp ult i64 %i.ca, %i.bx
  %or.cond204 = select i1 %i.by, i1 true, i1 %.not50.i106
  br i1 %or.cond204, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit109.thread", label %.preheader53.i99

.lr.ph.i90:                                       ; preds = %.lr.ph.i90.preheader, %bb.ad
  %.sroa.01.162.i91 = phi ptr [ %i.ch, %bb.ad ], [ %.sroa.01.162.i91.ph, %.lr.ph.i90.preheader ] ; 2 uses
  %.sroa.16.161.i92 = phi i64 [ %i.cg, %bb.ad ], [ %.sroa.16.161.i92.ph, %.lr.ph.i90.preheader ]
  %.sroa.017.160.i93 = phi i64 [ %i.cj, %bb.ad ], [ 0, %.lr.ph.i90.preheader ]
  %i.cb = load i8, ptr %.sroa.01.162.i91, align 1, !alias.scope !10178, !noalias !10179, !noundef !25
  %i.cc = zext i8 %i.cb to i32
  %i.cd = add nsw i32 %i.cc, -48                  ; 2 uses
  %i.ce = icmp ult i32 %i.cd, 10
  br i1 %i.ce, label %bb.ad, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit109.thread"

bb.ad:                                            ; preds = %.lr.ph.i90
  %i.cf = mul i64 %.sroa.017.160.i93, 10
  %i.cg = add nsw i64 %.sroa.16.161.i92, -1       ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.01.162.i91, i64 1
  %i.ci = zext nneg i32 %i.cd to i64
  %i.cj = add i64 %i.cf, %i.ci                    ; 2 uses
  %.not51.i94 = icmp eq i64 %i.cg, 0
  br i1 %.not51.i94, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit109", label %.lr.ph.i90

"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit109": ; preds = %.preheader53.i99, %bb.ad
  %.sroa.8171.0 = phi i64 [ %i.cj, %bb.ad ], [ %i.ca, %.preheader53.i99 ] ; 2 uses
  %.not55 = icmp ugt i64 %.sroa.8168.0, %.sroa.8171.0
  %or.cond207 = select i1 %.sink.i62, i1 true, i1 %.not55
  br i1 %or.cond207, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit109.thread", label %bb.am

bb.ae:                                            ; preds = %bb.g
  br i1 %cond, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  switch i8 %i.t, label %.lr.ph.i114.preheader [
    i8 43, label %.loopexit211
    i8 45, label %.loopexit211
  ]

.lr.ph.i114.preheader:                            ; preds = %bb.ah, %bb.ai, %bb.af
  %.sroa.01.162.i115.ph = phi ptr [ %i.ck, %bb.ah ], [ %1, %bb.ai ], [ %1, %bb.af ]
  %.sroa.16.161.i116.ph = phi i64 [ %i.cl, %bb.ah ], [ %i.o, %bb.ai ], [ 1, %bb.af ]
  br label %.lr.ph.i114

bb.ag:                                            ; preds = %bb.ae
  %cond.i122 = icmp eq i8 %i.t, 43
  br i1 %cond.i122, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cl = add i64 %i.o, -1                        ; 2 uses
  %i.cm = icmp ult i64 %i.o, 18
  br i1 %i.cm, label %.lr.ph.i114.preheader, label %bb.aj

.preheader53.i123:                                ; preds = %bb.ak
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i128327, i64 1
  %10 = add i64 %.sroa.16.0.i127326, -1           ; 2 uses
  %.not.i129324 = icmp eq i64 %10, 0
  br i1 %.not.i129324, label %.loopexit212, label %.lr.ph328

bb.ai:                                            ; preds = %bb.ag
  %11 = icmp ult i64 %i.o, 17
  br i1 %11, label %.lr.ph.i114.preheader, label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.sroa.01.0.i128327.ph = phi ptr [ %i.ck, %bb.ah ], [ %1, %bb.ai ]
  %.sroa.16.0.i127326.ph = phi i64 [ %i.cl, %bb.ah ], [ %i.o, %bb.ai ]
  br label %.lr.ph328

.lr.ph328:                                        ; preds = %bb.aj, %.preheader53.i123
  %.sroa.01.0.i128327 = phi ptr [ %9, %.preheader53.i123 ], [ %.sroa.01.0.i128327.ph, %bb.aj ] ; 2 uses
  %.sroa.16.0.i127326 = phi i64 [ %10, %.preheader53.i123 ], [ %.sroa.16.0.i127326.ph, %bb.aj ]
  %.sroa.017.0.i126325 = phi i64 [ %i.cv, %.preheader53.i123 ], [ 0, %bb.aj ]
  %i.cn = load i8, ptr %.sroa.01.0.i128327, align 1, !alias.scope !10180, !noalias !10181, !noundef !25
  %i.co = zext i8 %i.cn to i32
  %i.cp = add nsw i32 %i.co, -48                  ; 2 uses
  %i.cq = icmp ult i32 %i.cp, 10
  br i1 %i.cq, label %bb.ak, label %.loopexit211

bb.ak:                                            ; preds = %.lr.ph328
  %i.cr = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.017.0.i126325, i64 10) ; 2 uses
  %i.cs = extractvalue { i64, i1 } %i.cr, 0       ; 2 uses
  %i.ct = extractvalue { i64, i1 } %i.cr, 1
  %i.cu = zext nneg i32 %i.cp to i64
  %i.cv = add i64 %i.cs, %i.cu                    ; 3 uses
  %.not50.i130 = icmp ult i64 %i.cv, %i.cs
  %or.cond206 = select i1 %i.ct, i1 true, i1 %.not50.i130
  br i1 %or.cond206, label %.loopexit211, label %.preheader53.i123

.lr.ph.i114:                                      ; preds = %.lr.ph.i114.preheader, %bb.al
  %.sroa.01.162.i115 = phi ptr [ %i.dc, %bb.al ], [ %.sroa.01.162.i115.ph, %.lr.ph.i114.preheader ] ; 2 uses
  %.sroa.16.161.i116 = phi i64 [ %i.db, %bb.al ], [ %.sroa.16.161.i116.ph, %.lr.ph.i114.preheader ]
  %.sroa.017.160.i117 = phi i64 [ %i.de, %bb.al ], [ 0, %.lr.ph.i114.preheader ]
  %i.cw = load i8, ptr %.sroa.01.162.i115, align 1, !alias.scope !10180, !noalias !10181, !noundef !25
  %i.cx = zext i8 %i.cw to i32
  %i.cy = add nsw i32 %i.cx, -48                  ; 2 uses
  %i.cz = icmp ult i32 %i.cy, 10
  br i1 %i.cz, label %bb.al, label %.loopexit211

bb.al:                                            ; preds = %.lr.ph.i114
  %i.da = mul i64 %.sroa.017.160.i117, 10
  %i.db = add nsw i64 %.sroa.16.161.i116, -1      ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.01.162.i115, i64 1
  %i.dd = zext nneg i32 %i.cy to i64
  %i.de = add i64 %i.da, %i.dd                    ; 2 uses
  %.not51.i118 = icmp eq i64 %i.db, 0
  br i1 %.not51.i118, label %.loopexit212, label %.lr.ph.i114

.loopexit211:                                     ; preds = %bb.ak, %.lr.ph328, %.lr.ph.i114, %bb.af, %bb.af
  %.sroa.4176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %.sroa.4176.0..sroa_idx, align 8
  store i64 3, ptr %0, align 8
  br label %bb.f

.loopexit212:                                     ; preds = %.preheader53.i123, %bb.al
  %.sroa.10162.0 = phi i64 [ %i.de, %bb.al ], [ %i.cv, %.preheader53.i123 ]
  store i64 1, ptr %0, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10162.0, ptr %.sroa.444.0..sroa_idx, align 8
  br label %bb.f

"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit109.thread": ; preds = %.lr.ph322, %bb.ac, %.lr.ph.i90, %bb.x, %bb.x, %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit109"
  %.sroa.318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %.sroa.318.0..sroa_idx, align 8
  store i64 3, ptr %0, align 8
  br label %bb.f

bb.am:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit109"
  store i64 0, ptr %0, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8168.0, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8171.0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN92_$LT$actix_web..types..payload..StringExtractFut$u20$as$u20$core..future..future..Future$GT$4poll17h8803dbf505bb6c33E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(160) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !25, !align !36, !noundef !25 ; 2 uses
  call void @"_ZN91_$LT$actix_web..types..payload..HttpMessageBody$u20$as$u20$core..future..future..Future$GT$4poll17h44ee784a1735eb53E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(152) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.h = load i8, ptr %i.e, align 8, !range !82, !noundef !25 ; 3 uses
  %i.i = icmp eq i8 %i.h, 12
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.not.i = icmp eq i8 %i.h, 11
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.43.0..sroa_idx, i64 39, i1 false)
  store i8 %i.h, ptr %i.c, align 8, !noalias !10215
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !10216
  %i.j = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !10216 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4a8d6f95e0952909E.exit.i", !prof !32

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #52
          to label %.noexc.i unwind label %bb.f, !noalias !10215

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr52drop_in_place$LT$actix_http..error..PayloadError$GT$17h3a18223edb6e234dE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) #53
          to label %common.resume.i unwind label %bb.g, !noalias !10215

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !10215
  unreachable

common.resume.i:                                  ; preds = %.body.i.i, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.l, %bb.f ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4a8d6f95e0952909E.exit.i": ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !10215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10215
  br label %"_ZN92_$LT$actix_web..types..payload..StringExtractFut$u20$as$u20$core..future..future..Future$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17hf862985b18dbaea7E.exit"

bb.h:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10217)
  %i.o = load ptr, ptr @_ZN11encoding_rs5UTF_817h0944d9f3ed025ee8E, align 8, !noalias !10218, !nonnull !25, !align !36, !noundef !25
  %i.p = icmp eq ptr %i.g, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  br i1 %i.p, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10218
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !10217, !noalias !10219, !noundef !25 ; 3 uses
  %i.t = load i64, ptr %i.r, align 8, !alias.scope !10217, !noalias !10219, !noundef !25 ; 3 uses
  invoke void @_ZN11encoding_rs8Encoding51decode_without_bom_handling_and_without_replacement17h3102ad2e0b53c52bE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.s, i64 noundef %i.t)
          to label %bb.l unwind label %bb.k, !noalias !10220

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10218
  %i.u = load ptr, ptr %i.q, align 8, !alias.scope !10217, !noalias !10219, !noundef !25 ; 3 uses
  %i.v = load i64, ptr %i.r, align 8, !alias.scope !10217, !noalias !10219, !noundef !25 ; 3 uses
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.u, i64 noundef %i.v)
          to label %bb.v unwind label %bb.k, !noalias !10218

bb.k:                                             ; preds = %.invoke.i.i, %bb.j, %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.y, %bb.p, %bb.k
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ap, %bb.y ], [ %i.w, %bb.k ], [ %i.ag, %bb.p ]
  call void @llvm.experimental.noalias.scope.decl(metadata !10221)
  call void @llvm.experimental.noalias.scope.decl(metadata !10222)
  %i.x = load ptr, ptr %i.d, align 8, !alias.scope !10223, !noalias !10219, !nonnull !25, !align !36, !noundef !25
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !noalias !10224, !nonnull !25, !noundef !25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !10223, !noalias !10219, !noundef !25
  %i.ac = load i64, ptr %i.r, align 8, !alias.scope !10223, !noalias !10219, !noundef !25
  invoke void %i.z(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef %i.ab, i64 noundef %i.ac)
          to label %common.resume.i unwind label %bb.ad, !noalias !10225, !inline_history !48

bb.l:                                             ; preds = %bb.i
  %i.ad = load i64, ptr %i.a, align 8, !range !37, !noalias !10218, !noundef !25 ; 3 uses
  %.not.i.i = icmp eq i64 %i.ad, -9223372036854775807
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.325.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.325.0.copyload.i.i = load ptr, ptr %.sroa.325.0..sroa_idx.i.i, align 8, !noalias !10218 ; 3 uses
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.428.0.copyload.i.i = load i64, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !10218 ; 8 uses
  %.not57.i.i = icmp eq i64 %i.ad, -9223372036854775808
  br i1 %.not57.i.i, label %bb.r, label %bb.u

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10218
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !10226
  %i.ae = call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !10226 ; 6 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.o, label %bb.q, !prof !32

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 136) #52
          to label %.noexc.i.i unwind label %bb.p, !noalias !10220

.noexc.i.i:                                       ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.q:                                             ; preds = %bb.n
  store i16 0, ptr %i.ae, align 8, !noalias !10220
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i16 400, ptr %.sroa.412.0..sroa_idx.i, align 2, !noalias !10220
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  store ptr @731, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !10220
  %.sroa.615.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  store i64 19, ptr %.sroa.615.0..sroa_idx.i, align 8, !noalias !10220
  br label %_ZN9actix_web5types7payload15bytes_to_string17hf7f5251032479160E.exit.i

bb.r:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.325.0.copyload.i.i) ]
  %i.ah = icmp slt i64 %.sroa.428.0.copyload.i.i, 0
  br i1 %i.ah, label %.invoke.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !26

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.r
  %i.ai = icmp eq i64 %.sroa.428.0.copyload.i.i, 0
  br i1 %i.ai, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !10227
  %i.aj = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.428.0.copyload.i.i, i64 noundef range(i64 1, 9) 1) #46, !noalias !10227 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.invoke.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.aj, %bb.s ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %.sroa.325.0.copyload.i.i, i64 %.sroa.428.0.copyload.i.i, i1 false), !noalias !10228
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.sroa.536.0.i.i = phi ptr [ %.sroa.10.0.i.i.i.i, %bb.t ], [ %.sroa.325.0.copyload.i.i, %bb.m ]
  %.sroa.034.0.i.i = phi i64 [ %.sroa.428.0.copyload.i.i, %bb.t ], [ %i.ad, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10218
  br label %_ZN9actix_web5types7payload15bytes_to_string17hf7f5251032479160E.exit.i

bb.v:                                             ; preds = %bb.j
  %i.al = load i64, ptr %i.b, align 8, !range !38, !noalias !10218, !noundef !25
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !10229
end_hunk_0
begin_hunk_1_@_ZN9actix_web5types7payload15HttpMessageBody3new17h4e6a5fb25413fd9fE:bb.a
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !13668
  unreachable

"_ZN6flate23crc18CrcWriter$LT$W$GT$3new17hd8093c5b85bcf8ceE.exit.i.i.i": ; preds = %bb.ao
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fa, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.s, i64 32, i1 false), !alias.scope !13670, !noalias !13671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !13672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13665
  invoke void @_ZN6flate23mem10Decompress3new17h291e4726c574495cE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, i1 noundef zeroext false)
          to label %bb.ar unwind label %bb.ba, !noalias !13665

bb.ar:                                            ; preds = %"_ZN6flate23crc18CrcWriter$LT$W$GT$3new17hd8093c5b85bcf8ceE.exit.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !13673)
  call void @llvm.experimental.noalias.scope.decl(metadata !13674)
  call void @llvm.experimental.noalias.scope.decl(metadata !13675)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13676
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.e, i64 56, i1 false), !noalias !13677
  %.sroa.0.0.copyload.i.i13.i.i = load ptr, ptr %i.d, align 8, !alias.scope !13675, !noalias !13678 ; 3 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !13679
  %i.fb = call noundef dereferenceable_or_null(32768) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32768, i64 noundef range(i64 1, 9) 1) #46, !noalias !13679 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 32768, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @473) #52
          to label %.noexc.i.i19.i.i unwind label %bb.au, !noalias !13676

.noexc.i.i19.i.i:                                 ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.av
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !13676
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i13.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload.i.i13.i.i, i64 noundef 43296, i64 noundef 8) #46, !noalias !13676
  %i.ff = load i32, ptr %i.a, align 8, !range !67, !alias.scope !13680, !noalias !13676, !noundef !25
  %i.fg = icmp eq i32 %i.ff, 2
  br i1 %i.fg, label %.body.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbef4de1915e8c443E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fh)
          to label %.body.i.i unwind label %bb.at, !noalias !13676

bb.aw:                                            ; preds = %bb.ar
  %.sroa.5.0..sroa_idx5.i.i14.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fi, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.e, i64 56, i1 false), !alias.scope !13681, !noalias !13682
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr %.sroa.0.0.copyload.i.i13.i.i, ptr %i.fj, align 8, !alias.scope !13673, !noalias !13683
  %.sroa.5.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx6.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5.i.i14.i.i, i64 16, i1 false), !alias.scope !13684, !noalias !13685
  store i64 32768, ptr %i.f, align 8, !alias.scope !13673, !noalias !13683
  %.sroa.4.0..sroa_idx.i.i15.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.fb, ptr %.sroa.4.0..sroa_idx.i.i15.i.i, align 8, !alias.scope !13673, !noalias !13683
  %.sroa.5.0..sroa_idx.i.i16.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i16.i.i, align 8, !alias.scope !13673, !noalias !13683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13665
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !13686
  %i.fk = call noundef dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, 9) 1) #46, !noalias !13686 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @471) #52
          to label %.noexc.i.i.i unwind label %bb.ay, !noalias !13665

.noexc.i.i.i:                                     ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$flate2..zio..Writer$LT$flate2..crc..CrcWriter$LT$actix_http..encoding..Writer$GT$$C$flate2..mem..Decompress$GT$$GT$17haabbdef6c867d9e8E"(ptr noalias noundef align 8 dereferenceable(104) %i.f) #53
          to label %.body.i.i unwind label %bb.az, !noalias !13665

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !13665
  unreachable

bb.ba:                                            ; preds = %"_ZN6flate23crc18CrcWriter$LT$W$GT$3new17hd8093c5b85bcf8ceE.exit.i.i.i"
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbef4de1915e8c443E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fa)
          to label %.body.i.i unwind label %bb.az, !noalias !13665

bb.bb:                                            ; preds = %bb.aw
  %.sroa.01.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 210
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.01.sroa.6.0..sroa_idx.i.i.i, i8 0, i64 10, i1 false), !alias.scope !13664, !noalias !13687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.t, ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 104, i1 false), !noalias !13687
  %i.fp = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  store i64 8, ptr %i.fp, align 8, !alias.scope !13664, !noalias !13687
  %.sroa.4.0..sroa_idx.i17.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  store ptr %i.fk, ptr %.sroa.4.0..sroa_idx.i17.i.i, align 8, !alias.scope !13664, !noalias !13687
  %.sroa.5.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  store i64 0, ptr %.sroa.5.0..sroa_idx.i18.i.i, align 8, !alias.scope !13664, !noalias !13687
  %i.fq = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  store i64 -9223372036854775808, ptr %i.fq, align 8, !alias.scope !13664, !noalias !13687
  %.sroa.01.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 152
  store i64 -9223372036854775808, ptr %.sroa.01.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !13664, !noalias !13687
  %.sroa.01.sroa.0.sroa.0.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  store i64 -9223372036854775808, ptr %.sroa.01.sroa.0.sroa.0.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !13664, !noalias !13687
  %.sroa.01.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  store i32 0, ptr %.sroa.01.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !13664, !noalias !13687
  %.sroa.01.sroa.0.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 204
  store i8 0, ptr %.sroa.01.sroa.0.sroa.5.0..sroa_idx.i.i.i, align 4, !alias.scope !13664, !noalias !13687
  %.sroa.01.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 208
  store i8 0, ptr %.sroa.01.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !13664, !noalias !13687
  %.sroa.01.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 209
  store i8 0, ptr %.sroa.01.sroa.5.0..sroa_idx.i.i.i, align 1, !alias.scope !13664, !noalias !13687
  %.sroa.52.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  store i8 0, ptr %.sroa.52.0..sroa_idx.i.i.i, align 8, !alias.scope !13664, !noalias !13687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !13630
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !13688
  %i.fr = call noundef align 8 dereferenceable_or_null(232) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 232, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !13688 ; 3 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bb.bc, label %bb.bf, !prof !32

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 232) #52
          to label %.noexc22.i.i unwind label %bb.bd, !noalias !13630

.noexc22.i.i:                                     ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %bb.bc
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$flate2..gz..write..GzDecoder$LT$actix_http..encoding..Writer$GT$$GT$17h21073fba3e5aa1f4E"(ptr noalias noundef nonnull align 8 dereferenceable(232) %i.t) #53
          to label %.body.i.i unwind label %bb.be, !noalias !13630

bb.be:                                            ; preds = %bb.bd
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !13630
  unreachable

bb.bf:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.fr, ptr noundef nonnull align 8 dereferenceable(232) %i.t, i64 232, i1 false), !noalias !13630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !13630
  br label %bb.bz

bb.bg:                                            ; preds = %.body.i.i
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !13631
  unreachable

.thread26.i:                                      ; preds = %.lr.ph.i.i, %bb.g, %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !13628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !13629
  br label %bb.bz

bb.bh:                                            ; preds = %.loopexit.i, %bb.e, %_ZN10actix_http6header3map9HeaderMap3get17hf04fc238564acd11E.exit.thread
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr245drop_in_place$LT$actix_http..payload..Payload$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$17h2a24f08e635f7441E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa) #53
          to label %.body unwind label %bb.bi, !noalias !13629

bb.bi:                                            ; preds = %bb.bh
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !13629
  unreachable

bb.bj:                                            ; preds = %.lr.ph.i
  %i.fy = load i8, ptr %i.ab, align 8, !range !64, !alias.scope !13689, !noundef !25
  %i.fz = icmp eq i8 %i.fy, 11
  br i1 %i.fz, label %_ZN10actix_http6header3map9HeaderMap3get17hf04fc238564acd11E.exit.thread.sink.split, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @"_ZN4core3ptr52drop_in_place$LT$actix_http..error..PayloadError$GT$17h3a18223edb6e234dE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ab)
          to label %_ZN10actix_http6header3map9HeaderMap3get17hf04fc238564acd11E.exit.thread.sink.split unwind label %bb.by

bb.bl:                                            ; preds = %bb.d
  %cond = icmp eq i64 %.val28, 1
  %i.ga = load i8, ptr %.val, align 1, !alias.scope !13690, !noalias !13691 ; 2 uses
  br i1 %cond, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  switch i8 %i.ga, label %.lr.ph.i34.preheader [
    i8 43, label %.thread61
    i8 45, label %.thread61
  ]

.lr.ph.i34.preheader:                             ; preds = %bb.bo, %bb.bp, %bb.bm
  %.sroa.01.162.i.ph = phi ptr [ %i.gb, %bb.bo ], [ %.val, %bb.bp ], [ %.val, %bb.bm ]
  %.sroa.16.161.i.ph = phi i64 [ %i.gc, %bb.bo ], [ %.val28, %bb.bp ], [ 1, %bb.bm ]
  br label %.lr.ph.i34

bb.bn:                                            ; preds = %bb.bl
  %cond.i = icmp eq i8 %i.ga, 43
  br i1 %cond.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.gb = getelementptr inbounds nuw i8, ptr %.val, i64 1 ; 2 uses
  %i.gc = add i64 %.val28, -1                     ; 2 uses
  %i.gd = icmp ult i64 %.val28, 18
  br i1 %i.gd, label %.lr.ph.i34.preheader, label %bb.bq

.preheader53.i:                                   ; preds = %bb.br
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i102, i64 1
  %4 = add i64 %.sroa.16.0.i101, -1               ; 2 uses
  %.not.i99 = icmp eq i64 %4, 0
  br i1 %.not.i99, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit", label %.lr.ph

bb.bp:                                            ; preds = %bb.bn
  %5 = icmp ult i64 %.val28, 17
  br i1 %5, label %.lr.ph.i34.preheader, label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %.sroa.01.0.i102.ph = phi ptr [ %i.gb, %bb.bo ], [ %.val, %bb.bp ]
  %.sroa.16.0.i101.ph = phi i64 [ %i.gc, %bb.bo ], [ %.val28, %bb.bp ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.bq, %.preheader53.i
  %.sroa.01.0.i102 = phi ptr [ %3, %.preheader53.i ], [ %.sroa.01.0.i102.ph, %bb.bq ] ; 2 uses
  %.sroa.16.0.i101 = phi i64 [ %4, %.preheader53.i ], [ %.sroa.16.0.i101.ph, %bb.bq ]
  %.sroa.017.0.i100 = phi i64 [ %i.gm, %.preheader53.i ], [ 0, %bb.bq ]
  %i.ge = load i8, ptr %.sroa.01.0.i102, align 1, !alias.scope !13690, !noalias !13691, !noundef !25
  %i.gf = zext i8 %i.ge to i32
  %i.gg = add nsw i32 %i.gf, -48                  ; 2 uses
  %i.gh = icmp ult i32 %i.gg, 10
  br i1 %i.gh, label %bb.br, label %.thread61

bb.br:                                            ; preds = %.lr.ph
  %i.gi = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.017.0.i100, i64 10) ; 2 uses
  %i.gj = extractvalue { i64, i1 } %i.gi, 0       ; 2 uses
  %i.gk = extractvalue { i64, i1 } %i.gi, 1
  %i.gl = zext nneg i32 %i.gg to i64
  %i.gm = add i64 %i.gj, %i.gl                    ; 3 uses
  %.not50.i = icmp ult i64 %i.gm, %i.gj
  %or.cond = select i1 %i.gk, i1 true, i1 %.not50.i
  br i1 %or.cond, label %.thread61, label %.preheader53.i

.lr.ph.i34:                                       ; preds = %.lr.ph.i34.preheader, %bb.bs
  %.sroa.01.162.i = phi ptr [ %i.gt, %bb.bs ], [ %.sroa.01.162.i.ph, %.lr.ph.i34.preheader ] ; 2 uses
  %.sroa.16.161.i = phi i64 [ %i.gs, %bb.bs ], [ %.sroa.16.161.i.ph, %.lr.ph.i34.preheader ]
  %.sroa.017.160.i = phi i64 [ %i.gv, %bb.bs ], [ 0, %.lr.ph.i34.preheader ]
  %i.gn = load i8, ptr %.sroa.01.162.i, align 1, !alias.scope !13690, !noalias !13691, !noundef !25
  %i.go = zext i8 %i.gn to i32
  %i.gp = add nsw i32 %i.go, -48                  ; 2 uses
  %i.gq = icmp ult i32 %i.gp, 10
  br i1 %i.gq, label %bb.bs, label %.thread61

bb.bs:                                            ; preds = %.lr.ph.i34
  %i.gr = mul i64 %.sroa.017.160.i, 10
  %i.gs = add nsw i64 %.sroa.16.161.i, -1         ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.01.162.i, i64 1
  %i.gu = zext nneg i32 %i.gp to i64
  %i.gv = add i64 %i.gr, %i.gu                    ; 2 uses
  %.not51.i = icmp eq i64 %i.gs, 0
  br i1 %.not51.i, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit", label %.lr.ph.i34

.thread61:                                        ; preds = %bb.br, %.lr.ph, %.lr.ph.i34, %_ZN10actix_http6header3map9HeaderMap3get17hf04fc238564acd11E.exit, %bb.bm, %bb.bm
  %i.gw = load i8, ptr %i.ab, align 8, !range !64, !alias.scope !13692, !noundef !25
  %i.gx = icmp eq i8 %i.gw, 11
  br i1 %i.gx, label %_ZN10actix_http6header3map9HeaderMap3get17hf04fc238564acd11E.exit.thread.sink.split, label %bb.bt

bb.bt:                                            ; preds = %.thread61
  invoke void @"_ZN4core3ptr52drop_in_place$LT$actix_http..error..PayloadError$GT$17h3a18223edb6e234dE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ab)
          to label %_ZN10actix_http6header3map9HeaderMap3get17hf04fc238564acd11E.exit.thread.sink.split unwind label %bb.bx

"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit": ; preds = %.preheader53.i, %bb.bs
  %.sroa.1041.0 = phi i64 [ %i.gv, %bb.bs ], [ %i.gm, %.preheader53.i ] ; 4 uses
  %i.gy = icmp ugt i64 %.sroa.1041.0, 262144
  br i1 %i.gy, label %bb.bu, label %_ZN10actix_http6header3map9HeaderMap3get17hf04fc238564acd11E.exit.thread

bb.bu:                                            ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit"
  %i.gz = load i8, ptr %i.ab, align 8, !range !64, !alias.scope !13693, !noundef !25
  %i.ha = icmp eq i8 %i.gz, 11
  br i1 %i.ha, label %_ZN10actix_http6header3map9HeaderMap3get17hf04fc238564acd11E.exit.thread.sink.split, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  invoke void @"_ZN4core3ptr52drop_in_place$LT$actix_http..error..PayloadError$GT$17h3a18223edb6e234dE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ab)
          to label %_ZN10actix_http6header3map9HeaderMap3get17hf04fc238564acd11E.exit.thread.sink.split unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %.thread.sink.split

bb.bx:                                            ; preds = %bb.bt
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %.thread.sink.split

bb.by:                                            ; preds = %bb.bk
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %.thread.sink.split

bb.bz:                                            ; preds = %.thread26.i, %bb.bf, %bb.an, %bb.aa, %bb.h
  %.sroa.7.0.i.i = phi ptr [ %i.fr, %bb.bf ], [ %i.ei, %bb.aa ], [ %i.eu, %bb.an ], [ undef, %bb.h ], [ undef, %.thread26.i ]
  %.sroa.0.0.i17.i = phi i64 [ 1, %bb.bf ], [ 2, %bb.aa ], [ 0, %bb.an ], [ 3, %bb.h ], [ 3, %.thread26.i ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !13628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i64 %.sroa.0.0.i17.i, ptr %i.z, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %.sroa.7.0.i.i, ptr %.sroa.443.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store ptr null, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !13694
  %i.he = call noundef dereferenceable_or_null(8192) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8192, i64 noundef range(i64 1, 9) 1) #46, !noalias !13694 ; 2 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 8192, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #52
          to label %.noexc40 unwind label %bb.cb

.noexc40:                                         ; preds = %bb.ca
  unreachable

bb.cb:                                            ; preds = %bb.ca
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr291drop_in_place$LT$actix_http..encoding..decoder..Decoder$LT$actix_http..payload..Payload$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$$GT$17h462d941b4bcf5e65E"(ptr noalias noundef align 8 dereferenceable(56) %i.z) #53
          to label %.body unwind label %bb.cd

bb.cc:                                            ; preds = %bb.bz
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hh, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 262144, ptr %i.hi, align 8
  store i64 %.sroa.0.0, ptr %0, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %i.hj, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.hk, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 56, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.he, ptr %i.hl, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 8192, ptr %.sroa.546.0..sroa_idx, align 8
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr inttoptr (i64 17 to ptr), ptr %.sroa.647.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  ret void

bb.cd:                                            ; preds = %.thread, %bb.cb
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$actix_http..error..PayloadError$GT$$GT$17h84e5fae84ce1961aE.exit": ; preds = %.body, %.thread
  %.pn54 = phi { ptr, i32 } [ %.pn.ph, %.body ], [ %.pn53, %.thread ]
  resume { ptr, i32 } %.pn54
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web5types7payload15HttpMessageBody5limit17hf2e7d90c0664e709E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(152) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !38, !noundef !25
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !25
  %i.e = icmp ugt i64 %i.d, %2
  %. = select i1 %i.e, i8 7, i8 11                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.g = load i8, ptr %i.f, align 8, !range !64, !alias.scope !13697, !noundef !25
  %i.h = icmp eq i8 %i.g, 11
  br i1 %i.h, label %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$actix_http..error..PayloadError$GT$$GT$17h84e5fae84ce1961aE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN4core3ptr52drop_in_place$LT$actix_http..error..PayloadError$GT$17h3a18223edb6e234dE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$actix_http..error..PayloadError$GT$$GT$17h84e5fae84ce1961aE.exit" unwind label %bb.e

bb.d:                                             ; preds = %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$actix_http..error..PayloadError$GT$$GT$17h84e5fae84ce1961aE.exit", %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i64 %2, ptr %i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 152, i1 false)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  store i8 %., ptr %i.f, align 8
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$actix_web..types..payload..HttpMessageBody$GT$17ha8a70d2aed5c5d5dE"(ptr noalias noundef align 8 dereferenceable(152) %1) #53
          to label %bb.g unwind label %bb.f

"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$actix_http..error..PayloadError$GT$$GT$17h84e5fae84ce1961aE.exit": ; preds = %bb.b, %bb.c
  store i8 %., ptr %i.f, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web6config10AppService12clone_config17h6c59d40502f2d4bcE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i8, ptr %i.b, align 8, !range !31, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @706)
  %.sroa.0.0.copyload4 = load i64, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0.copyload7 = load ptr, ptr %.sroa.5.0..sroa_idx6, align 8
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %.sroa.6.0..sroa_idx8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !25, !noundef !25 ; 3 uses
  %.val.i = load i64, ptr %i.f, align 8, !noundef !25 ; 2 uses
  %i.g = icmp ne i64 %.val.i, 0
  call void @llvm.assume(i1 %i.g)
  %i.h = add i64 %.val.i, 1                       ; 2 uses
  store i64 %i.h, ptr %i.f, align 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17hf62c599f0cd1ad27E.exit, !prof !33

bb.b:                                             ; preds = %bb.a
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17hf62c599f0cd1ad27E.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.0.0.copyload4, ptr %0, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.copyload7, ptr %.sroa.5.0..sroa_idx5, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.c, ptr %.sroa.7.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web6config10AppService13into_services17h1a68776f55c7b2d4E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
end_hunk_1
