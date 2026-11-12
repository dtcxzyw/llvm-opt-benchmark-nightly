Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17h3a1fcabc17cc65d3E":bb.a
  %i.ad = alloca [8 x i8], align 8                ; 6 uses
  tail call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h27838bc608a31ebcE"(ptr noalias noundef align 8 dereferenceable(5584) %0)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5564
  %i.af = load i32, ptr %i.ae, align 4, !noundef !52
  %.not = icmp eq i32 %i.af, -1
  br i1 %.not, label %bb.b, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$20compress_stream_fast17h8a1ddd90ef6bd700E.exit"

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$20compress_stream_fast17h8a1ddd90ef6bd700E.exit": ; preds = %bb.ba, %bb.az, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i135.i", %.thread25.i, %bb.aw, %bb.a, %bb.ku, %bb.d, %bb.b, %bb.b, %bb.kr
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ true, %bb.ku ], [ true, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i135.i" ], [ false, %bb.d ], [ false, %bb.kr ], [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.aw ], [ true, %.thread25.i ], [ true, %bb.az ], [ true, %bb.ba ]
  ret i1 %.sroa.0.0

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5560 ; 8 uses
  %i.ah = load i32, ptr %i.ag, align 8, !range !136, !noundef !52
  switch i32 %i.ah, label %bb.d [
    i32 3, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$20compress_stream_fast17h8a1ddd90ef6bd700E.exit"
    i32 4, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$20compress_stream_fast17h8a1ddd90ef6bd700E.exit"
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 7 uses
  %i.aj = load i32, ptr %i.ai, align 8, !noundef !52 ; 2 uses
  %switch = icmp ult i32 %i.aj, 2
  br i1 %switch, label %bb.e, label %bb.ay

bb.d:                                             ; preds = %bb.b
  %i.ak = load i64, ptr %1, align 8, !noundef !52
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.c, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$20compress_stream_fast17h8a1ddd90ef6bd700E.exit"

bb.e:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 230
  %i.an = load i8, ptr %i.am, align 2, !range !59, !noundef !52
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.ay, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38826)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.aq = load i32, ptr %i.ap, align 4, !alias.scope !38821, !noundef !52
  %i.ar = and i32 %i.aq, 63
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw i64 1, %i.as                    ; 3 uses
  %i.au = load i64, ptr %1, align 8, !alias.scope !38822, !noundef !52 ; 3 uses
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.at, i64 %i.au) ; 2 uses
  %.sroa.0.0.i105.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i, i64 131072) ; 5 uses
  %i.av = icmp eq i32 %i.aj, 1
  br i1 %i.av, label %bb.h, label %bb.r

