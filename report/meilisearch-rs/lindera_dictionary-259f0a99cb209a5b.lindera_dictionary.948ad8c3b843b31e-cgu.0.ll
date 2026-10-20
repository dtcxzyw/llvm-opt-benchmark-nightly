Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/lindera_dictionary-259f0a99cb209a5b.lindera_dictionary.948ad8c3b843b31e-cgu.0?download=true
inline.NumInlined: 4519
inline.NumDeleted: 2001
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN18lindera_dictionary18dictionary_builder20character_definition19parse_hex_codepoint17hdaa298bad32d966eE:bb.a
  %i.t = load i8, ptr %.sroa.02.0.i19, align 1, !alias.scope !4611, !noundef !6 ; 2 uses
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = icmp ugt i8 %i.t, 57
  %i.w = add nsw i32 %i.u, -65
  %i.x = and i32 %i.w, -33
  %i.y = add nuw nsw i32 %i.x, 10
  %i.z = add nsw i32 %i.u, -48
  %spec.select.i = select i1 %i.v, i32 %i.y, i32 %i.z ; 2 uses
  %i.aa = icmp ugt i32 %spec.select.i, 15         ; 2 uses
  %brmerge.i = or i1 %i.s, %i.aa
  br i1 %brmerge.i, label %.loopexit61.split.loop.exit64.i, label %.preheader59.split.i

.preheader59.split.i:                             ; preds = %.lr.ph
  %i.ab = shl nuw i16 %.sroa.018.0.i17, 4
  %i.ac = add i64 %.sroa.16.0.i18, -1             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i19, i64 1
  %i.ae = trunc nuw nsw i32 %spec.select.i to i16
  %i.af = or disjoint i16 %i.ab, %i.ae            ; 2 uses
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %bb.i
  %.sroa.02.171.i = phi ptr [ %i.aq, %bb.i ], [ %.sroa.02.171.i.ph, %.lr.ph.split.i.preheader ] ; 2 uses
  %.sroa.16.170.i = phi i64 [ %i.ap, %bb.i ], [ %.sroa.16.170.i.ph, %.lr.ph.split.i.preheader ]
  %.sroa.018.169.i = phi i16 [ %i.as, %bb.i ], [ 0, %.lr.ph.split.i.preheader ]
  %i.ag = load i8, ptr %.sroa.02.171.i, align 1, !alias.scope !4611, !noundef !6 ; 2 uses
  %i.ah = zext i8 %i.ag to i32                    ; 2 uses
  %i.ai = icmp ugt i8 %i.ag, 57
  %i.aj = add nsw i32 %i.ah, -65
  %i.ak = and i32 %i.aj, -33
  %i.al = add nuw nsw i32 %i.ak, 10
  %i.am = add nsw i32 %i.ah, -48
  %spec.select75.i = select i1 %i.ai, i32 %i.al, i32 %i.am ; 2 uses
  %i.an = icmp ult i32 %spec.select75.i, 16
  br i1 %i.an, label %bb.i, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread"

bb.i:                                             ; preds = %.lr.ph.split.i
  %i.ao = shl i16 %.sroa.018.169.i, 4
  %i.ap = add nsw i64 %.sroa.16.170.i, -1         ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.02.171.i, i64 1
  %i.ar = trunc nuw nsw i32 %spec.select75.i to i16
  %i.as = or disjoint i16 %i.ao, %i.ar            ; 2 uses
  %.not53.i = icmp eq i64 %i.ap, 0
  br i1 %.not53.i, label %.loopexit.i, label %.lr.ph.split.i

"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit": ; preds = %.loopexit61.split.loop.exit64.i, %.loopexit.i
  %.sroa.8.0.insert.insert.i = phi i32 [ %i.r, %.loopexit.i ], [ %.mux.le.i, %.loopexit61.split.loop.exit64.i ] ; 3 uses
  %i.at = trunc i32 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.at, label %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread", label %bb.j, !prof !28

