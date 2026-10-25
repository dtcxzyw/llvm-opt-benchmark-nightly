Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 215
loop-unroll.NumRuntimeUnrolled: 564
loop-unroll.NumUnrolled: 782
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_ZN15index_scheduler12index_mapper9index_map8IndexMap6create17hf47279a27093e486E:bb.a
  %.sroa.6.i20 = alloca [488 x i8], align 8       ; 5 uses
  %i.e = alloca [16 x i8], align 4                ; 4 uses
  %i.f = alloca [16 x i8], align 4                ; 5 uses
  %i.g = alloca [1 x i8], align 1                 ; 3 uses
  %i.h = alloca [40 x i8], align 8                ; 9 uses
  %i.i = alloca [496 x i8], align 8               ; 7 uses
  %.sroa.626.i = alloca [320 x i8], align 8       ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = alloca [496 x i8], align 8               ; 7 uses
  %.sroa.6.i = alloca [320 x i8], align 8         ; 6 uses
  %i.l = alloca [16 x i8], align 4                ; 5 uses
  %i.m = alloca [16 x i8], align 4                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 1                ; 4 uses
  %i.s = alloca [48 x i8], align 8                ; 7 uses
  %i.t = alloca [496 x i8], align 8               ; 2 uses
  %i.u = alloca [16 x i8], align 1                ; 2 uses
  %i.v = alloca [520 x i8], align 8               ; 43 uses
  %.sroa.830 = alloca [320 x i8], align 8         ; 9 uses
  %.sroa.14 = alloca [168 x i8], align 8          ; 6 uses
  %.sroa.6 = alloca [320 x i8], align 8           ; 7 uses
  %i.w = alloca [496 x i8], align 8               ; 63 uses
  %i.x = alloca [48 x i8], align 8                ; 7 uses
  %i.y = alloca [504 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.z, align 8, !noundef !57 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val13 = load i64, ptr %i.aa, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42582)
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %.loopexit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %bb.d
  %.sroa.3.0.i.i.i = phi i64 [ %i.bd, %bb.d ], [ %.val13, %bb.a ] ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.bc, %bb.d ], [ %.val, %bb.a ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 714
  %i.ac = load i16, ptr %i.ab, align 2, !noalias !42583, !noundef !57 ; 2 uses
  %i.ad = zext i16 %i.ac to i64                   ; 3 uses
  %.idx = shl nuw nsw i64 %i.ad, 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %.idx
  %i.af = icmp eq i16 %i.ac, 0
  br i1 %i.af, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i._crit_edge", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i"

bb.b:                                             ; preds = %endblock
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i105, i64 16 ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.8.0.i.i.i.i104, 1
  %i.ai = icmp eq ptr %i.ag, %i.ae
  br i1 %i.ai, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i._crit_edge", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i": ; preds = %.preheader.i.i, %bb.b
  %.sroa.01.0.i.i.i.i105 = phi ptr [ %i.ag, %bb.b ], [ %.sroa.0.0.i.i.i, %.preheader.i.i ] ; 3 uses
  %.sroa.8.0.i.i.i.i104 = phi i64 [ %i.ah, %bb.b ], [ 0, %.preheader.i.i ] ; 4 uses
  %i.aj = load i64, ptr %2, align 1
  %i.ak = load i64, ptr %.sroa.01.0.i.i.i.i105, align 1
  %i.al = tail call i64 @llvm.bswap.i64(i64 %i.aj) ; 2 uses
  %i.am = tail call i64 @llvm.bswap.i64(i64 %i.ak) ; 2 uses
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %loadbb276, label %res_block

res_block:                                        ; preds = %loadbb276, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i"
  %phi.src1 = phi i64 [ %i.al, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i" ], [ %i.au, %loadbb276 ]
  %phi.src2 = phi i64 [ %i.am, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i" ], [ %i.av, %loadbb276 ]
  %i.ao = icmp ult i64 %phi.src1, %phi.src2
  %i.ap = select i1 %i.ao, i32 -1, i32 1
  br label %endblock

loadbb276:                                        ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i"
  %i.aq = getelementptr i8, ptr %2, i64 8
  %i.ar = getelementptr i8, ptr %.sroa.01.0.i.i.i.i105, i64 8
  %i.as = load i64, ptr %i.aq, align 1
  %i.at = load i64, ptr %i.ar, align 1
  %i.au = tail call i64 @llvm.bswap.i64(i64 %i.as) ; 2 uses
  %i.av = tail call i64 @llvm.bswap.i64(i64 %i.at) ; 2 uses
  %i.aw = icmp eq i64 %i.au, %i.av
  br i1 %i.aw, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb276
  %phi.res = phi i32 [ 0, %loadbb276 ], [ %i.ap, %res_block ]
  %i.ax = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %phi.res, i32 0)
  switch i8 %i.ax, label %bb.c [
    i8 -1, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i._crit_edge"
    i8 0, label %bb.e
    i8 1, label %bb.b
  ]

bb.c:                                             ; preds = %endblock
  unreachable

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i._crit_edge": ; preds = %bb.b, %endblock, %.preheader.i.i
  %.sroa.4.0.i.ph.i.i.i = phi i64 [ %i.ad, %.preheader.i.i ], [ %i.ad, %bb.b ], [ %.sroa.8.0.i.i.i.i104, %endblock ] ; 2 uses
  %i.ay = icmp eq i64 %.sroa.3.0.i.i.i, 0
  br i1 %i.ay, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i._crit_edge"
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 720
  %i.ba = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 12
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.sroa.4.0.i.ph.i.i.i
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !42584, !nonnull !57, !noundef !57
  %i.bd = add i64 %.sroa.3.0.i.i.i, -1
  br label %.preheader.i.i

bb.e:                                             ; preds = %endblock
  %i.be = icmp samesign ult i64 %.sroa.8.0.i.i.i.i104, 11
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 176
  %i.bg = getelementptr inbounds nuw [48 x i8], ptr %i.bf, i64 %.sroa.8.0.i.i.i.i104 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 8, !range !65, !noalias !42585, !noundef !57
  %.not4.i = icmp eq i8 %i.bi, 2
  br i1 %.not4.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !noalias !42585
  %i.bk = load ptr, ptr %i.bg, align 8, !noalias !42585, !nonnull !57, !noundef !57
  %i.bl = atomicrmw add ptr %i.bk, i64 1 monotonic, align 8, !noalias !42585
  %i.bm = icmp slt i64 %i.bl, 0
  br i1 %i.bm, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = load ptr, ptr %i.bg, align 8, !noalias !42585, !nonnull !57, !noundef !57
  %i.bo = load i8, ptr %i.bh, align 8, !range !74, !noalias !42585, !noundef !57
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.br = load <2 x i64>, ptr %i.bp, align 8, !noalias !42585
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(16) %i.r, i64 16, i1 false), !noalias !42586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store ptr %i.bn, ptr %i.bq, align 8, !alias.scope !42582
  store <2 x i64> %i.br, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !42582
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store i8 %i.bo, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !42582
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.e, %bb.g
  %storemerge = phi i64 [ 2, %bb.g ], [ 1, %bb.e ]
  store i64 %storemerge, ptr %i.y, align 8, !alias.scope !42582
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$index_scheduler..index_mapper..IndexStatus$GT$17h675b313e6f6af1cfE"(ptr noalias noundef align 8 dereferenceable(504) %i.y)
          to label %bb.bo unwind label %.thread62.i

.loopexit:                                        ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bd0b063e4af41a0E.exit.i.i.i.i._crit_edge", %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.830)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42587)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bs = invoke noundef i64 @_ZN9page_size3get17hede5b479feb37d60E()
          to label %.noexc48.i unwind label %.thread62.i, !noalias !42588 ; 2 uses

.noexc48.i:                                       ; preds = %.loopexit
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.noexc48.i
  %i.bu = invoke noundef i64 @_ZN9page_size3get17hede5b479feb37d60E()
          to label %bb.l unwind label %.thread62.i, !noalias !42588

bb.k:                                             ; preds = %.noexc48.i
  invoke void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hd4705242238fd5f4E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @729) #78
          to label %.noexc50.i unwind label %.thread62.i, !noalias !42588

.noexc50.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bv = udiv i64 %7, %i.bs
  %i.bw = mul i64 %i.bv, %i.bu                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !42588
  invoke void @_ZN3std3env4_var17hedc9fcdb7326c51fE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @557, i64 noundef 36)
          to label %_ZN3std3env3var17ha331f613449292d1E.exit.i unwind label %.thread62.i, !noalias !42588

_ZN3std3env3var17ha331f613449292d1E.exit.i:       ; preds = %bb.l
  %i.bx = load i64, ptr %i.q, align 8, !range !71, !noalias !42588, !noundef !57
  %i.by = trunc nuw i64 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !42588 ; 5 uses
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN3std3env3var17ha331f613449292d1E.exit.i
  %.not.i = icmp eq i64 %i.ca, -9223372036854775808
  br i1 %.not.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit54.i", label %bb.ab, !prof !58

bb.n:                                             ; preds = %_ZN3std3env3var17ha331f613449292d1E.exit.i
  %.sroa.556.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.556.0.copyload.i = load ptr, ptr %.sroa.556.0..sroa_idx.i, align 8, !noalias !42588, !nonnull !57, !noundef !57 ; 8 uses
  %.sroa.857.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.857.0.copyload.i = load i64, ptr %.sroa.857.0..sroa_idx.i, align 8, !noalias !42588 ; 6 uses
  switch i64 %.sroa.857.0.copyload.i, label %bb.p [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.i"
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.cb = load i8, ptr %.sroa.556.0.copyload.i, align 1, !alias.scope !42589, !noalias !42588, !noundef !57
  switch i8 %i.cb, label %.lr.ph.i.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.i"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.i"
  ]

.lr.ph.i.i.preheader:                             ; preds = %bb.s, %bb.q, %bb.o
  %.sroa.03.182.i.i.ph = phi ptr [ %i.cc, %bb.q ], [ %.sroa.556.0.copyload.i, %bb.s ], [ %.sroa.556.0.copyload.i, %bb.o ]
  %.sroa.16.181.i.i.ph = phi i64 [ %i.cd, %bb.q ], [ %.sroa.857.0.copyload.i, %bb.s ], [ 1, %bb.o ]
  br label %.lr.ph.i.i

bb.p:                                             ; preds = %bb.n
  %.pr.i.i = load i8, ptr %.sroa.556.0.copyload.i, align 1, !alias.scope !42589, !noalias !42588
  %cond.i.i = icmp eq i8 %.pr.i.i, 43
  br i1 %cond.i.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.556.0.copyload.i, i64 1 ; 2 uses
  %i.cd = add i64 %.sroa.857.0.copyload.i, -1     ; 2 uses
  %i.ce = icmp ult i64 %.sroa.857.0.copyload.i, 10
  br i1 %i.ce, label %.lr.ph.i.i.preheader, label %.preheader71.i.i

.preheader71.i.i:                                 ; preds = %bb.s, %bb.q
  %.sroa.16.0.ph.i.i = phi i64 [ %.sroa.857.0.copyload.i, %bb.s ], [ %i.cd, %bb.q ] ; 2 uses
  %.sroa.03.0.ph.i.i = phi ptr [ %.sroa.556.0.copyload.i, %bb.s ], [ %i.cc, %bb.q ]
  %.not.i.i16107 = icmp eq i64 %.sroa.16.0.ph.i.i, 0
  br i1 %.not.i.i16107, label %.loopexit.i.i, label %.lr.ph