.loopexit.i.loopexit.split-lp:                    ; preds = %.backedge.i, %bb.ae, %bb.ak, %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp.i:                             ; preds = %.invoke126.i, %.invoke.i, %bb.z, %bb.p, %.invoke128.i
  %.sroa.17.0.ph.i = phi i64 [ %.sroa.17.1.i, %.invoke126.i ], [ %.sroa.17.1.i, %.invoke.i ], [ 0, %.invoke128.i ], [ 0, %bb.p ], [ %.sroa.17.1.i, %bb.z ]
  %.sroa.010.0.ph.i = phi ptr [ %.sroa.010.1.i, %.invoke126.i ], [ %.sroa.010.1.i, %.invoke.i ], [ inttoptr (i64 1 to ptr), %.invoke128.i ], [ inttoptr (i64 1 to ptr), %bb.p ], [ %.sroa.010.1.i, %bb.z ]
  %.sroa.18.0.ph.i = phi i64 [ %.sroa.18.1.i, %.invoke126.i ], [ %.sroa.18.1.i, %.invoke.i ], [ 0, %.invoke128.i ], [ 1, %bb.p ], [ %.sroa.18.1.i, %bb.z ]
  %.sroa.0.019.ph.i = phi ptr [ %.sroa.0.1.i, %.invoke126.i ], [ %.sroa.0.1.i, %.invoke.i ], [ inttoptr (i64 4 to ptr), %.invoke128.i ], [ %i.bp, %bb.p ], [ %.sroa.0.1.i, %bb.z ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i.loopexit.split-lp
  %.sroa.17.0.i = phi i64 [ %.sroa.17.1.i, %.loopexit.i.loopexit.split-lp ], [ %.sroa.17.0.ph.i, %.loopexit.split-lp.i ]
  %.sroa.010.0.i = phi ptr [ %.sroa.010.1.i, %.loopexit.i.loopexit.split-lp ], [ %.sroa.010.0.ph.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.18.0.i = phi i64 [ %.sroa.18.1.i, %.loopexit.i.loopexit.split-lp ], [ %.sroa.18.0.ph.i, %.loopexit.split-lp.i ]
  %.sroa.0.019.i = phi ptr [ %.sroa.0.1.i, %.loopexit.i.loopexit.split-lp ], [ %.sroa.0.019.ph.i, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.i.loopexit.split-lp ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.aw = icmp eq i64 %.sroa.17.0.i, 0
  br i1 %i.aw, label %.thread.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i137.i"

bb.h:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 5 uses
  %.val88.i = load i64, ptr %i.ay, align 8, !alias.scope !38821, !noundef !52 ; 2 uses
  %i.az = icmp eq i64 %.val88.i, 0
  %i.ba = icmp ugt i64 %.sroa.0.0.i.i, 131071
  %or.cond1.i = and i1 %i.ba, %i.az
  br i1 %or.cond1.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38827
  %i.bb = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) 524288, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !38827 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.invoke128.i, label %bb.j

.invoke128.i:                                     ; preds = %bb.m, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit.i", %bb.i
  %i.bd = phi i64 [ 1, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit.i" ], [ 4, %bb.i ], [ 4, %bb.m ]
  %i.be = phi i64 [ 131072, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit.i" ], [ 524288, %bb.i ], [ %i.bo, %bb.m ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.bd, i64 %i.be, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.cont129.i unwind label %.loopexit.split-lp.i, !noalias !38828

.cont129.i:                                       ; preds = %.invoke128.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %.val102.i = load i64, ptr %i.ay, align 8, !alias.scope !38821, !noundef !52
  %i.bf = icmp eq i64 %.val102.i, 0
  br i1 %i.bf, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i106.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i106.i": ; preds = %bb.j
  %.val101.i = load ptr, ptr %i.ax, align 8, !alias.scope !38821, !nonnull !52, !noundef !52
  tail call void @mi_free(ptr noundef nonnull %.val101.i) #38, !noalias !38828
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i106.i", %bb.j
  store ptr %i.bb, ptr %i.ax, align 8, !alias.scope !38821
  store i64 131072, ptr %i.ay, align 8, !alias.scope !38821
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38829
  %i.bg = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) 131072, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !38829 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %.invoke128.i, label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit.i"
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %.val78.i = load i64, ptr %i.bj, align 8, !alias.scope !38821, !noundef !52
  %i.bk = icmp eq i64 %.val78.i, 0
  br i1 %i.bk, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit109.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i108.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i108.i": ; preds = %bb.k
  %.val77.i = load ptr, ptr %i.bi, align 8, !alias.scope !38821, !nonnull !52, !noundef !52
  tail call void @mi_free(ptr noundef nonnull %.val77.i) #38, !noalias !38828
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit109.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit109.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i108.i", %bb.k
  store ptr %i.bg, ptr %i.bi, align 8, !alias.scope !38821
  store i64 131072, ptr %i.bj, align 8, !alias.scope !38821
  %.val86.pre.i = load i64, ptr %i.ay, align 8, !alias.scope !38821
  br label %bb.l

bb.l:                                             ; preds = %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit109.i", %bb.h
  %i.bl = phi i64 [ %.val86.pre.i, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit109.i" ], [ %.val88.i, %bb.h ] ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, label %bb.q

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.l
  %i.bn = icmp eq i64 %i.au, 0
  br i1 %i.bn, label %.thread95.i, label %bb.m

bb.m:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %i.bo = shl nuw nsw i64 %.sroa.0.0.i105.i, 2    ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38830
  %i.bp = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.bo, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !38830 ; 3 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %.invoke128.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38831
  %i.br = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.0.0.i105.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !38831 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = ptrtoint ptr %i.br to i64
  br label %.thread95.i

bb.p:                                             ; preds = %bb.n
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.0.0.i105.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc117.i unwind label %.loopexit.split-lp.i, !noalias !38828

.noexc117.i:                                      ; preds = %bb.p
  unreachable

.thread95.i:                                      ; preds = %bb.o, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %i.bu = phi ptr [ %i.bp, %bb.o ], [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ]
  %.sroa.10.0.i.i115.i = phi i64 [ %i.bt, %bb.o ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ]
  %i.bv = inttoptr i64 %.sroa.10.0.i.i115.i to ptr
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %.val85.i = load ptr, ptr %i.ax, align 8, !alias.scope !38821, !nonnull !52, !align !77, !noundef !52
  store ptr inttoptr (i64 4 to ptr), ptr %i.ax, align 8, !alias.scope !38821
  store i64 0, ptr %i.ay, align 8, !alias.scope !38821
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !38821, !nonnull !52, !align !62, !noundef !52
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !38821, !noundef !52
  store ptr inttoptr (i64 1 to ptr), ptr %i.bw, align 8, !alias.scope !38821
  store i64 0, ptr %i.by, align 8, !alias.scope !38821
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread95.i, %bb.f
  %.sroa.17.1.i = phi i64 [ %.sroa.0.0.i105.i, %.thread95.i ], [ %i.bz, %bb.q ], [ 0, %bb.f ] ; 7 uses
  %.sroa.010.1.i = phi ptr [ %i.bv, %.thread95.i ], [ %i.bx, %bb.q ], [ inttoptr (i64 1 to ptr), %bb.f ] ; 12 uses
  %.sroa.18.1.i = phi i64 [ %.sroa.0.0.i105.i, %.thread95.i ], [ %i.bl, %bb.q ], [ 0, %bb.f ] ; 8 uses
  %.sroa.0.1.i = phi ptr [ %i.bu, %.thread95.i ], [ %.val85.i, %bb.q ], [ inttoptr (i64 4 to ptr), %bb.f ] ; 11 uses
  %.promoted52.i = load i64, ptr %2, align 8, !alias.scope !38823
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 5512 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 5574 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 5568 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4736
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 5504
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4992
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 5520 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 124
  br label %.backedge.i.outer

.backedge.i.outer:                                ; preds = %bb.w, %bb.r
  %.ph = phi i64 [ %i.dy, %bb.w ], [ %.promoted52.i, %bb.r ] ; 4 uses
  %.ph1382 = phi i64 [ %i.dz, %bb.w ], [ %i.au, %bb.r ] ; 3 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.outer, %bb.s
  %i.cq = invoke fastcc noundef zeroext i1 @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$27inject_flush_or_push_output17h28572dbcc34f56eaE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, ptr noalias noundef nonnull align 1 %4, i64 noundef %5, ptr noalias noundef nonnull align 8 dereferenceable(8) %6, ptr noalias noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.s unwind label %.loopexit.i.loopexit.split-lp, !noalias !38832

bb.s:                                             ; preds = %.backedge.i
  br i1 %i.cq, label %.backedge.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = load i64, ptr %i.ca, align 8, !alias.scope !38821, !noundef !52
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %bb.u, label %bb.as

bb.u:                                             ; preds = %bb.t
  %i.ct = load i32, ptr %i.ag, align 8, !range !136, !alias.scope !38821, !noundef !52
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.v, label %bb.as

bb.v:                                             ; preds = %bb.u
  %.sroa.0.0.i125.i = call noundef i64 @llvm.umin.i64(i64 %.ph1382, i64 %i.at) ; 6 uses
  %i.cv = icmp ule i64 %.ph1382, %i.at            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !38833
  %i.cw = load i8, ptr %i.cb, align 2, !alias.scope !38821, !noundef !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !38833
  %.sink.i = zext i8 %i.cw to i64
  store i64 %.sink.i, ptr %i.ad, align 8, !noalias !38833
  %.sroa.011.0.in.i = shl i64 %.sroa.0.0.i125.i, 1
  %.sroa.011.0.i = add i64 %.sroa.011.0.in.i, 503 ; 8 uses
  store i64 0, ptr %i.ac, align 8, !noalias !38833
  %i.cx = load i64, ptr %3, align 8, !alias.scope !38824, !noundef !52 ; 2 uses
  %.not.i = icmp ugt i64 %.sroa.011.0.i, %i.cx    ; 2 uses
  br i1 %.not.i, label %bb.x, label %bb.aa

bb.w:                                             ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !38833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !38833
  br label %.backedge.i.outer

bb.x:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !38834)
  %i.cy = load i64, ptr %i.cc, align 8, !alias.scope !38835, !noundef !52
  %i.cz = icmp ult i64 %i.cy, %.sroa.011.0.i
  %.val65.pre.i = load ptr, ptr %i.cd, align 8, !alias.scope !38821 ; 2 uses
  %.val66.pre.i = load i64, ptr %i.ce, align 8, !alias.scope !38821 ; 2 uses
  br i1 %i.cz, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  store ptr inttoptr (i64 1 to ptr), ptr %i.cd, align 8, !alias.scope !38835
  store i64 0, ptr %i.ce, align 8, !alias.scope !38835
  %i.da = icmp eq i64 %.val66.pre.i, 0
  br i1 %i.da, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.y
  call void @mi_free(ptr noundef nonnull align 1 %.val65.pre.i) #38, !noalias !38836
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.y
  %i.db = icmp slt i64 %.sroa.011.0.i, 0
  br i1 %i.db, label %bb.z, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !99

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38837
  %i.dc = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.011.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !38837 ; 3 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.z, label %.thread97.i

bb.z:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i.i"
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.sroa.011.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc126.i unwind label %.loopexit.split-lp.i, !noalias !38828

.noexc126.i:                                      ; preds = %bb.z
  unreachable

.thread97.i:                                      ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  store ptr %i.dc, ptr %i.cd, align 8, !alias.scope !38835
  store i64 %.sroa.011.0.i, ptr %i.ce, align 8, !alias.scope !38835
  store i64 %.sroa.011.0.i, ptr %i.cc, align 8, !alias.scope !38835
  br label %bb.ad

bb.aa:                                            ; preds = %bb.v
  %i.de = load i64, ptr %6, align 8, !alias.scope !38825, !noundef !52 ; 4 uses
  %i.df = icmp ugt i64 %i.de, %5
  br i1 %i.df, label %.invoke.i, label %bb.ac, !prof !54

bb.ab:                                            ; preds = %bb.ac, %bb.x
  %.sroa.15.0.i = phi i64 [ %i.dg, %bb.ac ], [ %.val66.pre.i, %bb.x ] ; 2 uses
  %.sroa.016.0.i = phi ptr [ %i.dh, %bb.ac ], [ %.val65.pre.i, %bb.x ]
  %.not57.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not57.i, label %.invoke126.i, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.dg = sub nuw i64 %5, %i.de
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 %i.de
  br label %bb.ab

.invoke.i:                                        ; preds = %bb.ah, %bb.ag, %bb.aa
  %i.di = phi i64 [ %.ph, %bb.ag ], [ %i.de, %bb.aa ], [ %.ph, %bb.ah ]
  %i.dj = phi i64 [ 0, %bb.ag ], [ %5, %bb.aa ], [ 0, %bb.ah ] ; 2 uses
  %i.dk = phi ptr [ @1859, %bb.ag ], [ @1863, %bb.aa ], [ @1862, %bb.ah ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.di, i64 noundef %i.dj, i64 noundef %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dk) #43
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !38828

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ad:                                            ; preds = %bb.ab, %.thread97.i
  %.sroa.016.0102.i = phi ptr [ %i.dc, %.thread97.i ], [ %.sroa.016.0.i, %bb.ab ] ; 6 uses
  %.sroa.15.0101.i = phi i64 [ %.sroa.011.0.i, %.thread97.i ], [ %.sroa.15.0.i, %bb.ab ] ; 7 uses
  %i.dl = load i16, ptr %i.cf, align 8, !alias.scope !38821, !noundef !52
  %i.dm = trunc i16 %i.dl to i8
  store i8 %i.dm, ptr %.sroa.016.0102.i, align 1, !noalias !38828
  %.not58.i = icmp eq i64 %.sroa.15.0101.i, 1
  br i1 %.not58.i, label %.invoke126.i, label %bb.ae

.invoke126.i:                                     ; preds = %bb.ap, %bb.an, %bb.ad, %bb.ab
  %i.dn = phi i64 [ %i.eb, %bb.an ], [ 0, %bb.ab ], [ 1, %bb.ad ], [ %i.el, %bb.ap ]
  %i.do = phi i64 [ %.sroa.15.0101.i, %bb.an ], [ 0, %bb.ab ], [ 1, %bb.ad ], [ %.sroa.15.0101.i, %bb.ap ]
  %i.dp = phi ptr [ @1860, %bb.an ], [ @1857, %bb.ab ], [ @1858, %bb.ad ], [ @1861, %bb.ap ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dn, i64 noundef %i.do, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dp) #43
          to label %.cont127.i unwind label %.loopexit.split-lp.i, !noalias !38828

.cont127.i:                                       ; preds = %.invoke126.i
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %8 = load i16, ptr %i.cf, align 8, !alias.scope !38821, !noundef !52
  %9 = lshr i16 %8, 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.016.0102.i, i64 1
  %10 = trunc nuw i16 %9 to i8
  store i8 %10, ptr %i.dq, align 1, !noalias !38828
  %i.dr = load i32, ptr %i.ai, align 8, !alias.scope !38821, !noundef !52
  %i.ds = invoke fastcc { ptr, i64 } @_ZN6brotli3enc6encode20GetHashTableInternal17hd59a7ac31547727cE(ptr noalias noundef align 4 dereferenceable(4096) %i.cg, ptr noalias noundef align 8 dereferenceable(16) %i.ch, i32 noundef %i.dr, i64 noundef %.sroa.0.0.i125.i, ptr noalias noundef align 8 dereferenceable(8) %i.ac)
          to label %bb.af unwind label %.loopexit.i.loopexit.split-lp, !noalias !38828 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.dt = extractvalue { ptr, i64 } %i.ds, 0      ; 2 uses
  %i.du = extractvalue { ptr, i64 } %i.ds, 1      ; 2 uses
  %i.dv = load i32, ptr %i.ai, align 8, !alias.scope !38821, !noundef !52
  %i.dw = icmp eq i32 %i.dv, 0
  %.not60.i = icmp eq i64 %.ph, 0                 ; 2 uses
  br i1 %i.dw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  br i1 %.not60.i, label %bb.ai, label %.invoke.i, !prof !65

bb.ah:                                            ; preds = %bb.af
  br i1 %.not60.i, label %bb.ak, label %.invoke.i, !prof !65

bb.ai:                                            ; preds = %bb.ag
  %i.dx = load i64, ptr %i.ac, align 8, !noalias !38833, !noundef !52
  invoke fastcc void @_ZN6brotli3enc17compress_fragment22compress_fragment_fast17h6c0d553cad315c42E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, i64 noundef %.sroa.0.0.i125.i, i1 noundef zeroext %i.cv, ptr noalias noundef nonnull align 4 %i.dt, i64 noundef %i.du, i64 noundef %i.dx, ptr noalias noundef nonnull align 1 %i.ci, ptr noalias noundef nonnull align 2 %i.cj, ptr noalias noundef align 8 dereferenceable(8) %i.ck, ptr noalias noundef nonnull align 1 %i.cl, ptr noalias noundef align 8 dereferenceable(8) %i.ad, ptr noalias noundef nonnull align 1 %.sroa.016.0102.i, i64 noundef %.sroa.15.0101.i)
          to label %bb.aj unwind label %.loopexit.i.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ai, %bb.ak
  %i.dy = add nuw nsw i64 %.sroa.0.0.i125.i, %.ph ; 2 uses
  store i64 %i.dy, ptr %2, align 8, !alias.scope !38823
  %i.dz = sub nuw i64 %.ph1382, %.sroa.0.0.i125.i ; 2 uses
  store i64 %i.dz, ptr %1, align 8, !alias.scope !38822
  %i.ea = load i64, ptr %i.ad, align 8, !noalias !38833, !noundef !52 ; 2 uses
  %i.eb = lshr i64 %i.ea, 3                       ; 8 uses
  br i1 %.not.i, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1.i), "nonnull"(ptr %.sroa.010.1.i) ]
  %i.ec = load i64, ptr %i.ac, align 8, !noalias !38833, !noundef !52
  invoke fastcc void @_ZN6brotli3enc26compress_fragment_two_pass26compress_fragment_two_pass17hc4772fb9232ebc34E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, i64 noundef %.sroa.0.0.i125.i, i1 noundef zeroext %i.cv, ptr noalias noundef nonnull align 4 %.sroa.0.1.i, i64 noundef %.sroa.18.1.i, ptr noalias noundef nonnull align 1 %.sroa.010.1.i, i64 noundef %.sroa.17.1.i, ptr noalias noundef nonnull align 4 %i.dt, i64 noundef %i.du, i64 noundef %i.ec, ptr noalias noundef align 8 dereferenceable(8) %i.ad, ptr noalias noundef nonnull align 1 %.sroa.016.0102.i, i64 noundef %.sroa.15.0101.i)
          to label %bb.aj unwind label %.loopexit.i.loopexit.split-lp, !noalias !38828