"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit.thread": ; preds = %.lr.ph.split.i, %bb.e, %bb.e, %"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17haf037132f813db10E.exit", %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit"
  %.sroa.8.0.insert.insert.i10 = phi i32 [ %.sroa.8.0.insert.insert.i, %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit" ], [ 257, %bb.e ], [ 1, %"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17haf037132f813db10E.exit" ], [ 257, %bb.e ], [ 257, %.lr.ph.split.i ]
  %.sroa.4.0.extract.shift = lshr i32 %.sroa.8.0.insert.insert.i10, 8
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8
  %i.au = call fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h035e5d8170740611E"(i8 noundef range(i8 0, 5) %.sroa.4.0.extract.trunc)
  store ptr %i.au, ptr %0, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 5, ptr %i.av, align 8
  br label %bb.ag

bb.j:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u16$GT$16from_ascii_radix17hc54ff9b205fe9008E.exit"
  %.sroa.56.0.extract.shift = lshr i32 %.sroa.8.0.insert.insert.i, 16 ; 2 uses
  %.sroa.56.0.extract.trunc = trunc nuw i32 %.sroa.56.0.extract.shift to i16
  call void @llvm.experimental.noalias.scope.decl(metadata !4612)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4612
  store i16 %.sroa.56.0.extract.trunc, ptr %i.d, align 2, !alias.scope !4613, !noalias !4612
  %i.aw = load ptr, ptr @_ZN11encoding_rs8UTF_16LE17h3b3082c5d516bb32E, align 8, !noalias !4612, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4612
  %.not = icmp eq i32 %.sroa.56.0.extract.shift, 65279
  br i1 %.not, label %select.unfold.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit9.i.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit9.i.i.i": ; preds = %bb.j
  %i.ax = load i16, ptr %i.d, align 2
  %i.ay = icmp ne i16 -2, %i.ax
  %i.az = zext i1 %i.ay to i32
  %bcmp.i.i7.fr.i.i.i = freeze i32 %i.az
  %i.ba = icmp eq i32 %bcmp.i.i7.fr.i.i.i, 0
  br i1 %i.ba, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit9.i.i.select.unfold.i_crit_edge.i", label %_ZN11encoding_rs8Encoding6decode17haeb04255cf22d36aE.exit.i

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit9.i.i.select.unfold.i_crit_edge.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit9.i.i.i"
  %.sroa.0.0.i.ph.i.pre.i = load ptr, ptr @_ZN11encoding_rs8UTF_16BE17h2120dfeca5c381d9E, align 8, !noalias !4614
  br label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit9.i.i.select.unfold.i_crit_edge.i", %bb.j
  %.sroa.0.0.i.ph.i.i = phi ptr [ %.sroa.0.0.i.ph.i.pre.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit9.i.i.select.unfold.i_crit_edge.i" ], [ %i.aw, %bb.j ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  br label %_ZN11encoding_rs8Encoding6decode17haeb04255cf22d36aE.exit.i

_ZN11encoding_rs8Encoding6decode17haeb04255cf22d36aE.exit.i: ; preds = %select.unfold.i.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit9.i.i.i"
  %.sroa.55.0.i.i = phi i64 [ 0, %select.unfold.i.i ], [ 2, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit9.i.i.i" ]
  %.sroa.04.0.i.i = phi ptr [ %i.bb, %select.unfold.i.i ], [ %i.d, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit9.i.i.i" ]
  %.sroa.03.0.i.i = phi ptr [ %.sroa.0.0.i.ph.i.i, %select.unfold.i.i ], [ %i.aw, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit9.i.i.i" ]
  call void @_ZN11encoding_rs8Encoding27decode_without_bom_handling17h95ee650c38e11c0dE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.03.0.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.04.0.i.i, i64 noundef %.sroa.55.0.i.i), !noalias !4615
  %.sroa.021.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !4616 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4616 ; 3 uses
  %.sroa.5.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0.copyload23.i = load i64, ptr %.sroa.5.0..sroa_idx22.i, align 8, !noalias !4616 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4612
  %.not.i7 = icmp eq i64 %.sroa.021.0.copyload.i, -9223372036854775808
  br i1 %.not.i7, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZN11encoding_rs8Encoding6decode17haeb04255cf22d36aE.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.bc = icmp slt i64 %.sroa.5.0.copyload23.i, 0
  br i1 %i.bc, label %bb.m, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !10

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.k
  %i.bd = icmp eq i64 %.sroa.5.0.copyload23.i, 0
  br i1 %i.bd, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h5ae3ab1d13d3aa3bE.exit.i", label %bb.l

bb.l:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !4617
  %i.be = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.5.0.copyload23.i, i64 noundef range(i64 1, 9) 1) #47, !noalias !4617 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.m, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h5ae3ab1d13d3aa3bE.exit.i"

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.l ], [ 0, %bb.k ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.5.0.copyload23.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @662) #46, !noalias !4618
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h5ae3ab1d13d3aa3bE.exit.i": ; preds = %bb.l, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.be, %bb.l ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %.sroa.4.0.copyload.i, i64 %.sroa.5.0.copyload23.i, i1 false), !noalias !4619
  br label %bb.n

bb.n:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h5ae3ab1d13d3aa3bE.exit.i", %_ZN11encoding_rs8Encoding6decode17haeb04255cf22d36aE.exit.i
  %.sroa.6.0.i = phi ptr [ %.sroa.10.0.i.i.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h5ae3ab1d13d3aa3bE.exit.i" ], [ %.sroa.4.0.copyload.i, %_ZN11encoding_rs8Encoding6decode17haeb04255cf22d36aE.exit.i ] ; 9 uses
  %.sroa.0.0.i8 = phi i64 [ %.sroa.5.0.copyload23.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h5ae3ab1d13d3aa3bE.exit.i" ], [ %.sroa.021.0.copyload.i, %_ZN11encoding_rs8Encoding6decode17haeb04255cf22d36aE.exit.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.i) ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i, i64 %.sroa.5.0.copyload23.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4620
  %.not.i.i.i.i.i.i = icmp samesign eq i64 %.sroa.5.0.copyload23.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i, i64 1 ; 2 uses
  %i.bi = load i8, ptr %.sroa.6.0.i, align 1, !noalias !4621, !noundef !6 ; 5 uses
  %i.bj = icmp sgt i8 %i.bi, -1
  br i1 %i.bj, label %bb.p, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i": ; preds = %bb.o
  %i.bk = and i8 %i.bi, 31
  %i.bl = zext nneg i8 %i.bk to i32               ; 3 uses
  %i.bm = icmp samesign ne i64 %.sroa.5.0.copyload23.i, 1
  call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i, i64 2 ; 2 uses
  %i.bo = load i8, ptr %i.bh, align 1, !noalias !4621, !noundef !6
  %i.bp = shl nuw nsw i32 %i.bl, 6
  %i.bq = and i8 %i.bo, 63
  %i.br = zext nneg i8 %i.bq to i32               ; 2 uses
  %i.bs = or disjoint i32 %i.bp, %i.br
  %i.bt = icmp samesign ugt i8 %i.bi, -33
  br i1 %i.bt, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"

bb.p:                                             ; preds = %bb.o
  %i.bu = zext nneg i8 %i.bi to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i"
  %i.bv = icmp samesign ne i64 %.sroa.5.0.copyload23.i, 2
  call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i, i64 3 ; 2 uses
  %i.bx = load i8, ptr %i.bn, align 1, !noalias !4621, !noundef !6
  %i.by = shl nuw nsw i32 %i.br, 6
  %i.bz = and i8 %i.bx, 63
  %i.ca = zext nneg i8 %i.bz to i32
  %i.cb = or disjoint i32 %i.by, %i.ca            ; 2 uses
  %i.cc = shl nuw nsw i32 %i.bl, 12
  %i.cd = or disjoint i32 %i.cb, %i.cc
  %i.ce = icmp samesign ugt i8 %i.bi, -17
  br i1 %i.ce, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i"
  %i.cf = icmp samesign ne i64 %.sroa.5.0.copyload23.i, 3
  call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i, i64 4
  %i.ch = load i8, ptr %i.bw, align 1, !noalias !4621, !noundef !6
  %i.ci = shl nuw nsw i32 %i.bl, 18
  %i.cj = and i32 %i.ci, 1835008
  %i.ck = shl nuw nsw i32 %i.cb, 6
  %i.cl = and i8 %i.ch, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  %i.co = or disjoint i32 %i.cn, %i.cj            ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.co, 1114112
  br i1 %.not.i.i.i.i.i, label %.sink.split, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i", %bb.p, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i"
  %spec.select.i8.i.i.i.i.i = phi i32 [ %i.co, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i" ], [ %i.cd, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i" ], [ %i.bs, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i" ], [ %i.bu, %bb.p ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.cg, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i" ], [ %i.bw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i" ], [ %i.bn, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i" ], [ %i.bh, %bb.p ] ; 3 uses
  %i.cp = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.cq = ptrtoint ptr %.sroa.0.07.i.i.i.i.i to i64
  %i.cr = sub nuw i64 %i.cp, %i.cq                ; 2 uses
  %i.cs = lshr i64 %i.cr, 2
  %i.ct = and i64 %i.cr, 3
  %.not.i10.i.i.i.i.i = icmp ne i64 %i.ct, 0
  %i.cu = zext i1 %.not.i10.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i.i = add nuw nsw i64 %i.cs, %i.cu ; 2 uses
  %i.cv = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i.i.i, i64 3)
  %.sroa.0.0.i11.i.i.i.i.i = add nuw nsw i64 %i.cv, 1 ; 3 uses
  %i.cw = shl i64 %.sroa.0.0.i11.i.i.i.i.i, 2     ; 4 uses
  %i.cx = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i.i.i, 4611686018427387902
  %i.cy = icmp ugt i64 %i.cw, 9223372036854775804
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.cx, i1 true, i1 %i.cy, !prof !10
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.r, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !10

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"
  %i.cz = icmp eq i64 %i.cw, 0
  br i1 %i.cz, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i", label %bb.q

bb.q:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !4622
  %i.da = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cw, i64 noundef range(i64 1, 9) 4) #47, !noalias !4622 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.r, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i"

bb.r:                                             ; preds = %bb.q, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 4, %bb.q ], [ 0, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #46
          to label %.noexc.i unwind label %bb.w, !noalias !4612

.noexc.i:                                         ; preds = %bb.r
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i": ; preds = %bb.q, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %.sroa.626.0.copyload41.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.da, %bb.q ] ; 4 uses
  %.sroa.025.0.copyload40.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %.sroa.0.0.i11.i.i.i.i.i, %bb.q ] ; 3 uses
  %3 = icmp samesign ule i64 %.sroa.0.0.i11.i.i.i.i.i, %.sroa.025.0.copyload40.i
  call void @llvm.assume(i1 %3)
  store i32 %spec.select.i8.i.i.i.i.i, ptr %.sroa.626.0.copyload41.i, align 4, !noalias !4620
  store i64 %.sroa.025.0.copyload40.i, ptr %i.a, align 8, !noalias !4620
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store ptr %.sroa.626.0.copyload41.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4620
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4620
  call void @llvm.experimental.noalias.scope.decl(metadata !4623)
  call void @llvm.experimental.noalias.scope.decl(metadata !4624)
  %.not.i11.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.07.i.i.i.i.i, %i.bg
  br i1 %.not.i11.i.i.i.i.i.i.i, label %.thread38.i, label %.lr.ph.i.i.i.i.i.i.i

.thread38.i:                                      ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4620
  br label %bb.z

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i", %.noexc.i.i.i.i.i
  %i.dc = phi ptr [ %i.eu, %.noexc.i.i.i.i.i ], [ %.sroa.626.0.copyload41.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i" ]
  %.sroa.1027.0.copyload.pr.i = phi i64 [ %i.ew, %.noexc.i.i.i.i.i ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i" ] ; 7 uses
  %.sroa.0.012.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.15.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i" ] ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.i.i.i.i.i.i, i64 1 ; 3 uses
  %i.de = load i8, ptr %.sroa.0.012.i.i.i.i.i.i.i, align 1, !noalias !4625, !noundef !6 ; 5 uses
  %i.df = icmp sgt i8 %i.de, -1
  br i1 %i.df, label %bb.s, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dg = and i8 %i.de, 31
  %i.dh = zext nneg i8 %i.dg to i32               ; 3 uses
  %i.di = icmp ne ptr %i.dd, %i.bg
  call void @llvm.assume(i1 %i.di)
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.i.i.i.i.i.i, i64 2 ; 3 uses
  %i.dk = load i8, ptr %i.dd, align 1, !noalias !4625, !noundef !6
  %i.dl = shl nuw nsw i32 %i.dh, 6
  %i.dm = and i8 %i.dk, 63
  %i.dn = zext nneg i8 %i.dm to i32               ; 2 uses
  %i.do = or disjoint i32 %i.dl, %i.dn
  %i.dp = icmp samesign ugt i8 %i.de, -33
  br i1 %i.dp, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i.i"

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dq = zext nneg i8 %i.de to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i"
  %i.dr = icmp ne ptr %i.dj, %i.bg
  call void @llvm.assume(i1 %i.dr)
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.i.i.i.i.i.i, i64 3 ; 3 uses
  %i.dt = load i8, ptr %i.dj, align 1, !noalias !4625, !noundef !6
  %i.du = shl nuw nsw i32 %i.dn, 6
  %i.dv = and i8 %i.dt, 63
  %i.dw = zext nneg i8 %i.dv to i32
  %i.dx = or disjoint i32 %i.du, %i.dw            ; 2 uses
  %i.dy = shl nuw nsw i32 %i.dh, 12
  %i.dz = or disjoint i32 %i.dx, %i.dy
  %i.ea = icmp samesign ugt i8 %i.de, -17
  br i1 %i.ea, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i"
  %i.eb = icmp ne ptr %i.ds, %i.bg
  call void @llvm.assume(i1 %i.eb)
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.i.i.i.i.i.i, i64 4
  %i.ed = load i8, ptr %i.ds, align 1, !noalias !4625, !noundef !6
  %i.ee = shl nuw nsw i32 %i.dh, 18
  %i.ef = and i32 %i.ee, 1835008
  %i.eg = shl nuw nsw i32 %i.dx, 6
  %i.eh = and i8 %i.ed, 63
  %i.ei = zext nneg i8 %i.eh to i32
  %i.ej = or disjoint i32 %i.eg, %i.ei
  %i.ek = or disjoint i32 %i.ej, %i.ef            ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ek, 1114112
  br i1 %.not.i.i.i.i.i.i.i, label %bb.x, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i", %bb.s, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i"
  %spec.select.i6.i.i.i.i.i.i.i = phi i32 [ %i.ek, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i.i" ], [ %i.dz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i" ], [ %i.do, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i" ], [ %i.dq, %bb.s ]
  %.sroa.0.15.i.i.i.i.i.i.i = phi ptr [ %i.ec, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i.i" ], [ %i.ds, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i" ], [ %i.dj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i" ], [ %i.dd, %bb.s ] ; 3 uses
  %i.el = icmp samesign ult i64 %.sroa.1027.0.copyload.pr.i, 2305843009213693952
  call void @llvm.assume(i1 %i.el)
  %i.em = load i64, ptr %i.a, align 8, !range !14, !alias.scope !4626, !noalias !4620, !noundef !6
  %i.en = icmp eq i64 %.sroa.1027.0.copyload.pr.i, %i.em
  br i1 %i.en, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h923b04be0bc8880fE.exit.i.i.i.i.i.i.i", label %.noexc.i.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h923b04be0bc8880fE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i.i"
  %i.eo = ptrtoint ptr %.sroa.0.15.i.i.i.i.i.i.i to i64
  %i.ep = sub nuw i64 %i.cp, %i.eo                ; 2 uses
  %i.eq = lshr i64 %i.ep, 2
  %i.er = and i64 %i.ep, 3
  %.not.i7.i.i.i.i.i.i.i = icmp ne i64 %i.er, 0
  %i.es = zext i1 %.not.i7.i.i.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i.i.i.i = add nuw nsw i64 %i.eq, 1
  %i.et = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i, %i.es
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.sroa.1027.0.copyload.pr.i, i64 noundef range(i64 1, 0) %i.et, i64 noundef 4, i64 noundef 4)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h923b04be0bc8880fE.exit.i.i..noexc_crit_edge.i.i.i.i.i" unwind label %bb.t, !noalias !4620

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h923b04be0bc8880fE.exit.i.i..noexc_crit_edge.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h923b04be0bc8880fE.exit.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !4626, !noalias !4620
  br label %.noexc.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h923b04be0bc8880fE.exit.i.i..noexc_crit_edge.i.i.i.i.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i.i"
  %i.eu = phi ptr [ %.pre.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h923b04be0bc8880fE.exit.i.i..noexc_crit_edge.i.i.i.i.i" ], [ %i.dc, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %.sroa.1027.0.copyload.pr.i
  store i32 %spec.select.i6.i.i.i.i.i.i.i, ptr %i.ev, align 4, !noalias !4627
  %i.ew = add nuw nsw i64 %.sroa.1027.0.copyload.pr.i, 1 ; 2 uses
  store i64 %i.ew, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !4626, !noalias !4620
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.15.i.i.i.i.i.i.i, %i.bg
  br i1 %.not.i.i.i.i.i.i.i.i, label %.thread44.i, label %.lr.ph.i.i.i.i.i.i.i

.thread44.i:                                      ; preds = %.noexc.i.i.i.i.i
  %.sroa.025.0.copyload46.i = load i64, ptr %i.a, align 8, !noalias !4612
  %.sroa.626.0.copyload47.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4612
  br label %.sink.split

bb.t:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h923b04be0bc8880fE.exit.i.i.i.i.i.i.i"
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !4620 ; 2 uses
  %i.ey = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.ey, label %.body.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val9.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4620, !nonnull !6, !noundef !6
  %i.ez = shl nuw i64 %.val8.i.i.i.i.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %i.ez, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !4620
  br label %.body.i

.body.i:                                          ; preds = %bb.ab, %bb.aa, %bb.w, %bb.u, %bb.t
  %.pn.i = phi { ptr, i32 } [ %i.ex, %bb.t ], [ %i.fb, %bb.w ], [ %i.ex, %bb.u ], [ %i.fk, %bb.aa ], [ %i.fk, %bb.ab ]
  %i.fa = icmp eq i64 %.sroa.0.0.i8, 0
  br i1 %i.fa, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i", label %bb.v

bb.v:                                             ; preds = %.body.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i, i64 noundef %.sroa.0.0.i8, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !4628
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i"

bb.w:                                             ; preds = %bb.r
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.x:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i.i"
  %.sroa.025.0.copyload.i = load i64, ptr %i.a, align 8, !noalias !4612 ; 2 uses
  %.sroa.626.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4612 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4620
  %i.fc = icmp samesign ult i64 %.sroa.1027.0.copyload.pr.i, 2305843009213693952
  call void @llvm.assume(i1 %i.fc)
  %i.fd = icmp eq i64 %.sroa.1027.0.copyload.pr.i, 1
  br i1 %i.fd, label %._crit_edge.i, label %bb.y, !prof !36

._crit_edge.i:                                    ; preds = %bb.x
  %.pre.i = load i32, ptr %.sroa.626.0.copyload.i, align 4, !range !4629, !noalias !4612
  br label %bb.z

.sink.split:                                      ; preds = %bb.n, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i", %.thread44.i
  %.sroa.025.037.i.ph = phi i64 [ %.sroa.025.0.copyload46.i, %.thread44.i ], [ 0, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i" ], [ 0, %bb.n ]
  %.sroa.626.035.i.ph = phi ptr [ %.sroa.626.0.copyload47.i, %.thread44.i ], [ inttoptr (i64 4 to ptr), %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i" ], [ inttoptr (i64 4 to ptr), %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4620
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.x
  %.sroa.025.037.i = phi i64 [ %.sroa.025.0.copyload.i, %bb.x ], [ %.sroa.025.037.i.ph, %.sink.split ] ; 3 uses
  %.sroa.626.035.i = phi ptr [ %.sroa.626.0.copyload.i, %bb.x ], [ %.sroa.626.035.i.ph, %.sink.split ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4612
  store ptr @194, ptr %i.c, align 8, !noalias !4612
  %i.fe = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.fe, align 8, !noalias !4612
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.ff, align 8, !noalias !4612
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.fg, align 8, !noalias !4612
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.fh, align 8, !noalias !4612
  %i.fi = invoke fastcc noundef nonnull ptr @_ZN6anyhow9__private10format_err17h7fa6d8de0a0b5309E(ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.ae unwind label %bb.aa, !noalias !4612

bb.z:                                             ; preds = %._crit_edge.i, %.thread38.i
  %i.fj = phi i32 [ %spec.select.i8.i.i.i.i.i, %.thread38.i ], [ %.pre.i, %._crit_edge.i ]
  %.sroa.626.0.copyload43.i = phi ptr [ %.sroa.626.0.copyload41.i, %.thread38.i ], [ %.sroa.626.0.copyload.i, %._crit_edge.i ]
  %.sroa.025.0.copyload42.i = phi i64 [ %.sroa.025.0.copyload40.i, %.thread38.i ], [ %.sroa.025.0.copyload.i, %._crit_edge.i ]
  store i32 %i.fj, ptr %0, align 8, !alias.scope !4612
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = icmp eq i64 %.sroa.025.037.i, 0
  br i1 %i.fl, label %.body.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fm = shl nuw i64 %.sroa.025.037.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.626.035.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.626.035.i, i64 noundef %i.fm, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !4612
  br label %.body.i

bb.ac:                                            ; preds = %bb.ae, %bb.z
  %.sink.i = phi i8 [ 5, %bb.ae ], [ 16, %bb.z ]
  %.sroa.025.036.i = phi i64 [ %.sroa.025.037.i, %bb.ae ], [ %.sroa.025.0.copyload42.i, %bb.z ] ; 2 uses
  %.sroa.626.034.i = phi ptr [ %.sroa.626.035.i, %bb.ae ], [ %.sroa.626.0.copyload43.i, %bb.z ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink.i, ptr %i.fn, align 8, !alias.scope !4612
  %i.fo = icmp eq i64 %.sroa.025.036.i, 0
  br i1 %i.fo, label %"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h24302371f05ff73bE.exit14.i", label %bb.ad
end_hunk_0
begin_hunk_1_@"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hac6b39fde76facceE":bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9989)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 54
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !9990, !noundef !6
  %i.be = zext i16 %i.bd to i64
  %i.bf = icmp ult i64 %.sroa.37.0.copyload.i.i, %i.be
  br i1 %i.bf, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit.i", %bb.i
  %.sroa.0.060.i.i.i.i = phi ptr [ %i.bg, %bb.i ], [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit.i" ] ; 4 uses
  %.sroa.5.059.i.i.i.i = phi i64 [ %i.by, %bb.i ], [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit.i" ] ; 3 uses
  %i.bg = load ptr, ptr %.sroa.0.060.i.i.i.i, align 8, !noalias !9991, !noundef !6 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.i
  %i.bh = zext i16 %i.ca to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit.i"
  %.sroa.6.0.lcssa.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit.i" ], [ %i.bh, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit.i" ], [ %i.by, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h7f3900e0bd5220b0E.exit.i" ], [ %i.bg, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bi = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  %i.bj = add nuw nsw i64 %.sroa.6.0.lcssa.i.i.i.i, 1 ; 2 uses
  br i1 %i.bi, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h9fb636e2cd2bf2faE.exit", label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 56
  %i.bl = icmp samesign ult i64 %.sroa.6.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj ; 2 uses
  %xtraiter48 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.pn30.in.i.i.i.i.i.prol = phi ptr [ %i.bn, %.prol.preheader ], [ %i.bm, %bb.h ]
  %.pn28.in.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.h ]
  %.pn28.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.prol, align 8, !noalias !9992, !nonnull !6, !noundef !6 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.prol, i64 56 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !9977

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.pn30.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.pn30.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.unr = phi ptr [ %i.bm, %bb.h ], [ %i.bn, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ], [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bo = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bo, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h9fb636e2cd2bf2faE.exit", label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i = phi ptr [ %i.bx, %.new ], [ %.pn30.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i, align 8, !noalias !9992, !nonnull !6, !noundef !6
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i, i64 56
  %.pn30.i.i.i.i.i.1 = load ptr, ptr %i.bp, align 8, !noalias !9992, !nonnull !6, !noundef !6
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.1, i64 56
  %.pn30.i.i.i.i.i.2 = load ptr, ptr %i.bq, align 8, !noalias !9992, !nonnull !6, !noundef !6
  %i.br = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.2, i64 56
  %.pn30.i.i.i.i.i.3 = load ptr, ptr %i.br, align 8, !noalias !9992, !nonnull !6, !noundef !6
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.3, i64 56
  %.pn30.i.i.i.i.i.4 = load ptr, ptr %i.bs, align 8, !noalias !9992, !nonnull !6, !noundef !6
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.4, i64 56
  %.pn30.i.i.i.i.i.5 = load ptr, ptr %i.bt, align 8, !noalias !9992, !nonnull !6, !noundef !6
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.5, i64 56
  %.pn30.i.i.i.i.i.6 = load ptr, ptr %i.bu, align 8, !noalias !9992, !nonnull !6, !noundef !6
  %i.bv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.6, i64 56
  %.pn28.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.7 = load ptr, ptr %i.bv, align 8, !noalias !9992, !nonnull !6, !noundef !6 ; 2 uses
  %i.bw = icmp eq i64 %.pn28.i.i.i.i.i.7, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.7, i64 56
  br i1 %i.bw, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h9fb636e2cd2bf2faE.exit", label %.new

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = add i64 %.sroa.5.059.i.i.i.i, 1         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i, i64 52
  %i.ca = load i16, ptr %i.bz, align 4, !noalias !9991 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 56, i64 152
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #47, !noalias !9993
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 54
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !9990, !noundef !6
  %i.cd = icmp ult i16 %i.ca, %i.cc
  br i1 %i.cd, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i54.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i, 0
  %..i55.i.i.i.i = select i1 %.not.i54.i.i.i.i, i64 56, i64 152
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i, i64 noundef %..i55.i.i.i.i, i64 noundef 8) #47, !noalias !9993
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @431) #46
          to label %.noexc.i.i unwind label %bb.k, !noalias !9994

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @433) #46, !noalias !9995
  unreachable

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h9fb636e2cd2bf2faE.exit": ; preds = %.prol.loopexit, %.new, %._crit_edge.i.i.i.i
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bj, %._crit_edge.i.i.i.i ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.pn30.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.7, %.new ]
  %.sroa.37.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.aj, align 8, !alias.scope !9987
  store i64 0, ptr %i.al, align 8, !alias.scope !9987
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.37.0..sroa_idx.i.i, align 8, !alias.scope !9987
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h9fb636e2cd2bf2faE.exit", %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h6c4c90071e7fe67cE.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(24) ptr @"_ZN5alloc11collections5btree3map5entry22Entry$LT$K$C$V$C$A$GT$10or_default17h86f9f1a5ded59713E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 17 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [80 x i8], align 8                ; 17 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = load i64, ptr %0, align 8, !range !15, !noundef !6 ; 8 uses
  %i.f = icmp eq i64 %i.e, -9223372036854775808
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.g, align 8 ; 8 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.27.0.copyload = load i64, ptr %.sroa.27.0..sroa_idx, align 8
  br label %bb.bp

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 8 uses
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.710.0.copyload = load ptr, ptr %.sroa.710.0..sroa_idx, align 8 ; 7 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 11 uses
  %.not.i = icmp eq ptr %.sroa.710.0.copyload, null
  br i1 %.not.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !10115
  %i.h = tail call noalias noundef align 8 dereferenceable_or_null(544) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 544, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !10115 ; 11 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f, !prof !16

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 544) #46
          to label %.noexc.i unwind label %bb.bn, !noalias !10115

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  store ptr null, ptr %i.h, align 8, !noalias !10115
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 538
  store ptr %i.h, ptr %.sroa.6.0.copyload, align 8, !noalias !10115
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 8
  store i64 0, ptr %i.k, align 8, !noalias !10115
  store i16 1, ptr %i.j, align 2, !noalias !10116
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.e, ptr %i.l, align 8, !noalias !10117
  %.sroa.526.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %.sroa.0.0.copyload, ptr %.sroa.526.0..sroa_idx27.i, align 8, !noalias !10117
  %.sroa.6.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.sroa.5.0.copyload, ptr %.sroa.6.0..sroa_idx29.i, align 8, !noalias !10117
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  store i64 0, ptr %i.m, align 8, !noalias !10118
  %.sroa.533.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.533.0..sroa_idx34.i, align 8, !noalias !10118
  %.sroa.636.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  store i64 0, ptr %.sroa.636.0..sroa_idx37.i, align 8, !noalias !10118
  br label %.loopexit

bb.g:                                             ; preds = %bb.c
  %.sink63.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.sink63.i.sroa.gep179.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  %.sink62.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sink62.i.sroa.gep181.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10119
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.710.0.copyload, i64 538 ; 2 uses
  %i.o = load i16, ptr %i.n, align 2, !noalias !10120, !noundef !6 ; 2 uses
  %i.p = icmp ugt i16 %i.o, 10
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = icmp ult i64 %.sroa.9.0.copyload, 5
  store ptr %.sroa.710.0.copyload, ptr %i.d, align 8, !noalias !10120
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.8.0.copyload, ptr %i.r, align 8, !noalias !10120
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  br i1 %i.q, label %.invoke.i.i.i, label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.t = zext nneg i16 %i.o to i64                ; 2 uses
  %1 = add nuw nsw i64 %i.t, 1                    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.710.0.copyload, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10121)
  %i.v = add i64 %.sroa.9.0.copyload, 1           ; 3 uses
  %.not.i.i.i.i = icmp ugt i64 %1, %i.v
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.sroa.9.0.copyload ; 4 uses
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10122)
  br label %.thread.i.i

bb.k:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.v
  %i.y = sub nsw i64 %i.t, %.sroa.9.0.copyload
  %i.z = mul nsw i64 %i.y, 24                     ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr nonnull align 8 %i.w, i64 %i.z, i1 false), !alias.scope !10123, !noalias !10124
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.710.0.copyload, i64 272 ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %.sroa.9.0.copyload
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.ab, i64 %i.z, i1 false), !alias.scope !10125, !noalias !10124
  br label %.thread.i.i

bb.l:                                             ; preds = %bb.h
  switch i64 %.sroa.9.0.copyload, label %bb.m [
    i64 5, label %.invoke.i.i.i
    i64 6, label %bb.n
  ]

.invoke.i.i.i:                                    ; preds = %bb.l, %bb.h
  %.sink.i.i.i = phi i64 [ %.sroa.9.0.copyload, %bb.l ], [ 4, %bb.h ]
  store i64 %.sink.i.i.i, ptr %i.s, align 8, !noalias !10120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10120
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h27e851480b466f1eE"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.p unwind label %bb.s, !noalias !10120

bb.m:                                             ; preds = %bb.l
  store i64 6, ptr %i.s, align 8, !noalias !10120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10120
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h27e851480b466f1eE"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.o unwind label %bb.s, !noalias !10120

bb.n:                                             ; preds = %bb.l
  store i64 5, ptr %i.s, align 8, !noalias !10120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10120
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h27e851480b466f1eE"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.p unwind label %bb.s, !noalias !10120

bb.o:                                             ; preds = %bb.m
  %i.ad = add i64 %.sroa.9.0.copyload, -7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.invoke.i.i.i
  %.sink63.i.sroa.phi.i.i = phi ptr [ %.sink63.i.sroa.gep.i.i, %.invoke.i.i.i ], [ %.sink63.i.sroa.gep179.i.i, %bb.n ], [ %.sink63.i.sroa.gep179.i.i, %bb.o ]
  %.sroa.10.0.i.i.i = phi i64 [ %.sroa.9.0.copyload, %.invoke.i.i.i ], [ 0, %bb.n ], [ %i.ad, %bb.o ] ; 10 uses
  %i.ae = load ptr, ptr %.sink63.i.sroa.phi.i.i, align 8, !noalias !10120, !nonnull !6, !noundef !6 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 538 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !noalias !10126, !noundef !6 ; 2 uses
  %i.ah = zext i16 %i.ag to i64                   ; 2 uses
  %2 = add i16 %i.ag, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10127)
  %.not.i41.not.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i, %i.ah
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %.sroa.10.0.i.i.i ; 4 uses
  br i1 %.not.i41.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10128)
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.ak = add nuw nsw i64 %.sroa.10.0.i.i.i, 1    ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.ak
  %i.am = sub nuw nsw i64 %i.ah, %.sroa.10.0.i.i.i
  %i.an = mul nuw nsw i64 %i.am, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr nonnull align 8 %i.aj, i64 %i.an, i1 false), !alias.scope !10129, !noalias !10126
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 272 ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.sroa.10.0.i.i.i
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.ak
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr nonnull align 8 %i.ap, i64 %i.an, i1 false), !alias.scope !10130, !noalias !10126
  br label %bb.u