bb.r:                                             ; preds = %bb.v
  %.not.i.i16 = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i16, label %.loopexit.i.i, label %.lr.ph

bb.s:                                             ; preds = %bb.p
  %i.cf = icmp ult i64 %.sroa.857.0.copyload.i, 9
  br i1 %i.cf, label %.lr.ph.i.i.preheader, label %.preheader71.i.i

.loopexit.i.i:                                    ; preds = %bb.r, %bb.w, %.preheader71.i.i
  %.sroa.019.2.i.i = phi i32 [ %i.db, %bb.w ], [ 0, %.preheader71.i.i ], [ %i.ct, %bb.r ]
  %i.cg = zext i32 %.sroa.019.2.i.i to i64
  %i.ch = shl nuw i64 %i.cg, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.i"

.lr.ph:                                           ; preds = %.preheader71.i.i, %bb.r
  %.sroa.03.0.i.i110 = phi ptr [ %i.ci, %bb.r ], [ %.sroa.03.0.ph.i.i, %.preheader71.i.i ] ; 2 uses
  %.sroa.16.0.i.i109 = phi i64 [ %i.cj, %bb.r ], [ %.sroa.16.0.ph.i.i, %.preheader71.i.i ]
  %.sroa.019.0.i.i108 = phi i32 [ %i.ct, %bb.r ], [ 0, %.preheader71.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i110, i64 1
  %i.cj = add i64 %.sroa.16.0.i.i109, -1          ; 2 uses
  %i.ck = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.019.0.i.i108, i32 10) ; 2 uses
  %i.cl = extractvalue { i32, i1 } %i.ck, 0       ; 2 uses
  %i.cm = extractvalue { i32, i1 } %i.ck, 1
  %i.cn = load i8, ptr %.sroa.03.0.i.i110, align 1, !alias.scope !42589, !noalias !42588, !noundef !57 ; 2 uses
  br i1 %i.cm, label %bb.u, label %bb.t, !prof !60

bb.t:                                             ; preds = %.lr.ph
  %i.co = zext i8 %i.cn to i32
  %i.cp = add nsw i32 %i.co, -48                  ; 2 uses
  %i.cq = icmp ult i32 %i.cp, 10
  br i1 %i.cq, label %bb.v, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.i"

bb.u:                                             ; preds = %.lr.ph
  %i.cr = add i8 %i.cn, -48
  %i.cs = icmp ult i8 %i.cr, 10
  %spec.select.i.i = select i1 %i.cs, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.i"

bb.v:                                             ; preds = %bb.t
  %i.ct = add i32 %i.cp, %i.cl                    ; 3 uses
  %.not66.i.i = icmp ult i32 %i.ct, %i.cl
  br i1 %.not66.i.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.i", label %bb.r

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.w
  %.sroa.03.182.i.i = phi ptr [ %i.da, %bb.w ], [ %.sroa.03.182.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.16.181.i.i = phi i64 [ %i.cz, %bb.w ], [ %.sroa.16.181.i.i.ph, %.lr.ph.i.i.preheader ]
  %.sroa.019.180.i.i = phi i32 [ %i.db, %bb.w ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cu = load i8, ptr %.sroa.03.182.i.i, align 1, !alias.scope !42589, !noalias !42588, !noundef !57
  %i.cv = zext i8 %i.cu to i32
  %i.cw = add nsw i32 %i.cv, -48                  ; 2 uses
  %i.cx = icmp ult i32 %i.cw, 10
  br i1 %i.cx, label %bb.w, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.i"

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.cy = mul i32 %.sroa.019.180.i.i, 10
  %i.cz = add nsw i64 %.sroa.16.181.i.i, -1       ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.03.182.i.i, i64 1
  %i.db = add i32 %i.cw, %i.cy                    ; 2 uses
  %.not67.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not67.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

bb.x:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.i"
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = icmp eq i64 %i.ca, 0
  br i1 %i.dd, label %.thread.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.556.0.copyload.i, i64 noundef %i.ca, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !42590
  br label %.thread.sink.split

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.i": ; preds = %bb.u, %.loopexit.i.i
  %.sroa.8.0.insert.insert.i.i = phi i64 [ %i.ch, %.loopexit.i.i ], [ %spec.select.i.i, %bb.u ] ; 3 uses
  %i.de = trunc i64 %.sroa.8.0.insert.insert.i.i to i1
  br i1 %i.de, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.i", label %bb.z, !prof !129

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.i": ; preds = %bb.v, %bb.t, %.lr.ph.i.i, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.i", %bb.o, %bb.o, %bb.n
  %.sroa.8.0.insert.insert.i70.i = phi i64 [ %.sroa.8.0.insert.insert.i.i, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.i" ], [ 257, %bb.o ], [ 257, %.lr.ph.i.i ], [ 1, %bb.n ], [ 257, %bb.o ], [ 257, %bb.t ], [ 513, %bb.v ]
  %.sroa.4.0.extract.shift.i.i = lshr i64 %.sroa.8.0.insert.insert.i70.i, 8
  %.sroa.4.0.extract.trunc.i.i = trunc i64 %.sroa.4.0.extract.shift.i.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !42591
  store i8 %.sroa.4.0.extract.trunc.i.i, ptr %i.g, align 1, !noalias !42591
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2141, i64 noundef 43, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2144, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @559) #78
          to label %.noexc.i unwind label %bb.x, !noalias !42588

.noexc.i:                                         ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread.i"
  unreachable

bb.z:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.i"
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.8.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32 ; 2 uses
  %i.df = icmp eq i64 %i.ca, 0
  br i1 %i.df, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit54.i", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.556.0.copyload.i, i64 noundef %i.ca, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !42592
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit54.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit54.i": ; preds = %bb.aa, %bb.z, %bb.m
  %.sroa.016.0.i = phi i32 [ 1024, %bb.m ], [ %.sroa.6.0.extract.trunc.i.i, %bb.aa ], [ %.sroa.6.0.extract.trunc.i.i, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !42588
  %spec.select.i = select i1 %6, i32 524288, i32 0 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 7
  %i.dh = load i8, ptr %i.dg, align 1, !range !74, !alias.scope !42587, !noundef !57
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.ac, label %.noexc17

bb.ab:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !42588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 24, i1 false), !noalias !42588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !42588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !42588
  store ptr %i.p, ptr %i.n, align 8, !noalias !42588
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @"_ZN63_$LT$std..ffi..os_str..OsString$u20$as$u20$core..fmt..Debug$GT$3fmt17h23d35276af598b4cE", ptr %.sroa.436.0..sroa_idx.i, align 8, !noalias !42588
  store ptr @561, ptr %i.o, align 8, !noalias !42588
  %i.dj = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 1, ptr %i.dj, align 8, !noalias !42588
  %i.dk = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %i.dk, align 8, !noalias !42588
  %i.dl = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.n, ptr %i.dl, align 8, !noalias !42588
  %i.dm = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 1, ptr %i.dm, align 8, !noalias !42588
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @562) #78
          to label %bb.aj unwind label %bb.ah, !noalias !42588

.noexc17:                                         ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit54.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull readonly align 4 dereferenceable(32) %5, i64 16, i1 false), !noalias !42593
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.dn, i64 16, i1 false), !noalias !42593
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !42588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !42588
  store i64 1, ptr %i.j, align 8, !noalias !42588
  %.sroa.7.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.bw, ptr %.sroa.7.0..sroa_idx.i15, align 8, !noalias !42588
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 1, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !42588
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 %.sroa.016.0.i, ptr %.sroa.11.0..sroa_idx.i, align 4, !noalias !42588
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 0, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !42588
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i32 %spec.select.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !42588
  call fastcc void @_ZN5milli5index5Index23new_with_creation_dates17h7c79378e1796c7acE(ptr noalias noundef align 8 captures(address) dereferenceable(496) %i.k, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.m, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !42588
  %i.do = load ptr, ptr %i.k, align 8, !noalias !42588, !noundef !57 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  %i.dq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(320) %i.dq, i64 320, i1 false), !noalias !42588
  br i1 %i.dp, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit54.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.626.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !42588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !42588
  store i64 1, ptr %i.h, align 8, !noalias !42588
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.bw, ptr %.sroa.7.0..sroa_idx2.i, align 8, !noalias !42588
  %.sroa.9.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 1, ptr %.sroa.9.0..sroa_idx4.i, align 8, !noalias !42588
  %.sroa.11.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  store i32 %.sroa.016.0.i, ptr %.sroa.11.0..sroa_idx6.i, align 4, !noalias !42588
  %.sroa.13.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 0, ptr %.sroa.13.0..sroa_idx8.i, align 8, !noalias !42588
  %.sroa.15.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 %spec.select.i, ptr %.sroa.15.0..sroa_idx12.i, align 8, !noalias !42588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !42588
  invoke fastcc void @_ZN4time16offset_date_time14OffsetDateTime7now_utc17h9389a0b5e004fd02E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.f)
          to label %.noexc18 unwind label %.thread62.i, !noalias !42594

.noexc18:                                         ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !42594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !noalias !42594
  call fastcc void @_ZN5milli5index5Index23new_with_creation_dates17h7c79378e1796c7acE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(496) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.e, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !42594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !42588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !42588
  %i.dr = load ptr, ptr %i.i, align 8, !noalias !42588, !noundef !57 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.626.i, ptr noundef nonnull align 8 dereferenceable(320) %i.dt, i64 320, i1 false), !noalias !42588
  br i1 %i.ds, label %bb.af, label %bb.ag

.thread62.i:                                      ; preds = %bb.i, %bb.bo, %bb.ac, %bb.l, %bb.k, %bb.j, %.loopexit
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.thread.sink.split

bb.ad:                                            ; preds = %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !42588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.830, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.6.i, i64 320, i1 false), !noalias !42595
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.ak

bb.ae:                                            ; preds = %.noexc17
  %.sroa.638.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.638.0..sroa_idx.i, i64 168, i1 false), !noalias !42595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !42588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.830, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.6.i, i64 320, i1 false), !noalias !42595
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.al

bb.af:                                            ; preds = %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !42588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.830, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.626.i, i64 320, i1 false), !noalias !42595
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.626.i)
  br label %bb.ak

bb.ag:                                            ; preds = %.noexc18
  %.sroa.641.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.641.0..sroa_idx.i, i64 168, i1 false), !noalias !42595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !42588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.830, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.626.i, i64 320, i1 false), !noalias !42595
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.626.i)
  br label %bb.al

bb.ah:                                            ; preds = %bb.ab
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load i64, ptr %i.p, align 8, !range !56, !alias.scope !42596, !noalias !42588, !noundef !57 ; 2 uses
  %i.dw = icmp eq i64 %.val.i, 0
  br i1 %i.dw, label %.thread.sink.split, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val47.i = load ptr, ptr %i.dx, align 8, !noalias !42588, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val47.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !42597
  br label %.thread.sink.split

bb.aj:                                            ; preds = %bb.ab
  unreachable