bb.al:                                            ; preds = %bb.aj
  store i32 0, ptr %i.co, align 8, !alias.scope !38821
  store i32 0, ptr %i.cp, align 4, !alias.scope !38821
  store i64 %i.eb, ptr %i.ca, align 8, !alias.scope !38821
  br label %bb.an

bb.am:                                            ; preds = %bb.aj
  %i.ed = load i64, ptr %6, align 8, !alias.scope !38825, !noundef !52
  %i.ee = add i64 %i.ed, %i.eb
  store i64 %i.ee, ptr %6, align 8, !alias.scope !38825
  %i.ef = sub i64 %i.cx, %i.eb
  store i64 %i.ef, ptr %3, align 8, !alias.scope !38824
  %i.eg = load i64, ptr %i.cm, align 8, !alias.scope !38821, !noundef !52
  %i.eh = add i64 %i.eg, %i.eb                    ; 2 uses
  store i64 %i.eh, ptr %i.cm, align 8, !alias.scope !38821
  %i.ei = load i64, ptr %7, align 8, !range !66, !alias.scope !38826, !noundef !52
  %i.ej = trunc nuw i64 %i.ei to i1
  br i1 %i.ej, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am, %bb.al
  %i.ek = icmp ult i64 %i.eb, %.sroa.15.0101.i
  br i1 %i.ek, label %bb.ap, label %.invoke126.i