.thread.i.i:                                      ; preds = %bb.k, %bb.j
  store i64 %i.e, ptr %i.w, align 8, !alias.scope !10131, !noalias !10132
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.ar, align 8, !alias.scope !10131, !noalias !10132
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %.sroa.5.0.copyload, ptr %i.as, align 8, !alias.scope !10131, !noalias !10132
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.710.0.copyload, i64 272
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %.sroa.9.0.copyload ; 3 uses
  store i64 0, ptr %i.au, align 8, !alias.scope !10133, !noalias !10124
  %.sroa.6184.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.6184.0..sroa_idx.i.i, align 8, !alias.scope !10133, !noalias !10124
  %.sroa.8185.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 0, ptr %.sroa.8185.0..sroa_idx.i.i, align 8, !alias.scope !10133, !noalias !10124
  %3 = trunc nuw nsw i64 %1 to i16
  store i16 %3, ptr %i.n, align 2, !noalias !10124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10119
  br label %.loopexit

bb.s:                                             ; preds = %.invoke.i.i.i, %bb.m, %bb.n
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = icmp eq i64 %i.e, 0
  br i1 %i.aw, label %.body, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !10134
  br label %.body

bb.u:                                             ; preds = %bb.r, %bb.q
  store i64 %i.e, ptr %i.aj, align 8, !alias.scope !10135, !noalias !10136
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.ax, align 8, !alias.scope !10135, !noalias !10136
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %.sroa.5.0.copyload, ptr %i.ay, align 8, !alias.scope !10135, !noalias !10136
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 272
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %.sroa.10.0.i.i.i ; 3 uses
  store i64 0, ptr %i.ba, align 8, !alias.scope !10137, !noalias !10126
  %.sroa.6187.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.6187.0..sroa_idx.i.i, align 8, !alias.scope !10137, !noalias !10126
  %.sroa.8188.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 0, ptr %.sroa.8188.0..sroa_idx.i.i, align 8, !alias.scope !10137, !noalias !10126
  store i16 %2, ptr %i.af, align 2, !noalias !10126
  %.sroa.023.0.copyload.i.i = load i64, ptr %i.c, align 8, !noalias !10138 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !10138 ; 2 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !10138 ; 2 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !10138 ; 2 uses
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !10138 ; 2 uses
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.7.sroa.8.0.copyload.i.i = load i64, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !10138 ; 2 uses
  %.sroa.726.0.copyload.i.i = load ptr, ptr %.sink63.i.sroa.gep.i.i, align 8, !noalias !10138 ; 3 uses
  %.sroa.827.0.copyload.i.i = load i64, ptr %.sink62.i.sroa.gep.i.i, align 8, !noalias !10138
  %.sroa.928.0.copyload.i.i = load ptr, ptr %.sink63.i.sroa.gep179.i.i, align 8, !noalias !10138 ; 3 uses
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sink62.i.sroa.gep181.i.i, align 8, !noalias !10138 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10119
  %.not.i.i = icmp eq i64 %.sroa.023.0.copyload.i.i, -9223372036854775808
  br i1 %.not.i.i, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.726.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.928.0.copyload.i.i) ]
  %i.bb = load ptr, ptr %.sroa.726.0.copyload.i.i, align 8, !noalias !10139, !noundef !6 ; 2 uses
  %.not.i278.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i278.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.v
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %.sroa.887.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.887.sroa.6.0..sroa.887.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.887.sroa.7.0..sroa.887.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sroa.887.sroa.8.0..sroa.887.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.887.sroa.9.0..sroa.887.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.sroa.890.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %.sroa.993.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %.sroa.1199.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.ak