bb.ak:                                            ; preds = %bb.af, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.830, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.830)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.dy, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.6, i64 320, i1 false)
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.bk

bb.al:                                            ; preds = %bb.ae, %bb.ag
  %.sroa.0.0 = phi ptr [ %i.do, %bb.ae ], [ %i.dr, %bb.ag ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.830, i64 320, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 328 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.14, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.830)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.6, i64 320, i1 false)
  store ptr %.sroa.0.0, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %.sroa.031.0.copyload = load i128, ptr %2, align 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42598)
  call void @llvm.experimental.noalias.scope.decl(metadata !42599)
  %i.dz = atomicrmw add ptr %.sroa.0.0, i64 1 monotonic, align 8, !noalias !42600
  %i.ea = icmp slt i64 %i.dz, 0
  br i1 %i.ea, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  call void @llvm.trap()
  unreachable

.body27:                                          ; preds = %.body.i.i, %bb.az, %bb.ba, %bb.bc, %bb.bd, %bb.ao, %bb.bm, %bb.bh
  %.pn = phi { ptr, i32 } [ %i.lw, %bb.bm ], [ %i.lw, %bb.bh ], [ %i.ee, %bb.ao ], [ %i.lm, %bb.bc ], [ %i.la, %bb.ba ], [ %i.la, %.body.i.i ], [ %i.la, %bb.az ], [ %i.lm, %bb.bd ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42601)
  call void @llvm.experimental.noalias.scope.decl(metadata !42602)
  call void @llvm.experimental.noalias.scope.decl(metadata !42603)
  call void @llvm.experimental.noalias.scope.decl(metadata !42604)
  %i.eb = load ptr, ptr %i.w, align 8, !alias.scope !42605, !nonnull !57, !noundef !57
end_hunk_0
begin_hunk_1_@"_ZN9cellulite7builder38_$LT$impl$u20$cellulite..Cellulite$GT$33insert_chunk_of_items_recursively17h59875a03892ea01fE":bb.a

bb.d:                                             ; preds = %bb.c
  %.sroa.6160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4164.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6160.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  store i64 %i.au, ptr %0, align 8
  %.sroa.2162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0151.0.copyload, ptr %.sroa.2162.0..sroa_idx, align 8
  %.sroa.3163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4152.sroa.0.0.copyload, ptr %.sroa.3163.0..sroa_idx, align 8
  %.sroa.3163.sroa.2.0..sroa.3163.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4152.sroa.4.0.copyload, ptr %.sroa.3163.sroa.2.0..sroa.3163.0..sroa_idx.sroa_idx, align 8
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h616b4bae99467afdE.exit534"

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %.not360 = icmp eq i64 %.sroa.0151.0.copyload, -9223372036854775808
  br i1 %.not360, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.aw = icmp ult i64 %.sroa.4152.sroa.4.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.aw)
  %i.ax = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 9 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 4 uses
  %i.az = load i8, ptr %i.ay, align 8, !range !74, !noalias !247252, !noundef !57
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i", !prof !58

._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i: ; preds = %bb.f
  %.pre.i.i = load i64, ptr %i.ax, align 8, !noalias !247253 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !247253
  %i.bb = insertvalue { i64, i64 } poison, i64 %.pre.i.i, 0
  %i.bc = insertvalue { i64, i64 } %i.bb, i64 %.pre1.i.i, 1
  br label %bb.j

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i": ; preds = %bb.f
  %i.bd = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.i     ; 3 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i"
  %i.be = extractvalue { i64, i64 } %i.bd, 0
  %i.bf = extractvalue { i64, i64 } %i.bd, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !noalias !247254
  store i8 1, ptr %i.ay, align 8, !noalias !247254
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  store i64 11, ptr %0, align 8
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h616b4bae99467afdE.exit534"

.thread741.thread906:                             ; preds = %bb.r, %.thread741.thread, %bb.i
  %.pn409 = phi { ptr, i32 } [ %i.bj, %bb.i ], [ %.pn407740, %.thread741.thread ], [ %.pn391, %bb.r ] ; 2 uses
  %i.bh = icmp eq i64 %.sroa.0151.0.copyload, 0
  br i1 %i.bh, label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h616b4bae99467afdE.exit", label %bb.h

bb.h:                                             ; preds = %.thread741.thread906
  %i.bi = shl nuw i64 %.sroa.0151.0.copyload, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4152.sroa.0.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4152.sroa.0.0.copyload, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 8) #77
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h616b4bae99467afdE.exit"

bb.i:                                             ; preds = %bb.j, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i"
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.thread741.thread906

bb.j:                                             ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i
  %i.bk = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i ], [ %i.be, %.noexc ]
  %.merged.i = phi { i64, i64 } [ %i.bc, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i ], [ %i.bd, %.noexc ] ; 2 uses
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.ax, align 8, !noalias !247253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke fastcc void @_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h044c0bb2e18f3ec5E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, i64 noundef 32, i64 noundef range(i64 0, 1152921504606846976) %.sroa.4152.sroa.4.0.copyload, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.bm = extractvalue { i64, i64 } %.merged.i, 1
  %i.bn = extractvalue { i64, i64 } %.merged.i, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.bn, ptr %i.bo, align 8, !alias.scope !247255
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.bm, ptr %i.bp, align 8, !alias.scope !247255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.bq = load i8, ptr %i.ay, align 8, !range !74, !noalias !247256, !noundef !57
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i438, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i436", !prof !58

._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i438: ; preds = %bb.k
  %.pre.i.i439 = load i64, ptr %i.ax, align 8, !noalias !247257
  %.phi.trans.insert.i.i440 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.pre1.i.i441 = load i64, ptr %.phi.trans.insert.i.i440, align 8, !noalias !247257
  br label %bb.l

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i436": ; preds = %bb.k
  %i.bs = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc442 unwind label %.thread733 ; 2 uses

.noexc442:                                        ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i436"
  %i.bt = extractvalue { i64, i64 } %i.bs, 0
  %i.bu = extractvalue { i64, i64 } %i.bs, 1      ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !noalias !247258
  store i8 1, ptr %i.ay, align 8, !noalias !247258
  br label %bb.l

.thread733:                                       ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i436"
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.thread741.thread

bb.l:                                             ; preds = %.noexc442, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i438
  %.pre-phi1148 = phi i64 [ %i.bu, %.noexc442 ], [ %.pre1.i.i441, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i438 ]
  %.pre-phi = phi i64 [ %i.bt, %.noexc442 ], [ %.pre.i.i439, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i438 ] ; 2 uses
  %i.bx = add i64 %.pre-phi, 1
  store i64 %i.bx, ptr %i.ax, align 8, !noalias !247257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) @30, i64 32, i1 false)
  %.sroa.4166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i64 %.pre-phi, ptr %.sroa.4166.0..sroa_idx, align 8
  %.sroa.5167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store i64 %.pre-phi1148, ptr %.sroa.5167.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4152.sroa.0.0.copyload) ]
  %.idx = shl nuw nsw i64 %.sroa.4152.sroa.4.0.copyload, 3
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.4152.sroa.0.0.copyload, i64 %.idx
  %i.bz = icmp eq i64 %.sroa.4152.sroa.4.0.copyload, 0
  br i1 %i.bz, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %.sroa.0349.1978 = getelementptr inbounds nuw i8, ptr %.sroa.4152.sroa.0.0.copyload, i64 8
  %.val434 = load ptr, ptr %3, align 8, !nonnull !57, !align !61, !noundef !57
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !57 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw [40 x i8], ptr %i.cb, i64 %i.cd
  %.sroa.016.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %.sroa.317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.4172.sroa.4.sroa.4.0..sroa.4172.sroa.4.0..sroa.4172.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.4172.sroa.4.sroa.5.0..sroa.4172.sroa.4.0..sroa.4172.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.sroa.4172.sroa.5.0..sroa.4172.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %.sroa.4172.sroa.6.0..sroa.4172.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  %.sroa.5173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.432.sroa.4.sroa.4.0..sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.432.sroa.4.sroa.5.0..sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %.sroa.432.sroa.5.0..sroa.432.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %.sroa.432.sroa.6.0..sroa.432.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 44
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %.sroa.4642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cf = insertelement <2 x ptr> poison, ptr %i.cb, i64 0
  %i.cg = insertelement <2 x ptr> %i.cf, ptr %i.ce, i64 1
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.cg
  %.sroa.0349.1980 = phi ptr [ %.sroa.0349.1978, %.lr.ph ], [ %.sroa.0349.1, %bb.cg ] ; 3 uses
  %.sroa.0349.0979 = phi ptr [ %.sroa.4152.sroa.0.0.copyload, %.lr.ph ], [ %.sroa.0349.1980, %bb.cg ]
  %i.ch = load i64, ptr %.sroa.0349.0979, align 8, !range !90, !noundef !57 ; 3 uses
  %i.ci = invoke noundef zeroext i1 @_ZN5milli20must_stop_processing18MustStopProcessing3get17h9b247b7d9f64713eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val434)
          to label %"_ZN5milli6update3new7indexer5index28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hcb9e05485eaaa10dE.exit" unwind label %.thread758

._crit_edge:                                      ; preds = %bb.cg
  %.sroa.0689.0.copyload.pre = load ptr, ptr %i.aq, align 8 ; 4 uses
  %.sroa.2690.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.2690.0.copyload.pre = load i64, ptr %.sroa.2690.0..sroa_idx.phi.trans.insert, align 8 ; 5 uses
  %.sroa.3692.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.3692.0.copyload.pre = load i64, ptr %.sroa.3692.0..sroa_idx.phi.trans.insert, align 8 ; 2 uses
  %.val13.i.i.i = load <16 x i8>, ptr %.sroa.0689.0.copyload.pre, align 16, !noalias !247259 ; 2 uses
  %i.cj = icmp eq i64 %.sroa.2690.0.copyload.pre, 0
  br i1 %i.cj, label %._crit_edge.thread, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %._crit_edge
  %i.ck = icmp slt i64 %.sroa.2690.0.copyload.pre, 576460752303423487
  call void @llvm.assume(i1 %i.ck)
  %i.cl = shl i64 %.sroa.2690.0.copyload.pre, 5   ; 2 uses
  %i.cm = add i64 %i.cl, 32                       ; 2 uses
  %i.cn = add nsw i64 %.sroa.2690.0.copyload.pre, 17
  %i.co = add i64 %i.cn, %i.cm                    ; 3 uses
  %i.cp = icmp uge i64 %i.co, %i.cm
  call void @llvm.assume(i1 %i.cp)
  %i.cq = icmp ult i64 %i.co, 9223372036854775793
  call void @llvm.assume(i1 %i.cq)
  %i.cr = sub nuw nsw i64 -32, %i.cl
  %i.cs = getelementptr inbounds i8, ptr %.sroa.0689.0.copyload.pre, i64 %i.cr
  br label %._crit_edge.thread

.thread758:                                       ; preds = %bb.cb, %bb.m
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread741