bb.ao:                                            ; preds = %bb.am
  store i64 %i.eh, ptr %i.cn, align 8, !alias.scope !38826
  br label %bb.an

bb.ap:                                            ; preds = %bb.an
  %i.el = add nuw nsw i64 %i.eb, 1                ; 3 uses
  %i.em = icmp ult i64 %i.el, %.sroa.15.0101.i
  br i1 %i.em, label %bb.aq, label %.invoke126.i

bb.aq:                                            ; preds = %bb.ap
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.016.0102.i, i64 %i.eb
  %i.eo = load i8, ptr %i.en, align 1, !noalias !38828, !noundef !52
  %i.ep = zext i8 %i.eo to i16
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.016.0102.i, i64 %i.el
  %i.er = load i8, ptr %i.eq, align 1, !noalias !38828, !noundef !52
  %i.es = zext i8 %i.er to i16
  %i.et = shl nuw i16 %i.es, 8
  %i.eu = or disjoint i16 %i.et, %i.ep
  store i16 %i.eu, ptr %i.cf, align 8, !alias.scope !38821
  %i.ev = trunc i64 %i.ea to i8
  %i.ew = and i8 %i.ev, 7
  store i8 %i.ew, ptr %i.cb, align 2, !alias.scope !38821
  br i1 %i.cv, label %bb.ar, label %bb.w

bb.ar:                                            ; preds = %bb.aq
  store i32 2, ptr %i.ag, align 8, !alias.scope !38821
  br label %bb.w

bb.as:                                            ; preds = %bb.u, %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1.i) ]
  switch i64 %.sroa.18.1.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i" [
    i64 131072, label %bb.at
    i64 0, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i"
  ]

bb.at:                                            ; preds = %bb.as
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %.val82.i = load i64, ptr %i.ex, align 8, !alias.scope !38821, !noundef !52
  %i.ey = icmp eq i64 %.val82.i, 0
  br i1 %i.ey, label %bb.au, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