._crit_edge.i.i:                                  ; preds = %bb.bl, %bb.v
  %.sroa.22.0.lcssa.i.i = phi i64 [ %.sroa.10.0.copyload.i.i, %bb.v ], [ %.sroa.1199.0.copyload101.i.i, %bb.bl ]
  %.sroa.18.0.lcssa.i.i = phi ptr [ %.sroa.928.0.copyload.i.i, %bb.v ], [ %.sroa.1096.0.i.i, %bb.bl ] ; 3 uses
  %.sroa.12.0.lcssa.i.i = phi i64 [ %.sroa.7.sroa.8.0.copyload.i.i, %bb.v ], [ %.sroa.887.sroa.9.0.i.i, %bb.bl ]
  %.sroa.11.0.lcssa.i.i = phi ptr [ %.sroa.7.sroa.7.0.copyload.i.i, %bb.v ], [ %.sroa.887.sroa.8.0.i.i, %bb.bl ] ; 5 uses
  %.sroa.913.0.lcssa.i.i = phi i64 [ %.sroa.7.sroa.6.0.copyload.i.i, %bb.v ], [ %.sroa.887.sroa.7.0.i.i, %bb.bl ] ; 5 uses
  %.sroa.9.0.lcssa.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i, %bb.v ], [ %.sroa.887.sroa.6.0.i.i, %bb.bl ]
  %.sroa.8.0.lcssa.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i, %bb.v ], [ %.sroa.887.sroa.0.0.i.i, %bb.bl ] ; 5 uses
  %.sroa.03.0.lcssa.i.i = phi i64 [ %.sroa.023.0.copyload.i.i, %bb.v ], [ %.sroa.084.0.i.i, %bb.bl ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.bf = load ptr, ptr %.sroa.6.0.copyload, align 8, !noalias !10140, !noundef !6 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 8 ; 2 uses
  %.not.i29.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i29.i.i, label %bb.w, label %bb.y, !prof !16

bb.w:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @418) #46
          to label %bb.x unwind label %bb.ag, !noalias !10140

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10141)
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !10141, !noalias !10140, !noundef !6 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !10142
  %i.bi = tail call noalias noundef align 8 dereferenceable_or_null(640) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 640, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !10142 ; 14 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.z, label %bb.ab, !prof !16

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 640) #46
          to label %.noexc.i.i.i.i unwind label %bb.aa, !noalias !10142