._crit_edge.thread:                               ; preds = %bb.l, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, %._crit_edge
  %.val13.i.i.i1190 = phi <16 x i8> [ %.val13.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ %.val13.i.i.i, %._crit_edge ], [ splat (i8 -1), %bb.l ]
  %.sroa.0689.0.copyload1189 = phi ptr [ %.sroa.0689.0.copyload.pre, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ %.sroa.0689.0.copyload.pre, %._crit_edge ], [ @29, %bb.l ] ; 4 uses
  %.sroa.2690.0.copyload1188 = phi i64 [ %.sroa.2690.0.copyload.pre, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ 0, %._crit_edge ], [ 0, %bb.l ]
  %.sroa.3692.0.copyload1187 = phi i64 [ %.sroa.3692.0.copyload.pre, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ %.sroa.3692.0.copyload.pre, %._crit_edge ], [ 0, %bb.l ] ; 3 uses
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %i.co, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %._crit_edge ], [ undef, %bb.l ]
  %.sroa.5.sroa.4.0.i.i.i.i = phi ptr [ %i.cs, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %._crit_edge ], [ undef, %bb.l ]
  %.sroa.0.0.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ 0, %._crit_edge ], [ 0, %bb.l ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0689.0.copyload1189, i64 16 ; 2 uses
  %i.cu = icmp sgt <16 x i8> %.val13.i.i.i1190, splat (i8 -1) ; 2 uses
  %i.cv = getelementptr i8, ptr %.sroa.0689.0.copyload1189, i64 %.sroa.2690.0.copyload1188
  %i.cw = getelementptr i8, ptr %i.cv, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.al, align 8
  %.sroa.5610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i, ptr %.sroa.5610.0..sroa_idx, align 8
  %.sroa.6611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i, ptr %.sroa.6611.0..sroa_idx, align 8
  %.sroa.7612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  store ptr %.sroa.0689.0.copyload1189, ptr %.sroa.7612.0..sroa_idx, align 8
  %.sroa.8613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  store ptr %i.ct, ptr %.sroa.8613.0..sroa_idx, align 8
  %.sroa.9614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store ptr %i.cw, ptr %.sroa.9614.0..sroa_idx, align 8
  %.sroa.10615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 6 uses
  store <16 x i1> %i.cu, ptr %.sroa.10615.0..sroa_idx, align 8
  %.sroa.12616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 56 ; 6 uses
  store i64 %.sroa.3692.0.copyload1187, ptr %.sroa.12616.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9571)
  %i.cx = icmp eq i64 %.sroa.3692.0.copyload1187, 0
  br i1 %i.cx, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread", label %.lr.ph988

.lr.ph988:                                        ; preds = %._crit_edge.thread
  %.sroa.10615.0..sroa_idx.promoted.cast = bitcast <16 x i1> %i.cu to i16
  %.sroa.9571.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.val433 = load ptr, ptr %3, align 8, !nonnull !57, !align !61
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cz = load i64, ptr %i.cy, align 8            ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.db = load i32, ptr %i.da, align 8            ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %.sroa.4212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.sroa.4218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %.sroa.5221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph988, %bb.by
  %i.df = phi i64 [ %.sroa.3692.0.copyload1187, %.lr.ph988 ], [ %i.ds, %bb.by ]
  %i.dg = phi i16 [ %.sroa.10615.0..sroa_idx.promoted.cast, %.lr.ph988 ], [ %i.dp, %bb.by ] ; 2 uses
  %.pre.i.i445982986 = phi ptr [ %.sroa.0689.0.copyload1189, %.lr.ph988 ], [ %.pre.i.i445981, %bb.by ] ; 2 uses
  %.promoted15.i.i984985 = phi ptr [ %i.ct, %.lr.ph988 ], [ %.promoted15.i.i983, %bb.by ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !247260)
  call void @llvm.experimental.noalias.scope.decl(metadata !247261)
  %.not13.i.i = icmp eq i16 %i.dg, 0
  br i1 %.not13.i.i, label %.lr.ph.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit"

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  store ptr %i.dl, ptr %.sroa.8613.0..sroa_idx, align 8, !alias.scope !247262
  store ptr %i.dk, ptr %.sroa.7612.0..sroa_idx, align 8, !alias.scope !247262
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit"

.lr.ph.i.i:                                       ; preds = %bb.n, %.lr.ph.i.i
  %i.dh = phi ptr [ %i.dl, %.lr.ph.i.i ], [ %.promoted15.i.i984985, %bb.n ] ; 2 uses
  %i.di = phi ptr [ %i.dk, %.lr.ph.i.i ], [ %.pre.i.i445982986, %bb.n ]
  %.val911.i.i = load <16 x i8>, ptr %i.dh, align 16, !noalias !247263
  %i.dj = icmp sgt <16 x i8> %.val911.i.i, splat (i8 -1)
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 -512 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 3 uses
  %.cast.i.i = bitcast <16 x i1> %i.dj to i16     ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.thread840:                                       ; preds = %bb.bu, %bb.ca
  %.sink = phi ptr [ %i.aj, %bb.bu ], [ %i.ak, %bb.ca ]
  %.pn398 = phi { ptr, i32 } [ %i.hq, %bb.bu ], [ %lpad.thr_comm847, %bb.ca ]
  store i16 %i.dp, ptr %.sroa.10615.0..sroa_idx, align 8, !alias.scope !247262
  store i64 %i.ds, ptr %.sroa.12616.0..sroa_idx, align 8, !alias.scope !247260
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h04d6bb29c4479ffdE"(ptr noalias noundef align 8 dereferenceable(24) %.sink) #79
  call fastcc void @"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..IntoIter$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h8aa6b66302fed524E"(ptr noalias noundef align 8 dereferenceable(64) %i.al) #79
  br label %.thread741.thread

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit": ; preds = %bb.n, %._crit_edge.i.i
  %.promoted15.i.i983 = phi ptr [ %i.dl, %._crit_edge.i.i ], [ %.promoted15.i.i984985, %bb.n ]
  %.pre.i.i445981 = phi ptr [ %i.dk, %._crit_edge.i.i ], [ %.pre.i.i445982986, %bb.n ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.dg, %bb.n ] ; 3 uses
  %i.dm = add i16 %.lcssa.i.i, -1
  %i.dn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.do = zext nneg i16 %i.dn to i64
  %i.dp = and i16 %i.dm, %.lcssa.i.i              ; 6 uses
  %i.dq = sub nsw i64 0, %i.do
  %i.dr = getelementptr inbounds [32 x i8], ptr %.pre.i.i445981, i64 %i.dq ; 3 uses
  %i.ds = add i64 %i.df, -1                       ; 7 uses
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 -32
  %.sroa.0569.0.copyload = load i64, ptr %i.dt, align 8, !noalias !247260 ; 2 uses
  %.sroa.6570.0..sroa_idx = getelementptr inbounds i8, ptr %i.dr, i64 -24
  %.sroa.6570.0.copyload = load i64, ptr %.sroa.6570.0..sroa_idx, align 8, !noalias !247260 ; 2 uses
  %.sroa.9571.0..sroa_idx = getelementptr inbounds i8, ptr %i.dr, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9571, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9571.0..sroa_idx, i64 16, i1 false), !noalias !247260
  %.not362 = icmp eq i64 %.sroa.6570.0.copyload, -9223372036854775808
  br i1 %.not362, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread.sink.split", label %bb.o

bb.o:                                             ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i64 %.sroa.6570.0.copyload, ptr %i.ak, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9571.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9571, i64 16, i1 false)
  %i.du = invoke noundef zeroext i1 @_ZN5milli20must_stop_processing18MustStopProcessing3get17h9b247b7d9f64713eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val433)
          to label %"_ZN5milli6update3new7indexer5index28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hcb9e05485eaaa10dE.exit447" unwind label %bb.ca

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread.sink.split": ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit", %bb.by
  %.lcssa1329.sink = phi i64 [ 0, %bb.by ], [ %i.ds, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit" ]
  store i16 %i.dp, ptr %.sroa.10615.0..sroa_idx, align 8, !alias.scope !247262
  store i64 %.lcssa1329.sink, ptr %.sroa.12616.0..sroa_idx, align 8, !alias.scope !247260
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread"

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread": ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread.sink.split", %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9571)
  call fastcc void @"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..IntoIter$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h8aa6b66302fed524E"(ptr noalias noundef align 8 dereferenceable(64) %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %.sroa.0694.0.copyload = load ptr, ptr %i.ar, align 8, !nonnull !57, !noundef !57 ; 6 uses
  %.sroa.2695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.2695.0.copyload = load i64, ptr %.sroa.2695.0..sroa_idx, align 8 ; 5 uses
  %.sroa.3697.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.3697.0.copyload = load i64, ptr %.sroa.3697.0..sroa_idx, align 8 ; 3 uses
  %.val13.i.i.i453 = load <16 x i8>, ptr %.sroa.0694.0.copyload, align 16, !noalias !247264
  %i.dv = icmp eq i64 %.sroa.2695.0.copyload, 0
  br i1 %i.dv, label %bb.p, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i454

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i454: ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread"
  %i.dw = icmp slt i64 %.sroa.2695.0.copyload, 576460752303423487
  call void @llvm.assume(i1 %i.dw)
  %i.dx = shl i64 %.sroa.2695.0.copyload, 5       ; 2 uses
  %i.dy = add i64 %i.dx, 32                       ; 2 uses
  %i.dz = add nsw i64 %.sroa.2695.0.copyload, 17
  %i.ea = add i64 %i.dz, %i.dy                    ; 3 uses
  %i.eb = icmp uge i64 %i.ea, %i.dy
  call void @llvm.assume(i1 %i.eb)
  %i.ec = icmp ult i64 %i.ea, 9223372036854775793
  call void @llvm.assume(i1 %i.ec)
  %i.ed = sub nuw nsw i64 -32, %i.dx
  %i.ee = getelementptr inbounds i8, ptr %.sroa.0694.0.copyload, i64 %i.ed
  br label %bb.p

bb.p:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i454, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread"
  %.sroa.5.sroa.0.0.i.i.i.i455 = phi i64 [ %i.ea, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i454 ], [ undef, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread" ]
  %.sroa.5.sroa.4.0.i.i.i.i456 = phi ptr [ %i.ee, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i454 ], [ undef, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread" ]
  %.sroa.0.0.i.i.i.i457 = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i454 ], [ 0, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread" ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0694.0.copyload, i64 16 ; 2 uses
  %i.eg = icmp sgt <16 x i8> %.val13.i.i.i453, splat (i8 -1) ; 2 uses
  %i.eh = getelementptr i8, ptr %.sroa.0694.0.copyload, i64 %.sroa.2695.0.copyload
  %i.ei = getelementptr i8, ptr %i.eh, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 %.sroa.0.0.i.i.i.i457, ptr %i.ad, align 8
  %.sroa.5660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i455, ptr %.sroa.5660.0..sroa_idx, align 8
  %.sroa.6661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i456, ptr %.sroa.6661.0..sroa_idx, align 8
  %.sroa.7662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  store ptr %.sroa.0694.0.copyload, ptr %.sroa.7662.0..sroa_idx, align 8
  %.sroa.8663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  store ptr %i.ef, ptr %.sroa.8663.0..sroa_idx, align 8
  %.sroa.9664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr %i.ei, ptr %.sroa.9664.0..sroa_idx, align 8
  %.sroa.10665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 17 uses
  store <16 x i1> %i.eg, ptr %.sroa.10665.0..sroa_idx, align 8
  %.sroa.12667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 17 uses
  store i64 %.sroa.3697.0.copyload, ptr %.sroa.12667.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9580)
  %i.ej = icmp eq i64 %.sroa.3697.0.copyload, 0
  br i1 %i.ej, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit478.thread", label %.lr.ph1010

.lr.ph1010:                                       ; preds = %bb.p
  %.sroa.10665.0..sroa_idx.promoted.cast = bitcast <16 x i1> %i.eg to i16
  %.sroa.9580.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.val432 = load ptr, ptr %3, align 8, !nonnull !57, !align !61
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.el = load i64, ptr %i.ek, align 8            ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.en = load i32, ptr %i.em, align 8            ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %.sroa.5245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.6252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.eu = load i64, ptr %i.et, align 8            ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.5245.0..sroa_idx246 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.6252.0..sroa_idx253 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.4276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.084.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %.sroa.385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %.sroa.4281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4281.sroa.4.sroa.4.0..sroa.4281.sroa.4.0..sroa.4281.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.4281.sroa.4.sroa.5.0..sroa.4281.sroa.4.0..sroa.4281.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.4281.sroa.5.0..sroa.4281.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
end_hunk_1
begin_hunk_2_@"_ZN9cellulite7builder38_$LT$impl$u20$cellulite..Cellulite$GT$33insert_chunk_of_items_recursively17h7e1404448bc2594aE":bb.a

bb.d:                                             ; preds = %bb.c
  %.sroa.6160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4164.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6160.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  store i64 %i.au, ptr %0, align 8
  %.sroa.2162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0151.0.copyload, ptr %.sroa.2162.0..sroa_idx, align 8
  %.sroa.3163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4152.sroa.0.0.copyload, ptr %.sroa.3163.0..sroa_idx, align 8
  %.sroa.3163.sroa.2.0..sroa.3163.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4152.sroa.4.0.copyload, ptr %.sroa.3163.sroa.2.0..sroa.3163.0..sroa_idx.sroa_idx, align 8
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h616b4bae99467afdE.exit534"

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %.not360 = icmp eq i64 %.sroa.0151.0.copyload, -9223372036854775808
  br i1 %.not360, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.aw = icmp ult i64 %.sroa.4152.sroa.4.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.aw)
  %i.ax = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 9 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 4 uses
  %i.az = load i8, ptr %i.ay, align 8, !range !74, !noalias !247431, !noundef !57
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i", !prof !58

._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i: ; preds = %bb.f
  %.pre.i.i = load i64, ptr %i.ax, align 8, !noalias !247432 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !247432
  %i.bb = insertvalue { i64, i64 } poison, i64 %.pre.i.i, 0
  %i.bc = insertvalue { i64, i64 } %i.bb, i64 %.pre1.i.i, 1
  br label %bb.j

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i": ; preds = %bb.f
  %i.bd = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.i     ; 3 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i"
  %i.be = extractvalue { i64, i64 } %i.bd, 0
  %i.bf = extractvalue { i64, i64 } %i.bd, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !noalias !247433
  store i8 1, ptr %i.ay, align 8, !noalias !247433
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  store i64 11, ptr %0, align 8
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h616b4bae99467afdE.exit534"

.thread741.thread906:                             ; preds = %bb.r, %.thread741.thread, %bb.i
  %.pn409 = phi { ptr, i32 } [ %i.bj, %bb.i ], [ %.pn407740, %.thread741.thread ], [ %.pn391, %bb.r ] ; 2 uses
  %i.bh = icmp eq i64 %.sroa.0151.0.copyload, 0
  br i1 %i.bh, label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h616b4bae99467afdE.exit", label %bb.h

bb.h:                                             ; preds = %.thread741.thread906
  %i.bi = shl nuw i64 %.sroa.0151.0.copyload, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4152.sroa.0.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4152.sroa.0.0.copyload, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 8) #77
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h616b4bae99467afdE.exit"

