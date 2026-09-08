Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_http-9a8611a24ee00448.actix_http.2387a03c31849639-cgu.0?download=true
inline.NumInlined: 6414
inline.NumDeleted: 2069
loop-unroll.NumCompletelyUnrolled: 166
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 295
begin_hunk_0_@_ZN3std2io5Write9write_all17hfa7febf594b8b493E:bb.a
  %.sroa.08.0.i.i.i = select i1 %or.cond1.not.i.i.i, i64 %spec.select.i.i.i, i64 1073741824
  store i64 %.sroa.08.0.i.i.i, ptr %i.bj, align 8, !alias.scope !5306, !noalias !5307
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre1117.i.i.i, %._crit_edge.i.i.i ], [ %i.jf, %bb.an ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5319)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !5320
  %i.ji = trunc i64 %.pre-phi.i.i.i to i32        ; 6 uses
  store i32 %i.ji, ptr %i.ar, align 4, !noalias !5320
  %i.jj = load i32, ptr %i.bl, align 4, !alias.scope !5321, !noalias !5322, !noundef !21 ; 5 uses
  call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h976450b2f254cc2bE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ba)
  %i.jk = load i8, ptr %i.bm, align 2, !range !38, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.jl = trunc nuw i8 %i.jk to i1
  br i1 %i.jl, label %bb.ih, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h976450b2f254cc2bE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ba)
  %i.jm = load i32, ptr %i.bh, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.jn = and i32 %i.jm, 63
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = shl nuw i64 1, %i.jo
  %i.jq = icmp ugt i64 %.pre-phi.i.i.i, %i.jp
  br i1 %i.jq, label %bb.ih, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !5320
  %i.jr = load i8, ptr %i.bn, align 2, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.js = zext i8 %i.jr to i64
  store i64 %i.js, ptr %i.aq, align 8, !noalias !5320
  %i.jt = and i64 %.pre-phi.i.i.i, 4294967295     ; 3 uses
  %i.ju = load i64, ptr %i.bf, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.jv = load i64, ptr %i.bo, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.jw = sub i64 %i.ju, %i.jv
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.jw, i64 %i.jt)
  %i.jx = shl i64 %.sroa.0.0.i.i.i.i.i, 1
  %i.jy = add i64 %i.jx, 527                      ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5323)
  %i.jz = load i64, ptr %i.bp, align 8, !alias.scope !5324, !noalias !5322, !noundef !21
  %i.ka = icmp ult i64 %i.jz, %i.jy
  br i1 %i.ka, label %bb.ar, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17hf3270e995969342aE.exit.i.i.i.i"

bb.ar:                                            ; preds = %bb.aq
  %i.kb = load ptr, ptr %i.bq, align 8, !alias.scope !5324, !noalias !5322, !nonnull !21, !align !29, !noundef !21
  %i.kc = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !5324, !noalias !5322, !noundef !21 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.bq, align 8, !alias.scope !5324, !noalias !5322
  store i64 0, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !5324, !noalias !5322
  %i.kd = icmp eq i64 %i.kc, 0
  br i1 %i.kd, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.ar
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.kb, i64 noundef %i.kc, i64 noundef 1) #45, !noalias !5325
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i.i.i.i.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i", %bb.ar
  %i.ke = icmp slt i64 %i.jy, 0
  br i1 %i.ke, label %bb.as, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !5326
  %i.kf = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.jy, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !5326 ; 3 uses
  %i.kg = icmp eq ptr %i.kf, null
  br i1 %i.kg, label %bb.as, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17hf3270e995969342aE.exit.thread.i.i.i.i"

bb.as:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i.i.i.i.i"
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i.i.i.i.i" ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.jy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46, !noalias !5327
  unreachable

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17hf3270e995969342aE.exit.thread.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  store ptr %i.kf, ptr %i.bq, align 8, !alias.scope !5324, !noalias !5322
  store i64 %i.jy, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !5324, !noalias !5322
  store i64 %i.jy, ptr %i.bp, align 8, !alias.scope !5324, !noalias !5322
  br label %bb.at

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17hf3270e995969342aE.exit.i.i.i.i": ; preds = %bb.aq
  %.val150.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !5321, !noalias !5322
  %i.kh = icmp eq i64 %.val150.pre.i.i.i.i, 0
  br i1 %i.kh, label %bb.au, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17hf3270e995969342aE.exit.i._crit_edge.i.i.i"

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17hf3270e995969342aE.exit.i._crit_edge.i.i.i": ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17hf3270e995969342aE.exit.i.i.i.i"
  %.val149.i.pre.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !5321, !noalias !5322
  br label %bb.at

bb.at:                                            ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17hf3270e995969342aE.exit.i._crit_edge.i.i.i", %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17hf3270e995969342aE.exit.thread.i.i.i.i"
  %.val149.i.i.i.i = phi ptr [ %.val149.i.pre.i.i.i, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17hf3270e995969342aE.exit.i._crit_edge.i.i.i" ], [ %i.kf, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17hf3270e995969342aE.exit.thread.i.i.i.i" ]
  %i.ki = load i16, ptr %i.br, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.kj = trunc i16 %i.ki to i8
  store i8 %i.kj, ptr %.val149.i.i.i.i, align 1, !noalias !5328
  %.val148.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 2 uses
  %i.kk = icmp ugt i64 %.val148.i.i.i.i, 1
  br i1 %i.kk, label %bb.av, label %bb.aw

bb.au:                                            ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17hf3270e995969342aE.exit.i.i.i.i"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1179) #46, !noalias !5328
  unreachable

bb.av:                                            ; preds = %bb.at
  %.val147.i.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !29, !noundef !21
  %i.kl = load i16, ptr %i.br, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.km = lshr i16 %i.kl, 8
  %i.kn = getelementptr inbounds nuw i8, ptr %.val147.i.i.i.i, i64 1
  %i.ko = trunc nuw i16 %i.km to i8
  store i8 %i.ko, ptr %i.kn, align 1, !noalias !5328
  %i.kp = load i8, ptr %i.bs, align 1, !range !41, !alias.scope !5321, !noalias !5322, !noundef !21 ; 2 uses
  %i.kq = icmp eq i8 %i.kp, 0
  br i1 %i.kq, label %bb.ax, label %thread-pre-split.i.i.i.i

bb.aw:                                            ; preds = %bb.at
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 1, i64 noundef %.val148.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1180) #46, !noalias !5328
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.kr = load i8, ptr %i.bt, align 1, !range !38, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %bb.az, label %bb.ay

thread-pre-split.i.i.i.i:                         ; preds = %bb.bh, %bb.av
  %i.kt = phi i8 [ %i.kp, %bb.av ], [ %.pr.pre.i.i.i.i, %bb.bh ]
  %.sroa.011.0.i.i.i.i = phi i64 [ 0, %bb.av ], [ %.sroa.011.1.i.i.i.i, %bb.bh ] ; 2 uses
  %i.ku = icmp eq i8 %i.kt, 3
  br i1 %i.ku, label %bb.bi, label %thread-pre-split.thread.i.i.i.i

bb.ay:                                            ; preds = %bb.bc, %bb.ax
  %.sroa.011.1.i.i.i.i = phi i64 [ %i.kx, %bb.bc ], [ 0, %bb.ax ] ; 5 uses
  %i.kv = icmp eq i32 %i.ji, 0
  br i1 %i.kv, label %bb.be, label %thread-pre-split.thread.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  %.val145.i.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !29, !noundef !21
  %.val146.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  call void @_ZN6brotli3enc17brotli_bit_stream28BrotliWriteMetadataMetaBlock17h419927a0fd1f2ae4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val145.i.i.i.i, i64 noundef %.val146.i.i.i.i), !noalias !5328
  %.val175.i.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !29, !noundef !21 ; 2 uses
  %.val176.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 4 uses
  %i.kw = load i64, ptr %i.aq, align 8, !noalias !5320, !noundef !21 ; 2 uses
  %i.kx = lshr i64 %i.kw, 3                       ; 5 uses
  %i.ky = icmp ult i64 %i.kx, %.val176.i.i.i.i
  br i1 %i.ky, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.kz = add nuw nsw i64 %i.kx, 1                ; 3 uses
  %i.la = icmp ult i64 %i.kz, %.val176.i.i.i.i
  br i1 %i.la, label %bb.bc, label %bb.bd

bb.bb:                                            ; preds = %bb.az
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.kx, i64 noundef %.val176.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1181) #46, !noalias !5328
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.lb = getelementptr inbounds nuw i8, ptr %.val175.i.i.i.i, i64 %i.kx
  %i.lc = load i8, ptr %i.lb, align 1, !noalias !5328, !noundef !21
  %i.ld = zext i8 %i.lc to i16
  %i.le = getelementptr inbounds nuw i8, ptr %.val175.i.i.i.i, i64 %i.kz
  %i.lf = load i8, ptr %i.le, align 1, !noalias !5328, !noundef !21
  %i.lg = zext i8 %i.lf to i16
  %i.lh = shl nuw i16 %i.lg, 8
  %i.li = or disjoint i16 %i.lh, %i.ld
  store i16 %i.li, ptr %i.br, align 8, !alias.scope !5321, !noalias !5322
  %i.lj = trunc i64 %i.kw to i8
  %i.lk = and i8 %i.lj, 7
  store i8 %i.lk, ptr %i.bn, align 2, !alias.scope !5321, !noalias !5322
  store i32 0, ptr %i.bv, align 8, !alias.scope !5321, !noalias !5322
  store i32 0, ptr %i.bw, align 4, !alias.scope !5321, !noalias !5322
  store i8 1, ptr %i.bs, align 1, !alias.scope !5321, !noalias !5322
  br label %bb.ay

bb.bd:                                            ; preds = %bb.ba
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.kz, i64 noundef %.val176.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1182) #46, !noalias !5328
  unreachable

bb.be:                                            ; preds = %bb.ay
  %i.ll = load i8, ptr %i.bx, align 4, !range !38, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %bb.bf, label %thread-pre-split.thread.i.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.ln = load i8, ptr %i.by, align 8, !range !38, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.lo = trunc nuw i8 %i.ln to i1
  br i1 %i.lo, label %bb.bg, label %thread-pre-split.thread.i.i.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.lp = load i8, ptr %i.be, align 2, !range !38, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.lq = trunc nuw i8 %i.lp to i1
  br i1 %i.lq, label %thread-pre-split.thread.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.val143.i.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !29, !noundef !21
  %.val144.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  call void @_ZN6brotli3enc17brotli_bit_stream27BrotliWritePaddingMetaBlock17hdb52f5102f689cf3E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val143.i.i.i.i, i64 noundef %.val144.i.i.i.i), !noalias !5328
  %.pr.pre.i.i.i.i = load i8, ptr %i.bs, align 1, !alias.scope !5321, !noalias !5322
  br label %thread-pre-split.i.i.i.i

bb.bi:                                            ; preds = %bb.cc, %bb.bk, %bb.bj, %thread-pre-split.i.i.i.i
  %i.lr = phi i32 [ %i.ji, %thread-pre-split.i.i.i.i ], [ 0, %bb.bk ], [ %i.nj, %bb.cc ], [ %i.ji, %bb.bj ] ; 4 uses
  %.sroa.011.2.i.i.i.i = phi i64 [ %.sroa.011.0.i.i.i.i, %thread-pre-split.i.i.i.i ], [ %.sroa.011.0194.i.i.i.i, %bb.bk ], [ %i.mj, %bb.cc ], [ %.sroa.011.0194.i.i.i.i, %bb.bj ] ; 5 uses
  %.sroa.07.0.i.i.i.i = phi i64 [ %.pre-phi.i.i.i, %thread-pre-split.i.i.i.i ], [ %.pre-phi.i.i.i, %bb.bk ], [ %i.nr, %bb.cc ], [ %.pre-phi.i.i.i, %bb.bj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !5320
  %i.ls = load i64, ptr %i.bg, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 2 uses
  %i.lt = trunc i64 %i.ls to i32                  ; 3 uses
  %i.lu = icmp ugt i64 %i.ls, 3221225471
  %3 = and i32 %i.lt, 1073741823
  %4 = and i32 %i.lt, 1073741824
  %reass.sub.i.i.i.i = sub nsw i32 %3, %4
  %5 = xor i32 %reass.sub.i.i.i.i, -2147483648
  %.sroa.023.0.i.i.i.i = select i1 %i.lu, i32 %5, i32 %i.lt ; 3 uses
  store i32 %.sroa.023.0.i.i.i.i, ptr %i.ap, align 4, !noalias !5320
  %6 = load i32, ptr %i.bd, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 2 uses
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %bb.cd, label %thread-pre-split4.i.i.i.i

thread-pre-split.thread.i.i.i.i:                  ; preds = %bb.bg, %bb.bf, %bb.be, %bb.ay, %thread-pre-split.i.i.i.i
  %.sroa.011.0194.i.i.i.i = phi i64 [ %.sroa.011.0.i.i.i.i, %thread-pre-split.i.i.i.i ], [ %.sroa.011.1.i.i.i.i, %bb.ay ], [ %.sroa.011.1.i.i.i.i, %bb.bg ], [ %.sroa.011.1.i.i.i.i, %bb.bf ], [ %.sroa.011.1.i.i.i.i, %bb.be ] ; 2 uses
  %i.lv = load i8, ptr %i.be, align 2, !range !38, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.lw = trunc nuw i8 %i.lv to i1
  br i1 %i.lw, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %thread-pre-split.thread.i.i.i.i
  store i8 3, ptr %i.bs, align 1, !alias.scope !5321, !noalias !5322
  br label %bb.bi

bb.bk:                                            ; preds = %thread-pre-split.thread.i.i.i.i
  %i.lx = icmp eq i32 %i.ji, 0
  br i1 %i.lx, label %bb.bi, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ly = load i64, ptr %i.bg, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.lz = icmp ult i64 %i.ly, 2
  br i1 %i.lz, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ma = load i8, ptr %i.bz, align 4, !range !38, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.mb = trunc nuw i8 %i.ma to i1
  br i1 %i.mb, label %bb.bo, label %bb.bn, !prof !31

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1183, i64 noundef 72, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1184) #46, !noalias !5328
  unreachable

bb.bo:                                            ; preds = %bb.bm, %bb.bl
  %.sroa.0.0.i195.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.jt, i64 2) ; 4 uses
  %.val142.i.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 4 uses
  %i.mc = load i64, ptr %i.cb, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 4 uses
  %i.md = icmp ugt i64 %i.mc, %.val142.i.i.i.i
  br i1 %i.md, label %bb.bq, label %bb.bp, !prof !30

bb.bp:                                            ; preds = %bb.bo
  %.val141.i.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !29, !noundef !21
  %i.me = sub nuw i64 %.val142.i.i.i.i, %i.mc     ; 5 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.val141.i.i.i.i, i64 %i.mc ; 3 uses
  %i.mg = load i64, ptr %i.bo, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.mh = zext i32 %i.jj to i64                   ; 3 uses
  %.val139.i.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !29, !noundef !21
  %.val140.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream29store_uncompressed_meta_block17h40db7eb2cc54e912E(ptr noalias noundef nonnull align 1 %i.bn, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.mf, i64 noundef %i.me, i64 noundef %i.mg, i64 noundef %i.mh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, i64 noundef %.sroa.0.0.i195.i.i.i.i, ptr noalias noundef align 8 dereferenceable(8) %i.cc, ptr noalias noundef align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val139.i.i.i.i, i64 noundef %.val140.i.i.i.i, i1 noundef zeroext false)
  %.val171.i.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !29, !noundef !21 ; 2 uses
  %.val172.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 4 uses
  %i.mi = load i64, ptr %i.aq, align 8, !noalias !5320, !noundef !21 ; 2 uses
  %i.mj = lshr i64 %i.mi, 3                       ; 5 uses
  %i.mk = icmp ult i64 %i.mj, %.val172.i.i.i.i
  br i1 %i.mk, label %bb.br, label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.mc, i64 noundef %.val142.i.i.i.i, i64 noundef %.val142.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1206) #46, !noalias !5328
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.ml = add nuw nsw i64 %i.mj, 1                ; 3 uses
  %i.mm = icmp ult i64 %i.ml, %.val172.i.i.i.i
  br i1 %i.mm, label %bb.bt, label %bb.bu

bb.bs:                                            ; preds = %bb.bp
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.mj, i64 noundef %.val172.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1185) #46, !noalias !5328
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.mn = getelementptr inbounds nuw i8, ptr %.val171.i.i.i.i, i64 %i.mj
  %i.mo = load i8, ptr %i.mn, align 1, !noalias !5328, !noundef !21
  %i.mp = zext i8 %i.mo to i16
  %i.mq = getelementptr inbounds nuw i8, ptr %.val171.i.i.i.i, i64 %i.ml
  %i.mr = load i8, ptr %i.mq, align 1, !noalias !5328, !noundef !21
  %i.ms = zext i8 %i.mr to i16
  %i.mt = shl nuw i16 %i.ms, 8
  %i.mu = or disjoint i16 %i.mt, %i.mp
  store i16 %i.mu, ptr %i.br, align 8, !alias.scope !5321, !noalias !5322
  %i.mv = trunc i64 %i.mi to i8
  %i.mw = and i8 %i.mv, 7
  store i8 %i.mw, ptr %i.bn, align 2, !alias.scope !5321, !noalias !5322
  %i.mx = load i8, ptr %i.cd, align 1, !alias.scope !5321, !noalias !5322, !noundef !21
  store i8 %i.mx, ptr %i.ce, align 8, !alias.scope !5321, !noalias !5322
  %i.my = load i64, ptr %i.bo, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 3 uses
  %i.mz = and i64 %i.my, %i.mh                    ; 3 uses
  %i.na = icmp ult i64 %i.mz, %i.me
  br i1 %i.na, label %bb.bv, label %bb.bw

bb.bu:                                            ; preds = %bb.br
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ml, i64 noundef %.val172.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1186) #46, !noalias !5328
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.mz
  %i.nc = load i8, ptr %i.nb, align 1, !noalias !5328, !noundef !21 ; 2 uses
  store i8 %i.nc, ptr %i.cd, align 1, !alias.scope !5321, !noalias !5322
  %i.nd = icmp samesign ugt i64 %i.jt, 1          ; 2 uses
  br i1 %i.nd, label %bb.bx, label %bb.by

bb.bw:                                            ; preds = %bb.bt
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.mz, i64 noundef %i.me, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1187) #46, !noalias !5328
  unreachable

bb.bx:                                            ; preds = %bb.bv
  store i8 %i.nc, ptr %i.ce, align 8, !alias.scope !5321, !noalias !5322
  %i.ne = add i64 %i.my, 1
  %i.nf = and i64 %i.ne, %i.mh                    ; 3 uses
  %i.ng = icmp ult i64 %i.nf, %i.me
  br i1 %i.ng, label %bb.bz, label %bb.ca

bb.by:                                            ; preds = %bb.bz, %bb.bv
  %i.nh = add i64 %i.my, %.sroa.0.0.i195.i.i.i.i
  store i64 %i.nh, ptr %i.bo, align 8, !alias.scope !5321, !noalias !5322
  %i.ni = trunc nuw nsw i64 %.sroa.0.0.i195.i.i.i.i to i32
  %i.nj = sub i32 %i.ji, %i.ni                    ; 2 uses
  store i32 %i.nj, ptr %i.ar, align 4, !noalias !5320
  %i.nk = load i64, ptr %i.bg, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.nl = add i64 %i.nk, %.sroa.0.0.i195.i.i.i.i  ; 2 uses
  store i64 %i.nl, ptr %i.bg, align 8, !alias.scope !5321, !noalias !5322
  br i1 %i.nd, label %bb.cc, label %bb.cb

bb.bz:                                            ; preds = %bb.bx
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.nf
  %i.nn = load i8, ptr %i.nm, align 1, !noalias !5328, !noundef !21
  store i8 %i.nn, ptr %i.cd, align 1, !alias.scope !5321, !noalias !5322
  br label %bb.by

bb.ca:                                            ; preds = %bb.bx
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.nf, i64 noundef %i.me, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1188) #46, !noalias !5328
  unreachable

bb.cb:                                            ; preds = %bb.by
  %i.no = load i8, ptr %i.bs, align 1, !range !41, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.np = icmp eq i8 %i.no, 2
  %..i.i.i.i = select i1 %i.np, i8 3, i8 2
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.by
  %.sink.i.i.i.i = phi i8 [ %..i.i.i.i, %bb.cb ], [ 3, %bb.by ]
  store i8 %.sink.i.i.i.i, ptr %i.bs, align 1, !alias.scope !5321, !noalias !5322
  store i32 0, ptr %i.bv, align 8, !alias.scope !5321, !noalias !5322
  store i32 0, ptr %i.bw, align 4, !alias.scope !5321, !noalias !5322
  %i.nq = load i64, ptr %i.bf, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.nr = sub i64 %i.nq, %i.nl
  br label %bb.bi

bb.cd:                                            ; preds = %bb.bi
  %.val156.i.i.i.i = load i64, ptr %i.cg, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.ns = icmp eq i64 %.val156.i.i.i.i, 0
  br i1 %i.ns, label %bb.ce, label %thread-pre-split4.thread.i.i.i.i

bb.ce:                                            ; preds = %bb.cd
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !5329
  %i.nt = call noundef align 4 dereferenceable_or_null(524288) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) 524288, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !5329 ; 2 uses
  %i.nu = icmp eq ptr %i.nt, null
  br i1 %i.nu, label %bb.cf, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit.i.i.i.i"

bb.cf:                                            ; preds = %bb.ce
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 524288, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46, !noalias !5330
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit.i.i.i.i": ; preds = %bb.ce
  %.val154.i.i.i.i = load i64, ptr %i.cg, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 2 uses
  %i.nv = icmp eq i64 %.val154.i.i.i.i, 0
  br i1 %i.nv, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit.i.i.i.i"
  %.val153.i.i.i.i = load ptr, ptr %i.cf, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !noundef !21
  %i.nw = shl nuw nsw i64 %.val154.i.i.i.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val153.i.i.i.i, i64 noundef %i.nw, i64 noundef 4) #45, !noalias !5328
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i.i.i.i"

thread-pre-split4.i.i.i.i:                        ; preds = %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i.i.i.i", %bb.bi
  %i.nx = phi i32 [ %6, %bb.bi ], [ %.pr5.pre.i.i.i.i, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i.i.i.i" ] ; 2 uses
  %switch.i.i.i.i = icmp ult i32 %i.nx, 2
  br i1 %switch.i.i.i.i, label %thread-pre-split4.thread.i.i.i.i, label %bb.ch

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit.i.i.i.i"
  store ptr %i.nt, ptr %i.cf, align 8, !alias.scope !5321, !noalias !5322
  store i64 131072, ptr %i.cg, align 8, !alias.scope !5321, !noalias !5322
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !5331
  %i.ny = call noundef dereferenceable_or_null(131072) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) 131072, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !5331 ; 2 uses
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %bb.cg, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h2ace46120d02d522E.exit.i.i.i.i"

bb.cg:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i.i.i.i"
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 131072, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46, !noalias !5332
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h2ace46120d02d522E.exit.i.i.i.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i.i.i.i"
  %.val152.i.i.i.i = load i64, ptr %i.ci, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 2 uses
  %i.oa = icmp eq i64 %.val152.i.i.i.i, 0
  br i1 %i.oa, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i196.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i196.i.i.i.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h2ace46120d02d522E.exit.i.i.i.i"
  %.val151.i.i.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val151.i.i.i.i, i64 noundef %.val152.i.i.i.i, i64 noundef 1) #45, !noalias !5328
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i196.i.i.i.i", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h2ace46120d02d522E.exit.i.i.i.i"
  store ptr %i.ny, ptr %i.ch, align 8, !alias.scope !5321, !noalias !5322
  store i64 131072, ptr %i.ci, align 8, !alias.scope !5321, !noalias !5322
  %.pr5.pre.i.i.i.i = load i32, ptr %i.bd, align 8, !alias.scope !5321, !noalias !5322
  br label %thread-pre-split4.i.i.i.i

common.resume:                                    ; preds = %.body.i.i.i.i.i, %bb.ig, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i205.i.i.i.i"
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ], [ %i.ahd, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i205.i.i.i.i" ], [ %i.ahd, %bb.ig ]
  resume { ptr, i32 } %common.resume.op

thread-pre-split4.thread.i.i.i.i:                 ; preds = %thread-pre-split4.i.i.i.i, %bb.cd
  %i.ob = phi i32 [ %i.nx, %thread-pre-split4.i.i.i.i ], [ 1, %bb.cd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !5320
  store i64 0, ptr %i.ao, align 8, !noalias !5320
  %.not123.i.i.i.i = icmp eq i64 %.sroa.07.0.i.i.i.i, 0
  br i1 %.not123.i.i.i.i, label %bb.cj, label %bb.ci

bb.ch:                                            ; preds = %thread-pre-split4.i.i.i.i
  %i.oc = load i64, ptr %i.cj, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 2 uses
  %i.od = lshr i32 %i.lr, 1                       ; 2 uses
  %narrow.i.i = add nuw i32 %i.od, 1
  %i.oe = zext i32 %narrow.i.i to i64
  %i.of = add i64 %i.oc, %i.oe                    ; 2 uses
  %i.og = load i64, ptr %i.ck, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.oh = icmp ugt i64 %i.of, %i.og
  br i1 %i.oh, label %bb.cw, label %bb.cz

bb.ci:                                            ; preds = %thread-pre-split4.thread.i.i.i.i
  %.val138.i.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 4 uses
  %i.oi = load i64, ptr %i.cb, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 4 uses
  %i.oj = icmp ugt i64 %i.oi, %.val138.i.i.i.i
  br i1 %i.oj, label %bb.cl, label %bb.ck, !prof !30

bb.cj:                                            ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hca27017a30a3e9c5E.exit.i.i.i.i", %thread-pre-split4.thread.i.i.i.i
  %storemerge.i.i.i.i = phi i64 [ %i.oz, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hca27017a30a3e9c5E.exit.i.i.i.i" ], [ %.sroa.011.2.i.i.i.i, %thread-pre-split4.thread.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !5320
  br label %bb.ii

bb.ck:                                            ; preds = %bb.ci
  %.val137.i.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !29, !noundef !21
  %i.ok = sub nuw i64 %.val138.i.i.i.i, %i.oi     ; 7 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.val137.i.i.i.i, i64 %i.oi ; 2 uses
  %i.om = zext i32 %i.lr to i64                   ; 3 uses
  %i.on = call fastcc { ptr, i64 } @_ZN6brotli3enc6encode20GetHashTableInternal17hba825535b521f96bE(ptr noalias noundef align 4 dereferenceable(4096) %i.fe, ptr noalias noundef align 8 dereferenceable(16) %i.ff, i32 noundef %i.ob, i64 noundef %i.om, ptr noalias noundef align 8 dereferenceable(8) %i.ao), !noalias !5328 ; 2 uses
  %i.oo = extractvalue { ptr, i64 } %i.on, 0      ; 2 uses
  %i.op = extractvalue { ptr, i64 } %i.on, 1      ; 2 uses
  %i.oq = load i32, ptr %i.bd, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.or = icmp eq i32 %i.oq, 0
  %i.os = and i32 %.sroa.023.0.i.i.i.i, %i.jj
  %i.ot = zext i32 %i.os to i64                   ; 7 uses
  %i.ou = icmp ult i64 %i.ok, %i.ot               ; 2 uses
  br i1 %i.or, label %bb.cm, label %bb.cn

bb.cl:                                            ; preds = %bb.ci
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.oi, i64 noundef %.val138.i.i.i.i, i64 noundef %.val138.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1193) #46, !noalias !5328
  unreachable

bb.cm:                                            ; preds = %bb.ck
  br i1 %i.ou, label %bb.cp, label %bb.co, !prof !30

bb.cn:                                            ; preds = %bb.ck
  br i1 %i.ou, label %bb.cs, label %bb.cr, !prof !30

bb.co:                                            ; preds = %bb.cm
  %i.ov = sub nuw i64 %i.ok, %i.ot
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.ot
  %i.ox = load i64, ptr %i.ao, align 8, !noalias !5320, !noundef !21
  %.val135.i.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !29, !noundef !21
  %.val136.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  call fastcc void @_ZN6brotli3enc17compress_fragment22compress_fragment_fast17haf5d90f6c7bad72eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ow, i64 noundef %i.ov, i64 noundef %i.om, i1 noundef zeroext false, ptr noalias noundef nonnull align 4 %i.oo, i64 noundef %i.op, i64 noundef %i.ox, ptr noalias noundef nonnull align 1 %i.fg, ptr noalias noundef nonnull align 2 %i.fh, ptr noalias noundef align 8 dereferenceable(8) %i.fi, ptr noalias noundef nonnull align 1 %i.fj, ptr noalias noundef align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val135.i.i.i.i, i64 noundef %.val136.i.i.i.i)
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cm
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ot, i64 noundef %i.ok, i64 noundef %i.ok, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1189) #46, !noalias !5328
  unreachable

bb.cq:                                            ; preds = %bb.cr, %bb.co
  %.val167.i.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !29, !noundef !21 ; 2 uses
  %.val168.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 4 uses
  %i.oy = load i64, ptr %i.aq, align 8, !noalias !5320, !noundef !21 ; 2 uses
  %i.oz = lshr i64 %i.oy, 3                       ; 5 uses
  %i.pa = icmp ult i64 %i.oz, %.val168.i.i.i.i
  br i1 %i.pa, label %bb.ct, label %bb.cu

bb.cr:                                            ; preds = %bb.cn
  %i.pb = sub nuw i64 %i.ok, %i.ot
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.ot
  %.val177.i.i.i.i = load ptr, ptr %i.cf, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !28, !noundef !21
  %.val178.i.i.i.i = load i64, ptr %i.cg, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %.val133.i.i.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !29, !noundef !21
  %.val134.i.i.i.i = load i64, ptr %i.ci, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.pd = load i64, ptr %i.ao, align 8, !noalias !5320, !noundef !21
  %.val131.i.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !29, !noundef !21
  %.val132.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  call fastcc void @_ZN6brotli3enc26compress_fragment_two_pass26compress_fragment_two_pass17h8b6af29289feb42eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.pc, i64 noundef %i.pb, i64 noundef %i.om, i1 noundef zeroext false, ptr noalias noundef nonnull align 4 %.val177.i.i.i.i, i64 noundef %.val178.i.i.i.i, ptr noalias noundef nonnull align 1 %.val133.i.i.i.i, i64 noundef %.val134.i.i.i.i, ptr noalias noundef nonnull align 4 %i.oo, i64 noundef %i.op, i64 noundef %i.pd, ptr noalias noundef align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val131.i.i.i.i, i64 noundef %.val132.i.i.i.i), !noalias !5328
  br label %bb.cq

bb.cs:                                            ; preds = %bb.cn
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ot, i64 noundef %i.ok, i64 noundef %i.ok, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1192) #46, !noalias !5328
  unreachable

bb.ct:                                            ; preds = %bb.cq
  %i.pe = add nuw nsw i64 %i.oz, 1                ; 3 uses
  %i.pf = icmp ult i64 %i.pe, %.val168.i.i.i.i
  br i1 %i.pf, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hca27017a30a3e9c5E.exit.i.i.i.i", label %bb.cv

bb.cu:                                            ; preds = %bb.cq
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.oz, i64 noundef %.val168.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1190) #46, !noalias !5328
  unreachable

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hca27017a30a3e9c5E.exit.i.i.i.i": ; preds = %bb.ct
  %i.pg = getelementptr inbounds nuw i8, ptr %.val167.i.i.i.i, i64 %i.oz
  %i.ph = load i8, ptr %i.pg, align 1, !noalias !5328, !noundef !21
  %i.pi = zext i8 %i.ph to i16
  %i.pj = getelementptr inbounds nuw i8, ptr %.val167.i.i.i.i, i64 %i.pe
  %i.pk = load i8, ptr %i.pj, align 1, !noalias !5328, !noundef !21
  %i.pl = zext i8 %i.pk to i16
  %i.pm = shl nuw i16 %i.pl, 8
  %i.pn = or disjoint i16 %i.pm, %i.pi
  store i16 %i.pn, ptr %i.br, align 8, !alias.scope !5321, !noalias !5322
  %i.po = trunc i64 %i.oy to i8
  %i.pp = and i8 %i.po, 7
  store i8 %i.pp, ptr %i.bn, align 2, !alias.scope !5321, !noalias !5322
  %i.pq = load i64, ptr %i.bf, align 8, !alias.scope !5333, !noalias !5322, !noundef !21
  store i64 %i.pq, ptr %i.bg, align 8, !alias.scope !5333, !noalias !5322
  store i32 0, ptr %i.bv, align 8, !alias.scope !5321, !noalias !5322
  store i32 0, ptr %i.bw, align 4, !alias.scope !5321, !noalias !5322
  br label %bb.cj

bb.cv:                                            ; preds = %bb.ct
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.pe, i64 noundef %.val168.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1191) #46, !noalias !5328
  unreachable

bb.cw:                                            ; preds = %bb.ch
  %i.pr = lshr i32 %i.lr, 2                       ; 2 uses
  %i.ps = add nuw nsw i32 %i.pr, 16
  %i.pt = zext nneg i32 %i.ps to i64
  %i.pu = add i64 %i.of, %i.pt                    ; 12 uses
  store i64 %i.pu, ptr %i.ck, align 8, !alias.scope !5321, !noalias !5322
  %i.pv = shl i64 %i.pu, 4                        ; 5 uses
  %i.pw = icmp ugt i64 %i.pu, 1152921504606846975
  %i.px = icmp ugt i64 %i.pv, 9223372036854775804
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.pw, %i.px
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.cy, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i198.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i198.i.i.i.i: ; preds = %bb.cw
  %i.py = icmp eq i64 %i.pv, 0
  br i1 %i.py, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h19f489a4f32ce774E.exit.i.i.i.i.i.i.i", label %bb.cx

bb.cx:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i198.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !5334
  %i.pz = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.pv, i64 noundef range(i64 1, 9) 4) #45, !noalias !5334 ; 2 uses
  %i.qa = icmp eq ptr %i.pz, null
  br i1 %i.qa, label %bb.cy, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h19f489a4f32ce774E.exit.i.i.i.i.i.i.i"

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.sroa.4.0.ph.i.i.i199.i.i.i.i = phi i64 [ 4, %bb.cx ], [ 0, %bb.cw ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i199.i.i.i.i, i64 %i.pv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46, !noalias !5335
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h19f489a4f32ce774E.exit.i.i.i.i.i.i.i": ; preds = %bb.cx, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i198.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i198.i.i.i.i ], [ %i.pz, %bb.cx ] ; 6 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i198.i.i.i.i ], [ %i.pu, %bb.cx ]
  %i.qb = icmp samesign ule i64 %i.pu, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.qb)
  %i.qc = icmp samesign ugt i64 %i.pu, 1
  br i1 %i.qc, label %.lr.ph.i.i.i.preheader.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.preheader.i.i.i.i:                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h19f489a4f32ce774E.exit.i.i.i.i.i.i.i"
  %narrow.i.i.i = add nuw i32 %i.pr, %i.od
  %i.qd = zext i32 %narrow.i.i.i to i64
  %i.qe = add i64 %i.oc, %i.qd
  %i.qf = shl i64 %i.qe, 4                        ; 2 uses
  %i.qg = add i64 %i.qf, 256
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.sroa.10.0.i.i.i.i.i.i.i, i8 0, i64 %i.qg, i1 false), !noalias !5328
  %i.qh = getelementptr i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.qf
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.qh, i64 256
  br label %._crit_edge.thread.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h19f489a4f32ce774E.exit.i.i.i.i.i.i.i"
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.pu, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.da, label %._crit_edge.thread.i.i.i.i.i.i.i

._crit_edge.thread.i.i.i.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.i.i.i
  %.sroa.0.0.lcssa15.i.i.i.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph.i.i.i.preheader.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.0.lcssa15.i.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !5328
  br label %bb.da

bb.cz:                                            ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..command..Command$GT$$GT$17ha45ee5d37901ae7cE.exit.i.i.i.i", %bb.ch
  %.val130.i.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 4 uses
  %i.qi = load i64, ptr %i.cb, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 4 uses
  %i.qj = icmp ugt i64 %i.qi, %.val130.i.i.i.i
  br i1 %i.qj, label %bb.dg, label %bb.df, !prof !30

bb.da:                                            ; preds = %._crit_edge.thread.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %i.qk = icmp samesign ult i64 %i.pu, 576460752303423488
  call void @llvm.assume(i1 %i.qk)
  %.val181.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !28, !noundef !21
  %.val182.i.i.i.i = load i64, ptr %i.cm, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 3 uses
  %i.ql = icmp eq i64 %.val182.i.i.i.i, 0
  br i1 %i.ql, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..command..Command$GT$$GT$17ha45ee5d37901ae7cE.exit.i.i.i.i", label %bb.dc

bb.db:                                            ; preds = %bb.de
  %i.qm = shl nuw nsw i64 %i.qu, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.qt, i64 noundef %i.qm, i64 noundef 4) #45, !noalias !5328
  %.val186.pr.pre.i.i.i.i = load i64, ptr %i.cm, align 8, !alias.scope !5321, !noalias !5322 ; 2 uses
  %i.qn = icmp eq i64 %.val186.pr.pre.i.i.i.i, 0
  br i1 %i.qn, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..command..Command$GT$$GT$17ha45ee5d37901ae7cE.exit.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i200.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i200.i.i.i.i": ; preds = %bb.db
  %.val185.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !noundef !21
  %i.qo = shl nuw nsw i64 %.val186.pr.pre.i.i.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val185.i.i.i.i, i64 noundef %i.qo, i64 noundef 4) #45, !noalias !5328
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..command..Command$GT$$GT$17ha45ee5d37901ae7cE.exit.i.i.i.i"

bb.dc:                                            ; preds = %bb.da
  %i.qp = load i64, ptr %i.cj, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 4 uses
  %.not117.i.i.i.i = icmp ugt i64 %i.qp, %i.pu
  br i1 %.not117.i.i.i.i, label %.invoke.i.i.i.i, label %bb.dd, !prof !64

bb.dd:                                            ; preds = %bb.dc
  %.not118.i.i.i.i = icmp ugt i64 %i.qp, %.val182.i.i.i.i
  br i1 %.not118.i.i.i.i, label %.invoke.i.i.i.i, label %bb.de, !prof !64

.invoke.i.i.i.i:                                  ; preds = %bb.dd, %bb.dc
  %i.qq = phi i64 [ %i.pu, %bb.dc ], [ %.val182.i.i.i.i, %bb.dd ]
  %i.qr = phi ptr [ @1205, %bb.dc ], [ @1204, %bb.dd ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.qp, i64 noundef %i.qq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qr) #46
          to label %.cont.i.i.i.i unwind label %bb.ig, !noalias !5328

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.de:                                            ; preds = %bb.dd
  %i.qs = shl nuw nsw i64 %i.qp, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.10.0.i.i.i.i.i.i.i, ptr nonnull readonly align 4 %.val181.i.i.i.i, i64 %i.qs, i1 false), !alias.scope !5336, !noalias !5328
  %i.qt = load ptr, ptr %i.cl, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !28, !noundef !21
  %i.qu = load i64, ptr %i.cm, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.cl, align 8, !alias.scope !5321, !noalias !5322
  store i64 0, ptr %i.cm, align 8, !alias.scope !5321, !noalias !5322
  %i.qv = icmp eq i64 %i.qu, 0
  br i1 %i.qv, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..command..Command$GT$$GT$17ha45ee5d37901ae7cE.exit.i.i.i.i", label %bb.db

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..command..Command$GT$$GT$17ha45ee5d37901ae7cE.exit.i.i.i.i": ; preds = %bb.de, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i200.i.i.i.i", %bb.db, %bb.da
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %i.cl, align 8, !alias.scope !5321, !noalias !5322
  store i64 %i.pu, ptr %i.cm, align 8, !alias.scope !5321, !noalias !5322
  br label %bb.cz

bb.df:                                            ; preds = %bb.cz
  %.val129.i.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !29, !noundef !21
  %i.qw = sub nuw i64 %.val130.i.i.i.i, %i.qi     ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.val129.i.i.i.i, i64 %i.qi ; 2 uses
  %i.qy = zext i32 %i.jj to i64                   ; 22 uses
  %i.qz = load i64, ptr %i.cn, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.ra = zext i32 %.sroa.023.0.i.i.i.i to i64    ; 4 uses
  %i.rb = zext i32 %i.lr to i64                   ; 4 uses
  call fastcc void @_ZN6brotli3enc6encode12hasher_setup17h216158525b9a03eeE(ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ba, ptr noalias noundef align 8 dereferenceable(112) %i.bu, i64 noundef %i.qz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qx, i64 noundef %i.qw, i64 noundef %i.ra, i64 noundef %i.rb, i1 noundef zeroext false), !noalias !5328
  call fastcc void @"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$21StitchToPreviousBlock17hb314d7bb5ae5d43cE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ba, i64 noundef %i.rb, i64 noundef %i.ra, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qx, i64 noundef %i.qw, i64 noundef %i.qy), !noalias !5328
  %.val163.i.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !29, !noundef !21
  %.val164.i.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.rc = load i64, ptr %i.bo, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 5 uses
  %8 = icmp ugt i64 %i.rc, 3221225471
  %9 = and i64 %i.rc, 1073741823
  %10 = and i64 %i.rc, 1073741824
  %reass.sub = sub nsw i64 %9, %10
  %11 = add nsw i64 %reass.sub, 2147483648
  %.sroa.025.0.i.i.i.i = select i1 %8, i64 %11, i64 %i.rc
  %12 = load i64, ptr %i.bf, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %13 = sub i64 %12, %i.rc
  %14 = call noundef i8 @_ZN6brotli3enc6encode17ChooseContextMode17h6a63f239b9ccfc8aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val163.i.i.i.i, i64 noundef %.val164.i.i.i.i, i64 noundef %.sroa.025.0.i.i.i.i, i64 noundef %i.qy, i64 noundef %13), !noalias !5328 ; 5 uses
  %15 = load i64, ptr %i.cj, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %bb.di, label %bb.dh

bb.dg:                                            ; preds = %bb.cz
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.qi, i64 noundef %.val130.i.i.i.i, i64 noundef %.val130.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1203) #46, !noalias !5328
  unreachable

bb.dh:                                            ; preds = %bb.df
  %i.rd = load i64, ptr %i.co, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.re = icmp eq i64 %i.rd, 0
  br i1 %i.re, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dj, %bb.dh, %bb.df
  %.pre-phi67.i.i.i.i = phi i64 [ %i.ra, %bb.dh ], [ %i.ra, %bb.df ], [ %.pre66.i.i.i.i, %bb.dj ]
  %.pre-phi.i.i.i.i = phi i64 [ %i.rb, %bb.dh ], [ %i.rb, %bb.df ], [ %.pre65.i.i.i.i.a, %bb.dj ]
  %.val127.i.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !29, !noundef !21
  %.val128.i.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 4 uses
  %i.rf = load i64, ptr %i.cb, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 4 uses
  %i.rg = icmp ugt i64 %i.rf, %.val128.i.i.i.i
  br i1 %i.rg, label %bb.dl, label %bb.dk, !prof !30

bb.dj:                                            ; preds = %bb.dh
  call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$19extend_last_command17h3499bb64ed6cc43fE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ba, ptr noalias noundef align 4 dereferenceable(4) %i.ar, ptr noalias noundef align 4 dereferenceable(4) %i.ap), !noalias !5328
  %.pre.i.i.i.i = load i32, ptr %i.ar, align 4, !noalias !5320
  %.pre63.i.i.i.i = load i32, ptr %i.ap, align 4, !noalias !5320
  %.pre65.i.i.i.i.a = zext i32 %.pre.i.i.i.i to i64
  %.pre66.i.i.i.i = zext i32 %.pre63.i.i.i.i to i64
  br label %bb.di

bb.dk:                                            ; preds = %bb.di
  %.val192.i.i.i.i = load i64, ptr %i.cm, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 4 uses
  %i.rh = load i64, ptr %i.cj, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 4 uses
  %i.ri = icmp ugt i64 %i.rh, %.val192.i.i.i.i
  br i1 %i.ri, label %bb.dn, label %bb.dm, !prof !30

bb.dl:                                            ; preds = %bb.di
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.rf, i64 noundef %.val128.i.i.i.i, i64 noundef %.val128.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1202) #46, !noalias !5328
  unreachable

bb.dm:                                            ; preds = %bb.dk
  %.val191.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !28, !noundef !21
  %i.rj = load i64, ptr %i.cn, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.rk = getelementptr inbounds nuw i8, ptr %.val127.i.i.i.i, i64 %i.rf
  %i.rl = sub nuw i64 %.val128.i.i.i.i, %i.rf
  %i.rm = sub nuw i64 %.val192.i.i.i.i, %i.rh
  %i.rn = getelementptr inbounds nuw [16 x i8], ptr %.val191.i.i.i.i, i64 %i.rh
  call fastcc void @_ZN6brotli3enc19backward_references30BrotliCreateBackwardReferences17he5bf28e56e3e77a2E(i64 noundef %.pre-phi.i.i.i.i, i64 noundef %.pre-phi67.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.rk, i64 noundef %i.rl, i64 noundef %i.qy, i64 noundef %i.rj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ba, ptr noalias noundef nonnull align 4 %i.cp, ptr noalias noundef align 8 dereferenceable(8) %i.co, ptr noalias noundef nonnull align 4 %i.rn, i64 noundef %i.rm, ptr noalias noundef align 8 dereferenceable(8) %i.cj, ptr noalias noundef align 8 dereferenceable(8) %i.cq)
  %i.ro = call noundef i64 @_ZN6brotli3enc6encode16MaxMetablockSize17hd5d2080980d19f9bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu), !noalias !5328 ; 2 uses
  %i.rp = lshr i64 %i.ro, 3                       ; 2 uses
  %i.rq = load i64, ptr %i.bf, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.rr = load i64, ptr %i.bo, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.rs = sub i64 %i.rq, %i.rr
  call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h976450b2f254cc2bE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ba)
  %i.rt = load i32, ptr %i.bh, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.ru = and i32 %i.rt, 63
  %i.rv = zext nneg i32 %i.ru to i64
  %i.rw = shl nuw i64 1, %i.rv
  %i.rx = add i64 %i.rs, %i.rw
  %.not121.i.i.i.i = icmp ugt i64 %i.rx, %i.ro    ; 2 uses
  %i.ry = load i32, ptr %i.bd, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.rz = icmp slt i32 %i.ry, 4
  br i1 %i.rz, label %.split.i.i.i.i, label %bb.do

bb.dn:                                            ; preds = %bb.dk
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.rh, i64 noundef %.val192.i.i.i.i, i64 noundef %.val192.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1201) #46, !noalias !5328
  unreachable

.split.i.i.i.i:                                   ; preds = %bb.dm
  %i.sa = load i64, ptr %i.cq, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 2 uses
  %i.sb = load i64, ptr %i.cj, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.sc = add i64 %i.sb, %i.sa
  %i.sd = icmp ugt i64 %i.sc, 12286
  %i.se = or i1 %.not121.i.i.i.i, %i.sd
  br i1 %i.se, label %bb.dp, label %bb.dq

bb.do:                                            ; preds = %bb.dm
  br i1 %.not121.i.i.i.i, label %bb.dp, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.do
  %.pre64.i.i.i.i = load i64, ptr %i.cq, align 8, !alias.scope !5321, !noalias !5322
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dr, %bb.dq, %bb.do, %.split.i.i.i.i
  %i.sf = load i64, ptr %i.co, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.sf, 0
  br i1 %.not.i.i.i.i, label %bb.dz, label %bb.dw

bb.dq:                                            ; preds = %._crit_edge.i.i.i.i, %.split.i.i.i.i
  %i.sg = phi i64 [ %.pre64.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.sa, %.split.i.i.i.i ]
  %i.sh = icmp ult i64 %i.sg, %i.rp
  br i1 %i.sh, label %bb.dr, label %bb.dp

bb.dr:                                            ; preds = %bb.dq
  %i.si = load i64, ptr %i.cj, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.sj = icmp ult i64 %i.si, %i.rp
  br i1 %i.sj, label %bb.ds, label %bb.dp

bb.ds:                                            ; preds = %bb.dr
  %17 = load i64, ptr %i.bg, align 8, !alias.scope !5337, !noalias !5322, !noundef !21 ; 2 uses
  %18 = trunc i64 %17 to i32                      ; 3 uses
  %19 = icmp ugt i64 %17, 3221225471
  %20 = and i32 %18, 1073741823
  %i.sk = and i32 %18, 1073741824
  %reass.sub.i16.i.i = sub nsw i32 %20, %i.sk
  %21 = xor i32 %reass.sub.i16.i.i, -2147483648
  %.sroa.0.0.i17.i.i = select i1 %19, i32 %21, i32 %18
  %22 = load i64, ptr %i.bf, align 8, !alias.scope !5337, !noalias !5322, !noundef !21 ; 3 uses
  %23 = trunc i64 %22 to i32                      ; 3 uses
  %24 = icmp ugt i64 %22, 3221225471
  %25 = and i32 %23, 1073741823
  %i.sl = and i32 %23, 1073741824
  %reass.sub5.i.i.i = sub nsw i32 %25, %i.sl
  %i.sm = xor i32 %reass.sub5.i.i.i, -2147483648
  %.sroa.02.0.i.i.i = select i1 %24, i32 %i.sm, i32 %23
  store i64 %22, ptr %i.bg, align 8, !alias.scope !5337, !noalias !5322
  %26 = icmp ult i32 %.sroa.02.0.i.i.i, %.sroa.0.0.i17.i.i
  br i1 %26, label %bb.dt, label %bb.ii

bb.dt:                                            ; preds = %bb.ds
  %i.sn = load i64, ptr %i.ba, align 8, !range !70, !alias.scope !5321, !noalias !5322, !noundef !21
  switch i64 %i.sn, label %default.unreachable [
    i64 0, label %bb.ii
    i64 10, label %bb.dv
    i64 1, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit"
    i64 2, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit"
    i64 3, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit"
    i64 4, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit"
    i64 5, label %bb.du
    i64 6, label %bb.du
    i64 7, label %bb.du
    i64 8, label %bb.du
    i64 9, label %bb.du
  ], !prof !77

default.unreachable:                              ; preds = %bb.ix, %bb.hv, %bb.dt
  unreachable

bb.du:                                            ; preds = %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit"

bb.dv:                                            ; preds = %bb.dt
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit"

"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit": ; preds = %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.du, %bb.dv
  %.sink.i10 = phi i64 [ 56, %bb.dv ], [ 24, %bb.dt ], [ 24, %bb.dt ], [ 24, %bb.dt ], [ 24, %bb.dt ], [ 40, %bb.du ]
  %i.so = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sink.i10
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 40
  store i32 0, ptr %i.sp, align 8
  br label %bb.ii

bb.dw:                                            ; preds = %bb.dp
  %.val190.i.i.i.i = load i64, ptr %i.cm, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 2 uses
  %i.sq = load i64, ptr %i.cj, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 3 uses
  %i.sr = icmp ult i64 %i.sq, %.val190.i.i.i.i
  br i1 %i.sr, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %.val189.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !28, !noundef !21
  %i.ss = getelementptr inbounds nuw [16 x i8], ptr %.val189.i.i.i.i, i64 %i.sq
  call void @_ZN6brotli3enc7command7Command11init_insert17hcc78d94f9f80b580E(ptr noalias noundef nonnull align 4 dereferenceable(16) %i.ss, i64 noundef %i.sf), !noalias !5328
  %i.st = load i64, ptr %i.co, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.su = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !5321, !noalias !5322
  %i.sv = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.st, i64 1
  %i.sw = add <2 x i64> %i.su, %i.sv
  store <2 x i64> %i.sw, ptr %i.cj, align 8, !alias.scope !5321, !noalias !5322
  store i64 0, ptr %i.co, align 8, !alias.scope !5321, !noalias !5322
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.sq, i64 noundef %.val190.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1194) #46, !noalias !5328
  unreachable

bb.dz:                                            ; preds = %bb.dx, %bb.dp
  %i.sx = load i64, ptr %i.bf, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 2 uses
  %i.sy = load i64, ptr %i.bo, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 5 uses
  %i.sz = icmp eq i64 %i.sx, %i.sy
  br i1 %i.sz, label %bb.ii, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %.val126.i.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 4 uses
  %i.ta = load i64, ptr %i.cb, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 4 uses
  %i.tb = icmp ugt i64 %i.ta, %.val126.i.i.i.i
  br i1 %i.tb, label %bb.hp, label %bb.eb, !prof !30

bb.eb:                                            ; preds = %bb.ea
  %.val125.i.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !29, !noundef !21
  %i.tc = sub i64 %i.sx, %i.sy
  %i.td = sub nuw i64 %.val126.i.i.i.i, %i.ta     ; 24 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.val125.i.i.i.i, i64 %i.ta ; 19 uses
  %i.tf = and i64 %i.tc, 4294967295               ; 12 uses
  %i.tg = load i8, ptr %i.cd, align 1, !alias.scope !5321, !noalias !5322, !noundef !21 ; 3 uses
  %i.th = load i8, ptr %i.ce, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 3 uses
  %i.ti = load i64, ptr %i.cq, align 8, !alias.scope !5321, !noalias !5322, !noundef !21
  %i.tj = load i64, ptr %i.cj, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 19 uses
  %.val187.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !28, !noundef !21 ; 12 uses
  %.val188.i.i.i.i = load i64, ptr %i.cm, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 14 uses
  %.val.i.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !29, !noundef !21 ; 44 uses
  %.val124.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 44 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5338)
  call void @llvm.experimental.noalias.scope.decl(metadata !5339)
  call void @llvm.experimental.noalias.scope.decl(metadata !5340)
  call void @llvm.experimental.noalias.scope.decl(metadata !5341)
  call void @llvm.experimental.noalias.scope.decl(metadata !5342)
  call void @llvm.experimental.noalias.scope.decl(metadata !5343)
  call void @llvm.experimental.noalias.scope.decl(metadata !5344)
  %i.tk = load i8, ptr %i.by, align 8, !range !38, !alias.scope !5345, !noalias !5346, !noundef !21
  %i.tl = trunc nuw i8 %i.tk to i1
  %i.tm = load i8, ptr %i.bx, align 4, !range !38, !alias.scope !5345, !noalias !5346
  %i.tn = trunc nuw i8 %i.tm to i1
  %or.cond.i.i.i.i.i = select i1 %i.tl, i1 true, i1 %i.tn
  %or.cond.not.i.i.i.i.i = xor i1 %or.cond.i.i.i.i.i, true
  %i.to = load i8, ptr %i.be, align 2, !range !38, !alias.scope !5345, !noalias !5346
  %i.tp = trunc nuw i8 %i.to to i1
  %or.cond25.i.i.i.i.i = select i1 %or.cond.not.i.i.i.i.i, i1 %i.tp, i1 false, !prof !44
  br i1 %or.cond25.i.i.i.i.i, label %bb.ec, label %bb.ed, !prof !44

bb.ec:                                            ; preds = %bb.eb
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1176, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1177) #46, !noalias !5347
  unreachable

bb.ed:                                            ; preds = %bb.eb
  %27 = trunc i64 %i.sy to i32                    ; 3 uses
  %28 = icmp ugt i64 %i.sy, 3221225471
  %29 = and i32 %27, 1073741823
  %30 = and i32 %27, 1073741824
  %reass.sub.i201.i.i.i.i = sub nsw i32 %29, %30
  %31 = xor i32 %reass.sub.i201.i.i.i.i, -2147483648
  %.sroa.012.0.i.i.i.i.i = select i1 %28, i32 %31, i32 %27 ; 7 uses
  %i.tq = zext nneg i8 %14 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !5348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.an, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.bu, i64 112, i1 false), !noalias !5346
  %i.tr = icmp eq i64 %i.tf, 0
  br i1 %i.tr, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  call void @_ZN6brotli3enc6encode28WriteEmptyLastBlocksInternal17hbf27001cc1f7fee1E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef %.val124.i.i.i.i), !noalias !5349
  br label %_ZN6brotli3enc6encode22WriteMetaBlockInternal17h3bc364bcac3249c2E.exit.i.i.i.i

bb.ef:                                            ; preds = %bb.ed
  %i.ts = call noundef zeroext i1 @_ZN6brotli3enc6encode15should_compress17he8a685b155995016E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.te, i64 noundef %i.td, i64 noundef range(i64 0, 4294967296) %i.qy, i64 noundef %i.sy, i64 noundef range(i64 0, 4294967296) %i.tf, i64 noundef %i.ti, i64 noundef %i.tj), !noalias !5347
  br i1 %i.ts, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cp, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cs, i64 16, i1 false), !alias.scope !5350, !noalias !5351
  %i.tt = zext i32 %.sroa.012.0.i.i.i.i.i to i64
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream29store_uncompressed_meta_block17h40db7eb2cc54e912E(ptr noalias noundef nonnull align 1 %i.bn, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.te, i64 noundef %i.td, i64 noundef %i.tt, i64 noundef range(i64 0, 4294967296) %i.qy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, i64 noundef range(i64 0, 4294967296) %i.tf, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef %.val124.i.i.i.i, i1 noundef zeroext false)
  br label %_ZN6brotli3enc6encode22WriteMetaBlockInternal17h3bc364bcac3249c2E.exit.i.i.i.i

bb.eh:                                            ; preds = %bb.ef
  %i.tu = load i64, ptr %i.aq, align 8, !alias.scope !5343, !noalias !5352, !noundef !21 ; 2 uses
  %i.tv = lshr i64 %i.tu, 3                       ; 3 uses
  %i.tw = add nuw nsw i64 %i.tv, 1                ; 3 uses
  %i.tx = icmp ult i64 %i.tw, %.val124.i.i.i.i
  br i1 %i.tx, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.ty = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.tw ; 2 uses
  %i.tz = load i8, ptr %i.ty, align 1, !alias.scope !5344, !noalias !5353, !noundef !21
  %i.ua = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.tv ; 2 uses
  %i.ub = load i8, ptr %i.ua, align 1, !alias.scope !5344, !noalias !5353, !noundef !21
  %i.uc = load i32, ptr %i.bd, align 8, !alias.scope !5345, !noalias !5346, !noundef !21 ; 4 uses
  %i.ud = icmp slt i32 %i.uc, 3
  br i1 %i.ud, label %bb.el, label %bb.ek

bb.ej:                                            ; preds = %bb.eh
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.tw, i64 noundef %.val124.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1178) #46, !noalias !5347
  unreachable

bb.ek:                                            ; preds = %bb.ei
  %i.ue = icmp eq i32 %i.uc, 3
  br i1 %i.ue, label %bb.ex, label %bb.ew

bb.el:                                            ; preds = %bb.ei
  %i.uf = zext i32 %.sroa.012.0.i.i.i.i.i to i64  ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5354)
  call void @llvm.experimental.noalias.scope.decl(metadata !5355)
  call void @llvm.experimental.noalias.scope.decl(metadata !5356)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !5357
  call void @_ZN6brotli3enc17brotli_bit_stream24InputPairFromMaskedInput17h9911943266a08ad9E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.aj, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.te, i64 noundef %i.td, i64 noundef range(i64 0, 4294967296) %i.uf, i64 noundef range(i64 1, 4294967296) %i.tf, i64 noundef range(i64 0, 4294967296) %i.qy), !noalias !5358
  %i.ug = load ptr, ptr %i.aj, align 8, !noalias !5357, !nonnull !21, !align !29, !noundef !21
  %i.uh = load i64, ptr %i.ep, align 8, !noalias !5357, !noundef !21
  %i.ui = load ptr, ptr %i.eq, align 8, !noalias !5357, !nonnull !21, !align !29, !noundef !21
  %i.uj = load i64, ptr %i.er, align 8, !noalias !5357, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !5357
  %i.uk = load i8, ptr %i.ee, align 1, !range !38, !alias.scope !5359, !noalias !5360, !noundef !21
  %i.ul = trunc nuw i8 %i.uk to i1
  br i1 %i.ul, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.ep, %bb.el
  %i.um = load i32, ptr %i.eo, align 8, !alias.scope !5359, !noalias !5360, !noundef !21
  call void @_ZN6brotli3enc17brotli_bit_stream30StoreCompressedMetaBlockHeader17he8486a6759b6de05E(i1 noundef zeroext false, i64 noundef range(i64 1, 4294967296) %i.tf, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5361
  call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5361
  %i.un = icmp ult i64 %i.tj, 129
  br i1 %i.un, label %bb.er, label %bb.eq

bb.en:                                            ; preds = %bb.el
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.tj, %.val188.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.eo, label %bb.ep, !prof !30

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !5357
  store ptr @230, ptr %i.v, align 8, !noalias !5357
  %i.uo = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 1, ptr %i.uo, align 8, !noalias !5357
  %i.up = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr null, ptr %i.up, align 8, !noalias !5357
  %i.uq = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.uq, align 8, !noalias !5357
  %i.ur = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 0, ptr %i.ur, align 8, !noalias !5357
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @971) #46, !noalias !5358
  unreachable

bb.ep:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !5357
  store ptr inttoptr (i64 1 to ptr), ptr %i.ai, align 8, !noalias !5357
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5357
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5357
  store i64 0, ptr %.sroa.612.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5357
  store i32 1, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5357
  store ptr inttoptr (i64 4 to ptr), ptr %i.es, align 8, !noalias !5357
  store i64 0, ptr %i.et, align 8, !noalias !5357
  store ptr inttoptr (i64 1 to ptr), ptr %i.eu, align 8, !noalias !5357
  store i64 0, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5357
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.515.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5357
  store i64 0, ptr %.sroa.616.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5357
  store i32 1, ptr %.sroa.717.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5357
  store ptr inttoptr (i64 1 to ptr), ptr %i.ev, align 8, !noalias !5357
  store i64 0, ptr %.sroa.420.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5357
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.521.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5357
  store i64 0, ptr %.sroa.622.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5357
  store i32 1, ptr %.sroa.723.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5357
  store ptr inttoptr (i64 4 to ptr), ptr %i.ew, align 8, !noalias !5357
  store i64 0, ptr %i.ex, align 8, !noalias !5357
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h4fb20e584b6a31bbE(ptr noalias noundef nonnull align 1 %i.bn, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val187.i.i.i.i, i64 noundef %i.tj, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ug, i64 noundef %i.uh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ui, i64 noundef %i.uj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cs, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noalias noundef readonly align 8 captures(address) dereferenceable(152) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, i8 noundef 0), !noalias !5362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !5357
  br label %bb.em

bb.eq:                                            ; preds = %bb.em
  %i.us = zext i32 %i.um to i64
  %i.ut = add nsw i64 %i.us, -1
  %i.uu = lshr i64 %i.ut, 1
  %i.uv = call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.uu, i1 false)
  %i.uw = sub nuw nsw i64 65, %i.uv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !5357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ae, i8 0, i64 1032, i1 false), !noalias !5357
  store float 3.402000e+38, ptr %i.ez, align 8, !noalias !5357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !5357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ad, i8 0, i64 2824, i1 false), !noalias !5357
  store float 3.402000e+38, ptr %i.fb, align 8, !noalias !5357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !5357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ac, i8 0, i64 2184, i1 false), !noalias !5357
  store float 3.402000e+38, ptr %i.fd, align 8, !noalias !5357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !5357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.ab, i8 0, i64 256, i1 false), !noalias !5357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !5357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %i.aa, i8 0, i64 512, i1 false), !noalias !5357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !5357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(704) %i.z, i8 0, i64 704, i1 false), !noalias !5357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !5357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1408) %i.y, i8 0, i64 1408, i1 false), !noalias !5357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !5357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(140) %i.x, i8 0, i64 140, i1 false), !noalias !5357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !5357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(280) %i.w, i8 0, i64 280, i1 false), !noalias !5357
  call void @_ZN6brotli3enc17brotli_bit_stream15BuildHistograms17hf33d4e9a73aed5ffE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.te, i64 noundef %i.td, i64 noundef range(i64 0, 4294967296) %i.uf, i64 noundef range(i64 0, 4294967296) %i.qy, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val187.i.i.i.i, i64 noundef %.val188.i.i.i.i, i64 noundef %i.tj, ptr noalias noundef nonnull align 8 dereferenceable(1040) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(2832) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(2192) %i.ac), !noalias !5361
  %i.ux = load i64, ptr %i.ey, align 8, !noalias !5357, !noundef !21
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17h5a5e35cfecfbebceE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ae, i64 noundef 256, i64 noundef %i.ux, i64 noundef 8, ptr noalias noundef nonnull align 1 %i.ab, i64 noundef 256, ptr noalias noundef nonnull align 2 %i.aa, i64 noundef 256, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5361
  %i.uy = load i64, ptr %i.fa, align 8, !noalias !5357, !noundef !21
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17h5a5e35cfecfbebceE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ad, i64 noundef 704, i64 noundef %i.uy, i64 noundef 10, ptr noalias noundef nonnull align 1 %i.z, i64 noundef 704, ptr noalias noundef nonnull align 2 %i.y, i64 noundef 704, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5361
  %i.uz = load i64, ptr %i.fc, align 8, !noalias !5357, !noundef !21
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17h5a5e35cfecfbebceE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ac, i64 noundef 544, i64 noundef %i.uz, i64 noundef %i.uw, ptr noalias noundef nonnull align 1 %i.x, i64 noundef 140, ptr noalias noundef nonnull align 2 %i.w, i64 noundef 140, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5361
  call void @_ZN6brotli3enc17brotli_bit_stream25StoreDataWithHuffmanCodes17hf13a85f2527ecafcE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.te, i64 noundef %i.td, i64 noundef range(i64 0, 4294967296) %i.uf, i64 noundef range(i64 0, 4294967296) %i.qy, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val187.i.i.i.i, i64 noundef %.val188.i.i.i.i, i64 noundef %i.tj, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ab, i64 noundef 256, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.aa, i64 noundef 256, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.z, i64 noundef 704, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.y, i64 noundef 704, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.x, i64 noundef 140, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.w, i64 noundef 140, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !5357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !5357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !5357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !5357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !5357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !5357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !5357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !5357
  br label %_ZN6brotli3enc17brotli_bit_stream21store_meta_block_fast17h832de83a9a2e815dE.exit.i.i.i.i.i

bb.er:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !5357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ah, i8 0, i64 1024, i1 false), !noalias !5357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !5357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.ag, i8 0, i64 256, i1 false), !noalias !5357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !5357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %i.af, i8 0, i64 512, i1 false), !noalias !5357
  %.not26.i.i.i.i.i.i = icmp eq i64 %i.tj, 0
  br i1 %.not26.i.i.i.i.i.i, label %._crit_edge14.i.i.i.i.i.i, label %.lr.ph13.i.i.i.i.i.i

.lr.ph13.i.i.i.i.i.i:                             ; preds = %bb.er, %._crit_edge.i.i.i.i.i.i
  %.sroa.027.111.i.i.i.i.i.i = phi i64 [ %.sroa.027.1.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ 1, %bb.er ] ; 3 uses
  %.sroa.02.010.i.i.i.i.i.i = phi i64 [ %i.vk, %._crit_edge.i.i.i.i.i.i ], [ %i.uf, %bb.er ] ; 2 uses
  %.sroa.05.09.i.i.i.i.i.i = phi i64 [ %i.vh, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.er ]
  %.sroa.027.08.i.i.i.i.i.i = phi i64 [ %.sroa.027.111.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.er ] ; 3 uses
  %i.va = icmp ult i64 %.sroa.027.08.i.i.i.i.i.i, %.val188.i.i.i.i
  br i1 %i.va, label %bb.es, label %bb.et

._crit_edge14.i.i.i.i.i.i:                        ; preds = %._crit_edge.i.i.i.i.i.i, %bb.er
  %.sroa.05.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.er ], [ %i.vh, %._crit_edge.i.i.i.i.i.i ]
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17h5a5e35cfecfbebceE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ah, i64 noundef 256, i64 noundef %.sroa.05.0.lcssa.i.i.i.i.i.i, i64 noundef 8, ptr noalias noundef nonnull align 1 %i.ag, i64 noundef 256, ptr noalias noundef nonnull align 2 %i.af, i64 noundef 256, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5361
  call void @_ZN6brotli3enc17brotli_bit_stream29StoreStaticCommandHuffmanTree17h94fc581fe61dfd4aE(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5361
  call void @_ZN6brotli3enc17brotli_bit_stream30StoreStaticDistanceHuffmanTree17h4a629285af6547ffE(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5361
  call void @_ZN6brotli3enc17brotli_bit_stream25StoreDataWithHuffmanCodes17hf13a85f2527ecafcE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.te, i64 noundef %i.td, i64 noundef range(i64 0, 4294967296) %i.uf, i64 noundef range(i64 0, 4294967296) %i.qy, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val187.i.i.i.i, i64 noundef %.val188.i.i.i.i, i64 noundef %i.tj, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ag, i64 noundef 256, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.af, i64 noundef 256, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @_ZN6brotli3enc9constants23kStaticCommandCodeDepth17hc2b64d4d0d432e21E, i64 noundef 704, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) @_ZN6brotli3enc9constants22kStaticCommandCodeBits17h79c541a1c5f86137E, i64 noundef 704, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @_ZN6brotli3enc9constants24kStaticDistanceCodeDepth17hdb40a6d6b71ad0daE, i64 noundef 64, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) @_ZN6brotli3enc9constants23kStaticDistanceCodeBits17h6ce7b4025b69c8d0E, i64 noundef 64, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !5357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !5357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !5357
  br label %_ZN6brotli3enc17brotli_bit_stream21store_meta_block_fast17h832de83a9a2e815dE.exit.i.i.i.i.i

bb.es:                                            ; preds = %.lr.ph13.i.i.i.i.i.i
  %i.vb = getelementptr inbounds nuw [16 x i8], ptr %.val187.i.i.i.i, i64 %.sroa.027.08.i.i.i.i.i.i ; 2 uses
  %i.vc = load i32, ptr %i.vb, align 4, !alias.scope !5363, !noalias !5364, !noundef !21 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  %i.ve = load i32, ptr %i.vd, align 4, !alias.scope !5363, !noalias !5364, !noundef !21
  %i.vf = zext i32 %i.vc to i64                   ; 2 uses
  %i.vg = icmp eq i32 %i.vc, 0
  br i1 %i.vg, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.et:                                            ; preds = %.lr.ph13.i.i.i.i.i.i
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.027.08.i.i.i.i.i.i, i64 noundef %.val188.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @972) #46, !noalias !5361
  unreachable

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.ev, %bb.es
  %.sroa.02.1.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.02.010.i.i.i.i.i.i, %bb.es ], [ %i.vv, %bb.ev ]
  %i.vh = add i64 %.sroa.05.09.i.i.i.i.i.i, %i.vf ; 2 uses
  %i.vi = and i32 %i.ve, 33554431
  %i.vj = zext nneg i32 %i.vi to i64
  %i.vk = add i64 %.sroa.02.1.lcssa.i.i.i.i.i.i, %i.vj
  %i.vl = icmp ult i64 %.sroa.027.111.i.i.i.i.i.i, %i.tj ; 2 uses
  %i.vm = zext i1 %i.vl to i64
  %.sroa.027.1.i.i.i.i.i.i = add nuw nsw i64 %.sroa.027.111.i.i.i.i.i.i, %i.vm
  br i1 %i.vl, label %.lr.ph13.i.i.i.i.i.i, label %._crit_edge14.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.es, %bb.ev
  %.sroa.02.17.i.i.i.i.i.i = phi i64 [ %i.vv, %bb.ev ], [ %.sroa.02.010.i.i.i.i.i.i, %bb.es ] ; 2 uses
  %.sroa.09.06.i.i.i.i.i.i = phi i64 [ %i.vw, %bb.ev ], [ %i.vf, %bb.es ]
  %i.vn = and i64 %.sroa.02.17.i.i.i.i.i.i, %i.qy ; 3 uses
  %i.vo = icmp ult i64 %i.vn, %i.td
  br i1 %i.vo, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.vn, i64 noundef %i.td, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @973) #46, !noalias !5361
  unreachable

bb.ev:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.vp = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.vn
  %i.vq = load i8, ptr %i.vp, align 1, !alias.scope !5365, !noalias !5366, !noundef !21
  %i.vr = zext i8 %i.vq to i64
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.vr ; 2 uses
  %i.vt = load i32, ptr %i.vs, align 4, !noalias !5357, !noundef !21
  %i.vu = add i32 %i.vt, 1
  store i32 %i.vu, ptr %i.vs, align 4, !noalias !5357
  %i.vv = add i64 %.sroa.02.17.i.i.i.i.i.i, 1     ; 2 uses
  %i.vw = add nsw i64 %.sroa.09.06.i.i.i.i.i.i, -1 ; 2 uses
  %i.vx = icmp eq i64 %i.vw, 0
  br i1 %i.vx, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.ew:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !5348
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i26.i.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !5367, !noalias !5348
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.732.0..sroa_idx.i.i.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !5367, !noalias !5348
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.737.0..sroa_idx.i.i.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !5367, !noalias !5348
  store ptr inttoptr (i64 1 to ptr), ptr %i.am, align 8, !alias.scope !5367, !noalias !5348
  store i64 0, ptr %.sroa.4.0..sroa_idx.i27.i.i.i.i.i, align 8, !alias.scope !5367, !noalias !5348
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx.i28.i.i.i.i.i, align 8, !alias.scope !5367, !noalias !5348
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5367, !noalias !5348
  store ptr inttoptr (i64 1 to ptr), ptr %i.ct, align 8, !alias.scope !5367, !noalias !5348
  store i64 0, ptr %.sroa.429.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5367, !noalias !5348
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.530.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5367, !noalias !5348
  store i64 0, ptr %.sroa.631.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5367, !noalias !5348
  store ptr inttoptr (i64 1 to ptr), ptr %i.cu, align 8, !alias.scope !5367, !noalias !5348
  store i64 0, ptr %.sroa.434.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5367, !noalias !5348
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.535.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5367, !noalias !5348
  store i64 0, ptr %.sroa.636.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5367, !noalias !5348
  store ptr inttoptr (i64 4 to ptr), ptr %i.cv, align 8, !alias.scope !5367, !noalias !5348
  store i64 0, ptr %i.cw, align 8, !alias.scope !5367, !noalias !5348
  store ptr inttoptr (i64 4 to ptr), ptr %i.cy, align 8, !alias.scope !5367, !noalias !5348
  store i64 0, ptr %i.cz, align 8, !alias.scope !5367, !noalias !5348
  store ptr inttoptr (i64 8 to ptr), ptr %i.db, align 8, !alias.scope !5367, !noalias !5348
  store i64 0, ptr %i.dc, align 8, !alias.scope !5367, !noalias !5348
  store ptr inttoptr (i64 8 to ptr), ptr %i.de, align 8, !alias.scope !5367, !noalias !5348
  store i64 0, ptr %i.df, align 8, !alias.scope !5367, !noalias !5348
  store ptr inttoptr (i64 8 to ptr), ptr %i.dh, align 8, !alias.scope !5367, !noalias !5348
  store <6 x i64> zeroinitializer, ptr %i.di, align 8, !alias.scope !5367, !noalias !5348
  %i.vy = icmp samesign ult i32 %i.uc, 10
  br i1 %i.vy, label %bb.fc, label %bb.fb

bb.ex:                                            ; preds = %bb.ek
  %i.vz = zext i32 %.sroa.012.0.i.i.i.i.i to i64  ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5368)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !5369
  call void @_ZN6brotli3enc17brotli_bit_stream24InputPairFromMaskedInput17h9911943266a08ad9E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.u, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.te, i64 noundef %i.td, i64 noundef range(i64 0, 4294967296) %i.vz, i64 noundef range(i64 1, 4294967296) %i.tf, i64 noundef range(i64 0, 4294967296) %i.qy), !noalias !5370
  %i.wa = load ptr, ptr %i.u, align 8, !noalias !5369, !nonnull !21, !align !29, !noundef !21
  %i.wb = load i64, ptr %i.eb, align 8, !noalias !5369, !noundef !21
  %i.wc = load ptr, ptr %i.ec, align 8, !noalias !5369, !nonnull !21, !align !29, !noundef !21
  %i.wd = load i64, ptr %i.ed, align 8, !noalias !5369, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5369
  %i.we = load i8, ptr %i.ee, align 1, !range !38, !alias.scope !5371, !noalias !5372, !noundef !21
  %i.wf = trunc nuw i8 %i.we to i1
  br i1 %i.wf, label %bb.ey, label %_ZN6brotli3enc17brotli_bit_stream24store_meta_block_trivial17h9a46c9dc788248a3E.exit.i.i.i.i.i

bb.ey:                                            ; preds = %bb.ex
  %.not.i29.i.i.i.i.i = icmp ugt i64 %i.tj, %.val188.i.i.i.i
  br i1 %.not.i29.i.i.i.i.i, label %bb.ez, label %bb.fa, !prof !30

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5369
  store ptr @230, ptr %i.i, align 8, !noalias !5369
  %i.wg = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.wg, align 8, !noalias !5369
  %i.wh = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %i.wh, align 8, !noalias !5369
  %i.wi = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.wi, align 8, !noalias !5369
  %i.wj = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %i.wj, align 8, !noalias !5369
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @974) #46, !noalias !5370
  unreachable

bb.fa:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !5369
  store ptr inttoptr (i64 1 to ptr), ptr %i.t, align 8, !noalias !5369
  store i64 0, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5369
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5369
  store i64 0, ptr %.sroa.6.0..sroa_idx.i30.i.i.i.i.i, align 8, !noalias !5369
  store i32 1, ptr %.sroa.7.0..sroa_idx.i31.i.i.i.i.i, align 8, !noalias !5369
  store ptr inttoptr (i64 4 to ptr), ptr %i.ef, align 8, !noalias !5369
  store i64 0, ptr %i.eg, align 8, !noalias !5369
  store ptr inttoptr (i64 1 to ptr), ptr %i.eh, align 8, !noalias !5369
  store i64 0, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5369
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5369
  store i64 0, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5369
  store i32 1, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5369
  store ptr inttoptr (i64 1 to ptr), ptr %i.ei, align 8, !noalias !5369
  store i64 0, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5369
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5369
  store i64 0, ptr %.sroa.613.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5369
  store i32 1, ptr %.sroa.714.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5369
  store ptr inttoptr (i64 4 to ptr), ptr %i.ej, align 8, !noalias !5369
  store i64 0, ptr %i.ek, align 8, !noalias !5369
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h4fb20e584b6a31bbE(ptr noalias noundef nonnull align 1 %i.bn, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val187.i.i.i.i, i64 noundef %i.tj, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.wa, i64 noundef %i.wb, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.wc, i64 noundef %i.wd, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cs, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noalias noundef readonly align 8 captures(address) dereferenceable(152) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, i8 noundef 0), !noalias !5373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5369
  br label %_ZN6brotli3enc17brotli_bit_stream24store_meta_block_trivial17h9a46c9dc788248a3E.exit.i.i.i.i.i

_ZN6brotli3enc17brotli_bit_stream24store_meta_block_trivial17h9a46c9dc788248a3E.exit.i.i.i.i.i: ; preds = %bb.fa, %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.s, i8 0, i64 1032, i1 false), !noalias !5369
  store float 3.402000e+38, ptr %i.el, align 8, !noalias !5369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.r, i8 0, i64 2824, i1 false), !noalias !5369
  store float 3.402000e+38, ptr %i.em, align 8, !noalias !5369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.q, i8 0, i64 2184, i1 false), !noalias !5369
  store float 3.402000e+38, ptr %i.en, align 8, !noalias !5369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.p, i8 0, i64 256, i1 false), !noalias !5369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %i.o, i8 0, i64 512, i1 false), !noalias !5369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(704) %i.n, i8 0, i64 704, i1 false), !noalias !5369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1408) %i.m, i8 0, i64 1408, i1 false), !noalias !5369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(140) %i.l, i8 0, i64 140, i1 false), !noalias !5369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(280) %i.k, i8 0, i64 280, i1 false), !noalias !5369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(11272) %i.j, i8 0, i64 11272, i1 false), !noalias !5369
  %i.wk = load i32, ptr %i.eo, align 8, !alias.scope !5371, !noalias !5372, !noundef !21
  call void @_ZN6brotli3enc17brotli_bit_stream30StoreCompressedMetaBlockHeader17he8486a6759b6de05E(i1 noundef zeroext false, i64 noundef range(i64 1, 4294967296) %i.tf, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5374
  call void @_ZN6brotli3enc17brotli_bit_stream15BuildHistograms17hf33d4e9a73aed5ffE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.te, i64 noundef %i.td, i64 noundef range(i64 0, 4294967296) %i.vz, i64 noundef range(i64 0, 4294967296) %i.qy, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val187.i.i.i.i, i64 noundef %.val188.i.i.i.i, i64 noundef %i.tj, ptr noalias noundef nonnull align 8 dereferenceable(1040) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(2832) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(2192) %i.q), !noalias !5374
  call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5374
  call void @_ZN6brotli3enc17brotli_bit_stream24BuildAndStoreHuffmanTree17h593bd11fb314b673E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.s, i64 noundef 256, i64 noundef 256, i64 noundef 256, ptr noalias noundef nonnull align 4 %i.j, i64 noundef 1409, ptr noalias noundef nonnull align 1 %i.p, i64 noundef 256, ptr noalias noundef nonnull align 2 %i.o, i64 noundef 256, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5374
  call void @_ZN6brotli3enc17brotli_bit_stream24BuildAndStoreHuffmanTree17h593bd11fb314b673E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.r, i64 noundef 704, i64 noundef 704, i64 noundef 704, ptr noalias noundef nonnull align 4 %i.j, i64 noundef 1409, ptr noalias noundef nonnull align 1 %i.n, i64 noundef 704, ptr noalias noundef nonnull align 2 %i.m, i64 noundef 704, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5374
  %i.wl = zext i32 %i.wk to i64
  call void @_ZN6brotli3enc17brotli_bit_stream24BuildAndStoreHuffmanTree17h593bd11fb314b673E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.q, i64 noundef 544, i64 noundef 140, i64 noundef %i.wl, ptr noalias noundef nonnull align 4 %i.j, i64 noundef 1409, ptr noalias noundef nonnull align 1 %i.l, i64 noundef 140, ptr noalias noundef nonnull align 2 %i.k, i64 noundef 140, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5374
  call void @_ZN6brotli3enc17brotli_bit_stream25StoreDataWithHuffmanCodes17hf13a85f2527ecafcE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.te, i64 noundef %i.td, i64 noundef range(i64 0, 4294967296) %i.vz, i64 noundef range(i64 0, 4294967296) %i.qy, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val187.i.i.i.i, i64 noundef %.val188.i.i.i.i, i64 noundef %i.tj, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.p, i64 noundef 256, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.o, i64 noundef 256, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef 704, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.m, i64 noundef 704, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.l, i64 noundef 140, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.k, i64 noundef 140, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i), !noalias !5374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5369
  br label %_ZN6brotli3enc17brotli_bit_stream21store_meta_block_fast17h832de83a9a2e815dE.exit.i.i.i.i.i

bb.fb:                                            ; preds = %bb.ew
  %i.wm = zext i32 %.sroa.012.0.i.i.i.i.i to i64
  invoke fastcc void @_ZN6brotli3enc9metablock20BrotliBuildMetaBlock17h2be97dbed52f6456E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.te, i64 noundef %i.td, i64 noundef %i.wm, i64 noundef range(i64 0, 4294967296) %i.qy, ptr noalias noundef align 8 dereferenceable(112) %i.an, i8 noundef %i.tg, i8 noundef %i.th, ptr noalias noundef nonnull align 4 %.val187.i.i.i.i, i64 noundef %.val188.i.i.i.i, i64 noundef %i.tj, i8 noundef range(i8 0, 4) %14, ptr noalias noundef nonnull align 1 %i.cr, ptr noalias noundef align 8 dereferenceable(264) %i.am)
          to label %bb.fg unwind label %.loopexit.i.i.i, !noalias !5347

bb.fc:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !5348
  store i64 1, ptr %i.al, align 8, !noalias !5348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !5348
  store ptr inttoptr (i64 4 to ptr), ptr %i.ak, align 8, !noalias !5348
  store i64 0, ptr %i.dk, align 8, !noalias !5348
  %i.wn = load i32, ptr %i.dl, align 4, !alias.scope !5345, !noalias !5346, !noundef !21
  %i.wo = icmp eq i32 %i.wn, 0
  %i.wp = zext i32 %.sroa.012.0.i.i.i.i.i to i64  ; 2 uses
  br i1 %i.wo, label %bb.fd, label %.invoke.i.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %.noexc43.i.i.i.i.i, %bb.fl, %bb.fi, %bb.fh, %bb.fg, %.invoke.i.i.i.i.i, %bb.fd, %bb.fb
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.noexc.i.i.i.i.i.i, %bb.fk
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %.thread.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %lpad.phi73.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  call fastcc void @"_ZN4core3ptr113drop_in_place$LT$brotli..enc..brotli_bit_stream..MetaBlockSplit$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17hb9e224f650bfdf72E"(ptr noalias noundef align 8 dereferenceable(264) %i.am) #47, !noalias !5347
  br label %common.resume

bb.fd:                                            ; preds = %bb.fc
  %i.wq = load i64, ptr %i.bj, align 8, !alias.scope !5345, !noalias !5346, !noundef !21
  invoke void @_ZN6brotli3enc6encode32DecideOverLiteralContextModeling17h646b9ade2d57ecaeE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.te, i64 noundef %i.td, i64 noundef %i.wp, i64 noundef range(i64 0, 4294967296) %i.tf, i64 noundef range(i64 0, 4294967296) %i.qy, i32 noundef %i.uc, i64 noundef %i.wq, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ak)
          to label %bb.fe unwind label %.loopexit.i.i.i, !noalias !5347

bb.fe:                                            ; preds = %bb.fd
  %.pre.i.i.i.i.i = load i64, ptr %i.al, align 8, !noalias !5348 ; 2 uses
  %i.wr = icmp eq i64 %.pre.i.i.i.i.i, 1
  br i1 %i.wr, label %.invoke.i.i.i.i.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ws = load i64, ptr %i.dk, align 8, !noalias !5348, !noundef !21
  %i.wt = load ptr, ptr %i.ak, align 8, !noalias !5348, !nonnull !21, !align !28, !noundef !21
  br label %.invoke.i.i.i.i.i

.invoke.i.i.i.i.i:                                ; preds = %bb.ff, %bb.fe, %bb.fc
  %i.wu = phi i64 [ %.pre.i.i.i.i.i, %bb.ff ], [ 1, %bb.fc ], [ 1, %bb.fe ]
  %i.wv = phi ptr [ %i.wt, %bb.ff ], [ inttoptr (i64 4 to ptr), %bb.fc ], [ inttoptr (i64 4 to ptr), %bb.fe ]
  %i.ww = phi i64 [ %i.ws, %bb.ff ], [ 0, %bb.fc ], [ 0, %bb.fe ]
  invoke fastcc void @_ZN6brotli3enc9metablock34BrotliBuildMetaBlockGreedyInternal17h9719acd4736b0fc5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.te, i64 noundef %i.td, i64 noundef range(i64 0, 4294967296) %i.wp, i64 noundef range(i64 0, 4294967296) %i.qy, i8 noundef %i.tg, i8 noundef %i.th, i8 noundef range(i8 0, 4) %14, i64 noundef %i.wu, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.wv, i64 noundef %i.ww, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val187.i.i.i.i, i64 noundef %.val188.i.i.i.i, i64 noundef %i.tj, ptr noalias noundef nonnull align 8 dereferenceable(264) %i.am)
          to label %_ZN6brotli3enc9metablock26BrotliBuildMetaBlockGreedy17hdfe6d4830d36e55cE.exit.i.i.i.i.i unwind label %.loopexit.i.i.i, !noalias !5347

_ZN6brotli3enc9metablock26BrotliBuildMetaBlockGreedy17hdfe6d4830d36e55cE.exit.i.i.i.i.i: ; preds = %.invoke.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !5348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !5348
  br label %bb.fg

bb.fg:                                            ; preds = %_ZN6brotli3enc9metablock26BrotliBuildMetaBlockGreedy17hdfe6d4830d36e55cE.exit.i.i.i.i.i, %bb.fb
  %i.wx = load i32, ptr %i.dm, align 8, !noalias !5348, !noundef !21 ; 3 uses
  %spec.store.select.i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.wx, i32 544)
  %i.wy = zext nneg i32 %spec.store.select.i.i.i.i.i to i64
  invoke fastcc void @_ZN6brotli3enc9metablock24BrotliOptimizeHistograms17hcb5893b6cb61987bE(i64 noundef %i.wy, ptr noalias noundef align 8 dereferenceable(264) %i.am)
          to label %bb.fh unwind label %.loopexit.i.i.i, !noalias !5347

bb.fh:                                            ; preds = %bb.fg
  %i.wz = zext i32 %.sroa.012.0.i.i.i.i.i to i64  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5375)
  call void @llvm.experimental.noalias.scope.decl(metadata !5376)
  call void @llvm.experimental.noalias.scope.decl(metadata !5377)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5378
  invoke void @_ZN6brotli3enc17brotli_bit_stream24InputPairFromMaskedInput17h9911943266a08ad9E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.te, i64 noundef %i.td, i64 noundef range(i64 0, 4294967296) %i.wz, i64 noundef range(i64 1, 4294967296) %i.tf, i64 noundef range(i64 0, 4294967296) %i.qy)
          to label %.noexc40.i.i.i.i.i unwind label %.loopexit.i.i.i, !noalias !5347

.noexc40.i.i.i.i.i:                               ; preds = %bb.fh
  %i.xa = load ptr, ptr %i.h, align 8, !noalias !5378, !nonnull !21, !align !29, !noundef !21
  %i.xb = load i64, ptr %i.dn, align 8, !noalias !5378, !noundef !21
  %i.xc = load ptr, ptr %i.do, align 8, !noalias !5378, !nonnull !21, !align !29, !noundef !21
  %i.xd = load i64, ptr %i.dp, align 8, !noalias !5378, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5378
  %i.xe = load i8, ptr %i.dq, align 1, !range !38, !alias.scope !5376, !noalias !5379, !noundef !21
  %i.xf = trunc nuw i8 %i.xe to i1
  br i1 %i.xf, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %.noexc44.i.i.i.i.i, %.noexc40.i.i.i.i.i
  %i.xg = zext i32 %i.wx to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5378
  %i.xh = load i8, ptr %i.dr, align 2, !range !38, !alias.scope !5376, !noalias !5379, !noundef !21
  %i.xi = trunc nuw i8 %i.xh to i1
  %i.xj = icmp ugt i32 %i.wx, 544
  %or.cond3.i.i.i.i.i.i = and i1 %i.xj, %i.xi
  %spec.store.select.i.i.i.i.i.i = select i1 %or.cond3.i.i.i.i.i.i, i64 544, i64 %i.xg
  invoke void @_ZN6brotli3enc17brotli_bit_stream30StoreCompressedMetaBlockHeader17he8486a6759b6de05E(i1 noundef zeroext false, i64 noundef range(i64 1, 4294967296) %i.tf, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i)
          to label %.noexc41.i.i.i.i.i unwind label %.loopexit.i.i.i, !noalias !5347

.noexc41.i.i.i.i.i:                               ; preds = %bb.fi
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !5380
  %i.xk = call noundef align 4 dereferenceable_or_null(11272) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 11272, i64 noundef range(i64 1, 9) 4) #45, !noalias !5380 ; 14 uses
  %i.xl = icmp eq ptr %i.xk, null
  br i1 %i.xl, label %.noexc.i.i.i.i.i.i, label %bb.fm

bb.fj:                                            ; preds = %.noexc40.i.i.i.i.i
  %.not.i39.i.i.i.i.i = icmp ugt i64 %i.tj, %.val188.i.i.i.i
  br i1 %.not.i39.i.i.i.i.i, label %bb.fk, label %bb.fl, !prof !30

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5378
  store ptr @230, ptr %i.b, align 8, !noalias !5378
  %i.xm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.xm, align 8, !noalias !5378
  %i.xn = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.xn, align 8, !noalias !5378
  %i.xo = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.xo, align 8, !noalias !5378
  %i.xp = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.xp, align 8, !noalias !5378
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @940) #46
          to label %.noexc42.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !5347

.noexc42.i.i.i.i.i:                               ; preds = %bb.fk
  unreachable

bb.fl:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5378
  invoke fastcc void @_ZN6brotli3enc17brotli_bit_stream21block_split_reference17ha11dced07ab4d115E(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.am)
          to label %.noexc43.i.i.i.i.i unwind label %.loopexit.i.i.i, !noalias !5347

.noexc43.i.i.i.i.i:                               ; preds = %bb.fl
  invoke fastcc void @_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h4fb20e584b6a31bbE(ptr noalias noundef nonnull align 1 %i.bn, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val187.i.i.i.i, i64 noundef %i.tj, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.xa, i64 noundef %i.xb, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.xc, i64 noundef %i.xd, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cs, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noalias noundef readonly align 8 captures(address) dereferenceable(152) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.an, i8 noundef range(i8 0, 4) %14)
          to label %.noexc44.i.i.i.i.i unwind label %.loopexit.i.i.i, !noalias !5381

.noexc44.i.i.i.i.i:                               ; preds = %.noexc43.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5378
  br label %bb.fi

.noexc.i.i.i.i.i.i:                               ; preds = %.noexc41.i.i.i.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 11272, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc45.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !5347

.noexc45.i.i.i.i.i:                               ; preds = %.noexc.i.i.i.i.i.i
  unreachable

.thread69.loopexit.i.i.i.i.i.i:                   ; preds = %bb.gr, %bb.go
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i.i.i.i

.thread69.loopexit.split-lp.loopexit.i.i.i.i.i.i: ; preds = %bb.hm, %bb.hi, %.lr.ph.i37.i.i.i.i.i
  %lpad.loopexit88.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i.i.i.i

.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i.i.i: ; preds = %bb.hd, %bb.gz, %bb.gx, %bb.gh, %bb.gg
  %lpad.loopexit91.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i.i.i.i

.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i: ; preds = %.invoke.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i.i.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.loopexit.i.i.i.i.i.i": ; preds = %.lr.ph2553
  %lpad.loopexit93.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i201.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.loopexit.split-lp.i.i.i.i.i.i": ; preds = %bb.gc, %bb.gd, %bb.ge, %bb.gb, %bb.ga, %bb.fz, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs
  %lpad.loopexit.split-lp94.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i201.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i201.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.loopexit.split-lp.i.i.i.i.i.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.loopexit.i.i.i.i.i.i"
  %lpad.phi95.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit93.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.loopexit.i.i.i.i.i.i" ], [ %lpad.loopexit.split-lp94.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.loopexit.split-lp.i.i.i.i.i.i" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xk, i64 noundef 11272, i64 noundef 4) #45, !noalias !5382
  br label %.thread.i.i.i.i.i.i

bb.fm:                                            ; preds = %.noexc41.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(11272) %i.xk, i8 0, i64 11272, i1 false), !noalias !5382
  %i.xq = load i64, ptr %.sroa.7.0..sroa_idx.i26.i.i.i.i.i, align 8, !alias.scope !5377, !noalias !5383, !noundef !21 ; 4 uses
  %.val66.i.i.i.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !5377, !noalias !5383, !nonnull !21, !align !29, !noundef !21 ; 2 uses
  %.val67.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i27.i.i.i.i.i, align 8, !alias.scope !5377, !noalias !5383, !noundef !21 ; 2 uses
  %.val60.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i28.i.i.i.i.i, align 8, !alias.scope !5377, !noalias !5383, !nonnull !21, !align !28, !noundef !21 ; 3 uses
  %.val61.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5377, !noalias !5383, !noundef !21 ; 3 uses
  %i.xr = load i64, ptr %i.ds, align 8, !alias.scope !5377, !noalias !5383, !noundef !21 ; 3 uses
  %i.xs = icmp eq i64 %i.xr, 0
  %i.xt = icmp eq i64 %.val61.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i = or i1 %i.xt, %i.xs
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.xu = load i32, ptr %.val60.i.i.i.i.i.i, align 4, !alias.scope !5384, !noalias !5385, !noundef !21
  %i.xv = zext i32 %i.xu to i64
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.xv, %bb.fn ], [ 0, %bb.fm ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(852) %.sroa.16.0..sroa_idx.i.i.i.i.i.i, i8 0, i64 852, i1 false), !noalias !5378
  store ptr %.val66.i.i.i.i.i.i, ptr %i.f, align 8, !noalias !5378
  store i64 %.val67.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i33.i.i.i.i.i, align 8, !noalias !5378
  store ptr %.val60.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i34.i.i.i.i.i, align 8, !noalias !5378
  store i64 %.val61.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i35.i.i.i.i.i, align 8, !noalias !5378
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.7.0..sroa_idx.i36.i.i.i.i.i, align 8, !noalias !5378
  store i64 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 0, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 256, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 %i.xq, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 %i.xr, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 1, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 0, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 0, ptr %.sroa.2015.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 %.sroa.0.0.i.i.i.i.i.i.i, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 0, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  %.val64.i.i.i.i.i.i = load ptr, ptr %i.ct, align 8, !alias.scope !5377, !noalias !5383, !nonnull !21, !align !29, !noundef !21
  %.val65.i.i.i.i.i.i = load i64, ptr %.sroa.429.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5377, !noalias !5383, !noundef !21
  %.val58.i.i.i.i.i.i = load ptr, ptr %.sroa.530.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5377, !noalias !5383, !nonnull !21, !align !28, !noundef !21 ; 2 uses
  %.val59.i.i.i.i.i.i = load i64, ptr %.sroa.631.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5377, !noalias !5383, !noundef !21 ; 2 uses
  %i.xw = load i64, ptr %i.dt, align 8, !alias.scope !5377, !noalias !5383, !noundef !21
  %i.xx = load <2 x i64>, ptr %.sroa.732.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5377, !noalias !5383
  %i.xy = icmp eq i64 %i.xw, 0
  %i.xz = icmp eq i64 %.val59.i.i.i.i.i.i, 0
  %or.cond.i98.i.i.i.i.i.i = or i1 %i.xz, %i.xy
  br i1 %or.cond.i98.i.i.i.i.i.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.ya = load i32, ptr %.val58.i.i.i.i.i.i, align 4, !alias.scope !5386, !noalias !5387, !noundef !21
  %i.yb = zext i32 %i.ya to i64
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.sroa.0.0.i99.i.i.i.i.i.i = phi i64 [ %i.yb, %bb.fp ], [ 0, %bb.fo ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(852) %.sroa.1629.0..sroa_idx.i.i.i.i.i.i, i8 0, i64 852, i1 false), !noalias !5378
  store ptr %.val64.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !5378
  store i64 %.val65.i.i.i.i.i.i, ptr %.sroa.417.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store ptr %.val58.i.i.i.i.i.i, ptr %.sroa.518.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 %.val59.i.i.i.i.i.i, ptr %.sroa.619.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.720.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 0, ptr %.sroa.821.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.922.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 0, ptr %.sroa.1023.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 704, ptr %.sroa.1124.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store <2 x i64> %i.xx, ptr %.sroa.1225.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 1, ptr %.sroa.1427.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 0, ptr %.sroa.1528.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 0, ptr %.sroa.2034.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 %.sroa.0.0.i99.i.i.i.i.i.i, ptr %.sroa.2135.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 0, ptr %.sroa.2236.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  %.val62.i.i.i.i.i.i = load ptr, ptr %i.cu, align 8, !alias.scope !5377, !noalias !5383, !nonnull !21, !align !29, !noundef !21
  %.val63.i.i.i.i.i.i = load i64, ptr %.sroa.434.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5377, !noalias !5383, !noundef !21
  %.val56.i.i.i.i.i.i = load ptr, ptr %.sroa.535.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5377, !noalias !5383, !nonnull !21, !align !28, !noundef !21 ; 2 uses
  %.val57.i.i.i.i.i.i = load i64, ptr %.sroa.636.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5377, !noalias !5383, !noundef !21 ; 2 uses
  %i.yc = load i64, ptr %i.du, align 8, !alias.scope !5377, !noalias !5383, !noundef !21
  %i.yd = load <2 x i64>, ptr %.sroa.737.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5377, !noalias !5383
  %i.ye = icmp eq i64 %i.yc, 0
  %i.yf = icmp eq i64 %.val57.i.i.i.i.i.i, 0
  %or.cond.i106.i.i.i.i.i.i = or i1 %i.yf, %i.ye
  br i1 %or.cond.i106.i.i.i.i.i.i, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.yg = load i32, ptr %.val56.i.i.i.i.i.i, align 4, !alias.scope !5388, !noalias !5389, !noundef !21
  %i.yh = zext i32 %i.yg to i64
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.sroa.0.0.i107.i.i.i.i.i.i = phi i64 [ %i.yh, %bb.fr ], [ 0, %bb.fq ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(852) %.sroa.1650.0..sroa_idx.i.i.i.i.i.i, i8 0, i64 852, i1 false), !noalias !5378
  store ptr %.val62.i.i.i.i.i.i, ptr %i.d, align 8, !noalias !5378
  store i64 %.val63.i.i.i.i.i.i, ptr %.sroa.438.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store ptr %.val56.i.i.i.i.i.i, ptr %.sroa.539.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 %.val57.i.i.i.i.i.i, ptr %.sroa.640.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.741.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 0, ptr %.sroa.842.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.943.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 0, ptr %.sroa.1044.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 %spec.store.select.i.i.i.i.i.i, ptr %.sroa.1145.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store <2 x i64> %i.yd, ptr %.sroa.1246.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 1, ptr %.sroa.1448.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 0, ptr %.sroa.1549.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 0, ptr %.sroa.2055.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 %.sroa.0.0.i107.i.i.i.i.i.i, ptr %.sroa.2156.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  store i64 0, ptr %.sroa.2257.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378
  invoke void @_ZN6brotli3enc17brotli_bit_stream27BuildAndStoreBlockSplitCode17hb0bc1945d8ec6383E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val66.i.i.i.i.i.i, i64 noundef %.val67.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val60.i.i.i.i.i.i, i64 noundef %.val61.i.i.i.i.i.i, i64 noundef %i.xr, i64 noundef %i.xq, ptr noalias noundef nonnull align 4 %i.xk, i64 noundef 1409, ptr noalias noundef nonnull align 8 dereferenceable(872) %.sroa.14.0..sroa_idx.i.i.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i)
          to label %bb.ft unwind label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.loopexit.split-lp.i.i.i.i.i.i", !noalias !5382

bb.ft:                                            ; preds = %bb.fs
  %i.yi = load ptr, ptr %i.e, align 8, !noalias !5378, !nonnull !21, !align !29, !noundef !21
  %i.yj = load i64, ptr %.sroa.417.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378, !noundef !21
  %i.yk = load ptr, ptr %.sroa.518.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378, !nonnull !21, !align !28, !noundef !21
  %i.yl = load i64, ptr %.sroa.619.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378, !noundef !21
  %i.ym = load i64, ptr %.sroa.1326.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378, !noundef !21
  %i.yn = load i64, ptr %.sroa.1225.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378, !noundef !21
  invoke void @_ZN6brotli3enc17brotli_bit_stream27BuildAndStoreBlockSplitCode17hb0bc1945d8ec6383E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.yi, i64 noundef %i.yj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.yk, i64 noundef %i.yl, i64 noundef %i.ym, i64 noundef %i.yn, ptr noalias noundef nonnull align 4 %i.xk, i64 noundef 1409, ptr noalias noundef nonnull align 8 dereferenceable(872) %.sroa.1427.0..sroa_idx.i.i.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i)
          to label %bb.fu unwind label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.loopexit.split-lp.i.i.i.i.i.i", !noalias !5382

bb.fu:                                            ; preds = %bb.ft
  %i.yo = load ptr, ptr %i.d, align 8, !noalias !5378, !nonnull !21, !align !29, !noundef !21
  %i.yp = load i64, ptr %.sroa.438.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378, !noundef !21
  %i.yq = load ptr, ptr %.sroa.539.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378, !nonnull !21, !align !28, !noundef !21
  %i.yr = load i64, ptr %.sroa.640.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378, !noundef !21
  %i.ys = load i64, ptr %.sroa.1347.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378, !noundef !21
  %i.yt = load i64, ptr %.sroa.1246.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5378, !noundef !21
  invoke void @_ZN6brotli3enc17brotli_bit_stream27BuildAndStoreBlockSplitCode17hb0bc1945d8ec6383E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.yo, i64 noundef %i.yp, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.yq, i64 noundef %i.yr, i64 noundef %i.ys, i64 noundef %i.yt, ptr noalias noundef nonnull align 4 %i.xk, i64 noundef 1409, ptr noalias noundef nonnull align 8 dereferenceable(872) %.sroa.1448.0..sroa_idx.i.i.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i)
          to label %bb.fv unwind label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.loopexit.split-lp.i.i.i.i.i.i", !noalias !5382

bb.fv:                                            ; preds = %bb.fu
  %i.yu = load i32, ptr %i.dv, align 8, !alias.scope !5376, !noalias !5379, !noundef !21 ; 2 uses
  %i.yv = zext i32 %i.yu to i64
  invoke void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 2, i64 noundef %i.yv, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i)
          to label %bb.fw unwind label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.loopexit.split-lp.i.i.i.i.i.i", !noalias !5382

bb.fw:                                            ; preds = %bb.fv
  %i.yw = load i32, ptr %i.dw, align 4, !alias.scope !5376, !noalias !5379, !noundef !21
  %i.yx = and i32 %i.yu, 31
  %i.yy = lshr i32 %i.yw, %i.yx
  %i.yz = zext i32 %i.yy to i64
  invoke void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 4, i64 noundef %i.yz, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i)
          to label %.preheader.i.i.i.i.i.i.preheader unwind label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.loopexit.split-lp.i.i.i.i.i.i", !noalias !5382

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %bb.fw
  %exitcond.not.i.i.i.i.i.i2551 = icmp eq i64 %i.xq, 0
  br i1 %exitcond.not.i.i.i.i.i.i2551, label %.preheader.i.i.i.i.i.i._crit_edge, label %.lr.ph2553

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph2553
  %i.za = add i64 %.sroa.028.0.i.i.i.i.i.i2552, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.za, %i.xq
  br i1 %exitcond.not.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i._crit_edge, label %.lr.ph2553

.lr.ph2553:                                       ; preds = %.preheader.i.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN3std2io5Write9write_all17hfa7febf594b8b493E:bb.a
"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i124.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17hdf0ac19196685646E.exit123.i.i.i.i.i.i"
  %.val.i.i.i.i.i.i.i = load ptr, ptr %.sroa.741.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5396, !noalias !5378, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i, i64 noundef 1) #45, !noalias !5397
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i124.i.i.i.i.i.i", %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17hdf0ac19196685646E.exit123.i.i.i.i.i.i"
  %.val3.i.i.i.i.i.i.i = load i64, ptr %.sroa.1044.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5396, !noalias !5378, !noundef !21 ; 2 uses
  %i.aaj = icmp eq i64 %.val3.i.i.i.i.i.i.i, 0
  br i1 %i.aaj, label %"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E.exit.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i.i.i.i.i.i.i"
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %.sroa.943.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5396, !noalias !5378, !nonnull !21, !noundef !21
  %i.aak = shl nuw nsw i64 %.val3.i.i.i.i.i.i.i, 1
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i.i.i, i64 noundef %i.aak, i64 noundef 2) #45, !noalias !5397
  br label %"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E.exit.i.i.i.i.i.i"

"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E.exit.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i.i.i.i.i.i.i", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5378
  call void @llvm.experimental.noalias.scope.decl(metadata !5398)
  %.val1.i125.i.i.i.i.i.i = load i64, ptr %.sroa.821.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5398, !noalias !5378, !noundef !21 ; 2 uses
  %i.aal = icmp eq i64 %.val1.i125.i.i.i.i.i.i, 0
  br i1 %i.aal, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i128.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i126.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i126.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E.exit.i.i.i.i.i.i"
  %.val.i127.i.i.i.i.i.i = load ptr, ptr %.sroa.720.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5398, !noalias !5378, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i127.i.i.i.i.i.i, i64 noundef %.val1.i125.i.i.i.i.i.i, i64 noundef 1) #45, !noalias !5399
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i128.i.i.i.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i128.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i126.i.i.i.i.i.i", %"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E.exit.i.i.i.i.i.i"
  %.val3.i129.i.i.i.i.i.i = load i64, ptr %.sroa.1023.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5398, !noalias !5378, !noundef !21 ; 2 uses
  %i.aam = icmp eq i64 %.val3.i129.i.i.i.i.i.i, 0
  br i1 %i.aam, label %"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E.exit132.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i130.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i130.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i128.i.i.i.i.i.i"
  %.val2.i131.i.i.i.i.i.i = load ptr, ptr %.sroa.922.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5398, !noalias !5378, !nonnull !21, !noundef !21
  %i.aan = shl nuw nsw i64 %.val3.i129.i.i.i.i.i.i, 1
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i131.i.i.i.i.i.i, i64 noundef %i.aan, i64 noundef 2) #45, !noalias !5399
  br label %"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E.exit132.i.i.i.i.i.i"

"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E.exit132.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i130.i.i.i.i.i.i", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i128.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5378
  call void @llvm.experimental.noalias.scope.decl(metadata !5400)
  %.val1.i133.i.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5400, !noalias !5378, !noundef !21 ; 2 uses
  %i.aao = icmp eq i64 %.val1.i133.i.i.i.i.i.i, 0
  br i1 %i.aao, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i136.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i134.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i134.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E.exit132.i.i.i.i.i.i"
  %.val.i135.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i36.i.i.i.i.i, align 8, !alias.scope !5400, !noalias !5378, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i135.i.i.i.i.i.i, i64 noundef %.val1.i133.i.i.i.i.i.i, i64 noundef 1) #45, !noalias !5401
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i136.i.i.i.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i136.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i134.i.i.i.i.i.i", %"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E.exit132.i.i.i.i.i.i"
  %.val3.i137.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5400, !noalias !5378, !noundef !21 ; 2 uses
  %i.aap = icmp eq i64 %.val3.i137.i.i.i.i.i.i, 0
  br i1 %i.aap, label %bb.hn, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i138.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i138.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i136.i.i.i.i.i.i"
  %.val2.i139.i.i.i.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5400, !noalias !5378, !nonnull !21, !noundef !21
  %i.aaq = shl nuw nsw i64 %.val3.i137.i.i.i.i.i.i, 1
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i139.i.i.i.i.i.i, i64 noundef %i.aaq, i64 noundef 2) #45, !noalias !5401
  br label %bb.hn

bb.gg:                                            ; preds = %bb.gf
  %i.aar = getelementptr inbounds nuw [16 x i8], ptr %.val187.i.i.i.i, i64 %.sroa.030.0187.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.aar, i64 16, i1 false), !noalias !5402
  %i.aas = load i16, ptr %i.dx, align 4, !noalias !5378, !noundef !21 ; 3 uses
  %i.aat = zext i16 %i.aas to i64
  invoke fastcc void @"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h3861b1c553be499bE"(ptr noalias noundef align 8 dereferenceable(984) %i.e, i64 noundef %i.aat, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i)
          to label %bb.gh unwind label %.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i.i.i, !noalias !5382

.invoke.i.i.i.i.i.i:                              ; preds = %bb.gu, %bb.gt, %bb.gf, %bb.hl, %bb.hk, %bb.hj, %bb.hh, %bb.hg, %bb.he, %bb.gq, %bb.gp, %bb.gn, %bb.gm, %.lr.ph185.i.i.i.i.i.i
  %i.aau = phi i64 [ %i.aeb, %bb.hh ], [ %i.acg, %bb.gq ], [ %i.abo, %bb.gm ], [ %i.abo, %bb.gn ], [ %i.acg, %bb.gp ], [ %i.abb, %.lr.ph185.i.i.i.i.i.i ], [ %i.aes, %bb.hj ], [ %i.aez, %bb.hk ], [ %i.aez, %bb.hl ], [ %i.aeb, %bb.hg ], [ %i.adt, %bb.he ], [ %.sroa.030.0187.i.i.i.i.i.i, %bb.gf ], [ %i.acv, %bb.gt ], [ %i.ada, %bb.gu ]
  %i.aav = phi i64 [ %i.aee, %bb.hh ], [ %.val9.i.i.i.i.i.i.i, %bb.gq ], [ %i.abp, %bb.gm ], [ %i.abr, %bb.gn ], [ %.val7.i.i.i.i.i.i.i, %bb.gp ], [ %i.td, %.lr.ph185.i.i.i.i.i.i ], [ %.val49.i.i.i.i.i.i, %bb.hj ], [ %.val9.i148.i.i.i.i.i.i, %bb.hk ], [ %.val11.i.i.i.i.i.i.i, %bb.hl ], [ %i.aec, %bb.hg ], [ %i.td, %bb.he ], [ %.val188.i.i.i.i, %bb.gf ], [ %i.td, %bb.gt ], [ %i.td, %bb.gu ]
  %i.aaw = phi ptr [ @980, %bb.hh ], [ @978, %bb.gq ], [ @975, %bb.gm ], [ @976, %bb.gn ], [ @977, %bb.gp ], [ @942, %.lr.ph185.i.i.i.i.i.i ], [ @981, %bb.hj ], [ @982, %bb.hk ], [ @983, %bb.hl ], [ @979, %bb.hg ], [ @945, %bb.he ], [ @941, %bb.gf ], [ @943, %bb.gt ], [ @944, %bb.gu ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aau, i64 noundef %i.aav, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aaw) #46
          to label %.cont.i.i.i.i.i.i unwind label %.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i, !noalias !5382

.cont.i.i.i.i.i.i:                                ; preds = %.invoke.i.i.i.i.i.i
  unreachable

bb.gh:                                            ; preds = %bb.gg
  invoke void @_ZN6brotli3enc17brotli_bit_stream17StoreCommandExtra17h53e18515e04feea9E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i)
          to label %bb.gi unwind label %.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i.i.i, !noalias !5382

bb.gi:                                            ; preds = %bb.gh
  %i.aax = load i32, ptr %i.c, align 4, !noalias !5378, !noundef !21 ; 3 uses
  %i.aay = icmp eq i32 %i.aax, 0                  ; 2 uses
  br i1 %i.zc, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  br i1 %i.aay, label %.loopexit.i.i.i.i.i.i, label %.lr.ph185.preheader.i.i.i.i.i.i

.lr.ph185.preheader.i.i.i.i.i.i:                  ; preds = %bb.gj
  %i.aaz = zext i32 %i.aax to i64
  br label %.lr.ph185.i.i.i.i.i.i

bb.gk:                                            ; preds = %bb.gi
  br i1 %i.aay, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.gk
  %i.aba = zext i32 %i.aax to i64
  br label %.lr.ph.i37.i.i.i.i.i

.lr.ph185.i.i.i.i.i.i:                            ; preds = %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h3861b1c553be499bE.exit.i.i.i.i.i.i", %.lr.ph185.preheader.i.i.i.i.i.i
  %.sroa.06.1184.i.i.i.i.i.i = phi i64 [ %i.aco, %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h3861b1c553be499bE.exit.i.i.i.i.i.i" ], [ %.sroa.06.0188.i.i.i.i.i.i, %.lr.ph185.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.020.0183.i.i.i.i.i.i = phi i64 [ %i.acp, %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h3861b1c553be499bE.exit.i.i.i.i.i.i" ], [ %i.aaz, %.lr.ph185.preheader.i.i.i.i.i.i ]
  %i.abb = and i64 %.sroa.06.1184.i.i.i.i.i.i, %i.qy ; 3 uses
  %i.abc = icmp ult i64 %i.abb, %i.td
  br i1 %i.abc, label %bb.gl, label %.invoke.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$25store_symbol_with_context17h2f95a2c07fd3125eE.exit.i.i.i.i.i.i", %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h3861b1c553be499bE.exit.i.i.i.i.i.i", %bb.gk, %bb.gj
  %.sroa.06.2.i.i.i.i.i.i = phi i64 [ %i.aco, %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h3861b1c553be499bE.exit.i.i.i.i.i.i" ], [ %.sroa.06.0188.i.i.i.i.i.i, %bb.gj ], [ %.sroa.06.0188.i.i.i.i.i.i, %bb.gk ], [ %i.afh, %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$25store_symbol_with_context17h2f95a2c07fd3125eE.exit.i.i.i.i.i.i" ]
  %.sroa.05.1.i.i.i.i.i.i = phi i8 [ %.sroa.05.0189.i.i.i.i.i.i, %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h3861b1c553be499bE.exit.i.i.i.i.i.i" ], [ %.sroa.05.0189.i.i.i.i.i.i, %bb.gj ], [ %.sroa.05.0189.i.i.i.i.i.i, %bb.gk ], [ %.sroa.0.2180.i.i.i.i.i.i, %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$25store_symbol_with_context17h2f95a2c07fd3125eE.exit.i.i.i.i.i.i" ]
  %.sroa.0.1.i.i.i.i.i.i = phi i8 [ %.sroa.0.0190.i.i.i.i.i.i, %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h3861b1c553be499bE.exit.i.i.i.i.i.i" ], [ %.sroa.0.0190.i.i.i.i.i.i, %bb.gj ], [ %.sroa.0.0190.i.i.i.i.i.i, %bb.gk ], [ %i.adw, %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$25store_symbol_with_context17h2f95a2c07fd3125eE.exit.i.i.i.i.i.i" ]
  %i.abd = load i32, ptr %i.dy, align 4, !noalias !5378, !noundef !21
  %i.abe = and i32 %i.abd, 33554431               ; 2 uses
  %i.abf = zext nneg i32 %i.abe to i64
  %i.abg = add i64 %.sroa.06.2.i.i.i.i.i.i, %i.abf ; 3 uses
  %i.abh = icmp eq i32 %i.abe, 0
  br i1 %i.abh, label %bb.gs, label %bb.gt

bb.gl:                                            ; preds = %.lr.ph185.i.i.i.i.i.i
  %i.abi = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.abb
  %i.abj = load i8, ptr %i.abi, align 1, !alias.scope !5403, !noalias !5404, !noundef !21
  %i.abk = zext i8 %i.abj to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !5405)
  %i.abl = load i64, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5405, !noalias !5406, !noundef !21 ; 2 uses
  %i.abm = icmp eq i64 %i.abl, 0
  br i1 %i.abm, label %bb.gm, label %bb.gp

bb.gm:                                            ; preds = %bb.gl
  %i.abn = load i64, ptr %.sroa.2015.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5405, !noalias !5406, !noundef !21
  %i.abo = add i64 %i.abn, 1                      ; 7 uses
  store i64 %i.abo, ptr %.sroa.2015.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5405, !noalias !5406
  %i.abp = load i64, ptr %.sroa.6.0..sroa_idx.i35.i.i.i.i.i, align 8, !alias.scope !5405, !noalias !5406, !noundef !21 ; 2 uses
  %i.abq = icmp ult i64 %i.abo, %i.abp
  br i1 %i.abq, label %bb.gn, label %.invoke.i.i.i.i.i.i

bb.gn:                                            ; preds = %bb.gm
  %i.abr = load i64, ptr %.sroa.4.0..sroa_idx.i33.i.i.i.i.i, align 8, !alias.scope !5405, !noalias !5406, !noundef !21 ; 2 uses
  %i.abs = icmp ult i64 %i.abo, %i.abr
  br i1 %i.abs, label %bb.go, label %.invoke.i.i.i.i.i.i

bb.go:                                            ; preds = %bb.gn
  %i.abt = load ptr, ptr %.sroa.5.0..sroa_idx.i34.i.i.i.i.i, align 8, !alias.scope !5405, !noalias !5406, !nonnull !21, !align !28, !noundef !21
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %i.abo
  %i.abv = load i32, ptr %i.abu, align 4, !noalias !5407, !noundef !21 ; 2 uses
  %i.abw = load ptr, ptr %i.f, align 8, !alias.scope !5405, !noalias !5406, !nonnull !21, !align !29, !noundef !21
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 %i.abo
  %i.aby = load i8, ptr %i.abx, align 1, !noalias !5407, !noundef !21 ; 2 uses
  %i.abz = zext i32 %i.abv to i64
  store i64 %i.abz, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5405, !noalias !5406
  %i.aca = zext i8 %i.aby to i64
  %i.acb = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5405, !noalias !5406, !noundef !21
  %i.acc = mul i64 %i.acb, %i.aca
  store i64 %i.acc, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5405, !noalias !5406
  invoke void @_ZN6brotli3enc17brotli_bit_stream16StoreBlockSwitch17h099ad7a43c193500E(ptr noalias noundef nonnull align 8 dereferenceable(872) %.sroa.14.0..sroa_idx.i.i.i.i.i.i, i32 noundef %i.abv, i8 noundef %i.aby, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i)
          to label %.noexc143.i.i.i.i.i.i unwind label %.thread69.loopexit.i.i.i.i.i.i, !noalias !5382

.noexc143.i.i.i.i.i.i:                            ; preds = %bb.go
  %.pre.i.i.i.i.i.i.i = load i64, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5405, !noalias !5406
  br label %bb.gp

bb.gp:                                            ; preds = %.noexc143.i.i.i.i.i.i, %bb.gl
  %i.acd = phi i64 [ %i.abl, %bb.gl ], [ %.pre.i.i.i.i.i.i.i, %.noexc143.i.i.i.i.i.i ]
  %i.ace = add i64 %i.acd, -1
  store i64 %i.ace, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5405, !noalias !5406
  %i.acf = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5405, !noalias !5406, !noundef !21
  %i.acg = add i64 %i.acf, %i.abk                 ; 6 uses
  %.val7.i.i.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5405, !noalias !5406, !noundef !21 ; 2 uses
  %i.ach = icmp ult i64 %i.acg, %.val7.i.i.i.i.i.i.i
  br i1 %i.ach, label %bb.gq, label %.invoke.i.i.i.i.i.i

bb.gq:                                            ; preds = %bb.gp
  %.val9.i.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5405, !noalias !5406, !noundef !21 ; 2 uses
  %i.aci = icmp ult i64 %i.acg, %.val9.i.i.i.i.i.i.i
  br i1 %i.aci, label %bb.gr, label %.invoke.i.i.i.i.i.i

bb.gr:                                            ; preds = %bb.gq
  %.val8.i.i.i.i.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5405, !noalias !5406, !nonnull !21, !align !27, !noundef !21
  %.val.i141.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i36.i.i.i.i.i, align 8, !alias.scope !5405, !noalias !5406, !nonnull !21, !align !29, !noundef !21
  %i.acj = getelementptr inbounds nuw i8, ptr %.val.i141.i.i.i.i.i.i, i64 %i.acg
  %i.ack = load i8, ptr %i.acj, align 1, !noalias !5382, !noundef !21
  %i.acl = getelementptr inbounds nuw [2 x i8], ptr %.val8.i.i.i.i.i.i.i, i64 %i.acg
  %i.acm = load i16, ptr %i.acl, align 2, !noalias !5382, !noundef !21
  %i.acn = zext i16 %i.acm to i64
  invoke void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.ack, i64 noundef %i.acn, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i)
          to label %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h3861b1c553be499bE.exit.i.i.i.i.i.i" unwind label %.thread69.loopexit.i.i.i.i.i.i, !noalias !5382

"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h3861b1c553be499bE.exit.i.i.i.i.i.i": ; preds = %bb.gr
  %i.aco = add i64 %.sroa.06.1184.i.i.i.i.i.i, 1  ; 2 uses
  %i.acp = add nsw i64 %.sroa.020.0183.i.i.i.i.i.i, -1 ; 2 uses
  %i.acq = icmp eq i64 %i.acp, 0
  br i1 %i.acq, label %.loopexit.i.i.i.i.i.i, label %.lr.ph185.i.i.i.i.i.i

.lr.ph.i37.i.i.i.i.i:                             ; preds = %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$25store_symbol_with_context17h2f95a2c07fd3125eE.exit.i.i.i.i.i.i", %.lr.ph.preheader.i.i.i.i.i.i
  %.sroa.0.2180.i.i.i.i.i.i = phi i8 [ %i.adw, %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$25store_symbol_with_context17h2f95a2c07fd3125eE.exit.i.i.i.i.i.i" ], [ %.sroa.0.0190.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.sroa.05.2179.i.i.i.i.i.i = phi i8 [ %.sroa.0.2180.i.i.i.i.i.i, %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$25store_symbol_with_context17h2f95a2c07fd3125eE.exit.i.i.i.i.i.i" ], [ %.sroa.05.0189.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ]
  %.sroa.06.3178.i.i.i.i.i.i = phi i64 [ %i.afh, %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$25store_symbol_with_context17h2f95a2c07fd3125eE.exit.i.i.i.i.i.i" ], [ %.sroa.06.0188.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.022.0177.i.i.i.i.i.i = phi i64 [ %i.afi, %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$25store_symbol_with_context17h2f95a2c07fd3125eE.exit.i.i.i.i.i.i" ], [ %i.aba, %.lr.ph.preheader.i.i.i.i.i.i ]
  %i.acr = invoke noundef i8 @_ZN6brotli3enc17brotli_bit_stream7Context17h5fcc9e338d36559dE(i8 noundef %.sroa.0.2180.i.i.i.i.i.i, i8 noundef %.sroa.05.2179.i.i.i.i.i.i, i8 noundef range(i8 0, 4) %14)
          to label %bb.he unwind label %.thread69.loopexit.split-lp.loopexit.i.i.i.i.i.i, !noalias !5382

bb.gs:                                            ; preds = %bb.gz, %bb.gv, %.loopexit.i.i.i.i.i.i
  %.sroa.05.3.i.i.i.i.i.i = phi i8 [ %.sroa.05.1.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %i.acy, %bb.gz ], [ %i.acy, %bb.gv ]
  %.sroa.0.3.i.i.i.i.i.i = phi i8 [ %.sroa.0.1.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %i.add, %bb.gz ], [ %i.add, %bb.gv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5378
  %i.acs = icmp ult i64 %.sroa.030.1191.i.i.i.i.i.i, %i.tj ; 2 uses
  %i.act = zext i1 %i.acs to i64
  %.sroa.030.1.i.i.i.i.i.i = add nuw i64 %.sroa.030.1191.i.i.i.i.i.i, %i.act
  br i1 %i.acs, label %bb.gf, label %._crit_edge.i38.i.i.i.i.i

bb.gt:                                            ; preds = %.loopexit.i.i.i.i.i.i
  %i.acu = add i64 %i.abg, 4294967294
  %i.acv = and i64 %i.acu, %i.qy                  ; 3 uses
  %i.acw = icmp ult i64 %i.acv, %i.td
  br i1 %i.acw, label %bb.gu, label %.invoke.i.i.i.i.i.i

bb.gu:                                            ; preds = %bb.gt
  %i.acx = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.acv
  %i.acy = load i8, ptr %i.acx, align 1, !alias.scope !5403, !noalias !5404, !noundef !21 ; 2 uses
  %i.acz = add i64 %i.abg, 4294967295
  %i.ada = and i64 %i.acz, %i.qy                  ; 3 uses
  %i.adb = icmp ult i64 %i.ada, %i.td
  br i1 %i.adb, label %bb.gv, label %.invoke.i.i.i.i.i.i

bb.gv:                                            ; preds = %bb.gu
  %i.adc = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.ada
  %i.add = load i8, ptr %i.adc, align 1, !alias.scope !5403, !noalias !5404, !noundef !21 ; 2 uses
  %i.ade = zext i16 %i.aas to i32                 ; 2 uses
  %i.adf = icmp ugt i16 %i.aas, 127
  br i1 %i.adf, label %bb.gw, label %bb.gs

bb.gw:                                            ; preds = %bb.gv
  %i.adg = load i16, ptr %i.dz, align 2, !noalias !5378, !noundef !21 ; 2 uses
  %i.adh = and i16 %i.adg, 1023
  %i.adi = zext nneg i16 %i.adh to i64            ; 2 uses
  %i.adj = lshr i16 %i.adg, 10
  %i.adk = load i32, ptr %i.ea, align 4, !noalias !5378, !noundef !21
  %i.adl = zext i32 %i.adk to i64
  br i1 %i.zg, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  invoke fastcc void @"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h3861b1c553be499bE"(ptr noalias noundef align 8 dereferenceable(984) %i.d, i64 noundef %i.adi, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i)
          to label %bb.gz unwind label %.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i.i.i, !noalias !5382

bb.gy:                                            ; preds = %bb.gw
  %i.adm = lshr i32 %i.ade, 6                     ; 2 uses
  %i.adn = and i32 %i.ade, 7                      ; 3 uses
  switch i32 %i.adm, label %bb.hb [
    i32 4, label %bb.ha
    i32 2, label %bb.ha
  ]

bb.gz:                                            ; preds = %bb.hd, %bb.gx
  %i.ado = trunc nuw nsw i16 %i.adj to i8
  invoke void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.ado, i64 noundef %i.adl, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i)
          to label %bb.gs unwind label %.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i.i.i, !noalias !5382

bb.ha:                                            ; preds = %bb.gy, %bb.gy
  %.old.i.i.i.i.i.i = icmp samesign ult i32 %i.adn, 3
  br i1 %.old.i.i.i.i.i.i, label %bb.hc, label %bb.hd

bb.hb:                                            ; preds = %bb.gy
  %i.adp = icmp eq i32 %i.adm, 7
  %i.adq = icmp samesign ult i32 %i.adn, 3
  %or.cond.i.i.i.i.i.i = and i1 %i.adp, %i.adq
  br i1 %or.cond.i.i.i.i.i.i, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.adr = zext nneg i32 %i.adn to i64
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb, %bb.ha
  %.sroa.024.0.i.i.i.i.i.i = phi i64 [ %i.adr, %bb.hc ], [ 3, %bb.hb ], [ 3, %bb.ha ]
  invoke fastcc void @"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$25store_symbol_with_context17h2f95a2c07fd3125eE"(ptr noalias noundef align 8 dereferenceable(984) %i.d, i64 noundef %i.adi, i64 noundef %.sroa.024.0.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val50.i.i.i.i.i.i, i64 noundef %.val51.i.i.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i, i64 noundef 2)
          to label %bb.gz unwind label %.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i.i.i, !noalias !5382

bb.he:                                            ; preds = %.lr.ph.i37.i.i.i.i.i
  %i.ads = zext i8 %i.acr to i64
  %i.adt = and i64 %.sroa.06.3178.i.i.i.i.i.i, %i.qy ; 3 uses
  %i.adu = icmp ult i64 %i.adt, %i.td
  br i1 %i.adu, label %bb.hf, label %.invoke.i.i.i.i.i.i

bb.hf:                                            ; preds = %bb.he
  %i.adv = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.adt
  %i.adw = load i8, ptr %i.adv, align 1, !alias.scope !5403, !noalias !5404, !noundef !21 ; 3 uses
  %i.adx = zext i8 %i.adw to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !5408)
  call void @llvm.experimental.noalias.scope.decl(metadata !5409)
  %i.ady = load i64, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5408, !noalias !5410, !noundef !21 ; 2 uses
  %i.adz = icmp eq i64 %i.ady, 0
  br i1 %i.adz, label %bb.hg, label %bb.hj

bb.hg:                                            ; preds = %bb.hf
  %i.aea = load i64, ptr %.sroa.2015.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5408, !noalias !5410, !noundef !21
  %i.aeb = add i64 %i.aea, 1                      ; 7 uses
  store i64 %i.aeb, ptr %.sroa.2015.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5408, !noalias !5410
  %i.aec = load i64, ptr %.sroa.6.0..sroa_idx.i35.i.i.i.i.i, align 8, !alias.scope !5408, !noalias !5410, !noundef !21 ; 2 uses
  %i.aed = icmp ult i64 %i.aeb, %i.aec
  br i1 %i.aed, label %bb.hh, label %.invoke.i.i.i.i.i.i

bb.hh:                                            ; preds = %bb.hg
  %i.aee = load i64, ptr %.sroa.4.0..sroa_idx.i33.i.i.i.i.i, align 8, !alias.scope !5408, !noalias !5410, !noundef !21 ; 2 uses
  %i.aef = icmp ult i64 %i.aeb, %i.aee
  br i1 %i.aef, label %bb.hi, label %.invoke.i.i.i.i.i.i

bb.hi:                                            ; preds = %bb.hh
  %i.aeg = load ptr, ptr %.sroa.5.0..sroa_idx.i34.i.i.i.i.i, align 8, !alias.scope !5408, !noalias !5410, !nonnull !21, !align !28, !noundef !21
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.aeg, i64 %i.aeb
  %i.aei = load i32, ptr %i.aeh, align 4, !noalias !5411, !noundef !21 ; 2 uses
  %i.aej = load ptr, ptr %i.f, align 8, !alias.scope !5408, !noalias !5410, !nonnull !21, !align !29, !noundef !21
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 %i.aeb
  %i.ael = load i8, ptr %i.aek, align 1, !noalias !5411, !noundef !21 ; 2 uses
  %i.aem = zext i32 %i.aei to i64
  store i64 %i.aem, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5408, !noalias !5410
  %i.aen = zext i8 %i.ael to i64
  %i.aeo = shl nuw nsw i64 %i.aen, 6
  store i64 %i.aeo, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5408, !noalias !5410
  invoke void @_ZN6brotli3enc17brotli_bit_stream16StoreBlockSwitch17h099ad7a43c193500E(ptr noalias noundef nonnull align 8 dereferenceable(872) %.sroa.14.0..sroa_idx.i.i.i.i.i.i, i32 noundef %i.aei, i8 noundef %i.ael, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i)
          to label %.noexc152.i.i.i.i.i.i unwind label %.thread69.loopexit.split-lp.loopexit.i.i.i.i.i.i, !noalias !5382

.noexc152.i.i.i.i.i.i:                            ; preds = %bb.hi
  %.pre.i150.i.i.i.i.i.i = load i64, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5408, !noalias !5410
  br label %bb.hj

bb.hj:                                            ; preds = %.noexc152.i.i.i.i.i.i, %bb.hf
  %i.aep = phi i64 [ %i.ady, %bb.hf ], [ %.pre.i150.i.i.i.i.i.i, %.noexc152.i.i.i.i.i.i ]
  %i.aeq = add i64 %i.aep, -1
  store i64 %i.aeq, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5408, !noalias !5410
  %i.aer = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5408, !noalias !5410, !noundef !21
  %i.aes = add i64 %i.aer, %i.ads                 ; 3 uses
  %i.aet = icmp ult i64 %i.aes, %.val49.i.i.i.i.i.i
  br i1 %i.aet, label %bb.hk, label %.invoke.i.i.i.i.i.i

bb.hk:                                            ; preds = %bb.hj
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.aes
  %i.aev = load i32, ptr %i.aeu, align 4, !alias.scope !5409, !noalias !5412, !noundef !21
  %i.aew = zext i32 %i.aev to i64
  %i.aex = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5408, !noalias !5410, !noundef !21
  %i.aey = mul i64 %i.aex, %i.aew
  %i.aez = add i64 %i.aey, %i.adx                 ; 6 uses
  %.val9.i148.i.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5408, !noalias !5410, !noundef !21 ; 2 uses
  %i.afa = icmp ult i64 %i.aez, %.val9.i148.i.i.i.i.i.i
  br i1 %i.afa, label %bb.hl, label %.invoke.i.i.i.i.i.i

bb.hl:                                            ; preds = %bb.hk
  %.val11.i.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5408, !noalias !5410, !noundef !21 ; 2 uses
  %i.afb = icmp ult i64 %i.aez, %.val11.i.i.i.i.i.i.i
  br i1 %i.afb, label %bb.hm, label %.invoke.i.i.i.i.i.i

bb.hm:                                            ; preds = %bb.hl
  %.val10.i.i.i.i.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5408, !noalias !5410, !nonnull !21, !align !27, !noundef !21
  %.val.i149.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i36.i.i.i.i.i, align 8, !alias.scope !5408, !noalias !5410, !nonnull !21, !align !29, !noundef !21
  %i.afc = getelementptr inbounds nuw i8, ptr %.val.i149.i.i.i.i.i.i, i64 %i.aez
  %i.afd = load i8, ptr %i.afc, align 1, !noalias !5413, !noundef !21
  %i.afe = getelementptr inbounds nuw [2 x i8], ptr %.val10.i.i.i.i.i.i.i, i64 %i.aez
  %i.aff = load i16, ptr %i.afe, align 2, !noalias !5413, !noundef !21
  %i.afg = zext i16 %i.aff to i64
  invoke void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.afd, i64 noundef %i.afg, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef range(i64 2, 0) %.val124.i.i.i.i)
          to label %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$25store_symbol_with_context17h2f95a2c07fd3125eE.exit.i.i.i.i.i.i" unwind label %.thread69.loopexit.split-lp.loopexit.i.i.i.i.i.i, !noalias !5382

"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$25store_symbol_with_context17h2f95a2c07fd3125eE.exit.i.i.i.i.i.i": ; preds = %bb.hm
  %i.afh = add i64 %.sroa.06.3178.i.i.i.i.i.i, 1  ; 2 uses
  %i.afi = add nsw i64 %.sroa.022.0177.i.i.i.i.i.i, -1 ; 2 uses
  %i.afj = icmp eq i64 %i.afi, 0
  br i1 %i.afj, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i37.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i201.i.i.i.i", %.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i, %.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i.i.i, %.thread69.loopexit.split-lp.loopexit.i.i.i.i.i.i, %.thread69.loopexit.i.i.i.i.i.i
  %lpad.phi73.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.phi95.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i201.i.i.i.i" ], [ %lpad.loopexit.i.i.i.i.i.i, %.thread69.loopexit.i.i.i.i.i.i ], [ %lpad.loopexit88.i.i.i.i.i.i, %.thread69.loopexit.split-lp.loopexit.i.i.i.i.i.i ], [ %lpad.loopexit91.i.i.i.i.i.i, %.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i, %.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i ]
  call fastcc void @"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E"(ptr noalias noundef align 8 dereferenceable(984) %i.d) #47, !noalias !5382
  call fastcc void @"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E"(ptr noalias noundef align 8 dereferenceable(984) %i.e) #47, !noalias !5382
  call fastcc void @"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E"(ptr noalias noundef align 8 dereferenceable(984) %i.f) #47, !noalias !5382
  br label %.body.i.i.i.i.i

bb.hn:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i138.i.i.i.i.i.i", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i136.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5378
  call fastcc void @"_ZN6brotli3enc17brotli_bit_stream27MetaBlockSplit$LT$Alloc$GT$7destroy17hefb4cf136a193463E"(ptr noalias noundef align 8 dereferenceable(264) %i.am), !noalias !5347
  call fastcc void @"_ZN4core3ptr113drop_in_place$LT$brotli..enc..brotli_bit_stream..MetaBlockSplit$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17hb9e224f650bfdf72E"(ptr noalias noundef align 8 dereferenceable(264) %i.am), !noalias !5347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !5348
  br label %_ZN6brotli3enc17brotli_bit_stream21store_meta_block_fast17h832de83a9a2e815dE.exit.i.i.i.i.i

_ZN6brotli3enc17brotli_bit_stream21store_meta_block_fast17h832de83a9a2e815dE.exit.i.i.i.i.i: ; preds = %bb.hn, %_ZN6brotli3enc17brotli_bit_stream24store_meta_block_trivial17h9a46c9dc788248a3E.exit.i.i.i.i.i, %._crit_edge14.i.i.i.i.i.i, %bb.eq
  %i.afk = add nuw nsw i64 %i.tf, 4
  %i.afl = add nuw nsw i64 %i.afk, %i.tv
  %i.afm = load i64, ptr %i.aq, align 8, !alias.scope !5343, !noalias !5352, !noundef !21
  %i.afn = lshr i64 %i.afm, 3
  %i.afo = icmp samesign ult i64 %i.afl, %i.afn
  br i1 %i.afo, label %bb.ho, label %_ZN6brotli3enc6encode22WriteMetaBlockInternal17h3bc364bcac3249c2E.exit.i.i.i.i

bb.ho:                                            ; preds = %_ZN6brotli3enc17brotli_bit_stream21store_meta_block_fast17h832de83a9a2e815dE.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cp, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cs, i64 16, i1 false), !alias.scope !5414, !noalias !5415
  store i8 %i.ub, ptr %i.ua, align 1, !alias.scope !5344, !noalias !5353
  store i8 %i.tz, ptr %i.ty, align 1, !alias.scope !5344, !noalias !5353
  %i.afp = and i64 %i.tu, 255
  store i64 %i.afp, ptr %i.aq, align 8, !alias.scope !5343, !noalias !5352
  %i.afq = zext i32 %.sroa.012.0.i.i.i.i.i to i64
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream29store_uncompressed_meta_block17h40db7eb2cc54e912E(ptr noalias noundef nonnull align 1 %i.bn, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.te, i64 noundef %i.td, i64 noundef %i.afq, i64 noundef range(i64 0, 4294967296) %i.qy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, i64 noundef range(i64 0, 4294967296) %i.tf, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i.i.i, i64 noundef %.val124.i.i.i.i, i1 noundef zeroext true)
  br label %_ZN6brotli3enc6encode22WriteMetaBlockInternal17h3bc364bcac3249c2E.exit.i.i.i.i

_ZN6brotli3enc6encode22WriteMetaBlockInternal17h3bc364bcac3249c2E.exit.i.i.i.i: ; preds = %bb.ho, %_ZN6brotli3enc17brotli_bit_stream21store_meta_block_fast17h832de83a9a2e815dE.exit.i.i.i.i.i, %bb.eg, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !5348
  %.val161.i.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !29, !noundef !21 ; 2 uses
  %.val162.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 4 uses
  %i.afr = load i64, ptr %i.aq, align 8, !noalias !5320, !noundef !21 ; 2 uses
  %i.afs = lshr i64 %i.afr, 3                     ; 5 uses
  %i.aft = icmp ult i64 %i.afs, %.val162.i.i.i.i
  br i1 %i.aft, label %bb.hq, label %bb.hr

bb.hp:                                            ; preds = %bb.ea
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ta, i64 noundef %.val126.i.i.i.i, i64 noundef %.val126.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1200) #46, !noalias !5328
  unreachable

bb.hq:                                            ; preds = %_ZN6brotli3enc6encode22WriteMetaBlockInternal17h3bc364bcac3249c2E.exit.i.i.i.i
  %i.afu = add nuw nsw i64 %i.afs, 1              ; 3 uses
  %i.afv = icmp ult i64 %i.afu, %.val162.i.i.i.i
  br i1 %i.afv, label %bb.hs, label %bb.ht

bb.hr:                                            ; preds = %_ZN6brotli3enc6encode22WriteMetaBlockInternal17h3bc364bcac3249c2E.exit.i.i.i.i
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.afs, i64 noundef %.val162.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1195) #46, !noalias !5328
  unreachable

bb.hs:                                            ; preds = %bb.hq
  %i.afw = getelementptr inbounds nuw i8, ptr %.val161.i.i.i.i, i64 %i.afs
  %i.afx = load i8, ptr %i.afw, align 1, !noalias !5328, !noundef !21
  %i.afy = zext i8 %i.afx to i16
  %i.afz = getelementptr inbounds nuw i8, ptr %.val161.i.i.i.i, i64 %i.afu
  %i.aga = load i8, ptr %i.afz, align 1, !noalias !5328, !noundef !21
  %i.agb = zext i8 %i.aga to i16
  %i.agc = shl nuw i16 %i.agb, 8
  %i.agd = or disjoint i16 %i.agc, %i.afy
  store i16 %i.agd, ptr %i.br, align 8, !alias.scope !5321, !noalias !5322
  %i.age = trunc i64 %i.afr to i8
  %i.agf = and i8 %i.age, 7
  store i8 %i.agf, ptr %i.bn, align 2, !alias.scope !5321, !noalias !5322
  %i.agg = load i64, ptr %i.bf, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 6 uses
  store i64 %i.agg, ptr %i.bo, align 8, !alias.scope !5321, !noalias !5322
  %i.agh = load i64, ptr %i.bg, align 8, !alias.scope !5416, !noalias !5322, !noundef !21 ; 2 uses
  %32 = trunc i64 %i.agh to i32                   ; 3 uses
  %33 = icmp ugt i64 %i.agh, 3221225471
  %34 = and i32 %32, 1073741823
  %35 = and i32 %32, 1073741824
  %reass.sub.i203.i.i.i.i = sub nsw i32 %34, %35
  %36 = xor i32 %reass.sub.i203.i.i.i.i, -2147483648
  %.sroa.0.0.i204.i.i.i.i = select i1 %33, i32 %36, i32 %32
  %i.agi = trunc i64 %i.agg to i32                ; 5 uses
  %i.agj = icmp ugt i64 %i.agg, 3221225471
  %37 = and i32 %i.agi, 1073741823
  %38 = and i32 %i.agi, 1073741824
  %reass.sub5.i205.i.i.i.i = sub nsw i32 %37, %38
  %39 = xor i32 %reass.sub5.i205.i.i.i.i, -2147483648
  %.sroa.02.0.i206.i.i.i.i = select i1 %i.agj, i32 %39, i32 %i.agi
  store i64 %i.agg, ptr %i.bg, align 8, !alias.scope !5416, !noalias !5322
  %40 = icmp ult i32 %.sroa.02.0.i206.i.i.i.i, %.sroa.0.0.i204.i.i.i.i
  br i1 %40, label %bb.hv, label %bb.hu

bb.ht:                                            ; preds = %bb.hq
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.afu, i64 noundef %.val162.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1196) #46, !noalias !5328
  unreachable

bb.hu:                                            ; preds = %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i", %bb.hv, %bb.hs
  %.val158.i.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 4 uses
  %i.agk = load i64, ptr %i.cb, align 8, !alias.scope !5321, !noalias !5322, !noundef !21 ; 4 uses
  %i.agl = icmp ugt i64 %i.agk, %.val158.i.i.i.i
  br i1 %i.agl, label %bb.hz, label %bb.hy, !prof !30

bb.hv:                                            ; preds = %bb.hs
  %i.agm = load i64, ptr %i.ba, align 8, !range !70, !alias.scope !5321, !noalias !5322, !noundef !21
  switch i64 %i.agm, label %default.unreachable [
    i64 0, label %bb.hu
    i64 10, label %bb.hx
    i64 1, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i"
    i64 2, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i"
    i64 3, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i"
    i64 4, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i"
    i64 5, label %bb.hw
    i64 6, label %bb.hw
    i64 7, label %bb.hw
    i64 8, label %bb.hw
    i64 9, label %bb.hw
  ], !prof !77

bb.hw:                                            ; preds = %bb.hv, %bb.hv, %bb.hv, %bb.hv, %bb.hv
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i"

bb.hx:                                            ; preds = %bb.hv
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i"

"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i": ; preds = %bb.hx, %bb.hw, %bb.hv, %bb.hv, %bb.hv, %bb.hv
  %.sink.i.i.i = phi i64 [ 56, %bb.hx ], [ 24, %bb.hv ], [ 24, %bb.hv ], [ 24, %bb.hv ], [ 24, %bb.hv ], [ 40, %bb.hw ]
  %i.agn = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sink.i.i.i
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 40
  store i32 0, ptr %i.ago, align 8, !alias.scope !5293, !noalias !5294
  br label %bb.hu

bb.hy:                                            ; preds = %bb.hu
  %.val157.i.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !5321, !noalias !5322, !nonnull !21, !align !29, !noundef !21
  %i.agp = sub nuw i64 %.val158.i.i.i.i, %i.agk   ; 4 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %.val157.i.i.i.i, i64 %i.agk ; 2 uses
  %.not122.i.i.i.i = icmp eq i64 %i.agg, 0
  br i1 %.not122.i.i.i.i, label %.thread12.i.i.i.i, label %bb.ia

bb.hz:                                            ; preds = %bb.hu
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.agk, i64 noundef %.val158.i.i.i.i, i64 noundef %.val158.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1199) #46, !noalias !5328
  unreachable

bb.ia:                                            ; preds = %bb.hy
  %i.agr = add i32 %i.agi, -1
  %i.ags = and i32 %i.agr, %i.jj
  %i.agt = zext i32 %i.ags to i64                 ; 3 uses
  %i.agu = icmp ugt i64 %i.agp, %i.agt
  br i1 %i.agu, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agq, i64 %i.agt
  %i.agw = load i8, ptr %i.agv, align 1, !noalias !5328, !noundef !21
  store i8 %i.agw, ptr %i.cd, align 1, !alias.scope !5321, !noalias !5322
  %.not13.i.i.i.i = icmp eq i64 %i.agg, 1
  br i1 %.not13.i.i.i.i, label %.thread12.i.i.i.i, label %bb.id

bb.ic:                                            ; preds = %bb.ia
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.agt, i64 noundef %i.agp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1197) #46, !noalias !5328
  unreachable

bb.id:                                            ; preds = %bb.ib
  %i.agx = add i32 %i.agi, -2
  %i.agy = and i32 %i.agx, %i.jj
  %i.agz = zext i32 %i.agy to i64                 ; 3 uses
  %i.aha = icmp ugt i64 %i.agp, %i.agz
  br i1 %i.aha, label %bb.ie, label %bb.if

.thread12.i.i.i.i:                                ; preds = %bb.ie, %bb.ib, %bb.hy
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i8 0, i64 16, i1 false), !alias.scope !5321, !noalias !5322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cp, i64 16, i1 false), !alias.scope !5417, !noalias !5418
  store i32 0, ptr %i.bv, align 8, !alias.scope !5321, !noalias !5322
  store i32 0, ptr %i.bw, align 4, !alias.scope !5321, !noalias !5322
  br label %bb.ii

bb.ie:                                            ; preds = %bb.id
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agq, i64 %i.agz
  %i.ahc = load i8, ptr %i.ahb, align 1, !noalias !5328, !noundef !21
  store i8 %i.ahc, ptr %i.ce, align 8, !alias.scope !5321, !noalias !5322
  br label %.thread12.i.i.i.i

bb.if:                                            ; preds = %bb.id
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.agz, i64 noundef %i.agp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1198) #46, !noalias !5328
  unreachable

bb.ig:                                            ; preds = %.invoke.i.i.i.i
  %i.ahd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahe = icmp eq i64 %i.pu, 0
  br i1 %i.ahe, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i205.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i205.i.i.i.i": ; preds = %bb.ig
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 noundef %i.pv, i64 noundef 4) #45, !noalias !5328
  br label %common.resume

bb.ih:                                            ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !5320
  store i64 0, ptr %i.bi, align 8, !alias.scope !5306, !noalias !5307
  br label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17ha90c855cbaf522e7E.exit.i.i"

bb.ii:                                            ; preds = %bb.dt, %.thread12.i.i.i.i, %bb.dz, %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit", %bb.ds, %bb.cj
  %.sroa.0.01.i.i.i = phi i64 [ %storemerge.i.i.i.i, %bb.cj ], [ %.sroa.011.2.i.i.i.i, %bb.ds ], [ %i.afs, %.thread12.i.i.i.i ], [ %.sroa.011.2.i.i.i.i, %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit" ], [ %.sroa.011.2.i.i.i.i, %bb.dt ], [ %.sroa.011.2.i.i.i.i, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !5320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !5320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !5320
  store i64 %.sroa.0.01.i.i.i, ptr %i.bi, align 8, !alias.scope !5306, !noalias !5307
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %bb.ik, %bb.ii, %bb.ag
  %.pre = load i8, ptr %i.fn, align 1, !range !38, !alias.scope !5309, !noalias !5299
  br label %bb.t

bb.ij:                                            ; preds = %bb.al
  store i32 0, ptr %i.bc, align 8, !alias.scope !5306, !noalias !5307
  store i32 2, ptr %i.bv, align 8, !alias.scope !5306, !noalias !5307
  br label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17ha90c855cbaf522e7E.exit.i.i"

bb.ik:                                            ; preds = %bb.ai
  %.sroa.0.0.i23.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.it, i64 %.sroa.0.0.i.i.i.i) ; 3 uses
  %i.ahf = sub nuw i64 %2, %i.iv
  %i.ahg = getelementptr inbounds nuw i8, ptr %1, i64 %i.iv
  call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25copy_input_to_ring_buffer17h28b5f2c796b98b89E"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ba, i64 noundef %.sroa.0.0.i23.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ahg, i64 noundef %i.ahf), !noalias !5419
  %i.ahh = add i64 %i.iv, %.sroa.0.0.i23.i.i.i
  store i64 %i.ahh, ptr %i.au, align 8, !alias.scope !5297, !noalias !5318
  %i.ahi = sub nuw i64 %i.it, %.sroa.0.0.i23.i.i.i
  store i64 %i.ahi, ptr %i.av, align 8, !alias.scope !5296, !noalias !5317
  br label %.backedge.i.i.i

bb.il:                                            ; preds = %bb.ai
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.iv, i64 noundef range(i64 1, 0) %2, i64 noundef range(i64 1, 0) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1207) #46, !noalias !5299
  unreachable

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17ha90c855cbaf522e7E.exit.i.i": ; preds = %bb.aj, %bb.ij, %bb.ih, %bb.al, %bb.s, %bb.p, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h976450b2f254cc2bE.exit43"
  %.sroa.0.0.i.i.i = phi i1 [ false, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h976450b2f254cc2bE.exit43" ], [ true, %bb.ij ], [ true, %bb.al ], [ false, %bb.p ], [ false, %bb.ih ], [ %i.hf, %bb.s ], [ true, %bb.aj ]
  %i.ahj = load i64, ptr %i.at, align 8, !noalias !5292, !noundef !21 ; 9 uses
  %.not.i.i = icmp eq i64 %i.ahj, 0
  br i1 %.not.i.i, label %bb.in, label %bb.im

bb.im:                                            ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17ha90c855cbaf522e7E.exit.i.i"
  %i.ahk = load ptr, ptr %i.fk, align 8, !alias.scope !5293, !noalias !5294, !noundef !21 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.ahk, null
  br i1 %.not7.i.i, label %bb.ip, label %bb.io, !prof !30

bb.in:                                            ; preds = %bb.it, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17ha90c855cbaf522e7E.exit.i.i"
  br i1 %.sroa.0.0.i.i.i, label %bb.iv, label %bb.iu

bb.io:                                            ; preds = %bb.im
  %.val.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !5293, !noalias !5294, !nonnull !21, !align !29, !noundef !21
  %.val11.i.i = load i64, ptr %i.az, align 8, !alias.scope !5293, !noalias !5294, !noundef !21 ; 2 uses
  %.not8.i.i = icmp ugt i64 %i.ahj, %.val11.i.i
  br i1 %.not8.i.i, label %bb.is, label %.lr.ph.split.us.i.i.i, !prof !64

bb.ip:                                            ; preds = %bb.im
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @378) #46
  unreachable

.lr.ph.split.us.i.i.i:                            ; preds = %bb.io
  call void @llvm.experimental.noalias.scope.decl(metadata !5420)
  call void @llvm.experimental.noalias.scope.decl(metadata !5421)
  call void @llvm.experimental.noalias.scope.decl(metadata !5422)
  call void @llvm.experimental.noalias.scope.decl(metadata !5423)
  %i.ahl = load i64, ptr %i.fl, align 8, !alias.scope !5424, !noalias !5425, !noundef !21 ; 2 uses
  %i.ahm = load i64, ptr %i.fm, align 8, !alias.scope !5424, !noalias !5425, !noundef !21
  %i.ahn = sub i64 %i.ahm, %i.ahl
  %.not.i.i.i.us.i.i.i = icmp ugt i64 %i.ahj, %i.ahn
  br i1 %.not.i.i.i.us.i.i.i, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.aho = call noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fk, i64 noundef range(i64 1, 0) %i.ahj, i1 noundef zeroext true), !noalias !5426 ; 0 uses
  %.pre.i.i.i.us.i.i.i = load i64, ptr %i.fl, align 8, !alias.scope !5424, !noalias !5425
  %.pre.i.i = load ptr, ptr %i.fk, align 8, !alias.scope !5424, !noalias !5425
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %.lr.ph.split.us.i.i.i
  %i.ahp = phi ptr [ %i.ahk, %.lr.ph.split.us.i.i.i ], [ %.pre.i.i, %bb.iq ]
  %i.ahq = phi i64 [ %i.ahl, %.lr.ph.split.us.i.i.i ], [ %.pre.i.i.i.us.i.i.i, %bb.iq ]
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahp, i64 %i.ahq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ahr, ptr noundef nonnull readonly align 1 dereferenceable(1) %.val.i.i, i64 range(i64 1, 0) %i.ahj, i1 false)
  %i.ahs = load i64, ptr %i.fm, align 8, !alias.scope !5424, !noalias !5425, !noundef !21
  %i.aht = load i64, ptr %i.fl, align 8, !alias.scope !5424, !noalias !5425, !noundef !21 ; 2 uses
  %i.ahu = sub i64 %i.ahs, %i.aht                 ; 2 uses
  %i.ahv = icmp ugt i64 %i.ahj, %i.ahu
  br i1 %i.ahv, label %.split.us.i.i.i, label %bb.it, !prof !30

.split.us.i.i.i:                                  ; preds = %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5427
  store i64 %i.ahj, ptr %i.a, align 8, !noalias !5427
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ahu, ptr %i.ahw, align 8, !noalias !5427
  call void @_ZN5bytes13panic_advance17hadc1578990b3691cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #46, !noalias !5426
  unreachable

bb.is:                                            ; preds = %bb.io
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.ahj, i64 noundef %.val11.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @380) #46
  unreachable

bb.it:                                            ; preds = %bb.ir
  %i.ahx = add i64 %i.aht, %i.ahj
  store i64 %i.ahx, ptr %i.fl, align 8, !alias.scope !5424, !noalias !5425
  br label %bb.in

bb.iu:                                            ; preds = %bb.in
  %i.ahy = load ptr, ptr %i.fu, align 8, !alias.scope !5293, !noalias !5294, !noundef !21 ; 10 uses
  store ptr null, ptr %i.fu, align 8, !alias.scope !5293, !noalias !5294
  %.not10.i.i = icmp eq ptr %i.ahy, null
  br i1 %.not10.i.i, label %bb.iw, label %bb.ix, !prof !30

bb.iv:                                            ; preds = %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !5292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5292
  %.pr.i.i = load i64, ptr %i.av, align 8, !noalias !5292
  %i.ahz = icmp eq i64 %.pr.i.i, 0
  br i1 %i.ahz, label %.thread1449, label %bb.c

bb.iw:                                            ; preds = %bb.iu
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @379) #46
  unreachable

.loopexit.sink.split:                             ; preds = %.split73, %.split72, %.split, %bb.iy, %.thread1449
  %.sroa.05.0.ph = phi ptr [ null, %.thread1449 ], [ %i.ahy, %bb.iy ], [ %i.ahy, %.split ], [ %i.ahy, %.split72 ], [ %i.ahy, %.split73 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.a
  %.sroa.05.0 = phi ptr [ %.sroa.05.0.ph, %.loopexit.sink.split ], [ null, %bb.a ]
  ret ptr %.sroa.05.0

bb.ix:                                            ; preds = %bb.iu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !5292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !5292
  store i64 1, ptr %i.aw, align 8
  store ptr %i.ahy, ptr %i.fv, align 8
  %i.aia = ptrtoint ptr %i.ahy to i64             ; 3 uses
  %i.aib = and i64 %i.aia, 3
  switch i64 %i.aib, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.iy
    i64 0, label %.split73
    i64 1, label %.split72
  ], !prof !62

.thread1449:                                      ; preds = %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !5292
  br label %.loopexit.sink.split

.split:                                           ; preds = %bb.ix
  %.mask74 = and i64 %i.aia, -4294967296
  %i.aic = icmp eq i64 %.mask74, 17179869184
  br i1 %i.aic, label %bb.iz, label %.loopexit.sink.split

.split73:                                         ; preds = %bb.ix
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ahy, i64 16
  %i.aie = load i8, ptr %i.aid, align 8, !range !63, !noundef !21
  %i.aif = icmp eq i8 %i.aie, 35
  br i1 %i.aif, label %bb.iz, label %.loopexit.sink.split

.split72:                                         ; preds = %bb.ix
  %i.aig = getelementptr i8, ptr %i.ahy, i64 15
  %i.aih = load i8, ptr %i.aig, align 8, !range !63, !noundef !21
  %i.aii = icmp eq i8 %i.aih, 35
  br i1 %i.aii, label %bb.iz, label %.loopexit.sink.split

bb.iy:                                            ; preds = %bb.ix
  %i.aij = icmp ult ptr %i.ahy, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.aij)
  %.mask = and i64 %i.aia, -4294967296
  %i.aik = icmp eq i64 %.mask, 150323855360
  br i1 %i.aik, label %bb.iz, label %.loopexit.sink.split

bb.iz:                                            ; preds = %.split73, %.split72, %.split, %bb.iy
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h85474bca0acdf2a3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_ZN3std2io5Write9write_fmt17ha7f7a287cc9fb0ebE(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5435
  store ptr %0, ptr %i.b, align 8, !noalias !5435
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  store ptr null, ptr %i.d, align 8, !noalias !5435
  %i.e = invoke noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @513, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.d, align 8, !alias.scope !5436, !noalias !5435, !noundef !21
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %"_ZN4core3ptr128drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$actix_http..helpers..MutWriter$LT$bytes..bytes_mut..BytesMut$GT$$GT$$GT$17h23c1ad3b84bca1c3E.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h85474bca0acdf2a3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d)
end_hunk_1
begin_hunk_2_@"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$27inject_flush_or_push_output17hc8af9be3c325611bE":bb.a
  store i32 0, ptr %i.ai, align 4, !alias.scope !11684
  %i.ak = trunc i32 %i.r to i8
  store i8 %i.ak, ptr %i.aj, align 8, !alias.scope !11684
  %i.al = icmp ugt i8 %i.e, 2
  br i1 %i.al, label %.thread45.i, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hdbc13d3da5307604E.exit"

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1220) #46
  unreachable

bb.i:                                             ; preds = %bb.g
  %.not22.i = icmp eq i64 %i.ae, 1
  br i1 %.not22.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = lshr i32 %i.r, 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ao = trunc i32 %i.am to i8
  store i8 %i.ao, ptr %i.an, align 1
  %i.ap = icmp ugt i8 %i.e, 10
  br i1 %i.ap, label %bb.l, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hdbc13d3da5307604E.exit"

.thread45.i:                                      ; preds = %.thread29.i
  %i.aq = lshr i32 %i.r, 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 5529
  %i.as = trunc i32 %i.aq to i8
  store i8 %i.as, ptr %i.ar, align 1, !alias.scope !11684
  %i.at = icmp ugt i8 %i.e, 10
  br i1 %i.at, label %.thread50.i, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hdbc13d3da5307604E.exit"

bb.k:                                             ; preds = %bb.i
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1221) #46
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.au = icmp ugt i64 %i.ae, 2
  br i1 %i.au, label %.thread50.i, label %bb.m

.thread50.i:                                      ; preds = %bb.l, %.thread45.i
  %.sroa.09.02833414853.i = phi ptr [ %i.af, %bb.l ], [ %i.aj, %.thread45.i ]
  %i.av = lshr i32 %i.q, 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.09.02833414853.i, i64 2
  %i.ax = trunc i32 %i.av to i8
  store i8 %i.ax, ptr %i.aw, align 1
  br label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hdbc13d3da5307604E.exit"

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 2, i64 noundef %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1222) #46
  unreachable

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hdbc13d3da5307604E.exit": ; preds = %bb.g, %.thread29.i, %bb.j, %.thread45.i, %.thread50.i
  %i.ay = zext i8 %i.e to i64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 5512 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !11684, !noundef !21
  %i.bb = add nuw nsw i64 %i.ay, 13
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add i64 %i.ba, %i.bc
  store i64 %i.bd, ptr %i.az, align 8, !alias.scope !11684
  br label %bb.n

bb.n:                                             ; preds = %bb.t, %bb.u, %bb.b, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hdbc13d3da5307604E.exit"
  %.sroa.0.0 = phi i1 [ true, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25inject_byte_padding_block17hdbc13d3da5307604E.exit" ], [ false, %bb.b ], [ true, %bb.u ], [ true, %bb.t ]
  ret i1 %.sroa.0.0

bb.o:                                             ; preds = %bb.b
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 %i.h) ; 8 uses
  %i.be = load i64, ptr %4, align 8, !noundef !21 ; 4 uses
  %i.bf = add i64 %i.be, %.sroa.0.0.i             ; 4 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %.not = icmp ugt i64 %i.bf, %3
  %or.cond14 = or i1 %i.bg, %.not
  br i1 %or.cond14, label %bb.q, label %bb.p, !prof !64

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.val = load ptr, ptr %i.bi, align 8, !nonnull !21, !align !29, !noundef !21
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.val15 = load i64, ptr %i.bj, align 8, !noundef !21
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5528
  %i.bl = tail call { ptr, i64 } @_ZN6brotli3enc6encode18GetNextOutInternal17h163bd09a2afd3dd7E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.bh, ptr noalias noundef nonnull align 1 %.val, i64 noundef %.val15, ptr noalias noundef nonnull align 1 dereferenceable(16) %i.bk) ; 2 uses
  %i.bm = extractvalue { ptr, i64 } %i.bl, 1      ; 2 uses
  %.not13 = icmp ugt i64 %.sroa.0.0.i, %i.bm
  br i1 %.not13, label %bb.s, label %bb.r, !prof !64

bb.q:                                             ; preds = %bb.o
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.be, i64 noundef %i.bf, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1224) #46
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bn = extractvalue { ptr, i64 } %i.bl, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 %i.be
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr nonnull readonly align 1 %i.bn, i64 %.sroa.0.0.i, i1 false), !alias.scope !11685, !noalias !11686
  store i64 %i.bf, ptr %4, align 8
  %i.bp = sub nuw i64 %i.j, %.sroa.0.0.i
  store i64 %i.bp, ptr %1, align 8
  %i.bq = load i32, ptr %i.bh, align 8, !range !59, !noundef !21
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.bs = icmp eq i32 %i.bq, 2
  br i1 %i.bs, label %bb.t, label %.sink.split

bb.s:                                             ; preds = %bb.p
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.0.0.i, i64 noundef %i.bm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1223) #46
  unreachable

.sink.split:                                      ; preds = %bb.r
  %i.bt = trunc i64 %.sroa.0.0.i to i32
  %i.bu = load i32, ptr %i.br, align 4, !noundef !21
  %i.bv = add i32 %i.bu, %i.bt
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %.sink.split
  %.sroa.6.0 = phi i32 [ undef, %bb.r ], [ %i.bv, %.sink.split ]
  store i32 %.sroa.6.0, ptr %i.br, align 4
  %i.bw = load i64, ptr %i.g, align 8, !noundef !21
  %i.bx = sub i64 %i.bw, %.sroa.0.0.i
  store i64 %i.bx, ptr %i.g, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 5520 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !noundef !21
  %i.ca = add i64 %i.bz, %.sroa.0.0.i             ; 2 uses
  store i64 %i.ca, ptr %i.by, align 8
  %i.cb = load i64, ptr %5, align 8, !range !52, !noundef !21
  %i.cc = trunc nuw i64 %i.cb to i1
  br i1 %i.cc, label %bb.u, label %bb.n

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ca, ptr %i.cd, align 8
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN6brotli3enc6writer64CompressorWriterCustomIo$LT$ErrType$C$W$C$BufferType$C$Alloc$GT$14flush_or_close17h8a3a9b66814490d8E"(ptr noalias noundef nonnull align 8 dereferenceable(5664) %0, i8 noundef range(i8 1, 3) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 4                ; 9 uses
  %i.d = alloca [984 x i8], align 8               ; 24 uses
  %i.e = alloca [984 x i8], align 8               ; 23 uses
  %i.f = alloca [984 x i8], align 8               ; 23 uses
  %i.g = alloca [152 x i8], align 8               ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [11272 x i8], align 4             ; 6 uses
  %i.k = alloca [280 x i8], align 2               ; 5 uses
  %i.l = alloca [140 x i8], align 1               ; 5 uses
  %i.m = alloca [1408 x i8], align 2              ; 5 uses
  %i.n = alloca [704 x i8], align 1               ; 5 uses
  %i.o = alloca [512 x i8], align 2               ; 5 uses
  %i.p = alloca [256 x i8], align 1               ; 5 uses
  %i.q = alloca [2192 x i8], align 8              ; 6 uses
  %i.r = alloca [2832 x i8], align 8              ; 6 uses
  %i.s = alloca [1040 x i8], align 8              ; 6 uses
  %i.t = alloca [152 x i8], align 8               ; 22 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [48 x i8], align 8                ; 7 uses
  %i.w = alloca [280 x i8], align 2               ; 5 uses
  %i.x = alloca [140 x i8], align 1               ; 5 uses
  %i.y = alloca [1408 x i8], align 2              ; 5 uses
  %i.z = alloca [704 x i8], align 1               ; 5 uses
  %i.aa = alloca [512 x i8], align 2              ; 5 uses
  %i.ab = alloca [256 x i8], align 1              ; 5 uses
  %i.ac = alloca [2192 x i8], align 8             ; 7 uses
  %i.ad = alloca [2832 x i8], align 8             ; 7 uses
  %i.ae = alloca [1040 x i8], align 8             ; 7 uses
  %i.af = alloca [512 x i8], align 2              ; 5 uses
  %i.ag = alloca [256 x i8], align 1              ; 5 uses
  %i.ah = alloca [1024 x i8], align 4             ; 5 uses
  %i.ai = alloca [152 x i8], align 8              ; 22 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %i.am = alloca [264 x i8], align 8              ; 43 uses
  %i.an = alloca [112 x i8], align 8              ; 10 uses
  %i.ao = alloca [8 x i8], align 8                ; 6 uses
  %i.ap = alloca [4 x i8], align 4                ; 5 uses
  %i.aq = alloca [8 x i8], align 8                ; 60 uses
  %i.ar = alloca [4 x i8], align 4                ; 7 uses
  %i.as = alloca [8 x i8], align 8                ; 7 uses
  %i.at = alloca [8 x i8], align 8                ; 6 uses
  %i.au = alloca [8 x i8], align 8                ; 7 uses
  %i.av = alloca [8 x i8], align 8                ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 5608 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 5580
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 5576 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 246 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 11 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 11 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 5528 ; 5 uses
  %i.bh = icmp eq i8 %1, 2
  %i.bi = icmp eq i8 %1, 1                        ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 5586 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 5590 ; 11 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 8 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 15 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 15 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 5584 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 5589 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 249
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 12 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 5588
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 5560 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 5591 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 5592 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 12 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 5568 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 5593
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 6 uses
  %.sroa.7.0..sroa_idx.i23.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %.sroa.732.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 80 ; 2 uses
  %.sroa.737.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 128 ; 2 uses
  %.sroa.4.0..sroa_idx.i24.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i25.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %.sroa.429.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 56 ; 2 uses
  %.sroa.530.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 2 uses
  %.sroa.631.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 72 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.am, i64 96 ; 2 uses
  %.sroa.434.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 104 ; 2 uses
  %.sroa.535.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 112 ; 2 uses
  %.sroa.636.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 120 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.am, i64 144 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.am, i64 152 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.am, i64 224
  %i.cy = getelementptr inbounds nuw i8, ptr %i.am, i64 160 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.am, i64 168 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.am, i64 232
  %i.db = getelementptr inbounds nuw i8, ptr %i.am, i64 176 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.am, i64 184 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.am, i64 240 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.am, i64 192 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.am, i64 200 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.am, i64 248
  %i.dh = getelementptr inbounds nuw i8, ptr %i.am, i64 208 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.am, i64 216 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.am, i64 256 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.dm = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %i.an, i64 97
  %i.dr = getelementptr inbounds nuw i8, ptr %i.an, i64 98
  %i.ds = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %.sroa.16.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %.sroa.4.0..sroa_idx.i30.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i31.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %.sroa.6.0..sroa_idx.i32.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %.sroa.7.0..sroa_idx.i33.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 6 uses
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 6 uses
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 6 uses
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 6 uses
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 3 uses
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.13.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 4 uses
  %.sroa.15.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.sroa.2015.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 960 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 968 ; 9 uses
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 976 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %.sroa.1629.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.sroa.417.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.518.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.619.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %.sroa.720.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 4 uses
  %.sroa.821.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 4 uses
  %.sroa.922.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 4 uses
  %.sroa.1023.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 4 uses
  %.sroa.1124.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.1225.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %.sroa.1326.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.1427.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %.sroa.1528.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.sroa.2034.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 960
  %.sroa.2135.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 968
  %.sroa.2236.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 976
  %i.du = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  %.sroa.1650.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %.sroa.438.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.539.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.640.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %.sroa.741.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  %.sroa.842.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 4 uses
  %.sroa.943.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 4 uses
  %.sroa.1044.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 4 uses
  %.sroa.1145.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.1246.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %.sroa.1347.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %.sroa.1448.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  %.sroa.1549.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.sroa.2055.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 960
  %.sroa.2156.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 968
  %.sroa.2257.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 976
  %i.dv = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 241 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.6.0..sroa_idx.i27.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.7.0..sroa_idx.i28.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.eg = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.eh = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %.sroa.56.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %.sroa.67.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %.sroa.78.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.ei = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %.sroa.411.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %.sroa.512.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %.sroa.613.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %.sroa.714.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.ej = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.ek = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.el = getelementptr inbounds nuw i8, ptr %i.s, i64 1032
  %i.em = getelementptr inbounds nuw i8, ptr %i.r, i64 2824
  %i.en = getelementptr inbounds nuw i8, ptr %i.q, i64 2184
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.612.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.es = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.et = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %.sroa.414.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %.sroa.515.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %.sroa.616.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %.sroa.717.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %.sroa.420.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  %.sroa.521.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 112
  %.sroa.622.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  %.sroa.723.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ai, i64 136
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ai, i64 144
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ae, i64 1024
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ae, i64 1032
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ad, i64 2816
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ad, i64 2824
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ac, i64 2176
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ac, i64 2184
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 4624
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 4752
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 5520
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 5008
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 5616 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 5624 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 5632 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i64 0, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i64 0, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %.val16 = load ptr, ptr %i.aw, align 8, !nonnull !21, !align !29, !noundef !21 ; 2 uses
  %.val17 = load i64, ptr %i.ax, align 8, !noundef !21 ; 3 uses
  store i64 %.val17, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store i64 0, ptr %i.as, align 8
end_hunk_2
begin_hunk_3_@"_ZN6brotli3enc6writer64CompressorWriterCustomIo$LT$ErrType$C$W$C$BufferType$C$Alloc$GT$14flush_or_close17h8a3a9b66814490d8E":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !11845
  %i.gp = trunc i64 %i.gm to i32                  ; 6 uses
  store i32 %i.gp, ptr %i.ar, align 4, !noalias !11845
  %i.gq = load i32, ptr %i.bl, align 4, !alias.scope !11846, !noalias !11847, !noundef !21 ; 5 uses
  call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h976450b2f254cc2bE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ay)
  %i.gr = load i8, ptr %i.bm, align 2, !range !38, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %bb.hp, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i
  br i1 %.sroa.03.0.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h976450b2f254cc2bE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ay)
  %i.gt = load i32, ptr %i.bf, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.gu = and i32 %i.gt, 63
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = shl nuw i64 1, %i.gv
  %i.gx = icmp ugt i64 %i.gm, %i.gw
  br i1 %i.gx, label %bb.hp, label %bb.q

bb.p:                                             ; preds = %bb.n
  store i8 1, ptr %i.bm, align 2, !alias.scope !11846, !noalias !11847
  br label %bb.o

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !11845
  %i.gy = load i8, ptr %i.bn, align 2, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.gz = zext i8 %i.gy to i64
  store i64 %i.gz, ptr %i.aq, align 8, !noalias !11845
  %i.ha = and i64 %i.gm, 4294967295               ; 3 uses
  %i.hb = load i64, ptr %i.bd, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.hc = load i64, ptr %i.bo, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.hd = sub i64 %i.hb, %i.hc
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.hd, i64 %i.ha)
  %i.he = shl i64 %.sroa.0.0.i.i.i, 1
  %i.hf = add i64 %i.he, 527                      ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11848)
  %i.hg = load i64, ptr %i.bp, align 8, !alias.scope !11849, !noalias !11847, !noundef !21
  %i.hh = icmp ult i64 %i.hg, %i.hf
  br i1 %i.hh, label %bb.r, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17hf3270e995969342aE.exit.i.i"

bb.r:                                             ; preds = %bb.q
  %i.hi = load ptr, ptr %i.bq, align 8, !alias.scope !11849, !noalias !11847, !nonnull !21, !align !29, !noundef !21
  %i.hj = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !11849, !noalias !11847, !noundef !21 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.bq, align 8, !alias.scope !11849, !noalias !11847
  store i64 0, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !11849, !noalias !11847
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.r
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.hi, i64 noundef %i.hj, i64 noundef 1) #45, !noalias !11850
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i.i.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %bb.r
  %i.hl = icmp slt i64 %i.hf, 0
  br i1 %i.hl, label %bb.s, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !11851
  %i.hm = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.hf, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !11851 ; 3 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %bb.s, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17hf3270e995969342aE.exit.thread.i.i"

bb.s:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i.i.i"
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i.i.i" ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.hf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46, !noalias !11852
  unreachable

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17hf3270e995969342aE.exit.thread.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  store ptr %i.hm, ptr %i.bq, align 8, !alias.scope !11849, !noalias !11847
  store i64 %i.hf, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !11849, !noalias !11847
  store i64 %i.hf, ptr %i.bp, align 8, !alias.scope !11849, !noalias !11847
  br label %bb.t

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17hf3270e995969342aE.exit.i.i": ; preds = %bb.q
  %.val149.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !11846, !noalias !11847
  %i.ho = icmp eq i64 %.val149.pre.i.i, 0
  br i1 %i.ho, label %bb.u, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17hf3270e995969342aE.exit.i._crit_edge.i"

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17hf3270e995969342aE.exit.i._crit_edge.i": ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17hf3270e995969342aE.exit.i.i"
  %.val148.i.pre.i = load ptr, ptr %i.bq, align 8, !alias.scope !11846, !noalias !11847
  br label %bb.t

bb.t:                                             ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17hf3270e995969342aE.exit.i._crit_edge.i", %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17hf3270e995969342aE.exit.thread.i.i"
  %.val148.i.i = phi ptr [ %.val148.i.pre.i, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17hf3270e995969342aE.exit.i._crit_edge.i" ], [ %i.hm, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17hf3270e995969342aE.exit.thread.i.i" ]
  %i.hp = load i16, ptr %i.br, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.hq = trunc i16 %i.hp to i8
  store i8 %i.hq, ptr %.val148.i.i, align 1, !noalias !11847
  %.val147.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 2 uses
  %i.hr = icmp ugt i64 %.val147.i.i, 1
  br i1 %i.hr, label %bb.v, label %bb.w

bb.u:                                             ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18get_brotli_storage17hf3270e995969342aE.exit.i.i"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1179) #46, !noalias !11847
  unreachable

bb.v:                                             ; preds = %bb.t
  %.val146.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !29, !noundef !21
  %i.hs = load i16, ptr %i.br, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.ht = lshr i16 %i.hs, 8
  %i.hu = getelementptr inbounds nuw i8, ptr %.val146.i.i, i64 1
  %i.hv = trunc nuw i16 %i.ht to i8
  store i8 %i.hv, ptr %i.hu, align 1, !noalias !11847
  %i.hw = load i8, ptr %i.bs, align 1, !range !41, !alias.scope !11846, !noalias !11847, !noundef !21 ; 2 uses
  %i.hx = icmp eq i8 %i.hw, 0
  br i1 %i.hx, label %bb.x, label %thread-pre-split.i.i

bb.w:                                             ; preds = %bb.t
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 1, i64 noundef %.val147.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1180) #46, !noalias !11847
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.hy = load i8, ptr %i.bt, align 1, !range !38, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.hz = trunc nuw i8 %i.hy to i1
  br i1 %i.hz, label %bb.z, label %bb.y

thread-pre-split.i.i:                             ; preds = %bb.ah, %bb.v
  %i.ia = phi i8 [ %i.hw, %bb.v ], [ %.pr.pre.i.i, %bb.ah ]
  %.sroa.011.0.i.i = phi i64 [ 0, %bb.v ], [ %.sroa.011.1.i.i, %bb.ah ] ; 2 uses
  %i.ib = icmp eq i8 %i.ia, 3
  br i1 %i.ib, label %bb.ai, label %thread-pre-split.thread.i.i

bb.y:                                             ; preds = %bb.ac, %bb.x
  %.sroa.011.1.i.i = phi i64 [ %i.ie, %bb.ac ], [ 0, %bb.x ] ; 5 uses
  %i.ic = icmp eq i32 %i.gp, 0
  br i1 %i.ic, label %bb.ae, label %thread-pre-split.thread.i.i

bb.z:                                             ; preds = %bb.x
  %.val144.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !29, !noundef !21
  %.val145.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  call void @_ZN6brotli3enc17brotli_bit_stream28BrotliWriteMetadataMetaBlock17h419927a0fd1f2ae4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val144.i.i, i64 noundef %.val145.i.i), !noalias !11847
  %.val174.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !29, !noundef !21 ; 2 uses
  %.val175.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 4 uses
  %i.id = load i64, ptr %i.aq, align 8, !noalias !11845, !noundef !21 ; 2 uses
  %i.ie = lshr i64 %i.id, 3                       ; 5 uses
  %i.if = icmp ult i64 %i.ie, %.val175.i.i
  br i1 %i.if, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ig = add nuw nsw i64 %i.ie, 1                ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %.val175.i.i
  br i1 %i.ih, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.z
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ie, i64 noundef %.val175.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1181) #46, !noalias !11847
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ii = getelementptr inbounds nuw i8, ptr %.val174.i.i, i64 %i.ie
  %i.ij = load i8, ptr %i.ii, align 1, !noalias !11847, !noundef !21
  %i.ik = zext i8 %i.ij to i16
  %i.il = getelementptr inbounds nuw i8, ptr %.val174.i.i, i64 %i.ig
  %i.im = load i8, ptr %i.il, align 1, !noalias !11847, !noundef !21
  %i.in = zext i8 %i.im to i16
  %i.io = shl nuw i16 %i.in, 8
  %i.ip = or disjoint i16 %i.io, %i.ik
  store i16 %i.ip, ptr %i.br, align 8, !alias.scope !11846, !noalias !11847
  %i.iq = trunc i64 %i.id to i8
  %i.ir = and i8 %i.iq, 7
  store i8 %i.ir, ptr %i.bn, align 2, !alias.scope !11846, !noalias !11847
  store i32 0, ptr %i.bv, align 8, !alias.scope !11846, !noalias !11847
  store i32 0, ptr %i.bw, align 4, !alias.scope !11846, !noalias !11847
  store i8 1, ptr %i.bs, align 1, !alias.scope !11846, !noalias !11847
  br label %bb.y

bb.ad:                                            ; preds = %bb.aa
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ig, i64 noundef %.val175.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1182) #46, !noalias !11847
  unreachable

bb.ae:                                            ; preds = %bb.y
  %i.is = load i8, ptr %i.bx, align 4, !range !38, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %bb.af, label %thread-pre-split.thread.i.i

bb.af:                                            ; preds = %bb.ae
  %i.iu = load i8, ptr %i.by, align 8, !range !38, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %bb.ag, label %thread-pre-split.thread.i.i

bb.ag:                                            ; preds = %bb.af
  %i.iw = load i8, ptr %i.bc, align 2, !range !38, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.ix = trunc nuw i8 %i.iw to i1
  br i1 %i.ix, label %thread-pre-split.thread.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val142.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !29, !noundef !21
  %.val143.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  call void @_ZN6brotli3enc17brotli_bit_stream27BrotliWritePaddingMetaBlock17hdb52f5102f689cf3E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val142.i.i, i64 noundef %.val143.i.i), !noalias !11847
  %.pr.pre.i.i = load i8, ptr %i.bs, align 1, !alias.scope !11846, !noalias !11847
  br label %thread-pre-split.i.i

bb.ai:                                            ; preds = %bb.bc, %bb.ak, %bb.aj, %thread-pre-split.i.i
  %i.iy = phi i32 [ %i.gp, %thread-pre-split.i.i ], [ 0, %bb.ak ], [ %i.kq, %bb.bc ], [ %i.gp, %bb.aj ] ; 4 uses
  %.sroa.011.2.i.i = phi i64 [ %.sroa.011.0.i.i, %thread-pre-split.i.i ], [ %.sroa.011.0194.i.i, %bb.ak ], [ %i.jq, %bb.bc ], [ %.sroa.011.0194.i.i, %bb.aj ] ; 5 uses
  %.sroa.07.0.i.i = phi i64 [ %i.gm, %thread-pre-split.i.i ], [ %i.gm, %bb.ak ], [ %i.ky, %bb.bc ], [ %i.gm, %bb.aj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !11845
  %i.iz = load i64, ptr %i.be, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 2 uses
  %i.ja = trunc i64 %i.iz to i32                  ; 3 uses
  %i.jb = icmp ugt i64 %i.iz, 3221225471
  %2 = and i32 %i.ja, 1073741823
  %3 = and i32 %i.ja, 1073741824
  %reass.sub.i.i = sub nsw i32 %2, %3
  %4 = xor i32 %reass.sub.i.i, -2147483648
  %.sroa.023.0.i.i = select i1 %i.jb, i32 %4, i32 %i.ja ; 3 uses
  store i32 %.sroa.023.0.i.i, ptr %i.ap, align 4, !noalias !11845
  %5 = load i32, ptr %i.bb, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 2 uses
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %bb.bd, label %thread-pre-split4.i.i

thread-pre-split.thread.i.i:                      ; preds = %bb.ag, %bb.af, %bb.ae, %bb.y, %thread-pre-split.i.i
  %.sroa.011.0194.i.i = phi i64 [ %.sroa.011.0.i.i, %thread-pre-split.i.i ], [ %.sroa.011.1.i.i, %bb.y ], [ %.sroa.011.1.i.i, %bb.ag ], [ %.sroa.011.1.i.i, %bb.af ], [ %.sroa.011.1.i.i, %bb.ae ] ; 2 uses
  %i.jc = load i8, ptr %i.bc, align 2, !range !38, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.jd = trunc nuw i8 %i.jc to i1
  br i1 %i.jd, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %thread-pre-split.thread.i.i
  store i8 3, ptr %i.bs, align 1, !alias.scope !11846, !noalias !11847
  br label %bb.ai

bb.ak:                                            ; preds = %thread-pre-split.thread.i.i
  %i.je = icmp eq i32 %i.gp, 0
  br i1 %i.je, label %bb.ai, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jf = load i64, ptr %i.be, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.jg = icmp ult i64 %i.jf, 2
  br i1 %i.jg, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jh = load i8, ptr %i.bz, align 4, !range !38, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.ji = trunc nuw i8 %i.jh to i1
  br i1 %i.ji, label %bb.ao, label %bb.an, !prof !31

bb.an:                                            ; preds = %bb.am
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1183, i64 noundef 72, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1184) #46, !noalias !11847
  unreachable

bb.ao:                                            ; preds = %bb.am, %bb.al
  %.sroa.0.0.i194.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ha, i64 2) ; 4 uses
  %.val141.i.i = load i64, ptr %i.ca, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 4 uses
  %i.jj = load i64, ptr %i.cb, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 4 uses
  %i.jk = icmp ugt i64 %i.jj, %.val141.i.i
  br i1 %i.jk, label %bb.aq, label %bb.ap, !prof !30

bb.ap:                                            ; preds = %bb.ao
  %.val140.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !29, !noundef !21
  %i.jl = sub nuw i64 %.val141.i.i, %i.jj         ; 5 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.val140.i.i, i64 %i.jj ; 3 uses
  %i.jn = load i64, ptr %i.bo, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.jo = zext i32 %i.gq to i64                   ; 3 uses
  %.val138.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !29, !noundef !21
  %.val139.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream29store_uncompressed_meta_block17h8d70584a2b236bb4E(ptr noalias noundef nonnull align 1 %i.bn, i1 noundef zeroext false, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.jm, i64 noundef %i.jl, i64 noundef %i.jn, i64 noundef %i.jo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, i64 noundef %.sroa.0.0.i194.i.i, ptr noalias noundef align 8 dereferenceable(8) %i.cc, ptr noalias noundef align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val138.i.i, i64 noundef %.val139.i.i, i1 noundef zeroext false), !noalias !11847
  %.val170.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !29, !noundef !21 ; 2 uses
  %.val171.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 4 uses
  %i.jp = load i64, ptr %i.aq, align 8, !noalias !11845, !noundef !21 ; 2 uses
  %i.jq = lshr i64 %i.jp, 3                       ; 5 uses
  %i.jr = icmp ult i64 %i.jq, %.val171.i.i
  br i1 %i.jr, label %bb.ar, label %bb.as

bb.aq:                                            ; preds = %bb.ao
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.jj, i64 noundef %.val141.i.i, i64 noundef %.val141.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1206) #46, !noalias !11847
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.js = add nuw nsw i64 %i.jq, 1                ; 3 uses
  %i.jt = icmp ult i64 %i.js, %.val171.i.i
  br i1 %i.jt, label %bb.at, label %bb.au

bb.as:                                            ; preds = %bb.ap
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.jq, i64 noundef %.val171.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1185) #46, !noalias !11847
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.ju = getelementptr inbounds nuw i8, ptr %.val170.i.i, i64 %i.jq
  %i.jv = load i8, ptr %i.ju, align 1, !noalias !11847, !noundef !21
  %i.jw = zext i8 %i.jv to i16
  %i.jx = getelementptr inbounds nuw i8, ptr %.val170.i.i, i64 %i.js
  %i.jy = load i8, ptr %i.jx, align 1, !noalias !11847, !noundef !21
  %i.jz = zext i8 %i.jy to i16
  %i.ka = shl nuw i16 %i.jz, 8
  %i.kb = or disjoint i16 %i.ka, %i.jw
  store i16 %i.kb, ptr %i.br, align 8, !alias.scope !11846, !noalias !11847
  %i.kc = trunc i64 %i.jp to i8
  %i.kd = and i8 %i.kc, 7
  store i8 %i.kd, ptr %i.bn, align 2, !alias.scope !11846, !noalias !11847
  %i.ke = load i8, ptr %i.cd, align 1, !alias.scope !11846, !noalias !11847, !noundef !21
  store i8 %i.ke, ptr %i.ce, align 8, !alias.scope !11846, !noalias !11847
  %i.kf = load i64, ptr %i.bo, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 3 uses
  %i.kg = and i64 %i.kf, %i.jo                    ; 3 uses
  %i.kh = icmp ult i64 %i.kg, %i.jl
  br i1 %i.kh, label %bb.av, label %bb.aw

bb.au:                                            ; preds = %bb.ar
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.js, i64 noundef %.val171.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1186) #46, !noalias !11847
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.kg
  %i.kj = load i8, ptr %i.ki, align 1, !noalias !11847, !noundef !21 ; 2 uses
  store i8 %i.kj, ptr %i.cd, align 1, !alias.scope !11846, !noalias !11847
  %i.kk = icmp samesign ugt i64 %i.ha, 1          ; 2 uses
  br i1 %i.kk, label %bb.ax, label %bb.ay

bb.aw:                                            ; preds = %bb.at
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.kg, i64 noundef %i.jl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1187) #46, !noalias !11847
  unreachable

bb.ax:                                            ; preds = %bb.av
  store i8 %i.kj, ptr %i.ce, align 8, !alias.scope !11846, !noalias !11847
  %i.kl = add i64 %i.kf, 1
  %i.km = and i64 %i.kl, %i.jo                    ; 3 uses
  %i.kn = icmp ult i64 %i.km, %i.jl
  br i1 %i.kn, label %bb.az, label %bb.ba

bb.ay:                                            ; preds = %bb.az, %bb.av
  %i.ko = add i64 %i.kf, %.sroa.0.0.i194.i.i
  store i64 %i.ko, ptr %i.bo, align 8, !alias.scope !11846, !noalias !11847
  %i.kp = trunc nuw nsw i64 %.sroa.0.0.i194.i.i to i32
  %i.kq = sub i32 %i.gp, %i.kp                    ; 2 uses
  store i32 %i.kq, ptr %i.ar, align 4, !noalias !11845
  %i.kr = load i64, ptr %i.be, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.ks = add i64 %i.kr, %.sroa.0.0.i194.i.i      ; 2 uses
  store i64 %i.ks, ptr %i.be, align 8, !alias.scope !11846, !noalias !11847
  br i1 %i.kk, label %bb.bc, label %bb.bb

bb.az:                                            ; preds = %bb.ax
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.km
  %i.ku = load i8, ptr %i.kt, align 1, !noalias !11847, !noundef !21
  store i8 %i.ku, ptr %i.cd, align 1, !alias.scope !11846, !noalias !11847
  br label %bb.ay

bb.ba:                                            ; preds = %bb.ax
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.km, i64 noundef %i.jl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1188) #46, !noalias !11847
  unreachable

bb.bb:                                            ; preds = %bb.ay
  %i.kv = load i8, ptr %i.bs, align 1, !range !41, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.kw = icmp eq i8 %i.kv, 2
  %..i.i = select i1 %i.kw, i8 3, i8 2
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ay
  %.sink.i.i = phi i8 [ %..i.i, %bb.bb ], [ 3, %bb.ay ]
  store i8 %.sink.i.i, ptr %i.bs, align 1, !alias.scope !11846, !noalias !11847
  store i32 0, ptr %i.bv, align 8, !alias.scope !11846, !noalias !11847
  store i32 0, ptr %i.bw, align 4, !alias.scope !11846, !noalias !11847
  %i.kx = load i64, ptr %i.bd, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.ky = sub i64 %i.kx, %i.ks
  br label %bb.ai

bb.bd:                                            ; preds = %bb.ai
  %.val155.i.i = load i64, ptr %i.cg, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.kz = icmp eq i64 %.val155.i.i, 0
  br i1 %i.kz, label %bb.be, label %thread-pre-split4.thread.i.i

bb.be:                                            ; preds = %bb.bd
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !11853
  %i.la = call noundef align 4 dereferenceable_or_null(524288) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) 524288, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !11853 ; 2 uses
  %i.lb = icmp eq ptr %i.la, null
  br i1 %i.lb, label %bb.bf, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit.i.i"

bb.bf:                                            ; preds = %bb.be
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 524288, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46, !noalias !11854
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit.i.i": ; preds = %bb.be
  %.val153.i.i = load i64, ptr %i.cg, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 2 uses
  %i.lc = icmp eq i64 %.val153.i.i, 0
  br i1 %i.lc, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit.i.i"
  %.val152.i.i = load ptr, ptr %i.cf, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !noundef !21
  %i.ld = shl nuw nsw i64 %.val153.i.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val152.i.i, i64 noundef %i.ld, i64 noundef 4) #45, !noalias !11847
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i.i"

thread-pre-split4.i.i:                            ; preds = %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i.i", %bb.ai
  %i.le = phi i32 [ %5, %bb.ai ], [ %.pr5.pre.i.i, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i.i" ] ; 2 uses
  %switch.i.i = icmp ult i32 %i.le, 2
  br i1 %switch.i.i, label %thread-pre-split4.thread.i.i, label %bb.bh

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit.i.i"
  store ptr %i.la, ptr %i.cf, align 8, !alias.scope !11846, !noalias !11847
  store i64 131072, ptr %i.cg, align 8, !alias.scope !11846, !noalias !11847
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !11855
  %i.lf = call noundef dereferenceable_or_null(131072) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) 131072, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !11855 ; 2 uses
  %i.lg = icmp eq ptr %i.lf, null
  br i1 %i.lg, label %bb.bg, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h2ace46120d02d522E.exit.i.i"

bb.bg:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i.i"
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 131072, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46, !noalias !11856
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h2ace46120d02d522E.exit.i.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i.i"
  %.val151.i.i = load i64, ptr %i.ci, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 2 uses
  %i.lh = icmp eq i64 %.val151.i.i, 0
  br i1 %i.lh, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i195.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i195.i.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h2ace46120d02d522E.exit.i.i"
  %.val150.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val150.i.i, i64 noundef %.val151.i.i, i64 noundef 1) #45, !noalias !11847
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i195.i.i", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h2ace46120d02d522E.exit.i.i"
  store ptr %i.lf, ptr %i.ch, align 8, !alias.scope !11846, !noalias !11847
  store i64 131072, ptr %i.ci, align 8, !alias.scope !11846, !noalias !11847
  %.pr5.pre.i.i = load i32, ptr %i.bb, align 8, !alias.scope !11846, !noalias !11847
  br label %thread-pre-split4.i.i

common.resume.i.i:                                ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i205.i.i", %bb.ho, %.body.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.aeo, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i205.i.i" ], [ %i.aeo, %bb.ho ]
  resume { ptr, i32 } %common.resume.op.i.i

thread-pre-split4.thread.i.i:                     ; preds = %thread-pre-split4.i.i, %bb.bd
  %i.li = phi i32 [ %i.le, %thread-pre-split4.i.i ], [ 1, %bb.bd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !11845
  store i64 0, ptr %i.ao, align 8, !noalias !11845
  %i.lj = icmp ne i64 %.sroa.07.0.i.i, 0
  %brmerge4.i.i = or i1 %.sroa.03.0.i, %i.lj
  br i1 %brmerge4.i.i, label %bb.bi, label %bb.bj

bb.bh:                                            ; preds = %thread-pre-split4.i.i
  %i.lk = load i64, ptr %i.cj, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 2 uses
  %i.ll = lshr i32 %i.iy, 1                       ; 2 uses
  %narrow = add nuw i32 %i.ll, 1
  %i.lm = zext i32 %narrow to i64
  %i.ln = add i64 %i.lk, %i.lm                    ; 2 uses
  %i.lo = load i64, ptr %i.ck, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.lp = icmp ugt i64 %i.ln, %i.lo
  br i1 %i.lp, label %bb.bw, label %bb.bz

bb.bi:                                            ; preds = %thread-pre-split4.thread.i.i
  %.val137.i.i = load i64, ptr %i.ca, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 4 uses
  %i.lq = load i64, ptr %i.cb, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 4 uses
  %i.lr = icmp ugt i64 %i.lq, %.val137.i.i
  br i1 %i.lr, label %bb.bl, label %bb.bk, !prof !30

bb.bj:                                            ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hca27017a30a3e9c5E.exit.i.i", %thread-pre-split4.thread.i.i
  %storemerge.i.i = phi i64 [ %i.mh, %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hca27017a30a3e9c5E.exit.i.i" ], [ %.sroa.011.2.i.i, %thread-pre-split4.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !11845
  br label %bb.hq

bb.bk:                                            ; preds = %bb.bi
  %.val136.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !29, !noundef !21
  %i.ls = sub nuw i64 %.val137.i.i, %i.lq         ; 7 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.val136.i.i, i64 %i.lq ; 2 uses
  %i.lu = zext i32 %i.iy to i64                   ; 3 uses
  %i.lv = call fastcc { ptr, i64 } @_ZN6brotli3enc6encode20GetHashTableInternal17hba825535b521f96bE(ptr noalias noundef align 4 dereferenceable(4096) %i.fe, ptr noalias noundef align 8 dereferenceable(16) %i.ff, i32 noundef %i.li, i64 noundef %i.lu, ptr noalias noundef align 8 dereferenceable(8) %i.ao), !noalias !11847 ; 2 uses
  %i.lw = extractvalue { ptr, i64 } %i.lv, 0      ; 2 uses
  %i.lx = extractvalue { ptr, i64 } %i.lv, 1      ; 2 uses
  %i.ly = load i32, ptr %i.bb, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.lz = icmp eq i32 %i.ly, 0
  %i.ma = and i32 %.sroa.023.0.i.i, %i.gq
  %i.mb = zext i32 %i.ma to i64                   ; 7 uses
  %i.mc = icmp ult i64 %i.ls, %i.mb               ; 2 uses
  br i1 %i.lz, label %bb.bm, label %bb.bn

bb.bl:                                            ; preds = %bb.bi
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.lq, i64 noundef %.val137.i.i, i64 noundef %.val137.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1193) #46, !noalias !11847
  unreachable

bb.bm:                                            ; preds = %bb.bk
  br i1 %i.mc, label %bb.bp, label %bb.bo, !prof !30

bb.bn:                                            ; preds = %bb.bk
  br i1 %i.mc, label %bb.bs, label %bb.br, !prof !30

bb.bo:                                            ; preds = %bb.bm
  %i.md = sub nuw i64 %i.ls, %i.mb
  %i.me = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.mb
  %i.mf = load i64, ptr %i.ao, align 8, !noalias !11845, !noundef !21
  %.val134.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !29, !noundef !21
  %.val135.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  call fastcc void @_ZN6brotli3enc17compress_fragment22compress_fragment_fast17haf5d90f6c7bad72eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.me, i64 noundef %i.md, i64 noundef %i.lu, i1 noundef zeroext %.sroa.03.0.i, ptr noalias noundef nonnull align 4 %i.lw, i64 noundef %i.lx, i64 noundef %i.mf, ptr noalias noundef nonnull align 1 %i.fg, ptr noalias noundef nonnull align 2 %i.fh, ptr noalias noundef align 8 dereferenceable(8) %i.fi, ptr noalias noundef nonnull align 1 %i.fj, ptr noalias noundef align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val134.i.i, i64 noundef %.val135.i.i)
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bm
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.mb, i64 noundef %i.ls, i64 noundef %i.ls, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1189) #46, !noalias !11847
  unreachable

bb.bq:                                            ; preds = %bb.br, %bb.bo
  %.val166.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !29, !noundef !21 ; 2 uses
  %.val167.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 4 uses
  %i.mg = load i64, ptr %i.aq, align 8, !noalias !11845, !noundef !21 ; 2 uses
  %i.mh = lshr i64 %i.mg, 3                       ; 5 uses
  %i.mi = icmp ult i64 %i.mh, %.val167.i.i
  br i1 %i.mi, label %bb.bt, label %bb.bu

bb.br:                                            ; preds = %bb.bn
  %i.mj = sub nuw i64 %i.ls, %i.mb
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.mb
  %.val176.i.i = load ptr, ptr %i.cf, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !28, !noundef !21
  %.val177.i.i = load i64, ptr %i.cg, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %.val132.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !29, !noundef !21
  %.val133.i.i = load i64, ptr %i.ci, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.ml = load i64, ptr %i.ao, align 8, !noalias !11845, !noundef !21
  %.val130.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !29, !noundef !21
  %.val131.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  call fastcc void @_ZN6brotli3enc26compress_fragment_two_pass26compress_fragment_two_pass17h8b6af29289feb42eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.mk, i64 noundef %i.mj, i64 noundef %i.lu, i1 noundef zeroext %.sroa.03.0.i, ptr noalias noundef nonnull align 4 %.val176.i.i, i64 noundef %.val177.i.i, ptr noalias noundef nonnull align 1 %.val132.i.i, i64 noundef %.val133.i.i, ptr noalias noundef nonnull align 4 %i.lw, i64 noundef %i.lx, i64 noundef %i.ml, ptr noalias noundef align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val130.i.i, i64 noundef %.val131.i.i), !noalias !11847
  br label %bb.bq

bb.bs:                                            ; preds = %bb.bn
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.mb, i64 noundef %i.ls, i64 noundef %i.ls, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1192) #46, !noalias !11847
  unreachable

bb.bt:                                            ; preds = %bb.bq
  %i.mm = add nuw nsw i64 %i.mh, 1                ; 3 uses
  %i.mn = icmp ult i64 %i.mm, %.val167.i.i
  br i1 %i.mn, label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hca27017a30a3e9c5E.exit.i.i", label %bb.bv

bb.bu:                                            ; preds = %bb.bq
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.mh, i64 noundef %.val167.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1190) #46, !noalias !11847
  unreachable

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25update_last_processed_pos17hca27017a30a3e9c5E.exit.i.i": ; preds = %bb.bt
  %i.mo = getelementptr inbounds nuw i8, ptr %.val166.i.i, i64 %i.mh
  %i.mp = load i8, ptr %i.mo, align 1, !noalias !11847, !noundef !21
  %i.mq = zext i8 %i.mp to i16
  %i.mr = getelementptr inbounds nuw i8, ptr %.val166.i.i, i64 %i.mm
  %i.ms = load i8, ptr %i.mr, align 1, !noalias !11847, !noundef !21
  %i.mt = zext i8 %i.ms to i16
  %i.mu = shl nuw i16 %i.mt, 8
  %i.mv = or disjoint i16 %i.mu, %i.mq
  store i16 %i.mv, ptr %i.br, align 8, !alias.scope !11846, !noalias !11847
  %i.mw = trunc i64 %i.mg to i8
  %i.mx = and i8 %i.mw, 7
  store i8 %i.mx, ptr %i.bn, align 2, !alias.scope !11846, !noalias !11847
  %i.my = load i64, ptr %i.bd, align 8, !alias.scope !11857, !noalias !11847, !noundef !21
  store i64 %i.my, ptr %i.be, align 8, !alias.scope !11857, !noalias !11847
  store i32 0, ptr %i.bv, align 8, !alias.scope !11846, !noalias !11847
  store i32 0, ptr %i.bw, align 4, !alias.scope !11846, !noalias !11847
  br label %bb.bj

bb.bv:                                            ; preds = %bb.bt
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.mm, i64 noundef %.val167.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1191) #46, !noalias !11847
  unreachable

bb.bw:                                            ; preds = %bb.bh
  %i.mz = lshr i32 %i.iy, 2                       ; 2 uses
  %i.na = add nuw nsw i32 %i.mz, 16
  %i.nb = zext nneg i32 %i.na to i64
  %i.nc = add i64 %i.ln, %i.nb                    ; 12 uses
  store i64 %i.nc, ptr %i.ck, align 8, !alias.scope !11846, !noalias !11847
  %i.nd = shl i64 %i.nc, 4                        ; 5 uses
  %i.ne = icmp ugt i64 %i.nc, 1152921504606846975
  %i.nf = icmp ugt i64 %i.nd, 9223372036854775804
  %or.cond.i.i.i.i.i.i.i = or i1 %i.ne, %i.nf
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.by, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i197.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i197.i.i: ; preds = %bb.bw
  %i.ng = icmp eq i64 %i.nd, 0
  br i1 %i.ng, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h19f489a4f32ce774E.exit.i.i.i.i.i", label %bb.bx

bb.bx:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i197.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !11858
  %i.nh = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.nd, i64 noundef range(i64 1, 9) 4) #45, !noalias !11858 ; 2 uses
  %i.ni = icmp eq ptr %i.nh, null
  br i1 %i.ni, label %bb.by, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h19f489a4f32ce774E.exit.i.i.i.i.i"

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.sroa.4.0.ph.i.i.i198.i.i = phi i64 [ 4, %bb.bx ], [ 0, %bb.bw ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i198.i.i, i64 %i.nd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46, !noalias !11859
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h19f489a4f32ce774E.exit.i.i.i.i.i": ; preds = %bb.bx, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i197.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i197.i.i ], [ %i.nh, %bb.bx ] ; 6 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i197.i.i ], [ %i.nc, %bb.bx ]
  %i.nj = icmp samesign ule i64 %i.nc, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.nj)
  %i.nk = icmp samesign ugt i64 %i.nc, 1
  br i1 %i.nk, label %.lr.ph.i.i.i.preheader.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h19f489a4f32ce774E.exit.i.i.i.i.i"
  %narrow.i = add nuw i32 %i.mz, %i.ll
  %i.nl = zext i32 %narrow.i to i64
  %i.nm = add i64 %i.lk, %i.nl
  %i.nn = shl i64 %i.nm, 4                        ; 2 uses
  %i.no = add i64 %i.nn, 256
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.sroa.10.0.i.i.i.i.i, i8 0, i64 %i.no, i1 false), !noalias !11847
  %i.np = getelementptr i8, ptr %.sroa.10.0.i.i.i.i.i, i64 %i.nn
  %scevgep.i.i = getelementptr i8, ptr %i.np, i64 256
  br label %._crit_edge.thread.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h19f489a4f32ce774E.exit.i.i.i.i.i"
  %.not.i.i.i.i.i = icmp eq i64 %i.nc, 0
  br i1 %.not.i.i.i.i.i, label %bb.ca, label %._crit_edge.thread.i.i.i.i.i

._crit_edge.thread.i.i.i.i.i:                     ; preds = %._crit_edge.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.i
  %.sroa.0.0.lcssa15.i.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %scevgep.i.i, %.lr.ph.i.i.i.preheader.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.0.lcssa15.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !11847
  br label %bb.ca

bb.bz:                                            ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..command..Command$GT$$GT$17ha45ee5d37901ae7cE.exit.i.i", %bb.bh
  %.val129.i.i = load i64, ptr %i.ca, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 4 uses
  %i.nq = load i64, ptr %i.cb, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 4 uses
  %i.nr = icmp ugt i64 %i.nq, %.val129.i.i
  br i1 %i.nr, label %bb.cg, label %bb.cf, !prof !30

bb.ca:                                            ; preds = %._crit_edge.thread.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.ns = icmp samesign ult i64 %i.nc, 576460752303423488
  call void @llvm.assume(i1 %i.ns)
  %.val180.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !28, !noundef !21
  %.val181.i.i = load i64, ptr %i.cm, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 3 uses
  %i.nt = icmp eq i64 %.val181.i.i, 0
  br i1 %i.nt, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..command..Command$GT$$GT$17ha45ee5d37901ae7cE.exit.i.i", label %bb.cc

bb.cb:                                            ; preds = %bb.ce
  %i.nu = shl nuw nsw i64 %i.oc, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.ob, i64 noundef %i.nu, i64 noundef 4) #45, !noalias !11847
  %.val185.pr.pre.i.i = load i64, ptr %i.cm, align 8, !alias.scope !11846, !noalias !11847 ; 2 uses
  %i.nv = icmp eq i64 %.val185.pr.pre.i.i, 0
  br i1 %i.nv, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..command..Command$GT$$GT$17ha45ee5d37901ae7cE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i199.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i199.i.i": ; preds = %bb.cb
  %.val184.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !noundef !21
  %i.nw = shl nuw nsw i64 %.val185.pr.pre.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val184.i.i, i64 noundef %i.nw, i64 noundef 4) #45, !noalias !11847
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..command..Command$GT$$GT$17ha45ee5d37901ae7cE.exit.i.i"

bb.cc:                                            ; preds = %bb.ca
  %i.nx = load i64, ptr %i.cj, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 4 uses
  %.not117.i.i = icmp ugt i64 %i.nx, %i.nc
  br i1 %.not117.i.i, label %.invoke.i.i, label %bb.cd, !prof !64

bb.cd:                                            ; preds = %bb.cc
  %.not118.i.i = icmp ugt i64 %i.nx, %.val181.i.i
  br i1 %.not118.i.i, label %.invoke.i.i, label %bb.ce, !prof !64

.invoke.i.i:                                      ; preds = %bb.cd, %bb.cc
  %i.ny = phi i64 [ %i.nc, %bb.cc ], [ %.val181.i.i, %bb.cd ]
  %i.nz = phi ptr [ @1205, %bb.cc ], [ @1204, %bb.cd ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.nx, i64 noundef %i.ny, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nz) #46
          to label %.cont.i.i unwind label %bb.ho, !noalias !11847

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ce:                                            ; preds = %bb.cd
  %i.oa = shl nuw nsw i64 %i.nx, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 4 %.val180.i.i, i64 %i.oa, i1 false), !alias.scope !11860, !noalias !11847
  %i.ob = load ptr, ptr %i.cl, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !28, !noundef !21
  %i.oc = load i64, ptr %i.cm, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.cl, align 8, !alias.scope !11846, !noalias !11847
  store i64 0, ptr %i.cm, align 8, !alias.scope !11846, !noalias !11847
  %i.od = icmp eq i64 %i.oc, 0
  br i1 %i.od, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..command..Command$GT$$GT$17ha45ee5d37901ae7cE.exit.i.i", label %bb.cb

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..command..Command$GT$$GT$17ha45ee5d37901ae7cE.exit.i.i": ; preds = %bb.ce, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i199.i.i", %bb.cb, %bb.ca
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %i.cl, align 8, !alias.scope !11846, !noalias !11847
  store i64 %i.nc, ptr %i.cm, align 8, !alias.scope !11846, !noalias !11847
  br label %bb.bz

bb.cf:                                            ; preds = %bb.bz
  %.val128.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !29, !noundef !21
  %i.oe = sub nuw i64 %.val129.i.i, %i.nq         ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.val128.i.i, i64 %i.nq ; 2 uses
  %i.og = zext i32 %i.gq to i64                   ; 22 uses
  %i.oh = load i64, ptr %i.cn, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.oi = zext i32 %.sroa.023.0.i.i to i64        ; 4 uses
  %i.oj = zext i32 %i.iy to i64                   ; 4 uses
  call fastcc void @_ZN6brotli3enc6encode12hasher_setup17h216158525b9a03eeE(ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ay, ptr noalias noundef align 8 dereferenceable(112) %i.bu, i64 noundef %i.oh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.of, i64 noundef %i.oe, i64 noundef %i.oi, i64 noundef %i.oj, i1 noundef zeroext %.sroa.03.0.i), !noalias !11847
  call fastcc void @"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$21StitchToPreviousBlock17hb314d7bb5ae5d43cE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ay, i64 noundef %i.oj, i64 noundef %i.oi, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.of, i64 noundef %i.oe, i64 noundef %i.og), !noalias !11847
  %.val162.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !29, !noundef !21
  %.val163.i.i = load i64, ptr %i.ca, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.ok = load i64, ptr %i.bo, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 5 uses
  %7 = icmp ugt i64 %i.ok, 3221225471
  %8 = and i64 %i.ok, 1073741823
  %9 = and i64 %i.ok, 1073741824
  %reass.sub = sub nsw i64 %8, %9
  %10 = add nsw i64 %reass.sub, 2147483648
  %.sroa.025.0.i.i = select i1 %7, i64 %10, i64 %i.ok
  %11 = load i64, ptr %i.bd, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %12 = sub i64 %11, %i.ok
  %13 = call noundef i8 @_ZN6brotli3enc6encode17ChooseContextMode17h6a63f239b9ccfc8aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val162.i.i, i64 noundef %.val163.i.i, i64 noundef %.sroa.025.0.i.i, i64 noundef %i.og, i64 noundef %12), !noalias !11847 ; 5 uses
  %14 = load i64, ptr %i.cj, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %bb.ci, label %bb.ch

bb.cg:                                            ; preds = %bb.bz
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.nq, i64 noundef %.val129.i.i, i64 noundef %.val129.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1203) #46, !noalias !11847
  unreachable

bb.ch:                                            ; preds = %bb.cf
  %i.ol = load i64, ptr %i.co, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.om = icmp eq i64 %i.ol, 0
  br i1 %i.om, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.cj, %bb.ch, %bb.cf
  %.pre-phi68.i.i = phi i64 [ %i.oi, %bb.ch ], [ %i.oi, %bb.cf ], [ %.pre67.i.i, %bb.cj ]
  %.pre-phi.i.i = phi i64 [ %i.oj, %bb.ch ], [ %i.oj, %bb.cf ], [ %.pre66.i.i, %bb.cj ]
  %.val126.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !29, !noundef !21
  %.val127.i.i = load i64, ptr %i.ca, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 4 uses
  %i.on = load i64, ptr %i.cb, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 4 uses
  %i.oo = icmp ugt i64 %i.on, %.val127.i.i
  br i1 %i.oo, label %bb.cl, label %bb.ck, !prof !30

bb.cj:                                            ; preds = %bb.ch
  call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$19extend_last_command17h3499bb64ed6cc43fE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ay, ptr noalias noundef align 4 dereferenceable(4) %i.ar, ptr noalias noundef align 4 dereferenceable(4) %i.ap), !noalias !11847
  %.pre.i.i = load i32, ptr %i.ar, align 4, !noalias !11845
  %.pre65.i.i.a = load i32, ptr %i.ap, align 4, !noalias !11845
  %.pre66.i.i = zext i32 %.pre.i.i to i64
  %.pre67.i.i = zext i32 %.pre65.i.i.a to i64
  br label %bb.ci

bb.ck:                                            ; preds = %bb.ci
  %.val191.i.i = load i64, ptr %i.cm, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 4 uses
  %i.op = load i64, ptr %i.cj, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 4 uses
  %i.oq = icmp ugt i64 %i.op, %.val191.i.i
  br i1 %i.oq, label %bb.cn, label %bb.cm, !prof !30

bb.cl:                                            ; preds = %bb.ci
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.on, i64 noundef %.val127.i.i, i64 noundef %.val127.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1202) #46, !noalias !11847
  unreachable

bb.cm:                                            ; preds = %bb.ck
  %.val190.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !28, !noundef !21
  %i.or = load i64, ptr %i.cn, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.os = getelementptr inbounds nuw i8, ptr %.val126.i.i, i64 %i.on
  %i.ot = sub nuw i64 %.val127.i.i, %i.on
  %i.ou = sub nuw i64 %.val191.i.i, %i.op
  %i.ov = getelementptr inbounds nuw [16 x i8], ptr %.val190.i.i, i64 %i.op
  call fastcc void @_ZN6brotli3enc19backward_references30BrotliCreateBackwardReferences17he5bf28e56e3e77a2E(i64 noundef %.pre-phi.i.i, i64 noundef %.pre-phi68.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.os, i64 noundef %i.ot, i64 noundef %i.og, i64 noundef %i.or, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ay, ptr noalias noundef nonnull align 4 %i.cp, ptr noalias noundef align 8 dereferenceable(8) %i.co, ptr noalias noundef nonnull align 4 %i.ov, i64 noundef %i.ou, ptr noalias noundef align 8 dereferenceable(8) %i.cj, ptr noalias noundef align 8 dereferenceable(8) %i.cq)
  %i.ow = call noundef i64 @_ZN6brotli3enc6encode16MaxMetablockSize17hd5d2080980d19f9bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu), !noalias !11847 ; 2 uses
  %i.ox = lshr i64 %i.ow, 3                       ; 2 uses
  %i.oy = load i64, ptr %i.bd, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.oz = load i64, ptr %i.bo, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.pa = sub i64 %i.oy, %i.oz
  call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$18ensure_initialized17h976450b2f254cc2bE"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ay)
  %i.pb = load i32, ptr %i.bf, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.pc = and i32 %i.pb, 63
  %i.pd = zext nneg i32 %i.pc to i64
  %i.pe = shl nuw i64 1, %i.pd
  %i.pf = add i64 %i.pa, %i.pe
  %.not121.i.i = icmp ugt i64 %i.pf, %i.ow
  %i.pg = load i32, ptr %i.bb, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.ph = icmp slt i32 %i.pg, 4
  br i1 %i.ph, label %bb.co, label %bb.cp

bb.cn:                                            ; preds = %bb.ck
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.op, i64 noundef %.val191.i.i, i64 noundef %.val191.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1201) #46, !noalias !11847
  unreachable

bb.co:                                            ; preds = %bb.cm
  %i.pi = load i64, ptr %i.cq, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.pj = load i64, ptr %i.cj, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.pk = add i64 %i.pj, %i.pi
  %i.pl = icmp ugt i64 %i.pk, 12286
  %i.pm = or i1 %.sroa.05.0.i, %i.pl
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cm
  %.sroa.021.0.i.i = phi i1 [ %i.pm, %bb.co ], [ %.sroa.05.0.i, %bb.cm ]
  %i.pn = or i1 %.not121.i.i, %.sroa.021.0.i.i
  %brmerge2.i.i = or i1 %.sroa.03.0.i, %i.pn
  br i1 %brmerge2.i.i, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cs, %bb.cr, %bb.cp
  %i.po = load i64, ptr %i.co, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 2 uses
  %.not.i.i = icmp eq i64 %i.po, 0
  br i1 %.not.i.i, label %bb.cy, label %bb.cx

bb.cr:                                            ; preds = %bb.cp
  %i.pp = load i64, ptr %i.cq, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.pq = icmp ult i64 %i.pp, %i.ox
  br i1 %i.pq, label %bb.cs, label %bb.cq

bb.cs:                                            ; preds = %bb.cr
  %i.pr = load i64, ptr %i.cj, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.ps = icmp ult i64 %i.pr, %i.ox
  br i1 %i.ps, label %bb.ct, label %bb.cq

bb.ct:                                            ; preds = %bb.cs
  %16 = load i64, ptr %i.be, align 8, !alias.scope !11861, !noalias !11847, !noundef !21 ; 2 uses
  %17 = trunc i64 %16 to i32                      ; 3 uses
  %18 = icmp ugt i64 %16, 3221225471
  %19 = and i32 %17, 1073741823
  %i.pt = and i32 %17, 1073741824
  %reass.sub.i18 = sub nsw i32 %19, %i.pt
  %20 = xor i32 %reass.sub.i18, -2147483648
  %.sroa.0.0.i19 = select i1 %18, i32 %20, i32 %17
  %21 = load i64, ptr %i.bd, align 8, !alias.scope !11861, !noalias !11847, !noundef !21 ; 3 uses
  %22 = trunc i64 %21 to i32                      ; 3 uses
  %23 = icmp ugt i64 %21, 3221225471
  %24 = and i32 %22, 1073741823
  %i.pu = and i32 %22, 1073741824
  %reass.sub5.i = sub nsw i32 %24, %i.pu
  %i.pv = xor i32 %reass.sub5.i, -2147483648
  %.sroa.02.0.i = select i1 %23, i32 %i.pv, i32 %22
  store i64 %21, ptr %i.be, align 8, !alias.scope !11861, !noalias !11847
  %25 = icmp ult i32 %.sroa.02.0.i, %.sroa.0.0.i19
  br i1 %25, label %bb.cu, label %bb.hq

bb.cu:                                            ; preds = %bb.ct
  %i.pw = load i64, ptr %i.ay, align 8, !range !70, !alias.scope !11846, !noalias !11847, !noundef !21
  switch i64 %i.pw, label %default.unreachable [
    i64 0, label %bb.hq
    i64 10, label %bb.cw
    i64 1, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit"
    i64 2, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit"
    i64 3, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit"
    i64 4, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit"
    i64 5, label %bb.cv
    i64 6, label %bb.cv
    i64 7, label %bb.cv
    i64 8, label %bb.cv
    i64 9, label %bb.cv
  ], !prof !77

default.unreachable:                              ; preds = %bb.hd, %bb.cu
  unreachable

bb.cv:                                            ; preds = %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit"

bb.cw:                                            ; preds = %bb.cu
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit"

"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit": ; preds = %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cv, %bb.cw
  %.sink.i = phi i64 [ 56, %bb.cw ], [ 24, %bb.cu ], [ 24, %bb.cu ], [ 24, %bb.cu ], [ 24, %bb.cu ], [ 40, %bb.cv ]
  %i.px = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sink.i
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 40
  store i32 0, ptr %i.py, align 8
  br label %bb.hq

bb.cx:                                            ; preds = %bb.cq
  %.val189.i.i = load i64, ptr %i.cm, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 2 uses
  %i.pz = load i64, ptr %i.cj, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 3 uses
  %i.qa = icmp ult i64 %i.pz, %.val189.i.i
  br i1 %i.qa, label %bb.cz, label %bb.da

bb.cy:                                            ; preds = %bb.cz, %bb.cq
  %.pre65.i.i = load i64, ptr %i.bo, align 8, !alias.scope !11846, !noalias !11847 ; 5 uses
  br i1 %.sroa.03.0.i, label %bb.dc, label %bb.db

bb.cz:                                            ; preds = %bb.cx
  %.val188.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !28, !noundef !21
  %i.qb = getelementptr inbounds nuw [16 x i8], ptr %.val188.i.i, i64 %i.pz
  call void @_ZN6brotli3enc7command7Command11init_insert17hcc78d94f9f80b580E(ptr noalias noundef nonnull align 4 dereferenceable(16) %i.qb, i64 noundef %i.po), !noalias !11847
  %i.qc = load i64, ptr %i.co, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.qd = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !11846, !noalias !11847
  %i.qe = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.qc, i64 1
  %i.qf = add <2 x i64> %i.qd, %i.qe
  store <2 x i64> %i.qf, ptr %i.cj, align 8, !alias.scope !11846, !noalias !11847
  store i64 0, ptr %i.co, align 8, !alias.scope !11846, !noalias !11847
  br label %bb.cy

bb.da:                                            ; preds = %bb.cx
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.pz, i64 noundef %.val189.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1194) #46, !noalias !11847
  unreachable

bb.db:                                            ; preds = %bb.cy
  %i.qg = load i64, ptr %i.bd, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.qh = icmp eq i64 %i.qg, %.pre65.i.i
  br i1 %i.qh, label %bb.hq, label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cy
  %.val125.i.i = load i64, ptr %i.ca, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 4 uses
  %i.qi = load i64, ptr %i.cb, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 4 uses
  %i.qj = icmp ugt i64 %i.qi, %.val125.i.i
  br i1 %i.qj, label %bb.gx, label %bb.dd, !prof !30

bb.dd:                                            ; preds = %bb.dc
  %.val124.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !29, !noundef !21
  %i.qk = load i64, ptr %i.bd, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.ql = sub i64 %i.qk, %.pre65.i.i
  %i.qm = sub nuw i64 %.val125.i.i, %i.qi         ; 24 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.val124.i.i, i64 %i.qi ; 19 uses
  %i.qo = and i64 %i.ql, 4294967295               ; 12 uses
  %i.qp = load i8, ptr %i.cd, align 1, !alias.scope !11846, !noalias !11847, !noundef !21 ; 3 uses
  %i.qq = load i8, ptr %i.ce, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 3 uses
  %i.qr = load i64, ptr %i.cq, align 8, !alias.scope !11846, !noalias !11847, !noundef !21
  %i.qs = load i64, ptr %i.cj, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 19 uses
  %.val186.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !28, !noundef !21 ; 12 uses
  %.val187.i.i = load i64, ptr %i.cm, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 14 uses
  %.val.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !29, !noundef !21 ; 47 uses
  %.val123.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 47 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11862)
  call void @llvm.experimental.noalias.scope.decl(metadata !11863)
  call void @llvm.experimental.noalias.scope.decl(metadata !11864)
  call void @llvm.experimental.noalias.scope.decl(metadata !11865)
  call void @llvm.experimental.noalias.scope.decl(metadata !11866)
  call void @llvm.experimental.noalias.scope.decl(metadata !11867)
  call void @llvm.experimental.noalias.scope.decl(metadata !11868)
  %i.qt = load i8, ptr %i.by, align 8, !range !38, !alias.scope !11869, !noalias !11870, !noundef !21
  %i.qu = trunc nuw i8 %i.qt to i1
  %i.qv = load i8, ptr %i.bx, align 4, !range !38, !alias.scope !11869, !noalias !11870
  %i.qw = trunc nuw i8 %i.qv to i1
  %or.cond.i.i.i = select i1 %i.qu, i1 true, i1 %i.qw
  br i1 %or.cond.i.i.i, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.qx = load i8, ptr %i.bc, align 2, !range !38, !alias.scope !11869, !noalias !11870, !noundef !21
  %i.qy = trunc nuw i8 %i.qx to i1
  br i1 %i.qy, label %bb.df, label %bb.dg, !prof !30

bb.df:                                            ; preds = %bb.de
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1176, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1177) #46, !noalias !11871
  unreachable

bb.dg:                                            ; preds = %bb.de, %bb.dd
  %.sroa.0.0.i200.i.i = phi i1 [ %.sroa.03.0.i, %bb.de ], [ false, %bb.dd ] ; 10 uses
  %26 = trunc i64 %.pre65.i.i to i32              ; 3 uses
  %27 = icmp ugt i64 %.pre65.i.i, 3221225471
  %28 = and i32 %26, 1073741823
  %29 = and i32 %26, 1073741824
  %reass.sub.i201.i.i = sub nsw i32 %28, %29
  %30 = xor i32 %reass.sub.i201.i.i, -2147483648
  %.sroa.012.0.i.i.i = select i1 %27, i32 %30, i32 %26 ; 7 uses
  %i.qz = zext nneg i8 %13 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !11872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.an, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.bu, i64 112, i1 false), !noalias !11870
  %i.ra = icmp eq i64 %i.qo, 0
  br i1 %i.ra, label %_ZN6brotli3enc6encode22WriteMetaBlockInternal17h4959d936469cbf0aE.exit.sink.split.i.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.rb = call noundef zeroext i1 @_ZN6brotli3enc6encode15should_compress17he8a685b155995016E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qn, i64 noundef %i.qm, i64 noundef range(i64 0, 4294967296) %i.og, i64 noundef %.pre65.i.i, i64 noundef range(i64 0, 4294967296) %i.qo, i64 noundef %i.qr, i64 noundef %i.qs), !noalias !11871
  br i1 %i.rb, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cp, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cs, i64 16, i1 false), !alias.scope !11873, !noalias !11874
  %i.rc = zext i32 %.sroa.012.0.i.i.i to i64
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream29store_uncompressed_meta_block17h8d70584a2b236bb4E(ptr noalias noundef nonnull align 1 %i.bn, i1 noundef zeroext %.sroa.0.0.i200.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qn, i64 noundef %i.qm, i64 noundef %i.rc, i64 noundef range(i64 0, 4294967296) %i.og, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, i64 noundef range(i64 0, 4294967296) %i.qo, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef %.val123.i.i, i1 noundef zeroext false), !noalias !11875
  %i.rd = xor i1 %.sroa.03.0.i, %.sroa.0.0.i200.i.i
  br i1 %i.rd, label %_ZN6brotli3enc6encode22WriteMetaBlockInternal17h4959d936469cbf0aE.exit.sink.split.i.i, label %_ZN6brotli3enc6encode22WriteMetaBlockInternal17h4959d936469cbf0aE.exit.i.i

bb.dj:                                            ; preds = %bb.dh
  %i.re = load i64, ptr %i.aq, align 8, !alias.scope !11867, !noalias !11876, !noundef !21 ; 2 uses
  %i.rf = lshr i64 %i.re, 3                       ; 3 uses
  %i.rg = add nuw nsw i64 %i.rf, 1                ; 3 uses
  %i.rh = icmp ult i64 %i.rg, %.val123.i.i
  br i1 %i.rh, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.ri = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.rg ; 2 uses
  %i.rj = load i8, ptr %i.ri, align 1, !alias.scope !11868, !noalias !11877, !noundef !21
  %i.rk = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.rf ; 2 uses
  %i.rl = load i8, ptr %i.rk, align 1, !alias.scope !11868, !noalias !11877, !noundef !21
  %i.rm = load i32, ptr %i.bb, align 8, !alias.scope !11869, !noalias !11870, !noundef !21 ; 4 uses
  %i.rn = icmp slt i32 %i.rm, 3
  br i1 %i.rn, label %bb.dn, label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.rg, i64 noundef %.val123.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1178) #46, !noalias !11871
  unreachable

bb.dm:                                            ; preds = %bb.dk
  %i.ro = icmp eq i32 %i.rm, 3
  br i1 %i.ro, label %bb.eb, label %bb.ea

bb.dn:                                            ; preds = %bb.dk
  %i.rp = zext i32 %.sroa.012.0.i.i.i to i64      ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11878)
  call void @llvm.experimental.noalias.scope.decl(metadata !11879)
  call void @llvm.experimental.noalias.scope.decl(metadata !11880)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !11881
  call void @_ZN6brotli3enc17brotli_bit_stream24InputPairFromMaskedInput17h9911943266a08ad9E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.aj, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qn, i64 noundef %i.qm, i64 noundef range(i64 0, 4294967296) %i.rp, i64 noundef range(i64 1, 4294967296) %i.qo, i64 noundef range(i64 0, 4294967296) %i.og), !noalias !11882
  %i.rq = load ptr, ptr %i.aj, align 8, !noalias !11881, !nonnull !21, !align !29, !noundef !21
  %i.rr = load i64, ptr %i.ep, align 8, !noalias !11881, !noundef !21
  %i.rs = load ptr, ptr %i.eq, align 8, !noalias !11881, !nonnull !21, !align !29, !noundef !21
  %i.rt = load i64, ptr %i.er, align 8, !noalias !11881, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !11881
  %i.ru = load i8, ptr %i.ee, align 1, !range !38, !alias.scope !11883, !noalias !11884, !noundef !21
  %i.rv = trunc nuw i8 %i.ru to i1
  br i1 %i.rv, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dr, %bb.dn
  %i.rw = load i32, ptr %i.eo, align 8, !alias.scope !11883, !noalias !11884, !noundef !21
  call void @_ZN6brotli3enc17brotli_bit_stream30StoreCompressedMetaBlockHeader17he8486a6759b6de05E(i1 noundef zeroext %.sroa.0.0.i200.i.i, i64 noundef range(i64 1, 4294967296) %i.qo, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11885
  call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11885
  %i.rx = icmp ult i64 %i.qs, 129
  br i1 %i.rx, label %bb.dt, label %bb.ds

bb.dp:                                            ; preds = %bb.dn
  %.not.i.i.i.i = icmp ugt i64 %i.qs, %.val187.i.i
  br i1 %.not.i.i.i.i, label %bb.dq, label %bb.dr, !prof !30

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !11881
  store ptr @230, ptr %i.v, align 8, !noalias !11881
  %i.ry = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 1, ptr %i.ry, align 8, !noalias !11881
  %i.rz = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr null, ptr %i.rz, align 8, !noalias !11881
  %i.sa = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.sa, align 8, !noalias !11881
  %i.sb = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 0, ptr %i.sb, align 8, !noalias !11881
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @971) #46, !noalias !11882
  unreachable

bb.dr:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !11881
  store ptr inttoptr (i64 1 to ptr), ptr %i.ai, align 8, !noalias !11881
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !11881
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !11881
  store i64 0, ptr %.sroa.612.0..sroa_idx.i.i.i.i, align 8, !noalias !11881
  store i32 1, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !11881
  store ptr inttoptr (i64 4 to ptr), ptr %i.es, align 8, !noalias !11881
  store i64 0, ptr %i.et, align 8, !noalias !11881
  store ptr inttoptr (i64 1 to ptr), ptr %i.eu, align 8, !noalias !11881
  store i64 0, ptr %.sroa.414.0..sroa_idx.i.i.i.i, align 8, !noalias !11881
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.515.0..sroa_idx.i.i.i.i, align 8, !noalias !11881
  store i64 0, ptr %.sroa.616.0..sroa_idx.i.i.i.i, align 8, !noalias !11881
  store i32 1, ptr %.sroa.717.0..sroa_idx.i.i.i.i, align 8, !noalias !11881
  store ptr inttoptr (i64 1 to ptr), ptr %i.ev, align 8, !noalias !11881
  store i64 0, ptr %.sroa.420.0..sroa_idx.i.i.i.i, align 8, !noalias !11881
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.521.0..sroa_idx.i.i.i.i, align 8, !noalias !11881
  store i64 0, ptr %.sroa.622.0..sroa_idx.i.i.i.i, align 8, !noalias !11881
  store i32 1, ptr %.sroa.723.0..sroa_idx.i.i.i.i, align 8, !noalias !11881
  store ptr inttoptr (i64 4 to ptr), ptr %i.ew, align 8, !noalias !11881
  store i64 0, ptr %i.ex, align 8, !noalias !11881
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h4564c46130fee7a0E(ptr noalias noundef nonnull align 1 %i.bn, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val186.i.i, i64 noundef %i.qs, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.rq, i64 noundef %i.rr, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.rs, i64 noundef %i.rt, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cs, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noalias noundef readonly align 8 captures(address) dereferenceable(152) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, i8 noundef 0), !noalias !11886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !11881
  br label %bb.do

bb.ds:                                            ; preds = %bb.do
  %i.sc = zext i32 %i.rw to i64
  %i.sd = add nsw i64 %i.sc, -1
  %i.se = lshr i64 %i.sd, 1
  %i.sf = call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.se, i1 false)
  %i.sg = sub nuw nsw i64 65, %i.sf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !11881
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ae, i8 0, i64 1032, i1 false), !noalias !11881
  store float 3.402000e+38, ptr %i.ez, align 8, !noalias !11881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !11881
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ad, i8 0, i64 2824, i1 false), !noalias !11881
  store float 3.402000e+38, ptr %i.fb, align 8, !noalias !11881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !11881
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ac, i8 0, i64 2184, i1 false), !noalias !11881
  store float 3.402000e+38, ptr %i.fd, align 8, !noalias !11881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !11881
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.ab, i8 0, i64 256, i1 false), !noalias !11881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !11881
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %i.aa, i8 0, i64 512, i1 false), !noalias !11881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !11881
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(704) %i.z, i8 0, i64 704, i1 false), !noalias !11881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !11881
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1408) %i.y, i8 0, i64 1408, i1 false), !noalias !11881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !11881
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(140) %i.x, i8 0, i64 140, i1 false), !noalias !11881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !11881
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(280) %i.w, i8 0, i64 280, i1 false), !noalias !11881
  call void @_ZN6brotli3enc17brotli_bit_stream15BuildHistograms17hf33d4e9a73aed5ffE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qn, i64 noundef %i.qm, i64 noundef range(i64 0, 4294967296) %i.rp, i64 noundef range(i64 0, 4294967296) %i.og, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val186.i.i, i64 noundef %.val187.i.i, i64 noundef %i.qs, ptr noalias noundef nonnull align 8 dereferenceable(1040) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(2832) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(2192) %i.ac), !noalias !11885
  %i.sh = load i64, ptr %i.ey, align 8, !noalias !11881, !noundef !21
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17h5a5e35cfecfbebceE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ae, i64 noundef 256, i64 noundef %i.sh, i64 noundef 8, ptr noalias noundef nonnull align 1 %i.ab, i64 noundef 256, ptr noalias noundef nonnull align 2 %i.aa, i64 noundef 256, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11885
  %i.si = load i64, ptr %i.fa, align 8, !noalias !11881, !noundef !21
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17h5a5e35cfecfbebceE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ad, i64 noundef 704, i64 noundef %i.si, i64 noundef 10, ptr noalias noundef nonnull align 1 %i.z, i64 noundef 704, ptr noalias noundef nonnull align 2 %i.y, i64 noundef 704, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11885
  %i.sj = load i64, ptr %i.fc, align 8, !noalias !11881, !noundef !21
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17h5a5e35cfecfbebceE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ac, i64 noundef 544, i64 noundef %i.sj, i64 noundef %i.sg, ptr noalias noundef nonnull align 1 %i.x, i64 noundef 140, ptr noalias noundef nonnull align 2 %i.w, i64 noundef 140, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11885
  call void @_ZN6brotli3enc17brotli_bit_stream25StoreDataWithHuffmanCodes17hf13a85f2527ecafcE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qn, i64 noundef %i.qm, i64 noundef range(i64 0, 4294967296) %i.rp, i64 noundef range(i64 0, 4294967296) %i.og, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val186.i.i, i64 noundef %.val187.i.i, i64 noundef %i.qs, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ab, i64 noundef 256, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.aa, i64 noundef 256, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.z, i64 noundef 704, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.y, i64 noundef 704, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.x, i64 noundef 140, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.w, i64 noundef 140, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !11881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !11881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !11881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !11881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !11881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !11881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !11881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !11881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !11881
  br label %bb.du

bb.dt:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !11881
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ah, i8 0, i64 1024, i1 false), !noalias !11881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !11881
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.ag, i8 0, i64 256, i1 false), !noalias !11881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !11881
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %i.af, i8 0, i64 512, i1 false), !noalias !11881
  %.not26.i.i.i.i = icmp eq i64 %i.qs, 0
  br i1 %.not26.i.i.i.i, label %._crit_edge14.i.i.i.i, label %.lr.ph13.i.i.i.i

bb.du:                                            ; preds = %._crit_edge14.i.i.i.i, %bb.ds
  br i1 %.sroa.0.0.i200.i.i, label %bb.dv, label %_ZN6brotli3enc17brotli_bit_stream21store_meta_block_fast17h61d2765af724312cE.exit.i.i.i

.lr.ph13.i.i.i.i:                                 ; preds = %bb.dt, %._crit_edge.i.i.i.i
  %.sroa.027.111.i.i.i.i = phi i64 [ %.sroa.027.1.i.i.i.i, %._crit_edge.i.i.i.i ], [ 1, %bb.dt ] ; 3 uses
  %.sroa.02.010.i.i.i.i = phi i64 [ %i.su, %._crit_edge.i.i.i.i ], [ %i.rp, %bb.dt ] ; 2 uses
  %.sroa.05.09.i.i.i.i = phi i64 [ %i.sr, %._crit_edge.i.i.i.i ], [ 0, %bb.dt ]
  %.sroa.027.08.i.i.i.i = phi i64 [ %.sroa.027.111.i.i.i.i, %._crit_edge.i.i.i.i ], [ 0, %bb.dt ] ; 3 uses
  %i.sk = icmp ult i64 %.sroa.027.08.i.i.i.i, %.val187.i.i
  br i1 %i.sk, label %bb.dw, label %bb.dx

._crit_edge14.i.i.i.i:                            ; preds = %._crit_edge.i.i.i.i, %bb.dt
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.dt ], [ %i.sr, %._crit_edge.i.i.i.i ]
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream34BrotliBuildAndStoreHuffmanTreeFast17h5a5e35cfecfbebceE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ah, i64 noundef 256, i64 noundef %.sroa.05.0.lcssa.i.i.i.i, i64 noundef 8, ptr noalias noundef nonnull align 1 %i.ag, i64 noundef 256, ptr noalias noundef nonnull align 2 %i.af, i64 noundef 256, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11885
  call void @_ZN6brotli3enc17brotli_bit_stream29StoreStaticCommandHuffmanTree17h94fc581fe61dfd4aE(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11885
  call void @_ZN6brotli3enc17brotli_bit_stream30StoreStaticDistanceHuffmanTree17h4a629285af6547ffE(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11885
  call void @_ZN6brotli3enc17brotli_bit_stream25StoreDataWithHuffmanCodes17hf13a85f2527ecafcE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qn, i64 noundef %i.qm, i64 noundef range(i64 0, 4294967296) %i.rp, i64 noundef range(i64 0, 4294967296) %i.og, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val186.i.i, i64 noundef %.val187.i.i, i64 noundef %i.qs, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ag, i64 noundef 256, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.af, i64 noundef 256, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @_ZN6brotli3enc9constants23kStaticCommandCodeDepth17hc2b64d4d0d432e21E, i64 noundef 704, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) @_ZN6brotli3enc9constants22kStaticCommandCodeBits17h79c541a1c5f86137E, i64 noundef 704, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @_ZN6brotli3enc9constants24kStaticDistanceCodeDepth17hdb40a6d6b71ad0daE, i64 noundef 64, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) @_ZN6brotli3enc9constants23kStaticDistanceCodeBits17h6ce7b4025b69c8d0E, i64 noundef 64, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !11881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !11881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !11881
  br label %bb.du

bb.dv:                                            ; preds = %bb.du
  call void @_ZN6brotli3enc17brotli_bit_stream18JumpToByteBoundary17hd530db3bb0615915E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11885
  br label %_ZN6brotli3enc17brotli_bit_stream21store_meta_block_fast17h61d2765af724312cE.exit.i.i.i

bb.dw:                                            ; preds = %.lr.ph13.i.i.i.i
  %i.sl = getelementptr inbounds nuw [16 x i8], ptr %.val186.i.i, i64 %.sroa.027.08.i.i.i.i ; 2 uses
  %i.sm = load i32, ptr %i.sl, align 4, !alias.scope !11887, !noalias !11888, !noundef !21 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 4
  %i.so = load i32, ptr %i.sn, align 4, !alias.scope !11887, !noalias !11888, !noundef !21
  %i.sp = zext i32 %i.sm to i64                   ; 2 uses
  %i.sq = icmp eq i32 %i.sm, 0
  br i1 %i.sq, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.dx:                                            ; preds = %.lr.ph13.i.i.i.i
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.027.08.i.i.i.i, i64 noundef %.val187.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @972) #46, !noalias !11885
  unreachable

._crit_edge.i.i.i.i:                              ; preds = %bb.dz, %bb.dw
  %.sroa.02.1.lcssa.i.i.i.i = phi i64 [ %.sroa.02.010.i.i.i.i, %bb.dw ], [ %i.tf, %bb.dz ]
  %i.sr = add i64 %.sroa.05.09.i.i.i.i, %i.sp     ; 2 uses
  %i.ss = and i32 %i.so, 33554431
  %i.st = zext nneg i32 %i.ss to i64
  %i.su = add i64 %.sroa.02.1.lcssa.i.i.i.i, %i.st
  %i.sv = icmp ult i64 %.sroa.027.111.i.i.i.i, %i.qs ; 2 uses
  %i.sw = zext i1 %i.sv to i64
  %.sroa.027.1.i.i.i.i = add nuw nsw i64 %.sroa.027.111.i.i.i.i, %i.sw
  br i1 %i.sv, label %.lr.ph13.i.i.i.i, label %._crit_edge14.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.dw, %bb.dz
  %.sroa.02.17.i.i.i.i = phi i64 [ %i.tf, %bb.dz ], [ %.sroa.02.010.i.i.i.i, %bb.dw ] ; 2 uses
  %.sroa.09.06.i.i.i.i = phi i64 [ %i.tg, %bb.dz ], [ %i.sp, %bb.dw ]
  %i.sx = and i64 %.sroa.02.17.i.i.i.i, %i.og     ; 3 uses
  %i.sy = icmp ult i64 %i.sx, %i.qm
  br i1 %i.sy, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %.lr.ph.i.i.i.i
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.sx, i64 noundef %i.qm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @973) #46, !noalias !11885
  unreachable

bb.dz:                                            ; preds = %.lr.ph.i.i.i.i
  %i.sz = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.sx
  %i.ta = load i8, ptr %i.sz, align 1, !alias.scope !11889, !noalias !11890, !noundef !21
  %i.tb = zext i8 %i.ta to i64
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.tb ; 2 uses
  %i.td = load i32, ptr %i.tc, align 4, !noalias !11881, !noundef !21
  %i.te = add i32 %i.td, 1
  store i32 %i.te, ptr %i.tc, align 4, !noalias !11881
  %i.tf = add i64 %.sroa.02.17.i.i.i.i, 1         ; 2 uses
  %i.tg = add nsw i64 %.sroa.09.06.i.i.i.i, -1    ; 2 uses
  %i.th = icmp eq i64 %i.tg, 0
  br i1 %i.th, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.ea:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !11872
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i23.i.i.i, i8 0, i64 16, i1 false), !alias.scope !11891, !noalias !11872
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.732.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !11891, !noalias !11872
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.737.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !11891, !noalias !11872
  store ptr inttoptr (i64 1 to ptr), ptr %i.am, align 8, !alias.scope !11891, !noalias !11872
  store i64 0, ptr %.sroa.4.0..sroa_idx.i24.i.i.i, align 8, !alias.scope !11891, !noalias !11872
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx.i25.i.i.i, align 8, !alias.scope !11891, !noalias !11872
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11891, !noalias !11872
  store ptr inttoptr (i64 1 to ptr), ptr %i.ct, align 8, !alias.scope !11891, !noalias !11872
  store i64 0, ptr %.sroa.429.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11891, !noalias !11872
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.530.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11891, !noalias !11872
  store i64 0, ptr %.sroa.631.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11891, !noalias !11872
  store ptr inttoptr (i64 1 to ptr), ptr %i.cu, align 8, !alias.scope !11891, !noalias !11872
  store i64 0, ptr %.sroa.434.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11891, !noalias !11872
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.535.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11891, !noalias !11872
  store i64 0, ptr %.sroa.636.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11891, !noalias !11872
  store ptr inttoptr (i64 4 to ptr), ptr %i.cv, align 8, !alias.scope !11891, !noalias !11872
  store i64 0, ptr %i.cw, align 8, !alias.scope !11891, !noalias !11872
  store ptr inttoptr (i64 4 to ptr), ptr %i.cy, align 8, !alias.scope !11891, !noalias !11872
  store i64 0, ptr %i.cz, align 8, !alias.scope !11891, !noalias !11872
  store ptr inttoptr (i64 8 to ptr), ptr %i.db, align 8, !alias.scope !11891, !noalias !11872
  store i64 0, ptr %i.dc, align 8, !alias.scope !11891, !noalias !11872
  store ptr inttoptr (i64 8 to ptr), ptr %i.de, align 8, !alias.scope !11891, !noalias !11872
  store i64 0, ptr %i.df, align 8, !alias.scope !11891, !noalias !11872
  store ptr inttoptr (i64 8 to ptr), ptr %i.dh, align 8, !alias.scope !11891, !noalias !11872
  store <6 x i64> zeroinitializer, ptr %i.di, align 8, !alias.scope !11891, !noalias !11872
  %i.ti = icmp samesign ult i32 %i.rm, 10
  br i1 %i.ti, label %bb.ei, label %bb.eh

bb.eb:                                            ; preds = %bb.dm
  %i.tj = zext i32 %.sroa.012.0.i.i.i to i64      ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11892)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !11893
  call void @_ZN6brotli3enc17brotli_bit_stream24InputPairFromMaskedInput17h9911943266a08ad9E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.u, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qn, i64 noundef %i.qm, i64 noundef range(i64 0, 4294967296) %i.tj, i64 noundef range(i64 1, 4294967296) %i.qo, i64 noundef range(i64 0, 4294967296) %i.og), !noalias !11894
  %i.tk = load ptr, ptr %i.u, align 8, !noalias !11893, !nonnull !21, !align !29, !noundef !21
  %i.tl = load i64, ptr %i.eb, align 8, !noalias !11893, !noundef !21
  %i.tm = load ptr, ptr %i.ec, align 8, !noalias !11893, !nonnull !21, !align !29, !noundef !21
  %i.tn = load i64, ptr %i.ed, align 8, !noalias !11893, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !11893
  %i.to = load i8, ptr %i.ee, align 1, !range !38, !alias.scope !11895, !noalias !11896, !noundef !21
  %i.tp = trunc nuw i8 %i.to to i1
  br i1 %i.tp, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.ef, %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !11893
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.s, i8 0, i64 1032, i1 false), !noalias !11893
  store float 3.402000e+38, ptr %i.el, align 8, !noalias !11893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !11893
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.r, i8 0, i64 2824, i1 false), !noalias !11893
  store float 3.402000e+38, ptr %i.em, align 8, !noalias !11893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !11893
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.q, i8 0, i64 2184, i1 false), !noalias !11893
  store float 3.402000e+38, ptr %i.en, align 8, !noalias !11893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !11893
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.p, i8 0, i64 256, i1 false), !noalias !11893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !11893
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %i.o, i8 0, i64 512, i1 false), !noalias !11893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !11893
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(704) %i.n, i8 0, i64 704, i1 false), !noalias !11893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !11893
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1408) %i.m, i8 0, i64 1408, i1 false), !noalias !11893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !11893
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(140) %i.l, i8 0, i64 140, i1 false), !noalias !11893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !11893
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(280) %i.k, i8 0, i64 280, i1 false), !noalias !11893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !11893
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(11272) %i.j, i8 0, i64 11272, i1 false), !noalias !11893
  %i.tq = load i32, ptr %i.eo, align 8, !alias.scope !11895, !noalias !11896, !noundef !21
  call void @_ZN6brotli3enc17brotli_bit_stream30StoreCompressedMetaBlockHeader17he8486a6759b6de05E(i1 noundef zeroext %.sroa.0.0.i200.i.i, i64 noundef range(i64 1, 4294967296) %i.qo, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11897
  call void @_ZN6brotli3enc17brotli_bit_stream15BuildHistograms17hf33d4e9a73aed5ffE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qn, i64 noundef %i.qm, i64 noundef range(i64 0, 4294967296) %i.tj, i64 noundef range(i64 0, 4294967296) %i.og, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val186.i.i, i64 noundef %.val187.i.i, i64 noundef %i.qs, ptr noalias noundef nonnull align 8 dereferenceable(1040) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(2832) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(2192) %i.q), !noalias !11897
  call void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 13, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11897
  call void @_ZN6brotli3enc17brotli_bit_stream24BuildAndStoreHuffmanTree17h593bd11fb314b673E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.s, i64 noundef 256, i64 noundef 256, i64 noundef 256, ptr noalias noundef nonnull align 4 %i.j, i64 noundef 1409, ptr noalias noundef nonnull align 1 %i.p, i64 noundef 256, ptr noalias noundef nonnull align 2 %i.o, i64 noundef 256, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11897
  call void @_ZN6brotli3enc17brotli_bit_stream24BuildAndStoreHuffmanTree17h593bd11fb314b673E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.r, i64 noundef 704, i64 noundef 704, i64 noundef 704, ptr noalias noundef nonnull align 4 %i.j, i64 noundef 1409, ptr noalias noundef nonnull align 1 %i.n, i64 noundef 704, ptr noalias noundef nonnull align 2 %i.m, i64 noundef 704, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11897
  %i.tr = zext i32 %i.tq to i64
  call void @_ZN6brotli3enc17brotli_bit_stream24BuildAndStoreHuffmanTree17h593bd11fb314b673E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.q, i64 noundef 544, i64 noundef 140, i64 noundef %i.tr, ptr noalias noundef nonnull align 4 %i.j, i64 noundef 1409, ptr noalias noundef nonnull align 1 %i.l, i64 noundef 140, ptr noalias noundef nonnull align 2 %i.k, i64 noundef 140, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11897
  call void @_ZN6brotli3enc17brotli_bit_stream25StoreDataWithHuffmanCodes17hf13a85f2527ecafcE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qn, i64 noundef %i.qm, i64 noundef range(i64 0, 4294967296) %i.tj, i64 noundef range(i64 0, 4294967296) %i.og, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val186.i.i, i64 noundef %.val187.i.i, i64 noundef %i.qs, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.p, i64 noundef 256, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.o, i64 noundef 256, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef 704, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.m, i64 noundef 704, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.l, i64 noundef 140, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.k, i64 noundef 140, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11897
  br i1 %.sroa.0.0.i200.i.i, label %bb.eg, label %_ZN6brotli3enc17brotli_bit_stream24store_meta_block_trivial17hbfad71c86fe051d6E.exit.i.i.i

bb.ed:                                            ; preds = %bb.eb
  %.not.i26.i.i.i = icmp ugt i64 %i.qs, %.val187.i.i
  br i1 %.not.i26.i.i.i, label %bb.ee, label %bb.ef, !prof !30

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !11893
  store ptr @230, ptr %i.i, align 8, !noalias !11893
  %i.ts = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.ts, align 8, !noalias !11893
  %i.tt = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %i.tt, align 8, !noalias !11893
  %i.tu = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.tu, align 8, !noalias !11893
  %i.tv = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %i.tv, align 8, !noalias !11893
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @974) #46, !noalias !11894
  unreachable

bb.ef:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !11893
  store ptr inttoptr (i64 1 to ptr), ptr %i.t, align 8, !noalias !11893
  store i64 0, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !11893
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !11893
  store i64 0, ptr %.sroa.6.0..sroa_idx.i27.i.i.i, align 8, !noalias !11893
  store i32 1, ptr %.sroa.7.0..sroa_idx.i28.i.i.i, align 8, !noalias !11893
  store ptr inttoptr (i64 4 to ptr), ptr %i.ef, align 8, !noalias !11893
  store i64 0, ptr %i.eg, align 8, !noalias !11893
  store ptr inttoptr (i64 1 to ptr), ptr %i.eh, align 8, !noalias !11893
  store i64 0, ptr %.sroa.45.0..sroa_idx.i.i.i.i, align 8, !noalias !11893
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.56.0..sroa_idx.i.i.i.i, align 8, !noalias !11893
  store i64 0, ptr %.sroa.67.0..sroa_idx.i.i.i.i, align 8, !noalias !11893
  store i32 1, ptr %.sroa.78.0..sroa_idx.i.i.i.i, align 8, !noalias !11893
  store ptr inttoptr (i64 1 to ptr), ptr %i.ei, align 8, !noalias !11893
  store i64 0, ptr %.sroa.411.0..sroa_idx.i.i.i.i, align 8, !noalias !11893
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !noalias !11893
  store i64 0, ptr %.sroa.613.0..sroa_idx.i.i.i.i, align 8, !noalias !11893
  store i32 1, ptr %.sroa.714.0..sroa_idx.i.i.i.i, align 8, !noalias !11893
  store ptr inttoptr (i64 4 to ptr), ptr %i.ej, align 8, !noalias !11893
  store i64 0, ptr %i.ek, align 8, !noalias !11893
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h4564c46130fee7a0E(ptr noalias noundef nonnull align 1 %i.bn, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val186.i.i, i64 noundef %i.qs, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.tk, i64 noundef %i.tl, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.tm, i64 noundef %i.tn, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cs, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noalias noundef readonly align 8 captures(address) dereferenceable(152) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, i8 noundef 0), !noalias !11898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !11893
  br label %bb.ec

bb.eg:                                            ; preds = %bb.ec
  call void @_ZN6brotli3enc17brotli_bit_stream18JumpToByteBoundary17hd530db3bb0615915E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i), !noalias !11897
  br label %_ZN6brotli3enc17brotli_bit_stream24store_meta_block_trivial17hbfad71c86fe051d6E.exit.i.i.i

_ZN6brotli3enc17brotli_bit_stream24store_meta_block_trivial17hbfad71c86fe051d6E.exit.i.i.i: ; preds = %bb.eg, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !11893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !11893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !11893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !11893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !11893
  br label %_ZN6brotli3enc17brotli_bit_stream21store_meta_block_fast17h61d2765af724312cE.exit.i.i.i

bb.eh:                                            ; preds = %bb.ea
  %i.tw = zext i32 %.sroa.012.0.i.i.i to i64
  invoke fastcc void @_ZN6brotli3enc9metablock20BrotliBuildMetaBlock17h2be97dbed52f6456E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qn, i64 noundef %i.qm, i64 noundef %i.tw, i64 noundef range(i64 0, 4294967296) %i.og, ptr noalias noundef align 8 dereferenceable(112) %i.an, i8 noundef %i.qp, i8 noundef %i.qq, ptr noalias noundef nonnull align 4 %.val186.i.i, i64 noundef %.val187.i.i, i64 noundef %i.qs, i8 noundef range(i8 0, 4) %13, ptr noalias noundef nonnull align 1 %i.cr, ptr noalias noundef align 8 dereferenceable(264) %i.am)
          to label %bb.em unwind label %.loopexit.i, !noalias !11871

bb.ei:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !11872
  store i64 1, ptr %i.al, align 8, !noalias !11872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !11872
  store ptr inttoptr (i64 4 to ptr), ptr %i.ak, align 8, !noalias !11872
  store i64 0, ptr %i.dk, align 8, !noalias !11872
  %i.tx = load i32, ptr %i.dl, align 4, !alias.scope !11869, !noalias !11870, !noundef !21
  %i.ty = icmp eq i32 %i.tx, 0
  %i.tz = zext i32 %.sroa.012.0.i.i.i to i64      ; 2 uses
  br i1 %i.ty, label %bb.ej, label %.invoke.i.i.i

.loopexit.i:                                      ; preds = %.noexc40.i.i.i, %bb.er, %bb.eo, %bb.en, %bb.em, %.invoke.i.i.i, %bb.ej, %bb.eh
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i:                             ; preds = %.noexc.i.i.i.i, %bb.eq
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.thread.i.i.i.i, %.loopexit.split-lp.i, %.loopexit.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %lpad.phi73.i.i.i.i, %.thread.i.i.i.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call fastcc void @"_ZN4core3ptr113drop_in_place$LT$brotli..enc..brotli_bit_stream..MetaBlockSplit$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17hb9e224f650bfdf72E"(ptr noalias noundef align 8 dereferenceable(264) %i.am) #47, !noalias !11871
  br label %common.resume.i.i

bb.ej:                                            ; preds = %bb.ei
  %i.ua = load i64, ptr %i.bj, align 8, !alias.scope !11869, !noalias !11870, !noundef !21
  invoke void @_ZN6brotli3enc6encode32DecideOverLiteralContextModeling17h646b9ade2d57ecaeE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qn, i64 noundef %i.qm, i64 noundef %i.tz, i64 noundef range(i64 0, 4294967296) %i.qo, i64 noundef range(i64 0, 4294967296) %i.og, i32 noundef %i.rm, i64 noundef %i.ua, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ak)
          to label %bb.ek unwind label %.loopexit.i, !noalias !11871

bb.ek:                                            ; preds = %bb.ej
  %.pre.i.i.i = load i64, ptr %i.al, align 8, !noalias !11872 ; 2 uses
  %i.ub = icmp eq i64 %.pre.i.i.i, 1
  br i1 %i.ub, label %.invoke.i.i.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.uc = load i64, ptr %i.dk, align 8, !noalias !11872, !noundef !21
  %i.ud = load ptr, ptr %i.ak, align 8, !noalias !11872, !nonnull !21, !align !28, !noundef !21
  br label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.el, %bb.ek, %bb.ei
  %i.ue = phi i64 [ %.pre.i.i.i, %bb.el ], [ 1, %bb.ei ], [ 1, %bb.ek ]
  %i.uf = phi ptr [ %i.ud, %bb.el ], [ inttoptr (i64 4 to ptr), %bb.ei ], [ inttoptr (i64 4 to ptr), %bb.ek ]
  %i.ug = phi i64 [ %i.uc, %bb.el ], [ 0, %bb.ei ], [ 0, %bb.ek ]
  invoke fastcc void @_ZN6brotli3enc9metablock34BrotliBuildMetaBlockGreedyInternal17h9719acd4736b0fc5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qn, i64 noundef %i.qm, i64 noundef range(i64 0, 4294967296) %i.tz, i64 noundef range(i64 0, 4294967296) %i.og, i8 noundef %i.qp, i8 noundef %i.qq, i8 noundef range(i8 0, 4) %13, i64 noundef %i.ue, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.uf, i64 noundef %i.ug, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val186.i.i, i64 noundef %.val187.i.i, i64 noundef %i.qs, ptr noalias noundef nonnull align 8 dereferenceable(264) %i.am)
          to label %_ZN6brotli3enc9metablock26BrotliBuildMetaBlockGreedy17hdfe6d4830d36e55cE.exit.i.i.i unwind label %.loopexit.i, !noalias !11871

_ZN6brotli3enc9metablock26BrotliBuildMetaBlockGreedy17hdfe6d4830d36e55cE.exit.i.i.i: ; preds = %.invoke.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !11872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !11872
  br label %bb.em

bb.em:                                            ; preds = %_ZN6brotli3enc9metablock26BrotliBuildMetaBlockGreedy17hdfe6d4830d36e55cE.exit.i.i.i, %bb.eh
  %i.uh = load i32, ptr %i.dm, align 8, !noalias !11872, !noundef !21 ; 3 uses
  %spec.store.select.i.i.i = call i32 @llvm.umin.i32(i32 %i.uh, i32 544)
  %i.ui = zext nneg i32 %spec.store.select.i.i.i to i64
  invoke fastcc void @_ZN6brotli3enc9metablock24BrotliOptimizeHistograms17hcb5893b6cb61987bE(i64 noundef %i.ui, ptr noalias noundef align 8 dereferenceable(264) %i.am)
          to label %bb.en unwind label %.loopexit.i, !noalias !11871

bb.en:                                            ; preds = %bb.em
  %i.uj = zext i32 %.sroa.012.0.i.i.i to i64      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11899)
  call void @llvm.experimental.noalias.scope.decl(metadata !11900)
  call void @llvm.experimental.noalias.scope.decl(metadata !11901)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11902
  invoke void @_ZN6brotli3enc17brotli_bit_stream24InputPairFromMaskedInput17h9911943266a08ad9E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qn, i64 noundef %i.qm, i64 noundef range(i64 0, 4294967296) %i.uj, i64 noundef range(i64 1, 4294967296) %i.qo, i64 noundef range(i64 0, 4294967296) %i.og)
          to label %.noexc37.i.i.i unwind label %.loopexit.i, !noalias !11871

.noexc37.i.i.i:                                   ; preds = %bb.en
  %i.uk = load ptr, ptr %i.h, align 8, !noalias !11902, !nonnull !21, !align !29, !noundef !21
  %i.ul = load i64, ptr %i.dn, align 8, !noalias !11902, !noundef !21
  %i.um = load ptr, ptr %i.do, align 8, !noalias !11902, !nonnull !21, !align !29, !noundef !21
  %i.un = load i64, ptr %i.dp, align 8, !noalias !11902, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11902
  %i.uo = load i8, ptr %i.dq, align 1, !range !38, !alias.scope !11900, !noalias !11903, !noundef !21
  %i.up = trunc nuw i8 %i.uo to i1
  br i1 %i.up, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %.noexc41.i.i.i, %.noexc37.i.i.i
  %i.uq = zext i32 %i.uh to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11902
  %i.ur = load i8, ptr %i.dr, align 2, !range !38, !alias.scope !11900, !noalias !11903, !noundef !21
  %i.us = trunc nuw i8 %i.ur to i1
  %i.ut = icmp ugt i32 %i.uh, 544
  %or.cond3.i.i.i.i = and i1 %i.ut, %i.us
  %spec.store.select.i.i.i.i = select i1 %or.cond3.i.i.i.i, i64 544, i64 %i.uq
  invoke void @_ZN6brotli3enc17brotli_bit_stream30StoreCompressedMetaBlockHeader17he8486a6759b6de05E(i1 noundef zeroext %.sroa.0.0.i200.i.i, i64 noundef range(i64 1, 4294967296) %i.qo, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i)
          to label %.noexc38.i.i.i unwind label %.loopexit.i, !noalias !11871

.noexc38.i.i.i:                                   ; preds = %bb.eo
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !11904
  %i.uu = call noundef align 4 dereferenceable_or_null(11272) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 11272, i64 noundef range(i64 1, 9) 4) #45, !noalias !11904 ; 14 uses
  %i.uv = icmp eq ptr %i.uu, null
  br i1 %i.uv, label %.noexc.i.i.i.i, label %bb.es

bb.ep:                                            ; preds = %.noexc37.i.i.i
  %.not.i36.i.i.i = icmp ugt i64 %i.qs, %.val187.i.i
  br i1 %.not.i36.i.i.i, label %bb.eq, label %bb.er, !prof !30

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11902
  store ptr @230, ptr %i.b, align 8, !noalias !11902
  %i.uw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.uw, align 8, !noalias !11902
  %i.ux = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ux, align 8, !noalias !11902
  %i.uy = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.uy, align 8, !noalias !11902
  %i.uz = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.uz, align 8, !noalias !11902
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @940) #46
          to label %.noexc39.i.i.i unwind label %.loopexit.split-lp.i, !noalias !11871

.noexc39.i.i.i:                                   ; preds = %bb.eq
  unreachable

bb.er:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11902
  invoke fastcc void @_ZN6brotli3enc17brotli_bit_stream21block_split_reference17ha11dced07ab4d115E(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.am)
          to label %.noexc40.i.i.i unwind label %.loopexit.i, !noalias !11871

.noexc40.i.i.i:                                   ; preds = %bb.er
  invoke fastcc void @_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h4564c46130fee7a0E(ptr noalias noundef nonnull align 1 %i.bn, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val186.i.i, i64 noundef %i.qs, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.uk, i64 noundef %i.ul, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.um, i64 noundef %i.un, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cs, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noalias noundef readonly align 8 captures(address) dereferenceable(152) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.an, i8 noundef range(i8 0, 4) %13)
          to label %.noexc41.i.i.i unwind label %.loopexit.i, !noalias !11905

.noexc41.i.i.i:                                   ; preds = %.noexc40.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11902
  br label %bb.eo

.noexc.i.i.i.i:                                   ; preds = %.noexc38.i.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 11272, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc42.i.i.i unwind label %.loopexit.split-lp.i, !noalias !11871

.noexc42.i.i.i:                                   ; preds = %.noexc.i.i.i.i
  unreachable

.thread69.loopexit.i.i.i.i:                       ; preds = %bb.fy, %bb.fv
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i.i

.thread69.loopexit.split-lp.loopexit.i.i.i.i:     ; preds = %bb.gt, %bb.gp, %.lr.ph.i34.i.i.i
  %lpad.loopexit88.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i.i

.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i: ; preds = %bb.gk, %bb.gg, %bb.ge, %bb.fo, %bb.fn
  %lpad.loopexit91.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i.i

.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.loopexit.i: ; preds = %bb.fm
  %lpad.loopexit17.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i.i

.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.loopexit.split-lp.i: ; preds = %.invoke.i.i.i.i
  %lpad.loopexit.split-lp18.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.loopexit.i.i.i.i": ; preds = %.lr.ph
  %lpad.loopexit93.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i201.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.loopexit.split-lp.i.i.i.i": ; preds = %bb.fi, %bb.fj, %bb.fk, %bb.fh, %bb.fg, %bb.ff, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey
  %lpad.loopexit.split-lp94.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i201.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i201.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.loopexit.split-lp.i.i.i.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.loopexit.i.i.i.i"
  %lpad.phi95.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit93.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.loopexit.i.i.i.i" ], [ %lpad.loopexit.split-lp94.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.loopexit.split-lp.i.i.i.i" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.uu, i64 noundef 11272, i64 noundef 4) #45, !noalias !11906
  br label %.thread.i.i.i.i

bb.es:                                            ; preds = %.noexc38.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(11272) %i.uu, i8 0, i64 11272, i1 false), !noalias !11906
  %i.va = load i64, ptr %.sroa.7.0..sroa_idx.i23.i.i.i, align 8, !alias.scope !11901, !noalias !11907, !noundef !21 ; 4 uses
  %.val66.i.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !11901, !noalias !11907, !nonnull !21, !align !29, !noundef !21 ; 2 uses
  %.val67.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i24.i.i.i, align 8, !alias.scope !11901, !noalias !11907, !noundef !21 ; 2 uses
  %.val60.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i25.i.i.i, align 8, !alias.scope !11901, !noalias !11907, !nonnull !21, !align !28, !noundef !21 ; 3 uses
  %.val61.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11901, !noalias !11907, !noundef !21 ; 3 uses
  %i.vb = load i64, ptr %i.ds, align 8, !alias.scope !11901, !noalias !11907, !noundef !21 ; 3 uses
  %i.vc = icmp eq i64 %i.vb, 0
  %i.vd = icmp eq i64 %.val61.i.i.i.i, 0
  %or.cond.i.i.i.i.i = or i1 %i.vd, %i.vc
  br i1 %or.cond.i.i.i.i.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ve = load i32, ptr %.val60.i.i.i.i, align 4, !alias.scope !11908, !noalias !11909, !noundef !21
  %i.vf = zext i32 %i.ve to i64
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.vf, %bb.et ], [ 0, %bb.es ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(852) %.sroa.16.0..sroa_idx.i.i.i.i, i8 0, i64 852, i1 false), !noalias !11902
  store ptr %.val66.i.i.i.i, ptr %i.f, align 8, !noalias !11902
  store i64 %.val67.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i30.i.i.i, align 8, !noalias !11902
  store ptr %.val60.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i31.i.i.i, align 8, !noalias !11902
  store i64 %.val61.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i32.i.i.i, align 8, !noalias !11902
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.7.0..sroa_idx.i33.i.i.i, align 8, !noalias !11902
  store i64 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 0, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 256, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 %i.va, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 %i.vb, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 1, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 0, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 0, ptr %.sroa.2015.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 0, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  %.val64.i.i.i.i = load ptr, ptr %i.ct, align 8, !alias.scope !11901, !noalias !11907, !nonnull !21, !align !29, !noundef !21
  %.val65.i.i.i.i = load i64, ptr %.sroa.429.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11901, !noalias !11907, !noundef !21
  %.val58.i.i.i.i = load ptr, ptr %.sroa.530.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11901, !noalias !11907, !nonnull !21, !align !28, !noundef !21 ; 2 uses
  %.val59.i.i.i.i = load i64, ptr %.sroa.631.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11901, !noalias !11907, !noundef !21 ; 2 uses
  %i.vg = load i64, ptr %i.dt, align 8, !alias.scope !11901, !noalias !11907, !noundef !21
  %i.vh = load <2 x i64>, ptr %.sroa.732.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11901, !noalias !11907
  %i.vi = icmp eq i64 %i.vg, 0
  %i.vj = icmp eq i64 %.val59.i.i.i.i, 0
  %or.cond.i98.i.i.i.i = or i1 %i.vj, %i.vi
  br i1 %or.cond.i98.i.i.i.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.vk = load i32, ptr %.val58.i.i.i.i, align 4, !alias.scope !11910, !noalias !11911, !noundef !21
  %i.vl = zext i32 %i.vk to i64
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.sroa.0.0.i99.i.i.i.i = phi i64 [ %i.vl, %bb.ev ], [ 0, %bb.eu ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(852) %.sroa.1629.0..sroa_idx.i.i.i.i, i8 0, i64 852, i1 false), !noalias !11902
  store ptr %.val64.i.i.i.i, ptr %i.e, align 8, !noalias !11902
  store i64 %.val65.i.i.i.i, ptr %.sroa.417.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store ptr %.val58.i.i.i.i, ptr %.sroa.518.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 %.val59.i.i.i.i, ptr %.sroa.619.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.720.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 0, ptr %.sroa.821.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.922.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 0, ptr %.sroa.1023.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 704, ptr %.sroa.1124.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store <2 x i64> %i.vh, ptr %.sroa.1225.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 1, ptr %.sroa.1427.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 0, ptr %.sroa.1528.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 0, ptr %.sroa.2034.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 %.sroa.0.0.i99.i.i.i.i, ptr %.sroa.2135.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 0, ptr %.sroa.2236.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  %.val62.i.i.i.i = load ptr, ptr %i.cu, align 8, !alias.scope !11901, !noalias !11907, !nonnull !21, !align !29, !noundef !21
  %.val63.i.i.i.i = load i64, ptr %.sroa.434.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11901, !noalias !11907, !noundef !21
  %.val56.i.i.i.i = load ptr, ptr %.sroa.535.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11901, !noalias !11907, !nonnull !21, !align !28, !noundef !21 ; 2 uses
  %.val57.i.i.i.i = load i64, ptr %.sroa.636.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11901, !noalias !11907, !noundef !21 ; 2 uses
  %i.vm = load i64, ptr %i.du, align 8, !alias.scope !11901, !noalias !11907, !noundef !21
  %i.vn = load <2 x i64>, ptr %.sroa.737.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11901, !noalias !11907
  %i.vo = icmp eq i64 %i.vm, 0
  %i.vp = icmp eq i64 %.val57.i.i.i.i, 0
  %or.cond.i106.i.i.i.i = or i1 %i.vp, %i.vo
  br i1 %or.cond.i106.i.i.i.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.vq = load i32, ptr %.val56.i.i.i.i, align 4, !alias.scope !11912, !noalias !11913, !noundef !21
  %i.vr = zext i32 %i.vq to i64
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.sroa.0.0.i107.i.i.i.i = phi i64 [ %i.vr, %bb.ex ], [ 0, %bb.ew ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(852) %.sroa.1650.0..sroa_idx.i.i.i.i, i8 0, i64 852, i1 false), !noalias !11902
  store ptr %.val62.i.i.i.i, ptr %i.d, align 8, !noalias !11902
  store i64 %.val63.i.i.i.i, ptr %.sroa.438.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store ptr %.val56.i.i.i.i, ptr %.sroa.539.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 %.val57.i.i.i.i, ptr %.sroa.640.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.741.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 0, ptr %.sroa.842.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.943.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 0, ptr %.sroa.1044.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 %spec.store.select.i.i.i.i, ptr %.sroa.1145.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store <2 x i64> %i.vn, ptr %.sroa.1246.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 1, ptr %.sroa.1448.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 0, ptr %.sroa.1549.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 0, ptr %.sroa.2055.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 %.sroa.0.0.i107.i.i.i.i, ptr %.sroa.2156.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  store i64 0, ptr %.sroa.2257.0..sroa_idx.i.i.i.i, align 8, !noalias !11902
  invoke void @_ZN6brotli3enc17brotli_bit_stream27BuildAndStoreBlockSplitCode17hb0bc1945d8ec6383E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val66.i.i.i.i, i64 noundef %.val67.i.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val60.i.i.i.i, i64 noundef %.val61.i.i.i.i, i64 noundef %i.vb, i64 noundef %i.va, ptr noalias noundef nonnull align 4 %i.uu, i64 noundef 1409, ptr noalias noundef nonnull align 8 dereferenceable(872) %.sroa.14.0..sroa_idx.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i)
          to label %bb.ez unwind label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.loopexit.split-lp.i.i.i.i", !noalias !11906

bb.ez:                                            ; preds = %bb.ey
  %i.vs = load ptr, ptr %i.e, align 8, !noalias !11902, !nonnull !21, !align !29, !noundef !21
  %i.vt = load i64, ptr %.sroa.417.0..sroa_idx.i.i.i.i, align 8, !noalias !11902, !noundef !21
  %i.vu = load ptr, ptr %.sroa.518.0..sroa_idx.i.i.i.i, align 8, !noalias !11902, !nonnull !21, !align !28, !noundef !21
  %i.vv = load i64, ptr %.sroa.619.0..sroa_idx.i.i.i.i, align 8, !noalias !11902, !noundef !21
  %i.vw = load i64, ptr %.sroa.1326.0..sroa_idx.i.i.i.i, align 8, !noalias !11902, !noundef !21
  %i.vx = load i64, ptr %.sroa.1225.0..sroa_idx.i.i.i.i, align 8, !noalias !11902, !noundef !21
  invoke void @_ZN6brotli3enc17brotli_bit_stream27BuildAndStoreBlockSplitCode17hb0bc1945d8ec6383E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.vs, i64 noundef %i.vt, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.vu, i64 noundef %i.vv, i64 noundef %i.vw, i64 noundef %i.vx, ptr noalias noundef nonnull align 4 %i.uu, i64 noundef 1409, ptr noalias noundef nonnull align 8 dereferenceable(872) %.sroa.1427.0..sroa_idx.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i)
          to label %bb.fa unwind label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.loopexit.split-lp.i.i.i.i", !noalias !11906

bb.fa:                                            ; preds = %bb.ez
  %i.vy = load ptr, ptr %i.d, align 8, !noalias !11902, !nonnull !21, !align !29, !noundef !21
  %i.vz = load i64, ptr %.sroa.438.0..sroa_idx.i.i.i.i, align 8, !noalias !11902, !noundef !21
  %i.wa = load ptr, ptr %.sroa.539.0..sroa_idx.i.i.i.i, align 8, !noalias !11902, !nonnull !21, !align !28, !noundef !21
  %i.wb = load i64, ptr %.sroa.640.0..sroa_idx.i.i.i.i, align 8, !noalias !11902, !noundef !21
  %i.wc = load i64, ptr %.sroa.1347.0..sroa_idx.i.i.i.i, align 8, !noalias !11902, !noundef !21
  %i.wd = load i64, ptr %.sroa.1246.0..sroa_idx.i.i.i.i, align 8, !noalias !11902, !noundef !21
  invoke void @_ZN6brotli3enc17brotli_bit_stream27BuildAndStoreBlockSplitCode17hb0bc1945d8ec6383E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.vy, i64 noundef %i.vz, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.wa, i64 noundef %i.wb, i64 noundef %i.wc, i64 noundef %i.wd, ptr noalias noundef nonnull align 4 %i.uu, i64 noundef 1409, ptr noalias noundef nonnull align 8 dereferenceable(872) %.sroa.1448.0..sroa_idx.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i)
          to label %bb.fb unwind label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.loopexit.split-lp.i.i.i.i", !noalias !11906

bb.fb:                                            ; preds = %bb.fa
  %i.we = load i32, ptr %i.dv, align 8, !alias.scope !11900, !noalias !11903, !noundef !21 ; 2 uses
  %i.wf = zext i32 %i.we to i64
  invoke void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 2, i64 noundef %i.wf, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i)
          to label %bb.fc unwind label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.loopexit.split-lp.i.i.i.i", !noalias !11906

bb.fc:                                            ; preds = %bb.fb
  %i.wg = load i32, ptr %i.dw, align 4, !alias.scope !11900, !noalias !11903, !noundef !21
  %i.wh = and i32 %i.we, 31
  %i.wi = lshr i32 %i.wg, %i.wh
  %i.wj = zext i32 %i.wi to i64
  invoke void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef 4, i64 noundef %i.wj, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i)
          to label %.preheader.i.i.i.i.preheader unwind label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.loopexit.split-lp.i.i.i.i", !noalias !11906

.preheader.i.i.i.i.preheader:                     ; preds = %bb.fc
  %exitcond.not.i.i.i.i2220 = icmp eq i64 %i.va, 0
  br i1 %exitcond.not.i.i.i.i2220, label %.preheader.i.i.i.i._crit_edge, label %.lr.ph

.preheader.i.i.i.i:                               ; preds = %.lr.ph
end_hunk_3
begin_hunk_4_@"_ZN6brotli3enc6writer64CompressorWriterCustomIo$LT$ErrType$C$W$C$BufferType$C$Alloc$GT$14flush_or_close17h8a3a9b66814490d8E":bb.a
"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i124.i.i.i.i": ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17hdf0ac19196685646E.exit123.i.i.i.i"
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.741.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11920, !noalias !11902, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i, i64 noundef 1) #45, !noalias !11921
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i.i.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i124.i.i.i.i", %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..entropy_encode..HuffmanTree$GT$$GT$17hdf0ac19196685646E.exit123.i.i.i.i"
  %.val3.i.i.i.i.i = load i64, ptr %.sroa.1044.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11920, !noalias !11902, !noundef !21 ; 2 uses
  %i.xt = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.xt, label %"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E.exit.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i.i.i.i.i": ; preds = %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i.i.i.i.i"
  %.val2.i.i.i.i.i = load ptr, ptr %.sroa.943.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11920, !noalias !11902, !nonnull !21, !noundef !21
  %i.xu = shl nuw nsw i64 %.val3.i.i.i.i.i, 1
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i, i64 noundef %i.xu, i64 noundef 2) #45, !noalias !11921
  br label %"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E.exit.i.i.i.i"

"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i.i.i.i.i", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11902
  call void @llvm.experimental.noalias.scope.decl(metadata !11922)
  %.val1.i125.i.i.i.i = load i64, ptr %.sroa.821.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11922, !noalias !11902, !noundef !21 ; 2 uses
  %i.xv = icmp eq i64 %.val1.i125.i.i.i.i, 0
  br i1 %i.xv, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i128.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i126.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i126.i.i.i.i": ; preds = %"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E.exit.i.i.i.i"
  %.val.i127.i.i.i.i = load ptr, ptr %.sroa.720.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11922, !noalias !11902, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i127.i.i.i.i, i64 noundef %.val1.i125.i.i.i.i, i64 noundef 1) #45, !noalias !11923
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i128.i.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i128.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i126.i.i.i.i", %"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E.exit.i.i.i.i"
  %.val3.i129.i.i.i.i = load i64, ptr %.sroa.1023.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11922, !noalias !11902, !noundef !21 ; 2 uses
  %i.xw = icmp eq i64 %.val3.i129.i.i.i.i, 0
  br i1 %i.xw, label %"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E.exit132.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i130.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i130.i.i.i.i": ; preds = %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i128.i.i.i.i"
  %.val2.i131.i.i.i.i = load ptr, ptr %.sroa.922.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11922, !noalias !11902, !nonnull !21, !noundef !21
  %i.xx = shl nuw nsw i64 %.val3.i129.i.i.i.i, 1
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i131.i.i.i.i, i64 noundef %i.xx, i64 noundef 2) #45, !noalias !11923
  br label %"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E.exit132.i.i.i.i"

"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E.exit132.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i130.i.i.i.i", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i128.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11902
  call void @llvm.experimental.noalias.scope.decl(metadata !11924)
  %.val1.i133.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11924, !noalias !11902, !noundef !21 ; 2 uses
  %i.xy = icmp eq i64 %.val1.i133.i.i.i.i, 0
  br i1 %i.xy, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i136.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i134.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i134.i.i.i.i": ; preds = %"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E.exit132.i.i.i.i"
  %.val.i135.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i33.i.i.i, align 8, !alias.scope !11924, !noalias !11902, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i135.i.i.i.i, i64 noundef %.val1.i133.i.i.i.i, i64 noundef 1) #45, !noalias !11925
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i136.i.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i136.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i134.i.i.i.i", %"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E.exit132.i.i.i.i"
  %.val3.i137.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11924, !noalias !11902, !noundef !21 ; 2 uses
  %i.xz = icmp eq i64 %.val3.i137.i.i.i.i, 0
  br i1 %i.xz, label %bb.gu, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i138.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i138.i.i.i.i": ; preds = %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i136.i.i.i.i"
  %.val2.i139.i.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11924, !noalias !11902, !nonnull !21, !noundef !21
  %i.ya = shl nuw nsw i64 %.val3.i137.i.i.i.i, 1
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i139.i.i.i.i, i64 noundef %i.ya, i64 noundef 2) #45, !noalias !11925
  br label %bb.gu

bb.fn:                                            ; preds = %bb.fl
  %i.yb = getelementptr inbounds nuw [16 x i8], ptr %.val186.i.i, i64 %.sroa.030.0187.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.yb, i64 16, i1 false), !noalias !11926
  %i.yc = load i16, ptr %i.dx, align 4, !noalias !11902, !noundef !21 ; 3 uses
  %i.yd = zext i16 %i.yc to i64
  invoke fastcc void @"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h3861b1c553be499bE"(ptr noalias noundef align 8 dereferenceable(984) %i.e, i64 noundef %i.yd, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i)
          to label %bb.fo unwind label %.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, !noalias !11906

.invoke.i.i.i.i:                                  ; preds = %bb.gb, %bb.ga, %bb.fl, %bb.gs, %bb.gr, %bb.gq, %bb.go, %bb.gn, %bb.gl, %bb.fx, %bb.fw, %bb.fu, %bb.ft, %.lr.ph185.i.i.i.i
  %i.ye = phi i64 [ %i.abl, %bb.go ], [ %i.zq, %bb.fx ], [ %i.yy, %bb.ft ], [ %i.yy, %bb.fu ], [ %i.zq, %bb.fw ], [ %i.yl, %.lr.ph185.i.i.i.i ], [ %i.acc, %bb.gq ], [ %i.acj, %bb.gr ], [ %i.acj, %bb.gs ], [ %i.abl, %bb.gn ], [ %i.abd, %bb.gl ], [ %.sroa.030.0187.i.i.i.i, %bb.fl ], [ %i.aaf, %bb.ga ], [ %i.aak, %bb.gb ]
  %i.yf = phi i64 [ %i.abo, %bb.go ], [ %.val9.i.i.i.i.i, %bb.fx ], [ %i.yz, %bb.ft ], [ %i.zb, %bb.fu ], [ %.val7.i.i.i.i.i, %bb.fw ], [ %i.qm, %.lr.ph185.i.i.i.i ], [ %.val49.i.i.i.i, %bb.gq ], [ %.val9.i148.i.i.i.i, %bb.gr ], [ %.val11.i.i.i.i.i, %bb.gs ], [ %i.abm, %bb.gn ], [ %i.qm, %bb.gl ], [ %.val187.i.i, %bb.fl ], [ %i.qm, %bb.ga ], [ %i.qm, %bb.gb ]
  %i.yg = phi ptr [ @980, %bb.go ], [ @978, %bb.fx ], [ @975, %bb.ft ], [ @976, %bb.fu ], [ @977, %bb.fw ], [ @942, %.lr.ph185.i.i.i.i ], [ @981, %bb.gq ], [ @982, %bb.gr ], [ @983, %bb.gs ], [ @979, %bb.gn ], [ @945, %bb.gl ], [ @941, %bb.fl ], [ @943, %bb.ga ], [ @944, %bb.gb ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ye, i64 noundef %i.yf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yg) #46
          to label %.cont.i.i.i.i unwind label %.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.loopexit.split-lp.i, !noalias !11906

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.fo:                                            ; preds = %bb.fn
  invoke void @_ZN6brotli3enc17brotli_bit_stream17StoreCommandExtra17h53e18515e04feea9E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i)
          to label %bb.fp unwind label %.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, !noalias !11906

bb.fp:                                            ; preds = %bb.fo
  %i.yh = load i32, ptr %i.c, align 4, !noalias !11902, !noundef !21 ; 3 uses
  %i.yi = icmp eq i32 %i.yh, 0                    ; 2 uses
  br i1 %i.wm, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  br i1 %i.yi, label %.loopexit.i.i.i.i, label %.lr.ph185.preheader.i.i.i.i

.lr.ph185.preheader.i.i.i.i:                      ; preds = %bb.fq
  %i.yj = zext i32 %i.yh to i64
  br label %.lr.ph185.i.i.i.i

bb.fr:                                            ; preds = %bb.fp
  br i1 %i.yi, label %.loopexit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.fr
  %i.yk = zext i32 %i.yh to i64
  br label %.lr.ph.i34.i.i.i

.lr.ph185.i.i.i.i:                                ; preds = %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h3861b1c553be499bE.exit.i.i.i.i", %.lr.ph185.preheader.i.i.i.i
  %.sroa.06.1184.i.i.i.i = phi i64 [ %i.zy, %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h3861b1c553be499bE.exit.i.i.i.i" ], [ %.sroa.06.0188.i.i.i.i, %.lr.ph185.preheader.i.i.i.i ] ; 2 uses
  %.sroa.020.0183.i.i.i.i = phi i64 [ %i.zz, %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h3861b1c553be499bE.exit.i.i.i.i" ], [ %i.yj, %.lr.ph185.preheader.i.i.i.i ]
  %i.yl = and i64 %.sroa.06.1184.i.i.i.i, %i.og   ; 3 uses
  %i.ym = icmp ult i64 %i.yl, %i.qm
  br i1 %i.ym, label %bb.fs, label %.invoke.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$25store_symbol_with_context17h2f95a2c07fd3125eE.exit.i.i.i.i", %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h3861b1c553be499bE.exit.i.i.i.i", %bb.fr, %bb.fq
  %.sroa.06.2.i.i.i.i = phi i64 [ %i.zy, %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h3861b1c553be499bE.exit.i.i.i.i" ], [ %.sroa.06.0188.i.i.i.i, %bb.fq ], [ %.sroa.06.0188.i.i.i.i, %bb.fr ], [ %i.acr, %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$25store_symbol_with_context17h2f95a2c07fd3125eE.exit.i.i.i.i" ]
  %.sroa.05.1.i.i.i.i = phi i8 [ %.sroa.05.0189.i.i.i.i, %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h3861b1c553be499bE.exit.i.i.i.i" ], [ %.sroa.05.0189.i.i.i.i, %bb.fq ], [ %.sroa.05.0189.i.i.i.i, %bb.fr ], [ %.sroa.0.2180.i.i.i.i, %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$25store_symbol_with_context17h2f95a2c07fd3125eE.exit.i.i.i.i" ]
  %.sroa.0.1.i.i.i.i = phi i8 [ %.sroa.0.0190.i.i.i.i, %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h3861b1c553be499bE.exit.i.i.i.i" ], [ %.sroa.0.0190.i.i.i.i, %bb.fq ], [ %.sroa.0.0190.i.i.i.i, %bb.fr ], [ %i.abg, %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$25store_symbol_with_context17h2f95a2c07fd3125eE.exit.i.i.i.i" ]
  %i.yn = load i32, ptr %i.dy, align 4, !noalias !11902, !noundef !21
  %i.yo = and i32 %i.yn, 33554431                 ; 2 uses
  %i.yp = zext nneg i32 %i.yo to i64
  %i.yq = add i64 %.sroa.06.2.i.i.i.i, %i.yp      ; 3 uses
  %i.yr = icmp eq i32 %i.yo, 0
  br i1 %i.yr, label %bb.fz, label %bb.ga

bb.fs:                                            ; preds = %.lr.ph185.i.i.i.i
  %i.ys = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.yl
  %i.yt = load i8, ptr %i.ys, align 1, !alias.scope !11927, !noalias !11928, !noundef !21
  %i.yu = zext i8 %i.yt to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !11929)
  %i.yv = load i64, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11929, !noalias !11930, !noundef !21 ; 2 uses
  %i.yw = icmp eq i64 %i.yv, 0
  br i1 %i.yw, label %bb.ft, label %bb.fw

bb.ft:                                            ; preds = %bb.fs
  %i.yx = load i64, ptr %.sroa.2015.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11929, !noalias !11930, !noundef !21
  %i.yy = add i64 %i.yx, 1                        ; 7 uses
  store i64 %i.yy, ptr %.sroa.2015.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11929, !noalias !11930
  %i.yz = load i64, ptr %.sroa.6.0..sroa_idx.i32.i.i.i, align 8, !alias.scope !11929, !noalias !11930, !noundef !21 ; 2 uses
  %i.za = icmp ult i64 %i.yy, %i.yz
  br i1 %i.za, label %bb.fu, label %.invoke.i.i.i.i

bb.fu:                                            ; preds = %bb.ft
  %i.zb = load i64, ptr %.sroa.4.0..sroa_idx.i30.i.i.i, align 8, !alias.scope !11929, !noalias !11930, !noundef !21 ; 2 uses
  %i.zc = icmp ult i64 %i.yy, %i.zb
  br i1 %i.zc, label %bb.fv, label %.invoke.i.i.i.i

bb.fv:                                            ; preds = %bb.fu
  %i.zd = load ptr, ptr %.sroa.5.0..sroa_idx.i31.i.i.i, align 8, !alias.scope !11929, !noalias !11930, !nonnull !21, !align !28, !noundef !21
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.zd, i64 %i.yy
  %i.zf = load i32, ptr %i.ze, align 4, !noalias !11931, !noundef !21 ; 2 uses
  %i.zg = load ptr, ptr %i.f, align 8, !alias.scope !11929, !noalias !11930, !nonnull !21, !align !29, !noundef !21
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.yy
  %i.zi = load i8, ptr %i.zh, align 1, !noalias !11931, !noundef !21 ; 2 uses
  %i.zj = zext i32 %i.zf to i64
  store i64 %i.zj, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11929, !noalias !11930
  %i.zk = zext i8 %i.zi to i64
  %i.zl = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11929, !noalias !11930, !noundef !21
  %i.zm = mul i64 %i.zl, %i.zk
  store i64 %i.zm, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11929, !noalias !11930
  invoke void @_ZN6brotli3enc17brotli_bit_stream16StoreBlockSwitch17h099ad7a43c193500E(ptr noalias noundef nonnull align 8 dereferenceable(872) %.sroa.14.0..sroa_idx.i.i.i.i, i32 noundef %i.zf, i8 noundef %i.zi, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i)
          to label %.noexc143.i.i.i.i unwind label %.thread69.loopexit.i.i.i.i, !noalias !11906

.noexc143.i.i.i.i:                                ; preds = %bb.fv
  %.pre.i.i.i.i.i = load i64, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11929, !noalias !11930
  br label %bb.fw

bb.fw:                                            ; preds = %.noexc143.i.i.i.i, %bb.fs
  %i.zn = phi i64 [ %i.yv, %bb.fs ], [ %.pre.i.i.i.i.i, %.noexc143.i.i.i.i ]
  %i.zo = add i64 %i.zn, -1
  store i64 %i.zo, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11929, !noalias !11930
  %i.zp = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11929, !noalias !11930, !noundef !21
  %i.zq = add i64 %i.zp, %i.yu                    ; 6 uses
  %.val7.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11929, !noalias !11930, !noundef !21 ; 2 uses
  %i.zr = icmp ult i64 %i.zq, %.val7.i.i.i.i.i
  br i1 %i.zr, label %bb.fx, label %.invoke.i.i.i.i

bb.fx:                                            ; preds = %bb.fw
  %.val9.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11929, !noalias !11930, !noundef !21 ; 2 uses
  %i.zs = icmp ult i64 %i.zq, %.val9.i.i.i.i.i
  br i1 %i.zs, label %bb.fy, label %.invoke.i.i.i.i

bb.fy:                                            ; preds = %bb.fx
  %.val8.i.i.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11929, !noalias !11930, !nonnull !21, !align !27, !noundef !21
  %.val.i141.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i33.i.i.i, align 8, !alias.scope !11929, !noalias !11930, !nonnull !21, !align !29, !noundef !21
  %i.zt = getelementptr inbounds nuw i8, ptr %.val.i141.i.i.i.i, i64 %i.zq
  %i.zu = load i8, ptr %i.zt, align 1, !noalias !11906, !noundef !21
  %i.zv = getelementptr inbounds nuw [2 x i8], ptr %.val8.i.i.i.i.i, i64 %i.zq
  %i.zw = load i16, ptr %i.zv, align 2, !noalias !11906, !noundef !21
  %i.zx = zext i16 %i.zw to i64
  invoke void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.zu, i64 noundef %i.zx, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i)
          to label %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h3861b1c553be499bE.exit.i.i.i.i" unwind label %.thread69.loopexit.i.i.i.i, !noalias !11906

"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h3861b1c553be499bE.exit.i.i.i.i": ; preds = %bb.fy
  %i.zy = add i64 %.sroa.06.1184.i.i.i.i, 1       ; 2 uses
  %i.zz = add nsw i64 %.sroa.020.0183.i.i.i.i, -1 ; 2 uses
  %i.aaa = icmp eq i64 %i.zz, 0
  br i1 %i.aaa, label %.loopexit.i.i.i.i, label %.lr.ph185.i.i.i.i

.lr.ph.i34.i.i.i:                                 ; preds = %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$25store_symbol_with_context17h2f95a2c07fd3125eE.exit.i.i.i.i", %.lr.ph.preheader.i.i.i.i
  %.sroa.0.2180.i.i.i.i = phi i8 [ %i.abg, %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$25store_symbol_with_context17h2f95a2c07fd3125eE.exit.i.i.i.i" ], [ %.sroa.0.0190.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.sroa.05.2179.i.i.i.i = phi i8 [ %.sroa.0.2180.i.i.i.i, %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$25store_symbol_with_context17h2f95a2c07fd3125eE.exit.i.i.i.i" ], [ %.sroa.05.0189.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.06.3178.i.i.i.i = phi i64 [ %i.acr, %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$25store_symbol_with_context17h2f95a2c07fd3125eE.exit.i.i.i.i" ], [ %.sroa.06.0188.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.sroa.022.0177.i.i.i.i = phi i64 [ %i.acs, %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$25store_symbol_with_context17h2f95a2c07fd3125eE.exit.i.i.i.i" ], [ %i.yk, %.lr.ph.preheader.i.i.i.i ]
  %i.aab = invoke noundef i8 @_ZN6brotli3enc17brotli_bit_stream7Context17h5fcc9e338d36559dE(i8 noundef %.sroa.0.2180.i.i.i.i, i8 noundef %.sroa.05.2179.i.i.i.i, i8 noundef range(i8 0, 4) %13)
          to label %bb.gl unwind label %.thread69.loopexit.split-lp.loopexit.i.i.i.i, !noalias !11906

bb.fz:                                            ; preds = %bb.gg, %bb.gc, %.loopexit.i.i.i.i
  %.sroa.05.3.i.i.i.i = phi i8 [ %.sroa.05.1.i.i.i.i, %.loopexit.i.i.i.i ], [ %i.aai, %bb.gg ], [ %i.aai, %bb.gc ]
  %.sroa.0.3.i.i.i.i = phi i8 [ %.sroa.0.1.i.i.i.i, %.loopexit.i.i.i.i ], [ %i.aan, %bb.gg ], [ %i.aan, %bb.gc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11902
  %i.aac = icmp ult i64 %.sroa.030.1191.i.i.i.i, %i.qs ; 2 uses
  %i.aad = zext i1 %i.aac to i64
  %.sroa.030.1.i.i.i.i = add nuw i64 %.sroa.030.1191.i.i.i.i, %i.aad
  br i1 %i.aac, label %bb.fl, label %._crit_edge.i35.i.i.i

bb.ga:                                            ; preds = %.loopexit.i.i.i.i
  %i.aae = add i64 %i.yq, 4294967294
  %i.aaf = and i64 %i.aae, %i.og                  ; 3 uses
  %i.aag = icmp ult i64 %i.aaf, %i.qm
  br i1 %i.aag, label %bb.gb, label %.invoke.i.i.i.i

bb.gb:                                            ; preds = %bb.ga
  %i.aah = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.aaf
  %i.aai = load i8, ptr %i.aah, align 1, !alias.scope !11927, !noalias !11928, !noundef !21 ; 2 uses
  %i.aaj = add i64 %i.yq, 4294967295
  %i.aak = and i64 %i.aaj, %i.og                  ; 3 uses
  %i.aal = icmp ult i64 %i.aak, %i.qm
  br i1 %i.aal, label %bb.gc, label %.invoke.i.i.i.i

bb.gc:                                            ; preds = %bb.gb
  %i.aam = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.aak
  %i.aan = load i8, ptr %i.aam, align 1, !alias.scope !11927, !noalias !11928, !noundef !21 ; 2 uses
  %i.aao = zext i16 %i.yc to i32                  ; 2 uses
  %i.aap = icmp ugt i16 %i.yc, 127
  br i1 %i.aap, label %bb.gd, label %bb.fz

bb.gd:                                            ; preds = %bb.gc
  %i.aaq = load i16, ptr %i.dz, align 2, !noalias !11902, !noundef !21 ; 2 uses
  %i.aar = and i16 %i.aaq, 1023
  %i.aas = zext nneg i16 %i.aar to i64            ; 2 uses
  %i.aat = lshr i16 %i.aaq, 10
  %i.aau = load i32, ptr %i.ea, align 4, !noalias !11902, !noundef !21
  %i.aav = zext i32 %i.aau to i64
  br i1 %i.wq, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  invoke fastcc void @"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$12store_symbol17h3861b1c553be499bE"(ptr noalias noundef align 8 dereferenceable(984) %i.d, i64 noundef %i.aas, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i)
          to label %bb.gg unwind label %.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, !noalias !11906

bb.gf:                                            ; preds = %bb.gd
  %i.aaw = lshr i32 %i.aao, 6                     ; 2 uses
  %i.aax = and i32 %i.aao, 7                      ; 3 uses
  switch i32 %i.aaw, label %bb.gi [
    i32 4, label %bb.gh
    i32 2, label %bb.gh
  ]

bb.gg:                                            ; preds = %bb.gk, %bb.ge
  %i.aay = trunc nuw nsw i16 %i.aat to i8
  invoke void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.aay, i64 noundef %i.aav, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i)
          to label %bb.fz unwind label %.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, !noalias !11906

bb.gh:                                            ; preds = %bb.gf, %bb.gf
  %.old.i.i.i.i = icmp samesign ult i32 %i.aax, 3
  br i1 %.old.i.i.i.i, label %bb.gj, label %bb.gk

bb.gi:                                            ; preds = %bb.gf
  %i.aaz = icmp eq i32 %i.aaw, 7
  %i.aba = icmp samesign ult i32 %i.aax, 3
  %or.cond.i.i.i.i = and i1 %i.aaz, %i.aba
  br i1 %or.cond.i.i.i.i, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %i.abb = zext nneg i32 %i.aax to i64
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi, %bb.gh
  %.sroa.024.0.i.i.i.i = phi i64 [ %i.abb, %bb.gj ], [ 3, %bb.gi ], [ 3, %bb.gh ]
  invoke fastcc void @"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$25store_symbol_with_context17h2f95a2c07fd3125eE"(ptr noalias noundef align 8 dereferenceable(984) %i.d, i64 noundef %i.aas, i64 noundef %.sroa.024.0.i.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val50.i.i.i.i, i64 noundef %.val51.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i, i64 noundef 2)
          to label %bb.gg unwind label %.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, !noalias !11906

bb.gl:                                            ; preds = %.lr.ph.i34.i.i.i
  %i.abc = zext i8 %i.aab to i64
  %i.abd = and i64 %.sroa.06.3178.i.i.i.i, %i.og  ; 3 uses
  %i.abe = icmp ult i64 %i.abd, %i.qm
  br i1 %i.abe, label %bb.gm, label %.invoke.i.i.i.i

bb.gm:                                            ; preds = %bb.gl
  %i.abf = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.abd
  %i.abg = load i8, ptr %i.abf, align 1, !alias.scope !11927, !noalias !11928, !noundef !21 ; 3 uses
  %i.abh = zext i8 %i.abg to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !11932)
  call void @llvm.experimental.noalias.scope.decl(metadata !11933)
  %i.abi = load i64, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11932, !noalias !11934, !noundef !21 ; 2 uses
  %i.abj = icmp eq i64 %i.abi, 0
  br i1 %i.abj, label %bb.gn, label %bb.gq

bb.gn:                                            ; preds = %bb.gm
  %i.abk = load i64, ptr %.sroa.2015.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11932, !noalias !11934, !noundef !21
  %i.abl = add i64 %i.abk, 1                      ; 7 uses
  store i64 %i.abl, ptr %.sroa.2015.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11932, !noalias !11934
  %i.abm = load i64, ptr %.sroa.6.0..sroa_idx.i32.i.i.i, align 8, !alias.scope !11932, !noalias !11934, !noundef !21 ; 2 uses
  %i.abn = icmp ult i64 %i.abl, %i.abm
  br i1 %i.abn, label %bb.go, label %.invoke.i.i.i.i

bb.go:                                            ; preds = %bb.gn
  %i.abo = load i64, ptr %.sroa.4.0..sroa_idx.i30.i.i.i, align 8, !alias.scope !11932, !noalias !11934, !noundef !21 ; 2 uses
  %i.abp = icmp ult i64 %i.abl, %i.abo
  br i1 %i.abp, label %bb.gp, label %.invoke.i.i.i.i

bb.gp:                                            ; preds = %bb.go
  %i.abq = load ptr, ptr %.sroa.5.0..sroa_idx.i31.i.i.i, align 8, !alias.scope !11932, !noalias !11934, !nonnull !21, !align !28, !noundef !21
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.abq, i64 %i.abl
  %i.abs = load i32, ptr %i.abr, align 4, !noalias !11935, !noundef !21 ; 2 uses
  %i.abt = load ptr, ptr %i.f, align 8, !alias.scope !11932, !noalias !11934, !nonnull !21, !align !29, !noundef !21
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 %i.abl
  %i.abv = load i8, ptr %i.abu, align 1, !noalias !11935, !noundef !21 ; 2 uses
  %i.abw = zext i32 %i.abs to i64
  store i64 %i.abw, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11932, !noalias !11934
  %i.abx = zext i8 %i.abv to i64
  %i.aby = shl nuw nsw i64 %i.abx, 6
  store i64 %i.aby, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11932, !noalias !11934
  invoke void @_ZN6brotli3enc17brotli_bit_stream16StoreBlockSwitch17h099ad7a43c193500E(ptr noalias noundef nonnull align 8 dereferenceable(872) %.sroa.14.0..sroa_idx.i.i.i.i, i32 noundef %i.abs, i8 noundef %i.abv, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i)
          to label %.noexc152.i.i.i.i unwind label %.thread69.loopexit.split-lp.loopexit.i.i.i.i, !noalias !11906

.noexc152.i.i.i.i:                                ; preds = %bb.gp
  %.pre.i150.i.i.i.i = load i64, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11932, !noalias !11934
  br label %bb.gq

bb.gq:                                            ; preds = %.noexc152.i.i.i.i, %bb.gm
  %i.abz = phi i64 [ %i.abi, %bb.gm ], [ %.pre.i150.i.i.i.i, %.noexc152.i.i.i.i ]
  %i.aca = add i64 %i.abz, -1
  store i64 %i.aca, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11932, !noalias !11934
  %i.acb = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11932, !noalias !11934, !noundef !21
  %i.acc = add i64 %i.acb, %i.abc                 ; 3 uses
  %i.acd = icmp ult i64 %i.acc, %.val49.i.i.i.i
  br i1 %i.acd, label %bb.gr, label %.invoke.i.i.i.i

bb.gr:                                            ; preds = %bb.gq
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i, i64 %i.acc
  %i.acf = load i32, ptr %i.ace, align 4, !alias.scope !11933, !noalias !11936, !noundef !21
  %i.acg = zext i32 %i.acf to i64
  %i.ach = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11932, !noalias !11934, !noundef !21
  %i.aci = mul i64 %i.ach, %i.acg
  %i.acj = add i64 %i.aci, %i.abh                 ; 6 uses
  %.val9.i148.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11932, !noalias !11934, !noundef !21 ; 2 uses
  %i.ack = icmp ult i64 %i.acj, %.val9.i148.i.i.i.i
  br i1 %i.ack, label %bb.gs, label %.invoke.i.i.i.i

bb.gs:                                            ; preds = %bb.gr
  %.val11.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11932, !noalias !11934, !noundef !21 ; 2 uses
  %i.acl = icmp ult i64 %i.acj, %.val11.i.i.i.i.i
  br i1 %i.acl, label %bb.gt, label %.invoke.i.i.i.i

bb.gt:                                            ; preds = %bb.gs
  %.val10.i.i.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !alias.scope !11932, !noalias !11934, !nonnull !21, !align !27, !noundef !21
  %.val.i149.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i33.i.i.i, align 8, !alias.scope !11932, !noalias !11934, !nonnull !21, !align !29, !noundef !21
  %i.acm = getelementptr inbounds nuw i8, ptr %.val.i149.i.i.i.i, i64 %i.acj
  %i.acn = load i8, ptr %i.acm, align 1, !noalias !11937, !noundef !21
  %i.aco = getelementptr inbounds nuw [2 x i8], ptr %.val10.i.i.i.i.i, i64 %i.acj
  %i.acp = load i16, ptr %i.aco, align 2, !noalias !11937, !noundef !21
  %i.acq = zext i16 %i.acp to i64
  invoke void @_ZN6brotli3enc17brotli_bit_stream15BrotliWriteBits17h35b6bcda16fa19feE(i8 noundef %i.acn, i64 noundef %i.acq, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef range(i64 2, 0) %.val123.i.i)
          to label %"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$25store_symbol_with_context17h2f95a2c07fd3125eE.exit.i.i.i.i" unwind label %.thread69.loopexit.split-lp.loopexit.i.i.i.i, !noalias !11906

"_ZN6brotli3enc17brotli_bit_stream25BlockEncoder$LT$Alloc$GT$25store_symbol_with_context17h2f95a2c07fd3125eE.exit.i.i.i.i": ; preds = %bb.gt
  %i.acr = add i64 %.sroa.06.3178.i.i.i.i, 1      ; 2 uses
  %i.acs = add nsw i64 %.sroa.022.0177.i.i.i.i, -1 ; 2 uses
  %i.act = icmp eq i64 %i.acs, 0
  br i1 %i.act, label %.loopexit.i.i.i.i, label %.lr.ph.i34.i.i.i

.thread.i.i.i.i:                                  ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i201.i.i", %.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.loopexit.split-lp.i, %.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.loopexit.i, %.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i, %.thread69.loopexit.split-lp.loopexit.i.i.i.i, %.thread69.loopexit.i.i.i.i
  %lpad.phi73.i.i.i.i = phi { ptr, i32 } [ %lpad.phi95.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i201.i.i" ], [ %lpad.loopexit.i.i.i.i, %.thread69.loopexit.i.i.i.i ], [ %lpad.loopexit88.i.i.i.i, %.thread69.loopexit.split-lp.loopexit.i.i.i.i ], [ %lpad.loopexit91.i.i.i.i, %.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i.i ], [ %lpad.loopexit17.i, %.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.loopexit.i ], [ %lpad.loopexit.split-lp18.i, %.thread69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.loopexit.split-lp.i ]
  call fastcc void @"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E"(ptr noalias noundef align 8 dereferenceable(984) %i.d) #47, !noalias !11906
  call fastcc void @"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E"(ptr noalias noundef align 8 dereferenceable(984) %i.e) #47, !noalias !11906
  call fastcc void @"_ZN4core3ptr111drop_in_place$LT$brotli..enc..brotli_bit_stream..BlockEncoder$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17heec3cf2c637b6302E"(ptr noalias noundef align 8 dereferenceable(984) %i.f) #47, !noalias !11906
  br label %.body.i.i.i

bb.gu:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i138.i.i.i.i", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit.i136.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11902
  call fastcc void @"_ZN6brotli3enc17brotli_bit_stream27MetaBlockSplit$LT$Alloc$GT$7destroy17hefb4cf136a193463E"(ptr noalias noundef align 8 dereferenceable(264) %i.am), !noalias !11871
  call fastcc void @"_ZN4core3ptr113drop_in_place$LT$brotli..enc..brotli_bit_stream..MetaBlockSplit$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17hb9e224f650bfdf72E"(ptr noalias noundef align 8 dereferenceable(264) %i.am), !noalias !11871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !11872
  br label %_ZN6brotli3enc17brotli_bit_stream21store_meta_block_fast17h61d2765af724312cE.exit.i.i.i

_ZN6brotli3enc17brotli_bit_stream21store_meta_block_fast17h61d2765af724312cE.exit.i.i.i: ; preds = %bb.gu, %_ZN6brotli3enc17brotli_bit_stream24store_meta_block_trivial17hbfad71c86fe051d6E.exit.i.i.i, %bb.dv, %bb.du
  %i.acu = add nuw nsw i64 %i.qo, 4
  %i.acv = add nuw nsw i64 %i.acu, %i.rf
  %i.acw = load i64, ptr %i.aq, align 8, !alias.scope !11867, !noalias !11876, !noundef !21
  %i.acx = lshr i64 %i.acw, 3
  %i.acy = icmp samesign ult i64 %i.acv, %i.acx
  br i1 %i.acy, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %_ZN6brotli3enc17brotli_bit_stream21store_meta_block_fast17h61d2765af724312cE.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cp, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cs, i64 16, i1 false), !alias.scope !11938, !noalias !11939
  store i8 %i.rl, ptr %i.rk, align 1, !alias.scope !11868, !noalias !11877
  store i8 %i.rj, ptr %i.ri, align 1, !alias.scope !11868, !noalias !11877
  %i.acz = and i64 %i.re, 255
  store i64 %i.acz, ptr %i.aq, align 8, !alias.scope !11867, !noalias !11876
  %i.ada = zext i32 %.sroa.012.0.i.i.i to i64
  call fastcc void @_ZN6brotli3enc17brotli_bit_stream29store_uncompressed_meta_block17h8d70584a2b236bb4E(ptr noalias noundef nonnull align 1 %i.bn, i1 noundef zeroext %.sroa.0.0.i200.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qn, i64 noundef %i.qm, i64 noundef %i.ada, i64 noundef range(i64 0, 4294967296) %i.og, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, i64 noundef range(i64 0, 4294967296) %i.qo, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef %.val123.i.i, i1 noundef zeroext true), !noalias !11875
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %_ZN6brotli3enc17brotli_bit_stream21store_meta_block_fast17h61d2765af724312cE.exit.i.i.i
  %i.adb = xor i1 %.sroa.03.0.i, %.sroa.0.0.i200.i.i
  br i1 %i.adb, label %_ZN6brotli3enc6encode22WriteMetaBlockInternal17h4959d936469cbf0aE.exit.sink.split.i.i, label %_ZN6brotli3enc6encode22WriteMetaBlockInternal17h4959d936469cbf0aE.exit.i.i

_ZN6brotli3enc6encode22WriteMetaBlockInternal17h4959d936469cbf0aE.exit.sink.split.i.i: ; preds = %bb.gw, %bb.di, %bb.dg
  call void @_ZN6brotli3enc6encode28WriteEmptyLastBlocksInternal17hbf27001cc1f7fee1E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias noundef nonnull align 1 %.val.i.i, i64 noundef %.val123.i.i), !noalias !11940
  br label %_ZN6brotli3enc6encode22WriteMetaBlockInternal17h4959d936469cbf0aE.exit.i.i

_ZN6brotli3enc6encode22WriteMetaBlockInternal17h4959d936469cbf0aE.exit.i.i: ; preds = %_ZN6brotli3enc6encode22WriteMetaBlockInternal17h4959d936469cbf0aE.exit.sink.split.i.i, %bb.gw, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !11872
  %.val160.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !29, !noundef !21 ; 2 uses
  %.val161.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 4 uses
  %i.adc = load i64, ptr %i.aq, align 8, !noalias !11845, !noundef !21 ; 2 uses
  %i.add = lshr i64 %i.adc, 3                     ; 5 uses
  %i.ade = icmp ult i64 %i.add, %.val161.i.i
  br i1 %i.ade, label %bb.gy, label %bb.gz

bb.gx:                                            ; preds = %bb.dc
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.qi, i64 noundef %.val125.i.i, i64 noundef %.val125.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1200) #46, !noalias !11847
  unreachable

bb.gy:                                            ; preds = %_ZN6brotli3enc6encode22WriteMetaBlockInternal17h4959d936469cbf0aE.exit.i.i
  %i.adf = add nuw nsw i64 %i.add, 1              ; 3 uses
  %i.adg = icmp ult i64 %i.adf, %.val161.i.i
  br i1 %i.adg, label %bb.ha, label %bb.hb

bb.gz:                                            ; preds = %_ZN6brotli3enc6encode22WriteMetaBlockInternal17h4959d936469cbf0aE.exit.i.i
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.add, i64 noundef %.val161.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1195) #46, !noalias !11847
  unreachable

bb.ha:                                            ; preds = %bb.gy
  %i.adh = getelementptr inbounds nuw i8, ptr %.val160.i.i, i64 %i.add
  %i.adi = load i8, ptr %i.adh, align 1, !noalias !11847, !noundef !21
  %i.adj = zext i8 %i.adi to i16
  %i.adk = getelementptr inbounds nuw i8, ptr %.val160.i.i, i64 %i.adf
  %i.adl = load i8, ptr %i.adk, align 1, !noalias !11847, !noundef !21
  %i.adm = zext i8 %i.adl to i16
  %i.adn = shl nuw i16 %i.adm, 8
  %i.ado = or disjoint i16 %i.adn, %i.adj
  store i16 %i.ado, ptr %i.br, align 8, !alias.scope !11846, !noalias !11847
  %i.adp = trunc i64 %i.adc to i8
  %i.adq = and i8 %i.adp, 7
  store i8 %i.adq, ptr %i.bn, align 2, !alias.scope !11846, !noalias !11847
  %i.adr = load i64, ptr %i.bd, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 6 uses
  store i64 %i.adr, ptr %i.bo, align 8, !alias.scope !11846, !noalias !11847
  %i.ads = load i64, ptr %i.be, align 8, !alias.scope !11941, !noalias !11847, !noundef !21 ; 2 uses
  %31 = trunc i64 %i.ads to i32                   ; 3 uses
  %32 = icmp ugt i64 %i.ads, 3221225471
  %33 = and i32 %31, 1073741823
  %34 = and i32 %31, 1073741824
  %reass.sub.i203.i.i = sub nsw i32 %33, %34
  %35 = xor i32 %reass.sub.i203.i.i, -2147483648
  %.sroa.0.0.i204.i.i = select i1 %32, i32 %35, i32 %31
  %i.adt = trunc i64 %i.adr to i32                ; 5 uses
  %i.adu = icmp ugt i64 %i.adr, 3221225471
  %36 = and i32 %i.adt, 1073741823
  %37 = and i32 %i.adt, 1073741824
  %reass.sub5.i205.i.i = sub nsw i32 %36, %37
  %38 = xor i32 %reass.sub5.i205.i.i, -2147483648
  %.sroa.02.0.i206.i.i = select i1 %i.adu, i32 %38, i32 %i.adt
  store i64 %i.adr, ptr %i.be, align 8, !alias.scope !11941, !noalias !11847
  %39 = icmp ult i32 %.sroa.02.0.i206.i.i, %.sroa.0.0.i204.i.i
  br i1 %39, label %bb.hd, label %bb.hc

bb.hb:                                            ; preds = %bb.gy
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.adf, i64 noundef %.val161.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1196) #46, !noalias !11847
  unreachable

bb.hc:                                            ; preds = %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i", %bb.hd, %bb.ha
  %.val157.i.i = load i64, ptr %i.ca, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 4 uses
  %i.adv = load i64, ptr %i.cb, align 8, !alias.scope !11846, !noalias !11847, !noundef !21 ; 4 uses
  %i.adw = icmp ugt i64 %i.adv, %.val157.i.i
  br i1 %i.adw, label %bb.hh, label %bb.hg, !prof !30

bb.hd:                                            ; preds = %bb.ha
  %i.adx = load i64, ptr %i.ay, align 8, !range !70, !alias.scope !11846, !noalias !11847, !noundef !21
  switch i64 %i.adx, label %default.unreachable [
    i64 0, label %bb.hc
    i64 10, label %bb.hf
    i64 1, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i"
    i64 2, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i"
    i64 3, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i"
    i64 4, label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i"
    i64 5, label %bb.he
    i64 6, label %bb.he
    i64 7, label %bb.he
    i64 8, label %bb.he
    i64 9, label %bb.he
  ], !prof !77

bb.he:                                            ; preds = %bb.hd, %bb.hd, %bb.hd, %bb.hd, %bb.hd
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i"

bb.hf:                                            ; preds = %bb.hd
  br label %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i"

"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit.i.i": ; preds = %bb.hf, %bb.he, %bb.hd, %bb.hd, %bb.hd, %bb.hd
  %.sink.i.i.i = phi i64 [ 56, %bb.hf ], [ 24, %bb.hd ], [ 24, %bb.hd ], [ 24, %bb.hd ], [ 24, %bb.hd ], [ 40, %bb.he ]
  %i.ady = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sink.i.i.i
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 40
  store i32 0, ptr %i.adz, align 8, !alias.scope !11846, !noalias !11847
  br label %bb.hc

bb.hg:                                            ; preds = %bb.hc
  %.val156.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !11846, !noalias !11847, !nonnull !21, !align !29, !noundef !21
  %i.aea = sub nuw i64 %.val157.i.i, %i.adv       ; 4 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %.val156.i.i, i64 %i.adv ; 2 uses
  %.not122.i.i = icmp eq i64 %i.adr, 0
  br i1 %.not122.i.i, label %.thread14.i.i, label %bb.hi

bb.hh:                                            ; preds = %bb.hc
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.adv, i64 noundef %.val157.i.i, i64 noundef %.val157.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1199) #46, !noalias !11847
  unreachable

bb.hi:                                            ; preds = %bb.hg
  %i.aec = add i32 %i.adt, -1
  %i.aed = and i32 %i.aec, %i.gq
  %i.aee = zext i32 %i.aed to i64                 ; 3 uses
  %i.aef = icmp ugt i64 %i.aea, %i.aee
  br i1 %i.aef, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aeb, i64 %i.aee
  %i.aeh = load i8, ptr %i.aeg, align 1, !noalias !11847, !noundef !21
  store i8 %i.aeh, ptr %i.cd, align 1, !alias.scope !11846, !noalias !11847
  %.not15.i.i = icmp eq i64 %i.adr, 1
  br i1 %.not15.i.i, label %.thread14.i.i, label %bb.hl

bb.hk:                                            ; preds = %bb.hi
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aee, i64 noundef %i.aea, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1197) #46, !noalias !11847
  unreachable

bb.hl:                                            ; preds = %bb.hj
  %i.aei = add i32 %i.adt, -2
  %i.aej = and i32 %i.aei, %i.gq
  %i.aek = zext i32 %i.aej to i64                 ; 3 uses
  %i.ael = icmp ugt i64 %i.aea, %i.aek
  br i1 %i.ael, label %bb.hm, label %bb.hn

.thread14.i.i:                                    ; preds = %bb.hm, %bb.hj, %bb.hg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i8 0, i64 16, i1 false), !alias.scope !11846, !noalias !11847
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cp, i64 16, i1 false), !alias.scope !11942, !noalias !11943
  store i32 0, ptr %i.bv, align 8, !alias.scope !11846, !noalias !11847
  store i32 0, ptr %i.bw, align 4, !alias.scope !11846, !noalias !11847
  br label %bb.hq

bb.hm:                                            ; preds = %bb.hl
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aeb, i64 %i.aek
  %i.aen = load i8, ptr %i.aem, align 1, !noalias !11847, !noundef !21
  store i8 %i.aen, ptr %i.ce, align 8, !alias.scope !11846, !noalias !11847
  br label %.thread14.i.i

bb.hn:                                            ; preds = %bb.hl
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aek, i64 noundef %i.aea, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1198) #46, !noalias !11847
  unreachable

bb.ho:                                            ; preds = %.invoke.i.i
  %i.aeo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aep = icmp eq i64 %i.nc, 0
  br i1 %i.aep, label %common.resume.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i205.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i205.i.i": ; preds = %bb.ho
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i, i64 noundef %i.nd, i64 noundef 4) #45, !noalias !11847
  br label %common.resume.i.i

bb.hp:                                            ; preds = %bb.o, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !11845
  store i64 0, ptr %i.bg, align 8, !alias.scope !11836, !noalias !11839
  br label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17hfa542ba2c4e9bbd1E.exit"

bb.hq:                                            ; preds = %bb.cu, %.thread14.i.i, %bb.db, %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit", %bb.ct, %bb.bj
  %.sroa.0.01.i = phi i64 [ %storemerge.i.i, %bb.bj ], [ %i.add, %.thread14.i.i ], [ %.sroa.011.2.i.i, %bb.ct ], [ %.sroa.011.2.i.i, %"_ZN122_$LT$brotli..enc..backward_references..UnionHasher$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$15GetHasherCommon17he2ee6d9dae917082E.exit" ], [ %.sroa.011.2.i.i, %bb.cu ], [ %.sroa.011.2.i.i, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !11845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !11845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !11845
  store i64 %.sroa.0.01.i, ptr %i.bg, align 8, !alias.scope !11836, !noalias !11839
  %i.aeq = or i1 %.sroa.05.0.i, %.sroa.03.0.i
  br i1 %i.aeq, label %bb.hr, label %.backedge.i.backedge

bb.hr:                                            ; preds = %bb.hq
  %spec.select23.i = select i1 %.sroa.03.0.i, i32 2, i32 1
  store i32 %spec.select23.i, ptr %i.ba, align 8, !alias.scope !11836, !noalias !11839
  br label %.backedge.i.backedge

bb.hs:                                            ; preds = %bb.k
  store i32 0, ptr %i.ba, align 8, !alias.scope !11836, !noalias !11839
  store i32 2, ptr %i.bv, align 8, !alias.scope !11836, !noalias !11839
  br label %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17hfa542ba2c4e9bbd1E.exit"

bb.ht:                                            ; preds = %bb.i
  %.sroa.0.0.i24.i = call noundef i64 @llvm.umin.i64(i64 %i.gc, i64 %.sroa.0.0.i.i) ; 3 uses
  call fastcc void @"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$25copy_input_to_ring_buffer17h28b5f2c796b98b89E"(ptr noalias noundef nonnull align 8 dereferenceable(5584) %i.ay, i64 noundef %.sroa.0.0.i24.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !noalias !11839
  store i64 %.sroa.0.0.i24.i, ptr %i.au, align 8, !alias.scope !11838, !noalias !11843
  %i.aer = sub nuw i64 %i.gc, %.sroa.0.0.i24.i
  store i64 %i.aer, ptr %i.av, align 8, !alias.scope !11837, !noalias !11842
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.ht, %bb.hr, %bb.hq, %bb.g
  br label %.backedge.i

bb.hu:                                            ; preds = %bb.i
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ge, i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1207) #46, !noalias !11839
  unreachable

"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17hfa542ba2c4e9bbd1E.exit": ; preds = %bb.k, %bb.j, %bb.c, %bb.b, %bb.f, %bb.hp, %bb.hs
  %.sroa.0.0.i = phi i1 [ false, %bb.b ], [ true, %bb.hs ], [ %i.ft, %bb.f ], [ false, %bb.c ], [ false, %bb.hp ], [ true, %bb.j ], [ true, %bb.k ]
  %i.aes = load i64, ptr %i.as, align 8, !noundef !21 ; 9 uses
  %.not = icmp eq i64 %i.aes, 0
  br i1 %.not, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17hfa542ba2c4e9bbd1E.exit"
  %i.aet = load ptr, ptr %i.fk, align 8, !noundef !21 ; 2 uses
  %.not8 = icmp eq ptr %i.aet, null
  br i1 %.not8, label %bb.hy, label %bb.hx, !prof !30

bb.hw:                                            ; preds = %"_ZN6brotli3enc6encode37BrotliEncoderStateStruct$LT$Alloc$GT$15compress_stream17hfa542ba2c4e9bbd1E.exit", %bb.ic
  br i1 %.sroa.0.0.i, label %bb.ie, label %bb.id

bb.hx:                                            ; preds = %bb.hv
  %.val = load ptr, ptr %i.aw, align 8, !nonnull !21, !align !29, !noundef !21
  %.val13 = load i64, ptr %i.ax, align 8, !noundef !21 ; 2 uses
  %.not9 = icmp ugt i64 %i.aes, %.val13
  br i1 %.not9, label %bb.ib, label %.lr.ph.split.us.i, !prof !64

bb.hy:                                            ; preds = %bb.hv
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1228) #46
  unreachable

.lr.ph.split.us.i:                                ; preds = %bb.hx
  call void @llvm.experimental.noalias.scope.decl(metadata !11944)
  call void @llvm.experimental.noalias.scope.decl(metadata !11945)
  call void @llvm.experimental.noalias.scope.decl(metadata !11946)
  call void @llvm.experimental.noalias.scope.decl(metadata !11947)
  %i.aeu = load i64, ptr %i.fl, align 8, !alias.scope !11948, !noalias !11949, !noundef !21 ; 2 uses
  %i.aev = load i64, ptr %i.fm, align 8, !alias.scope !11948, !noalias !11949, !noundef !21
  %i.aew = sub i64 %i.aev, %i.aeu
  %.not.i.i.i.us.i = icmp ugt i64 %i.aes, %i.aew
  br i1 %.not.i.i.i.us.i, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %.lr.ph.split.us.i
  %i.aex = call noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fk, i64 noundef range(i64 1, 0) %i.aes, i1 noundef zeroext true), !noalias !11949 ; 0 uses
  %.pre.i.i.i.us.i = load i64, ptr %i.fl, align 8, !alias.scope !11948, !noalias !11949
  %.pre = load ptr, ptr %i.fk, align 8, !alias.scope !11948, !noalias !11949
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %.lr.ph.split.us.i
  %i.aey = phi ptr [ %i.aet, %.lr.ph.split.us.i ], [ %.pre, %bb.hz ]
  %i.aez = phi i64 [ %i.aeu, %.lr.ph.split.us.i ], [ %.pre.i.i.i.us.i, %bb.hz ]
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aey, i64 %i.aez
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.afa, ptr noundef nonnull readonly align 1 dereferenceable(1) %.val, i64 range(i64 1, 0) %i.aes, i1 false)
  %i.afb = load i64, ptr %i.fm, align 8, !alias.scope !11948, !noalias !11949, !noundef !21
  %i.afc = load i64, ptr %i.fl, align 8, !alias.scope !11948, !noalias !11949, !noundef !21 ; 2 uses
  %i.afd = sub i64 %i.afb, %i.afc                 ; 2 uses
  %i.afe = icmp ugt i64 %i.aes, %i.afd
  br i1 %i.afe, label %.split.us.i, label %bb.ic, !prof !30

.split.us.i:                                      ; preds = %bb.ia
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11950
  store i64 %i.aes, ptr %i.a, align 8, !noalias !11950
  %i.aff = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.afd, ptr %i.aff, align 8, !noalias !11950
  call void @_ZN5bytes13panic_advance17hadc1578990b3691cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #46, !noalias !11949
  unreachable

bb.ib:                                            ; preds = %bb.hx
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.aes, i64 noundef %.val13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1230) #46
  unreachable

bb.ic:                                            ; preds = %bb.ia
  %i.afg = add i64 %i.afc, %i.aes
  store i64 %i.afg, ptr %i.fl, align 8, !alias.scope !11948, !noalias !11949
  br label %bb.hw

bb.id:                                            ; preds = %bb.hw
  %i.afh = getelementptr inbounds nuw i8, ptr %0, i64 5648 ; 2 uses
  %i.afi = load ptr, ptr %i.afh, align 8, !noundef !21 ; 2 uses
  store ptr null, ptr %i.afh, align 8
  %.not11 = icmp eq ptr %i.afi, null
  br i1 %.not11, label %bb.if, label %.loopexit, !prof !30

bb.ie:                                            ; preds = %bb.hw
  br i1 %i.bi, label %bb.ig, label %bb.ih

bb.if:                                            ; preds = %bb.id
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1229) #46
  unreachable

.loopexit:                                        ; preds = %bb.ii, %bb.ig, %bb.id
  %.sroa.0.0 = phi ptr [ %i.afi, %bb.id ], [ null, %bb.ig ], [ null, %bb.ii ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  ret ptr %.sroa.0.0

bb.ig:                                            ; preds = %bb.ie
  %i.afj = load i64, ptr %i.bg, align 8, !noundef !21
  %i.afk = icmp eq i64 %i.afj, 0
  br i1 %i.afk, label %.loopexit, label %.backedge

bb.ih:                                            ; preds = %bb.ie
  %i.afl = load i32, ptr %i.ba, align 8, !range !76, !noundef !21
  %i.afm = icmp eq i32 %i.afl, 2
  br i1 %i.afm, label %bb.ii, label %.backedge

.backedge:                                        ; preds = %bb.ig, %bb.ii, %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.b

bb.ii:                                            ; preds = %bb.ih
  %i.afn = load i64, ptr %i.bg, align 8, !noundef !21
  %.not12 = icmp eq i64 %i.afn, 0
  br i1 %.not12, label %.loopexit, label %.backedge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 0, 257) i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h525836e2a4691d74E(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 4 captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 4 captures(none) %4, i64 noundef %5, ptr noalias nofree noundef nonnull align 4 captures(none) %6, i64 noundef %7, ptr noalias nofree noundef nonnull align 4 captures(none) %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef range(i64 64, 257) %12, i64 noundef %13) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.not84.not = icmp eq i64 %10, 0
  br i1 %.not84.not, label %.outer._crit_edge, label %.preheader4

.loopexit5:                                       ; preds = %bb.al, %.preheader4
  %i.c = icmp ult i64 %.sroa.055.163, %10
  %i.d = add i64 %.sroa.055.163, 1
  br i1 %i.c, label %.preheader4, label %.preheader3

.preheader4:                                      ; preds = %bb.a, %.loopexit5
  %.sroa.055.163 = phi i64 [ %i.d, %.loopexit5 ], [ 1, %bb.a ] ; 6 uses
  %.sroa.055.062 = phi i64 [ %.sroa.055.163, %.loopexit5 ], [ 0, %bb.a ] ; 3 uses
  %i.e = icmp ult i64 %.sroa.055.163, %10
  br i1 %i.e, label %.lr.ph, label %.loopexit5

.lr.ph:                                           ; preds = %.preheader4
  %i.f = icmp ult i64 %.sroa.055.062, %7
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.055.062
  br i1 %i.f, label %.lr.ph.split.preheader, label %bb.ak

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.055.163, i64 %7) ; 2 uses
  br label %.lr.ph.split

.preheader3:                                      ; preds = %.loopexit5
  %.not256 = icmp eq i64 %10, 1
  br i1 %.not256, label %.outer._crit_edge, label %.lr.ph76.lr.ph

.lr.ph76.lr.ph:                                   ; preds = %.preheader3
  %.not = icmp eq i64 %9, 0
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.not85 = icmp eq i64 %11, 0
  br i1 %.not, label %bb.c, label %.lr.ph76.preheader

.lr.ph76.preheader:                               ; preds = %.lr.ph76.lr.ph
  %i.k = add i64 %5, 1
  %i.l = add i64 %7, 1
  %i.m = add i64 %11, -1
  %i.n = tail call i64 @llvm.umin.i64(i64 %5, i64 %i.m)
  %i.o = add i64 %i.n, 1                          ; 3 uses
  %min.iters.check336 = icmp ult i64 %i.o, 9
  %i.p = and i64 %i.o, 7                          ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 8, i64 %i.p
  %n.vec338 = sub i64 %i.o, %i.r                  ; 3 uses
  %i.s = add i64 %n.vec338, 1
end_hunk_4