.noexc.i.i.i.i:                                   ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.ab:                                            ; preds = %bb.y
  store ptr null, ptr %i.bi, align 8, !noalias !10142
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 538 ; 2 uses
  store i16 0, ptr %i.bl, align 2, !noalias !10142
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 544
  store ptr %i.bf, ptr %i.bm, align 8, !noalias !10142
  %i.bn = add i64 %i.bh, 1
  store ptr %i.bi, ptr %i.bf, align 8, !noalias !10143
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 536
  store i16 0, ptr %i.bo, align 8, !noalias !10144
  store ptr %i.bi, ptr %.sroa.6.0.copyload, align 8, !alias.scope !10141, !noalias !10140
  store i64 %i.bn, ptr %i.bg, align 8, !alias.scope !10141, !noalias !10140
  %i.bp = icmp eq i64 %.sroa.22.0.lcssa.i.i, %i.bh
  br i1 %i.bp, label %bb.bm, label %.invoke.i.i.i.i, !prof !7

.invoke.i.i.i.i:                                  ; preds = %bb.ab
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @420, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @421) #46
          to label %.cont.i.i.i.i unwind label %bb.ac, !noalias !10145

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ac:                                            ; preds = %.invoke.i.i.i.i
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = icmp eq i64 %.sroa.913.0.lcssa.i.i, 0
  br i1 %i.br, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.lcssa.i.i) ]
  %i.bs = shl nuw i64 %.sroa.913.0.lcssa.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0.lcssa.i.i, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !10145
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bt = icmp eq i64 %.sroa.03.0.lcssa.i.i, 0
  br i1 %i.bt, label %.body, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.lcssa.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.lcssa.i.i, i64 noundef %.sroa.03.0.lcssa.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !10146
  br label %.body