bb.i:                                             ; preds = %bb.j, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i"
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.thread741.thread906

bb.j:                                             ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i
  %i.bk = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i ], [ %i.be, %.noexc ]
  %.merged.i = phi { i64, i64 } [ %i.bc, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i ], [ %i.bd, %.noexc ] ; 2 uses
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.ax, align 8, !noalias !247432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke fastcc void @_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h044c0bb2e18f3ec5E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, i64 noundef 32, i64 noundef range(i64 0, 1152921504606846976) %.sroa.4152.sroa.4.0.copyload, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.bm = extractvalue { i64, i64 } %.merged.i, 1
  %i.bn = extractvalue { i64, i64 } %.merged.i, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.bn, ptr %i.bo, align 8, !alias.scope !247434
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.bm, ptr %i.bp, align 8, !alias.scope !247434
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.bq = load i8, ptr %i.ay, align 8, !range !74, !noalias !247435, !noundef !57
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i438, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i436", !prof !58

._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i438: ; preds = %bb.k
  %.pre.i.i439 = load i64, ptr %i.ax, align 8, !noalias !247436
  %.phi.trans.insert.i.i440 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.pre1.i.i441 = load i64, ptr %.phi.trans.insert.i.i440, align 8, !noalias !247436
  br label %bb.l

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i436": ; preds = %bb.k
  %i.bs = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc442 unwind label %.thread733 ; 2 uses

.noexc442:                                        ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i436"
  %i.bt = extractvalue { i64, i64 } %i.bs, 0
  %i.bu = extractvalue { i64, i64 } %i.bs, 1      ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !noalias !247437
  store i8 1, ptr %i.ay, align 8, !noalias !247437
  br label %bb.l

.thread733:                                       ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i436"
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.thread741.thread

bb.l:                                             ; preds = %.noexc442, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i438
  %.pre-phi1148 = phi i64 [ %i.bu, %.noexc442 ], [ %.pre1.i.i441, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i438 ]
  %.pre-phi = phi i64 [ %i.bt, %.noexc442 ], [ %.pre.i.i439, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i438 ] ; 2 uses
  %i.bx = add i64 %.pre-phi, 1
  store i64 %i.bx, ptr %i.ax, align 8, !noalias !247436
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) @30, i64 32, i1 false)
  %.sroa.4166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i64 %.pre-phi, ptr %.sroa.4166.0..sroa_idx, align 8
  %.sroa.5167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store i64 %.pre-phi1148, ptr %.sroa.5167.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4152.sroa.0.0.copyload) ]
  %.idx = shl nuw nsw i64 %.sroa.4152.sroa.4.0.copyload, 3
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.4152.sroa.0.0.copyload, i64 %.idx
  %i.bz = icmp eq i64 %.sroa.4152.sroa.4.0.copyload, 0
  br i1 %i.bz, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %.sroa.0349.1978 = getelementptr inbounds nuw i8, ptr %.sroa.4152.sroa.0.0.copyload, i64 8
  %.val434 = load ptr, ptr %3, align 8, !nonnull !57, !align !61, !noundef !57
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !57 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw [40 x i8], ptr %i.cb, i64 %i.cd
  %.sroa.016.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %.sroa.317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.4172.sroa.4.sroa.4.0..sroa.4172.sroa.4.0..sroa.4172.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.4172.sroa.4.sroa.5.0..sroa.4172.sroa.4.0..sroa.4172.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.sroa.4172.sroa.5.0..sroa.4172.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %.sroa.4172.sroa.6.0..sroa.4172.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  %.sroa.5173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.432.sroa.4.sroa.4.0..sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.432.sroa.4.sroa.5.0..sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %.sroa.432.sroa.5.0..sroa.432.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %.sroa.432.sroa.6.0..sroa.432.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 44
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %.sroa.4642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cf = insertelement <2 x ptr> poison, ptr %i.cb, i64 0
  %i.cg = insertelement <2 x ptr> %i.cf, ptr %i.ce, i64 1
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.cg
  %.sroa.0349.1980 = phi ptr [ %.sroa.0349.1978, %.lr.ph ], [ %.sroa.0349.1, %bb.cg ] ; 3 uses
  %.sroa.0349.0979 = phi ptr [ %.sroa.4152.sroa.0.0.copyload, %.lr.ph ], [ %.sroa.0349.1980, %bb.cg ]
  %i.ch = load i64, ptr %.sroa.0349.0979, align 8, !range !90, !noundef !57 ; 3 uses
  %i.ci = invoke noundef zeroext i1 @_ZN5milli20must_stop_processing18MustStopProcessing3get17h9b247b7d9f64713eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val434)
          to label %"_ZN5milli6update3new7indexer5index28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1c685de4439ab88aE.exit" unwind label %.thread758

._crit_edge:                                      ; preds = %bb.cg
  %.sroa.0689.0.copyload.pre = load ptr, ptr %i.aq, align 8 ; 4 uses
  %.sroa.2690.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.2690.0.copyload.pre = load i64, ptr %.sroa.2690.0..sroa_idx.phi.trans.insert, align 8 ; 5 uses
  %.sroa.3692.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.3692.0.copyload.pre = load i64, ptr %.sroa.3692.0..sroa_idx.phi.trans.insert, align 8 ; 2 uses
  %.val13.i.i.i = load <16 x i8>, ptr %.sroa.0689.0.copyload.pre, align 16, !noalias !247438 ; 2 uses
  %i.cj = icmp eq i64 %.sroa.2690.0.copyload.pre, 0
  br i1 %i.cj, label %._crit_edge.thread, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %._crit_edge
  %i.ck = icmp slt i64 %.sroa.2690.0.copyload.pre, 576460752303423487
  call void @llvm.assume(i1 %i.ck)
  %i.cl = shl i64 %.sroa.2690.0.copyload.pre, 5   ; 2 uses
  %i.cm = add i64 %i.cl, 32                       ; 2 uses
  %i.cn = add nsw i64 %.sroa.2690.0.copyload.pre, 17
  %i.co = add i64 %i.cn, %i.cm                    ; 3 uses
  %i.cp = icmp uge i64 %i.co, %i.cm
  call void @llvm.assume(i1 %i.cp)
  %i.cq = icmp ult i64 %i.co, 9223372036854775793
  call void @llvm.assume(i1 %i.cq)
  %i.cr = sub nuw nsw i64 -32, %i.cl
  %i.cs = getelementptr inbounds i8, ptr %.sroa.0689.0.copyload.pre, i64 %i.cr
  br label %._crit_edge.thread

.thread758:                                       ; preds = %bb.cb, %bb.m
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread741