bb.au:                                            ; preds = %bb.at
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %.sroa.0.1.i, ptr %i.ez, align 8, !alias.scope !38821
  store i64 131072, ptr %i.ex, align 8, !alias.scope !38821
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.010.1.i) ]
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %.val72.i = load i64, ptr %i.fb, align 8, !alias.scope !38821, !noundef !52
  %i.fc = icmp eq i64 %.val72.i, 0
  br i1 %i.fc, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit130.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i129.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i129.i": ; preds = %bb.au
  %.val71.i = load ptr, ptr %i.fa, align 8, !alias.scope !38821, !nonnull !52, !noundef !52
  call void @mi_free(ptr noundef nonnull %.val71.i) #38, !noalias !38828
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit130.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit130.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i129.i", %bb.au
  store ptr %.sroa.010.1.i, ptr %i.fa, align 8, !alias.scope !38821
  store i64 %.sroa.17.1.i, ptr %i.fb, align 8, !alias.scope !38821
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i131.i", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit130.i"
  %i.fd = phi i1 [ true, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit130.i" ], [ true, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i" ], [ false, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i131.i" ]
  %.sroa.010.2.i = phi ptr [ inttoptr (i64 1 to ptr), %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit130.i" ], [ %.sroa.010.1.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i" ], [ %.sroa.010.1.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i131.i" ]
  %.sroa.18.2.i = phi i64 [ 0, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit130.i" ], [ %.sroa.18.1.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i" ], [ %.sroa.18.1.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i131.i" ]
  %.sroa.0.2.i = phi ptr [ inttoptr (i64 4 to ptr), %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit130.i" ], [ %.sroa.0.1.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i" ], [ %.sroa.0.1.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i131.i" ]
  %.sroa.037.3.i = phi i1 [ true, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit130.i" ], [ false, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i" ], [ false, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i131.i" ]
  %i.fe = load i64, ptr %i.ca, align 8, !alias.scope !38821, !noundef !52
  %i.ff = load i32, ptr %i.ag, align 8, !range !136, !alias.scope !38821, !noundef !52
  %i.fg = icmp eq i32 %i.ff, 1
  %i.fh = icmp eq i64 %i.fe, 0
  %or.cond5.i = and i1 %i.fh, %i.fg
  br i1 %or.cond5.i, label %bb.av, label %bb.aw

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.at, %bb.as
  call void @mi_free(ptr noundef nonnull align 4 %.sroa.0.1.i) #38, !noalias !38828
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.010.1.i) ]
  %i.fi = icmp eq i64 %.sroa.17.1.i, 0
  br i1 %i.fi, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i131.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i131.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i"
  call void @mi_free(ptr noundef nonnull align 1 %.sroa.010.1.i) #38, !noalias !38828
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i"

bb.av:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i"
  store i32 0, ptr %i.ag, align 8, !alias.scope !38821
  store i32 2, ptr %i.co, align 8, !alias.scope !38821
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i"
  br i1 %.sroa.037.3.i, label %bb.ax, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$20compress_stream_fast17h8a1ddd90ef6bd700E.exit"

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.fd, label %.thread25.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i133.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i133.i": ; preds = %bb.ax
  call void @mi_free(ptr noundef nonnull %.sroa.010.2.i) #38, !noalias !38828
  br label %.thread25.i

.thread25.i:                                      ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i133.i", %bb.ax
  %i.fj = icmp eq i64 %.sroa.18.2.i, 0
  br i1 %i.fj, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$20compress_stream_fast17h8a1ddd90ef6bd700E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i135.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i135.i": ; preds = %.thread25.i
  call void @mi_free(ptr noundef nonnull %.sroa.0.2.i) #38, !noalias !38828
  br label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$20compress_stream_fast17h8a1ddd90ef6bd700E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i137.i": ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.010.0.i) ]
  call void @mi_free(ptr noundef nonnull %.sroa.010.0.i) #38, !noalias !38828
  br label %.thread.i

common.resume.sink.split:                         ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %bb.ew, %bb.fe, %bb.kq, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i141.i"
  %.sink.i.i.sink.i.sink = phi ptr [ %.sroa.0.019.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i141.i" ], [ %i.ss, %bb.ew ], [ %i.ru, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i" ], [ %i.th, %bb.fe ], [ %.sroa.10.0.i.i.i.i, %bb.kq ]
  %common.resume.op.ph = phi { ptr, i32 } [ %lpad.phi.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i141.i" ], [ %i.sw, %bb.ew ], [ %i.sb, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i" ], [ %i.ue, %bb.fe ], [ %i.apr, %bb.kq ]
  call void @mi_free(ptr noundef nonnull %.sink.i.i.sink.i.sink) #38, !noalias !52
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.el, %bb.kq, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i, %.thread.i ], [ %i.sb, %bb.el ], [ %i.apr, %bb.kq ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

.thread.i:                                        ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i137.i", %bb.g
  %i.fk = icmp eq i64 %.sroa.18.0.i, 0
  br i1 %i.fk, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i141.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i141.i": ; preds = %.thread.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.019.i) ]
  br label %common.resume.sink.split

bb.ay:                                            ; preds = %bb.c, %bb.e
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 11 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 13 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 5512 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 11 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 5570 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 5574 ; 7 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 10 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 15 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 15 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 5568 ; 6 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 5573 ; 6 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 9 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 230 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 5572
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 13 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 5544 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 5575 ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 5576 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 12 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 9 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 9 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 5552 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 11 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %.sroa.911.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %.sroa.1012.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 80 ; 5 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 9 uses
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 9 uses
  %.sroa.57.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 9 uses
  %.sroa.68.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 5 uses
  %.sroa.79.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 5 uses
  %.sroa.810.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 6 uses
  %.sroa.1113.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 96 ; 2 uses
  %.sroa.1214.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 104 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 8 uses
  %.sroa.513.sroa.6.0..sroa.513.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 64 ; 8 uses
  %.sroa.614.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 72 ; 4 uses
  %.sroa.104.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 88 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 180
  %.sroa.7.sroa.035.sroa.4.0..sroa.7.0..sroa_idx27.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 44
  %.sroa.828.sroa.4.0..sroa.828.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 92
  %.sroa.828.sroa.6.0..sroa.828.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 100
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 20 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 5577
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 4736
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 5504
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 4992
  %i.hu = load i64, ptr %i.fl, align 8, !alias.scope !38838, !noundef !52
  %i.hv = load i64, ptr %i.fm, align 8, !alias.scope !38838, !noundef !52
  %i.hw = sub i64 %i.hu, %i.hv                    ; 2 uses
  tail call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h27838bc608a31ebcE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %0)
  %i.hx = load i32, ptr %i.fn, align 8, !alias.scope !38838, !noundef !52
  %i.hy = and i32 %i.hx, 63
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = shl nuw i64 1, %i.hz                    ; 2 uses
  %.not7861 = icmp ule i64 %i.ia, %i.hw
  %i.ib = load i64, ptr %1, align 8               ; 3 uses
  %i.ic = icmp eq i64 %i.ib, 0                    ; 2 uses
  %or.cond862 = select i1 %.not7861, i1 true, i1 %i.ic
  br i1 %or.cond862, label %.lr.ph, label %._crit_edge864

.lr.ph:                                           ; preds = %bb.ay, %.backedge
  %i.id = phi i1 [ %i.aqb, %.backedge ], [ %i.ic, %bb.ay ] ; 10 uses
  %i.ie = phi i64 [ %i.aqa, %.backedge ], [ %i.ib, %bb.ay ] ; 2 uses
  %i.if = call fastcc noundef zeroext i1 @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$27inject_flush_or_push_output17h28572dbcc34f56eaE"(ptr noalias noundef align 8 dereferenceable(5584) %0, ptr noalias noundef align 8 dereferenceable(8) %3, ptr noalias noundef nonnull align 1 %4, i64 noundef %5, ptr noalias noundef align 8 dereferenceable(8) %6, ptr noalias noundef align 8 dereferenceable(16) %7)
  br i1 %i.if, label %.backedge, label %bb.az

._crit_edge864:                                   ; preds = %.backedge, %bb.ay
  %.lcssa503 = phi i64 [ %i.hw, %bb.ay ], [ %i.apv, %.backedge ]
  %.lcssa416 = phi i64 [ %i.ia, %bb.ay ], [ %i.apz, %.backedge ]
  %.lcssa329 = phi i64 [ %i.ib, %bb.ay ], [ %i.aqa, %.backedge ]
  %.sroa.0.0.i.le = sub nuw i64 %.lcssa416, %.lcssa503
  %.sroa.0.0.i23 = call noundef i64 @llvm.umin.i64(i64 %.lcssa329, i64 %.sroa.0.0.i.le) ; 11 uses
  %i.ig = load i64, ptr %2, align 8, !noundef !52 ; 2 uses
  %.not21 = icmp eq i64 %i.ig, 0
  br i1 %.not21, label %bb.kv, label %bb.lu, !prof !65

bb.az:                                            ; preds = %.lr.ph
  %i.ih = load i64, ptr %i.fo, align 8, !noundef !52
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %bb.ba, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$20compress_stream_fast17h8a1ddd90ef6bd700E.exit"

bb.ba:                                            ; preds = %bb.az
  %i.ij = load i32, ptr %i.ag, align 8, !range !136, !noundef !52
  switch i32 %i.ij, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$20compress_stream_fast17h8a1ddd90ef6bd700E.exit" [
    i32 0, label %bb.bb
    i32 1, label %bb.ku
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.ik = load i64, ptr %i.fp, align 8, !noundef !52
  %i.il = icmp eq i64 %i.ik, 0
  %.pre = load i64, ptr %i.fl, align 8
  %.pre1647 = load i64, ptr %i.fm, align 8
  %i.im = sub i64 %.pre, %.pre1647                ; 8 uses
  br i1 %i.il, label %bb.bc, label %._crit_edge

bb.bc:                                            ; preds = %bb.bb
  %i.in = or i64 %i.im, %i.ie
  %or.cond1.not = icmp ult i64 %i.in, 1073741824
  %i.io = add nuw nsw i64 %i.im, %i.ie
  %spec.select = call i64 @llvm.umin.i64(i64 %i.io, i64 1073741824)
  %.sroa.08.0 = select i1 %or.cond1.not, i64 %spec.select, i64 1073741824
  store i64 %.sroa.08.0, ptr %i.fp, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.bb, %bb.bc
  call void @llvm.experimental.noalias.scope.decl(metadata !38839)
  %i.ip = trunc i64 %i.im to i32                  ; 5 uses
  %i.iq = load i32, ptr %i.fr, align 4, !alias.scope !38839, !noundef !52 ; 5 uses
  call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h27838bc608a31ebcE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %0)
  %i.ir = load i8, ptr %i.fs, align 2, !range !59, !alias.scope !38839, !noundef !52
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %bb.kr, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge
  br i1 %i.id, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bf, %bb.bd
  call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h27838bc608a31ebcE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %0)
  %i.it = load i32, ptr %i.fn, align 8, !alias.scope !38839, !noundef !52
  %i.iu = and i32 %i.it, 63
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = shl nuw i64 1, %i.iv
  %i.ix = icmp ugt i64 %i.im, %i.iw
  br i1 %i.ix, label %bb.kr, label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  store i8 1, ptr %i.fs, align 2, !alias.scope !38839
  br label %bb.be

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !38840
  %i.iy = load i8, ptr %i.ft, align 2, !alias.scope !38839, !noundef !52
  %i.iz = zext i8 %i.iy to i64
  store i64 %i.iz, ptr %i.ab, align 8, !noalias !38840
  %i.ja = and i64 %i.im, 4294967295               ; 3 uses
  %i.jb = load i64, ptr %i.fl, align 8, !alias.scope !38839, !noundef !52
  %i.jc = load i64, ptr %i.fu, align 8, !alias.scope !38839, !noundef !52
  %i.jd = sub i64 %i.jb, %i.jc
  %.sroa.0.0.i.i24 = call noundef i64 @llvm.umax.i64(i64 %i.jd, i64 %i.ja)
  %i.je = shl i64 %.sroa.0.0.i.i24, 1
  %i.jf = add i64 %i.je, 527                      ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38841)
  %i.jg = load i64, ptr %i.fv, align 8, !alias.scope !38842, !noundef !52
  %i.jh = icmp ult i64 %i.jg, %i.jf
  br i1 %i.jh, label %bb.bh, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17h2f21d8ee2ca780d8E.exit.i"