bb.ag:                                            ; preds = %bb.w
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = icmp eq i64 %.sroa.03.0.lcssa.i.i, 0
  br i1 %i.bv, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.lcssa.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.lcssa.i.i, i64 noundef %.sroa.03.0.lcssa.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !10147
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.bw = icmp eq i64 %.sroa.913.0.lcssa.i.i, 0
  br i1 %i.bw, label %.body, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.lcssa.i.i) ]
  %i.bx = shl nuw i64 %.sroa.913.0.lcssa.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0.lcssa.i.i, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !10140
  br label %.body

bb.ak:                                            ; preds = %bb.bl, %.lr.ph.i.i
  %i.by = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %i.iy, %bb.bl ] ; 12 uses
  %.sroa.03.0288.i.i = phi i64 [ %.sroa.023.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.084.0.i.i, %bb.bl ] ; 7 uses
  %.sroa.8.0287.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.887.sroa.0.0.i.i, %bb.bl ] ; 7 uses
  %.sroa.9.0286.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.887.sroa.6.0.i.i, %bb.bl ] ; 5 uses
  %.sroa.913.0285.i.i = phi i64 [ %.sroa.7.sroa.6.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.887.sroa.7.0.i.i, %bb.bl ] ; 7 uses
  %.sroa.11.0284.i.i = phi ptr [ %.sroa.7.sroa.7.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.887.sroa.8.0.i.i, %bb.bl ] ; 7 uses
  %.sroa.12.0283.i.i = phi i64 [ %.sroa.7.sroa.8.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.887.sroa.9.0.i.i, %bb.bl ] ; 5 uses
  %.sroa.1220.0282.i.i = phi ptr [ %.sroa.726.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.890.0.i.i, %bb.bl ]
  %.sroa.15.0281.i.i = phi i64 [ %.sroa.827.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.993.0.i.i, %bb.bl ] ; 2 uses
  %.sroa.18.0280.i.i = phi ptr [ %.sroa.928.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.1096.0.i.i, %bb.bl ] ; 3 uses
  %.sroa.22.0279.i.i = phi i64 [ %.sroa.10.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.1199.0.copyload101.i.i, %bb.bl ]
  %i.bz = add i64 %.sroa.15.0281.i.i, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.1220.0282.i.i, i64 536
  %i.cb = load i16, ptr %i.ca, align 8, !noalias !10139 ; 5 uses
  %i.cc = zext i16 %i.cb to i64                   ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10119
  %i.cd = icmp eq i64 %.sroa.22.0279.i.i, %.sroa.15.0281.i.i
  br i1 %i.cd, label %bb.am, label %bb.al, !prof !7

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @427, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @428) #46
          to label %bb.an unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !10148