._crit_edge.thread:                               ; preds = %bb.l, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, %._crit_edge
  %.val13.i.i.i1190 = phi <16 x i8> [ %.val13.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ %.val13.i.i.i, %._crit_edge ], [ splat (i8 -1), %bb.l ]
  %.sroa.0689.0.copyload1189 = phi ptr [ %.sroa.0689.0.copyload.pre, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ %.sroa.0689.0.copyload.pre, %._crit_edge ], [ @29, %bb.l ] ; 4 uses
  %.sroa.2690.0.copyload1188 = phi i64 [ %.sroa.2690.0.copyload.pre, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ 0, %._crit_edge ], [ 0, %bb.l ]
  %.sroa.3692.0.copyload1187 = phi i64 [ %.sroa.3692.0.copyload.pre, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ %.sroa.3692.0.copyload.pre, %._crit_edge ], [ 0, %bb.l ] ; 3 uses
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %i.co, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %._crit_edge ], [ undef, %bb.l ]
  %.sroa.5.sroa.4.0.i.i.i.i = phi ptr [ %i.cs, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %._crit_edge ], [ undef, %bb.l ]
  %.sroa.0.0.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ 0, %._crit_edge ], [ 0, %bb.l ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0689.0.copyload1189, i64 16 ; 2 uses
  %i.cu = icmp sgt <16 x i8> %.val13.i.i.i1190, splat (i8 -1) ; 2 uses
  %i.cv = getelementptr i8, ptr %.sroa.0689.0.copyload1189, i64 %.sroa.2690.0.copyload1188
  %i.cw = getelementptr i8, ptr %i.cv, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.al, align 8
  %.sroa.5610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i, ptr %.sroa.5610.0..sroa_idx, align 8
  %.sroa.6611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i, ptr %.sroa.6611.0..sroa_idx, align 8
  %.sroa.7612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  store ptr %.sroa.0689.0.copyload1189, ptr %.sroa.7612.0..sroa_idx, align 8
  %.sroa.8613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  store ptr %i.ct, ptr %.sroa.8613.0..sroa_idx, align 8
  %.sroa.9614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store ptr %i.cw, ptr %.sroa.9614.0..sroa_idx, align 8
  %.sroa.10615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 6 uses
  store <16 x i1> %i.cu, ptr %.sroa.10615.0..sroa_idx, align 8
  %.sroa.12616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 56 ; 6 uses
  store i64 %.sroa.3692.0.copyload1187, ptr %.sroa.12616.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9571)
  %i.cx = icmp eq i64 %.sroa.3692.0.copyload1187, 0
  br i1 %i.cx, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread", label %.lr.ph988

.lr.ph988:                                        ; preds = %._crit_edge.thread
  %.sroa.10615.0..sroa_idx.promoted.cast = bitcast <16 x i1> %i.cu to i16
  %.sroa.9571.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.val433 = load ptr, ptr %3, align 8, !nonnull !57, !align !61
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cz = load i64, ptr %i.cy, align 8            ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.db = load i32, ptr %i.da, align 8            ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %.sroa.4212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.sroa.4218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %.sroa.5221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph988, %bb.by
  %i.df = phi i64 [ %.sroa.3692.0.copyload1187, %.lr.ph988 ], [ %i.ds, %bb.by ]
  %i.dg = phi i16 [ %.sroa.10615.0..sroa_idx.promoted.cast, %.lr.ph988 ], [ %i.dp, %bb.by ] ; 2 uses
  %.pre.i.i445982986 = phi ptr [ %.sroa.0689.0.copyload1189, %.lr.ph988 ], [ %.pre.i.i445981, %bb.by ] ; 2 uses
  %.promoted15.i.i984985 = phi ptr [ %i.ct, %.lr.ph988 ], [ %.promoted15.i.i983, %bb.by ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !247439)
  call void @llvm.experimental.noalias.scope.decl(metadata !247440)
  %.not13.i.i = icmp eq i16 %i.dg, 0
  br i1 %.not13.i.i, label %.lr.ph.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit"

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  store ptr %i.dl, ptr %.sroa.8613.0..sroa_idx, align 8, !alias.scope !247441
  store ptr %i.dk, ptr %.sroa.7612.0..sroa_idx, align 8, !alias.scope !247441
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit"

.lr.ph.i.i:                                       ; preds = %bb.n, %.lr.ph.i.i
  %i.dh = phi ptr [ %i.dl, %.lr.ph.i.i ], [ %.promoted15.i.i984985, %bb.n ] ; 2 uses
  %i.di = phi ptr [ %i.dk, %.lr.ph.i.i ], [ %.pre.i.i445982986, %bb.n ]
  %.val911.i.i = load <16 x i8>, ptr %i.dh, align 16, !noalias !247442
  %i.dj = icmp sgt <16 x i8> %.val911.i.i, splat (i8 -1)
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 -512 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 3 uses
  %.cast.i.i = bitcast <16 x i1> %i.dj to i16     ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.thread840:                                       ; preds = %bb.bu, %bb.ca
  %.sink = phi ptr [ %i.aj, %bb.bu ], [ %i.ak, %bb.ca ]
  %.pn398 = phi { ptr, i32 } [ %i.hq, %bb.bu ], [ %lpad.thr_comm847, %bb.ca ]
  store i16 %i.dp, ptr %.sroa.10615.0..sroa_idx, align 8, !alias.scope !247441
  store i64 %i.ds, ptr %.sroa.12616.0..sroa_idx, align 8, !alias.scope !247439
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h04d6bb29c4479ffdE"(ptr noalias noundef align 8 dereferenceable(24) %.sink) #79
  call fastcc void @"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..IntoIter$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h8aa6b66302fed524E"(ptr noalias noundef align 8 dereferenceable(64) %i.al) #79
  br label %.thread741.thread

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit": ; preds = %bb.n, %._crit_edge.i.i
  %.promoted15.i.i983 = phi ptr [ %i.dl, %._crit_edge.i.i ], [ %.promoted15.i.i984985, %bb.n ]
  %.pre.i.i445981 = phi ptr [ %i.dk, %._crit_edge.i.i ], [ %.pre.i.i445982986, %bb.n ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.dg, %bb.n ] ; 3 uses
  %i.dm = add i16 %.lcssa.i.i, -1
  %i.dn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.do = zext nneg i16 %i.dn to i64
  %i.dp = and i16 %i.dm, %.lcssa.i.i              ; 6 uses
  %i.dq = sub nsw i64 0, %i.do
  %i.dr = getelementptr inbounds [32 x i8], ptr %.pre.i.i445981, i64 %i.dq ; 3 uses
  %i.ds = add i64 %i.df, -1                       ; 7 uses
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 -32
  %.sroa.0569.0.copyload = load i64, ptr %i.dt, align 8, !noalias !247439 ; 2 uses
  %.sroa.6570.0..sroa_idx = getelementptr inbounds i8, ptr %i.dr, i64 -24
  %.sroa.6570.0.copyload = load i64, ptr %.sroa.6570.0..sroa_idx, align 8, !noalias !247439 ; 2 uses
  %.sroa.9571.0..sroa_idx = getelementptr inbounds i8, ptr %i.dr, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9571, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9571.0..sroa_idx, i64 16, i1 false), !noalias !247439
  %.not362 = icmp eq i64 %.sroa.6570.0.copyload, -9223372036854775808
  br i1 %.not362, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread.sink.split", label %bb.o

bb.o:                                             ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i64 %.sroa.6570.0.copyload, ptr %i.ak, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9571.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9571, i64 16, i1 false)
  %i.du = invoke noundef zeroext i1 @_ZN5milli20must_stop_processing18MustStopProcessing3get17h9b247b7d9f64713eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val433)
          to label %"_ZN5milli6update3new7indexer5index28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1c685de4439ab88aE.exit447" unwind label %bb.ca

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread.sink.split": ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit", %bb.by
  %.lcssa1329.sink = phi i64 [ 0, %bb.by ], [ %i.ds, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit" ]
  store i16 %i.dp, ptr %.sroa.10615.0..sroa_idx, align 8, !alias.scope !247441
  store i64 %.lcssa1329.sink, ptr %.sroa.12616.0..sroa_idx, align 8, !alias.scope !247439
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread"

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread": ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread.sink.split", %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9571)
  call fastcc void @"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..IntoIter$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h8aa6b66302fed524E"(ptr noalias noundef align 8 dereferenceable(64) %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %.sroa.0694.0.copyload = load ptr, ptr %i.ar, align 8, !nonnull !57, !noundef !57 ; 6 uses
  %.sroa.2695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.2695.0.copyload = load i64, ptr %.sroa.2695.0..sroa_idx, align 8 ; 5 uses
  %.sroa.3697.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.3697.0.copyload = load i64, ptr %.sroa.3697.0..sroa_idx, align 8 ; 3 uses
  %.val13.i.i.i453 = load <16 x i8>, ptr %.sroa.0694.0.copyload, align 16, !noalias !247443
  %i.dv = icmp eq i64 %.sroa.2695.0.copyload, 0
  br i1 %i.dv, label %bb.p, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i454

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i454: ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread"
  %i.dw = icmp slt i64 %.sroa.2695.0.copyload, 576460752303423487
  call void @llvm.assume(i1 %i.dw)
  %i.dx = shl i64 %.sroa.2695.0.copyload, 5       ; 2 uses
  %i.dy = add i64 %i.dx, 32                       ; 2 uses
  %i.dz = add nsw i64 %.sroa.2695.0.copyload, 17
  %i.ea = add i64 %i.dz, %i.dy                    ; 3 uses
  %i.eb = icmp uge i64 %i.ea, %i.dy
  call void @llvm.assume(i1 %i.eb)
  %i.ec = icmp ult i64 %i.ea, 9223372036854775793
  call void @llvm.assume(i1 %i.ec)
  %i.ed = sub nuw nsw i64 -32, %i.dx
  %i.ee = getelementptr inbounds i8, ptr %.sroa.0694.0.copyload, i64 %i.ed
  br label %bb.p

bb.p:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i454, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread"
  %.sroa.5.sroa.0.0.i.i.i.i455 = phi i64 [ %i.ea, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i454 ], [ undef, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread" ]
  %.sroa.5.sroa.4.0.i.i.i.i456 = phi ptr [ %i.ee, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i454 ], [ undef, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread" ]
  %.sroa.0.0.i.i.i.i457 = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i454 ], [ 0, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread" ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0694.0.copyload, i64 16 ; 2 uses
  %i.eg = icmp sgt <16 x i8> %.val13.i.i.i453, splat (i8 -1) ; 2 uses
  %i.eh = getelementptr i8, ptr %.sroa.0694.0.copyload, i64 %.sroa.2695.0.copyload
  %i.ei = getelementptr i8, ptr %i.eh, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 %.sroa.0.0.i.i.i.i457, ptr %i.ad, align 8
  %.sroa.5660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i455, ptr %.sroa.5660.0..sroa_idx, align 8
  %.sroa.6661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i456, ptr %.sroa.6661.0..sroa_idx, align 8
  %.sroa.7662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  store ptr %.sroa.0694.0.copyload, ptr %.sroa.7662.0..sroa_idx, align 8
  %.sroa.8663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  store ptr %i.ef, ptr %.sroa.8663.0..sroa_idx, align 8
  %.sroa.9664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr %i.ei, ptr %.sroa.9664.0..sroa_idx, align 8
  %.sroa.10665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 17 uses
  store <16 x i1> %i.eg, ptr %.sroa.10665.0..sroa_idx, align 8
  %.sroa.12667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 17 uses
  store i64 %.sroa.3697.0.copyload, ptr %.sroa.12667.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9580)
  %i.ej = icmp eq i64 %.sroa.3697.0.copyload, 0
  br i1 %i.ej, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit478.thread", label %.lr.ph1010

.lr.ph1010:                                       ; preds = %bb.p
  %.sroa.10665.0..sroa_idx.promoted.cast = bitcast <16 x i1> %i.eg to i16
  %.sroa.9580.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.val432 = load ptr, ptr %3, align 8, !nonnull !57, !align !61
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.el = load i64, ptr %i.ek, align 8            ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.en = load i32, ptr %i.em, align 8            ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %.sroa.5245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.6252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.eu = load i64, ptr %i.et, align 8            ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.5245.0..sroa_idx246 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.6252.0..sroa_idx253 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.4276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.084.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %.sroa.385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %.sroa.4281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4281.sroa.4.sroa.4.0..sroa.4281.sroa.4.0..sroa.4281.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.4281.sroa.4.sroa.5.0..sroa.4281.sroa.4.0..sroa.4281.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.4281.sroa.5.0..sroa.4281.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
end_hunk_2
begin_hunk_3_@"_ZN9cellulite7builder38_$LT$impl$u20$cellulite..Cellulite$GT$33insert_chunk_of_items_recursively17hc7aeaeaa9e5e8feeE":bb.a

bb.d:                                             ; preds = %bb.c
  %.sroa.6160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4164.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6160.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  store i64 %i.au, ptr %0, align 8
  %.sroa.2162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0151.0.copyload, ptr %.sroa.2162.0..sroa_idx, align 8
  %.sroa.3163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4152.sroa.0.0.copyload, ptr %.sroa.3163.0..sroa_idx, align 8
  %.sroa.3163.sroa.2.0..sroa.3163.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4152.sroa.4.0.copyload, ptr %.sroa.3163.sroa.2.0..sroa.3163.0..sroa_idx.sroa_idx, align 8
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h616b4bae99467afdE.exit534"

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %.not360 = icmp eq i64 %.sroa.0151.0.copyload, -9223372036854775808
  br i1 %.not360, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.aw = icmp ult i64 %.sroa.4152.sroa.4.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.aw)
  %i.ax = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 9 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 4 uses
  %i.az = load i8, ptr %i.ay, align 8, !range !74, !noalias !247610, !noundef !57
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i", !prof !58

._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i: ; preds = %bb.f
  %.pre.i.i = load i64, ptr %i.ax, align 8, !noalias !247611 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !247611
  %i.bb = insertvalue { i64, i64 } poison, i64 %.pre.i.i, 0
  %i.bc = insertvalue { i64, i64 } %i.bb, i64 %.pre1.i.i, 1
  br label %bb.j

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i": ; preds = %bb.f
  %i.bd = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.i     ; 3 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i"
  %i.be = extractvalue { i64, i64 } %i.bd, 0
  %i.bf = extractvalue { i64, i64 } %i.bd, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !noalias !247612
  store i8 1, ptr %i.ay, align 8, !noalias !247612
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  store i64 11, ptr %0, align 8
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h616b4bae99467afdE.exit534"

.thread741.thread906:                             ; preds = %bb.r, %.thread741.thread, %bb.i
  %.pn409 = phi { ptr, i32 } [ %i.bj, %bb.i ], [ %.pn407740, %.thread741.thread ], [ %.pn391, %bb.r ] ; 2 uses
  %i.bh = icmp eq i64 %.sroa.0151.0.copyload, 0
  br i1 %i.bh, label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h616b4bae99467afdE.exit", label %bb.h

bb.h:                                             ; preds = %.thread741.thread906
  %i.bi = shl nuw i64 %.sroa.0151.0.copyload, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4152.sroa.0.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4152.sroa.0.0.copyload, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 8) #77
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h616b4bae99467afdE.exit"