bb.bh:                                            ; preds = %bb.bg
  %i.ji = load ptr, ptr %i.fw, align 8, !alias.scope !38842, !nonnull !52, !align !62, !noundef !52
  %i.jj = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !38842, !noundef !52
  store ptr inttoptr (i64 1 to ptr), ptr %i.fw, align 8, !alias.scope !38842
  store i64 0, ptr %.phi.trans.insert.i, align 8, !alias.scope !38842
  %i.jk = icmp eq i64 %i.jj, 0
  br i1 %i.jk, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i.i34", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i33"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i33": ; preds = %bb.bh
  call void @mi_free(ptr noundef nonnull align 1 %i.ji) #38, !noalias !38843
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i.i34"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i.i34": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i33", %bb.bh
  %i.jl = icmp slt i64 %i.jf, 0
  br i1 %i.jl, label %bb.bi, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i35, !prof !99

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i35: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i.i34"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38844
  %i.jm = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.jf, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !38844 ; 3 uses
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %bb.bi, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17h2f21d8ee2ca780d8E.exit.thread.i"

bb.bi:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i35, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i.i34"
  %.sroa.4.0.ph.i.i.i.i36 = phi i64 [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i35 ], [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i.i34" ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i36, i64 %i.jf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !38845
  unreachable

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17h2f21d8ee2ca780d8E.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i35
  store ptr %i.jm, ptr %i.fw, align 8, !alias.scope !38842
  store i64 %i.jf, ptr %.phi.trans.insert.i, align 8, !alias.scope !38842
  store i64 %i.jf, ptr %i.fv, align 8, !alias.scope !38842
  br label %bb.bj

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17h2f21d8ee2ca780d8E.exit.i": ; preds = %bb.bg
  %.val149.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !38839
  %i.jo = icmp eq i64 %.val149.pre.i, 0
  br i1 %i.jo, label %bb.bk, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17h2f21d8ee2ca780d8E.exit.i._crit_edge"

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17h2f21d8ee2ca780d8E.exit.i._crit_edge": ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17h2f21d8ee2ca780d8E.exit.i"
  %.val148.i.pre = load ptr, ptr %i.fw, align 8, !alias.scope !38839
  br label %bb.bj

bb.bj:                                            ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17h2f21d8ee2ca780d8E.exit.i._crit_edge", %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17h2f21d8ee2ca780d8E.exit.thread.i"
  %.val148.i = phi ptr [ %.val148.i.pre, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17h2f21d8ee2ca780d8E.exit.i._crit_edge" ], [ %i.jm, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17h2f21d8ee2ca780d8E.exit.thread.i" ]
  %i.jp = load i16, ptr %i.fx, align 8, !alias.scope !38839, !noundef !52
  %i.jq = trunc i16 %i.jp to i8
  store i8 %i.jq, ptr %.val148.i, align 1, !noalias !38846
  %.val147.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !38839, !noundef !52 ; 2 uses
  %i.jr = icmp ugt i64 %.val147.i, 1
  br i1 %i.jr, label %bb.bl, label %bb.bm

bb.bk:                                            ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17h2f21d8ee2ca780d8E.exit.i"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1825) #43, !noalias !38846
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %.val146.i = load ptr, ptr %i.fw, align 8, !alias.scope !38839, !nonnull !52, !align !62, !noundef !52
  %11 = load i16, ptr %i.fx, align 8, !alias.scope !38839, !noundef !52
  %12 = lshr i16 %11, 8
  %i.js = getelementptr inbounds nuw i8, ptr %.val146.i, i64 1
  %13 = trunc nuw i16 %12 to i8
  store i8 %13, ptr %i.js, align 1, !noalias !38846
  %i.jt = load i8, ptr %i.fy, align 1, !range !58, !alias.scope !38839, !noundef !52 ; 2 uses
  %i.ju = icmp eq i8 %i.jt, 0
  br i1 %i.ju, label %bb.bn, label %thread-pre-split.i

bb.bm:                                            ; preds = %bb.bj
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 1, i64 noundef %.val147.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1826) #43, !noalias !38846
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.jv = load i8, ptr %i.fz, align 1, !range !59, !alias.scope !38839, !noundef !52
  %i.jw = trunc nuw i8 %i.jv to i1
  br i1 %i.jw, label %bb.bp, label %bb.bo