bb.am:                                            ; preds = %bb.ak
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 538
  %i.cf = load i16, ptr %i.ce, align 2, !noalias !10148, !noundef !6 ; 4 uses
  %i.cg = icmp ult i16 %i.cf, 11
  br i1 %i.cg, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.al
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.ch = icmp ult i16 %i.cb, 5
  store ptr %i.by, ptr %i.b, align 8, !noalias !10148
  store i64 %i.bz, ptr %i.bc, align 8, !noalias !10148
  br i1 %i.ch, label %.invoke.i41.i.i, label %bb.av

bb.ap:                                            ; preds = %bb.am
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 538
  %i.cj = zext nneg i16 %i.cf to i64              ; 5 uses
  %i.ck = add nuw nsw i16 %i.cf, 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10149)
  %i.cm = add nuw nsw i64 %i.cc, 1                ; 7 uses
  %4 = icmp ugt i16 %i.cf, %i.cb                  ; 2 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.cc ; 4 uses
  br i1 %4, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10150)
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.cm
  %i.cp = sub nuw nsw i64 %i.cj, %i.cc
  %i.cq = mul nuw nsw i64 %i.cp, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.co, ptr nonnull align 8 %i.cn, i64 %i.cq, i1 false), !alias.scope !10151, !noalias !10152
  %i.cr = getelementptr inbounds nuw i8, ptr %i.by, i64 272 ; 2 uses
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %i.cc
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %i.cm
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ct, ptr nonnull align 8 %i.cs, i64 %i.cq, i1 false), !alias.scope !10153, !noalias !10152
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  store i64 %.sroa.03.0288.i.i, ptr %i.cn, align 8, !alias.scope !10154, !noalias !10155
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %.sroa.8.0287.i.i, ptr %i.cu, align 8, !alias.scope !10154, !noalias !10155
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i64 %.sroa.9.0286.i.i, ptr %i.cv, align 8, !alias.scope !10154, !noalias !10155
  %i.cw = getelementptr inbounds nuw i8, ptr %i.by, i64 272
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.cc ; 3 uses
  store i64 %.sroa.913.0285.i.i, ptr %i.cx, align 8, !alias.scope !10156, !noalias !10152
  %.sroa.6190.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %.sroa.11.0284.i.i, ptr %.sroa.6190.0..sroa_idx.i.i, align 8, !alias.scope !10156, !noalias !10152
  %.sroa.8191.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 %.sroa.12.0283.i.i, ptr %.sroa.8191.0..sroa_idx.i.i, align 8, !alias.scope !10156, !noalias !10152
  %i.cy = add nuw nsw i64 %i.cj, 2                ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.by, i64 544 ; 8 uses
  br i1 %4, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cm
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cc
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = sub nuw nsw i64 %i.cj, %i.cc
  %i.de = shl nuw nsw i64 %i.dd, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dc, ptr nonnull align 8 %i.da, i64 %i.de, i1 false), !alias.scope !10157, !noalias !10152
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cm
  store ptr %.sroa.18.0280.i.i, ptr %i.df, align 8, !alias.scope !10157, !noalias !10152
  store i16 %i.ck, ptr %i.ci, align 2, !noalias !10152
  %i.dg = icmp samesign ult i64 %i.cm, %i.cy
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i.preheader, label %.thread211.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.au
  %i.dh = add nuw nsw i64 %i.cj, 1
  %i.di = sub nsw i64 %i.dh, %i.cc
  %i.dj = sub nsw i64 %i.cj, %i.cc
  %xtraiter340 = and i64 %i.di, 3                 ; 2 uses
  %lcmp.mod341.not = icmp eq i64 %xtraiter340, 0
  br i1 %lcmp.mod341.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.dk, %.lr.ph.i.i.i.i.i.prol ], [ %i.cm, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter342 = phi i64 [ %prol.iter342.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.dk = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol, 1 ; 2 uses
  %i.dl = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.sroa.0.06.i.i.i.i.i.prol
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !10158, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.by, ptr %i.dn, align 8, !noalias !10159
  %i.do = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol to i16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 536
  store i16 %i.do, ptr %i.dp, align 8, !noalias !10159
  %prol.iter342.next = add i64 %prol.iter342, 1   ; 2 uses
  %prol.iter342.cmp.not = icmp eq i64 %prol.iter342.next, %xtraiter340
  br i1 %prol.iter342.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !10078

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.unr = phi i64 [ %i.cm, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dk, %.lr.ph.i.i.i.i.i.prol ]
  %i.dq = icmp ult i64 %i.dj, 3
  br i1 %i.dq, label %.thread211.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi i64 [ %i.eg, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.dr = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.sroa.0.06.i.i.i.i.i
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !10158, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.by, ptr %i.dt, align 8, !noalias !10159
  %i.du = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i to i16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 536
  store i16 %i.du, ptr %i.dv, align 8, !noalias !10159
  %i.dw = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 2 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dr
  %i.dy = load ptr, ptr %i.dx, align 8, !noalias !10158, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.by, ptr %i.dy, align 8, !noalias !10159
  %i.dz = trunc nuw nsw i64 %i.dr to i16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 536
  store i16 %i.dz, ptr %i.ea, align 8, !noalias !10159
  %i.eb = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 3 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dw
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !10158, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.by, ptr %i.ed, align 8, !noalias !10159
  %i.ee = trunc nuw nsw i64 %i.dw to i16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 536
  store i16 %i.ee, ptr %i.ef, align 8, !noalias !10159
  %i.eg = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 4 ; 2 uses
  %i.eh = icmp ult i64 %.sroa.0.06.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.eb
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !10158, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.by, ptr %i.ej, align 8, !noalias !10159
  %i.ek = trunc nuw nsw i64 %i.eb to i16
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 536
  store i16 %i.ek, ptr %i.el, align 8, !noalias !10159
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.eg, %i.cy
  br i1 %exitcond.not.i.i.i.i.i.3, label %.thread211.i.i, label %.lr.ph.i.i.i.i.i

bb.av:                                            ; preds = %bb.ao
  switch i16 %i.cb, label %bb.aw [
    i16 5, label %.invoke.i41.i.i
    i16 6, label %bb.ax
  ]

.invoke.i41.i.i:                                  ; preds = %bb.av, %bb.ao
  %.sink.i42.i.i = phi i64 [ 5, %bb.av ], [ 4, %bb.ao ]
  store i64 %.sink.i42.i.i, ptr %i.bd, align 8, !noalias !10148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10148
  invoke fastcc void @"_ZN5alloc11collections5btree4node212Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h7b1a27c4f405979eE"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.ay unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !10148

bb.aw:                                            ; preds = %bb.av
  store i64 6, ptr %i.bd, align 8, !noalias !10148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10148
  invoke fastcc void @"_ZN5alloc11collections5btree4node212Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h7b1a27c4f405979eE"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.bg unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !10148

bb.ax:                                            ; preds = %bb.av
  store i64 5, ptr %i.bd, align 8, !noalias !10148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10148
  invoke fastcc void @"_ZN5alloc11collections5btree4node212Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h7b1a27c4f405979eE"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.bc unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !10148

bb.ay:                                            ; preds = %.invoke.i41.i.i
  %i.em = load ptr, ptr %.sroa.890.0..sroa_idx.i.i, align 8, !noalias !10148, !nonnull !6, !noundef !6 ; 12 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 538 ; 2 uses
  %i.eo = load i16, ptr %i.en, align 2, !noalias !10160, !noundef !6 ; 3 uses
  %i.ep = zext i16 %i.eo to i64                   ; 4 uses
  %i.eq = add i16 %i.eo, 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  %i.es = add nuw nsw i64 %i.cc, 1                ; 7 uses
  %.not.i38.not.i.i.i = icmp ult i16 %i.cb, %i.eo
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %i.cc ; 7 uses
  br i1 %.not.i38.not.i.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i64 %.sroa.03.0288.i.i, ptr %i.et, align 8, !noalias !10161
  %.sroa.11108.0..sroa_idx111.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr %.sroa.8.0287.i.i, ptr %.sroa.11108.0..sroa_idx111.i.i, align 8, !noalias !10161
  %.sroa.14.0..sroa_idx121.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %.sroa.9.0286.i.i, ptr %.sroa.14.0..sroa_idx121.i.i, align 8, !noalias !10161
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 272
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.eu, i64 %i.cc ; 3 uses
  store i64 %.sroa.913.0285.i.i, ptr %i.ev, align 8, !noalias !10162
  %.sroa.11135.0..sroa_idx138.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store ptr %.sroa.11.0284.i.i, ptr %.sroa.11135.0..sroa_idx138.i.i, align 8, !noalias !10162
  %.sroa.14146.0..sroa_idx149.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store i64 %.sroa.12.0283.i.i, ptr %.sroa.14146.0..sroa_idx149.i.i, align 8, !noalias !10162
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %i.es
  %i.ex = sub nuw nsw i64 %i.ep, %i.cc            ; 2 uses
  %i.ey = mul nuw nsw i64 %i.ex, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ew, ptr nonnull align 8 %i.et, i64 %i.ey, i1 false), !alias.scope !10163, !noalias !10160
  store i64 %.sroa.03.0288.i.i, ptr %i.et, align 8, !noalias !10161
  %.sroa.11108.0..sroa_idx113.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr %.sroa.8.0287.i.i, ptr %.sroa.11108.0..sroa_idx113.i.i, align 8, !noalias !10161
  %.sroa.14.0..sroa_idx123.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %.sroa.9.0286.i.i, ptr %.sroa.14.0..sroa_idx123.i.i, align 8, !noalias !10161
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 272 ; 2 uses
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.ez, i64 %i.cc ; 4 uses
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.ez, i64 %i.es
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fb, ptr nonnull align 8 %i.fa, i64 %i.ey, i1 false), !alias.scope !10164, !noalias !10160
  store i64 %.sroa.913.0285.i.i, ptr %i.fa, align 8, !noalias !10162
  %.sroa.11135.0..sroa_idx140.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store ptr %.sroa.11.0284.i.i, ptr %.sroa.11135.0..sroa_idx140.i.i, align 8, !noalias !10162
  %.sroa.14146.0..sroa_idx151.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store i64 %.sroa.12.0283.i.i, ptr %.sroa.14146.0..sroa_idx151.i.i, align 8, !noalias !10162
  %i.fc = getelementptr inbounds nuw i8, ptr %i.em, i64 544 ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.es
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.cc
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = shl nuw nsw i64 %i.ex, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ff, ptr nonnull align 8 %i.fd, i64 %i.fg, i1 false), !alias.scope !10165, !noalias !10160
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.fh = getelementptr inbounds nuw i8, ptr %i.em, i64 544 ; 6 uses
  %i.fi = add nuw nsw i64 %i.ep, 2                ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.es
  store ptr %.sroa.18.0280.i.i, ptr %i.fj, align 8, !alias.scope !10165, !noalias !10160
  store i16 %i.eq, ptr %i.en, align 2, !noalias !10160
  %i.fk = icmp samesign ult i64 %i.es, %i.fi
  br i1 %i.fk, label %.lr.ph.i.i39.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc3f5a96fa23d48b7E.exit42.i.i.i"