bb.i:                                             ; preds = %bb.j, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i"
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.thread741.thread906

bb.j:                                             ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i
  %i.bk = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i ], [ %i.be, %.noexc ]
  %.merged.i = phi { i64, i64 } [ %i.bc, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i ], [ %i.bd, %.noexc ] ; 2 uses
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.ax, align 8, !noalias !247611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke fastcc void @_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h044c0bb2e18f3ec5E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, i64 noundef 32, i64 noundef range(i64 0, 1152921504606846976) %.sroa.4152.sroa.4.0.copyload, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.bm = extractvalue { i64, i64 } %.merged.i, 1
  %i.bn = extractvalue { i64, i64 } %.merged.i, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.bn, ptr %i.bo, align 8, !alias.scope !247613
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.bm, ptr %i.bp, align 8, !alias.scope !247613
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.bq = load i8, ptr %i.ay, align 8, !range !74, !noalias !247614, !noundef !57
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i438, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i436", !prof !58

._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i438: ; preds = %bb.k
  %.pre.i.i439 = load i64, ptr %i.ax, align 8, !noalias !247615
  %.phi.trans.insert.i.i440 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.pre1.i.i441 = load i64, ptr %.phi.trans.insert.i.i440, align 8, !noalias !247615
  br label %bb.l

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i436": ; preds = %bb.k
  %i.bs = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc442 unwind label %.thread733 ; 2 uses

.noexc442:                                        ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i436"
  %i.bt = extractvalue { i64, i64 } %i.bs, 0
  %i.bu = extractvalue { i64, i64 } %i.bs, 1      ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !noalias !247616
  store i8 1, ptr %i.ay, align 8, !noalias !247616
  br label %bb.l

.thread733:                                       ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i436"
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.thread741.thread

bb.l:                                             ; preds = %.noexc442, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i438
  %.pre-phi1148 = phi i64 [ %i.bu, %.noexc442 ], [ %.pre1.i.i441, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i438 ]
  %.pre-phi = phi i64 [ %i.bt, %.noexc442 ], [ %.pre.i.i439, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i438 ] ; 2 uses
  %i.bx = add i64 %.pre-phi, 1
  store i64 %i.bx, ptr %i.ax, align 8, !noalias !247615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) @30, i64 32, i1 false)
  %.sroa.4166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i64 %.pre-phi, ptr %.sroa.4166.0..sroa_idx, align 8
  %.sroa.5167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store i64 %.pre-phi1148, ptr %.sroa.5167.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4152.sroa.0.0.copyload) ]
  %.idx = shl nuw nsw i64 %.sroa.4152.sroa.4.0.copyload, 3
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.4152.sroa.0.0.copyload, i64 %.idx
  %i.bz = icmp eq i64 %.sroa.4152.sroa.4.0.copyload, 0
  br i1 %i.bz, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %.sroa.0349.1978 = getelementptr inbounds nuw i8, ptr %.sroa.4152.sroa.0.0.copyload, i64 8
  %.val416 = load ptr, ptr %3, align 8, !nonnull !57, !align !61, !noundef !57
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !57 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw [40 x i8], ptr %i.cb, i64 %i.cd
  %.sroa.016.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %.sroa.317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.4172.sroa.4.sroa.4.0..sroa.4172.sroa.4.0..sroa.4172.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.4172.sroa.4.sroa.5.0..sroa.4172.sroa.4.0..sroa.4172.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.sroa.4172.sroa.5.0..sroa.4172.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %.sroa.4172.sroa.6.0..sroa.4172.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  %.sroa.5173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.432.sroa.4.sroa.4.0..sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.432.sroa.4.sroa.5.0..sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %.sroa.432.sroa.5.0..sroa.432.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %.sroa.432.sroa.6.0..sroa.432.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 44
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %.sroa.4642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cf = insertelement <2 x ptr> poison, ptr %i.cb, i64 0
  %i.cg = insertelement <2 x ptr> %i.cf, ptr %i.ce, i64 1
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.cg
  %.sroa.0349.1980 = phi ptr [ %.sroa.0349.1978, %.lr.ph ], [ %.sroa.0349.1, %bb.cg ] ; 3 uses
  %.sroa.0349.0979 = phi ptr [ %.sroa.4152.sroa.0.0.copyload, %.lr.ph ], [ %.sroa.0349.1980, %bb.cg ]
  %i.ch = load i64, ptr %.sroa.0349.0979, align 8, !range !90, !noundef !57 ; 3 uses
  %i.ci = invoke noundef zeroext i1 @_ZN5milli20must_stop_processing18MustStopProcessing3get17h9b247b7d9f64713eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val416)
          to label %"_ZN5milli6update3new7indexer5index28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hf593871f84034924E.exit" unwind label %.thread758

._crit_edge:                                      ; preds = %bb.cg
  %.sroa.0689.0.copyload.pre = load ptr, ptr %i.aq, align 8 ; 4 uses
  %.sroa.2690.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.2690.0.copyload.pre = load i64, ptr %.sroa.2690.0..sroa_idx.phi.trans.insert, align 8 ; 5 uses
  %.sroa.3692.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.3692.0.copyload.pre = load i64, ptr %.sroa.3692.0..sroa_idx.phi.trans.insert, align 8 ; 2 uses
  %.val13.i.i.i = load <16 x i8>, ptr %.sroa.0689.0.copyload.pre, align 16, !noalias !247617 ; 2 uses
  %i.cj = icmp eq i64 %.sroa.2690.0.copyload.pre, 0
  br i1 %i.cj, label %._crit_edge.thread, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %._crit_edge
  %i.ck = icmp slt i64 %.sroa.2690.0.copyload.pre, 576460752303423487
  call void @llvm.assume(i1 %i.ck)
  %i.cl = shl i64 %.sroa.2690.0.copyload.pre, 5   ; 2 uses
  %i.cm = add i64 %i.cl, 32                       ; 2 uses
  %i.cn = add nsw i64 %.sroa.2690.0.copyload.pre, 17
  %i.co = add i64 %i.cn, %i.cm                    ; 3 uses
  %i.cp = icmp uge i64 %i.co, %i.cm
  call void @llvm.assume(i1 %i.cp)
  %i.cq = icmp ult i64 %i.co, 9223372036854775793
  call void @llvm.assume(i1 %i.cq)
  %i.cr = sub nuw nsw i64 -32, %i.cl
  %i.cs = getelementptr inbounds i8, ptr %.sroa.0689.0.copyload.pre, i64 %i.cr
  br label %._crit_edge.thread

.thread758:                                       ; preds = %bb.cb, %bb.m
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread741

._crit_edge.thread:                               ; preds = %bb.l, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, %._crit_edge
  %.val13.i.i.i1190 = phi <16 x i8> [ %.val13.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ %.val13.i.i.i, %._crit_edge ], [ splat (i8 -1), %bb.l ]
  %.sroa.0689.0.copyload1189 = phi ptr [ %.sroa.0689.0.copyload.pre, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ %.sroa.0689.0.copyload.pre, %._crit_edge ], [ @29, %bb.l ] ; 4 uses
  %.sroa.2690.0.copyload1188 = phi i64 [ %.sroa.2690.0.copyload.pre, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ 0, %._crit_edge ], [ 0, %bb.l ]
  %.sroa.3692.0.copyload1187 = phi i64 [ %.sroa.3692.0.copyload.pre, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ %.sroa.3692.0.copyload.pre, %._crit_edge ], [ 0, %bb.l ] ; 3 uses
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %i.co, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %._crit_edge ], [ undef, %bb.l ]
  %.sroa.5.sroa.4.0.i.i.i.i = phi ptr [ %i.cs, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %._crit_edge ], [ undef, %bb.l ]
  %.sroa.0.0.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ 0, %._crit_edge ], [ 0, %bb.l ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0689.0.copyload1189, i64 16 ; 2 uses
  %i.cu = icmp sgt <16 x i8> %.val13.i.i.i1190, splat (i8 -1) ; 2 uses
  %i.cv = getelementptr i8, ptr %.sroa.0689.0.copyload1189, i64 %.sroa.2690.0.copyload1188
  %i.cw = getelementptr i8, ptr %i.cv, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.al, align 8
  %.sroa.5610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i, ptr %.sroa.5610.0..sroa_idx, align 8
  %.sroa.6611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i, ptr %.sroa.6611.0..sroa_idx, align 8
  %.sroa.7612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  store ptr %.sroa.0689.0.copyload1189, ptr %.sroa.7612.0..sroa_idx, align 8
  %.sroa.8613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  store ptr %i.ct, ptr %.sroa.8613.0..sroa_idx, align 8
  %.sroa.9614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store ptr %i.cw, ptr %.sroa.9614.0..sroa_idx, align 8
  %.sroa.10615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 6 uses
  store <16 x i1> %i.cu, ptr %.sroa.10615.0..sroa_idx, align 8
  %.sroa.12616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 56 ; 6 uses
  store i64 %.sroa.3692.0.copyload1187, ptr %.sroa.12616.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9571)
  %i.cx = icmp eq i64 %.sroa.3692.0.copyload1187, 0
  br i1 %i.cx, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread", label %.lr.ph988