thread-pre-split.i:                               ; preds = %bb.bx, %bb.bl
  %i.jx = phi i8 [ %i.jt, %bb.bl ], [ %.pr.pre.i, %bb.bx ]
  %.sroa.011.0.i25 = phi i64 [ 0, %bb.bl ], [ %.sroa.011.1.i, %bb.bx ] ; 2 uses
  %i.jy = icmp eq i8 %i.jx, 3
  br i1 %i.jy, label %bb.by, label %thread-pre-split.thread.i

bb.bo:                                            ; preds = %bb.bs, %bb.bn
  %.sroa.011.1.i = phi i64 [ %i.kb, %bb.bs ], [ 0, %bb.bn ] ; 5 uses
  %i.jz = icmp eq i32 %i.ip, 0
  br i1 %i.jz, label %bb.bu, label %thread-pre-split.thread.i

bb.bp:                                            ; preds = %bb.bn
  %.val144.i = load ptr, ptr %i.fw, align 8, !alias.scope !38839, !nonnull !52, !align !62, !noundef !52
  %.val145.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !38839, !noundef !52
  call void @_ZN6brotli3enc17brotli_bit_stream28BrotliWriteMetadataMetaBlock17h419927a0fd1f2ae4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ga, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noalias noundef nonnull align 1 %.val144.i, i64 noundef %.val145.i), !noalias !38846
  %.val176.i = load ptr, ptr %i.fw, align 8, !alias.scope !38839, !nonnull !52, !align !62, !noundef !52 ; 2 uses
  %.val177.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !38839, !noundef !52 ; 4 uses
  %i.ka = load i64, ptr %i.ab, align 8, !noalias !38840, !noundef !52 ; 2 uses
  %i.kb = lshr i64 %i.ka, 3                       ; 5 uses
  %i.kc = icmp ult i64 %i.kb, %.val177.i
  br i1 %i.kc, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.kd = add nuw nsw i64 %i.kb, 1                ; 3 uses
  %i.ke = icmp ult i64 %i.kd, %.val177.i
  br i1 %i.ke, label %bb.bs, label %bb.bt

bb.br:                                            ; preds = %bb.bp
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.kb, i64 noundef %.val177.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1827) #43, !noalias !38846
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.kf = getelementptr inbounds nuw i8, ptr %.val176.i, i64 %i.kb
  %i.kg = load i8, ptr %i.kf, align 1, !noalias !38846, !noundef !52
  %i.kh = zext i8 %i.kg to i16
  %i.ki = getelementptr inbounds nuw i8, ptr %.val176.i, i64 %i.kd
  %i.kj = load i8, ptr %i.ki, align 1, !noalias !38846, !noundef !52
  %i.kk = zext i8 %i.kj to i16
  %i.kl = shl nuw i16 %i.kk, 8
  %i.km = or disjoint i16 %i.kl, %i.kh
  store i16 %i.km, ptr %i.fx, align 8, !alias.scope !38839
  %i.kn = trunc i64 %i.ka to i8
  %i.ko = and i8 %i.kn, 7
  store i8 %i.ko, ptr %i.ft, align 2, !alias.scope !38839
  store i32 0, ptr %i.gb, align 8, !alias.scope !38839
  store i32 0, ptr %i.gc, align 4, !alias.scope !38839
  store i8 1, ptr %i.fy, align 1, !alias.scope !38839
  br label %bb.bo

bb.bt:                                            ; preds = %bb.bq
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.kd, i64 noundef %.val177.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1828) #43, !noalias !38846
  unreachable

bb.bu:                                            ; preds = %bb.bo
  %i.kp = load i8, ptr %i.gd, align 4, !range !59, !alias.scope !38839, !noundef !52
  %i.kq = trunc nuw i8 %i.kp to i1
  br i1 %i.kq, label %bb.bv, label %thread-pre-split.thread.i

bb.bv:                                            ; preds = %bb.bu
  %i.kr = load i8, ptr %i.ge, align 8, !range !59, !alias.scope !38839, !noundef !52
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %bb.bw, label %thread-pre-split.thread.i

bb.bw:                                            ; preds = %bb.bv
  %i.kt = load i8, ptr %i.gf, align 2, !range !59, !alias.scope !38839, !noundef !52
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %thread-pre-split.thread.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %.val142.i = load ptr, ptr %i.fw, align 8, !alias.scope !38839, !nonnull !52, !align !62, !noundef !52
  %.val143.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !38839, !noundef !52
  call void @_ZN6brotli3enc17brotli_bit_stream27BrotliWritePaddingMetaBlock17hdb52f5102f689cf3E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noalias noundef nonnull align 1 %.val142.i, i64 noundef %.val143.i), !noalias !38846
  %.pr.pre.i = load i8, ptr %i.fy, align 1, !alias.scope !38839
  br label %thread-pre-split.i

bb.by:                                            ; preds = %bb.cr, %bb.ca, %bb.bz, %thread-pre-split.i
  %.sroa.0.021.i = phi i32 [ %i.ip, %thread-pre-split.i ], [ 0, %bb.ca ], [ %i.na, %bb.cr ], [ %i.ip, %bb.bz ] ; 19 uses
  %.sroa.011.2.i = phi i64 [ %.sroa.011.0.i25, %thread-pre-split.i ], [ %.sroa.011.0193.i, %bb.ca ], [ %i.lr, %bb.cr ], [ %.sroa.011.0193.i, %bb.bz ] ; 5 uses
  %.sroa.07.0.i = phi i64 [ %i.im, %thread-pre-split.i ], [ %i.im, %bb.ca ], [ %i.nc, %bb.cr ], [ %i.im, %bb.bz ]
  %i.kv = load i64, ptr %i.fm, align 8, !alias.scope !38839, !noundef !52 ; 2 uses
  %i.kw = trunc i64 %i.kv to i32                  ; 3 uses
  %i.kx = icmp ugt i64 %i.kv, 3221225471
  %i.ky = and i32 %i.kw, 1073741823
  %i.kz = and i32 %i.kw, 1073741824
  %reass.sub.i = sub nsw i32 %i.ky, %i.kz
  %i.la = xor i32 %reass.sub.i, -2147483648
  %.sroa.023.0.i = select i1 %i.kx, i32 %i.la, i32 %i.kw ; 17 uses
  %i.lb = load i32, ptr %i.ai, align 8, !alias.scope !38839, !noundef !52 ; 2 uses
  %i.lc = icmp eq i32 %i.lb, 1
  br i1 %i.lc, label %bb.cs, label %thread-pre-split23.i