.lr.ph.i.i39.i.i.i.preheader:                     ; preds = %bb.bb
  %i.fl = add nuw nsw i64 %i.ep, 1
  %i.fm = sub nsw i64 %i.fl, %i.cc
  %i.fn = sub nsw i64 %i.ep, %i.cc
  %xtraiter337 = and i64 %i.fm, 3                 ; 2 uses
  %lcmp.mod338.not = icmp eq i64 %xtraiter337, 0
  br i1 %lcmp.mod338.not, label %.lr.ph.i.i39.i.i.i.prol.loopexit, label %.lr.ph.i.i39.i.i.i.prol

.lr.ph.i.i39.i.i.i.prol:                          ; preds = %.lr.ph.i.i39.i.i.i.preheader, %.lr.ph.i.i39.i.i.i.prol
  %.sroa.0.06.i.i40.i.i.i.prol = phi i64 [ %i.fo, %.lr.ph.i.i39.i.i.i.prol ], [ %i.es, %.lr.ph.i.i39.i.i.i.preheader ] ; 4 uses
  %prol.iter339 = phi i64 [ %prol.iter339.next, %.lr.ph.i.i39.i.i.i.prol ], [ 0, %.lr.ph.i.i39.i.i.i.preheader ]
  %i.fo = add nuw nsw i64 %.sroa.0.06.i.i40.i.i.i.prol, 1 ; 2 uses
  %i.fp = icmp samesign ult i64 %.sroa.0.06.i.i40.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.fp)
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.sroa.0.06.i.i40.i.i.i.prol
  %i.fr = load ptr, ptr %i.fq, align 8, !noalias !10166, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.em, ptr %i.fr, align 8, !noalias !10167
  %i.fs = trunc nuw nsw i64 %.sroa.0.06.i.i40.i.i.i.prol to i16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 536
  store i16 %i.fs, ptr %i.ft, align 8, !noalias !10167
  %prol.iter339.next = add i64 %prol.iter339, 1   ; 2 uses
  %prol.iter339.cmp.not = icmp eq i64 %prol.iter339.next, %xtraiter337
  br i1 %prol.iter339.cmp.not, label %.lr.ph.i.i39.i.i.i.prol.loopexit, label %.lr.ph.i.i39.i.i.i.prol, !llvm.loop !10093

.lr.ph.i.i39.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i39.i.i.i.prol, %.lr.ph.i.i39.i.i.i.preheader
  %.sroa.0.06.i.i40.i.i.i.unr = phi i64 [ %i.es, %.lr.ph.i.i39.i.i.i.preheader ], [ %i.fo, %.lr.ph.i.i39.i.i.i.prol ]
  %i.fu = icmp ult i64 %i.fn, 3
  br i1 %i.fu, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc3f5a96fa23d48b7E.exit42.i.i.i", label %.lr.ph.i.i39.i.i.i

.lr.ph.i.i39.i.i.i:                               ; preds = %.lr.ph.i.i39.i.i.i.prol.loopexit, %.lr.ph.i.i39.i.i.i
  %.sroa.0.06.i.i40.i.i.i = phi i64 [ %i.gk, %.lr.ph.i.i39.i.i.i ], [ %.sroa.0.06.i.i40.i.i.i.unr, %.lr.ph.i.i39.i.i.i.prol.loopexit ] ; 7 uses
end_hunk_1