.lr.ph988:                                        ; preds = %._crit_edge.thread
  %.sroa.10615.0..sroa_idx.promoted.cast = bitcast <16 x i1> %i.cu to i16
  %.sroa.9571.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.val415 = load ptr, ptr %3, align 8, !nonnull !57, !align !61
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cz = load i64, ptr %i.cy, align 8            ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.db = load i32, ptr %i.da, align 8            ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %.sroa.4212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.sroa.4218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %.sroa.5221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph988, %bb.by
  %i.df = phi i64 [ %.sroa.3692.0.copyload1187, %.lr.ph988 ], [ %i.ds, %bb.by ]
  %i.dg = phi i16 [ %.sroa.10615.0..sroa_idx.promoted.cast, %.lr.ph988 ], [ %i.dp, %bb.by ] ; 2 uses
  %.pre.i.i445982986 = phi ptr [ %.sroa.0689.0.copyload1189, %.lr.ph988 ], [ %.pre.i.i445981, %bb.by ] ; 2 uses
  %.promoted15.i.i984985 = phi ptr [ %i.ct, %.lr.ph988 ], [ %.promoted15.i.i983, %bb.by ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !247618)
  call void @llvm.experimental.noalias.scope.decl(metadata !247619)
  %.not13.i.i = icmp eq i16 %i.dg, 0
  br i1 %.not13.i.i, label %.lr.ph.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit"

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  store ptr %i.dl, ptr %.sroa.8613.0..sroa_idx, align 8, !alias.scope !247620
  store ptr %i.dk, ptr %.sroa.7612.0..sroa_idx, align 8, !alias.scope !247620
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit"

.lr.ph.i.i:                                       ; preds = %bb.n, %.lr.ph.i.i
  %i.dh = phi ptr [ %i.dl, %.lr.ph.i.i ], [ %.promoted15.i.i984985, %bb.n ] ; 2 uses
  %i.di = phi ptr [ %i.dk, %.lr.ph.i.i ], [ %.pre.i.i445982986, %bb.n ]
  %.val911.i.i = load <16 x i8>, ptr %i.dh, align 16, !noalias !247621
  %i.dj = icmp sgt <16 x i8> %.val911.i.i, splat (i8 -1)
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 -512 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 3 uses
  %.cast.i.i = bitcast <16 x i1> %i.dj to i16     ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.thread840:                                       ; preds = %bb.bu, %bb.ca
  %.sink = phi ptr [ %i.aj, %bb.bu ], [ %i.ak, %bb.ca ]
  %.pn398 = phi { ptr, i32 } [ %i.hq, %bb.bu ], [ %lpad.thr_comm847, %bb.ca ]
  store i16 %i.dp, ptr %.sroa.10615.0..sroa_idx, align 8, !alias.scope !247620
  store i64 %i.ds, ptr %.sroa.12616.0..sroa_idx, align 8, !alias.scope !247618
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17h04d6bb29c4479ffdE"(ptr noalias noundef align 8 dereferenceable(24) %.sink) #79
  call fastcc void @"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..IntoIter$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h8aa6b66302fed524E"(ptr noalias noundef align 8 dereferenceable(64) %i.al) #79
  br label %.thread741.thread

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit": ; preds = %bb.n, %._crit_edge.i.i
  %.promoted15.i.i983 = phi ptr [ %i.dl, %._crit_edge.i.i ], [ %.promoted15.i.i984985, %bb.n ]
  %.pre.i.i445981 = phi ptr [ %i.dk, %._crit_edge.i.i ], [ %.pre.i.i445982986, %bb.n ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.dg, %bb.n ] ; 3 uses
  %i.dm = add i16 %.lcssa.i.i, -1
  %i.dn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.do = zext nneg i16 %i.dn to i64
  %i.dp = and i16 %i.dm, %.lcssa.i.i              ; 6 uses
  %i.dq = sub nsw i64 0, %i.do
  %i.dr = getelementptr inbounds [32 x i8], ptr %.pre.i.i445981, i64 %i.dq ; 3 uses
  %i.ds = add i64 %i.df, -1                       ; 7 uses
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 -32
  %.sroa.0569.0.copyload = load i64, ptr %i.dt, align 8, !noalias !247618 ; 2 uses
  %.sroa.6570.0..sroa_idx = getelementptr inbounds i8, ptr %i.dr, i64 -24
  %.sroa.6570.0.copyload = load i64, ptr %.sroa.6570.0..sroa_idx, align 8, !noalias !247618 ; 2 uses
  %.sroa.9571.0..sroa_idx = getelementptr inbounds i8, ptr %i.dr, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9571, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9571.0..sroa_idx, i64 16, i1 false), !noalias !247618
  %.not362 = icmp eq i64 %.sroa.6570.0.copyload, -9223372036854775808
  br i1 %.not362, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread.sink.split", label %bb.o

bb.o:                                             ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i64 %.sroa.6570.0.copyload, ptr %i.ak, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9571.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9571, i64 16, i1 false)
  %i.du = invoke noundef zeroext i1 @_ZN5milli20must_stop_processing18MustStopProcessing3get17h9b247b7d9f64713eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val415)
          to label %"_ZN5milli6update3new7indexer5index28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hf593871f84034924E.exit447" unwind label %bb.ca

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread.sink.split": ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit", %bb.by
  %.lcssa1329.sink = phi i64 [ 0, %bb.by ], [ %i.ds, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit" ]
  store i16 %i.dp, ptr %.sroa.10615.0..sroa_idx, align 8, !alias.scope !247620
  store i64 %.lcssa1329.sink, ptr %.sroa.12616.0..sroa_idx, align 8, !alias.scope !247618
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread"

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread": ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread.sink.split", %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9571)
  call fastcc void @"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..IntoIter$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$GT$17h8aa6b66302fed524E"(ptr noalias noundef align 8 dereferenceable(64) %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %.sroa.0694.0.copyload = load ptr, ptr %i.ar, align 8, !nonnull !57, !noundef !57 ; 6 uses
  %.sroa.2695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.2695.0.copyload = load i64, ptr %.sroa.2695.0..sroa_idx, align 8 ; 5 uses
  %.sroa.3697.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.3697.0.copyload = load i64, ptr %.sroa.3697.0..sroa_idx, align 8 ; 3 uses
  %.val13.i.i.i453 = load <16 x i8>, ptr %.sroa.0694.0.copyload, align 16, !noalias !247622
  %i.dv = icmp eq i64 %.sroa.2695.0.copyload, 0
  br i1 %i.dv, label %bb.p, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i454

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i454: ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread"
  %i.dw = icmp slt i64 %.sroa.2695.0.copyload, 576460752303423487
  call void @llvm.assume(i1 %i.dw)
  %i.dx = shl i64 %.sroa.2695.0.copyload, 5       ; 2 uses
  %i.dy = add i64 %i.dx, 32                       ; 2 uses
  %i.dz = add nsw i64 %.sroa.2695.0.copyload, 17
  %i.ea = add i64 %i.dz, %i.dy                    ; 3 uses
  %i.eb = icmp uge i64 %i.ea, %i.dy
  call void @llvm.assume(i1 %i.eb)
  %i.ec = icmp ult i64 %i.ea, 9223372036854775793
  call void @llvm.assume(i1 %i.ec)
  %i.ed = sub nuw nsw i64 -32, %i.dx
  %i.ee = getelementptr inbounds i8, ptr %.sroa.0694.0.copyload, i64 %i.ed
  br label %bb.p

bb.p:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i454, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread"
  %.sroa.5.sroa.0.0.i.i.i.i455 = phi i64 [ %i.ea, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i454 ], [ undef, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread" ]
  %.sroa.5.sroa.4.0.i.i.i.i456 = phi ptr [ %i.ee, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i454 ], [ undef, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread" ]
  %.sroa.0.0.i.i.i.i457 = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i454 ], [ 0, %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit.thread" ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0694.0.copyload, i64 16 ; 2 uses
  %i.eg = icmp sgt <16 x i8> %.val13.i.i.i453, splat (i8 -1) ; 2 uses
  %i.eh = getelementptr i8, ptr %.sroa.0694.0.copyload, i64 %.sroa.2695.0.copyload
  %i.ei = getelementptr i8, ptr %i.eh, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 %.sroa.0.0.i.i.i.i457, ptr %i.ad, align 8
  %.sroa.5660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i455, ptr %.sroa.5660.0..sroa_idx, align 8
  %.sroa.6661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i456, ptr %.sroa.6661.0..sroa_idx, align 8
  %.sroa.7662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  store ptr %.sroa.0694.0.copyload, ptr %.sroa.7662.0..sroa_idx, align 8
  %.sroa.8663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  store ptr %i.ef, ptr %.sroa.8663.0..sroa_idx, align 8
  %.sroa.9664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr %i.ei, ptr %.sroa.9664.0..sroa_idx, align 8
  %.sroa.10665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 17 uses
  store <16 x i1> %i.eg, ptr %.sroa.10665.0..sroa_idx, align 8
  %.sroa.12667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 17 uses
  store i64 %.sroa.3697.0.copyload, ptr %.sroa.12667.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9580)
  %i.ej = icmp eq i64 %.sroa.3697.0.copyload, 0
  br i1 %i.ej, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3a4ed915d4f2762aE.exit478.thread", label %.lr.ph1010

.lr.ph1010:                                       ; preds = %bb.p
  %.sroa.10665.0..sroa_idx.promoted.cast = bitcast <16 x i1> %i.eg to i16
  %.sroa.9580.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.val = load ptr, ptr %3, align 8, !nonnull !57, !align !61
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.el = load i64, ptr %i.ek, align 8            ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.en = load i32, ptr %i.em, align 8            ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %.sroa.5245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.6252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.eu = load i64, ptr %i.et, align 8            ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.5245.0..sroa_idx246 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.6252.0..sroa_idx253 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.4276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.084.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %.sroa.385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %.sroa.4281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4281.sroa.4.sroa.4.0..sroa.4281.sroa.4.0..sroa.4281.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.4281.sroa.4.sroa.5.0..sroa.4281.sroa.4.0..sroa.4281.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.4281.sroa.5.0..sroa.4281.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
end_hunk_3