thread-pre-split.thread.i:                        ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bo, %thread-pre-split.i
  %.sroa.011.0193.i = phi i64 [ %.sroa.011.0.i25, %thread-pre-split.i ], [ %.sroa.011.1.i, %bb.bo ], [ %.sroa.011.1.i, %bb.bw ], [ %.sroa.011.1.i, %bb.bv ], [ %.sroa.011.1.i, %bb.bu ] ; 2 uses
  %i.ld = load i8, ptr %i.gf, align 2, !range !59, !alias.scope !38839, !noundef !52
  %i.le = trunc nuw i8 %i.ld to i1
  br i1 %i.le, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %thread-pre-split.thread.i
  store i8 3, ptr %i.fy, align 1, !alias.scope !38839
  br label %bb.by

bb.ca:                                            ; preds = %thread-pre-split.thread.i
  %i.lf = icmp eq i32 %i.ip, 0
  br i1 %i.lf, label %bb.by, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lg = load i64, ptr %i.fm, align 8, !alias.scope !38839, !noundef !52
  %i.lh = icmp ult i64 %i.lg, 2
  br i1 %i.lh, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.li = load i8, ptr %i.gg, align 4, !range !59, !alias.scope !38839, !noundef !52
  %i.lj = trunc nuw i8 %i.li to i1
  br i1 %i.lj, label %bb.ce, label %bb.cd, !prof !65

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1829, i64 noundef 72, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1830) #43, !noalias !38846
  unreachable

bb.ce:                                            ; preds = %bb.cc, %bb.cb
  %.sroa.0.0.i194.i = call noundef i64 @llvm.umin.i64(i64 %i.ja, i64 2) ; 6 uses
  %.val141.i = load i64, ptr %i.gh, align 8, !alias.scope !38839, !noundef !52 ; 4 uses
  %i.lk = load i64, ptr %i.gi, align 8, !alias.scope !38839, !noundef !52 ; 4 uses
  %i.ll = icmp ugt i64 %i.lk, %.val141.i
  br i1 %i.ll, label %bb.cg, label %bb.cf, !prof !54

bb.cf:                                            ; preds = %bb.ce
  %.val140.i = load ptr, ptr %i.fq, align 8, !alias.scope !38839, !nonnull !52, !align !62, !noundef !52
  %i.lm = sub nuw i64 %.val141.i, %i.lk           ; 5 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.val140.i, i64 %i.lk ; 3 uses
  %i.lo = load i64, ptr %i.fu, align 8, !alias.scope !38839, !noundef !52
  %i.lp = zext i32 %i.iq to i64                   ; 3 uses
  %.val138.i = load ptr, ptr %i.fw, align 8, !alias.scope !38839, !nonnull !52, !align !62, !noundef !52
  %.val139.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !38839, !noundef !52
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream29store_uncompressed_meta_block17hce9957366ac74809E(ptr noalias noundef nonnull align 1 %i.ft, i1 noundef zeroext false, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ln, i64 noundef %i.lm, i64 noundef %i.lo, i64 noundef %i.lp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ga, i64 noundef %.sroa.0.0.i194.i, ptr noalias noundef align 8 dereferenceable(8) %i.gj, ptr noalias noundef align 8 dereferenceable(8) %i.ab, ptr noalias noundef nonnull align 1 %.val138.i, i64 noundef %.val139.i, i1 noundef zeroext false), !noalias !38846
  %.val172.i = load ptr, ptr %i.fw, align 8, !alias.scope !38839, !nonnull !52, !align !62, !noundef !52 ; 2 uses
  %.val173.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !38839, !noundef !52 ; 4 uses
  %i.lq = load i64, ptr %i.ab, align 8, !noalias !38840, !noundef !52 ; 2 uses
  %i.lr = lshr i64 %i.lq, 3                       ; 5 uses
  %i.ls = icmp ult i64 %i.lr, %.val173.i
  br i1 %i.ls, label %bb.ch, label %bb.ci

bb.cg:                                            ; preds = %bb.ce
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.lk, i64 noundef %.val141.i, i64 noundef %.val141.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1852) #43, !noalias !38846
  unreachable

bb.ch:                                            ; preds = %bb.cf
  %i.lt = add nuw nsw i64 %i.lr, 1                ; 3 uses
  %i.lu = icmp ult i64 %i.lt, %.val173.i
  br i1 %i.lu, label %bb.cj, label %bb.ck

bb.ci:                                            ; preds = %bb.cf
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.lr, i64 noundef %.val173.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1831) #43, !noalias !38846
  unreachable

bb.cj:                                            ; preds = %bb.ch
  %i.lv = getelementptr inbounds nuw i8, ptr %.val172.i, i64 %i.lr
  %i.lw = load i8, ptr %i.lv, align 1, !noalias !38846, !noundef !52
  %i.lx = zext i8 %i.lw to i16
  %i.ly = getelementptr inbounds nuw i8, ptr %.val172.i, i64 %i.lt
  %i.lz = load i8, ptr %i.ly, align 1, !noalias !38846, !noundef !52
  %i.ma = zext i8 %i.lz to i16
  %i.mb = shl nuw i16 %i.ma, 8
  %i.mc = or disjoint i16 %i.mb, %i.lx
  store i16 %i.mc, ptr %i.fx, align 8, !alias.scope !38839
  %i.md = trunc i64 %i.lq to i8
  %i.me = and i8 %i.md, 7
  store i8 %i.me, ptr %i.ft, align 2, !alias.scope !38839
  %i.mf = load i8, ptr %i.gk, align 1, !alias.scope !38839, !noundef !52
  store i8 %i.mf, ptr %i.gl, align 8, !alias.scope !38839
  %i.mg = load i64, ptr %i.fu, align 8, !alias.scope !38839, !noundef !52 ; 4 uses
  %i.mh = and i64 %i.mg, %i.lp                    ; 3 uses
  %i.mi = icmp ult i64 %i.mh, %i.lm
  br i1 %i.mi, label %bb.cl, label %bb.cm

bb.ck:                                            ; preds = %bb.ch
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.lt, i64 noundef %.val173.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1832) #43, !noalias !38846
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.mh
  %i.mk = load i8, ptr %i.mj, align 1, !noalias !38846, !noundef !52 ; 2 uses
  store i8 %i.mk, ptr %i.gk, align 1, !alias.scope !38839
  %i.ml = icmp samesign ugt i64 %i.ja, 1
  br i1 %i.ml, label %bb.cn, label %bb.cq

bb.cm:                                            ; preds = %bb.cj
end_hunk_0
