Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/clap_builder-eee8b2760265896a.clap_builder.b45a015334136168-cgu.0?download=true
inline.NumInlined: 5218
inline.NumDeleted: 2692
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RINvMs3_NtCs4wP2HXfJTCR_5alloc3stre7replaceReECsfu0rQaTkGUu_12clap_builder:_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit
  %i.ig = load i8, ptr %i.id, align 1, !noalias !341, !noundef !11
  %i.ih = shl nuw nsw i32 %i.hj, 18
  %i.ii = and i32 %i.ih, 1835008
  %i.ij = shl nuw nsw i32 %i.hz, 6
  %i.ik = and i8 %i.ig, 63
  %i.il = zext nneg i8 %i.ik to i32
  %i.im = or disjoint i32 %i.ij, %i.il
  %i.in = or disjoint i32 %i.im, %i.ii
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.io = zext nneg i8 %i.hf to i32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.i.i.peel, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.i.i.peel, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.ib, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.i.i.peel ], [ %i.in, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.i.i.peel ], [ %i.hq, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.i.i.peel ], [ %i.io, %bb.aj ] ; 4 uses
  %i.ip = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.ip)
  %i.iq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.iq, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ir = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.ir, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.is = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.is, i64 3, i64 4
  br label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel

_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel: ; preds = %bb.ak, %bb.al, %bb.am
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.al ], [ %..i.i.peel, %bb.am ], [ 1, %bb.ak ]
  %i.it = add i64 %.sroa.01.0.i.i.peel, %.sroa.04.0117
  %.fr63.i = freeze i64 %i.it                     ; 15 uses
  %i.iu = icmp eq i64 %.fr63.i, 0
  br i1 %i.iu, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel
  %.not.i.i.i21 = icmp ult i64 %.fr63.i, %.sroa.1358.0.copyload
  br i1 %.not.i.i.i21, label %bb.ao, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.an
  %i.iv = icmp eq i64 %.fr63.i, %.sroa.1358.0.copyload
  br i1 %i.iv, label %bb.ap, label %.loopexit150

bb.ao:                                            ; preds = %bb.an
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.1257.0.copyload, i64 %.fr63.i
  %i.ix = load i8, ptr %i.iw, align 1, !alias.scope !339, !noalias !340, !noundef !11
  %i.iy = icmp sgt i8 %i.ix, -65
  br i1 %i.iy, label %bb.ap, label %.loopexit150

bb.ap:                                            ; preds = %bb.ao, %.split.i.i.i, %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel
  %i.iz = icmp samesign eq i64 %.fr63.i, %.sroa.1358.0.copyload
  br i1 %i.iz, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.1257.0.copyload, i64 %.fr63.i
  %i.jb = load i8, ptr %i.ja, align 1, !noalias !341, !noundef !11 ; 3 uses
  %i.jc = icmp sgt i8 %i.jb, -1
  br i1 %i.jc, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.i.i: ; preds = %bb.aq
  %i.jd = add nuw nsw i64 %.fr63.i, 1
  %i.je = icmp samesign ne i64 %i.jd, %.sroa.1358.0.copyload
  tail call void @llvm.assume(i1 %i.je)
  %i.jf = icmp samesign ugt i8 %i.jb, -33
  br i1 %i.jf, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.i.i, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.i.i
  %i.jg = add nuw nsw i64 %.fr63.i, 2
  %i.jh = icmp samesign ne i64 %i.jg, %.sroa.1358.0.copyload
  tail call void @llvm.assume(i1 %i.jh)
  %i.ji = icmp samesign ugt i8 %i.jb, -17
  br i1 %i.ji, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.i.i, label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.i.i
  %i.jj = add nuw nsw i64 %.fr63.i, 3
  %i.jk = icmp samesign ne i64 %i.jj, %.sroa.1358.0.copyload
  tail call void @llvm.assume(i1 %i.jk)
  br label %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.loopexit150:                                     ; preds = %bb.ag, %.split.i.i.i.peel, %bb.ao, %.split.i.i.i, %bb.ab, %.split.i.i.i.peel86, %bb.s, %.split.i.i.i.peel.peel
  %.fr63.i.lcssa = phi i64 [ %.fr63.i115, %.split.i.i.i.peel.peel ], [ %.fr63.i115, %bb.s ], [ %i.fl, %.split.i.i.i.peel86 ], [ %i.fl, %bb.ab ], [ %.sroa.04.0117, %bb.ag ], [ %.sroa.04.0117, %.split.i.i.i.peel ], [ %.fr63.i, %.split.i.i.i ], [ %.fr63.i, %bb.ao ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.1257.0.copyload, i64 noundef %.sroa.1358.0.copyload, i64 noundef %.fr63.i.lcssa, i64 noundef %.sroa.1358.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @450) #44, !noalias !340
  unreachable

.split32.us.i.i:                                  ; preds = %.lr.ph33
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef range(i64 0, -9223372036854775808) %.sroa.15.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #44, !noalias !346
  unreachable

.split32.us.i11.i:                                ; preds = %.preheader.i10.i.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef range(i64 0, -9223372036854775808) %.sroa.15.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #44, !noalias !347
  unreachable

_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.i.i, %bb.aq, %bb.ap
  %.fr63.i145 = phi i64 [ %.fr63.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.i.i ], [ %.sroa.1358.0.copyload, %bb.ap ], [ %.fr63.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.i.i ], [ %.fr63.i, %bb.aq ], [ %.fr63.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.i.i ] ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0117
  %gepdiff = sub nuw nsw i64 %.fr63.i145, %.sroa.04.0117 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.jm = load i64, ptr %i.b, align 8, !range !12, !alias.scope !336, !noundef !11 ; 3 uses
  %i.jn = sub i64 %i.jm, %i.gx
  %i.jo = icmp ugt i64 %gepdiff, %i.jn
  br i1 %i.jo, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i: ; preds = %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.gx, i64 noundef %gepdiff, i64 noundef 1, i64 noundef 1) #43
  %i.jp = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !335, !noundef !11 ; 2 uses
  %i.jq = icmp sgt i64 %i.jp, -1
  tail call void @llvm.assume(i1 %i.jq)
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !335
  %.pre154.pre = load i64, ptr %i.b, align 8, !range !12, !alias.scope !337
  br label %bb.ar

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %i.jr = icmp sgt i64 %i.gx, -1
  tail call void @llvm.assume(i1 %i.jr)
  %.not.i = icmp eq i64 %.fr63.i145, %.sroa.04.0117
  br i1 %.not.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit, label %bb.ar

bb.ar:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i
  %.pre154 = phi i64 [ %.pre154.pre, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i ], [ %i.jm, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i ]
  %i.js = phi ptr [ %.pre, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i ], [ %i.gw, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i ] ; 2 uses
  %i.jt = phi i64 [ %i.jp, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i ], [ %i.gx, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ju, ptr nonnull readonly align 1 %i.jl, i64 %gepdiff, i1 false), !noalias !335
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i, %bb.ar
  %i.jv = phi ptr [ %i.js, %bb.ar ], [ %i.gw, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i ]
  %i.jw = phi i64 [ %.pre154, %bb.ar ], [ %i.jm, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i ] ; 2 uses
  %i.jx = phi i64 [ %i.jt, %bb.ar ], [ %i.gx, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i ]
  %i.jy = add i64 %i.jx, %gepdiff                 ; 4 uses
  store i64 %i.jy, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !335
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.jz = icmp eq i64 %i.jw, %i.jy
  br i1 %i.jz, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i24, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i22, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i24: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.jw, i64 noundef 1, i64 noundef 1, i64 noundef 1) #43
  %i.ka = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !338, !noundef !11 ; 2 uses
  %i.kb = icmp sgt i64 %i.ka, -1
  tail call void @llvm.assume(i1 %i.kb)
  %.pre155 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !338
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit25

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i22: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit
  %i.kc = icmp sgt i64 %i.jy, -1
  tail call void @llvm.assume(i1 %i.kc)
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit25

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit25: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i24, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i22
  %i.kd = phi ptr [ %.pre155, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i24 ], [ %i.jv, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i22 ] ; 2 uses
  %i.ke = phi i64 [ %i.ka, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i24 ], [ %i.jy, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i22 ] ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.ke
  store i8 10, ptr %i.kf, align 1, !noalias !338
  %i.kg = add nuw i64 %i.ke, 1                    ; 2 uses
  store i64 %i.kg, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !338
  br label %.lr.ph.i, !llvm.loop !322

.loopexit:                                        ; preds = %.loopexit151.peel, %bb.ah, %bb.j, %bb.b, %bb.i, %bb.m, %bb.p, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.split
  %i.kh = phi i64 [ %i.i, %bb.i ], [ %i.i, %bb.m ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.split ], [ %i.i, %bb.p ], [ %i.i, %bb.j ], [ %i.i, %bb.b ], [ 0, %.loopexit151.peel ], [ %i.gx, %bb.ah ] ; 5 uses
  %.sroa.04.0105 = phi i64 [ %.sroa.04.0.us, %bb.i ], [ %.sroa.04.0.us, %bb.m ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.split ], [ %.sroa.04.0.us, %bb.p ], [ %.sroa.04.0.us, %bb.j ], [ %.sroa.04.0.us, %bb.b ], [ 0, %.loopexit151.peel ], [ %.sroa.04.0117, %bb.ah ] ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0105
  %gepdiff80 = sub nuw nsw i64 %2, %.sroa.04.0105 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.kj = load i64, ptr %i.b, align 8, !range !12, !alias.scope !349, !noundef !11
  %i.kk = sub i64 %i.kj, %i.kh
  %i.kl = icmp ugt i64 %gepdiff80, %i.kk
  br i1 %i.kl, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i28, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i26, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i28: ; preds = %.loopexit
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.kh, i64 noundef %gepdiff80, i64 noundef 1, i64 noundef 1) #43
  %i.km = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !348, !noundef !11 ; 2 uses
  %i.kn = icmp sgt i64 %i.km, -1
  tail call void @llvm.assume(i1 %i.kn)
  br label %bb.as

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i26: ; preds = %.loopexit
  %i.ko = icmp sgt i64 %i.kh, -1
  tail call void @llvm.assume(i1 %i.ko)
  %.not.i27 = icmp eq i64 %2, %.sroa.04.0105
  br i1 %.not.i27, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit29, label %bb.as

bb.as:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i26, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i28
  %i.kp = phi i64 [ %i.km, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i28 ], [ %i.kh, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i26 ] ; 2 uses
  %i.kq = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !348, !nonnull !11, !noundef !11
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.kp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kr, ptr nonnull readonly align 1 %i.ki, i64 %gepdiff80, i1 false), !noalias !348
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit29

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit29: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i26, %bb.as
  %i.ks = phi i64 [ %i.kp, %bb.as ], [ %i.kh, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i26 ]
  %i.kt = add i64 %i.ks, %gepdiff80
  store i64 %i.kt, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RINvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser21parse_help_subcommandINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3r_7RawArgs9remaining0EEB9_(ptr nofree nonnull readonly captures(address, read_provenance) %.16.val, ptr nofree noundef nonnull readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [14 x i8], align 2                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [712 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call fastcc void @_RNvXsd_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7CommandNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(712) %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %.16.val) #45
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.l = icmp eq ptr %0, %1
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit
  %.sroa.06.056 = phi ptr [ %i.cj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit ], [ %i.k, %bb.a ] ; 10 uses
  %.sroa.0.01655 = phi ptr [ %i.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit ], [ %0, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.01655, i64 24 ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.01655, i64 8
  %.val.i = load ptr, ptr %i.n, align 8, !noalias !384, !nonnull !11, !noundef !11 ; 3 uses
  %i.o = getelementptr i8, ptr %.sroa.0.01655, i64 16
  %.val3.i = load i64, ptr %i.o, align 8, !noalias !384, !noundef !11 ; 5 uses
  %i.p = getelementptr i8, ptr %.sroa.06.056, i64 184
  %.sroa.06.0.val = load ptr, ptr %i.p, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.06.056, i64 192
  %.sroa.06.0.val18 = load i64, ptr %i.q, align 8, !noundef !11 ; 2 uses
  %.idx.i = mul nuw nsw i64 %.sroa.06.0.val18, 712
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val, i64 %.idx.i
  %i.s = icmp eq i64 %.sroa.06.0.val18, 0
  br i1 %i.s, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB8_7Command15find_subcommandRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrE0Bc_.exit.i.i
  %i.t = phi ptr [ %i.u, %_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB8_7Command15find_subcommandRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrE0Bc_.exit.i.i ], [ %.sroa.06.0.val, %.lr.ph ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 712 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.v = getelementptr i8, ptr %i.t, i64 568
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !385, !noalias !386, !noundef !11 ; 8 uses
  %i.x = icmp eq i64 %.val3.i, %i.w
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 560
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !385, !noalias !386, !nonnull !11, !noundef !11 ; 2 uses
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i, ptr nonnull %i.z, i64 %.val3.i), !noalias !387
  %i.aa = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.aa, label %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEBa_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !385, !noalias !386, !nonnull !11, !noundef !11 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !385, !noalias !386, !noundef !11 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %i.ae, 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB8_7Command15find_subcommandRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrE0Bc_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtB15_7commandNtB2J_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1R_NCINvMs5_B2J_B2X_10aliases_toRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrE0E0E0B17_.exit.backedge.i.i.i.i.i
  %i.ag = phi ptr [ %i.ah, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtB15_7commandNtB2J_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1R_NCINvMs5_B2J_B2X_10aliases_toRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrE0E0E0B17_.exit.backedge.i.i.i.i.i ], [ %i.ac, %bb.c ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 8
  %.val6.i.i.i.i.i = load i64, ptr %i.ai, align 8, !noalias !388, !noundef !11
  %i.aj = icmp eq i64 %.val3.i, %.val6.i.i.i.i.i
  br i1 %i.aj, label %.split.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtB15_7commandNtB2J_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1R_NCINvMs5_B2J_B2X_10aliases_toRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrE0E0E0B17_.exit.backedge.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i
  %.val5.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !noalias !388, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val5.i.i.i.i.i, i64 %.val3.i), !noalias !389
  %i.ak = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEBa_.exit.loopexit, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtB15_7commandNtB2J_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1R_NCINvMs5_B2J_B2X_10aliases_toRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrE0E0E0B17_.exit.backedge.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtB15_7commandNtB2J_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1R_NCINvMs5_B2J_B2X_10aliases_toRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrE0E0E0B17_.exit.backedge.i.i.i.i.i: ; preds = %.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.not15.i.i.i.i.i = icmp eq ptr %i.ah, %i.af
  br i1 %.not15.i.i.i.i.i, label %_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB8_7Command15find_subcommandRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrE0Bc_.exit.i.i, label %.lr.ph.i.i.i.i.i

_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB8_7Command15find_subcommandRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrE0Bc_.exit.i.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtB15_7commandNtB2J_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1R_NCINvMs5_B2J_B2X_10aliases_toRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrE0E0E0B17_.exit.backedge.i.i.i.i.i, %bb.c
  %i.al = icmp eq ptr %i.u, %i.r
  br i1 %i.al, label %.loopexit, label %.lr.ph.i.i

._crit_edge:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit, %bb.a
  %.sroa.06.0.lcssa = phi ptr [ %i.k, %bb.a ], [ %i.cj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call fastcc void @_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command14write_help_err(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %.sroa.06.0.lcssa, i1 noundef zeroext true) #43
  %i.am = call fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error7for_appB4_(i8 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %.sroa.06.0.lcssa, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.d

bb.d:                                             ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit, %._crit_edge
  %.sroa.0.0 = phi ptr [ %i.ci, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit ], [ %i.am, %._crit_edge ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEBH_(ptr noalias nofree noundef align 8 dereferenceable(712) %i.k) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret ptr %.sroa.0.0

_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEBa_.exit.loopexit: ; preds = %.split.i.i.i.i.i
  %.phi.trans.insert = getelementptr i8, ptr %i.t, i64 560
  %.val.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEBa_.exit

_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEBa_.exit: ; preds = %bb.b, %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEBa_.exit.loopexit
  %.val = phi ptr [ %.val.pre, %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEBa_.exit.loopexit ], [ %i.z, %bb.b ]
  %.not.i.i = icmp slt i64 %i.w, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !21

bb.e:                                             ; preds = %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEBa_.exit
  %i.an = icmp eq i64 %i.w, 0
  br i1 %i.an, label %_RNCINvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB7_6Parser21parse_help_subcommandINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3t_7RawArgs9remaining0EE0Bb_.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.e
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !390
  %i.ao = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.w, i64 noundef range(i64 1, 9) 1) #43, !noalias !390 ; 4 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.f, label %_RNCINvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB7_6Parser21parse_help_subcommandINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3t_7RawArgs9remaining0EE0Bb_.exit.thread

bb.f:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i, %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEBa_.exit
  %.sroa.4.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %_RINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command15find_subcommandRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrEBa_.exit ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.w) #46, !noalias !391
  unreachable

_RNCINvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB7_6Parser21parse_help_subcommandINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3t_7RawArgs9remaining0EE0Bb_.exit: ; preds = %bb.e
  %i.aq = call fastcc noundef align 8 ptr @_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command17__build_subcommand(ptr noalias nofree noundef align 8 dereferenceable(712) %.sroa.06.056, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0) #43 ; 2 uses
  %.not17 = icmp eq ptr %i.aq, null
  br i1 %.not17, label %bb.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit, !prof !19

_RNCINvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB7_6Parser21parse_help_subcommandINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1z_5slice4iter4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENCNvMCs3RZUOUhPFQ6_8clap_lexNtB3t_7RawArgs9remaining0EE0Bb_.exit.thread: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr nonnull readonly align 1 %.val, i64 %i.w, i1 false), !noalias !391
  %i.ar = call fastcc noundef align 8 ptr @_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command17__build_subcommand(ptr noalias nofree noundef align 8 dereferenceable(712) %.sroa.06.056, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %i.w) #43 ; 2 uses
  %.not1735 = icmp eq ptr %i.ar, null
  br i1 %.not1735, label %bb.s, label %bb.r, !prof !19

.loopexit:                                        ; preds = %.lr.ph, %_RNCINvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB8_7Command15find_subcommandRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrE0Bc_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val3.i) #43
  %i.as = load i64, ptr %i.i, align 8, !range !13, !noundef !11
  %.not15 = icmp eq i64 %i.as, -1
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %bb.l

bb.h:                                             ; preds = %.loopexit
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !11, !noundef !11
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noundef !11 ; 7 uses
  %.not.i = icmp slt i64 %i.aw, 0
  br i1 %.not.i, label %bb.j, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread29, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.i
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !392
  %i.ay = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aw, i64 noundef range(i64 1, 9) 1) #43, !noalias !392 ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.h, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i
  %.sroa.414.0.ph = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.h ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.414.0.ph, i64 %i.aw) #46
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread29: ; preds = %bb.i, %bb.k
  %i.ba = phi ptr [ %i.ay, %bb.k ], [ inttoptr (i64 1 to ptr), %bb.i ]
  store i64 %i.aw, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ba, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.aw, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.l

bb.k:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull align 1 %i.au, i64 %i.aw, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread29

bb.l:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread29, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  call void @llvm.experimental.noalias.scope.decl(metadata !395)
  call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.056, i64 232
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !397, !noalias !393, !nonnull !11, !noundef !11 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.06.056, i64 240
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !397, !noalias !393, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %i.be, 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx
  %i.bg = icmp eq i64 %i.be, 0
  br i1 %i.bg, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit, label %.lr.ph151

bb.m:                                             ; preds = %.lr.ph151
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i149, i64 16 ; 2 uses
  %i.bi = add i64 %.sroa.8.0.i.i.i148, 1
  %i.bj = icmp eq ptr %i.bh, %i.bf
  br i1 %i.bj, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit, label %.lr.ph151

.lr.ph151:                                        ; preds = %bb.l, %bb.m
  %.sroa.0.01.i.i.i149 = phi ptr [ %i.bh, %bb.m ], [ %i.bc, %bb.l ] ; 2 uses
  %.sroa.8.0.i.i.i148 = phi i64 [ %i.bi, %bb.m ], [ 0, %bb.l ] ; 4 uses
  %.val.i.i.i = load i128, ptr %.sroa.0.01.i.i.i149, align 8, !noalias !398
  %i.bk = icmp eq i128 %.val.i.i.i, -100310019091698447603793328749864812255
  br i1 %i.bk, label %bb.n, label %bb.m

bb.n:                                             ; preds = %.lr.ph151
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.056, i64 264
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !397, !noalias !393, !noundef !11 ; 2 uses
  %i.bn = icmp ult i64 %.sroa.8.0.i.i.i148, %i.bm
  br i1 %i.bn, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i148, i64 noundef %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !398
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.06.056, i64 256
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !397, !noalias !393, !nonnull !11, !noundef !11
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %.sroa.8.0.i.i.i148 ; 2 uses
  %.val5.i.i = load ptr, ptr %i.bq, align 8, !noalias !399, !nonnull !11, !noundef !11
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %.val6.i.i = load ptr, ptr %i.br, align 8, !noalias !399, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !18, !invariant.load !11, !noalias !399
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !399
  %i.by = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !11, !noalias !399, !nonnull !11
  call void %i.bz(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noundef nonnull %i.bx) #45, !noalias !399, !inline_history !0
  %i.ca = load i128, ptr %i.e, align 16, !noalias !399, !noundef !11
  %.not.i.i20 = icmp eq i128 %i.ca, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !399
  br i1 %.not.i.i20, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit, label %bb.q, !prof !16

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !399
  unreachable

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit: ; preds = %bb.m, %bb.l, %bb.p
  %.sroa.0.0.i.i21 = phi ptr [ %i.bx, %bb.p ], [ null, %bb.l ], [ null, %bb.m ] ; 2 uses
  %.not.i22 = icmp eq ptr %.sroa.0.0.i.i21, null
  %..i = select i1 %.not.i22, ptr @99, ptr %.sroa.0.0.i.i21 ; 5 uses
  store ptr %.sroa.06.056, ptr %i.g, align 8, !alias.scope !393, !noalias !394
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %..i, ptr %i.cb, align 8, !alias.scope !393, !noalias !394
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %i.cc, align 8, !alias.scope !393, !noalias !394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !400
  store i64 0, ptr %i.d, align 8, !alias.scope !401, !noalias !400
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !401, !noalias !400
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !401, !noalias !400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !400
  %i.cd = getelementptr inbounds nuw i8, ptr %..i, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.c, ptr noundef nonnull align 2 dereferenceable(14) %i.cd, i64 14, i1 false), !noalias !400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !400
  %.sroa.0.0.copyload.i = load i8, ptr %i.cd, align 2, !noalias !400
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %..i, i64 32
  %.sroa.7.0.copyload.i = load i8, ptr %.sroa.7.0..sroa_idx.i, align 2, !noalias !400
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %..i, i64 36
  %.sroa.11.0.copyload.i = load i8, ptr %.sroa.11.0..sroa_idx.i, align 2, !noalias !400
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %..i, i64 40
  %.sroa.15.0.copyload.i = load i16, ptr %.sroa.15.0..sroa_idx.i, align 2, !noalias !400
  %.not.i.i23 = icmp eq i8 %.sroa.0.0.copyload.i, -1
  %.not5.i.i = icmp eq i8 %.sroa.7.0.copyload.i, -1
  %or.cond.i = select i1 %.not.i.i23, i1 %.not5.i.i, i1 false
  %.not7.i.i = icmp eq i8 %.sroa.11.0.copyload.i, -1
  %or.cond35.i = select i1 %or.cond.i, i1 %.not7.i.i, i1 false
  %i.ce = icmp eq i16 %.sroa.15.0.copyload.i, 0
  %or.cond36.i = select i1 %or.cond35.i, i1 %i.ce, i1 false ; 2 uses
  %spec.select.i = select i1 %or.cond36.i, ptr inttoptr (i64 1 to ptr), ptr @139
  %spec.select38.i = select i1 %or.cond36.i, i64 0, i64 4
  store ptr %spec.select.i, ptr %i.b, align 8, !noalias !400, !captures !22
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %spec.select38.i, ptr %i.cf, align 8, !noalias !400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !400
  store ptr %i.c, ptr %i.a, align 8, !noalias !400
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
begin_hunk_1_@_RNCINvNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvB1j_3any5checkRB2y_NCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB4u_10MatchedArg14check_explicits_0E0E0B4A_:bb.a
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i, %.lr.ph.split.us.i
  %i.n = phi ptr [ %.promoted.i, %.lr.ph.split.us.i ], [ %i.o, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  %i.p = getelementptr i8, ptr %i.n, i64 16
  %.val6.us.i = load i64, ptr %i.p, align 8, !noalias !1351
  %i.q = icmp eq i64 %.val6.us.i, %i.m
  br i1 %i.q, label %.split.us.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i

.split.us.i:                                      ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val5.us.i = load ptr, ptr %i.r, align 8, !noalias !1351, !nonnull !11, !noundef !11
  %i.s = load ptr, ptr %.8.val, align 8, !noalias !1351, !nonnull !11, !noundef !11
  %bcmp.i.i.i.us.i = tail call i32 @bcmp(ptr nonnull readonly %.val5.us.i, ptr nonnull %i.s, i64 %i.m), !noalias !1351
  %i.t = icmp eq i32 %bcmp.i.i.i.us.i, 0
  br i1 %i.t, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i: ; preds = %.split.us.i, %bb.b
  %.not17.i = icmp eq ptr %i.o, %i.d
  br i1 %.not17.i, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i, label %bb.b

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i
  %i.u = phi ptr [ %i.v, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i ], [ %.promoted.i, %.lr.ph.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  store ptr %i.v, ptr %0, align 8, !alias.scope !1349, !noalias !1350
  %i.w = getelementptr i8, ptr %i.u, i64 8
  %.val5.i = load ptr, ptr %i.w, align 8, !noalias !1351 ; 4 uses
  %i.x = getelementptr i8, ptr %i.u, i64 16
  %.val6.i = load i64, ptr %i.x, align 8, !noalias !1351 ; 3 uses
  %i.y = load i8, ptr %i.e, align 8, !range !34, !noalias !1351, !noundef !11
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.aa = load i64, ptr %i.f, align 8, !noalias !1351, !noundef !11
  %i.ab = icmp eq i64 %.val6.i, %i.aa
  br i1 %i.ab, label %.split.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i

bb.d:                                             ; preds = %.lr.ph.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1351
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val5.i, i64 noundef %.val6.i) #43, !noalias !1351
  %i.ac = load i64, ptr %i.b, align 8, !range !13, !noalias !1351, !noundef !11 ; 2 uses
  %i.ad = load ptr, ptr %i.g, align 8, !noalias !1351 ; 2 uses
  %i.ae = load i64, ptr %i.h, align 8, !noalias !1351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1351
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.af = load ptr, ptr %.8.val, align 8, !noalias !1351, !nonnull !11, !noundef !11
  %i.ag = load i64, ptr %i.f, align 8, !noalias !1351, !noundef !11
  call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ag) #43, !noalias !1351
  %i.ah = load i64, ptr %i.a, align 8, !range !13, !noalias !1351, !noundef !11 ; 2 uses
  %i.ai = load ptr, ptr %i.i, align 8, !noalias !1351 ; 2 uses
  %i.aj = load i64, ptr %i.j, align 8, !noalias !1351
  %i.ak = tail call fastcc noundef zeroext i1 @_RNvNtCsfu0rQaTkGUu_12clap_builder4util14eq_ignore_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.aj) #43, !noalias !1351
  %i.al = icmp sgt i64 %i.ah, 0
  br i1 %i.al, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1352
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1351
  %i.am = icmp sgt i64 %i.ac, 0
  br i1 %i.am, label %bb.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit10.i.i.i.i

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1353
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit10.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit10.i.i.i.i: ; preds = %bb.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1351
  br i1 %i.ak, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1s_3any5checkRBJ_NCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2M_10MatchedArg14check_explicits_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEB2S_.exit, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i: ; preds = %.split.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit10.i.i.i.i, %bb.c
  %.not18.i = icmp eq ptr %i.v, %i.d
  br i1 %.not18.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1s_3any5checkRBJ_NCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2M_10MatchedArg14check_explicits_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEB2S_.exit, label %.lr.ph.split.i, !llvm.loop !1

.split.i:                                         ; preds = %bb.c
  %i.an = load ptr, ptr %.8.val, align 8, !noalias !1351, !nonnull !11, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val5.i, ptr nonnull %i.an, i64 %.val6.i), !noalias !1351
  %i.ao = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ao, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1s_3any5checkRBJ_NCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2M_10MatchedArg14check_explicits_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEB2S_.exit, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i, %.split.us.i
  %.lcssa.ph.i = phi i1 [ true, %.split.us.i ], [ false, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i ]
  store ptr %i.o, ptr %0, align 8, !alias.scope !1349, !noalias !1350
  br label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1s_3any5checkRBJ_NCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2M_10MatchedArg14check_explicits_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEB2S_.exit

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB1s_3any5checkRBJ_NCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2M_10MatchedArg14check_explicits_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEB2S_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit10.i.i.i.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i, %.split.i, %bb.a, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i
  %.lcssa.i = phi i1 [ false, %bb.a ], [ %.lcssa.ph.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit10.i.i.i.i ], [ false, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i ], [ true, %.split.i ]
  ret i1 %.lcssa.i
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvMNtCs9ma7mAhtjN1_8anstream4autoINtB2_10AutoStreamNtNtNtCsaKJjC64KgbL_3std2io5stdio10StderrLockE3newCsfu0rQaTkGUu_12clap_builder(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i8 noundef range(i8 0, 4) %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  switch i8 %2, label %default.unreachable16 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable16:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !1357
  %i.b = call noundef i8 @_RNvNtCs9ma7mAhtjN1_8anstream4auto6choice(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) @96) #43, !noalias !1357, !inline_history !1356
  %i.c = load ptr, ptr %i.a, align 8, !noalias !1357, !nonnull !11, !align !17, !noundef !11
  call fastcc void @_RNvMNtCs9ma7mAhtjN1_8anstream4autoINtB2_10AutoStreamNtNtNtCsaKJjC64KgbL_3std2io5stdio10StderrLockE3newCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %i.c, i8 noundef %i.b) #45, !inline_history !1356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @isatty(i32 noundef 2) #43 ; 0 uses
  store ptr %1, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 -1, ptr %.sroa.413.0..sroa_idx, align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @isatty(i32 noundef 2) #43 ; 0 uses
  store ptr %1, ptr %0, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 -1, ptr %.sroa.49.0..sroa_idx, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx, align 4
  %.sroa.42.sroa.6.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 12, ptr %.sroa.42.sroa.6.0..sroa.42.0..sroa_idx.sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvMNtCs9ma7mAhtjN1_8anstream4autoINtB2_10AutoStreamNtNtNtCsaKJjC64KgbL_3std2io5stdio10StdoutLockE3newCsfu0rQaTkGUu_12clap_builder(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i8 noundef range(i8 0, 4) %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  switch i8 %2, label %default.unreachable16 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable16:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !1361
  %i.b = call noundef i8 @_RNvNtCs9ma7mAhtjN1_8anstream4auto6choice(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) @98) #43, !noalias !1361, !inline_history !1360
  %i.c = load ptr, ptr %i.a, align 8, !noalias !1361, !nonnull !11, !align !17, !noundef !11
  call fastcc void @_RNvMNtCs9ma7mAhtjN1_8anstream4autoINtB2_10AutoStreamNtNtNtCsaKJjC64KgbL_3std2io5stdio10StdoutLockE3newCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %i.c, i8 noundef %i.b) #45, !inline_history !1360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @isatty(i32 noundef 1) #43 ; 0 uses
  store ptr %1, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 -1, ptr %.sroa.413.0..sroa_idx, align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @isatty(i32 noundef 1) #43 ; 0 uses
  store ptr %1, ptr %0, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 -1, ptr %.sroa.49.0..sroa_idx, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx, align 4
  %.sroa.42.sroa.6.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 12, ptr %.sroa.42.sroa.6.0..sroa.42.0..sroa_idx.sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error12invalid_utf8B4_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1364
  %i.b = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 256, i64 noundef range(i64 1, 9) 8) #43, !noalias !1364 ; 46 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #46, !noalias !1364
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 2, ptr %i.b, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %.sroa.460.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.8.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx61, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx63, align 8
  %.sroa.9.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 0, ptr %.sroa.9.0..sroa_idx64, align 8
  %.sroa.10.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 -2, ptr %.sroa.10.0..sroa_idx65, align 8
  %.sroa.1167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr null, ptr %.sroa.1167.0..sroa_idx, align 8
  %.sroa.1269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i8 -1, ptr %.sroa.1269.0..sroa_idx, align 8
  %.sroa.1370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  store i8 -1, ptr %.sroa.1370.0..sroa_idx, align 4
  %.sroa.1472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i8 -1, ptr %.sroa.1472.0..sroa_idx, align 8
  %.sroa.1574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store i16 0, ptr %.sroa.1574.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.b, i64 134
  store i8 -1, ptr %.sroa.16.0..sroa_idx75, align 2
  %.sroa.1777.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 138
  store i8 -1, ptr %.sroa.1777.0..sroa_idx, align 2
  %.sroa.1879.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 142
  store i8 -1, ptr %.sroa.1879.0..sroa_idx, align 2
  %.sroa.1981.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 146
  store i16 0, ptr %.sroa.1981.0..sroa_idx, align 2
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  store i8 -1, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.2182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i8 -1, ptr %.sroa.2182.0..sroa_idx, align 8
  %.sroa.2283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  store i8 -1, ptr %.sroa.2283.0..sroa_idx, align 4
  %.sroa.2384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i16 0, ptr %.sroa.2384.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 162
  store i8 -1, ptr %.sroa.24.0..sroa_idx, align 2
  %.sroa.2585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 166
  store i8 -1, ptr %.sroa.2585.0..sroa_idx, align 2
  %.sroa.2686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 170
  store i8 -1, ptr %.sroa.2686.0..sroa_idx, align 2
  %.sroa.2787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 174
  store i16 0, ptr %.sroa.2787.0..sroa_idx, align 2
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i8 -1, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.2988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  store i8 -1, ptr %.sroa.2988.0..sroa_idx, align 4
  %.sroa.3089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i8 -1, ptr %.sroa.3089.0..sroa_idx, align 8
  %.sroa.3190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  store i16 0, ptr %.sroa.3190.0..sroa_idx, align 4
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 190
  store i8 -1, ptr %.sroa.32.0..sroa_idx, align 2
  %.sroa.3391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 194
  store i8 -1, ptr %.sroa.3391.0..sroa_idx, align 2
  %.sroa.3492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 198
  store i8 -1, ptr %.sroa.3492.0..sroa_idx, align 2
  %.sroa.3593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 202
  store i16 0, ptr %.sroa.3593.0..sroa_idx, align 2
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 204
  store i8 -1, ptr %.sroa.36.0..sroa_idx, align 4
  %.sroa.3794.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store i8 -1, ptr %.sroa.3794.0..sroa_idx, align 8
  %.sroa.3895.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  store i8 -1, ptr %.sroa.3895.0..sroa_idx, align 4
  %.sroa.3996.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store i16 0, ptr %.sroa.3996.0..sroa_idx, align 8
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 218
  store i8 -1, ptr %.sroa.40.0..sroa_idx, align 2
  %.sroa.4197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 222
  store i8 -1, ptr %.sroa.4197.0..sroa_idx, align 2
  %.sroa.4298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 226
  store i8 -1, ptr %.sroa.4298.0..sroa_idx, align 2
  %.sroa.4399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 230
  store i16 0, ptr %.sroa.4399.0..sroa_idx, align 2
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store i8 -2, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.45100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 246
  store <4 x i8> <i8 0, i8 2, i8 2, i8 11>, ptr %.sroa.45100.0..sroa_idx, align 2
  %i.d = tail call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error8with_cmdB4_(ptr noalias noundef nonnull align 8 %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %0) #43 ; 0 uses
  %i.e = load i64, ptr %1, align 8, !range !13, !noundef !11
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 4, ptr %i.a, align 8
  %i.g = call noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error24insert_context_uncheckedB4_(ptr noalias noundef nonnull align 8 %i.b, i8 noundef 15, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a) #42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  ret ptr %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error13invalid_valueB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.412 = alloca [31 x i8], align 1          ; 2 uses
  %.sroa.48 = alloca [31 x i8], align 1           ; 2 uses
  %i.d = alloca [120 x i8], align 8               ; 14 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !11, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !11
  %.idx = mul nuw nsw i64 %3, 24                  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1420
  store i64 0, ptr %i.b, align 8, !noalias !1420
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !noalias !1420
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.k, align 8, !noalias !1420
  %i.l = icmp eq i64 %3, 0                        ; 2 uses
  br i1 %i.l, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit.thread, label %.lr.ph.i

_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1420
  br label %.thread

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %i.m = phi ptr [ %i.be, %bb.d ], [ inttoptr (i64 8 to ptr), %bb.a ] ; 2 uses
  %i.n = phi i64 [ %i.bf, %bb.d ], [ 0, %bb.a ]   ; 11 uses
  %i.o = phi ptr [ %i.bg, %bb.d ], [ inttoptr (i64 8 to ptr), %bb.a ] ; 3 uses
  %.sroa.0.047.i = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.047.i, i64 24 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.0.047.i, i64 8
  %.val.i.i = load ptr, ptr %i.q, align 8, !noalias !1420, !nonnull !11, !noundef !11 ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.0.047.i, i64 16
  %.val1.i.i = load i64, ptr %i.r, align 8, !noalias !1420, !noundef !11 ; 8 uses
  %i.s = tail call noundef double @_RNvCsb8lMixXdhIO_6strsim4jaro(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i) #43, !noalias !1421 ; 4 uses
  %i.t = fcmp ogt double %i.s, f0x3FE6666666666666
  br i1 %i.t, label %bb.e, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d
  %.pre50.i = load ptr, ptr %i.j, align 8, !noalias !1420 ; 10 uses
  %.pre51.i = load i64, ptr %i.b, align 8, !range !12, !noalias !1420 ; 2 uses
  %i.u = icmp ult i64 %i.bf, 288230376151711744
  tail call void @llvm.assume(i1 %i.u)
  %.idx.i = shl nuw nsw i64 %i.bf, 5              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.pre50.i, i64 %.idx.i
  %i.w = shl i64 %.pre51.i, 5                     ; 5 uses
  %i.x = udiv i64 %i.w, 24                        ; 3 uses
  %.not9.i.i.i.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not9.i.i.i.i.i.i, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge.i
  %i.y = add nsw i64 %.idx.i, -32                 ; 2 uses
  %i.z = lshr exact i64 %i.y, 5
  %i.aa = add nuw nsw i64 %i.z, 1
  %xtraiter = and i64 %i.aa, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.4.010.i.i.i.i.i.i.prol = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ], [ %.pre50.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ab = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ], [ %.pre50.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.010.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !1422
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1380

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.4.010.i.i.i.i.i.i.unr = phi ptr [ %.pre50.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %.pre50.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.af = icmp ult i64 %i.y, 224
  br i1 %i.af, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.4.010.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.4.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ag = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.010.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !1422
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !1422
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !1422
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !1422
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 96
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !1422
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 120
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 168
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !1422
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 144
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 200
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !1422
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 168
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 256 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 232
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !noalias !1422
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq ptr %i.av, %i.v
  br i1 %.not.i.i.i.i.i.i.7, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %._crit_edge.i
  %.sroa.4.0.lcssa.i.i.i.i.i.i170 = phi ptr [ %.pre50.i, %._crit_edge.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.ax, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %.pre51.i, 0
  %i.ay = mul nuw i64 %i.x, 24                    ; 4 uses
  %i.az = icmp ne i64 %i.w, %i.ay
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.az, i1 false
  br i1 %.sroa.0.0.i.i.i.i, label %bb.b, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit

bb.b:                                             ; preds = %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %i.ba = icmp eq i64 %i.w, 0
  br i1 %i.ba, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit, label %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i

_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i: ; preds = %bb.b
  %i.bb = icmp ule i64 %i.ay, %i.w
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.pre50.i, i64 noundef %i.w, i64 noundef 8, i64 noundef range(i64 0, -15) %i.ay) #43, !noalias !1423 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.c, label %_RINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterB1i_EEB8_.exit, !prof !33

bb.c:                                             ; preds = %_RNvMs0_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.ay) #46, !noalias !1423
  unreachable

bb.d:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i, %.lr.ph.i
  %i.be = phi ptr [ %i.cc, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.m, %.lr.ph.i ]
  %i.bf = phi i64 [ %i.ci, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.n, %.lr.ph.i ] ; 4 uses
  %i.bg = phi ptr [ %i.cc, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.o, %.lr.ph.i ]
  %i.bh = icmp eq ptr %i.p, %i.i
  br i1 %i.bh, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp slt i64 %.val1.i.i, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.bi = icmp eq i64 %.val1.i.i, 0
  br i1 %i.bi, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.f
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1424
  %i.bj = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i, i64 noundef range(i64 1, 9) 1) #43, !noalias !1424 ; 3 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.g, label %bb.l

bb.g:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i, %bb.e
  %.sroa.429.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.e ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.429.0.ph.i, i64 %.val1.i.i) #46, !noalias !1421
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i: ; preds = %bb.l, %bb.f
  %i.bl = phi ptr [ %i.bj, %bb.l ], [ inttoptr (i64 1 to ptr), %bb.f ]
  switch i64 %i.n, label %.lr.ph.i.i [
    i64 0, label %bb.h
    i64 1, label %._crit_edge.i.i
  ]

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i, %.lr.ph.i.i
  %.sroa.01.017.i.i = phi i64 [ %i.bs, %.lr.ph.i.i ], [ %i.n, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i ] ; 2 uses
  %.sroa.05.016.i.i = phi i64 [ %i.br, %.lr.ph.i.i ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i ] ; 2 uses
  %i.bm = lshr i64 %.sroa.01.017.i.i, 1           ; 2 uses
  %i.bn = add nuw nsw i64 %i.bm, %.sroa.05.016.i.i ; 3 uses
  %i.bo = icmp ult i64 %i.bn, %i.n
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.bn
  %.val12.i.i = load double, ptr %i.bp, align 8, !alias.scope !1425, !noalias !1426, !noundef !11
  %i.bq = fcmp ogt double %.val12.i.i, %i.s
  %i.br = select i1 %i.bq, i64 %.sroa.05.016.i.i, i64 %i.bn, !unpredictable !11 ; 2 uses
  %i.bs = sub nuw nsw i64 %.sroa.01.017.i.i, %i.bm ; 2 uses
  %i.bt = icmp ugt i64 %i.bs, 1
  br i1 %i.bt, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i ], [ %i.br, %.lr.ph.i.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.05.0.lcssa.i.i
  %.val14.i.i = load double, ptr %i.bu, align 8, !alias.scope !1425, !noalias !1426, !noundef !11
  %i.bv = fcmp ule double %.val14.i.i, %i.s
  %i.bw = zext i1 %i.bv to i64
  %i.bx = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.bw ; 2 uses
  %i.by = icmp ule i64 %i.bx, %i.n
  tail call void @llvm.assume(i1 %i.by)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i
  %.sroa.4.0.i.i = phi i64 [ %i.n, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread39.i ], [ %i.bx, %._crit_edge.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  %i.bz = icmp ult i64 %i.n, 288230376151711744
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = load i64, ptr %i.b, align 8, !range !12, !alias.scope !1427, !noalias !1428, !noundef !11
end_hunk_1
begin_hunk_2_@_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error13invalid_valueB4_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  %.val.i.i.i.i87 = load i64, ptr %i.cv, align 8, !range !12, !alias.scope !1434, !noalias !1435, !noundef !11 ; 2 uses
  %i.cx = icmp eq i64 %.val.i.i.i.i87, 0
  br i1 %i.cx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.cy, align 8, !alias.scope !1434, !noalias !1435, !nonnull !11, !noundef !11
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i87, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1436
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i
  %i.cz = icmp eq i64 %i.cw, %i.cq
  br i1 %i.cz, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %.thread
  %.sroa.04.0.i.i.i173 = phi ptr [ %.sroa.04.0.i.i.i175, %.thread ], [ %.sroa.04.0.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i ]
  %i.da = phi i64 [ %i.cl, %.thread ], [ %i.cj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i ] ; 2 uses
  %.sroa.03.0142 = phi i64 [ -1, %.thread ], [ %.sroa.025.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i ] ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread: ; preds = %bb.m, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i
  %.sroa.04.0.i.i.i174 = phi ptr [ %.sroa.04.0.i.i.i173, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.sroa.04.0.i.i.i, %bb.m ]
  %i.dc = phi i64 [ %i.da, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.cj, %bb.m ]
  %.sroa.03.0142144 = phi i64 [ %.sroa.03.0142, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.sroa.025.0.copyload, %bb.m ]
  %i.dd = mul nuw i64 %i.dc, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.04.0.i.i.i174, i64 noundef %i.dd, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1435
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread
  %.sroa.03.0142145 = phi i64 [ %.sroa.03.0142, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %.sroa.03.0142144, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.thread ] ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1437
  %i.de = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 256, i64 noundef range(i64 1, 9) 8) #43, !noalias !1437 ; 47 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.o, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !33

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #46, !noalias !1437
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit
  store i64 2, ptr %i.de, align 8
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  store i64 0, ptr %.sroa.497.0..sroa_idx, align 8
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.598.0..sroa_idx, align 8
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %.sroa.8101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.699.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8101.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  store i64 0, ptr %.sroa.9.0..sroa_idx102, align 8
  %.sroa.10.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.de, i64 80
  store i64 -2, ptr %.sroa.10.0..sroa_idx103, align 8
  %.sroa.11105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 104
  store ptr null, ptr %.sroa.11105.0..sroa_idx, align 8
  %.sroa.12107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 120
  store i8 -1, ptr %.sroa.12107.0..sroa_idx, align 8
  %.sroa.13108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 124
  store i8 -1, ptr %.sroa.13108.0..sroa_idx, align 4
  %.sroa.14110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 128
  store i8 -1, ptr %.sroa.14110.0..sroa_idx, align 8
  %.sroa.15112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 132
  store i16 0, ptr %.sroa.15112.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.de, i64 134
  store i8 -1, ptr %.sroa.16.0..sroa_idx113, align 2
  %.sroa.17115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 138
  store i8 -1, ptr %.sroa.17115.0..sroa_idx, align 2
  %.sroa.18117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 142
  store i8 -1, ptr %.sroa.18117.0..sroa_idx, align 2
  %.sroa.19119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 146
  store i16 0, ptr %.sroa.19119.0..sroa_idx, align 2
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 148
  store i8 -1, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.21120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 152
  store i8 -1, ptr %.sroa.21120.0..sroa_idx, align 8
  %.sroa.22121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 156
  store i8 -1, ptr %.sroa.22121.0..sroa_idx, align 4
  %.sroa.23122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 160
  store i16 0, ptr %.sroa.23122.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 162
  store i8 -1, ptr %.sroa.24.0..sroa_idx, align 2
  %.sroa.25123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 166
  store i8 -1, ptr %.sroa.25123.0..sroa_idx, align 2
  %.sroa.26124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 170
  store i8 -1, ptr %.sroa.26124.0..sroa_idx, align 2
  %.sroa.27125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 174
  store i16 0, ptr %.sroa.27125.0..sroa_idx, align 2
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 176
  store i8 -1, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.29126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 180
  store i8 -1, ptr %.sroa.29126.0..sroa_idx, align 4
  %.sroa.30127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 184
  store i8 -1, ptr %.sroa.30127.0..sroa_idx, align 8
  %.sroa.31128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 188
  store i16 0, ptr %.sroa.31128.0..sroa_idx, align 4
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 190
  store i8 -1, ptr %.sroa.32.0..sroa_idx, align 2
  %.sroa.33129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 194
  store i8 -1, ptr %.sroa.33129.0..sroa_idx, align 2
  %.sroa.34130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 198
  store i8 -1, ptr %.sroa.34130.0..sroa_idx, align 2
  %.sroa.35131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 202
  store i16 0, ptr %.sroa.35131.0..sroa_idx, align 2
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 204
  store i8 -1, ptr %.sroa.36.0..sroa_idx, align 4
  %.sroa.37132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 208
  store i8 -1, ptr %.sroa.37132.0..sroa_idx, align 8
  %.sroa.38133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 212
  store i8 -1, ptr %.sroa.38133.0..sroa_idx, align 4
  %.sroa.39134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 216
  store i16 0, ptr %.sroa.39134.0..sroa_idx, align 8
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 218
  store i8 -1, ptr %.sroa.40.0..sroa_idx, align 2
  %.sroa.41135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 222
  store i8 -1, ptr %.sroa.41135.0..sroa_idx, align 2
  %.sroa.42136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 226
  store i8 -1, ptr %.sroa.42136.0..sroa_idx, align 2
  %.sroa.43137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 230
  store i16 0, ptr %.sroa.43137.0..sroa_idx, align 2
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 232
  store i8 -2, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.45138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 246
  store <4 x i8> <i8 0, i8 2, i8 2, i8 0>, ptr %.sroa.45138.0..sroa_idx, align 2
  %i.dg = tail call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error8with_cmdB4_(ptr noalias noundef nonnull align 8 %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %0) #43 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.48.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.48, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.48.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br i1 %i.l, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterBU_ENCNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB31_5Error13invalid_value0EE9from_iterB33_.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1438
  %i.dh = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.idx, i64 noundef range(i64 1, 9) 8) #43, !noalias !1438 ; 3 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.p, label %.preheader.i.i.i.i

bb.p:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx) #46, !noalias !1439
  unreachable

.preheader.i.i.i.i:                               ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i, %.preheader.i.i.i.i
  %i.dj = phi i64 [ %i.dm, %.preheader.i.i.i.i ], [ 0, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1440
  call void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dk) #43, !noalias !1441
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.dh, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1442
  %i.dm = add nuw nsw i64 %i.dj, 1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1440
  %i.dn = icmp eq i64 %i.dm, %3
  br i1 %i.dn, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterBU_ENCNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB31_5Error13invalid_value0EE9from_iterB33_.exit, label %.preheader.i.i.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterBU_ENCNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB31_5Error13invalid_value0EE9from_iterB33_.exit: ; preds = %.preheader.i.i.i.i, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  %.sroa.10.0.i8.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ], [ %i.dh, %.preheader.i.i.i.i ]
  store i8 1, ptr %i.d, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 2, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.48, i64 31, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i8 5, ptr %i.do, align 8
  %.sroa.4.sroa.314.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i8 2, ptr %.sroa.4.sroa.314.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.4.sroa.415.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.sroa.415.0..sroa.4.0..sroa_idx10.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.412, i64 31, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i8 4, ptr %i.dp, align 8
  %.sroa.4.sroa.321.0..sroa.4.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i8 3, ptr %.sroa.4.sroa.321.0..sroa.4.0..sroa_idx17.sroa_idx, align 8
  %.sroa.4.sroa.422.sroa.4.0..sroa.4.sroa.422.0..sroa.4.0..sroa_idx17.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i64 %3, ptr %.sroa.4.sroa.422.sroa.4.0..sroa.4.sroa.422.0..sroa.4.0..sroa_idx17.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.422.sroa.5.0..sroa.4.sroa.422.0..sroa.4.0..sroa_idx17.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr %.sroa.10.0.i8.i.i, ptr %.sroa.4.sroa.422.sroa.5.0..sroa.4.sroa.422.0..sroa.4.0..sroa_idx17.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.422.sroa.6.0..sroa.4.sroa.422.0..sroa.4.0..sroa_idx17.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i64 %3, ptr %.sroa.4.sroa.422.sroa.6.0..sroa.4.sroa.422.0..sroa.4.0..sroa_idx17.sroa_idx.sroa_idx, align 8
  %i.dq = call noundef nonnull align 8 ptr @_RINvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB3_5Error24extend_context_uncheckedKj3_EB5_(ptr noalias noundef nonnull align 8 %i.de, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(120) %i.d) #42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq i64 %.sroa.03.0142145, -1
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterBU_ENCNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB31_5Error13invalid_value0EE9from_iterB33_.exit
  %.sroa.4.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx24, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.03.0142145, ptr %i.dr, align 8
  store i8 2, ptr %i.c, align 8
  %i.ds = call noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error24insert_context_uncheckedB4_(ptr noalias noundef nonnull align 8 %i.de, i8 noundef 12, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c) #42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterBU_ENCNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB31_5Error13invalid_value0EE9from_iterB33_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret ptr %i.de
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error15too_many_valuesB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.49 = alloca [31 x i8], align 1           ; 2 uses
  %.sroa.45 = alloca [31 x i8], align 1           ; 2 uses
  %i.b = alloca [80 x i8], align 8                ; 9 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1445
  %i.c = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 256, i64 noundef range(i64 1, 9) 8) #43, !noalias !1445 ; 47 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #46, !noalias !1445
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 2, ptr %i.c, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.8.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx73, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx75, align 8
  %.sroa.9.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %.sroa.9.0..sroa_idx76, align 8
  %.sroa.10.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i64 -2, ptr %.sroa.10.0..sroa_idx77, align 8
  %.sroa.1179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store ptr null, ptr %.sroa.1179.0..sroa_idx, align 8
  %.sroa.1281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store i8 -1, ptr %.sroa.1281.0..sroa_idx, align 8
  %.sroa.1382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  store i8 -1, ptr %.sroa.1382.0..sroa_idx, align 4
  %.sroa.1484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store i8 -1, ptr %.sroa.1484.0..sroa_idx, align 8
  %.sroa.1586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  store i16 0, ptr %.sroa.1586.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.c, i64 134
  store i8 -1, ptr %.sroa.16.0..sroa_idx87, align 2
  %.sroa.1789.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 138
  store i8 -1, ptr %.sroa.1789.0..sroa_idx, align 2
  %.sroa.1891.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 142
  store i8 -1, ptr %.sroa.1891.0..sroa_idx, align 2
  %.sroa.1993.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 146
  store i16 0, ptr %.sroa.1993.0..sroa_idx, align 2
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  store i8 -1, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.2194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i8 -1, ptr %.sroa.2194.0..sroa_idx, align 8
  %.sroa.2295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  store i8 -1, ptr %.sroa.2295.0..sroa_idx, align 4
  %.sroa.2396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store i16 0, ptr %.sroa.2396.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 162
  store i8 -1, ptr %.sroa.24.0..sroa_idx, align 2
  %.sroa.2597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 166
  store i8 -1, ptr %.sroa.2597.0..sroa_idx, align 2
  %.sroa.2698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 170
  store i8 -1, ptr %.sroa.2698.0..sroa_idx, align 2
  %.sroa.2799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 174
  store i16 0, ptr %.sroa.2799.0..sroa_idx, align 2
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store i8 -1, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.29100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 180
  store i8 -1, ptr %.sroa.29100.0..sroa_idx, align 4
  %.sroa.30101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store i8 -1, ptr %.sroa.30101.0..sroa_idx, align 8
  %.sroa.31102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 188
  store i16 0, ptr %.sroa.31102.0..sroa_idx, align 4
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 190
  store i8 -1, ptr %.sroa.32.0..sroa_idx, align 2
  %.sroa.33103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 194
  store i8 -1, ptr %.sroa.33103.0..sroa_idx, align 2
  %.sroa.34104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 198
  store i8 -1, ptr %.sroa.34104.0..sroa_idx, align 2
  %.sroa.35105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 202
  store i16 0, ptr %.sroa.35105.0..sroa_idx, align 2
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 204
  store i8 -1, ptr %.sroa.36.0..sroa_idx, align 4
  %.sroa.37106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store i8 -1, ptr %.sroa.37106.0..sroa_idx, align 8
  %.sroa.38107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 212
  store i8 -1, ptr %.sroa.38107.0..sroa_idx, align 4
  %.sroa.39108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  store i16 0, ptr %.sroa.39108.0..sroa_idx, align 8
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 218
  store i8 -1, ptr %.sroa.40.0..sroa_idx, align 2
  %.sroa.41109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 222
  store i8 -1, ptr %.sroa.41109.0..sroa_idx, align 2
  %.sroa.42110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 226
  store i8 -1, ptr %.sroa.42110.0..sroa_idx, align 2
  %.sroa.43111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 230
  store i16 0, ptr %.sroa.43111.0..sroa_idx, align 2
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store i8 -2, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.45113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 246
  store <4 x i8> <i8 0, i8 2, i8 2, i8 5>, ptr %.sroa.45113.0..sroa_idx, align 2
  %i.e = tail call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error8with_cmdB4_(ptr noalias noundef nonnull align 8 %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %0) #43 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.45.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.45, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.45.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.49.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.49, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.49.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %i.b, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 2, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.45, i64 31, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i8 5, ptr %i.f, align 8
  %.sroa.4.sroa.311.0..sroa.4.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 2, ptr %.sroa.4.sroa.311.0..sroa.4.0..sroa_idx7.sroa_idx, align 8
  %.sroa.4.sroa.412.0..sroa.4.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.sroa.412.0..sroa.4.0..sroa_idx7.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.49, i64 31, i1 false)
  %i.g = call noundef nonnull align 8 ptr @_RINvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB3_5Error24extend_context_uncheckedKj2_EB5_(ptr noalias noundef nonnull align 8 %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.b) #42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = load i64, ptr %3, align 8, !range !13, !noundef !11
  %.not = icmp eq i64 %i.h, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  store i8 4, ptr %i.a, align 8
  %i.j = call noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error24insert_context_uncheckedB4_(ptr noalias noundef nonnull align 8 %i.c, i8 noundef 15, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a) #42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  ret ptr %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error16unknown_argumentB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %2, i1 noundef zeroext %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.49 = alloca [31 x i8], align 1           ; 2 uses
  %i.j = alloca [40 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 10 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1465)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !1466, !nonnull !11, !noundef !11 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !1466, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %i.v, 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesEB7_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i188, i64 16 ; 2 uses
  %i.z = add i64 %.sroa.8.0.i.i187, 1
  %i.aa = icmp eq ptr %i.y, %i.w
  br i1 %i.aa, label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesEB7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.01.i.i188 = phi ptr [ %i.y, %bb.b ], [ %i.t, %bb.a ] ; 2 uses
  %.sroa.8.0.i.i187 = phi i64 [ %i.z, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %.val.i.i = load i128, ptr %.sroa.0.01.i.i188, align 8, !noalias !1466
  %i.ab = icmp eq i128 %.val.i.i, -100310019091698447603793328749864812255
  br i1 %i.ab, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !1466, !noundef !11 ; 2 uses
  %i.ae = icmp ult i64 %.sroa.8.0.i.i187, %i.ad
  br i1 %i.ae, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i187, i64 noundef %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !1466
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !1466, !nonnull !11, !noundef !11
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %.sroa.8.0.i.i187 ; 2 uses
  %.val5.i = load ptr, ptr %i.ah, align 8, !noalias !1464, !nonnull !11, !noundef !11
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val6.i = load ptr, ptr %i.ai, align 8, !noalias !1464, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !range !18, !invariant.load !11, !noalias !1464
  %i.al = add nsw i64 %i.ak, -1
  %i.am = and i64 %i.al, -16
  %i.an = getelementptr inbounds nuw i8, ptr %.val5.i, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1464
  %i.ap = getelementptr inbounds nuw i8, ptr %.val6.i, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !invariant.load !11, !noalias !1464, !nonnull !11
  call void %i.aq(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.ao) #45, !noalias !1464, !inline_history !2
  %i.ar = load i128, ptr %i.a, align 16, !noalias !1464, !noundef !11
  %.not.i = icmp eq i128 %i.ar, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1464
  br i1 %.not.i, label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesEB7_.exit, label %bb.f, !prof !16

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !1464
  unreachable

_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesEB7_.exit: ; preds = %bb.b, %bb.a, %bb.e
  %.sroa.0.0.i = phi ptr [ %i.ao, %bb.e ], [ null, %bb.a ], [ null, %bb.b ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.i, null
  %. = select i1 %.not, ptr @99, ptr %.sroa.0.0.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.as = getelementptr inbounds nuw i8, ptr %., i64 84
  store ptr %i.as, ptr %i.q, align 8
  store ptr %i.q, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.at = getelementptr inbounds nuw i8, ptr %., i64 70
  store ptr %i.at, ptr %i.o, align 8
  store ptr %i.o, ptr %i.p, align 8
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1467
  %i.au = call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 256, i64 noundef range(i64 1, 9) 8) #43, !noalias !1467 ; 49 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.g, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !33

bb.g:                                             ; preds = %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesEB7_.exit
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #46, !noalias !1467
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesEB7_.exit
  store i64 2, ptr %i.au, align 8
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i64 0, ptr %.sroa.4140.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx141 = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %.sroa.8.0..sroa_idx143 = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx141, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx143, align 8
  %.sroa.9.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  store i64 0, ptr %.sroa.9.0..sroa_idx144, align 8
  %.sroa.10.0..sroa_idx145 = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  store i64 -2, ptr %.sroa.10.0..sroa_idx145, align 8
  %.sroa.11147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  store ptr null, ptr %.sroa.11147.0..sroa_idx, align 8
  %.sroa.12149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 120
  store i8 -1, ptr %.sroa.12149.0..sroa_idx, align 8
  %.sroa.13150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 124
  store i8 -1, ptr %.sroa.13150.0..sroa_idx, align 4
  %.sroa.14152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  store i8 -1, ptr %.sroa.14152.0..sroa_idx, align 8
  %.sroa.15154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 132
  store i16 0, ptr %.sroa.15154.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx155 = getelementptr inbounds nuw i8, ptr %i.au, i64 134
  store i8 -1, ptr %.sroa.16.0..sroa_idx155, align 2
  %.sroa.17157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 138
  store i8 -1, ptr %.sroa.17157.0..sroa_idx, align 2
  %.sroa.18159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 142
  store i8 -1, ptr %.sroa.18159.0..sroa_idx, align 2
  %.sroa.19161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 146
  store i16 0, ptr %.sroa.19161.0..sroa_idx, align 2
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 148
  store i8 -1, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.21162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 152
  store i8 -1, ptr %.sroa.21162.0..sroa_idx, align 8
  %.sroa.22163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 156
  store i8 -1, ptr %.sroa.22163.0..sroa_idx, align 4
  %.sroa.23164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 160
  store i16 0, ptr %.sroa.23164.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 162
  store i8 -1, ptr %.sroa.24.0..sroa_idx, align 2
  %.sroa.25165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 166
  store i8 -1, ptr %.sroa.25165.0..sroa_idx, align 2
  %.sroa.26166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 170
  store i8 -1, ptr %.sroa.26166.0..sroa_idx, align 2
  %.sroa.27167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 174
  store i16 0, ptr %.sroa.27167.0..sroa_idx, align 2
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 176
  store i8 -1, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.29168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 180
  store i8 -1, ptr %.sroa.29168.0..sroa_idx, align 4
  %.sroa.30169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 184
  store i8 -1, ptr %.sroa.30169.0..sroa_idx, align 8
  %.sroa.31170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 188
  store i16 0, ptr %.sroa.31170.0..sroa_idx, align 4
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 190
  store i8 -1, ptr %.sroa.32.0..sroa_idx, align 2
  %.sroa.33171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 194
  store i8 -1, ptr %.sroa.33171.0..sroa_idx, align 2
  %.sroa.34172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 198
  store i8 -1, ptr %.sroa.34172.0..sroa_idx, align 2
  %.sroa.35173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 202
  store i16 0, ptr %.sroa.35173.0..sroa_idx, align 2
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 204
  store i8 -1, ptr %.sroa.36.0..sroa_idx, align 4
  %.sroa.37174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 208
  store i8 -1, ptr %.sroa.37174.0..sroa_idx, align 8
  %.sroa.38175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 212
  store i8 -1, ptr %.sroa.38175.0..sroa_idx, align 4
  %.sroa.39176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 216
  store i16 0, ptr %.sroa.39176.0..sroa_idx, align 8
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 218
  store i8 -1, ptr %.sroa.40.0..sroa_idx, align 2
  %.sroa.41177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 222
  store i8 -1, ptr %.sroa.41177.0..sroa_idx, align 2
  %.sroa.42178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 226
  store i8 -1, ptr %.sroa.42178.0..sroa_idx, align 2
  %.sroa.43179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 230
  store i16 0, ptr %.sroa.43179.0..sroa_idx, align 2
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 232
  store i8 -2, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.45180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 246
  store <4 x i8> <i8 0, i8 2, i8 2, i8 1>, ptr %.sroa.45180.0..sroa_idx, align 2
  %i.aw = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error8with_cmdB4_(ptr noalias noundef nonnull align 8 %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %0) #43 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store i64 0, ptr %i.ay, align 8
  br i1 %3, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  %i.az = phi ptr [ %i.bg, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit ], [ inttoptr (i64 8 to ptr), %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ]
  %i.ba = phi i64 [ 1, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit ], [ 0, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.sroa.49.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.49, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.49.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %i.j, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i8 2, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.49, i64 31, i1 false)
  %i.bb = call noundef nonnull align 8 ptr @_RINvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB3_5Error24extend_context_uncheckedKj1_EB5_(ptr noalias noundef nonnull align 8 %i.au, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.j) #42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bc = load i64, ptr %4, align 8, !range !13, !noundef !11
  %.not131 = icmp eq i64 %i.bc, -1
  br i1 %.not131, label %bb.j, label %bb.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit: ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 0, ptr %i.m, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.475.0..sroa_idx, align 8
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %.sroa.576.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.r, ptr %i.l, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.480.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %1, ptr %i.bd, align 8
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXsq_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.484.0..sroa_idx, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.p, ptr %i.be, align 8
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.488.0..sroa_idx, align 8
  %i.bf = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @100, ptr noundef nonnull %i.l) #43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #42, !noalias !1469
  %i.bg = load ptr, ptr %i.ax, align 8, !alias.scope !1468, !noalias !1469, !nonnull !11, !noundef !11 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !1468
  store i64 1, ptr %i.ay, align 8, !alias.scope !1468, !noalias !1469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.h

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store i8 4, ptr %i.i, align 8
  %i.bi = call noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error24insert_context_uncheckedB4_(ptr noalias noundef nonnull align 8 %i.au, i8 noundef 15, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.i) #42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bj = load i64, ptr %2, align 8, !range !13, !noundef !11
  %.not132 = icmp eq i64 %i.bj, -1
  br i1 %.not132, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !range !13, !noundef !11
  %.not133 = icmp eq i64 %i.bl, -1
  br i1 %.not133, label %bb.q, label %bb.m

bb.l:                                             ; preds = %bb.q, %bb.j
  br i1 %3, label %bb.r, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4105.0..sroa_idx, align 8
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.5106.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.p, ptr %i.e, align 8
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.4110.0..sroa_idx, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.g, ptr %i.bm, align 8
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsq_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.4114.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.h, ptr %i.bn, align 8
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXsq_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.4118.0..sroa_idx, align 8
  %i.bo = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @102, ptr noundef nonnull %i.e) #43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1470)
  %i.bp = load i64, ptr %i.n, align 8, !range !12, !alias.scope !1470, !noalias !1471, !noundef !11
  %i.bq = icmp eq i64 %i.ba, %i.bp
  br i1 %i.bq, label %bb.n, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit134

bb.n:                                             ; preds = %bb.m
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #42, !noalias !1471
  %.pre = load ptr, ptr %i.ax, align 8, !alias.scope !1470, !noalias !1471
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit134

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit134: ; preds = %bb.m, %bb.n
  %i.br = phi ptr [ %i.az, %bb.m ], [ %.pre, %bb.n ]
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1470
  %i.bt = add nuw nsw i64 %i.ba, 1
  store i64 %i.bt, ptr %i.ay, align 8, !alias.scope !1470, !noalias !1471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  %.val.i = load i64, ptr %i.g, align 8, !range !12, !alias.scope !1472, !noundef !11 ; 2 uses
  %i.bu = icmp eq i64 %.val.i, 0
  br i1 %i.bu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit, label %bb.o

bb.o:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit134
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i = load ptr, ptr %i.bv, align 8, !alias.scope !1472, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1472
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit134, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  %.val.i135 = load i64, ptr %i.h, align 8, !range !12, !alias.scope !1473, !noundef !11 ; 2 uses
  %i.bw = icmp eq i64 %.val.i135, 0
  br i1 %i.bw, label %.thread, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val1.i136 = load ptr, ptr %i.bx, align 8, !alias.scope !1473, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i136, i64 noundef %.val.i135, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1473
  br label %.thread

.thread:                                          ; preds = %bb.p, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store i8 2, ptr %i.c, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error24insert_context_uncheckedB4_(ptr noalias noundef nonnull align 8 %i.au, i8 noundef 11, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c) #42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.r:                                             ; preds = %.thread, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store i8 5, ptr %i.b, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error24insert_context_uncheckedB4_(ptr noalias noundef nonnull align 8 %i.au, i8 noundef 14, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b) #42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB1e_.exit

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i: ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  %.val2.i = load i64, ptr %i.n, align 8, !range !12, !alias.scope !1474, !noundef !11 ; 2 uses
  %i.cc = icmp eq i64 %.val2.i, 0
  br i1 %i.cc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB1e_.exit, label %bb.s

bb.s:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i
  %.val.i138 = load ptr, ptr %i.ax, align 8, !alias.scope !1474, !nonnull !11, !noundef !11
  %i.cd = mul nuw i64 %.val2.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i138, i64 noundef %i.cd, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1474
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB1e_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB1e_.exit: ; preds = %bb.s, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret ptr %i.au
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error16value_validationB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.48 = alloca [31 x i8], align 1           ; 2 uses
  %.sroa.44 = alloca [31 x i8], align 1           ; 2 uses
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1477
  %i.b = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 256, i64 noundef range(i64 1, 9) 8) #43, !noalias !1477 ; 46 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECsfu0rQaTkGUu_12clap_builder.exit, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #46, !noalias !1477
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.a
  store i64 2, ptr %i.b, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.8.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx73, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx75, align 8
  %.sroa.9.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 0, ptr %.sroa.9.0..sroa_idx76, align 8
  %.sroa.10.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 -2, ptr %.sroa.10.0..sroa_idx77, align 8
  %.sroa.1179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.sroa.12.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.sroa.1281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i8 -1, ptr %.sroa.1281.0..sroa_idx, align 8
  %.sroa.1382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  store i8 -1, ptr %.sroa.1382.0..sroa_idx, align 4
  %.sroa.1484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i8 -1, ptr %.sroa.1484.0..sroa_idx, align 8
  %.sroa.1586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store i16 0, ptr %.sroa.1586.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.b, i64 134
  store i8 -1, ptr %.sroa.16.0..sroa_idx87, align 2
  %.sroa.1789.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 138
  store i8 -1, ptr %.sroa.1789.0..sroa_idx, align 2
  %.sroa.1891.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 142
  store i8 -1, ptr %.sroa.1891.0..sroa_idx, align 2
  %.sroa.1993.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 146
  store i16 0, ptr %.sroa.1993.0..sroa_idx, align 2
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  store i8 -1, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.2194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i8 -1, ptr %.sroa.2194.0..sroa_idx, align 8
  %.sroa.2295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  store i8 -1, ptr %.sroa.2295.0..sroa_idx, align 4
  %.sroa.2396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i16 0, ptr %.sroa.2396.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 162
  store i8 -1, ptr %.sroa.24.0..sroa_idx, align 2
  %.sroa.2597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 166
  store i8 -1, ptr %.sroa.2597.0..sroa_idx, align 2
  %.sroa.2698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 170
  store i8 -1, ptr %.sroa.2698.0..sroa_idx, align 2
  %.sroa.2799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 174
  store i16 0, ptr %.sroa.2799.0..sroa_idx, align 2
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i8 -1, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.29100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  store i8 -1, ptr %.sroa.29100.0..sroa_idx, align 4
  %.sroa.30101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i8 -1, ptr %.sroa.30101.0..sroa_idx, align 8
  %.sroa.31102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  store i16 0, ptr %.sroa.31102.0..sroa_idx, align 4
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 190
  store i8 -1, ptr %.sroa.32.0..sroa_idx, align 2
  %.sroa.33103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 194
  store i8 -1, ptr %.sroa.33103.0..sroa_idx, align 2
  %.sroa.34104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 198
  store i8 -1, ptr %.sroa.34104.0..sroa_idx, align 2
  %.sroa.35105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 202
  store i16 0, ptr %.sroa.35105.0..sroa_idx, align 2
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 204
  store i8 -1, ptr %.sroa.36.0..sroa_idx, align 4
  %.sroa.37106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store i8 -1, ptr %.sroa.37106.0..sroa_idx, align 8
  %.sroa.38107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  store i8 -1, ptr %.sroa.38107.0..sroa_idx, align 4
  %.sroa.39108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store i16 0, ptr %.sroa.39108.0..sroa_idx, align 8
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 218
  store i8 -1, ptr %.sroa.40.0..sroa_idx, align 2
  %.sroa.41109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 222
  store i8 -1, ptr %.sroa.41109.0..sroa_idx, align 2
  %.sroa.42110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 226
  store i8 -1, ptr %.sroa.42110.0..sroa_idx, align 2
  %.sroa.43111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 230
  store i16 0, ptr %.sroa.43111.0..sroa_idx, align 2
  %.sroa.44112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store i8 -2, ptr %.sroa.44112.0..sroa_idx, align 8
  %.sroa.45113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 246
  store <4 x i8> <i8 0, i8 2, i8 2, i8 4>, ptr %.sroa.45113.0..sroa_idx, align 2
  store ptr %2, ptr %.sroa.1179.0..sroa_idx, align 8
  store ptr %3, ptr %.sroa.12.0..sroa_idx80, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.44.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.44, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.44.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.48.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.48, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.48.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %i.a, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 2, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.44, i64 31, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 5, ptr %i.d, align 8
  %.sroa.4.sroa.310.0..sroa.4.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 2, ptr %.sroa.4.sroa.310.0..sroa.4.0..sroa_idx6.sroa_idx, align 8
  %.sroa.4.sroa.411.0..sroa.4.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.sroa.411.0..sroa.4.0..sroa_idx6.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.48, i64 31, i1 false)
  %i.e = call noundef nonnull align 8 ptr @_RINvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB3_5Error24extend_context_uncheckedKj2_EB5_(ptr noalias noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.a) #42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error17argument_conflictB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 2 uses
  %.sroa.48 = alloca [31 x i8], align 1           ; 2 uses
  %i.b = alloca [80 x i8], align 8                ; 9 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1486
  %i.c = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 256, i64 noundef range(i64 1, 9) 8) #43, !noalias !1486 ; 47 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #46, !noalias !1486
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 2, ptr %i.c, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %.sroa.474.0..sroa_idx, align 8
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.575.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.8.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx76, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx78, align 8
  %.sroa.9.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %.sroa.9.0..sroa_idx79, align 8
  %.sroa.10.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i64 -2, ptr %.sroa.10.0..sroa_idx80, align 8
  %.sroa.1182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store ptr null, ptr %.sroa.1182.0..sroa_idx, align 8
  %.sroa.1284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store i8 -1, ptr %.sroa.1284.0..sroa_idx, align 8
  %.sroa.1385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  store i8 -1, ptr %.sroa.1385.0..sroa_idx, align 4
  %.sroa.1487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store i8 -1, ptr %.sroa.1487.0..sroa_idx, align 8
  %.sroa.1589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  store i16 0, ptr %.sroa.1589.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.c, i64 134
  store i8 -1, ptr %.sroa.16.0..sroa_idx90, align 2
  %.sroa.1792.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 138
  store i8 -1, ptr %.sroa.1792.0..sroa_idx, align 2
  %.sroa.1894.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 142
  store i8 -1, ptr %.sroa.1894.0..sroa_idx, align 2
  %.sroa.1996.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 146
  store i16 0, ptr %.sroa.1996.0..sroa_idx, align 2
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  store i8 -1, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.2197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i8 -1, ptr %.sroa.2197.0..sroa_idx, align 8
  %.sroa.2298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  store i8 -1, ptr %.sroa.2298.0..sroa_idx, align 4
  %.sroa.2399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store i16 0, ptr %.sroa.2399.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 162
  store i8 -1, ptr %.sroa.24.0..sroa_idx, align 2
  %.sroa.25100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 166
  store i8 -1, ptr %.sroa.25100.0..sroa_idx, align 2
  %.sroa.26101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 170
  store i8 -1, ptr %.sroa.26101.0..sroa_idx, align 2
  %.sroa.27102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 174
  store i16 0, ptr %.sroa.27102.0..sroa_idx, align 2
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store i8 -1, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.29103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 180
  store i8 -1, ptr %.sroa.29103.0..sroa_idx, align 4
  %.sroa.30104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store i8 -1, ptr %.sroa.30104.0..sroa_idx, align 8
  %.sroa.31105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 188
  store i16 0, ptr %.sroa.31105.0..sroa_idx, align 4
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 190
  store i8 -1, ptr %.sroa.32.0..sroa_idx, align 2
  %.sroa.33106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 194
  store i8 -1, ptr %.sroa.33106.0..sroa_idx, align 2
  %.sroa.34107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 198
  store i8 -1, ptr %.sroa.34107.0..sroa_idx, align 2
  %.sroa.35108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 202
  store i16 0, ptr %.sroa.35108.0..sroa_idx, align 2
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 204
  store i8 -1, ptr %.sroa.36.0..sroa_idx, align 4
  %.sroa.37109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store i8 -1, ptr %.sroa.37109.0..sroa_idx, align 8
  %.sroa.38110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 212
  store i8 -1, ptr %.sroa.38110.0..sroa_idx, align 4
  %.sroa.39111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  store i16 0, ptr %.sroa.39111.0..sroa_idx, align 8
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 218
  store i8 -1, ptr %.sroa.40.0..sroa_idx, align 2
  %.sroa.41112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 222
  store i8 -1, ptr %.sroa.41112.0..sroa_idx, align 2
  %.sroa.42113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 226
  store i8 -1, ptr %.sroa.42113.0..sroa_idx, align 2
  %.sroa.43114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 230
  store i16 0, ptr %.sroa.43114.0..sroa_idx, align 2
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store i8 -2, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.45115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 246
  store <4 x i8> <i8 0, i8 2, i8 2, i8 8>, ptr %.sroa.45115.0..sroa_idx, align 2
  %i.e = tail call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error8with_cmdB4_(ptr noalias noundef nonnull align 8 %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %0) #43 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !11 ; 4 uses
  %i.h = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.h)
  switch i64 %i.g, label %.sink.split [
    i64 0, label %bb.c
    i64 1, label %bb.d
  ]

.sink.split:                                      ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, %bb.d
  %.sink = phi ptr [ %i.m, %bb.d ], [ %2, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ]
  %.val1.i.ph = phi i64 [ 0, %bb.d ], [ %i.g, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ]
  %.sroa.012.0.ph = phi i1 [ true, %bb.d ], [ false, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ]
  %.sroa.03.0.ph = phi i8 [ 2, %bb.d ], [ 3, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ]
  %.sroa.4.8..sroa_idx4 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sink, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  %.val1.i = phi i64 [ %i.g, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ], [ %.val1.i.ph, %.sink.split ] ; 2 uses
  %.sroa.012.0 = phi i1 [ true, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.012.0.ph, %.sink.split ]
  %.sroa.03.0 = phi i8 [ 0, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.03.0.ph, %.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.48.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.48, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.48.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %i.b, align 8
  %.sroa.46.sroa.3.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 2, ptr %.sroa.46.sroa.3.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.48, i64 31, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i8 2, ptr %i.i, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 %.sroa.03.0, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  %i.j = call noundef nonnull align 8 ptr @_RINvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB3_5Error24extend_context_uncheckedKj2_EB5_(ptr noalias noundef nonnull align 8 %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.b) #42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = load i64, ptr %3, align 8, !range !13, !noundef !11
  %.not = icmp eq i64 %i.k, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.d:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !11, !noundef !11
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  store i8 4, ptr %i.a, align 8
  %i.o = call noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error24insert_context_uncheckedB4_(ptr noalias noundef nonnull align 8 %i.c, i8 noundef 15, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a) #42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  br i1 %.sroa.012.0, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, %bb.f
  ret ptr %i.c

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !1487, !nonnull !11, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  %i.q = icmp eq i64 %.val1.i, 0
  br i1 %i.q, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.03.i.i.i ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.0.03.i.i.i, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  %.val.i.i.i.i = load i64, ptr %i.r, align 8, !range !12, !alias.scope !1490, !noalias !1487, !noundef !11 ; 2 uses
  %i.t = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1490, !noalias !1487, !nonnull !11, !noundef !11
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1491
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i
  %i.v = icmp eq i64 %i.s, %.val1.i
  br i1 %i.v, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %bb.g
  %.val2.i = load i64, ptr %2, align 8, !range !12, !alias.scope !1487, !noundef !11 ; 2 uses
  %i.w = icmp eq i64 %.val2.i, 0
  br i1 %i.w, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit, label %bb.i

bb.i:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i
  %i.x = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1487
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error19subcommand_conflictB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 2 uses
  %.sroa.48 = alloca [31 x i8], align 1           ; 2 uses
  %i.b = alloca [80 x i8], align 8                ; 9 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1500
  %i.c = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 256, i64 noundef range(i64 1, 9) 8) #43, !noalias !1500 ; 47 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #46, !noalias !1500
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 2, ptr %i.c, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %.sroa.474.0..sroa_idx, align 8
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.575.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.8.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx76, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx78, align 8
  %.sroa.9.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %.sroa.9.0..sroa_idx79, align 8
  %.sroa.10.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i64 -2, ptr %.sroa.10.0..sroa_idx80, align 8
  %.sroa.1182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store ptr null, ptr %.sroa.1182.0..sroa_idx, align 8
  %.sroa.1284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store i8 -1, ptr %.sroa.1284.0..sroa_idx, align 8
  %.sroa.1385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  store i8 -1, ptr %.sroa.1385.0..sroa_idx, align 4
  %.sroa.1487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store i8 -1, ptr %.sroa.1487.0..sroa_idx, align 8
  %.sroa.1589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  store i16 0, ptr %.sroa.1589.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.c, i64 134
  store i8 -1, ptr %.sroa.16.0..sroa_idx90, align 2
  %.sroa.1792.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 138
  store i8 -1, ptr %.sroa.1792.0..sroa_idx, align 2
  %.sroa.1894.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 142
  store i8 -1, ptr %.sroa.1894.0..sroa_idx, align 2
  %.sroa.1996.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 146
  store i16 0, ptr %.sroa.1996.0..sroa_idx, align 2
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  store i8 -1, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.2197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i8 -1, ptr %.sroa.2197.0..sroa_idx, align 8
  %.sroa.2298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  store i8 -1, ptr %.sroa.2298.0..sroa_idx, align 4
  %.sroa.2399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store i16 0, ptr %.sroa.2399.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 162
  store i8 -1, ptr %.sroa.24.0..sroa_idx, align 2
  %.sroa.25100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 166
  store i8 -1, ptr %.sroa.25100.0..sroa_idx, align 2
  %.sroa.26101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 170
  store i8 -1, ptr %.sroa.26101.0..sroa_idx, align 2
  %.sroa.27102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 174
  store i16 0, ptr %.sroa.27102.0..sroa_idx, align 2
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store i8 -1, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.29103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 180
  store i8 -1, ptr %.sroa.29103.0..sroa_idx, align 4
  %.sroa.30104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store i8 -1, ptr %.sroa.30104.0..sroa_idx, align 8
  %.sroa.31105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 188
  store i16 0, ptr %.sroa.31105.0..sroa_idx, align 4
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 190
  store i8 -1, ptr %.sroa.32.0..sroa_idx, align 2
  %.sroa.33106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 194
  store i8 -1, ptr %.sroa.33106.0..sroa_idx, align 2
  %.sroa.34107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 198
  store i8 -1, ptr %.sroa.34107.0..sroa_idx, align 2
  %.sroa.35108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 202
  store i16 0, ptr %.sroa.35108.0..sroa_idx, align 2
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 204
  store i8 -1, ptr %.sroa.36.0..sroa_idx, align 4
  %.sroa.37109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store i8 -1, ptr %.sroa.37109.0..sroa_idx, align 8
  %.sroa.38110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 212
  store i8 -1, ptr %.sroa.38110.0..sroa_idx, align 4
  %.sroa.39111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  store i16 0, ptr %.sroa.39111.0..sroa_idx, align 8
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 218
  store i8 -1, ptr %.sroa.40.0..sroa_idx, align 2
  %.sroa.41112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 222
  store i8 -1, ptr %.sroa.41112.0..sroa_idx, align 2
  %.sroa.42113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 226
  store i8 -1, ptr %.sroa.42113.0..sroa_idx, align 2
  %.sroa.43114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 230
  store i16 0, ptr %.sroa.43114.0..sroa_idx, align 2
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store i8 -2, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.45115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 246
  store <4 x i8> <i8 0, i8 2, i8 2, i8 8>, ptr %.sroa.45115.0..sroa_idx, align 2
  %i.e = tail call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error8with_cmdB4_(ptr noalias noundef nonnull align 8 %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %0) #43 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !11 ; 4 uses
  %i.h = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.h)
  switch i64 %i.g, label %.sink.split [
    i64 0, label %bb.c
    i64 1, label %bb.d
  ]

.sink.split:                                      ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, %bb.d
  %.sink = phi ptr [ %i.m, %bb.d ], [ %2, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ]
  %.val1.i.ph = phi i64 [ 0, %bb.d ], [ %i.g, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ]
  %.sroa.012.0.ph = phi i1 [ true, %bb.d ], [ false, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ]
  %.sroa.03.0.ph = phi i8 [ 2, %bb.d ], [ 3, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ]
  %.sroa.4.8..sroa_idx4 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sink, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  %.val1.i = phi i64 [ %i.g, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ], [ %.val1.i.ph, %.sink.split ] ; 2 uses
  %.sroa.012.0 = phi i1 [ true, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.012.0.ph, %.sink.split ]
  %.sroa.03.0 = phi i8 [ 0, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.03.0.ph, %.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.48.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.48, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.48.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 0, ptr %i.b, align 8
  %.sroa.46.sroa.3.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 2, ptr %.sroa.46.sroa.3.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.48, i64 31, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i8 2, ptr %i.i, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 %.sroa.03.0, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  %i.j = call noundef nonnull align 8 ptr @_RINvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB3_5Error24extend_context_uncheckedKj2_EB5_(ptr noalias noundef nonnull align 8 %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.b) #42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = load i64, ptr %3, align 8, !range !13, !noundef !11
  %.not = icmp eq i64 %i.k, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.d:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !11, !noundef !11
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  store i8 4, ptr %i.a, align 8
  %i.o = call noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error24insert_context_uncheckedB4_(ptr noalias noundef nonnull align 8 %i.c, i8 noundef 15, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a) #42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  br i1 %.sroa.012.0, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, %bb.f
  ret ptr %i.c

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !1501, !nonnull !11, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1502)
  %i.q = icmp eq i64 %.val1.i, 0
  br i1 %i.q, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.03.i.i.i ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.0.03.i.i.i, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  %.val.i.i.i.i = load i64, ptr %i.r, align 8, !range !12, !alias.scope !1504, !noalias !1501, !noundef !11 ; 2 uses
  %i.t = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1504, !noalias !1501, !nonnull !11, !noundef !11
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1505
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i
  %i.v = icmp eq i64 %i.s, %.val1.i
  br i1 %i.v, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %bb.g
  %.val2.i = load i64, ptr %2, align 8, !range !12, !alias.scope !1501, !noundef !11 ; 2 uses
  %i.w = icmp eq i64 %.val2.i, 0
  br i1 %i.w, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit, label %bb.i

bb.i:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i
  %i.x = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1501
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error23unrecognized_subcommandB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.45 = alloca [31 x i8], align 1           ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1508
  %i.c = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 256, i64 noundef range(i64 1, 9) 8) #43, !noalias !1508 ; 47 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #46, !noalias !1508
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 2, ptr %i.c, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %.sroa.465.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.8.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx66, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx68, align 8
  %.sroa.9.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %.sroa.9.0..sroa_idx69, align 8
  %.sroa.10.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i64 -2, ptr %.sroa.10.0..sroa_idx70, align 8
  %.sroa.1172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store ptr null, ptr %.sroa.1172.0..sroa_idx, align 8
  %.sroa.1274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store i8 -1, ptr %.sroa.1274.0..sroa_idx, align 8
  %.sroa.1375.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  store i8 -1, ptr %.sroa.1375.0..sroa_idx, align 4
  %.sroa.1477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store i8 -1, ptr %.sroa.1477.0..sroa_idx, align 8
  %.sroa.1579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  store i16 0, ptr %.sroa.1579.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.c, i64 134
  store i8 -1, ptr %.sroa.16.0..sroa_idx80, align 2
  %.sroa.1782.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 138
  store i8 -1, ptr %.sroa.1782.0..sroa_idx, align 2
  %.sroa.1884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 142
  store i8 -1, ptr %.sroa.1884.0..sroa_idx, align 2
  %.sroa.1986.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 146
  store i16 0, ptr %.sroa.1986.0..sroa_idx, align 2
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  store i8 -1, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.2187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i8 -1, ptr %.sroa.2187.0..sroa_idx, align 8
  %.sroa.2288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  store i8 -1, ptr %.sroa.2288.0..sroa_idx, align 4
  %.sroa.2389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store i16 0, ptr %.sroa.2389.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 162
  store i8 -1, ptr %.sroa.24.0..sroa_idx, align 2
  %.sroa.2590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 166
  store i8 -1, ptr %.sroa.2590.0..sroa_idx, align 2
  %.sroa.2691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 170
  store i8 -1, ptr %.sroa.2691.0..sroa_idx, align 2
  %.sroa.2792.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 174
  store i16 0, ptr %.sroa.2792.0..sroa_idx, align 2
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store i8 -1, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.2993.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 180
  store i8 -1, ptr %.sroa.2993.0..sroa_idx, align 4
  %.sroa.3094.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store i8 -1, ptr %.sroa.3094.0..sroa_idx, align 8
  %.sroa.3195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 188
  store i16 0, ptr %.sroa.3195.0..sroa_idx, align 4
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 190
  store i8 -1, ptr %.sroa.32.0..sroa_idx, align 2
  %.sroa.3396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 194
  store i8 -1, ptr %.sroa.3396.0..sroa_idx, align 2
  %.sroa.3497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 198
  store i8 -1, ptr %.sroa.3497.0..sroa_idx, align 2
  %.sroa.3598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 202
  store i16 0, ptr %.sroa.3598.0..sroa_idx, align 2
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 204
  store i8 -1, ptr %.sroa.36.0..sroa_idx, align 4
  %.sroa.3799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store i8 -1, ptr %.sroa.3799.0..sroa_idx, align 8
  %.sroa.38100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 212
  store i8 -1, ptr %.sroa.38100.0..sroa_idx, align 4
  %.sroa.39101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  store i16 0, ptr %.sroa.39101.0..sroa_idx, align 8
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 218
  store i8 -1, ptr %.sroa.40.0..sroa_idx, align 2
  %.sroa.41102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 222
  store i8 -1, ptr %.sroa.41102.0..sroa_idx, align 2
  %.sroa.42103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 226
  store i8 -1, ptr %.sroa.42103.0..sroa_idx, align 2
  %.sroa.43104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 230
  store i16 0, ptr %.sroa.43104.0..sroa_idx, align 2
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store i8 -2, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.45106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 246
  store <4 x i8> <i8 0, i8 2, i8 2, i8 2>, ptr %.sroa.45106.0..sroa_idx, align 2
  %i.e = tail call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error8with_cmdB4_(ptr noalias noundef nonnull align 8 %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %0) #43 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.45.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.45, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.45.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 0, ptr %i.b, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 2, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.45, i64 31, i1 false)
  %i.f = call noundef nonnull align 8 ptr @_RINvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB3_5Error24extend_context_uncheckedKj1_EB5_(ptr noalias noundef nonnull align 8 %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b) #42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = load i64, ptr %2, align 8, !range !13, !noundef !11
  %.not = icmp eq i64 %i.g, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store i8 4, ptr %i.a, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error24insert_context_uncheckedB4_(ptr noalias noundef nonnull align 8 %i.c, i8 noundef 15, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a) #42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  ret ptr %i.c
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error24insert_context_uncheckedB4_(ptr noalias nofree noundef nonnull returned align 8 captures(ret: address, provenance) %0, i8 noundef range(i8 0, 17) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1514, !noundef !11 ; 3 uses
  %i.d = load i64, ptr %i.a, align 8, !range !12, !alias.scope !1514, !noundef !11
  %i.e = icmp eq i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #42
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1514, !nonnull !11, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c
  store i8 %1, ptr %i.h, align 1, !noalias !1514
  %i.i = add i64 %i.c, 1
  store i64 %i.i, ptr %i.b, align 8, !alias.scope !1514
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1515, !noalias !1516, !noundef !11 ; 3 uses
  %i.m = load i64, ptr %i.j, align 8, !range !12, !alias.scope !1515, !noalias !1516, !noundef !11
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8push_mutBL_.exit

bb.c:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #42, !noalias !1516
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8push_mutBL_.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8push_mutBL_.exit: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1515, !noalias !1516, !nonnull !11, !noundef !11
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !noalias !1515
  %i.r = add i64 %i.l, 1
  store i64 %i.r, ptr %i.k, align 8, !alias.scope !1515, !noalias !1516
  ret ptr %0
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define noundef align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error3getB4_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i8 noundef range(i8 0, 17) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1519, !nonnull !11, !noundef !11 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1519, !noundef !11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = icmp samesign eq i64 %i.e, 0
  br i1 %i.g, label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtNtB7_5error7context11ContextKindNtB13_12ContextValueE3getB11_EB7_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i6, i64 1 ; 2 uses
  %i.i = add i64 %.sroa.8.0.i5, 1
  %i.j = icmp eq ptr %i.h, %i.f
  br i1 %i.j, label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtNtB7_5error7context11ContextKindNtB13_12ContextValueE3getB11_EB7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.01.i6 = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.8.0.i5 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %.val.i = load i8, ptr %.sroa.0.01.i6, align 1, !range !36, !noalias !1519, !noundef !11
  %i.k = icmp eq i8 %.val.i, %1
  br i1 %i.k, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !1519, !noundef !11 ; 2 uses
  %i.n = icmp ult i64 %.sroa.8.0.i5, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1519, !nonnull !11, !noundef !11
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.8.0.i5
  br label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtNtB7_5error7context11ContextKindNtB13_12ContextValueE3getB11_EB7_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i5, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !1519
  unreachable

_RINvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtNtB7_5error7context11ContextKindNtB13_12ContextValueE3getB11_EB7_.exit: ; preds = %bb.b, %bb.a, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.q, %bb.d ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: noreturn nounwind nonlazybind uwtable
define internal fastcc void @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error4exitB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error5printB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) #43
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfu0rQaTkGUu_12clap_builder(ptr %i.a) #43
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 249
  %i.d = load i8, ptr %i.c, align 1, !range !36, !noundef !11
  %i.e = and i8 %i.d, 29
  %switch.selectcmp = icmp eq i8 %i.e, 12
  %i.f = select i1 %switch.selectcmp, i32 0, i32 2
  tail call void @_RNvNtCsaKJjC64KgbL_3std7process4exit(i32 noundef %i.f) #46
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error5printB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1552)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !1552, !noalias !1551, !nonnull !11, !noundef !11 ; 7 uses
  %i.i = load i64, ptr %i.h, align 8, !range !15, !noalias !1553, !noundef !11 ; 2 uses
  %.not.i = icmp eq i64 %i.i, 2
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !1556, !noalias !1557
  store i64 -1, ptr %i.g, align 8, !alias.scope !1556, !noalias !1557
  br label %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error9formattedB4_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1555, !noalias !1558, !nonnull !11, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !1555, !noalias !1558, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1559
  store i64 0, ptr %i.d, align 8, !noalias !1559
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !noalias !1559
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.59.0..sroa_idx.i.i.i, align 8, !noalias !1559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1560
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 134
  store ptr %i.q, ptr %i.b, align 8, !noalias !1560
  store ptr %i.b, ptr %i.c, align 8, !noalias !1560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1560
  store ptr %i.c, ptr %i.a, align 8, !noalias !1560
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !1560
  %i.r = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @266, ptr noundef nonnull %i.a) #43, !noalias !1561 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1560
  call void @llvm.experimental.noalias.scope.decl(metadata !1562)
  call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  %i.s = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i, align 8, !alias.scope !1564, !noalias !1565, !noundef !11 ; 5 uses
  %i.t = load i64, ptr %i.d, align 8, !range !12, !alias.scope !1564, !noalias !1565, !noundef !11
  %i.u = sub i64 %i.t, %i.s
  %i.v = icmp ugt i64 %i.p, %i.u
  br i1 %i.v, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i.i: ; preds = %bb.d
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.s, i64 noundef %i.p, i64 noundef 1, i64 noundef 1) #43, !noalias !1566
  %i.w = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i, align 8, !alias.scope !1567, !noalias !1565, !noundef !11 ; 2 uses
  %i.x = icmp sgt i64 %i.w, -1
  call void @llvm.assume(i1 %i.x)
  br label %bb.e

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i: ; preds = %bb.d
  %i.y = icmp sgt i64 %i.s, -1
  call void @llvm.assume(i1 %i.y)
  %.not.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder5error6format20format_error_message.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i.i
  %i.z = phi i64 [ %i.w, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i.i.i ], [ %i.s, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ] ; 2 uses
  %i.aa = load ptr, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !alias.scope !1567, !noalias !1565, !nonnull !11, !noundef !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.n, i64 %i.p, i1 false), !noalias !1568
  br label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder5error6format20format_error_message.exit.i.i

_RNvNtNtCsfu0rQaTkGUu_12clap_builder5error6format20format_error_message.exit.i.i: ; preds = %bb.e, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
  %i.ac = phi i64 [ %i.z, %bb.e ], [ %i.s, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ]
  %i.ad = add i64 %i.ac, %i.p
  store i64 %i.ad, ptr %.sroa.59.0..sroa_idx.i.i.i, align 8, !alias.scope !1567, !noalias !1565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1559
  br label %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error9formattedB4_.exit

bb.f:                                             ; preds = %bb.a
  call void @_RNvXs_NtNtCsfu0rQaTkGUu_12clap_builder5error6formatNtB4_13RichFormatterNtB4_14ErrorFormatter12format_error(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) #43
  br label %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error9formattedB4_.exit

_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error9formattedB4_.exit: ; preds = %bb.c, %_RNvNtNtCsfu0rQaTkGUu_12clap_builder5error6format20format_error_message.exit.i.i, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 249
  %i.af = load i8, ptr %i.ae, align 1, !range !36, !noundef !11 ; 2 uses
  %i.ag = and i8 %i.af, 30
  %switch = icmp eq i8 %i.ag, 12
  %.sroa.0.0.in.v = select i1 %switch, i64 248, i64 247
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.0.0.in.v
  %.sroa.0.0 = load i8, ptr %.sroa.0.0.in, align 1, !range !37, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ah = and i8 %i.af, 29
  %switch.selectcmp = icmp ne i8 %i.ah, 12
  %i.ai = zext i1 %switch.selectcmp to i8
  %i.aj = load i64, ptr %i.g, align 8, !range !13, !noundef !11 ; 2 uses
  %.not = icmp eq i64 %i.aj, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error9formattedB4_.exit
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.619.0.copyload = load i64, ptr %.sroa.619.0..sroa_idx, align 8
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output3fmtNtB2_9Colorizer12with_content.exit

bb.h:                                             ; preds = %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error9formattedB4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al) #43
  %.sroa.015.0.copyload16 = load i64, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0.copyload18 = load ptr, ptr %.sroa.5.0..sroa_idx17, align 8
  %.sroa.619.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.619.0.copyload21 = load i64, ptr %.sroa.619.0..sroa_idx20, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output3fmtNtB2_9Colorizer12with_content.exit

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output3fmtNtB2_9Colorizer12with_content.exit: ; preds = %bb.g, %bb.h
  %.sroa.619.0 = phi i64 [ %.sroa.619.0.copyload21, %bb.h ], [ %.sroa.619.0.copyload, %bb.g ]
  %.sroa.5.0 = phi ptr [ %.sroa.5.0.copyload18, %bb.h ], [ %i.al, %bb.g ] ; 3 uses
  %.sroa.015.0 = phi i64 [ %.sroa.015.0.copyload16, %bb.h ], [ %i.aj, %bb.g ] ; 3 uses
  store i64 %.sroa.015.0, ptr %i.f, align 8, !alias.scope !1569, !noalias !1570
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1569, !noalias !1570
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.619.0, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !1569, !noalias !1570
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i8 %i.ai, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !1569, !noalias !1570
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 25
  store i8 %.sroa.0.0, ptr %.sroa.10.0..sroa_idx, align 1, !alias.scope !1569, !noalias !1570
  %i.am = call noundef ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output3fmtNtB4_9Colorizer5print(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f) #43
  %i.an = icmp eq i64 %.sroa.015.0, 0
  br i1 %i.an, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6output3fmt9ColorizerEBH_.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output3fmtNtB2_9Colorizer12with_content.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0, i64 noundef %.sroa.015.0, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1571
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6output3fmt9ColorizerEBH_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6output3fmt9ColorizerEBH_.exit: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output3fmtNtB2_9Colorizer12with_content.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.am
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error7for_appB4_(i8 noundef range(i8 12, 15) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1577
  %i.a = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 256, i64 noundef range(i64 1, 9) 8) #43, !noalias !1577 ; 49 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RINvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB3_5Error11set_messageNtNtNtB5_7builder10styled_str9StyledStrEB5_.exit, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #46, !noalias !1577
  unreachable

_RINvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB3_5Error11set_messageNtNtNtB5_7builder10styled_str9StyledStrEB5_.exit: ; preds = %bb.a
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %.sroa.458.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.8.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx59, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx61, align 8
  %.sroa.9.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 0, ptr %.sroa.9.0..sroa_idx62, align 8
  %.sroa.10.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 -2, ptr %.sroa.10.0..sroa_idx63, align 8
  %.sroa.1165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr null, ptr %.sroa.1165.0..sroa_idx, align 8
  %.sroa.1267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i8 -1, ptr %.sroa.1267.0..sroa_idx, align 8
  %.sroa.1368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  store i8 -1, ptr %.sroa.1368.0..sroa_idx, align 4
  %.sroa.1470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i8 -1, ptr %.sroa.1470.0..sroa_idx, align 8
  %.sroa.1572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  store i16 0, ptr %.sroa.1572.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.a, i64 134
  store i8 -1, ptr %.sroa.16.0..sroa_idx73, align 2
  %.sroa.1775.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 138
  store i8 -1, ptr %.sroa.1775.0..sroa_idx, align 2
  %.sroa.1877.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 142
  store i8 -1, ptr %.sroa.1877.0..sroa_idx, align 2
  %.sroa.1979.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 146
  store i16 0, ptr %.sroa.1979.0..sroa_idx, align 2
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  store i8 -1, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.2180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 -1, ptr %.sroa.2180.0..sroa_idx, align 8
  %.sroa.2281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  store i8 -1, ptr %.sroa.2281.0..sroa_idx, align 4
  %.sroa.2382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i16 0, ptr %.sroa.2382.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 162
  store i8 -1, ptr %.sroa.24.0..sroa_idx, align 2
  %.sroa.2583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 166
  store i8 -1, ptr %.sroa.2583.0..sroa_idx, align 2
  %.sroa.2684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 170
  store i8 -1, ptr %.sroa.2684.0..sroa_idx, align 2
  %.sroa.2785.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 174
  store i16 0, ptr %.sroa.2785.0..sroa_idx, align 2
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i8 -1, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.2986.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store i8 -1, ptr %.sroa.2986.0..sroa_idx, align 4
  %.sroa.3087.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i8 -1, ptr %.sroa.3087.0..sroa_idx, align 8
  %.sroa.3188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i16 0, ptr %.sroa.3188.0..sroa_idx, align 4
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 190
  store i8 -1, ptr %.sroa.32.0..sroa_idx, align 2
  %.sroa.3389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 194
  store i8 -1, ptr %.sroa.3389.0..sroa_idx, align 2
  %.sroa.3490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 198
  store i8 -1, ptr %.sroa.3490.0..sroa_idx, align 2
  %.sroa.3591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 202
  store i16 0, ptr %.sroa.3591.0..sroa_idx, align 2
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  store i8 -1, ptr %.sroa.36.0..sroa_idx, align 4
  %.sroa.3792.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i8 -1, ptr %.sroa.3792.0..sroa_idx, align 8
  %.sroa.3893.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  store i8 -1, ptr %.sroa.3893.0..sroa_idx, align 4
  %.sroa.3994.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i16 0, ptr %.sroa.3994.0..sroa_idx, align 8
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 218
  store i8 -1, ptr %.sroa.40.0..sroa_idx, align 2
  %.sroa.4195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 222
  store i8 -1, ptr %.sroa.4195.0..sroa_idx, align 2
  %.sroa.4296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 226
  store i8 -1, ptr %.sroa.4296.0..sroa_idx, align 2
  %.sroa.4397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 230
  store i16 0, ptr %.sroa.4397.0..sroa_idx, align 2
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i8 -2, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.4598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 246
  store i8 0, ptr %.sroa.4598.0..sroa_idx, align 2
  %.sroa.46.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.a, i64 247
  store i8 2, ptr %.sroa.46.0..sroa_idx99, align 1
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store i8 2, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 249
  store i8 %0, ptr %.sroa.48.0..sroa_idx, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1578)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.a, align 8, !alias.scope !1579, !noalias !1578
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !alias.scope !1580
  %i.c = tail call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error8with_cmdB4_(ptr noalias noundef nonnull align 8 %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %1) #43 ; 0 uses
  ret ptr %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error8with_cmdB4_(ptr noalias nofree noundef nonnull returned align 8 captures(ret: address, provenance) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [126 x i8], align 2               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1588)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1589, !nonnull !11, !noundef !11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1589, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %i.g, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesEB7_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i27, i64 16 ; 2 uses
  %i.k = add i64 %.sroa.8.0.i.i26, 1
  %i.l = icmp eq ptr %i.j, %i.h
  br i1 %i.l, label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesEB7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.01.i.i27 = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.sroa.8.0.i.i26 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %.val.i.i = load i128, ptr %.sroa.0.01.i.i27, align 8, !noalias !1589
  %i.m = icmp eq i128 %.val.i.i, -100310019091698447603793328749864812255
  br i1 %i.m, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !1589, !noundef !11 ; 2 uses
  %i.p = icmp ult i64 %.sroa.8.0.i.i26, %i.o
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i26, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !1589
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !1589, !nonnull !11, !noundef !11
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.sroa.8.0.i.i26 ; 2 uses
  %.val5.i = load ptr, ptr %i.s, align 8, !noalias !1587, !nonnull !11, !noundef !11
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val6.i = load ptr, ptr %i.t, align 8, !noalias !1587, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !18, !invariant.load !11, !noalias !1587
  %i.w = add nsw i64 %i.v, -1
  %i.x = and i64 %i.w, -16
  %i.y = getelementptr inbounds nuw i8, ptr %.val5.i, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1587
  %i.aa = getelementptr inbounds nuw i8, ptr %.val6.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !11, !noalias !1587, !nonnull !11
  call void %i.ab(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.z) #45, !noalias !1587, !inline_history !2
  %i.ac = load i128, ptr %i.a, align 16, !noalias !1587, !noundef !11
  %.not.i = icmp eq i128 %i.ac, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1587
  br i1 %.not.i, label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesEB7_.exit, label %bb.f, !prof !16

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !1587
  unreachable

_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesEB7_.exit: ; preds = %bb.b, %bb.a, %bb.e
  %.sroa.0.0.i = phi ptr [ %i.z, %bb.e ], [ null, %bb.a ], [ null, %bb.b ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.i, null
  %. = select i1 %.not, ptr @99, ptr %.sroa.0.0.i ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.c, ptr noundef nonnull align 2 dereferenceable(14) %., i64 14, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %., i64 14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ae, ptr noundef nonnull align 2 dereferenceable(14) %i.ad, i64 14, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %., i64 28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ag, ptr noundef nonnull align 2 dereferenceable(14) %i.af, i64 14, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %., i64 42
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ai, ptr noundef nonnull align 2 dereferenceable(14) %i.ah, i64 14, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %., i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ak, ptr noundef nonnull align 2 dereferenceable(14) %i.aj, i64 14, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %., i64 70
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.am, ptr noundef nonnull align 2 dereferenceable(14) %i.al, i64 14, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %., i64 84
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ao, ptr noundef nonnull align 2 dereferenceable(14) %i.an, i64 14, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %., i64 98
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.aq, ptr noundef nonnull align 2 dereferenceable(14) %i.ap, i64 14, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %., i64 112
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.as, ptr noundef nonnull align 2 dereferenceable(14) %i.ar, i64 14, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(126) %i.at, ptr noundef nonnull align 2 dereferenceable(126) %i.c, i64 126, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 700
  %i.av = load i32, ptr %i.au, align 4, !noundef !11 ; 4 uses
  %i.aw = and i32 %i.av, 536870912
  %.not12 = icmp eq i32 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.ay = load i32, ptr %i.ax, align 8            ; 4 uses
  %i.az = and i32 %i.ay, 536870912
  %.not13 = icmp eq i32 %i.az, 0
  %or.cond = select i1 %.not12, i1 %.not13, i1 false
  %i.ba = or i32 %i.ay, %i.av
  %i.bb = lshr i32 %i.ba, 28
  %i.bc = trunc nuw nsw i32 %i.bb to i8
  %spec.select = and i8 %i.bc, 1
  %.sroa.09.0 = select i1 %or.cond, i8 %spec.select, i8 2
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 247
  store i8 %.sroa.09.0, ptr %i.bd, align 1
  %i.be = and i32 %i.av, 262144
  %.not.i19 = icmp eq i32 %i.be, 0
  %i.bf = and i32 %i.ay, 262144
  %.not1.i = icmp eq i32 %i.bf, 0
  %or.cond1.i = select i1 %.not.i19, i1 %.not1.i, i1 false
  br i1 %or.cond1.i, label %bb.g, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10color_help.exit

bb.g:                                             ; preds = %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesEB7_.exit
  %i.bg = or i32 %i.ay, %i.av                     ; 2 uses
  %i.bh = and i32 %i.bg, 536870912
  %or.cond.i = icmp eq i32 %i.bh, 0
  br i1 %or.cond.i, label %bb.h, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10color_help.exit

bb.h:                                             ; preds = %bb.g
  %i.bi = lshr i32 %i.bg, 28
  %i.bj = trunc nuw nsw i32 %i.bi to i8
  %spec.select.i = and i8 %i.bj, 1
  br label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10color_help.exit

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10color_help.exit: ; preds = %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesEB7_.exit, %bb.g, %bb.h
  %.sroa.0.0.i20 = phi i8 [ 2, %bb.g ], [ 2, %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesEB7_.exit ], [ %spec.select.i, %bb.h ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 %.sroa.0.0.i20, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsfu0rQaTkGUu_12clap_builder5error6format13get_help_flag(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1) #43
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.val17 = load i64, ptr %i.bl, align 8, !range !27, !noundef !11 ; 2 uses
  %i.bm = icmp sgt i64 %.val17, 0
  br i1 %i.bm, label %bb.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEEECsfu0rQaTkGUu_12clap_builder.exit

bb.i:                                             ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10color_help.exit
  %i.bn = getelementptr i8, ptr %0, i64 88
  %.val18 = load ptr, ptr %i.bn, align 8, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val18, i64 noundef %.val17, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1590
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10color_help.exit, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error9no_equalsB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.45 = alloca [31 x i8], align 1           ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !1593
  %i.c = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 256, i64 noundef range(i64 1, 9) 8) #43, !noalias !1593 ; 47 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #46, !noalias !1593
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 2, ptr %i.c, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %.sroa.465.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.8.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx66, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx68, align 8
  %.sroa.9.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %.sroa.9.0..sroa_idx69, align 8
  %.sroa.10.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i64 -2, ptr %.sroa.10.0..sroa_idx70, align 8
  %.sroa.1172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store ptr null, ptr %.sroa.1172.0..sroa_idx, align 8
  %.sroa.1274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store i8 -1, ptr %.sroa.1274.0..sroa_idx, align 8
  %.sroa.1375.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  store i8 -1, ptr %.sroa.1375.0..sroa_idx, align 4
  %.sroa.1477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store i8 -1, ptr %.sroa.1477.0..sroa_idx, align 8
  %.sroa.1579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  store i16 0, ptr %.sroa.1579.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.c, i64 134
  store i8 -1, ptr %.sroa.16.0..sroa_idx80, align 2
  %.sroa.1782.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 138
  store i8 -1, ptr %.sroa.1782.0..sroa_idx, align 2
  %.sroa.1884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 142
  store i8 -1, ptr %.sroa.1884.0..sroa_idx, align 2
  %.sroa.1986.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 146
  store i16 0, ptr %.sroa.1986.0..sroa_idx, align 2
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  store i8 -1, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.2187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i8 -1, ptr %.sroa.2187.0..sroa_idx, align 8
  %.sroa.2288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  store i8 -1, ptr %.sroa.2288.0..sroa_idx, align 4
  %.sroa.2389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store i16 0, ptr %.sroa.2389.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 162
  store i8 -1, ptr %.sroa.24.0..sroa_idx, align 2
  %.sroa.2590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 166
  store i8 -1, ptr %.sroa.2590.0..sroa_idx, align 2
  %.sroa.2691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 170
  store i8 -1, ptr %.sroa.2691.0..sroa_idx, align 2
  %.sroa.2792.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 174
  store i16 0, ptr %.sroa.2792.0..sroa_idx, align 2
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store i8 -1, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.2993.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 180
  store i8 -1, ptr %.sroa.2993.0..sroa_idx, align 4
  %.sroa.3094.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store i8 -1, ptr %.sroa.3094.0..sroa_idx, align 8
  %.sroa.3195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 188
  store i16 0, ptr %.sroa.3195.0..sroa_idx, align 4
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 190
  store i8 -1, ptr %.sroa.32.0..sroa_idx, align 2
  %.sroa.3396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 194
  store i8 -1, ptr %.sroa.3396.0..sroa_idx, align 2
  %.sroa.3497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 198
  store i8 -1, ptr %.sroa.3497.0..sroa_idx, align 2
  %.sroa.3598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 202
  store i16 0, ptr %.sroa.3598.0..sroa_idx, align 2
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 204
  store i8 -1, ptr %.sroa.36.0..sroa_idx, align 4
  %.sroa.3799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store i8 -1, ptr %.sroa.3799.0..sroa_idx, align 8
  %.sroa.38100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 212
  store i8 -1, ptr %.sroa.38100.0..sroa_idx, align 4
  %.sroa.39101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  store i16 0, ptr %.sroa.39101.0..sroa_idx, align 8
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 218
  store i8 -1, ptr %.sroa.40.0..sroa_idx, align 2
  %.sroa.41102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 222
  store i8 -1, ptr %.sroa.41102.0..sroa_idx, align 2
  %.sroa.42103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 226
  store i8 -1, ptr %.sroa.42103.0..sroa_idx, align 2
  %.sroa.43104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 230
  store i16 0, ptr %.sroa.43104.0..sroa_idx, align 2
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store i8 -2, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.45106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 246
  store <4 x i8> <i8 0, i8 2, i8 2, i8 3>, ptr %.sroa.45106.0..sroa_idx, align 2
  %i.e = tail call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error8with_cmdB4_(ptr noalias noundef nonnull align 8 %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %0) #43 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.45.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.45, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.45.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %i.b, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 2, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.45, i64 31, i1 false)
  %i.f = call noundef nonnull align 8 ptr @_RINvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB3_5Error24extend_context_uncheckedKj1_EB5_(ptr noalias noundef nonnull align 8 %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b) #42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = load i64, ptr %2, align 8, !range !13, !noundef !11
  %.not = icmp eq i64 %i.g, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store i8 4, ptr %i.a, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error24insert_context_uncheckedB4_(ptr noalias noundef nonnull align 8 %i.c, i8 noundef 15, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a) #42 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  ret ptr %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @_RNvMNtNtCsaKJjC64KgbL_3std3ffi6os_strNtB2_8OsString9as_os_str(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !11
  %i.c = insertvalue { ptr, i64 } poison, ptr %.val, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 %.val1, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util6escapeNtB2_6Escape14needs_escaping(ptr nofree readonly captures(address) %.0.val, i64 %.8.val) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RNvYINtNtNtCsj6eKBz9Db1c_4core3str7pattern18MultiCharEqPatternNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_7Pattern15is_contained_inCsfu0rQaTkGUu_12clap_builder.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1606)
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.8.val ; 4 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.b
  %i.c = phi ptr [ %i.al, %bb.k ], [ %.0.val, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %i.e = load i8, ptr %i.c, align 1, !alias.scope !1606, !noalias !1607, !noundef !11 ; 5 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %bb.c, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.i.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = and i8 %i.e, 31
  %i.h = zext nneg i8 %i.g to i32                 ; 3 uses
  %i.i = icmp ne ptr %i.d, %i.b
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  %i.k = load i8, ptr %i.d, align 1, !alias.scope !1606, !noalias !1607, !noundef !11
  %i.l = shl nuw nsw i32 %i.h, 6
  %i.m = and i8 %i.k, 63
  %i.n = zext nneg i8 %i.m to i32                 ; 2 uses
  %i.o = or disjoint i32 %i.l, %i.n
  %i.p = icmp samesign ugt i8 %i.e, -33
  br i1 %i.p, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.i.i.i.i, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = zext nneg i8 %i.e to i32
  br label %bb.d

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit12.i.i.i.i.i
  %i.r = icmp ne ptr %i.j, %i.b
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 3 uses
  %i.t = load i8, ptr %i.j, align 1, !alias.scope !1606, !noalias !1607, !noundef !11
  %i.u = shl nuw nsw i32 %i.n, 6
  %i.v = and i8 %i.t, 63
  %i.w = zext nneg i8 %i.v to i32
  %i.x = or disjoint i32 %i.u, %i.w               ; 2 uses
  %i.y = shl nuw nsw i32 %i.h, 12
  %i.z = or disjoint i32 %i.x, %i.y
  %i.aa = icmp samesign ugt i8 %i.e, -17
  br i1 %i.aa, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.i.i.i.i, label %bb.d

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit14.i.i.i.i.i
  %i.ab = icmp ne ptr %i.s, %i.b
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ad = load i8, ptr %i.s, align 1, !alias.scope !1606, !noalias !1607, !noundef !11
  %i.ae = shl nuw nsw i32 %i.h, 18
  %i.af = and i32 %i.ae, 1835008
  %i.ag = shl nuw nsw i32 %i.x, 6
  %i.ah = and i8 %i.ad, 63
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = or disjoint i32 %i.aj, %i.af
end_hunk_2
begin_hunk_3_@_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher21fill_in_global_values:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bf, ptr noundef nonnull align 8 dereferenceable(56) %i.be, i64 56, i1 false)
  store i64 0, ptr %i.be, align 8
  %.sroa.018.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.018.sroa.4.0..sroa_idx, align 8
  %.sroa.018.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 3 uses
  %.sroa.018.sroa.6.sroa.4.0..sroa.018.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 56 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.018.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.018.sroa.6.sroa.4.0..sroa.018.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.018.sroa.6.sroa.5.0..sroa.018.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.018.sroa.6.sroa.5.0..sroa.018.sroa.6.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store i64 2, ptr %i.c, align 8
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher21fill_in_global_values(ptr noalias nofree noundef align 8 dereferenceable(120) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef align 8 dereferenceable(48) %3) #43
  %i.bg = load <2 x i64>, ptr %i.bf, align 8, !alias.scope !1869, !noalias !11
  %i.bh = load <2 x i64>, ptr %i.be, align 8, !alias.scope !1870, !noalias !11
  store <2 x i64> %i.bh, ptr %i.bf, align 8, !alias.scope !1869, !noalias !11
  store <2 x i64> %i.bg, ptr %i.be, align 8, !alias.scope !1870, !noalias !11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %i.bj = load <2 x i64>, ptr %i.bi, align 8, !alias.scope !1871, !noalias !11
  %i.bk = load <2 x i64>, ptr %.sroa.018.sroa.5.0..sroa_idx, align 8, !alias.scope !1872, !noalias !11
  store <2 x i64> %i.bk, ptr %i.bi, align 8, !alias.scope !1871, !noalias !11
  store <2 x i64> %i.bj, ptr %.sroa.018.sroa.5.0..sroa_idx, align 8, !alias.scope !1872, !noalias !11
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.bm = load <2 x i64>, ptr %i.bl, align 8, !alias.scope !1873, !noalias !11
  %i.bn = load <2 x i64>, ptr %.sroa.018.sroa.6.sroa.4.0..sroa.018.sroa.6.0..sroa_idx.sroa_idx, align 8, !alias.scope !1874, !noalias !11
  store <2 x i64> %i.bn, ptr %i.bl, align 8, !alias.scope !1873, !noalias !11
  store <2 x i64> %i.bm, ptr %.sroa.018.sroa.6.sroa.4.0..sroa.018.sroa.6.0..sroa_idx.sroa_idx, align 8, !alias.scope !1874, !noalias !11
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1876)
  %.sroa.0.0.copyload.i.i.i.6.i.i = load i64, ptr %i.bo, align 8, !alias.scope !1875, !noalias !1876
  %.sroa.02.0.copyload.i.i.i.6.i.i = load i64, ptr %.sroa.419.0..sroa_idx, align 8, !alias.scope !1876, !noalias !1875
  store i64 %.sroa.02.0.copyload.i.i.i.6.i.i, ptr %i.bo, align 8, !alias.scope !1875, !noalias !1876
  store i64 %.sroa.0.0.copyload.i.i.i.6.i.i, ptr %.sroa.419.0..sroa_idx, align 8, !alias.scope !1876, !noalias !1875
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcher10ArgMatcherEBH_(ptr noalias nofree noundef align 8 dereferenceable(120) %i.c) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !1877, !noalias !1878, !nonnull !11, !noundef !11 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !1877, !noalias !1878, !noundef !11 ; 2 uses
  %.idx61 = shl nuw nsw i64 %i.bs, 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx61
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !1877, !noalias !1878, !nonnull !11, !noundef !11 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !1877, !noalias !1878, !noundef !11
  %i.by = getelementptr inbounds nuw [104 x i8], ptr %i.bv, i64 %i.bx
  %i.bz = icmp eq i64 %i.bs, 0
  br i1 %i.bz, label %._crit_edge60, label %.lr.ph59

.lr.ph59:                                         ; preds = %bb.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgEEB15_.exit39
  %.sroa.7.057 = phi ptr [ %i.cc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgEEB15_.exit39 ], [ %i.bv, %bb.j ] ; 3 uses
  %.sroa.040.056 = phi ptr [ %i.ca, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgEEB15_.exit39 ], [ %i.bq, %bb.j ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.040.056, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %.sroa.7.057, %i.by
  br i1 %i.cb, label %bb.k, label %bb.l, !prof !19

bb.k:                                             ; preds = %.lr.ph59
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @340) #44, !noalias !1879
  unreachable

bb.l:                                             ; preds = %.lr.ph59
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.7.057, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cd = load ptr, ptr %.sroa.040.056, align 8, !nonnull !11, !noundef !11
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.040.056, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvXs2_NtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB5_10MatchedArgNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.7.057) #45
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_2id2IdNtNtNtNtB6_6parser7matches11matched_arg10MatchedArgE6insertB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef align 8 dereferenceable(48) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cd, i64 noundef %i.cf, ptr noalias nofree noundef align 8 captures(address) dereferenceable(104) %i.a) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cg = load i64, ptr %i.b, align 8, !range !15, !alias.scope !1880, !noundef !11
  %i.ch = icmp eq i64 %i.cg, 2
  br i1 %i.ch, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgEEB15_.exit39, label %bb.m

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgEBJ_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.b) #43
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgEEB15_.exit39

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgEEB15_.exit39: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ci = icmp eq ptr %i.ca, %i.bt
  br i1 %i.ci, label %._crit_edge60, label %.lr.ph59

._crit_edge60:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgEEB15_.exit39, %bb.j
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher6remove(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(120) %0, ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i.i.i = alloca [96 x i8], align 8      ; 4 uses
  %i.a = alloca [104 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1904)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1905, !noalias !1906, !nonnull !11, !noundef !11 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1905, !noalias !1906, !noundef !11 ; 7 uses
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgEEB15_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.backedge.i.i.i
  %i.h = phi ptr [ %i.j, %.backedge.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %i.i = phi i64 [ %i.n, %.backedge.i.i.i ], [ 0, %bb.a ] ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %.val8.i.i.i = load i64, ptr %i.k, align 8, !noalias !1907, !noundef !11
  %i.l = icmp eq i64 %.val8.i.i.i, %.8.val
  br i1 %i.l, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i, label %.backedge.i.i.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %.val7.i.i.i = load ptr, ptr %i.h, align 8, !noalias !1907, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val7.i.i.i, ptr nonnull readonly %.0.val, i64 %.8.val), !noalias !1907
  %bcmp.i.i.fr.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i
  %i.m = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i.i, 0
  br i1 %i.m, label %bb.b, label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.n = add nuw nsw i64 %i.i, 1
  %i.o = icmp eq ptr %i.j, %i.f
  br i1 %i.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgEEB15_.exit, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1909)
  %i.p = icmp ult i64 %i.e, 576460752303423488
  tail call void @llvm.assume(i1 %i.p)
  %.not.i.i.i.i = icmp samesign ult i64 %i.i, %i.e
  br i1 %.not.i.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE6removeBK_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.i, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #44, !noalias !1910
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE6removeBK_.exit.i.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = xor i64 %i.i, -1                         ; 2 uses
  %i.t = add nsw i64 %i.e, %i.s
  %i.u = shl nuw nsw i64 %i.t, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.r, i64 %i.u, i1 false), !noalias !1911
  %i.v = add nsw i64 %i.e, -1
  store i64 %i.v, ptr %i.d, align 8, !alias.scope !1912, !noalias !1906
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1913)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !1915, !noalias !1916, !noundef !11 ; 5 uses
  %i.y = icmp ult i64 %i.x, 88686269585142076
  tail call void @llvm.assume(i1 %i.y)
  %.not.i.i7.i.i = icmp samesign ult i64 %i.i, %i.x
  br i1 %.not.i.i7.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgE10try_removeBM_.exit.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgE10try_removeBM_.exit.thread.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgE10try_removeBM_.exit.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE6removeBK_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !1915, !noalias !1916, !nonnull !11, !noundef !11
  %i.ab = getelementptr inbounds nuw [104 x i8], ptr %i.aa, i64 %i.i ; 4 uses
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.ab, align 8, !noalias !1917 ; 2 uses
  %.sroa.6.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.0..sroa_idx2.i.i.i, i64 96, i1 false), !noalias !1917
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.ad = add nsw i64 %i.x, %i.s
  %i.ae = mul nuw nsw i64 %i.ad, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.ac, i64 %i.ae, i1 false), !noalias !1918
  %i.af = add nsw i64 %i.x, -1                    ; 2 uses
  store i64 %i.af, ptr %i.w, align 8, !alias.scope !1915, !noalias !1916
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i, 2
  br i1 %.not.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgE10try_removeBM_.exit.thread.i.i.i, label %bb.d, !prof !40

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgE10try_removeBM_.exit.thread.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgE10try_removeBM_.exit.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE6removeBK_.exit.i.i
  %i.ag = phi i64 [ %i.x, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE6removeBK_.exit.i.i ], [ %i.af, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgE10try_removeBM_.exit.i.i.i ]
  tail call void @_RNvNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.i, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #44, !noalias !1919
  unreachable

bb.d:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgE10try_removeBM_.exit.i.i.i
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.48.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.i.i.i, i64 96, i1 false), !noalias !1903
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  store i64 %.sroa.0.0.copyload1.i.i.i, ptr %i.a, align 8, !alias.scope !1902, !noalias !1903
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgEBJ_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.a) #43
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgEEB15_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgEEB15_.exit: ; preds = %.backedge.i.i.i, %bb.a, %bb.d
  %i.ah = phi i1 [ true, %bb.d ], [ false, %bb.a ], [ false, %.backedge.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.ah
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18validate_conflicts(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [14 x i8], align 2                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [96 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [56 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [96 x i8], align 8                ; 15 uses
  %i.o = alloca [56 x i8], align 8                ; 11 uses
  %i.p = alloca [24 x i8], align 8                ; 11 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [14 x i8], align 2               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 9 uses
  %i.ac = alloca [16 x i8], align 16              ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2152)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !2153, !noalias !2154, !nonnull !11, !noundef !11 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !2153, !noalias !2154, !noundef !11 ; 2 uses
  %.idx.i = shl i64 %i.an, 4                      ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !2153, !noalias !2154, !nonnull !11, !noundef !11 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !2153, !noalias !2154, !noundef !11 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !2151, !noalias !2152, !nonnull !11, !align !17, !noundef !11 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2155)
  %i.av = icmp eq i64 %i.an, 0
  br i1 %i.av, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.aw = getelementptr i8, ptr %i.au, i64 136
  %.val.i.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !2155, !noalias !2156, !nonnull !11 ; 3 uses
  %i.ax = getelementptr i8, ptr %i.au, i64 144
  %.val1.i.i.i.i.i.i = load i64, ptr %i.ax, align 8, !alias.scope !2155, !noalias !2156
  %.val1.i.i.i.fr.i.i.i = freeze i64 %.val1.i.i.i.i.i.i ; 2 uses
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %.val1.i.i.i.fr.i.i.i, 600
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i ; 2 uses
  %i.az = icmp eq i64 %.val1.i.i.i.fr.i.i.i, 0
  %i.ba = and i64 %i.as, 2305843009213693951
  %i.bb = add i64 %.idx.i, -16
  %i.bc = lshr exact i64 %i.bb, 4
  %.not38.i = icmp samesign ugt i64 %i.ba, %i.bc  ; 2 uses
  br i1 %i.az, label %.lr.ph.split.us.i.i.preheader.i, label %.lr.ph.split.i.i.preheader.i

.lr.ph.split.i.i.preheader.i:                     ; preds = %.lr.ph.i.i.i
  br i1 %.not38.i, label %.lr.ph.split.i.i.i, label %.split.us.i.i.i, !prof !16

.lr.ph.split.us.i.i.preheader.i:                  ; preds = %.lr.ph.i.i.i
  br i1 %.not38.i, label %.lr.ph.i.lr.ph, label %.split.us.i.i.i, !prof !16

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.preheader.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB12_6parser7matches11matched_arg10MatchedArgEjjNCINvNvXs1_NtB6_6filterINtB2K_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtB1M_9validatorNtB48_9Validator18validate_exclusive0E0NCINvXsK_NtB3h_5accumjNtB5a_3Sum3sumINtB4_3MapINtNtB10_8flat_map4IterBW_B1G_EB2z_EE0E0B12_.exit.i.i.i
  %i.bd = phi ptr [ %i.bg, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB12_6parser7matches11matched_arg10MatchedArgEjjNCINvNvXs1_NtB6_6filterINtB2K_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtB1M_9validatorNtB48_9Validator18validate_exclusive0E0NCINvXsK_NtB3h_5accumjNtB5a_3Sum3sumINtB4_3MapINtNtB10_8flat_map4IterBW_B1G_EB2z_EE0E0B12_.exit.i.i.i ], [ %i.aq, %.lr.ph.split.i.i.preheader.i ] ; 2 uses
  %.sroa.0.015.i.i.i = phi i64 [ %i.bs, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB12_6parser7matches11matched_arg10MatchedArgEjjNCINvNvXs1_NtB6_6filterINtB2K_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtB1M_9validatorNtB48_9Validator18validate_exclusive0E0NCINvXsK_NtB3h_5accumjNtB5a_3Sum3sumINtB4_3MapINtNtB10_8flat_map4IterBW_B1G_EB2z_EE0E0B12_.exit.i.i.i ], [ 0, %.lr.ph.split.i.i.preheader.i ]
  %i.be = phi ptr [ %i.bf, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB12_6parser7matches11matched_arg10MatchedArgEjjNCINvNvXs1_NtB6_6filterINtB2K_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtB1M_9validatorNtB48_9Validator18validate_exclusive0E0NCINvXsK_NtB3h_5accumjNtB5a_3Sum3sumINtB4_3MapINtNtB10_8flat_map4IterBW_B1G_EB2z_EE0E0B12_.exit.i.i.i ], [ %i.al, %.lr.ph.split.i.i.preheader.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %.val8.i.i.i = load ptr, ptr %i.be, align 8, !noalias !2157
  %i.bh = getelementptr i8, ptr %i.be, i64 8
  %.val9.i.i.i = load i64, ptr %i.bh, align 8, !noalias !2157 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bd, i64 97
  %.val10.i.i.i = load i8, ptr %i.bi, align 1, !range !39, !alias.scope !2158, !noalias !2159, !noundef !11
  %cond.i.i.i.i.i.i.i = icmp eq i8 %.val10.i.i.i, 0
  br i1 %cond.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB12_6parser7matches11matched_arg10MatchedArgEjjNCINvNvXs1_NtB6_6filterINtB2K_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtB1M_9validatorNtB48_9Validator18validate_exclusive0E0NCINvXsK_NtB3h_5accumjNtB5a_3Sum3sumINtB4_3MapINtNtB10_8flat_map4IterBW_B1G_EB2z_EE0E0B12_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.split.us.i.i.i:                                  ; preds = %.lr.ph.split.us.i.i.preheader.i, %.lr.ph.split.i.i.preheader.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #44, !noalias !2160
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i
  %i.bj = phi ptr [ %i.bk, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %.lr.ph.split.i.i.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 600 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 544
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !2161, !noundef !11
  %i.bn = icmp eq i64 %i.bm, %.val9.i.i.i
  br i1 %i.bn, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 536
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !2161, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.bp, ptr nonnull readonly %.val8.i.i.i, i64 %.val9.i.i.i), !noalias !2161
  %i.bq = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bq, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB12_6parser7matches11matched_arg10MatchedArgEjjNCINvNvXs1_NtB6_6filterINtB2K_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtB1M_9validatorNtB48_9Validator18validate_exclusive0E0NCINvXsK_NtB3h_5accumjNtB5a_3Sum3sumINtB4_3MapINtNtB10_8flat_map4IterBW_B1G_EB2z_EE0E0B12_.exit.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.br = icmp eq ptr %i.bk, %i.ay
  br i1 %i.br, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB12_6parser7matches11matched_arg10MatchedArgEjjNCINvNvXs1_NtB6_6filterINtB2K_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtB1M_9validatorNtB48_9Validator18validate_exclusive0E0NCINvXsK_NtB3h_5accumjNtB5a_3Sum3sumINtB4_3MapINtNtB10_8flat_map4IterBW_B1G_EB2z_EE0E0B12_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB12_6parser7matches11matched_arg10MatchedArgEjjNCINvNvXs1_NtB6_6filterINtB2K_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtB1M_9validatorNtB48_9Validator18validate_exclusive0E0NCINvXsK_NtB3h_5accumjNtB5a_3Sum3sumINtB4_3MapINtNtB10_8flat_map4IterBW_B1G_EB2z_EE0E0B12_.exit.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.split.i.i.i ], [ 1, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i ], [ 0, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i ]
  %i.bs = add i64 %.sroa.0.0.i.i.i.i.i.i, %.sroa.0.015.i.i.i ; 2 uses
  %i.bt = icmp eq ptr %i.bf, %i.ao
  br i1 %i.bt, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator18validate_exclusive0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i, label %.lr.ph.split.i.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator18validate_exclusive0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB12_6parser7matches11matched_arg10MatchedArgEjjNCINvNvXs1_NtB6_6filterINtB2K_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtB1M_9validatorNtB48_9Validator18validate_exclusive0E0NCINvXsK_NtB3h_5accumjNtB5a_3Sum3sumINtB4_3MapINtNtB10_8flat_map4IterBW_B1G_EB2z_EE0E0B12_.exit.i.i.i
  %i.bu = icmp ult i64 %i.bs, 2
  br i1 %i.bu, label %.lr.ph.i.lr.ph, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator18validate_exclusive0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowRNtNtNtB1d_7builder3arg3ArgENCNvMNtB1X_9validatorNtB3V_9Validator18validate_exclusives_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B3o_NCB3S_s0_0E0E0B1d_.exit.i.i
  %i.bv = phi ptr [ %i.by, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowRNtNtNtB1d_7builder3arg3ArgENCNvMNtB1X_9validatorNtB3V_9Validator18validate_exclusives_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B3o_NCB3S_s0_0E0E0B1d_.exit.i.i ], [ %i.aq, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator18validate_exclusive0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i ] ; 2 uses
  %i.bw = phi ptr [ %i.bx, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowRNtNtNtB1d_7builder3arg3ArgENCNvMNtB1X_9validatorNtB3V_9Validator18validate_exclusives_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B3o_NCB3S_s0_0E0E0B1d_.exit.i.i ], [ %i.al, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator18validate_exclusive0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2163)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 97
  %i.ca = load i8, ptr %i.bz, align 1, !range !39, !alias.scope !2164, !noalias !2165, !noundef !11
  %cond.i.i.not.i.i.i = icmp eq i8 %i.ca, 0
  br i1 %cond.i.i.not.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowRNtNtNtB1d_7builder3arg3ArgENCNvMNtB1X_9validatorNtB3V_9Validator18validate_exclusives_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B3o_NCB3S_s0_0E0E0B1d_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.preheader.i:                   ; preds = %.lr.ph.i.i
  %.val5.i.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !2162, !noalias !2166
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.val6.i.i.i = load i64, ptr %i.cb, align 8, !alias.scope !2162, !noalias !2166 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.i
  %i.cc = phi ptr [ %i.cd, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 600 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 544
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !2167, !noundef !11
  %i.cg = icmp eq i64 %i.cf, %.val6.i.i.i
  br i1 %i.cg, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 536
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !2167, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ci, ptr nonnull readonly %.val5.i.i.i, i64 %.val6.i.i.i), !noalias !2167
  %i.cj = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.cj, label %bb.b, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.ck = icmp eq ptr %i.cd, %i.ay
  br i1 %i.ck, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowRNtNtNtB1d_7builder3arg3ArgENCNvMNtB1X_9validatorNtB3V_9Validator18validate_exclusives_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B3o_NCB3S_s0_0E0E0B1d_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.b:                                             ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 592
  %i.cm = load i32, ptr %i.cl, align 8, !alias.scope !2168, !noalias !2169, !noundef !11
  %i.cn = and i32 %i.cm, 16384
  %.not.i.i.i.i.i.i.not.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i.i.i.i.i.not.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowRNtNtNtB1d_7builder3arg3ArgENCNvMNtB1X_9validatorNtB3V_9Validator18validate_exclusives_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B3o_NCB3S_s0_0E0E0B1d_.exit.i.i, label %_RINvYINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB24_8adapters6filter15filter_try_foldTRBV_RB18_EuINtNtNtB26_3ops12control_flow11ControlFlowRNtNtNtBa_7builder3arg3ArgENCNvMNtB1e_9validatorNtB5b_9Validator18validate_exclusives_0NCINvNvB1Y_8find_map5checkB3N_B4F_NCB58_s0_0E0E0B3Z_EBa_.exit.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowRNtNtNtB1d_7builder3arg3ArgENCNvMNtB1X_9validatorNtB3V_9Validator18validate_exclusives_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B3o_NCB3S_s0_0E0E0B1d_.exit.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i, %bb.b, %.lr.ph.i.i
  %i.co = icmp eq ptr %i.bx, %i.ao
  br i1 %i.co, label %.lr.ph.i.lr.ph, label %.lr.ph.i.i

_RINvYINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB24_8adapters6filter15filter_try_foldTRBV_RB18_EuINtNtNtB26_3ops12control_flow11ControlFlowRNtNtNtBa_7builder3arg3ArgENCNvMNtB1e_9validatorNtB5b_9Validator18validate_exclusives_0NCINvNvB1Y_8find_map5checkB3N_B4F_NCB58_s0_0E0E0B3Z_EBa_.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2171
  store i64 0, ptr %i.ae, align 8, !noalias !2171
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !2171
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !2171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2171
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 1610612768, ptr %i.cp, align 8, !noalias !2171
  store ptr %i.ae, ptr %i.ad, align 8, !noalias !2171
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @204, ptr %i.cq, align 8, !noalias !2171
  %i.cr = call noundef zeroext i1 @_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %i.cc, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad) #43, !noalias !2172
  br i1 %i.cr, label %bb.c, label %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i.i, !prof !19

bb.c:                                             ; preds = %_RINvYINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB24_8adapters6filter15filter_try_foldTRBV_RB18_EuINtNtNtB26_3ops12control_flow11ControlFlowRNtNtNtBa_7builder3arg3ArgENCNvMNtB1e_9validatorNtB5b_9Validator18validate_exclusives_0NCINvNvB1Y_8find_map5checkB3N_B4F_NCB58_s0_0E0E0B3Z_EBa_.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @356, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @358) #44, !noalias !2171
  unreachable

_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i.i: ; preds = %_RINvYINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB24_8adapters6filter15filter_try_foldTRBV_RB18_EuINtNtNtB26_3ops12control_flow11ControlFlowRNtNtNtBa_7builder3arg3ArgENCNvMNtB1e_9validatorNtB5b_9Validator18validate_exclusives_0NCINvNvB1Y_8find_map5checkB3N_B4F_NCB58_s0_0E0E0B3Z_EBa_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !2173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2170
  store i64 0, ptr %i.ah, align 8, !noalias !2170
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cs, align 8, !noalias !2170
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 0, ptr %i.ct, align 8, !noalias !2170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2170
  call void @llvm.experimental.noalias.scope.decl(metadata !2174)
  call void @llvm.experimental.noalias.scope.decl(metadata !2175)
  call void @llvm.experimental.noalias.scope.decl(metadata !2176)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.au, i64 232
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !2177, !noalias !2178, !nonnull !11, !noundef !11 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.au, i64 240
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !2177, !noalias !2178, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %i.cx, 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx
  %i.cz = icmp eq i64 %i.cx, 0
  br i1 %i.cz, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18validate_exclusive.exit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i276, i64 16 ; 2 uses
  %i.db = add i64 %.sroa.8.0.i.i.i.i.i275, 1
  %i.dc = icmp eq ptr %i.da, %i.cy
  br i1 %i.dc, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18validate_exclusive.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i.i, %bb.d
  %.sroa.0.01.i.i.i.i.i276 = phi ptr [ %i.da, %bb.d ], [ %i.cv, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i.i ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i275 = phi i64 [ %i.db, %bb.d ], [ 0, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i.i ] ; 4 uses
  %.val.i.i.i.i7.i = load i128, ptr %.sroa.0.01.i.i.i.i.i276, align 8, !noalias !2179
  %i.dd = icmp eq i128 %.val.i.i.i.i7.i, -100310019091698447603793328749864812255
  br i1 %i.dd, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph
  %i.de = getelementptr inbounds nuw i8, ptr %i.au, i64 264
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !2177, !noalias !2178, !noundef !11 ; 2 uses
  %i.dg = icmp ult i64 %.sroa.8.0.i.i.i.i.i275, %i.df
  br i1 %i.dg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i.i.i275, i64 noundef %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !2179
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.dh = getelementptr inbounds nuw i8, ptr %i.au, i64 256
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !2177, !noalias !2178, !nonnull !11, !noundef !11
  %i.dj = getelementptr inbounds nuw [32 x i8], ptr %i.di, i64 %.sroa.8.0.i.i.i.i.i275 ; 2 uses
  %.val5.i.i.i.i = load ptr, ptr %i.dj, align 8, !noalias !2180, !nonnull !11, !noundef !11
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  %.val6.i.i.i.i = load ptr, ptr %i.dk, align 8, !noalias !2180, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !range !18, !invariant.load !11, !noalias !2180
  %i.dn = add nsw i64 %i.dm, -1
  %i.do = and i64 %i.dn, -16
  %i.dp = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2180
  %i.dr = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !invariant.load !11, !noalias !2180, !nonnull !11
  call void %i.ds(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ac, ptr noundef nonnull %i.dq) #45, !noalias !2180, !inline_history !1978
  %i.dt = load i128, ptr %i.ac, align 16, !noalias !2180, !noundef !11
  %.not.i.i.i.i = icmp eq i128 %i.dt, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2180
  br i1 %.not.i.i.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18validate_exclusive.exit, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !2180
  unreachable

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18validate_exclusive.exit: ; preds = %bb.d, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i.i, %bb.g
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.dq, %bb.g ], [ null, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i.i ], [ null, %bb.d ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  %..i.i.i = select i1 %.not.i.i.i, ptr @99, ptr %.sroa.0.0.i.i.i.i ; 5 uses
  store ptr %i.au, ptr %i.af, align 8, !alias.scope !2181, !noalias !2182
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %..i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2181, !noalias !2182
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2181, !noalias !2182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2183
  store i64 0, ptr %i.ab, align 8, !alias.scope !2184, !noalias !2183
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2184, !noalias !2183
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2184, !noalias !2183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2183
  %i.du = getelementptr inbounds nuw i8, ptr %..i.i.i, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.aa, ptr noundef nonnull align 2 dereferenceable(14) %i.du, i64 14, i1 false), !noalias !2185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2183
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.du, align 2, !noalias !2185
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %..i.i.i, i64 32
  %.sroa.7.0.copyload.i.i.i = load i8, ptr %.sroa.7.0..sroa_idx.i.i.i, align 2, !noalias !2185
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %..i.i.i, i64 36
  %.sroa.11.0.copyload.i.i.i = load i8, ptr %.sroa.11.0..sroa_idx.i.i.i, align 2, !noalias !2185
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %..i.i.i, i64 40
  %.sroa.15.0.copyload.i.i.i = load i16, ptr %.sroa.15.0..sroa_idx.i.i.i, align 2, !noalias !2185
  %.not.i.i1.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i, -1
  %.not5.i.i.i.i = icmp eq i8 %.sroa.7.0.copyload.i.i.i, -1
  %or.cond.i.i.i = select i1 %.not.i.i1.i.i, i1 %.not5.i.i.i.i, i1 false
  %.not7.i.i.i.i = icmp eq i8 %.sroa.11.0.copyload.i.i.i, -1
  %or.cond35.i.i.i = select i1 %or.cond.i.i.i, i1 %.not7.i.i.i.i, i1 false
  %i.dv = icmp eq i16 %.sroa.15.0.copyload.i.i.i, 0
  %or.cond36.i.i.i = select i1 %or.cond35.i.i.i, i1 %i.dv, i1 false ; 2 uses
  %spec.select.i.i.i = select i1 %or.cond36.i.i.i, ptr inttoptr (i64 1 to ptr), ptr @139
  %spec.select38.i.i.i = select i1 %or.cond36.i.i.i, i64 0, i64 4
  store ptr %spec.select.i.i.i, ptr %i.z, align 8, !noalias !2183, !captures !22
  %i.dw = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %spec.select38.i.i.i, ptr %i.dw, align 8, !noalias !2183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2183
  store ptr %i.aa, ptr %i.y, align 8, !noalias !2183
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXs8_NtCscy4Zx2DW6cp_7anstyle5styleNtB5_12StyleDisplayNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !noalias !2183
  %i.dx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.z, ptr %i.dx, align 8, !noalias !2183
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !2183
  %i.dy = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @140, ptr noundef nonnull %i.y) #43, !noalias !2185, !inline_history !23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2183
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage20write_usage_no_title(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af, ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8trim_end(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #43, !noalias !2186, !inline_history !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !2187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2183
  %i.dz = call fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error17argument_conflictB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.au, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.ag) #43, !noalias !2188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2170
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
  br i1 %i.ei, label %bb.i, label %bb.j, !prof !19

bb.i:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #44, !noalias !2189
  unreachable

bb.j:                                             ; preds = %.lr.ph.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2191)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 97
  %i.el = load i8, ptr %i.ek, align 1, !range !39, !alias.scope !2192, !noalias !2193, !noundef !11
  %cond.i.i.not.i.i = icmp eq i8 %i.el, 0
  br i1 %cond.i.i.not.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMNtB1X_9validatorNtB3y_9Validator18validate_conflicts0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3v_s_0E0E0B1d_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2194)
  %.val.i.i.i.i.i = load ptr, ptr %i.eb, align 8, !noalias !2195, !nonnull !11, !noundef !11 ; 2 uses
  %.val1.i.i.i.i.i = load i64, ptr %i.ec, align 8, !noalias !2195, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2196)
  %.idx.i.i.i.i.i.i16 = mul nuw nsw i64 %.val1.i.i.i.i.i, 600
  %i.em = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i16
  %i.en = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.en, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMNtB1X_9validatorNtB3y_9Validator18validate_conflicts0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3v_s_0E0E0B1d_.exit.i, label %.lr.ph.i.i.i.i.i.i.i17

.lr.ph.i.i.i.i.i.i.i17:                           ; preds = %bb.k
  %i.eo = getelementptr i8, ptr %i.eg, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !2197, !noalias !2198, !noundef !11 ; 3 uses
  %i.eq = load ptr, ptr %i.eg, align 8, !alias.scope !2197, !noalias !2199 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i18, %.lr.ph.i.i.i.i.i.i.i17
  %i.er = phi ptr [ %.val.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i17 ], [ %i.es, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i18 ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 600 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 544
  %i.eu = load i64, ptr %i.et, align 8, !noalias !2200, !noundef !11
  %i.ev = icmp eq i64 %i.eu, %i.ep
  br i1 %i.ev, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i19, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i18

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i19: ; preds = %bb.l
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 536
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !2200, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i.i.i.i20 = tail call i32 @bcmp(ptr nonnull %i.ex, ptr nonnull %i.eq, i64 %i.ep), !noalias !2200
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
  %i.fc = load ptr, ptr %i.at, align 8, !nonnull !11, !align !17, !noundef !11
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Conflicts16gather_conflicts(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.fc, ptr %i.eq, i64 %i.ep) #43
  %i.fd = load ptr, ptr %i.ed, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.fe = load i64, ptr %i.ee, align 8, !noundef !11 ; 2 uses
  %.val14 = load ptr, ptr %i.eg, align 8
  %.val15 = load i64, ptr %i.fb, align 8          ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2202)
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18build_conflict_err.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.fd, i64 %i.fe
  %i.fh = load ptr, ptr %i.at, align 8, !alias.scope !2201, !noalias !2203, !nonnull !11, !align !17, !noundef !11 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2204
  store i64 0, ptr %i.u, align 8, !noalias !2204
  %.sroa.4.0..sroa_idx.i.i21 = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i21, align 8, !noalias !2204
  %.sroa.5.0..sroa_idx.i.i22 = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i22, align 8, !noalias !2204
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.1.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i) ]
  %i.fm = icmp eq ptr %.sroa.7.1.i.i, %.sroa.13.1.i.i
  br i1 %i.fm, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.fn = icmp eq i64 %.sroa.10.1.i.i, 0
  br i1 %i.fn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fo = shl nuw i64 %.sroa.10.1.i.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.1.i.i, i64 noundef %i.fo, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !2205
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.o
  %i.fp = icmp eq ptr %.sroa.23.1.i.i, %i.fg
  br i1 %i.fp, label %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1p_8adapters7flatten7FlatMapINtNtNtB1r_5slice4iter4IterB14_EINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_ENCNvMNtNtBa_6parser9validatorNtB4k_9Validator18build_conflict_err0EEBa_.exit.i, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEEB1R_.exit.i.i.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.23.1.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2206
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2207)
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.fi, align 8, !noalias !2208, !nonnull !11, !noundef !11 ; 2 uses
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.fj, align 8, !noalias !2208, !noundef !11 ; 2 uses
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %.sroa.23.1.i.i, align 8, !alias.scope !2209, !noalias !2210 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.23.1.i.i, i64 8
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.fr, align 8, !alias.scope !2209, !noalias !2210 ; 3 uses
  %.idx.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.val1.i.i.i.i.i.i.i, 96
  %i.fs = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i
  %i.ft = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.ft, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.s, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i.i.i.i.i
  %i.fu = phi ptr [ %i.fv, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i, %bb.s ] ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 96 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 80
  %i.fx = load i64, ptr %i.fw, align 8, !noalias !2211, !noundef !11
  %i.fy = icmp eq i64 %i.fx, %.val3.i.i.i.i.i.i.i
  br i1 %i.fy, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i.i.i.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 72
  %i.ga = load ptr, ptr %i.fz, align 8, !noalias !2211, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ga, ptr nonnull readonly %.val2.i.i.i.i.i.i.i, i64 %.val3.i.i.i.i.i.i.i), !noalias !2211
  %i.gb = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gb, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.gc = icmp eq ptr %i.fv, %i.fs
  br i1 %i.gc, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i.i.i.i.i, %bb.s
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !2208
  %i.gd = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #43, !noalias !2208 ; 4 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.t, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread29.i.i.i.i, !prof !33

bb.t:                                             ; preds = %.loopexit.i.i.i.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #46, !noalias !2208
  unreachable

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB1K_6parser9validatorNtB2t_9Validator18build_conflict_err0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread29.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i
  store ptr %.val2.i.i.i.i.i.i.i, ptr %i.gd, align 8, !noalias !2208
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
end_hunk_3
begin_hunk_4_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser12add_defaults:bb.a

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i, %bb.k
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.bt, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.k ], [ %i.bq, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 2 uses
  %i.bv = icmp samesign ule i64 %i.bq, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp eq i64 %i.bq, 0
  br i1 %i.bw, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB3B_6parser6parserNtB4w_6Parser17add_default_values_0EE9from_iterB3B_.exit.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser17add_default_values_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i
  %i.bx = phi i64 [ %i.cf, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser17add_default_values_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i ], [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ] ; 3 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bx ; 2 uses
  %.val11.i.i.i.i.i.i.i = load ptr, ptr %i.by, align 8, !alias.scope !8071, !noalias !8072, !nonnull !11, !noundef !11
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %.val12.i.i.i.i.i.i.i = load i64, ptr %i.bz, align 8, !alias.scope !8071, !noalias !8072, !noundef !11 ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %.val12.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m, !prof !21

bb.m:                                             ; preds = %.preheader.i.i.i.i
  %i.ca = icmp eq i64 %.val12.i.i.i.i.i.i.i, 0
  br i1 %i.ca, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser17add_default_values_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.m
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !8073
  %i.cb = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val12.i.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #43, !noalias !8073 ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i, i64 %.val12.i.i.i.i.i.i.i) #46, !noalias !8074
  unreachable

bb.o:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr nonnull readonly align 1 %.val11.i.i.i.i.i.i.i, i64 %.val12.i.i.i.i.i.i.i, i1 false), !noalias !8074
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser17add_default_values_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser17add_default_values_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.m
  %i.cd = phi ptr [ %i.cb, %bb.o ], [ inttoptr (i64 1 to ptr), %bb.m ]
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.bx ; 3 uses
  store i64 %.val12.i.i.i.i.i.i.i, ptr %i.ce, align 8, !noalias !8075
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.cd, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !8075
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store i64 %.val12.i.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !8075
  %i.cf = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.bq
  br i1 %i.cg, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB3B_6parser6parserNtB4w_6Parser17add_default_values_0EE9from_iterB3B_.exit.i, label %.preheader.i.i.i.i

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB3B_6parser6parserNtB4w_6Parser17add_default_values_0EE9from_iterB3B_.exit.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNCNvMs_NtNtB11_6parser6parserNtB2E_6Parser17add_default_values_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i
  store i64 %.sroa.4.0.i.i.i, ptr %i.d, align 8, !alias.scope !8068, !noalias !8064
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i27.i, align 8, !alias.scope !8068, !noalias !8064
  store i64 %i.bq, ptr %.sroa.5.0..sroa_idx.i28.i, align 8, !alias.scope !8068, !noalias !8064
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser5react(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull align 8 %0, i8 noundef -1, i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %.sroa.03.027, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, i64 noundef 0, i64 undef, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) #43
  %i.ch = load i64, ptr %i.c, align 8, !range !58, !noalias !8064, !noundef !11
  %i.ci = icmp eq i64 %i.ch, -1
  br i1 %i.ci, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB3B_6parser6parserNtB4w_6Parser17add_default_values_0EE9from_iterB3B_.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !8064, !nonnull !11, !align !17, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8064
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser17add_default_value.exit

bb.q:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB3B_6parser6parserNtB4w_6Parser17add_default_values_0EE9from_iterB3B_.exit.i
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser6parser11ParseResultEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.c) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8064
  br label %.loopexit

bb.r:                                             ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher8contains.exit.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.03.027, i64 536
  %.val11.i = load ptr, ptr %i.k, align 8, !alias.scope !8063, !noalias !8062, !nonnull !11, !noundef !11 ; 2 uses
  %.val12.i = load i64, ptr %i.l, align 8, !alias.scope !8063, !noalias !8062, !noundef !11 ; 2 uses
  %.val13.i = load ptr, ptr %i.cl, align 8, !alias.scope !8062, !noalias !8063 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.03.027, i64 544
  %.val14.i = load i64, ptr %i.cm, align 8, !alias.scope !8062, !noalias !8063 ; 2 uses
  %.idx.i.i29.i = shl nuw nsw i64 %.val12.i, 4
  %i.cn = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %.idx.i.i29.i
  %.not.i.i30.i = icmp eq i64 %.val12.i, 0
  br i1 %.not.i.i30.i, label %.loopexit.i, label %.lr.ph.i.i31.i

.lr.ph.i.i31.i:                                   ; preds = %bb.r, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i34.i
  %.sroa.03.04.i.i32.i = phi ptr [ %i.cr, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i34.i ], [ %.val11.i, %bb.r ] ; 3 uses
  %i.co = getelementptr i8, ptr %.sroa.03.04.i.i32.i, i64 8
  %.val5.i.i33.i = load i64, ptr %i.co, align 8, !noalias !8064, !noundef !11
  %i.cp = icmp eq i64 %.val5.i.i33.i, %.val14.i
  br i1 %i.cp, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i37.i, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i34.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i37.i: ; preds = %.lr.ph.i.i31.i
  %.val.i.i38.i = load ptr, ptr %.sroa.03.04.i.i32.i, align 8, !noalias !8064, !nonnull !11, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %bcmp.i.i.i.i39.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i38.i, ptr nonnull readonly %.val13.i, i64 %.val14.i), !noalias !8064
  %i.cq = icmp eq i32 %bcmp.i.i.i.i39.i, 0
  br i1 %i.cq, label %.loopexit, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i34.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i34.i: ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i37.i, %.lr.ph.i.i31.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.03.04.i.i32.i, i64 16 ; 2 uses
  %.not6.i.i35.i = icmp eq ptr %i.cr, %i.cn
  br i1 %.not6.i.i35.i, label %.loopexit.i, label %.lr.ph.i.i31.i

.loopexit.i:                                      ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread.i.i34.i, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8064
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.03.027, i64 376
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !8062, !noalias !8063, !nonnull !11, !noundef !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8076)
  %or.cond.i.i.i41.i = icmp samesign ugt i64 %i.aa, 384307168202282325
  br i1 %or.cond.i.i.i41.i, label %bb.s, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i42.i, !prof !21

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i42.i: ; preds = %.loopexit.i
  %i.cu = mul nuw nsw i64 %i.aa, 24               ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !8077
  %i.cv = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.cu, i64 noundef range(i64 1, 9) 8) #43, !noalias !8077 ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.s, label %.preheader.i.i.i46.i

bb.s:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i42.i, %.loopexit.i
  %.sroa.10.0.ph.i.i57.i = phi i64 [ %i.cu, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i42.i ], [ undef, %.loopexit.i ]
  %.sroa.4.0.ph.i.i58.i = phi i64 [ 8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i42.i ], [ 0, %.loopexit.i ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i58.i, i64 %.sroa.10.0.ph.i.i57.i) #46, !noalias !8078
  unreachable

.preheader.i.i.i46.i:                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i42.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNvMBX_BV_12to_os_stringNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB40_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i
  %i.cx = phi i64 [ %i.df, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNvMBX_BV_12to_os_stringNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB40_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i ], [ 0, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i42.i ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cx ; 2 uses
  %.val11.i.i.i.i.i.i47.i = load ptr, ptr %i.cy, align 8, !alias.scope !8079, !noalias !8080, !nonnull !11, !noundef !11
  %i.cz = getelementptr i8, ptr %i.cy, i64 8
  %.val12.i.i.i.i.i.i48.i = load i64, ptr %i.cz, align 8, !alias.scope !8079, !noalias !8080, !noundef !11 ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i.i49.i = icmp slt i64 %.val12.i.i.i.i.i.i48.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i49.i, label %bb.u, label %bb.t, !prof !21

bb.t:                                             ; preds = %.preheader.i.i.i46.i
  %i.da = icmp eq i64 %.val12.i.i.i.i.i.i48.i, 0
  br i1 %i.da, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNvMBX_BV_12to_os_stringNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB40_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i50.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i50.i: ; preds = %bb.t
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !8081
  %i.db = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val12.i.i.i.i.i.i48.i, i64 noundef range(i64 1, 9) 1) #43, !noalias !8081 ; 3 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i50.i, %.preheader.i.i.i46.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i56.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i50.i ], [ 0, %.preheader.i.i.i46.i ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i56.i, i64 %.val12.i.i.i.i.i.i48.i) #46, !noalias !8082
  unreachable

bb.v:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i50.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.db, ptr nonnull readonly align 1 %.val11.i.i.i.i.i.i47.i, i64 %.val12.i.i.i.i.i.i48.i, i1 false), !noalias !8082
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNvMBX_BV_12to_os_stringNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB40_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNvMBX_BV_12to_os_stringNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB40_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i: ; preds = %bb.v, %bb.t
  %i.dd = phi ptr [ %i.db, %bb.v ], [ inttoptr (i64 1 to ptr), %bb.t ]
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.cx ; 3 uses
  store i64 %.val12.i.i.i.i.i.i48.i, ptr %i.de, align 8, !noalias !8083
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i51.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.dd, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i51.i, align 8, !noalias !8083
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i52.i = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i64 %.val12.i.i.i.i.i.i48.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i52.i, align 8, !noalias !8083
  %i.df = add nuw nsw i64 %i.cx, 1                ; 2 uses
  %i.dg = icmp eq i64 %i.df, %i.aa
  br i1 %i.dg, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENvMB3x_B3v_12to_os_stringEE9from_iterB3B_.exit.i, label %.preheader.i.i.i46.i

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENvMB3x_B3v_12to_os_stringEE9from_iterB3B_.exit.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringuNvMBX_BV_12to_os_stringNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1O_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB40_3VecB1O_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2x_EE0E0E0B11_.exit.i.i.i.i.i.i.i
  store i64 %i.aa, ptr %i.b, align 8, !alias.scope !8076, !noalias !8064
  store ptr %i.cv, ptr %.sroa.4.0..sroa_idx.i54.i, align 8, !alias.scope !8076, !noalias !8064
  store i64 %i.aa, ptr %.sroa.5.0..sroa_idx.i55.i, align 8, !alias.scope !8076, !noalias !8064
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser5react(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noundef nonnull align 8 %0, i8 noundef -1, i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %.sroa.03.027, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 0, i64 undef, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1) #43
  %i.dh = load i64, ptr %i.a, align 8, !range !58, !noalias !8064, !noundef !11
  %i.di = icmp eq i64 %i.dh, -1
  br i1 %i.di, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENvMB3x_B3v_12to_os_stringEE9from_iterB3B_.exit.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !8064, !nonnull !11, !align !17, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8064
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser17add_default_value.exit

bb.x:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENvMB3x_B3v_12to_os_stringEE9from_iterB3B_.exit.i
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser6parser11ParseResultEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.a) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8064
  br label %.loopexit

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser17add_default_value.exit: ; preds = %bb.p, %bb.w
  %.sroa.0.1.i = phi ptr [ %i.ck, %bb.p ], [ %i.dk, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit11

.loopexit:                                        ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.i.i37.i, %_RINvMsg_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtNtBc_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEIB1d_B29_EE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB2T_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB3F_3any5checkRB29_NCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5N_6Parser17add_default_value0E0E0B4z_EB5R_.exit.thread.i, %bb.q, %bb.x, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher8contains.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.03.027, i64 600 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.i
  br i1 %i.dm, label %.loopexit11, label %bb.b

.loopexit11:                                      ; preds = %.loopexit, %bb.a, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser17add_default_value.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.1.i, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser17add_default_value.exit ], [ null, %bb.a ], [ null, %.loopexit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15match_arg_error(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr nofree readonly captures(address) %.72.val, i64 %.80.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.47.i275 = alloca [31 x i8], align 1      ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 11 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [14 x i8], align 2                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [16 x i8], align 16               ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [14 x i8], align 2                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  %i.t = alloca [16 x i8], align 16               ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [4 x i8], align 4                 ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 10 uses
  %i.aa = alloca [8 x i8], align 8                ; 5 uses
  %i.ab = alloca [126 x i8], align 2              ; 36 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.9.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.9.i = alloca [16 x i8], align 8          ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 8 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [14 x i8], align 2               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 9 uses
  %i.al = alloca [16 x i8], align 16              ; 4 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [14 x i8], align 2               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 9 uses
  %i.aq = alloca [16 x i8], align 16              ; 4 uses
  %i.ar = alloca [16 x i8], align 16              ; 4 uses
  %i.as = alloca [32 x i8], align 8               ; 6 uses
  %i.at = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.418.i = alloca [31 x i8], align 1        ; 4 uses
  %.sroa.411.i = alloca [31 x i8], align 1        ; 4 uses
  %.sroa.47.i = alloca [31 x i8], align 1         ; 4 uses
  %i.au = alloca [120 x i8], align 8              ; 12 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [64 x i8], align 8               ; 11 uses
  %i.ax = alloca [24 x i8], align 8               ; 7 uses
  %i.ay = alloca [8 x i8], align 8                ; 4 uses
  %i.az = alloca [8 x i8], align 8                ; 4 uses
  %i.ba = alloca [8 x i8], align 8                ; 4 uses
  %i.bb = alloca [8 x i8], align 8                ; 4 uses
  %i.bc = alloca [32 x i8], align 8               ; 7 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [14 x i8], align 2               ; 4 uses
  %i.bf = alloca [24 x i8], align 8               ; 9 uses
  %i.bg = alloca [16 x i8], align 16              ; 4 uses
  %i.bh = alloca [24 x i8], align 8               ; 8 uses
  %i.bi = alloca [24 x i8], align 8               ; 6 uses
  %i.bj = alloca [24 x i8], align 8               ; 4 uses
  %i.bk = alloca [48 x i8], align 8               ; 4 uses
  %i.bl = alloca [24 x i8], align 8               ; 6 uses
  %i.bm = alloca [24 x i8], align 8               ; 6 uses
  %i.bn = alloca [24 x i8], align 8               ; 6 uses
  %i.bo = alloca [24 x i8], align 8               ; 4 uses
  %i.bp = alloca [24 x i8], align 8               ; 6 uses
  %i.bq = alloca [24 x i8], align 8               ; 6 uses
  %i.br = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.513 = alloca [16 x i8], align 8          ; 4 uses
  %i.bs = alloca [24 x i8], align 8               ; 7 uses
  %i.bt = alloca [24 x i8], align 8               ; 4 uses
  %i.bu = alloca [24 x i8], align 8               ; 6 uses
  %i.bv = alloca [24 x i8], align 8               ; 7 uses
  %i.bw = alloca [24 x i8], align 8               ; 6 uses
  %i.bx = alloca [24 x i8], align 8               ; 8 uses
  %i.by = alloca [24 x i8], align 8               ; 6 uses
  %i.bz = alloca [24 x i8], align 8               ; 4 uses
  %i.ca = alloca [24 x i8], align 8               ; 7 uses
  %i.cb = alloca [24 x i8], align 8               ; 6 uses
  %i.cc = alloca [24 x i8], align 8               ; 6 uses
  %i.cd = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.ce = alloca [24 x i8], align 8               ; 6 uses
  %i.cf = alloca [24 x i8], align 8               ; 7 uses
  %i.cg = alloca [24 x i8], align 8               ; 4 uses
  br i1 %3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 136
  %.val64 = load ptr, ptr %i.cj, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.ci, i64 144
  %.val65 = load i64, ptr %i.ck, align 8, !noundef !11 ; 2 uses
  %.idx.i = mul nuw nsw i64 %.val65, 600
  %i.cl = getelementptr inbounds nuw i8, ptr %.val64, i64 %.idx.i
  %i.cm = icmp eq i64 %.val65, 0
  br i1 %i.cm, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i
  %i.cn = phi ptr [ %i.co, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i ], [ %.val64, %bb.b ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 600 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 552
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !8341, !noundef !11
  %.not.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 584
  %i.cs = load i32, ptr %i.cr, align 8, !range !45, !noalias !8341, !noundef !11
  %.not1.i.i.i.i = icmp eq i32 %i.cs, -1
  br i1 %.not1.i.i.i.i, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.i.i, %.lr.ph.i.i
  %i.ct = icmp eq ptr %i.co, %i.cl
  br i1 %i.ct, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  call void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg8to_value(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) #43
  %i.cu = call fastcc { ptr, i64 } @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser19possible_subcommand(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.cg, i1 noundef zeroext %2) #43
  %i.cv = extractvalue { ptr, i64 } %i.cu, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  %.not34 = icmp eq ptr %i.cv, null
  br i1 %.not34, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread, label %bb.e

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.i.i
  %i.cw = tail call noundef zeroext i1 @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg7is_long(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) #43
  br i1 %i.cw, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit
  %i.cx = tail call noundef zeroext i1 @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg8is_short(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) #43
  br label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i, %bb.b, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit, %bb.c, %bb.d
  %.sroa.02.0 = phi i1 [ %i.cx, %bb.d ], [ true, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit ], [ false, %bb.c ], [ false, %bb.b ], [ false, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_.exit.thread.i.i ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !11, !align !17, !noundef !11 ; 4 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 192
  %.val66 = load i64, ptr %i.da, align 8, !noundef !11 ; 2 uses
  %i.db = icmp ult i64 %.val66, 12954174209065697
  tail call void @llvm.assume(i1 %i.db)
  %.not = icmp eq i64 %.val66, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !11, !align !17, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  call void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg7display(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ce, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) #43
  %i.de = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !11
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.dh = load i64, ptr %i.dg, align 8            ; 7 uses
  %.not.i = icmp slt i64 %i.dh, 0
  br i1 %.not.i, label %bb.db, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread204, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.f
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !8342
  %i.dj = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.dh, i64 noundef range(i64 1, 9) 1) #43, !noalias !8342 ; 3 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.db, label %bb.dq

bb.g:                                             ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread
  %i.dl = getelementptr i8, ptr %i.cz, i64 700
  %i.dm = load <2 x i32>, ptr %i.dl, align 4
  %i.dn = and <2 x i32> %i.dm, splat (i32 8192)
  %i.do = icmp ne <2 x i32> %i.dn, zeroinitializer ; 2 uses
  %i.dp = extractelement <2 x i1> %i.do, i64 0
  %i.dq = extractelement <2 x i1> %i.do, i64 1
  %.sroa.0.0.i = select i1 %i.dp, i1 true, i1 %i.dq
  %brmerge.demorgan = and i1 %2, %.sroa.0.0.i
  br i1 %brmerge.demorgan, label %bb.l, label %bb.j

bb.h:                                             ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread, %bb.be
  %i.dr = phi ptr [ %i.cz, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread ], [ %.pre266, %bb.be ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @_RNvMs1_Cs3RZUOUhPFQ6_8clap_lexNtB5_9ParsedArg7display(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) #43
  %i.ds = load i64, ptr %i.bl, align 8, !range !13, !noundef !11 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.du = load ptr, ptr %i.dt, align 8            ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.dw = load i64, ptr %i.dv, align 8            ; 7 uses
  %.not.i72 = icmp slt i64 %i.dw, 0
  br i1 %.not.i72, label %bb.bf, label %bb.i, !prof !21
end_hunk_4
begin_hunk_5_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
  %i.cct = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ccu = load i64, ptr %i.cct, align 8, !alias.scope !10892, !noalias !10893, !noundef !11 ; 18 uses
  %i.ccv = getelementptr inbounds nuw [104 x i8], ptr %i.ccs, i64 %i.ccu ; 14 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10894)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.97.i.i.i)
  %i.ccw = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 2 uses
  %.sroa.97.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  br label %bb.on

bb.on:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEE8push_mutBP_.exit.i.i.i, %bb.om
  %i.ccx = phi i64 [ 0, %bb.om ], [ %i.cdt, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEE8push_mutBP_.exit.i.i.i ]
  %.sroa.6.0.i.i.i = phi ptr [ %i.ccs, %bb.om ], [ %i.cdd, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEE8push_mutBP_.exit.i.i.i ]
  %.sroa.0.0.i.i.i10 = phi ptr [ %i.ccn, %bb.om ], [ %i.cdc, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEE8push_mutBP_.exit.i.i.i ]
  br label %bb.oo

bb.oo:                                            ; preds = %bb.or, %bb.on
  %i.ccy = phi ptr [ %i.cdd, %bb.or ], [ %.sroa.6.0.i.i.i, %bb.on ] ; 3 uses
  %i.ccz = phi ptr [ %i.cdc, %bb.or ], [ %.sroa.0.0.i.i.i10, %bb.on ] ; 4 uses
  %i.cda = icmp eq ptr %i.ccz, %i.ccq
  br i1 %i.cda, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Conflicts9with_args.exit.i, label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.cdb = icmp eq ptr %i.ccy, %i.ccv
  br i1 %i.cdb, label %bb.oq, label %bb.or, !prof !19

bb.oq:                                            ; preds = %bb.op
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #44, !noalias !10895
  unreachable

bb.or:                                            ; preds = %bb.op
  %i.cdc = getelementptr inbounds nuw i8, ptr %i.ccz, i64 16 ; 2 uses
  %i.cdd = getelementptr inbounds nuw i8, ptr %i.ccy, i64 104 ; 2 uses
  %i.cde = getelementptr inbounds nuw i8, ptr %i.ccy, i64 97
  %i.cdf = load i8, ptr %i.cde, align 1, !range !39, !alias.scope !10896, !noalias !10897, !noundef !11
  %cond.i.i.i.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cdf, 0
  br i1 %cond.i.i.i.not.i.i.i.i.i.i.i.i, label %bb.oo, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB1n_2id2IdNtNtNtNtB1p_6parser7matches11matched_arg10MatchedArgENCNvMs_NtB2u_9validatorNtB3m_9Conflicts9with_args0ENCB3h_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1p_.exit.i.i.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB1n_2id2IdNtNtNtNtB1p_6parser7matches11matched_arg10MatchedArgENCNvMs_NtB2u_9validatorNtB3m_9Conflicts9with_args0ENCB3h_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1p_.exit.i.i.i: ; preds = %bb.or
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !10898
  %.val3.i.i.i.i = load ptr, ptr %i.ccz, align 8, !noalias !10899 ; 3 uses
  %i.cdg = getelementptr i8, ptr %i.ccz, i64 8
  %.val4.i.i.i.i = load i64, ptr %i.cdg, align 8, !noalias !10899 ; 2 uses
  call fastcc void @_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator23gather_direct_conflicts(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ccw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.ccj, ptr %.val3.i.i.i.i, i64 %.val4.i.i.i.i) #43, !noalias !10900
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i.i.i) ]
  %.sroa.66.0.copyload.i.i.i = load i64, ptr %i.ccw, align 8, !noalias !10901 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.97.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.97.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !10902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !noalias !10898
  %.not.i.i.i11 = icmp eq i64 %.sroa.66.0.copyload.i.i.i, -1
  br i1 %.not.i.i.i11, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Conflicts9with_args.exit.i, label %bb.os

bb.os:                                            ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB1n_2id2IdNtNtNtNtB1p_6parser7matches11matched_arg10MatchedArgENCNvMs_NtB2u_9validatorNtB3m_9Conflicts9with_args0ENCB3h_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1p_.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10903)
  %i.cdh = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !10904, !noalias !10905, !noundef !11 ; 3 uses
  %i.cdi = load i64, ptr %i.ef, align 8, !range !12, !alias.scope !10904, !noalias !10905, !noundef !11
  %i.cdj = icmp eq i64 %i.cdh, %i.cdi
  br i1 %i.cdj, label %bb.ot, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i

bb.ot:                                            ; preds = %bb.os
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ef) #42, !noalias !10906
  %.pre.i.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !10907, !noalias !10908
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i: ; preds = %bb.ot, %bb.os
  %i.cdk = phi i64 [ %.pre.i.i, %bb.ot ], [ %i.ccx, %bb.os ] ; 3 uses
  %i.cdl = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !10904, !noalias !10905, !nonnull !11, !noundef !11
  %i.cdm = getelementptr inbounds nuw [16 x i8], ptr %i.cdl, i64 %i.cdh ; 2 uses
  store ptr %.val3.i.i.i.i, ptr %i.cdm, align 8, !noalias !10909
  %i.cdn = getelementptr inbounds nuw i8, ptr %i.cdm, i64 8
  store i64 %.val4.i.i.i.i, ptr %i.cdn, align 8, !noalias !10910
  %i.cdo = add i64 %i.cdh, 1
  store i64 %i.cdo, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !10904, !noalias !10905
  call void @llvm.experimental.noalias.scope.decl(metadata !10911)
  %i.cdp = load i64, ptr %i.ccl, align 8, !range !12, !alias.scope !10907, !noalias !10908, !noundef !11
  %i.cdq = icmp eq i64 %i.cdk, %i.cdp
  br i1 %i.cdq, label %bb.ou, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEE8push_mutBP_.exit.i.i.i

bb.ou:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEE8grow_oneB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ccl) #42, !noalias !10912
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEE8push_mutBP_.exit.i.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEE8push_mutBP_.exit.i.i.i: ; preds = %bb.ou, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i
  %i.cdr = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !10907, !noalias !10908, !nonnull !11, !noundef !11
  %i.cds = getelementptr inbounds nuw [24 x i8], ptr %i.cdr, i64 %i.cdk ; 2 uses
  store i64 %.sroa.66.0.copyload.i.i.i, ptr %i.cds, align 8, !noalias !10913
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cds, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.97.i.i.i, i64 16, i1 false), !noalias !10914
  %i.cdt = add i64 %i.cdk, 1                      ; 2 uses
  store i64 %i.cdt, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !10907, !noalias !10908
  br label %bb.on

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Conflicts9with_args.exit.i: ; preds = %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB1n_2id2IdNtNtNtNtB1p_6parser7matches11matched_arg10MatchedArgENCNvMs_NtB2u_9validatorNtB3m_9Conflicts9with_args0ENCB3h_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1p_.exit.i.i.i, %bb.oo
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.97.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ei, ptr noundef nonnull align 8 dereferenceable(48) %i.ef, i64 48, i1 false), !noalias !10915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !10891
  %i.cdu = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val27.i = load ptr, ptr %i.cdu, align 8, !alias.scope !10888, !noalias !10887, !align !17, !noundef !11
  %.not.i.i = icmp eq ptr %.val27.i, null
  br i1 %.not.i.i, label %bb.ov, label %bb.pc

bb.ov:                                            ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Conflicts9with_args.exit.i
  %i.cdv = load ptr, ptr %i.cck, align 8, !alias.scope !10887, !noalias !10888, !nonnull !11, !align !17, !noundef !11 ; 8 uses
  %i.cdw = getelementptr i8, ptr %i.cdv, i64 700
  %.val28.i = load i32, ptr %i.cdw, align 4, !noalias !10888, !noundef !11 ; 2 uses
  %i.cdx = getelementptr i8, ptr %i.cdv, i64 704
  %.val29.i = load i32, ptr %i.cdx, align 8, !noalias !10888 ; 2 uses
  %i.cdy = and i32 %.val28.i, 65536
  %.not.i30.i = icmp ne i32 %i.cdy, 0
  %i.cdz = and i32 %.val29.i, 65536
  %i.cea = icmp ne i32 %i.cdz, 0
  %.sroa.0.0.i31.i = select i1 %.not.i30.i, i1 true, i1 %i.cea
  br i1 %.sroa.0.0.i31.i, label %bb.ow, label %bb.pb

bb.ow:                                            ; preds = %bb.ov
  %i.ceb = icmp eq i64 %i.ccp, 0
  br i1 %i.ceb, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.thread.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.ow
  %i.cec = and i64 %i.ccu, 2305843009213693951
  %i.ced = add nsw i64 %.idx.i, -16               ; 2 uses
  %i.cee = lshr exact i64 %i.ced, 4               ; 2 uses
  %.not.i16 = icmp samesign ugt i64 %i.cec, %i.cee
  br i1 %.not.i16, label %.lr.ph.i.i.i.preheader, label %bb.ox, !prof !16

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.preheader.i
  %i.cef = add nuw nsw i64 %i.cee, 1              ; 2 uses
  %xtraiter5360 = and i64 %i.cef, 3               ; 3 uses
  %i.ceg = icmp ult i64 %i.ced, 48
  br i1 %i.ceg, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter5368 = and i64 %i.cef, 2305843009213693948
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %i.ceh = phi ptr [ %i.ccs, %.lr.ph.i.i.i.preheader.new ], [ %i.cer, %.lr.ph.i.i.i ] ; 5 uses
  %.sroa.0.012.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.ceu, %.lr.ph.i.i.i ]
  %niter5369 = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter5369.next.3, %.lr.ph.i.i.i ]
  %i.cei = getelementptr i8, ptr %i.ceh, i64 97
  %.val.i.i.i = load i8, ptr %i.cei, align 1, !range !39, !alias.scope !10916, !noalias !10917, !noundef !11
  %cond.i.i.i.i.i.i.i = icmp ne i8 %.val.i.i.i, 0
  %i.cej = zext i1 %cond.i.i.i.i.i.i.i to i64
  %i.cek = add i64 %.sroa.0.012.i.i.i, %i.cej
  %i.cel = getelementptr i8, ptr %i.ceh, i64 201
  %.val.i.i.i.1 = load i8, ptr %i.cel, align 1, !range !39, !alias.scope !10916, !noalias !10917, !noundef !11
  %cond.i.i.i.i.i.i.i.1 = icmp ne i8 %.val.i.i.i.1, 0
  %i.cem = zext i1 %cond.i.i.i.i.i.i.i.1 to i64
  %i.cen = add i64 %i.cek, %i.cem
  %i.ceo = getelementptr i8, ptr %i.ceh, i64 305
  %.val.i.i.i.2 = load i8, ptr %i.ceo, align 1, !range !39, !alias.scope !10916, !noalias !10917, !noundef !11
  %cond.i.i.i.i.i.i.i.2 = icmp ne i8 %.val.i.i.i.2, 0
  %i.cep = zext i1 %cond.i.i.i.i.i.i.i.2 to i64
  %i.ceq = add i64 %i.cen, %i.cep
  %i.cer = getelementptr inbounds nuw i8, ptr %i.ceh, i64 416 ; 2 uses
  %i.ces = getelementptr i8, ptr %i.ceh, i64 409
  %.val.i.i.i.3 = load i8, ptr %i.ces, align 1, !range !39, !alias.scope !10916, !noalias !10917, !noundef !11
  %cond.i.i.i.i.i.i.i.3 = icmp ne i8 %.val.i.i.i.3, 0
  %i.cet = zext i1 %cond.i.i.i.i.i.i.i.3 to i64
  %i.ceu = add i64 %i.ceq, %i.cet                 ; 3 uses
  %niter5369.next.3 = add i64 %niter5369, 4       ; 2 uses
  %niter5369.ncmp.3 = icmp eq i64 %niter5369.next.3, %unroll_iter5368
  br i1 %niter5369.ncmp.3, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i.unr-lcssa, label %.lr.ph.i.i.i

bb.ox:                                            ; preds = %.lr.ph.i.i.preheader.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #44, !noalias !10918
  unreachable

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod5365.not = icmp eq i64 %xtraiter5360, 0
  br i1 %lcmp.mod5365.not, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.epil.init5362 = phi ptr [ %i.ccs, %.lr.ph.i.i.i.preheader ], [ %i.cer, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i.unr-lcssa ]
  %.sroa.0.012.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.ceu, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i.unr-lcssa ]
  %lcmp.mod5367 = icmp ne i64 %xtraiter5360, 0
  call void @llvm.assume(i1 %lcmp.mod5367)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %i.cev = phi ptr [ %i.cew, %.lr.ph.i.i.i.epil ], [ %.epil.init5362, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.0.012.i.i.i.epil = phi i64 [ %i.cez, %.lr.ph.i.i.i.epil ], [ %.sroa.0.012.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.cew = getelementptr inbounds nuw i8, ptr %i.cev, i64 104
  %i.cex = getelementptr i8, ptr %i.cev, i64 97
  %.val.i.i.i.epil = load i8, ptr %i.cex, align 1, !range !39, !alias.scope !10916, !noalias !10917, !noundef !11
  %cond.i.i.i.i.i.i.i.epil = icmp ne i8 %.val.i.i.i.epil, 0
  %i.cey = zext i1 %cond.i.i.i.i.i.i.i.epil to i64
  %i.cez = add i64 %.sroa.0.012.i.i.i.epil, %i.cey ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter5360
  br i1 %epil.iter.cmp.not, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !9660

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i: ; preds = %.lr.ph.i.i.i.epil, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i.unr-lcssa
  %.lcssa4776 = phi i64 [ %i.ceu, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i.unr-lcssa ], [ %i.cez, %.lr.ph.i.i.i.epil ]
  %i.cfa = icmp eq i64 %.lcssa4776, 0
  br i1 %i.cfa, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.thread.i, label %bb.pb

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.thread.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i, %bb.ow
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh), !noalias !10889
  call fastcc void @_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command14write_help_err(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.cdv, i1 noundef zeroext false) #43, !noalias !10888
  %i.cfb = load ptr, ptr %i.cck, align 8, !alias.scope !10887, !noalias !10888, !nonnull !11, !align !17, !noundef !11
  %i.cfc = call fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error7for_appB4_(i8 noundef 13, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.cfb, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.eh) #42, !noalias !10888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !noalias !10889
  br label %bb.oy

bb.oy:                                            ; preds = %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error18missing_subcommandB4_.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator17validate_required.exit.i, %bb.pd, %bb.pc, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.thread.i
  %.sroa.0.0.i12 = phi ptr [ %i.dsz, %_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error18missing_subcommandB4_.exit.i ], [ %i.cfv, %bb.pd ], [ %i.cfc, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.thread.i ], [ %i.cfu, %bb.pc ], [ %i.dee, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator17validate_required.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10919)
  call void @llvm.experimental.noalias.scope.decl(metadata !10920)
  call void @llvm.experimental.noalias.scope.decl(metadata !10921)
  %.val.i.i.i.i = load i64, ptr %i.ei, align 8, !range !12, !alias.scope !10922, !noalias !10889, !noundef !11 ; 2 uses
  %i.cfd = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.cfd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.cfe = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.cfe, align 8, !alias.scope !10922, !noalias !10889, !nonnull !11, !noundef !11
  %i.cff = shl nuw i64 %.val.i.i.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.cff, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !10923
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i: ; preds = %bb.oz, %bb.oy
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !10924)
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %.val.i1.i.i.i = load ptr, ptr %i.cfh, align 8, !alias.scope !10925, !noalias !10889, !nonnull !11, !noundef !11 ; 2 uses
  %i.cfi = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %.val1.i2.i.i.i = load i64, ptr %i.cfi, align 8, !alias.scope !10925, !noalias !10889, !noundef !11 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10926)
  %i.cfj = icmp eq i64 %.val1.i2.i.i.i, 0
  br i1 %i.cfj, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i = phi i64 [ %i.cfl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i.i.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i ] ; 2 uses
  %i.cfk = getelementptr inbounds nuw [24 x i8], ptr %.val.i1.i.i.i, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  %i.cfl = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10927)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.cfk, align 8, !range !12, !alias.scope !10928, !noalias !10929, !noundef !11 ; 2 uses
  %i.cfm = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.cfm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i.i.i, label %bb.pa

bb.pa:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cfn = getelementptr inbounds nuw i8, ptr %i.cfk, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.cfn, align 8, !alias.scope !10928, !noalias !10929, !nonnull !11, !noundef !11
  %i.cfo = shl nuw i64 %.val.i.i.i.i.i.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.cfo, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !10930
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i.i.i: ; preds = %bb.pa, %.lr.ph.i.i.i.i.i.i
  %i.cfp = icmp eq i64 %i.cfl, %.val1.i2.i.i.i
  br i1 %i.cfp, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i
  %.val2.i.i.i.i = load i64, ptr %i.cfg, align 8, !range !12, !alias.scope !10925, !noalias !10889, !noundef !11 ; 2 uses
  %i.cfq = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.cfq, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator8validate.exit, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator8validate.exit.sink.split

bb.pb:                                            ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i, %bb.ov
  %i.cfr = and i32 %.val28.i, 512
  %.not.i32.i = icmp ne i32 %i.cfr, 0
  %i.cfs = and i32 %.val29.i, 512
  %i.cft = icmp ne i32 %i.cfs, 0
  %.sroa.0.0.i33.i = select i1 %.not.i32.i, i1 true, i1 %i.cft
  br i1 %.sroa.0.0.i33.i, label %bb.pe, label %bb.pd

bb.pc:                                            ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Conflicts9with_args.exit.i
  %i.cfu = call fastcc noundef align 8 ptr @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18validate_conflicts(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ei) #43 ; 2 uses
  %.not18.i = icmp eq ptr %i.cfu, null
  br i1 %.not18.i, label %bb.vc, label %bb.oy

bb.pd:                                            ; preds = %bb.pb
  %i.cfv = call fastcc noundef align 8 ptr @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18validate_conflicts(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ei) #43 ; 2 uses
  %.not16.i = icmp eq ptr %i.cfv, null
  br i1 %.not16.i, label %bb.pg, label %bb.oy

bb.pe:                                            ; preds = %bb.pb
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.cdv, i64 296
  %i.cfx = load i64, ptr %i.cfw, align 8, !range !13, !alias.scope !10931, !noalias !10888, !noundef !11
  %.not.i34.i = icmp eq i64 %i.cfx, -1            ; 2 uses
  %.sroa.3.0.in.v.i.i = select i1 %.not.i34.i, i64 568, i64 312
  %.sroa.3.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.cdv, i64 %.sroa.3.0.in.v.i.i
  %.sroa.0.0.in.v.i.i = select i1 %.not.i34.i, i64 560, i64 304
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.cdv, i64 %.sroa.0.0.in.v.i.i
  %.sroa.0.0.i35.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !alias.scope !10931, !noalias !10888, !nonnull !11, !noundef !11
  %.sroa.3.0.i36.i = load i64, ptr %.sroa.3.0.in.i.i, align 8, !alias.scope !10931, !noalias !10888, !noundef !11 ; 7 uses
  %.not.i37.i = icmp slt i64 %.sroa.3.0.i36.i, 0
  br i1 %.not.i37.i, label %bb.ub, label %bb.pf, !prof !21

bb.pf:                                            ; preds = %bb.pe
  %i.cfy = icmp eq i64 %.sroa.3.0.i36.i, 0
  br i1 %i.cfy, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread156.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.pf
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10932
  %i.cfz = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i36.i, i64 noundef range(i64 1, 9) 1) #43, !noalias !10932 ; 3 uses
  %i.cga = icmp eq ptr %i.cfz, null
  br i1 %i.cga, label %bb.ub, label %bb.vb

bb.pg:                                            ; preds = %bb.vc, %bb.pd
  call void @llvm.experimental.noalias.scope.decl(metadata !10933)
  call void @llvm.experimental.noalias.scope.decl(metadata !10934)
  %i.cgb = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 3 uses
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %i.cgd = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 3 uses
  %i.cge = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 4 uses
  %i.cgf = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 3 uses
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 4 uses
  %i.cgh = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.cgi = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.cgj = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.cgl = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 5 uses
  %i.cgm = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 5 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i.backedge, %bb.pg
  %i.cgn = phi ptr [ %i.ccs, %bb.pg ], [ %i.cgs, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i.backedge ] ; 6 uses
  %i.cgo = phi ptr [ %i.ccn, %bb.pg ], [ %i.cgr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i.backedge ] ; 4 uses
  %i.cgp = icmp eq ptr %i.cgo, %i.ccq
  br i1 %i.cgp, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator15gather_requires.exit.i.i, label %bb.ph

bb.ph:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i
  %i.cgq = icmp eq ptr %i.cgn, %i.ccv
  br i1 %i.cgq, label %bb.pi, label %bb.pj, !prof !19

bb.pi:                                            ; preds = %bb.ph
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #44, !noalias !10935
  unreachable

bb.pj:                                            ; preds = %bb.ph
  %i.cgr = getelementptr inbounds nuw i8, ptr %i.cgo, i64 16
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.cgn, i64 104
  %i.cgt = getelementptr inbounds nuw i8, ptr %i.cgn, i64 97
  %i.cgu = load i8, ptr %i.cgt, align 1, !range !39, !alias.scope !10936, !noalias !10937, !noundef !11
  %cond.i.i.i.not.i.i.i.i.i = icmp eq i8 %i.cgu, 0
  br i1 %cond.i.i.i.not.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i.backedge, label %bb.pk

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i.backedge: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE6insertB8_.exit57.i.i.i, %bb.pj, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.i.i.i, %bb.qc, %._crit_edge.i.i.i, %.loopexit.i.i.i
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i

bb.pk:                                            ; preds = %bb.pj
  %i.cgv = load ptr, ptr %i.cck, align 8, !alias.scope !10938, !noalias !10939, !nonnull !11, !align !17, !noundef !11 ; 4 uses
  %i.cgw = getelementptr i8, ptr %i.cgv, i64 136
  %.val.i.i40.i = load ptr, ptr %i.cgw, align 8, !noalias !10940, !nonnull !11, !noundef !11 ; 4 uses
  %i.cgx = getelementptr i8, ptr %i.cgv, i64 144
  %.val20.i.i.i = load i64, ptr %i.cgx, align 8, !noalias !10940, !noundef !11 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %.val20.i.i.i, 600
  %i.cgy = getelementptr inbounds nuw i8, ptr %.val.i.i40.i, i64 %.idx.i.i.i.i ; 3 uses
  %i.cgz = icmp eq i64 %.val20.i.i.i, 0
  %.val25.pre.i.i.i = load ptr, ptr %i.cgo, align 8, !noalias !10940 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr i8, ptr %i.cgo, i64 8
  %.val26.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !10940 ; 4 uses
  br i1 %i.cgz, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.pk, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i
  %i.cha = phi ptr [ %i.chb, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i ], [ %.val.i.i40.i, %bb.pk ] ; 4 uses
  %i.chb = getelementptr inbounds nuw i8, ptr %i.cha, i64 600 ; 2 uses
  %i.chc = getelementptr inbounds nuw i8, ptr %i.cha, i64 544
  %i.chd = load i64, ptr %i.chc, align 8, !noalias !10941, !noundef !11
  %i.che = icmp eq i64 %i.chd, %.val26.pre.i.i.i
  br i1 %i.che, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.chf = getelementptr inbounds nuw i8, ptr %i.cha, i64 536
  %i.chg = load ptr, ptr %i.chf, align 8, !noalias !10941, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.chg, ptr nonnull %.val25.pre.i.i.i, i64 %.val26.pre.i.i.i), !noalias !10941
  %i.chh = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.chh, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.chi = icmp eq ptr %i.chb, %i.cgy
  br i1 %i.chi, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10942)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !noalias !10943
  store i64 0, ptr %i.eb, align 8, !noalias !10943
  store ptr inttoptr (i64 8 to ptr), ptr %i.cgb, align 8, !noalias !10943
  store i64 0, ptr %i.cgc, align 8, !noalias !10943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !noalias !10943
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10944
  %i.chj = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 8, i64 noundef range(i64 1, 9) 8) #43, !noalias !10944 ; 5 uses
  %i.chk = icmp eq ptr %i.chj, null
  br i1 %i.chk, label %bb.pl, label %.lr.ph.i.i.i.i, !prof !33

bb.pl:                                            ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i.i
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #46, !noalias !10945
  unreachable

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i.i
  %i.chl = getelementptr inbounds nuw i8, ptr %i.cha, i64 536
  store ptr %i.chl, ptr %i.chj, align 8, !noalias !10944
  store i64 1, ptr %i.ea, align 8, !noalias !10943
  store ptr %i.chj, ptr %i.cgd, align 8, !noalias !10943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !noalias !10943
  store i64 0, ptr %i.dz, align 8, !noalias !10943
  store ptr inttoptr (i64 8 to ptr), ptr %i.cgf, align 8, !noalias !10943
  store i64 0, ptr %i.cgg, align 8, !noalias !10943
  %i.chm = getelementptr inbounds nuw i8, ptr %i.cgn, i64 80
  %i.chn = load ptr, ptr %i.chm, align 8, !alias.scope !10942, !noalias !10946, !nonnull !11 ; 3 uses
  %i.cho = getelementptr inbounds nuw i8, ptr %i.cgn, i64 88
  %i.chp = load i64, ptr %i.cho, align 8, !alias.scope !10942, !noalias !10946
end_hunk_5
begin_hunk_6_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser5react:bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !11690
  %.phi.trans.insert189.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.pre190.i = load i64, ptr %.phi.trans.insert189.i, align 8, !noalias !11690
  %i.cz = mul nuw nsw i64 %.pre190.i, 72
  br label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator23get_possible_values_cli.exit.i

bb.q:                                             ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i.i
  store i64 0, ptr %i.aw, align 8, !alias.scope !11692, !noalias !11698
  %i.da = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.da, align 8, !alias.scope !11692, !noalias !11698
  %i.db = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 0, ptr %i.db, align 8, !alias.scope !11692, !noalias !11698
  br label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator23get_possible_values_cli.exit.i

_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator23get_possible_values_cli.exit.i: ; preds = %bb.q, %bb.p, %bb.o
  %.idx384 = phi i64 [ %i.cz, %bb.p ], [ 0, %bb.q ], [ 0, %bb.o ] ; 2 uses
  %i.dc = phi ptr [ %.pre.i, %bb.p ], [ inttoptr (i64 8 to ptr), %bb.q ], [ inttoptr (i64 8 to ptr), %bb.o ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.idx384 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !11699
  %i.dg = icmp samesign eq i64 %.idx384, 0
  br i1 %i.dg, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1W_6filter6FilterINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB3z_6parser6parserNtB4M_6Parser15verify_num_args0ENCB4H_s_0EE9from_iterB3z_.exit.i, label %.lr.ph381

bb.r:                                             ; preds = %.lr.ph381
  %i.dh = icmp eq ptr %i.dj, %i.df
  br i1 %i.dh, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1W_6filter6FilterINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB3z_6parser6parserNtB4M_6Parser15verify_num_args0ENCB4H_s_0EE9from_iterB3z_.exit.i, label %.lr.ph381

.lr.ph381:                                        ; preds = %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator23get_possible_values_cli.exit.i, %bb.r
  %i.di = phi ptr [ %i.dj, %bb.r ], [ %i.dc, %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator23get_possible_values_cli.exit.i ] ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 72 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.dl = load i8, ptr %i.dk, align 8, !range !34, !noalias !11700, !noundef !11
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.r, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB1y_6parser6parserNtB2L_6Parser15verify_num_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB1y_6parser6parserNtB2L_6Parser15verify_num_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i.i: ; preds = %.lr.ph381
  %i.dn = getelementptr i8, ptr %i.di, i64 48
  %.val.i.i.i = load ptr, ptr %i.dn, align 8, !noalias !11701, !nonnull !11, !noundef !11
  %i.do = getelementptr i8, ptr %i.di, i64 56
  %.val2.i.i.i = load i64, ptr %i.do, align 8, !noalias !11701, !noundef !11 ; 7 uses
  %.not.i.i.i.i.i = icmp slt i64 %.val2.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s, !prof !21

bb.s:                                             ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB1y_6parser6parserNtB2L_6Parser15verify_num_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i.i
  %i.dp = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.dp, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.s
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !11702
  %i.dq = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.i.i, i64 noundef range(i64 1, 9) 1) #43, !noalias !11702 ; 3 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB1y_6parser6parserNtB2L_6Parser15verify_num_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i.i
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i ], [ 0, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB1y_6parser6parserNtB2L_6Parser15verify_num_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i.i ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.val2.i.i.i) #46, !noalias !11703
  unreachable

bb.u:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr nonnull readonly align 1 %.val.i.i.i, i64 %.val2.i.i.i, i1 false), !noalias !11703
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.u, %bb.s
  %.sroa.7.0.ph.i.i = phi ptr [ %i.dq, %bb.u ], [ inttoptr (i64 1 to ptr), %bb.s ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !11704
  %i.ds = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 96, i64 noundef range(i64 1, 9) 8) #43, !noalias !11704 ; 6 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.v, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i

bb.v:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #46, !noalias !11699
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i
  store i64 %.val2.i.i.i, ptr %i.ds, align 8, !noalias !11699
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %.sroa.7.0.ph.i.i, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !11699
  %.sroa.513.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store i64 %.val2.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !noalias !11699
  store i64 4, ptr %i.ak, align 8, !noalias !11699
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  store ptr %i.ds, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !11699
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !11699
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11706)
  br label %bb.w

bb.w:                                             ; preds = %bb.ad, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i
  %i.du = phi ptr [ %i.ds, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i ], [ %i.ej, %bb.ad ]
  %.sroa.8165.0.copyload.i = phi i64 [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i ], [ %i.el, %bb.ad ] ; 6 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.dj, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i.i ], [ %i.dx, %bb.ad ]
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w
  %i.dv = phi ptr [ %i.dx, %bb.y ], [ %.sroa.0.0.i.i.i.i, %bb.w ] ; 5 uses
  %i.dw = icmp eq ptr %i.dv, %i.df
  br i1 %i.dw, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1D_6filter6FilterINtNtNtB1H_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB3g_6parser6parserNtB4t_6Parser15verify_num_args0ENCB4o_s_0EE11spec_extendB3g_.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 72 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.dz = load i8, ptr %i.dy, align 8, !range !34, !noalias !11707, !noundef !11
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.x, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB1y_6parser6parserNtB2L_6Parser15verify_num_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i.i.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB1y_6parser6parserNtB2L_6Parser15verify_num_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i.i.i.i: ; preds = %bb.y
  %i.eb = getelementptr i8, ptr %i.dv, i64 48
  %.val.i.i.i.i.i = load ptr, ptr %i.eb, align 8, !noalias !11708, !nonnull !11, !noundef !11
  %i.ec = getelementptr i8, ptr %i.dv, i64 56
  %.val2.i.i.i.i.i = load i64, ptr %i.ec, align 8, !noalias !11708, !noundef !11 ; 7 uses
  %.not.i.i.i.i.i.i.i = icmp slt i64 %.val2.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.aa, label %bb.z, !prof !21

bb.z:                                             ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB1y_6parser6parserNtB2L_6Parser15verify_num_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i.i.i.i
  %i.ed = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.ed, label %bb.ac, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %bb.z
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !11709
  %i.ee = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #43, !noalias !11709 ; 3 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB1y_6parser6parserNtB2L_6Parser15verify_num_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ 0, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB1y_6parser6parserNtB2L_6Parser15verify_num_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i.i.i.i ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i) #46, !noalias !11710
  unreachable

bb.ab:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ee, ptr nonnull readonly align 1 %.val.i.i.i.i.i, i64 %.val2.i.i.i.i.i, i1 false), !noalias !11710
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.sroa.7.0.ph.i.i.i.i = phi ptr [ %i.ee, %bb.ab ], [ inttoptr (i64 1 to ptr), %bb.z ]
  %i.eg = icmp samesign ult i64 %.sroa.8165.0.copyload.i, 384307168202282326
  tail call void @llvm.assume(i1 %i.eg)
  %i.eh = load i64, ptr %i.ak, align 8, !range !12, !alias.scope !11711, !noalias !11699, !noundef !11
  %i.ei = icmp eq i64 %.sroa.8165.0.copyload.i, %i.eh
  br i1 %i.ei, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, label %bb.ad

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %bb.ac
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak, i64 noundef %.sroa.8165.0.copyload.i, i64 noundef 1, i64 noundef 8, i64 noundef 24) #43, !noalias !11699
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !11711, !noalias !11699
  br label %bb.ad

bb.ad:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, %bb.ac
  %i.ej = phi ptr [ %.pre.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ], [ %i.du, %bb.ac ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %.sroa.8165.0.copyload.i ; 3 uses
  store i64 %.val2.i.i.i.i.i, ptr %i.ek, align 8, !noalias !11712
  %.sroa.49.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %.sroa.7.0.ph.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !noalias !11712
  %.sroa.510.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i64 %.val2.i.i.i.i.i, ptr %.sroa.510.0..sroa_idx.i.i.i.i, align 8, !noalias !11712
  %i.el = add nuw nsw i64 %.sroa.8165.0.copyload.i, 1 ; 2 uses
  store i64 %i.el, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !11711, !noalias !11699
  br label %bb.w

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1D_6filter6FilterINtNtNtB1H_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB3g_6parser6parserNtB4t_6Parser15verify_num_args0ENCB4o_s_0EE11spec_extendB3g_.exit.i.i: ; preds = %bb.x
  %.sroa.0163.0.copyload.i = load i64, ptr %i.ak, align 8, !noalias !11690
  %.sroa.5164.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !11690
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1W_6filter6FilterINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB3z_6parser6parserNtB4M_6Parser15verify_num_args0ENCB4H_s_0EE9from_iterB3z_.exit.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1W_6filter6FilterINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB3z_6parser6parserNtB4M_6Parser15verify_num_args0ENCB4H_s_0EE9from_iterB3z_.exit.i: ; preds = %bb.r, %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator23get_possible_values_cli.exit.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1D_6filter6FilterINtNtNtB1H_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB3g_6parser6parserNtB4t_6Parser15verify_num_args0ENCB4o_s_0EE11spec_extendB3g_.exit.i.i
  %.sroa.8165.0.i = phi i64 [ %.sroa.8165.0.copyload.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1D_6filter6FilterINtNtNtB1H_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB3g_6parser6parserNtB4t_6Parser15verify_num_args0ENCB4o_s_0EE11spec_extendB3g_.exit.i.i ], [ 0, %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator23get_possible_values_cli.exit.i ], [ 0, %bb.r ] ; 3 uses
  %.sroa.5164.0.i = phi ptr [ %.sroa.5164.0.copyload.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1D_6filter6FilterINtNtNtB1H_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB3g_6parser6parserNtB4t_6Parser15verify_num_args0ENCB4o_s_0EE11spec_extendB3g_.exit.i.i ], [ inttoptr (i64 8 to ptr), %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator23get_possible_values_cli.exit.i ], [ inttoptr (i64 8 to ptr), %bb.r ] ; 3 uses
  %.sroa.0163.0.i = phi i64 [ %.sroa.0163.0.copyload.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1D_6filter6FilterINtNtNtB1H_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB3g_6parser6parserNtB4t_6Parser15verify_num_args0ENCB4o_s_0EE11spec_extendB3g_.exit.i.i ], [ 0, %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6parser9validator23get_possible_values_cli.exit.i ], [ 0, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !11699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !11690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !11713
  store i64 0, ptr %i.aj, align 8, !noalias !11713
  %.sroa.4.0..sroa_idx.i18.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i18.i, align 8, !noalias !11713
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !11713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !11713
  %i.em = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 1610612768, ptr %i.em, align 8, !noalias !11713
  store ptr %i.aj, ptr %i.ai, align 8, !noalias !11713
  %i.en = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @204, ptr %i.en, align 8, !noalias !11713
  %i.eo = call noundef zeroext i1 @_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai) #43, !noalias !11714
  br i1 %i.eo, label %bb.ae, label %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i, !prof !19

bb.ae:                                            ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1W_6filter6FilterINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB3z_6parser6parserNtB4M_6Parser15verify_num_args0ENCB4H_s_0EE9from_iterB3z_.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @356, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @358) #44, !noalias !11713
  unreachable

_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i: ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB1W_6filter6FilterINtNtNtB20_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENCNvMs_NtNtB3z_6parser6parserNtB4M_6Parser15verify_num_args0ENCB4H_s_0EE9from_iterB3z_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !11715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !11713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !11713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !11716
  store i64 0, ptr %i.ah, align 8, !noalias !11716
  %.sroa.4.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i19.i, align 8, !noalias !11716
  %.sroa.5.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i20.i, align 8, !noalias !11716
  %i.ep = call fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error13invalid_valueB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.cc, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5164.0.i, i64 noundef range(i64 0, 384307168202282326) %.sroa.8165.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.av) #43, !noalias !11690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !11716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !11690
  call void @llvm.experimental.noalias.scope.decl(metadata !11717)
  %i.eq = icmp eq i64 %.sroa.8165.0.i, 0
  br i1 %i.eq, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.es, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ], [ 0, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i ] ; 2 uses
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %.sroa.5164.0.i, i64 %.sroa.0.03.i.i.i.i ; 2 uses
  %i.es = add nuw nsw i64 %.sroa.0.03.i.i.i.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11718)
  %.val.i.i.i.i21.i = load i64, ptr %i.er, align 8, !range !12, !alias.scope !11719, !noalias !11720, !noundef !11 ; 2 uses
  %i.et = icmp eq i64 %.val.i.i.i.i21.i, 0
  br i1 %i.et, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.eu, align 8, !alias.scope !11719, !noalias !11720, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i21.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !11721
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %bb.af, %.lr.ph.i.i.i.i
  %i.ev = icmp eq i64 %i.es, %.sroa.8165.0.i
  br i1 %i.ev, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i
  %i.ew = icmp eq i64 %.sroa.0163.0.i, 0
  br i1 %i.ew, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i
  %i.ex = mul nuw i64 %.sroa.0163.0.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5164.0.i, i64 noundef %i.ex, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !11720
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %bb.ag, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11722)
  %.val.i22.i = load ptr, ptr %i.dd, align 8, !alias.scope !11722, !noalias !11690, !nonnull !11, !noundef !11 ; 2 uses
  %.val1.i23.i = load i64, ptr %i.de, align 8, !alias.scope !11722, !noalias !11690, !noundef !11 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11723)
  %i.ey = icmp eq i64 %.val1.i23.i, 0
  br i1 %i.ey, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i, label %.lr.ph.i.i.i24.i

.lr.ph.i.i.i24.i:                                 ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEBH_.exit.i.i.i.i
  %.sroa.0.03.i.i.i25.i = phi i64 [ %i.fa, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEBH_.exit.i.i.i.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit.i ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [72 x i8], ptr %.val.i22.i, i64 %.sroa.0.03.i.i.i25.i ; 4 uses
  %i.fa = add nuw nsw i64 %.sroa.0.03.i.i.i25.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11724)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !11725)
  %i.fc = load i64, ptr %i.fb, align 8, !range !13, !alias.scope !11726, !noalias !11727, !noundef !11 ; 3 uses
  %i.fd = icmp eq i64 %i.fc, -1
  br i1 %i.fd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i24.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11728)
  call void @llvm.experimental.noalias.scope.decl(metadata !11729)
  %i.fe = icmp eq i64 %i.fc, 0
  br i1 %i.fe, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.ff, align 8, !alias.scope !11730, !noalias !11727, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %i.fc, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !11731
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ah, %.lr.ph.i.i.i24.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11732)
  %.val.i.i.i.i.i.i = load i64, ptr %i.ez, align 8, !range !12, !alias.scope !11733, !noalias !11727, !noundef !11 ; 2 uses
  %i.fg = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.fg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEBH_.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.fh, align 8, !alias.scope !11733, !noalias !11727, !nonnull !11, !noundef !11
  %i.fi = shl nuw i64 %.val.i.i.i.i.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.fi, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !11734
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEBH_.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEBH_.exit.i.i.i.i: ; preds = %bb.aj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i.i.i.i
  %i.fj = icmp eq i64 %i.fa, %.val1.i23.i
  br i1 %i.fj, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i, label %.lr.ph.i.i.i24.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEBH_.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsfu0rQaTkGUu_12clap_builder.exit.i
  %.val2.i26.i = load i64, ptr %i.aw, align 8, !range !12, !alias.scope !11722, !noalias !11690, !noundef !11 ; 2 uses
  %i.fk = icmp eq i64 %.val2.i26.i, 0
  br i1 %i.fk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i
  %i.fl = mul nuw i64 %.val2.i26.i, 72
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i22.i, i64 noundef %i.fl, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !11727
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit.i: ; preds = %bb.ak, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !11690
  br label %bb.bu

bb.al:                                            ; preds = %bb.h
  %.not9.i = icmp eq i64 %.sroa.4.0.copyload.i, %i.ca
  br i1 %.not9.i, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15verify_num_args.exit, label %bb.an

bb.am:                                            ; preds = %bb.h
  %i.fm = icmp ult i64 %i.ca, %.sroa.4.0.copyload.i
  br i1 %i.fm, label %bb.ax, label %bb.aw

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !11735
  store i64 0, ptr %i.ag, align 8, !noalias !11735
  %.sroa.4.0..sroa_idx.i27.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i27.i, align 8, !noalias !11735
  %.sroa.5.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i28.i, align 8, !noalias !11735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !11735
  %i.fn = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 1610612768, ptr %i.fn, align 8, !noalias !11735
  store ptr %i.ag, ptr %i.af, align 8, !noalias !11735
  %i.fo = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @204, ptr %i.fo, align 8, !noalias !11735
  %i.fp = call noundef zeroext i1 @_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af) #43, !noalias !11736
  br i1 %i.fp, label %bb.ao, label %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit29.i, !prof !19

bb.ao:                                            ; preds = %bb.an
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @356, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @358) #44, !noalias !11735
  unreachable

_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit29.i: ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !noalias !11737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !11735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !11735
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5169.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !11690
  %i.fq = load ptr, ptr %i.cb, align 8, !noalias !11690, !nonnull !11, !align !17, !noundef !11 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11738)
  call void @llvm.experimental.noalias.scope.decl(metadata !11739)
  call void @llvm.experimental.noalias.scope.decl(metadata !11740)
  call void @llvm.experimental.noalias.scope.decl(metadata !11741)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 232
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !11742, !noalias !11743, !nonnull !11, !noundef !11 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 240
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !11742, !noalias !11743, !noundef !11 ; 2 uses
  %.idx383 = shl nuw nsw i64 %i.fu, 4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.idx383
  %i.fw = icmp eq i64 %i.fu, 0
  br i1 %i.fw, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit.i, label %.lr.ph380

bb.ap:                                            ; preds = %.lr.ph380
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i379, i64 16 ; 2 uses
  %i.fy = add i64 %.sroa.8.0.i.i.i.i378, 1
  %i.fz = icmp eq ptr %i.fx, %i.fv
  br i1 %i.fz, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit.i, label %.lr.ph380

.lr.ph380:                                        ; preds = %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit29.i, %bb.ap
  %.sroa.0.01.i.i.i.i379 = phi ptr [ %i.fx, %bb.ap ], [ %i.fs, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit29.i ] ; 2 uses
  %.sroa.8.0.i.i.i.i378 = phi i64 [ %i.fy, %bb.ap ], [ 0, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit29.i ] ; 4 uses
  %.val.i.i.i.i = load i128, ptr %.sroa.0.01.i.i.i.i379, align 8, !noalias !11744
  %i.ga = icmp eq i128 %.val.i.i.i.i, -100310019091698447603793328749864812255
  br i1 %i.ga, label %bb.aq, label %bb.ap

bb.aq:                                            ; preds = %.lr.ph380
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fq, i64 264
  %i.gc = load i64, ptr %i.gb, align 8, !alias.scope !11742, !noalias !11743, !noundef !11 ; 2 uses
  %i.gd = icmp ult i64 %.sroa.8.0.i.i.i.i378, %i.gc
  br i1 %i.gd, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i.i378, i64 noundef %i.gc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !11744
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fq, i64 256
  %i.gf = load ptr, ptr %i.ge, align 8, !alias.scope !11742, !noalias !11743, !nonnull !11, !noundef !11
  %i.gg = getelementptr inbounds nuw [32 x i8], ptr %i.gf, i64 %.sroa.8.0.i.i.i.i378 ; 2 uses
  %.val5.i.i.i = load ptr, ptr %i.gg, align 8, !noalias !11745, !nonnull !11, !noundef !11
  %i.gh = getelementptr i8, ptr %i.gg, i64 8
  %.val6.i.i.i = load ptr, ptr %i.gh, align 8, !noalias !11745, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 16
  %i.gj = load i64, ptr %i.gi, align 8, !range !18, !invariant.load !11, !noalias !11745
  %i.gk = add nsw i64 %i.gj, -1
  %i.gl = and i64 %i.gk, -16
  %i.gm = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !11745
  %i.go = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 24
  %i.gp = load ptr, ptr %i.go, align 8, !invariant.load !11, !noalias !11745, !nonnull !11
  call void %i.gp(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ae, ptr noundef nonnull %i.gn) #45, !noalias !11745, !inline_history !11559
  %i.gq = load i128, ptr %i.ae, align 16, !noalias !11745, !noundef !11
  %.not.i.i.i = icmp eq i128 %i.gq, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !11745
  br i1 %.not.i.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit.i, label %bb.at, !prof !16

bb.at:                                            ; preds = %bb.as
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !11745
  unreachable

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit.i: ; preds = %bb.ap, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit29.i, %bb.as
  %.sroa.0.0.i.i30.i = phi ptr [ %i.gn, %bb.as ], [ null, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit29.i ], [ null, %bb.ap ] ; 2 uses
  %.not.i31.i = icmp eq ptr %.sroa.0.0.i.i30.i, null
  %..i32.i = select i1 %.not.i31.i, ptr @99, ptr %.sroa.0.0.i.i30.i ; 5 uses
  store ptr %i.fq, ptr %i.at, align 8, !alias.scope !11738, !noalias !11746
  %i.gr = getelementptr inbounds nuw i8, ptr %i.at, i64 8
end_hunk_6
begin_hunk_7_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser5react:bb.a
_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %bb.cm, %.lr.ph.i.i.i.i163
  %i.pb = icmp eq i64 %i.oy, %i.ov
  br i1 %i.pb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i163

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge
  %i.pc = phi ptr [ %i.or, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ], [ %i.or, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge ], [ %i.oh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit ]
  %i.pd = phi i64 [ %i.oq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i ], [ %i.oq, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i._crit_edge ], [ %i.oi, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit ] ; 2 uses
  %i.pe = icmp eq i64 %i.pd, 0
  br i1 %i.pe, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECsfu0rQaTkGUu_12clap_builder.exit, label %bb.cn

bb.cn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %i.pf = mul nuw i64 %i.pd, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pc, i64 noundef %i.pf, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !11807
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %bb.cy

bb.co:                                            ; preds = %bb.cl
  %i.pg = load ptr, ptr %i.ok, align 8, !nonnull !11, !align !17, !noundef !11
  %i.ph = getelementptr i8, ptr %i.pg, i64 700
  %i.pi = load <2 x i32>, ptr %i.ph, align 4
  %i.pj = and <2 x i32> %i.pi, splat (i32 64)
  %i.pk = icmp ne <2 x i32> %i.pj, zeroinitializer ; 2 uses
  %i.pl = extractelement <2 x i1> %i.pk, i64 0
  %i.pm = extractelement <2 x i1> %i.pk, i64 1
  %.sroa.0.0.i168 = select i1 %i.pl, i1 true, i1 %i.pm
  %i.pn = icmp eq i64 %.sroa.4.1, %.sroa.13.0266
  %i.po = and i1 %.sroa.0.0.i168, %i.ol
  %or.cond111 = select i1 %i.po, i1 %i.pn, i1 false
  br i1 %or.cond111, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co, %bb.cl
  %i.pp = load i64, ptr %i.of, align 8, !alias.scope !11809, !noalias !11810, !noundef !11 ; 3 uses
  %i.pq = load i64, ptr %i.bt, align 8, !range !12, !alias.scope !11809, !noalias !11810, !noundef !11
  %i.pr = icmp eq i64 %i.pp, %i.pq
  br i1 %i.pr, label %bb.cq, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8push_mutCsfu0rQaTkGUu_12clap_builder.exit

bb.cq:                                            ; preds = %bb.cp
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt) #42, !noalias !11810
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8push_mutCsfu0rQaTkGUu_12clap_builder.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8push_mutCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.cp, %bb.cq
  %i.ps = load ptr, ptr %i.oe, align 8, !alias.scope !11809, !noalias !11810, !nonnull !11, !noundef !11
  %i.pt = getelementptr inbounds nuw [24 x i8], ptr %i.ps, i64 %i.pp ; 3 uses
  store i64 %.sroa.0.0.copyload1.i, ptr %i.pt, align 8
  %.sroa.4209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  store ptr %.sroa.9.sroa.0.0.copyload, ptr %.sroa.4209.0..sroa_idx, align 8
  %.sroa.5210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  store i64 %.sroa.9.sroa.5.0.copyload, ptr %.sroa.5210.0..sroa_idx, align 8
  %i.pu = add i64 %i.pp, 1
  store i64 %i.pu, ptr %i.of, align 8, !alias.scope !11809, !noalias !11810
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit

bb.cr:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @_RNvXNtCs3RZUOUhPFQ6_8clap_lex3extNtNtNtCsaKJjC64KgbL_3std3ffi6os_str5OsStrNtB2_8OsStrExt5split(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9.sroa.0.0.copyload, i64 noundef %.sroa.9.sroa.5.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef %.sroa.0.05.i) #43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.experimental.noalias.scope.decl(metadata !11811)
  %i.pv = call { ptr, i64 } @_RNvXs_NtCs3RZUOUhPFQ6_8clap_lex3extNtB4_5SplitNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs) #43, !noalias !11812 ; 2 uses
  %i.pw = extractvalue { ptr, i64 } %i.pv, 0      ; 2 uses
  %.not.i14.i = icmp eq ptr %i.pw, null
  br i1 %.not.i14.i, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtCs3RZUOUhPFQ6_8clap_lex3ext5SplitNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB3d_6Parser5reacts_0EEB3h_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cr, %bb.cw
  %i.px = phi ptr [ %i.ql, %bb.cw ], [ %i.pw, %bb.cr ]
  %i.py = phi { ptr, i64 } [ %i.qk, %bb.cw ], [ %i.pv, %bb.cr ]
  %i.pz = extractvalue { ptr, i64 } %i.py, 1      ; 7 uses
  %.not.i.i.i.i = icmp slt i64 %i.pz, 0
  br i1 %.not.i.i.i.i, label %bb.ct, label %bb.cs, !prof !21

bb.cs:                                            ; preds = %.lr.ph.i
  %i.qa = icmp eq i64 %i.pz, 0
  br i1 %i.qa, label %bb.cv, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i169

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i169: ; preds = %bb.cs
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !11813
  %i.qb = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.pz, i64 noundef range(i64 1, 9) 1) #43, !noalias !11813 ; 3 uses
  %i.qc = icmp eq ptr %i.qb, null
  br i1 %i.qc, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i169, %.lr.ph.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i169 ], [ 0, %.lr.ph.i ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.pz) #46, !noalias !11814
  unreachable

bb.cu:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i169
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qb, ptr nonnull readonly align 1 %i.px, i64 %i.pz, i1 false), !noalias !11815
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cs
  %.sroa.7.0.ph.i = phi ptr [ %i.qb, %bb.cu ], [ inttoptr (i64 1 to ptr), %bb.cs ]
  %i.qd = load i64, ptr %i.of, align 8, !alias.scope !11811, !noalias !11816, !noundef !11 ; 5 uses
  %i.qe = icmp ult i64 %i.qd, 384307168202282326
  call void @llvm.assume(i1 %i.qe)
  %i.qf = load i64, ptr %i.bt, align 8, !range !12, !alias.scope !11811, !noalias !11816, !noundef !11
  %i.qg = icmp eq i64 %i.qd, %i.qf
  br i1 %i.qg, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i171, label %bb.cw

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i171: ; preds = %bb.cv
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt, i64 noundef %i.qd, i64 noundef 1, i64 noundef 8, i64 noundef 24) #43
  br label %bb.cw

bb.cw:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i171, %bb.cv
  %i.qh = load ptr, ptr %i.oe, align 8, !alias.scope !11811, !noalias !11816, !nonnull !11, !noundef !11
  %i.qi = getelementptr inbounds nuw [24 x i8], ptr %i.qh, i64 %i.qd ; 3 uses
  store i64 %i.pz, ptr %i.qi, align 8, !noalias !11811
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  store ptr %.sroa.7.0.ph.i, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !11811
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  store i64 %i.pz, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !11811
  %i.qj = add nuw nsw i64 %i.qd, 1
  store i64 %i.qj, ptr %i.of, align 8, !alias.scope !11811, !noalias !11816
  %i.qk = call { ptr, i64 } @_RNvXs_NtCs3RZUOUhPFQ6_8clap_lex3extNtB4_5SplitNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs) #43, !noalias !11812 ; 2 uses
  %i.ql = extractvalue { ptr, i64 } %i.qk, 0      ; 2 uses
  %.not.i.i170 = icmp eq ptr %i.ql, null
  br i1 %.not.i.i170, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtCs3RZUOUhPFQ6_8clap_lex3ext5SplitNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB3d_6Parser5reacts_0EEB3h_.exit, label %.lr.ph.i

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtCs3RZUOUhPFQ6_8clap_lex3ext5SplitNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB3d_6Parser5reacts_0EEB3h_.exit: ; preds = %bb.cw, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  %i.qm = icmp eq i64 %.sroa.0.0.copyload1.i, 0
  br i1 %i.qm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit, label %bb.cx

bb.cx:                                            ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtCs3RZUOUhPFQ6_8clap_lex3ext5SplitNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB3d_6Parser5reacts_0EEB3h_.exit
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.sroa.0.0.copyload, i64 noundef %.sroa.0.0.copyload1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !11817
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.cx, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtCs3RZUOUhPFQ6_8clap_lex3ext5SplitNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB3d_6Parser5reacts_0EEB3h_.exit, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE8push_mutCsfu0rQaTkGUu_12clap_builder.exit
  %i.qn = icmp eq ptr %i.om, %i.oj
  br i1 %i.qn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.i

bb.cy:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECsfu0rQaTkGUu_12clap_builder.exit, %bb.cc, %bb.bv, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB30_6parser6parserNtB3V_6Parser5react0EEB30_.exit
  %i.qo = getelementptr inbounds nuw i8, ptr %4, i64 596
  %i.qp = load i8, ptr %i.qo, align 4, !range !53, !alias.scope !11818, !noundef !11
  switch i8 %i.qp, label %default.unreachable336 [
    i8 0, label %bb.cz
    i8 1, label %bb.da
    i8 2, label %bb.db
    i8 3, label %bb.dc
    i8 4, label %bb.dd
    i8 5, label %bb.de
    i8 6, label %bb.df
    i8 7, label %bb.dg
    i8 8, label %bb.dh
    i8 -1, label %bb.cz
  ]

bb.cz:                                            ; preds = %bb.cy, %bb.cy
  br i1 %.not252, label %switch.early.test, label %bb.dq

switch.early.test:                                ; preds = %bb.cz
  switch i8 %2, label %bb.dr [
    i8 -1, label %bb.dq
    i8 2, label %bb.dq
  ]

bb.da:                                            ; preds = %bb.cy
  br i1 %.not252, label %switch.early.test118, label %bb.eb

switch.early.test118:                             ; preds = %bb.da
  switch i8 %2, label %bb.ec [
    i8 -1, label %bb.eb
    i8 2, label %bb.eb
  ]

bb.db:                                            ; preds = %bb.cy
  %i.qq = load i64, ptr %i.lf, align 8, !noundef !11 ; 2 uses
  %i.qr = icmp ult i64 %i.qq, 384307168202282326
  call void @llvm.assume(i1 %i.qr)
  %i.qs = icmp eq i64 %i.qq, 0
  br i1 %i.qs, label %bb.eg, label %bb.ef

bb.dc:                                            ; preds = %bb.cy
  %i.qt = load i64, ptr %i.lf, align 8, !noundef !11 ; 2 uses
  %i.qu = icmp ult i64 %i.qt, 384307168202282326
  call void @llvm.assume(i1 %i.qu)
  %i.qv = icmp eq i64 %i.qt, 0
  br i1 %i.qv, label %bb.es, label %bb.er

bb.dd:                                            ; preds = %bb.cy
  %i.qw = load i64, ptr %i.lf, align 8, !noundef !11 ; 2 uses
  %i.qx = icmp ult i64 %i.qw, 384307168202282326
  call void @llvm.assume(i1 %i.qx)
  %i.qy = icmp eq i64 %i.qw, 0
  %i.qz = getelementptr inbounds nuw i8, ptr %4, i64 536 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %4, i64 544 ; 2 uses
  br i1 %i.qy, label %bb.fc, label %bb.fb

bb.de:                                            ; preds = %bb.cy
  %i.rb = icmp ne i8 %2, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.rd = load ptr, ptr %i.rc, align 8, !nonnull !11, !align !17, !noundef !11
  call fastcc void @_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command14write_help_err(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.rd, i1 noundef zeroext %i.rb) #43
  %i.re = load ptr, ptr %i.rc, align 8, !nonnull !11, !align !17, !noundef !11
  %i.rf = call fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error7for_appB4_(i8 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.re, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.sink.split

bb.df:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.rh = load ptr, ptr %i.rg, align 8, !nonnull !11, !align !17, !noundef !11
  call fastcc void @_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command14write_help_err(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.rh, i1 noundef zeroext false) #43
  %i.ri = load ptr, ptr %i.rg, align 8, !nonnull !11, !align !17, !noundef !11
  %i.rj = call fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error7for_appB4_(i8 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.ri, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.g) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.sink.split

bb.dg:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.rk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.rl = load ptr, ptr %i.rk, align 8, !nonnull !11, !align !17, !noundef !11
  call fastcc void @_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command14write_help_err(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.rl, i1 noundef zeroext true) #43
  %i.rm = load ptr, ptr %i.rk, align 8, !nonnull !11, !align !17, !noundef !11
  %i.rn = call fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error7for_appB4_(i8 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.rm, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.sink.split

bb.dh:                                            ; preds = %bb.cy
  %.not251 = icmp eq i8 %2, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ro = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !nonnull !11, !align !17, !noundef !11 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11819)
  call void @llvm.experimental.noalias.scope.decl(metadata !11820)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11821
  br i1 %.not251, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 608
  %i.rr = load ptr, ptr %i.rq, align 8, !alias.scope !11822, !noalias !11823, !noundef !11 ; 3 uses
  %.not.i.i.i174 = icmp eq ptr %i.rr, null        ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rp, i64 616
  %i.rt = load i64, ptr %i.rs, align 8, !alias.scope !11822, !noalias !11823 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rp, i64 624
  %i.rv = load ptr, ptr %i.ru, align 8, !alias.scope !11822, !noalias !11823, !noundef !11 ; 2 uses
  %.not33.i.i.i = icmp eq ptr %i.rv, null
  br i1 %.not33.i.i.i, label %bb.dl, label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rp, i64 624
  %i.rx = load ptr, ptr %i.rw, align 8, !alias.scope !11822, !noalias !11823, !noundef !11 ; 3 uses
  %.not37.i.i.i = icmp eq ptr %i.rx, null         ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rp, i64 632
  %i.rz = load i64, ptr %i.ry, align 8, !alias.scope !11822, !noalias !11823 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rp, i64 608
  %i.sb = load ptr, ptr %i.sa, align 8, !alias.scope !11822, !noalias !11823, !noundef !11 ; 2 uses
  %.not38.i.i.i = icmp eq ptr %i.sb, null
  br i1 %.not38.i.i.i, label %bb.do, label %bb.dn

bb.dk:                                            ; preds = %bb.di
  br i1 %.not.i.i.i174, label %bb.dm, label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser11version_err.exit

bb.dl:                                            ; preds = %bb.di
  %spec.select.i.i.i = select i1 %.not.i.i.i174, i64 0, i64 %i.rt
  %spec.select44.i.i.i = select i1 %.not.i.i.i174, ptr inttoptr (i64 1 to ptr), ptr %i.rr
  br label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser11version_err.exit

bb.dm:                                            ; preds = %bb.dk
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rp, i64 632
  %i.sd = load i64, ptr %i.sc, align 8, !alias.scope !11822, !noalias !11823, !noundef !11
  br label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser11version_err.exit

bb.dn:                                            ; preds = %bb.dj
  br i1 %.not37.i.i.i, label %bb.dp, label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser11version_err.exit

bb.do:                                            ; preds = %bb.dj
  %spec.select57.i.i.i = select i1 %.not37.i.i.i, ptr inttoptr (i64 1 to ptr), ptr %i.rx
  %spec.select58.i.i.i = select i1 %.not37.i.i.i, i64 0, i64 %i.rz
  br label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser11version_err.exit

bb.dp:                                            ; preds = %bb.dn
  %i.se = getelementptr inbounds nuw i8, ptr %i.rp, i64 616
  %i.sf = load i64, ptr %i.se, align 8, !alias.scope !11822, !noalias !11823, !noundef !11
  br label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser11version_err.exit

_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB5_6Parser11version_err.exit: ; preds = %bb.dk, %bb.dl, %bb.dm, %bb.dn, %bb.do, %bb.dp
  %.sink53.i.i.i = phi ptr [ %i.rv, %bb.dm ], [ %spec.select57.i.i.i, %bb.do ], [ %i.rx, %bb.dn ], [ %i.sb, %bb.dp ], [ %spec.select44.i.i.i, %bb.dl ], [ %i.rr, %bb.dk ]
  %.sink51.i.i.i = phi i64 [ %i.sd, %bb.dm ], [ %spec.select58.i.i.i, %bb.do ], [ %i.rz, %bb.dn ], [ %i.sf, %bb.dp ], [ %spec.select.i.i.i, %bb.dl ], [ %i.rt, %bb.dk ]
  store ptr %.sink53.i.i.i, ptr %i.d, align 8, !noalias !11821, !captures !22
  %i.sg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sink51.i.i.i, ptr %i.sg, align 8, !noalias !11821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11821
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rp, i64 272
  %i.si = load i64, ptr %i.sh, align 8, !range !13, !alias.scope !11822, !noalias !11823, !noundef !11
  %.not42.i.i.i = icmp eq i64 %i.si, -1           ; 2 uses
  %..i.i.i = select i1 %.not42.i.i.i, i64 560, i64 280
  %.56.i.i.i = select i1 %.not42.i.i.i, i64 568, i64 288
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rp, i64 %..i.i.i
  %i.sk = getelementptr inbounds nuw i8, ptr %i.rp, i64 %.56.i.i.i
  %.sink.i.i.i = load i64, ptr %i.sk, align 8, !alias.scope !11822, !noalias !11823, !noundef !11
  %.sink47.i.i.i = load ptr, ptr %i.sj, align 8, !alias.scope !11822, !noalias !11823, !nonnull !11, !noundef !11
  store ptr %.sink47.i.i.i, ptr %i.c, align 8, !noalias !11821
  %i.sl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sink.i.i.i, ptr %i.sl, align 8, !noalias !11821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11821
  store ptr %i.c, ptr %i.b, align 8, !noalias !11821
  %.sroa.424.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.424.0..sroa_idx.i.i.i, align 8, !noalias !11821
  %i.sm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.sm, align 8, !noalias !11821
  %.sroa.428.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.428.0..sroa_idx.i.i.i, align 8, !noalias !11821
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @202, ptr noundef nonnull %i.b) #43, !noalias !11819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11821
  %i.sn = load ptr, ptr %i.ro, align 8, !nonnull !11, !align !17, !noundef !11
  %i.so = call fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error7for_appB4_(i8 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.sn, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.sink.split

bb.dq:                                            ; preds = %switch.early.test, %switch.early.test, %bb.cz, %bb.dr
  %i.sp = getelementptr inbounds nuw i8, ptr %4, i64 536
  %.val141 = load ptr, ptr %i.sp, align 8         ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %4, i64 544
  %.val142 = load i64, ptr %i.sq, align 8         ; 2 uses
  %i.sr = call fastcc noundef zeroext i1 @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher6remove(ptr noalias nofree noundef align 8 dereferenceable(120) %8, ptr %.val141, i64 %.val142) #43
  br i1 %i.sr, label %bb.ds, label %bb.dt

bb.dr:                                            ; preds = %switch.early.test
  %i.ss = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.st = load i64, ptr %i.ss, align 8, !noundef !11
  %i.su = add i64 %i.st, 1
  store i64 %i.su, ptr %i.ss, align 8
  br label %bb.dq

bb.ds:                                            ; preds = %bb.dq
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.sw = load ptr, ptr %i.sv, align 8, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.sx = getelementptr i8, ptr %i.sw, i64 700
  %i.sy = load <2 x i32>, ptr %i.sx, align 4
  %i.sz = and <2 x i32> %i.sy, splat (i32 8)
  %i.ta = icmp ne <2 x i32> %i.sz, zeroinitializer ; 2 uses
  %i.tb = extractelement <2 x i1> %i.ta, i64 0
  %i.tc = extractelement <2 x i1> %i.ta, i64 1
  %.sroa.0.0.i176 = select i1 %i.tb, i1 true, i1 %i.tc
  br i1 %.sroa.0.0.i176, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.du, %bb.ds, %bb.dq
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16start_custom_arg(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(120) %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4, i8 noundef %3) #43
  %i.td = call fastcc noundef align 8 ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15push_arg_values(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %5, i8 noundef %3, ptr noalias nofree noundef align 8 dereferenceable(120) %8) #43 ; 2 uses
  %.not107 = icmp eq ptr %i.td, null
  br i1 %.not107, label %bb.ea, label %bb.dz

bb.du:                                            ; preds = %bb.ds
  %i.te = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.tf = load ptr, ptr %i.te, align 8, !nonnull !11, !noundef !11
  %i.tg = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.th = load i64, ptr %i.tg, align 8, !noundef !11
  %i.ti = call fastcc noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_(ptr %.val141, i64 %.val142, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.tf, i64 noundef %i.th) #43
  br i1 %i.ti, label %bb.dt, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call fastcc void @_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  %i.tj = call fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 24) #45 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call fastcc void @_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4) #45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tj, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  store i64 1, ptr %i.bp, align 8
  %i.tk = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.tj, ptr %i.tk, align 8
  %i.tl = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 1, ptr %i.tl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.tm = load ptr, ptr %i.sv, align 8, !nonnull !11, !align !17, !noundef !11
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.tm) #43
  call void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  %i.tn = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error17argument_conflictB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.sw, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.bq, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bp, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.bn) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.tn, ptr %i.to, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.dw

bb.dw:                                            ; preds = %bb.eq, %bb.dv, %bb.bu, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !11824)
  %i.tp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val2.i = load ptr, ptr %i.tp, align 8, !alias.scope !11824, !nonnull !11, !noundef !11 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val3.i = load i64, ptr %i.tq, align 8, !alias.scope !11824, !noundef !11 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11825)
  %i.tr = icmp eq i64 %.val3.i, 0
  br i1 %i.tr, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.dw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.tt, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ 0, %bb.dw ] ; 2 uses
  %i.ts = getelementptr inbounds nuw [24 x i8], ptr %.val2.i, i64 %.sroa.0.03.i.i.i ; 2 uses
  %i.tt = add nuw nsw i64 %.sroa.0.03.i.i.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11826)
  %.val.i.i.i.i177 = load i64, ptr %i.ts, align 8, !range !12, !alias.scope !11827, !noalias !11824, !noundef !11 ; 2 uses
  %i.tu = icmp eq i64 %.val.i.i.i.i177, 0
  br i1 %i.tu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %.lr.ph.i.i.i
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.tv, align 8, !alias.scope !11827, !noalias !11824, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i177, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !11828
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %bb.dx, %.lr.ph.i.i.i
  %i.tw = icmp eq i64 %i.tt, %.val3.i
  br i1 %i.tw, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %bb.dw
  %.val.i178 = load i64, ptr %5, align 8, !range !12, !alias.scope !11824, !noundef !11 ; 2 uses
  %i.tx = icmp eq i64 %.val.i178, 0
  br i1 %i.tx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit, label %bb.dy

bb.dy:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i
  %i.ty = mul nuw i64 %.val.i178, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.ty, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !11824
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit

bb.dz:                                            ; preds = %bb.dt
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.td, ptr %i.tz, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit

bb.ea:                                            ; preds = %bb.dt
  store i64 -9223372036854775806, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit

bb.eb:                                            ; preds = %switch.early.test118, %switch.early.test118, %bb.da, %bb.ec
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16start_custom_arg(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(120) %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4, i8 noundef %3) #43
  %i.ua = call fastcc noundef align 8 ptr @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser15push_arg_values(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %5, i8 noundef %3, ptr noalias nofree noundef align 8 dereferenceable(120) %8) #43 ; 2 uses
  %.not105 = icmp eq ptr %i.ua, null
  br i1 %.not105, label %bb.ee, label %bb.ed

bb.ec:                                            ; preds = %switch.early.test118
  %i.ub = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.uc = load i64, ptr %i.ub, align 8, !noundef !11
  %i.ud = add i64 %i.uc, 1
  store i64 %i.ud, ptr %i.ub, align 8
  br label %bb.eb

bb.ed:                                            ; preds = %bb.eb
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ua, ptr %i.ue, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit

bb.ee:                                            ; preds = %bb.eb
  store i64 -9223372036854775806, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.fl, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i196, %bb.dy, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, %bb.dz, %bb.ed, %bb.ea, %bb.ee, %bb.eq, %bb.ep
  ret void

bb.ef:                                            ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  br label %bb.eh

bb.eg:                                            ; preds = %bb.db
  %i.uf = call fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 24) #45 ; 4 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !11829
  %i.ug = call noundef dereferenceable_or_null(4) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 4, i64 noundef range(i64 1, 9) 1) #43, !noalias !11829 ; 3 uses
  %i.uh = icmp eq ptr %i.ug, null
  br i1 %i.uh, label %bb.ei, label %bb.ej

bb.eh:                                            ; preds = %bb.ej, %bb.ef
  %.sroa.063.2 = phi i8 [ 1, %bb.ej ], [ 0, %bb.ef ] ; 3 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %4, i64 536
  %.val139 = load ptr, ptr %i.ui, align 8         ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %4, i64 544
  %.val140 = load i64, ptr %i.uj, align 8         ; 2 uses
  %i.uk = call fastcc noundef zeroext i1 @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher6remove(ptr noalias nofree noundef align 8 dereferenceable(120) %8, ptr %.val139, i64 %.val140) #43
  br i1 %i.uk, label %bb.ek, label %bb.el

bb.ei:                                            ; preds = %bb.eg
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 4) #46
  unreachable

bb.ej:                                            ; preds = %bb.eg
  store i32 1702195828, ptr %i.ug, align 1
  store i64 4, ptr %i.uf, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  store ptr %i.ug, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  store i64 4, ptr %.sroa.573.0..sroa_idx, align 8
  store i64 1, ptr %i.bg, align 8
  %i.ul = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.uf, ptr %i.ul, align 8
  %i.um = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 1, ptr %i.um, align 8
  br label %bb.eh

bb.ek:                                            ; preds = %bb.eh
  %i.un = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.uo = load ptr, ptr %i.un, align 8, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.up = getelementptr i8, ptr %i.uo, i64 700
  %i.uq = load <2 x i32>, ptr %i.up, align 4
  %i.ur = and <2 x i32> %i.uq, splat (i32 8)
  %i.us = icmp ne <2 x i32> %i.ur, zeroinitializer ; 2 uses
  %i.ut = extractelement <2 x i1> %i.us, i64 0
  %i.uu = extractelement <2 x i1> %i.us, i64 1
  %.sroa.0.0.i183 = select i1 %i.ut, i1 true, i1 %i.uu
  br i1 %.sroa.0.0.i183, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.em, %bb.ek, %bb.eh
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16start_custom_arg(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(120) %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %4, i8 noundef %3) #43
end_hunk_7
begin_hunk_8_@_RNvXs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char:bb.a
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !12, !alias.scope !13189, !noundef !11
  %i.h = sub nsw i64 %i.g, %i.b
  %i.i = icmp ugt i64 %.sroa.0.0.i, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i, !prof !19

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0.i, i64 noundef 1, i64 noundef 1) #43
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !13188, !nonnull !11, !noundef !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b ; 10 uses
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i
  %i.m = icmp samesign ult i32 %1, 2048
  %i.n = trunc i32 %1 to i8
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 3 uses
  %i.q = lshr i32 %1, 6
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128                ; 2 uses
  %i.u = lshr i32 %1, 12
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  %i.y = lshr i32 %1, 18
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = or disjoint i8 %i.z, -16
  br i1 %i.m, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i
  %i.ab = trunc nuw nsw i32 %1 to i8
  store i8 %i.ab, ptr %i.l, align 1, !noalias !13188
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = or disjoint i8 %i.r, -64
  store i8 %i.ac, ptr %i.l, align 1, !noalias !13188
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.p, ptr %i.ad, align 1, !noalias !13188
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = icmp samesign ult i32 %1, 65536
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = or disjoint i8 %i.v, -32
  store i8 %i.af, ptr %i.l, align 1, !noalias !13188
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.t, ptr %i.ag, align 1, !noalias !13188
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.p, ptr %i.ah, align 1, !noalias !13188
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.aa, ptr %i.l, align 1, !noalias !13188
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.x, ptr %i.ai, align 1, !noalias !13188
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.t, ptr %i.aj, align 1, !noalias !13188
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  store i8 %i.p, ptr %i.ak, align 1, !noalias !13188
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.al = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.al, ptr %i.a, align 8, !alias.scope !13188
  ret i1 false
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13198)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !13199, !noalias !13200, !noundef !11 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !12, !alias.scope !13199, !noalias !13200, !noundef !11
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1) #43, !noalias !13200
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !13201, !noalias !13200, !noundef !11 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !13201, !noalias !13200, !nonnull !11, !noundef !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !13201
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8push_str.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.b, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !13201, !noalias !13200
  ret i1 false
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder12arg_settingsNtB5_8ArgFlagsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @342, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @341) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_11ValueParserINtNtCsj6eKBz9Db1c_4core7convert4FromINtNtNtB1k_3ops5range7RangeToxEE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13204
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #43, !noalias !13204 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46, !noalias !13204
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 2, ptr %i.a, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %1, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 4, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @336, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder3strNtNtCsaKJjC64KgbL_3std4path7PathBufINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_3StrE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i.i = icmp slt i64 %2, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3strNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_3StrE4from.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13213
  %i.b = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, 9) 1) #43, !noalias !13213 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.a ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %2) #46, !noalias !13214
  unreachable

bb.d:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !13215
  br label %_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3strNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_3StrE4from.exit

_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3strNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_3StrE4from.exit: ; preds = %bb.b, %bb.d
  %i.d = phi ptr [ %i.b, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.b ]
  store i64 %2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.59.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noalias noundef nonnull align 8 ptr @_RNvXs6_NtCsfu0rQaTkGUu_12clap_builder6deriveNtNtCsj6eKBz9Db1c_4core7convert10InfallibleNtB5_14FromArgMatches16from_arg_matches(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13230
  %i.a = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 256, i64 noundef range(i64 1, 9) 8) #43, !noalias !13230 ; 48 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #46, !noalias !13230
  unreachable

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.a
  store i64 2, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %.sroa.44.0..sroa_idx.i, align 8
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.55.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.8.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx6.i, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx8.i, align 8
  %.sroa.9.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 0, ptr %.sroa.9.0..sroa_idx9.i, align 8
  %.sroa.10.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 -2, ptr %.sroa.10.0..sroa_idx10.i, align 8
  %.sroa.1112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr null, ptr %.sroa.1112.0..sroa_idx.i, align 8
  %.sroa.1214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i8 -1, ptr %.sroa.1214.0..sroa_idx.i, align 8
  %.sroa.1315.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  store i8 -1, ptr %.sroa.1315.0..sroa_idx.i, align 4
  %.sroa.1417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i8 -1, ptr %.sroa.1417.0..sroa_idx.i, align 8
  %.sroa.1519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  store i16 0, ptr %.sroa.1519.0..sroa_idx.i, align 4
  %.sroa.16.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.a, i64 134
  store i8 -1, ptr %.sroa.16.0..sroa_idx20.i, align 2
  %.sroa.1722.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 138
  store i8 -1, ptr %.sroa.1722.0..sroa_idx.i, align 2
  %.sroa.1824.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 142
  store i8 -1, ptr %.sroa.1824.0..sroa_idx.i, align 2
  %.sroa.1926.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 146
  store i16 0, ptr %.sroa.1926.0..sroa_idx.i, align 2
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  store i8 -1, ptr %.sroa.20.0..sroa_idx.i, align 4
  %.sroa.2127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 -1, ptr %.sroa.2127.0..sroa_idx.i, align 8
  %.sroa.2228.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  store i8 -1, ptr %.sroa.2228.0..sroa_idx.i, align 4
  %.sroa.2329.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i16 0, ptr %.sroa.2329.0..sroa_idx.i, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 162
  store i8 -1, ptr %.sroa.24.0..sroa_idx.i, align 2
  %.sroa.2530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 166
  store i8 -1, ptr %.sroa.2530.0..sroa_idx.i, align 2
  %.sroa.2631.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 170
  store i8 -1, ptr %.sroa.2631.0..sroa_idx.i, align 2
  %.sroa.2732.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 174
  store i16 0, ptr %.sroa.2732.0..sroa_idx.i, align 2
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i8 -1, ptr %.sroa.28.0..sroa_idx.i, align 8
  %.sroa.2933.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store i8 -1, ptr %.sroa.2933.0..sroa_idx.i, align 4
  %.sroa.3034.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i8 -1, ptr %.sroa.3034.0..sroa_idx.i, align 8
  %.sroa.3135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i16 0, ptr %.sroa.3135.0..sroa_idx.i, align 4
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 190
  store i8 -1, ptr %.sroa.32.0..sroa_idx.i, align 2
  %.sroa.3336.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 194
  store i8 -1, ptr %.sroa.3336.0..sroa_idx.i, align 2
  %.sroa.3437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 198
  store i8 -1, ptr %.sroa.3437.0..sroa_idx.i, align 2
  %.sroa.3538.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 202
  store i16 0, ptr %.sroa.3538.0..sroa_idx.i, align 2
  %.sroa.36.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  store i8 -1, ptr %.sroa.36.0..sroa_idx.i, align 4
  %.sroa.3739.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i8 -1, ptr %.sroa.3739.0..sroa_idx.i, align 8
  %.sroa.3840.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  store i8 -1, ptr %.sroa.3840.0..sroa_idx.i, align 4
  %.sroa.3941.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i16 0, ptr %.sroa.3941.0..sroa_idx.i, align 8
  %.sroa.40.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 218
  store i8 -1, ptr %.sroa.40.0..sroa_idx.i, align 2
  %.sroa.4142.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 222
  store i8 -1, ptr %.sroa.4142.0..sroa_idx.i, align 2
  %.sroa.4243.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 226
  store i8 -1, ptr %.sroa.4243.0..sroa_idx.i, align 2
  %.sroa.4345.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 230
  store i16 0, ptr %.sroa.4345.0..sroa_idx.i, align 2
  %.sroa.4446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i8 -2, ptr %.sroa.4446.0..sroa_idx.i, align 8
  %.sroa.4547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 246
  store <4 x i8> <i8 0, i8 2, i8 2, i8 10>, ptr %.sroa.4547.0..sroa_idx.i, align 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13231
  %i.c = tail call noundef dereferenceable_or_null(49) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 49, i64 noundef range(i64 1, 9) 1) #43, !noalias !13231 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %_RINvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB3_5Error3rawReEB5_.exit

bb.c:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) 49) #46, !noalias !13232
  unreachable

_RINvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB3_5Error3rawReEB5_.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(49) @120, i64 range(i64 0, -9223372036854775808) 49, i1 false), !noalias !13233
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13234)
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.a, align 8, !alias.scope !13235, !noalias !13234
  store i64 49, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !13236
  %.sroa.4.0..sroa.42.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.4.0..sroa.42.0..sroa_idx.i.sroa_idx.i, align 8, !alias.scope !13236
  %.sroa.5.0..sroa.42.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 49, ptr %.sroa.5.0..sroa.42.0..sroa_idx.i.sroa_idx.i, align 8, !alias.scope !13236
  ret ptr %i.a
}

; Function Attrs: cold noreturn nounwind nonlazybind uwtable
define noalias noundef nonnull align 8 ptr @_RNvXs6_NtCsfu0rQaTkGUu_12clap_builder6deriveNtNtCsj6eKBz9Db1c_4core7convert10InfallibleNtB5_14FromArgMatches23update_from_arg_matches(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #23 {
bb.a:
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @343, ptr noundef nonnull inttoptr (i64 253 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #44
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs6_NtNtCsfu0rQaTkGUu_12clap_builder7builder10resettableINtNtCsj6eKBz9Db1c_4core6option6OptionReEINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettable(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef readonly captures(address_is_null) %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from.exit, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %2, i64 noundef 1, i64 noundef 1) #43
  %i.b = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noundef !11 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !nonnull !11, !noundef !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !13243
  br label %_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from.exit

_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from.exit: ; preds = %bb.b, %bb.c
  %i.f = phi i64 [ %i.b, %bb.c ], [ 0, %bb.b ]
  %i.g = add i64 %i.f, %2
  store i64 %i.g, ptr %.sroa.53.0..sroa_idx.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs6_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i8 12, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.f = call fastcc { ptr, i64 } @_RNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef dereferenceable(1) %.sroa.3.0..sroa_idx) #45 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 2 uses
  %.not.not.not.not.not.not = icmp ne ptr %i.g, null ; 2 uses
  br i1 %.not.not.not.not.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  %i.i = tail call noundef zeroext i1 @_RNvXsi_NtCsj6eKBz9Db1c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #43
  br i1 %i.i, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.not.not.not.not.not.not
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs6_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_11ValueParserINtNtCsj6eKBz9Db1c_4core7convert4FromINtNtNtB1k_3ops5range16RangeToInclusivexEE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13246
end_hunk_8
begin_hunk_9_@_RNvXsC_NtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matchesNtB5_7IndicesNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next:bb.a
_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i6 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.j = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.k = insertvalue { i64, i64 } %i.j, i64 %.sroa.3.0.i6, 1
  ret { i64, i64 } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define { i64, i64 } @_RNvXsD_NtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matchesNtB5_7IndicesNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #24 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13379)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !13380, !nonnull !11, !noundef !11 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !alias.scope !13380, !nonnull !11, !noundef !11
  %i.d = icmp eq ptr %i.c, %i.b
  br i1 %i.d, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCsfu0rQaTkGUu_12clap_builder.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !alias.scope !13380
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !13381, !noalias !13379, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !11
  %i.i = add i64 %i.h, -1
  store i64 %i.i, ptr %i.g, align 8
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCsfu0rQaTkGUu_12clap_builder.exit

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i6 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.j = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.k = insertvalue { i64, i64 } %i.j, i64 %.sroa.3.0.i6, 1
  ret { i64, i64 } %i.k
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvXsF_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_17FalseyValueParserNtB5_16TypedValueParser15possible_values(ptr noalias nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13384
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #43, !noalias !13384 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46, !noalias !13384
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store ptr @51, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @51, i64 96), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @58, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr getelementptr inbounds nuw (i8, ptr @58, i64 96), ptr %.sroa.6.0..sroa_idx, align 8
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @361, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXsF_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_17FalseyValueParserNtB5_16TypedValueParser9parse_ref(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [14 x i8], align 2                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #43
  %i.j = load i64, ptr %i.i, align 8, !range !14, !noundef !11
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13405)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13405
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13409)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !13410, !noalias !13406, !nonnull !11, !noundef !11 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !13410, !noalias !13406, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %i.o, 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %_RNCNvXsF_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_17FalseyValueParserNtB7_16TypedValueParser9parse_ref0Bb_.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i11, i64 16 ; 2 uses
  %i.s = add i64 %.sroa.8.0.i.i.i.i10, 1
  %i.t = icmp eq ptr %i.r, %i.p
  br i1 %i.t, label %_RNCNvXsF_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_17FalseyValueParserNtB7_16TypedValueParser9parse_ref0Bb_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.01.i.i.i.i11 = phi ptr [ %i.r, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %.sroa.8.0.i.i.i.i10 = phi i64 [ %i.s, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %.val.i.i.i.i = load i128, ptr %.sroa.0.01.i.i.i.i11, align 8, !noalias !13411
  %i.u = icmp eq i128 %.val.i.i.i.i, -100310019091698447603793328749864812255
  br i1 %i.u, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !13410, !noalias !13406, !noundef !11 ; 2 uses
  %i.x = icmp ult i64 %.sroa.8.0.i.i.i.i10, %i.w
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i.i10, i64 noundef %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !13411
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !13410, !noalias !13406, !nonnull !11, !noundef !11
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %.sroa.8.0.i.i.i.i10 ; 2 uses
  %.val5.i.i.i = load ptr, ptr %i.aa, align 8, !noalias !13412, !nonnull !11, !noundef !11
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val6.i.i.i = load ptr, ptr %i.ab, align 8, !noalias !13412, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !18, !invariant.load !11, !noalias !13412
  %i.ae = add nsw i64 %i.ad, -1
  %i.af = and i64 %i.ae, -16
  %i.ag = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13412
  %i.ai = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !invariant.load !11, !noalias !13412, !nonnull !11
  call void %i.aj(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noundef nonnull %i.ah) #45, !noalias !13412, !inline_history !13394
  %i.ak = load i128, ptr %i.f, align 16, !noalias !13412, !noundef !11
  %.not.i.i.i = icmp eq i128 %i.ak, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13412
  br i1 %.not.i.i.i, label %_RNCNvXsF_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_17FalseyValueParserNtB7_16TypedValueParser9parse_ref0Bb_.exit, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !13412
  unreachable

_RNCNvXsF_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_17FalseyValueParserNtB7_16TypedValueParser9parse_ref0Bb_.exit: ; preds = %bb.c, %bb.b, %bb.f
  %.sroa.0.0.i.i.i = phi ptr [ %i.ah, %bb.f ], [ null, %bb.b ], [ null, %bb.c ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  %..i.i = select i1 %.not.i.i, ptr @99, ptr %.sroa.0.0.i.i.i ; 5 uses
  store ptr %2, ptr %i.g, align 8, !alias.scope !13406, !noalias !13413
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %..i.i, ptr %i.al, align 8, !alias.scope !13406, !noalias !13413
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %i.am, align 8, !alias.scope !13406, !noalias !13413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13414
  store i64 0, ptr %i.e, align 8, !alias.scope !13415, !noalias !13414
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !13415, !noalias !13414
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !13415, !noalias !13414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13414
  %i.an = getelementptr inbounds nuw i8, ptr %..i.i, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.d, ptr noundef nonnull align 2 dereferenceable(14) %i.an, i64 14, i1 false), !noalias !13416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13414
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.an, align 2, !noalias !13416
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %..i.i, i64 32
  %.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.7.0..sroa_idx.i.i, align 2, !noalias !13416
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %..i.i, i64 36
  %.sroa.11.0.copyload.i.i = load i8, ptr %.sroa.11.0..sroa_idx.i.i, align 2, !noalias !13416
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %..i.i, i64 40
  %.sroa.15.0.copyload.i.i = load i16, ptr %.sroa.15.0..sroa_idx.i.i, align 2, !noalias !13416
  %.not.i.i1.i = icmp eq i8 %.sroa.0.0.copyload.i.i, -1
  %.not5.i.i.i = icmp eq i8 %.sroa.7.0.copyload.i.i, -1
  %or.cond.i.i = select i1 %.not.i.i1.i, i1 %.not5.i.i.i, i1 false
  %.not7.i.i.i = icmp eq i8 %.sroa.11.0.copyload.i.i, -1
  %or.cond35.i.i = select i1 %or.cond.i.i, i1 %.not7.i.i.i, i1 false
  %i.ao = icmp eq i16 %.sroa.15.0.copyload.i.i, 0
  %or.cond36.i.i = select i1 %or.cond35.i.i, i1 %i.ao, i1 false ; 2 uses
  %spec.select.i.i = select i1 %or.cond36.i.i, ptr inttoptr (i64 1 to ptr), ptr @139
  %spec.select38.i.i = select i1 %or.cond36.i.i, i64 0, i64 4
  store ptr %spec.select.i.i, ptr %i.c, align 8, !noalias !13414, !captures !22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %spec.select38.i.i, ptr %i.ap, align 8, !noalias !13414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13414
  store ptr %i.d, ptr %i.b, align 8, !noalias !13414
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs8_NtCscy4Zx2DW6cp_7anstyle5styleNtB5_12StyleDisplayNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !13414
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.aq, align 8, !noalias !13414
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !13414
  %i.ar = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @140, ptr noundef nonnull %i.b) #43, !noalias !13416, !inline_history !23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13414
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage20write_usage_no_title(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, ptr noalias nofree noundef align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8trim_end(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #43, !noalias !13417, !inline_history !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !13418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13414
  %i.as = call fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error12invalid_utf8B4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.h) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13405
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !11, !noundef !11
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13419
  call void @_RNvMs3_NtCs4wP2HXfJTCR_5alloc3stre12to_lowercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.ax) #43
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !13419, !nonnull !11, !noundef !11 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !13419, !noundef !11 ; 2 uses
  %i.bd = tail call fastcc noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB5_13SliceContains14slice_containsCsfu0rQaTkGUu_12clap_builder(ptr nonnull %i.ba, i64 %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @51) #43
  br i1 %i.bd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = tail call fastcc noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB5_13SliceContains14slice_containsCsfu0rQaTkGUu_12clap_builder(ptr nonnull %i.ba, i64 %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @58) #43
  %..i = select i1 %i.be, i8 0, i8 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.0.i = phi i8 [ %..i, %bb.j ], [ 1, %bb.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13420)
  %.val.i.i = load i64, ptr %i.a, align 8, !range !12, !alias.scope !13420, !noalias !13419, !noundef !11 ; 2 uses
  %i.bf = icmp eq i64 %.val.i.i, 0
  br i1 %i.bf, label %_RINvNtNtCsfu0rQaTkGUu_12clap_builder4util11str_to_bool11str_to_boolReEB6_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !13420
  br label %_RINvNtNtCsfu0rQaTkGUu_12clap_builder4util11str_to_bool11str_to_boolReEB6_.exit

_RINvNtNtCsfu0rQaTkGUu_12clap_builder4util11str_to_bool11str_to_boolReEB6_.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13419
  %.not = icmp eq i8 %.sroa.0.0.i, 2
  %. = select i1 %.not, i8 1, i8 %.sroa.0.0.i
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %_RINvNtNtCsfu0rQaTkGUu_12clap_builder4util11str_to_bool11str_to_boolReEB6_.exit
  %.sroa.02.1 = phi i8 [ %., %_RINvNtNtCsfu0rQaTkGUu_12clap_builder4util11str_to_bool11str_to_boolReEB6_.exit ], [ 0, %bb.h ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.02.1, ptr %i.bg, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNCNvXsF_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_17FalseyValueParserNtB7_16TypedValueParser9parse_ref0Bb_.exit
  %storemerge = phi i8 [ 0, %bb.m ], [ 1, %_RNCNvXsF_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_17FalseyValueParserNtB7_16TypedValueParser9parse_ref0Bb_.exit ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvXsI_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_18BoolishValueParserNtB5_16TypedValueParser15possible_values(ptr noalias nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13423
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #43, !noalias !13423 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46, !noalias !13423
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store ptr @51, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @51, i64 96), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @58, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr getelementptr inbounds nuw (i8, ptr @58, i64 96), ptr %.sroa.6.0..sroa_idx, align 8
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @362, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXsI_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_18BoolishValueParserNtB5_16TypedValueParser9parse_ref(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [14 x i8], align 2                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [16 x i8], align 16               ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #43
  %i.o = load i64, ptr %i.n, align 8, !range !14, !noundef !11
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13459)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !13459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !13459
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13463)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !13464, !noalias !13460, !nonnull !11, !noundef !11 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !13464, !noalias !13460, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %i.t, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %_RNCNvXsI_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_18BoolishValueParserNtB7_16TypedValueParser9parse_ref0Bb_.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i19, i64 16 ; 2 uses
  %i.x = add i64 %.sroa.8.0.i.i.i.i18, 1
  %i.y = icmp eq ptr %i.w, %i.u
  br i1 %i.y, label %_RNCNvXsI_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_18BoolishValueParserNtB7_16TypedValueParser9parse_ref0Bb_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.01.i.i.i.i19 = phi ptr [ %i.w, %bb.c ], [ %i.r, %bb.b ] ; 2 uses
  %.sroa.8.0.i.i.i.i18 = phi i64 [ %i.x, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %.val.i.i.i.i = load i128, ptr %.sroa.0.01.i.i.i.i19, align 8, !noalias !13465
  %i.z = icmp eq i128 %.val.i.i.i.i, -100310019091698447603793328749864812255
  br i1 %i.z, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !13464, !noalias !13460, !noundef !11 ; 2 uses
  %i.ac = icmp ult i64 %.sroa.8.0.i.i.i.i18, %i.ab
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i.i18, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !13465
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !13464, !noalias !13460, !nonnull !11, !noundef !11
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %.sroa.8.0.i.i.i.i18 ; 2 uses
  %.val5.i.i.i = load ptr, ptr %i.af, align 8, !noalias !13466, !nonnull !11, !noundef !11
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %.val6.i.i.i = load ptr, ptr %i.ag, align 8, !noalias !13466, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !18, !invariant.load !11, !noalias !13466
  %i.aj = add nsw i64 %i.ai, -1
  %i.ak = and i64 %i.aj, -16
  %i.al = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !13466
  %i.an = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !invariant.load !11, !noalias !13466, !nonnull !11
  call void %i.ao(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noundef nonnull %i.am) #45, !noalias !13466, !inline_history !13433
  %i.ap = load i128, ptr %i.k, align 16, !noalias !13466, !noundef !11
  %.not.i.i.i = icmp eq i128 %i.ap, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13466
  br i1 %.not.i.i.i, label %_RNCNvXsI_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_18BoolishValueParserNtB7_16TypedValueParser9parse_ref0Bb_.exit, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !13466
  unreachable

_RNCNvXsI_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_18BoolishValueParserNtB7_16TypedValueParser9parse_ref0Bb_.exit: ; preds = %bb.c, %bb.b, %bb.f
  %.sroa.0.0.i.i.i = phi ptr [ %i.am, %bb.f ], [ null, %bb.b ], [ null, %bb.c ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  %..i.i = select i1 %.not.i.i, ptr @99, ptr %.sroa.0.0.i.i.i ; 5 uses
  store ptr %2, ptr %i.l, align 8, !alias.scope !13460, !noalias !13467
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %..i.i, ptr %i.aq, align 8, !alias.scope !13460, !noalias !13467
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr null, ptr %i.ar, align 8, !alias.scope !13460, !noalias !13467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !13468
  store i64 0, ptr %i.j, align 8, !alias.scope !13469, !noalias !13468
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !13469, !noalias !13468
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !13469, !noalias !13468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13468
  %i.as = getelementptr inbounds nuw i8, ptr %..i.i, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.i, ptr noundef nonnull align 2 dereferenceable(14) %i.as, i64 14, i1 false), !noalias !13470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13468
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.as, align 2, !noalias !13470
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %..i.i, i64 32
  %.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.7.0..sroa_idx.i.i, align 2, !noalias !13470
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %..i.i, i64 36
  %.sroa.11.0.copyload.i.i = load i8, ptr %.sroa.11.0..sroa_idx.i.i, align 2, !noalias !13470
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %..i.i, i64 40
  %.sroa.15.0.copyload.i.i = load i16, ptr %.sroa.15.0..sroa_idx.i.i, align 2, !noalias !13470
  %.not.i.i1.i = icmp eq i8 %.sroa.0.0.copyload.i.i, -1
  %.not5.i.i.i = icmp eq i8 %.sroa.7.0.copyload.i.i, -1
  %or.cond.i.i = select i1 %.not.i.i1.i, i1 %.not5.i.i.i, i1 false
  %.not7.i.i.i = icmp eq i8 %.sroa.11.0.copyload.i.i, -1
  %or.cond35.i.i = select i1 %or.cond.i.i, i1 %.not7.i.i.i, i1 false
  %i.at = icmp eq i16 %.sroa.15.0.copyload.i.i, 0
  %or.cond36.i.i = select i1 %or.cond35.i.i, i1 %i.at, i1 false ; 2 uses
  %spec.select.i.i = select i1 %or.cond36.i.i, ptr inttoptr (i64 1 to ptr), ptr @139
  %spec.select38.i.i = select i1 %or.cond36.i.i, i64 0, i64 4
  store ptr %spec.select.i.i, ptr %i.h, align 8, !noalias !13468, !captures !22
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %spec.select38.i.i, ptr %i.au, align 8, !noalias !13468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13468
  store ptr %i.i, ptr %i.g, align 8, !noalias !13468
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs8_NtCscy4Zx2DW6cp_7anstyle5styleNtB5_12StyleDisplayNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !13468
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.av, align 8, !noalias !13468
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !13468
  %i.aw = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @140, ptr noundef nonnull %i.g) #43, !noalias !13470, !inline_history !23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13468
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage20write_usage_no_title(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8trim_end(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #43, !noalias !13471, !inline_history !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !13472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13468
  %i.ax = call fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error12invalid_utf8B4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.m) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !13459
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.ay, align 8
  br label %bb.y

bb.h:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !11 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13473
  call void @_RNvMs3_NtCs4wP2HXfJTCR_5alloc3stre12to_lowercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ba, i64 noundef %i.bc) #43
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !13473, !nonnull !11, !noundef !11 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !13473, !noundef !11 ; 2 uses
  %i.bh = tail call fastcc noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB5_13SliceContains14slice_containsCsfu0rQaTkGUu_12clap_builder(ptr nonnull %i.be, i64 %i.bg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @51) #43
  br i1 %i.bh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = tail call fastcc noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB5_13SliceContains14slice_containsCsfu0rQaTkGUu_12clap_builder(ptr nonnull %i.be, i64 %i.bg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @58) #43
  %..i = select i1 %i.bi, i8 0, i8 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.0.i = phi i8 [ %..i, %bb.i ], [ 1, %bb.h ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13474)
  %.val.i.i = load i64, ptr %i.f, align 8, !range !12, !alias.scope !13474, !noalias !13473, !noundef !11 ; 2 uses
  %i.bj = icmp eq i64 %.val.i.i, 0
  br i1 %i.bj, label %_RINvNtNtCsfu0rQaTkGUu_12clap_builder4util11str_to_bool11str_to_boolReEB6_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !13474
  br label %_RINvNtNtCsfu0rQaTkGUu_12clap_builder4util11str_to_bool11str_to_boolReEB6_.exit

_RINvNtNtCsfu0rQaTkGUu_12clap_builder4util11str_to_bool11str_to_boolReEB6_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13473
  %.not = icmp eq i8 %.sroa.0.0.i, 2
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RINvNtNtCsfu0rQaTkGUu_12clap_builder4util11str_to_bool11str_to_boolReEB6_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.0.0.i, ptr %i.bk, align 1
  br label %bb.y

bb.m:                                             ; preds = %_RINvNtNtCsfu0rQaTkGUu_12clap_builder4util11str_to_bool11str_to_boolReEB6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13475
  store i64 0, ptr %i.c, align 8, !noalias !13475
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !13475
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !13475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13475
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.bl, align 8, !noalias !13475
  store ptr %i.c, ptr %i.b, align 8, !noalias !13475
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @204, ptr %i.bm, align 8, !noalias !13475
  %i.bn = call noundef zeroext i1 @_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #43, !noalias !13476
  br i1 %i.bn, label %bb.o, label %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i, !prof !19

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @356, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @358) #44, !noalias !13475
  unreachable

_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i: ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !13477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13475
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13478)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13479
  %i.bo = tail call noundef dereferenceable_or_null(3) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 3, i64 noundef range(i64 1, 9) 1) #43, !noalias !13479 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.q, label %_RNCNCNvXsI_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB9_18BoolishValueParserNtB9_16TypedValueParser9parse_refs_0s_0Bd_.exit.i

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 3) #46, !noalias !13480
  unreachable

_RNCNCNvXsI_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB9_18BoolishValueParserNtB9_16TypedValueParser9parse_refs_0s_0Bd_.exit.i: ; preds = %bb.p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bo, i8 46, i64 3, i1 false), !noalias !13480
  store i64 3, ptr %i.e, align 8, !alias.scope !13478, !noalias !13477
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.bo, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !alias.scope !13478, !noalias !13477
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !13478, !noalias !13477
  br label %bb.r

bb.r:                                             ; preds = %_RNCNCNvXsI_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB9_18BoolishValueParserNtB9_16TypedValueParser9parse_refs_0s_0Bd_.exit.i, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13477
  %.not.i.i7 = icmp slt i64 %i.bc, 0
  br i1 %.not.i.i7, label %bb.t, label %bb.s, !prof !21

bb.s:                                             ; preds = %bb.r
  %i.bq = icmp eq i64 %i.bc, 0
  br i1 %i.bq, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread25.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.s
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13481
  %i.br = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bc, i64 noundef range(i64 1, 9) 1) #43, !noalias !13481 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i, %bb.r
  %.sroa.4.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.r ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.bc) #46, !noalias !13477
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread25.i: ; preds = %bb.u, %bb.s
  %i.bt = phi ptr [ %i.br, %bb.u ], [ inttoptr (i64 1 to ptr), %bb.s ]
  store i64 %i.bc, ptr %i.d, align 8, !noalias !13477
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bt, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !13477
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.bc, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !13477
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13482
  %i.bu = call noundef dereferenceable_or_null(23) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 23, i64 noundef range(i64 1, 9) 1) #43, !noalias !13482 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.v, label %bb.w

bb.u:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull align 1 %i.ba, i64 %i.bc, i1 false), !noalias !13477
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread25.i

bb.v:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread25.i
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 23) #46, !noalias !13477
  unreachable

bb.w:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread25.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.bu, ptr noundef nonnull align 1 dereferenceable(23) @87, i64 23, i1 false), !noalias !13477
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13483
  %i.bw = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef range(i64 1, 9) 8) #43, !noalias !13483 ; 5 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.x, label %_RNCNvXsI_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_18BoolishValueParserNtB7_16TypedValueParser9parse_refs_0Bb_.exit, !prof !33

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #46, !noalias !13483
  unreachable

_RNCNvXsI_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_18BoolishValueParserNtB7_16TypedValueParser9parse_refs_0Bb_.exit: ; preds = %bb.w
  store i64 23, ptr %i.bw, align 8, !noalias !13477
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bu, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !13477
  %.sroa.5.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 23, ptr %.sroa.5.0..sroa_idx16.i, align 8, !noalias !13477
  %i.by = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error16value_validationB4_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull %i.bw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @89) #43, !noalias !13477 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13477
  %i.bz = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error8with_cmdB4_(ptr noalias noundef nonnull align 8 %i.by, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2) #43, !noalias !13477 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %i.ca, align 8
  br label %bb.y

bb.y:                                             ; preds = %_RNCNvXsI_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_18BoolishValueParserNtB7_16TypedValueParser9parse_refs_0Bb_.exit, %bb.l, %_RNCNvXsI_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_18BoolishValueParserNtB7_16TypedValueParser9parse_ref0Bb_.exit
  %.sink = phi i8 [ 1, %_RNCNvXsI_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_18BoolishValueParserNtB7_16TypedValueParser9parse_refs_0Bb_.exit ], [ 0, %bb.l ], [ 1, %_RNCNvXsI_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_18BoolishValueParserNtB7_16TypedValueParser9parse_ref0Bb_.exit ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCsj6eKBz9Db1c_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @363, i64 noundef 5) #43
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXsL_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_25NonEmptyStringValueParserNtB5_16TypedValueParser9parse_ref(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [14 x i8], align 2                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [16 x i8], align 16               ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = icmp eq i64 %5, 0
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #43
  %i.o = load i64, ptr %i.l, align 8, !range !14, !noundef !11
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.not10 = icmp eq ptr %3, null
  br i1 %.not10, label %bb.q, label %bb.o

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13513)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !13513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !13513
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13517)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !13518, !noalias !13514, !nonnull !11, !noundef !11 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !13518, !noalias !13514, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %i.t, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %_RNCNvXsL_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_25NonEmptyStringValueParserNtB7_16TypedValueParser9parse_refs_0Bb_.exit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i36, i64 16 ; 2 uses
  %i.x = add i64 %.sroa.8.0.i.i.i.i35, 1
  %i.y = icmp eq ptr %i.w, %i.u
  br i1 %i.y, label %_RNCNvXsL_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_25NonEmptyStringValueParserNtB7_16TypedValueParser9parse_refs_0Bb_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.0.01.i.i.i.i36 = phi ptr [ %i.w, %bb.e ], [ %i.r, %bb.d ] ; 2 uses
  %.sroa.8.0.i.i.i.i35 = phi i64 [ %i.x, %bb.e ], [ 0, %bb.d ] ; 4 uses
  %.val.i.i.i.i = load i128, ptr %.sroa.0.01.i.i.i.i36, align 8, !noalias !13519
  %i.z = icmp eq i128 %.val.i.i.i.i, -100310019091698447603793328749864812255
  br i1 %i.z, label %bb.f, label %bb.e

bb.f:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !13518, !noalias !13514, !noundef !11 ; 2 uses
  %i.ac = icmp ult i64 %.sroa.8.0.i.i.i.i35, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i.i35, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !13519
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !13518, !noalias !13514, !nonnull !11, !noundef !11
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %.sroa.8.0.i.i.i.i35 ; 2 uses
  %.val5.i.i.i = load ptr, ptr %i.af, align 8, !noalias !13520, !nonnull !11, !noundef !11
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %.val6.i.i.i = load ptr, ptr %i.ag, align 8, !noalias !13520, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !18, !invariant.load !11, !noalias !13520
  %i.aj = add nsw i64 %i.ai, -1
  %i.ak = and i64 %i.aj, -16
  %i.al = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13520
  %i.an = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !invariant.load !11, !noalias !13520, !nonnull !11
  call void %i.ao(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, ptr noundef nonnull %i.am) #45, !noalias !13520, !inline_history !13493
  %i.ap = load i128, ptr %i.i, align 16, !noalias !13520, !noundef !11
  %.not.i.i.i = icmp eq i128 %i.ap, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13520
  br i1 %.not.i.i.i, label %_RNCNvXsL_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_25NonEmptyStringValueParserNtB7_16TypedValueParser9parse_refs_0Bb_.exit, label %bb.i, !prof !16

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !13520
  unreachable

_RNCNvXsL_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_25NonEmptyStringValueParserNtB7_16TypedValueParser9parse_refs_0Bb_.exit: ; preds = %bb.e, %bb.d, %bb.h
  %.sroa.0.0.i.i.i = phi ptr [ %i.am, %bb.h ], [ null, %bb.d ], [ null, %bb.e ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  %..i.i = select i1 %.not.i.i, ptr @99, ptr %.sroa.0.0.i.i.i ; 5 uses
  store ptr %2, ptr %i.j, align 8, !alias.scope !13514, !noalias !13521
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %..i.i, ptr %i.aq, align 8, !alias.scope !13514, !noalias !13521
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.ar, align 8, !alias.scope !13514, !noalias !13521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13522
  store i64 0, ptr %i.h, align 8, !alias.scope !13523, !noalias !13522
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !13523, !noalias !13522
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !13523, !noalias !13522
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13522
  %i.as = getelementptr inbounds nuw i8, ptr %..i.i, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.g, ptr noundef nonnull align 2 dereferenceable(14) %i.as, i64 14, i1 false), !noalias !13524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13522
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.as, align 2, !noalias !13524
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %..i.i, i64 32
  %.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.7.0..sroa_idx.i.i, align 2, !noalias !13524
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %..i.i, i64 36
  %.sroa.11.0.copyload.i.i = load i8, ptr %.sroa.11.0..sroa_idx.i.i, align 2, !noalias !13524
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %..i.i, i64 40
  %.sroa.15.0.copyload.i.i = load i16, ptr %.sroa.15.0..sroa_idx.i.i, align 2, !noalias !13524
  %.not.i.i1.i = icmp eq i8 %.sroa.0.0.copyload.i.i, -1
  %.not5.i.i.i = icmp eq i8 %.sroa.7.0.copyload.i.i, -1
  %or.cond.i.i = select i1 %.not.i.i1.i, i1 %.not5.i.i.i, i1 false
  %.not7.i.i.i = icmp eq i8 %.sroa.11.0.copyload.i.i, -1
  %or.cond35.i.i = select i1 %or.cond.i.i, i1 %.not7.i.i.i, i1 false
  %i.at = icmp eq i16 %.sroa.15.0.copyload.i.i, 0
  %or.cond36.i.i = select i1 %or.cond35.i.i, i1 %i.at, i1 false ; 2 uses
  %spec.select.i.i = select i1 %or.cond36.i.i, ptr inttoptr (i64 1 to ptr), ptr @139
  %spec.select38.i.i = select i1 %or.cond36.i.i, i64 0, i64 4
  store ptr %spec.select.i.i, ptr %i.f, align 8, !noalias !13522, !captures !22
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %spec.select38.i.i, ptr %i.au, align 8, !noalias !13522
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13522
  store ptr %i.g, ptr %i.e, align 8, !noalias !13522
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs8_NtCscy4Zx2DW6cp_7anstyle5styleNtB5_12StyleDisplayNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !13522
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.av, align 8, !noalias !13522
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !13522
  %i.aw = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @140, ptr noundef nonnull %i.e) #43, !noalias !13524, !inline_history !23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13522
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage20write_usage_no_title(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j, ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8trim_end(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #43, !noalias !13525, !inline_history !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !13526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13522
  %i.ax = call fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error12invalid_utf8B4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.k) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13513
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.ay, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.n

bb.j:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !11, !noundef !11
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !11 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not.i = icmp slt i64 %i.bc, 0
  br i1 %.not.i, label %bb.l, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread20, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.k
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13527
  %i.be = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bc, i64 noundef range(i64 1, 9) 1) #43, !noalias !13527 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.j, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.j ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.bc) #46
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread20: ; preds = %bb.k, %bb.m
  %i.bg = phi ptr [ %i.be, %bb.m ], [ inttoptr (i64 1 to ptr), %bb.k ]
  store i64 %i.bc, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bg, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bc, ptr %.sroa.58.0..sroa_idx, align 8
  br label %bb.n

bb.m:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr nonnull align 1 %i.ba, i64 %i.bc, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread20

bb.n:                                             ; preds = %bb.s, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread20, %_RNCNvXsL_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_25NonEmptyStringValueParserNtB7_16TypedValueParser9parse_refs_0Bb_.exit
  ret void

bb.o:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13528
  store i64 0, ptr %i.d, align 8, !noalias !13528
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !13528
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !13528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13528
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1610612768, ptr %i.bh, align 8, !noalias !13528
  store ptr %i.d, ptr %i.c, align 8, !noalias !13528
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @204, ptr %i.bi, align 8, !noalias !13528
  %i.bj = call noundef zeroext i1 @_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #43, !noalias !13529
  br i1 %i.bj, label %bb.p, label %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit, !prof !19

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @356, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @358) #44, !noalias !13528
  unreachable

_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit: ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13528
  br label %bb.s

bb.q:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13530)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !13531
  %i.bk = tail call noundef dereferenceable_or_null(3) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 3, i64 noundef range(i64 1, 9) 1) #43, !noalias !13531 ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.r, label %_RNCNvXsL_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_25NonEmptyStringValueParserNtB7_16TypedValueParser9parse_ref0Bb_.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 3) #46, !noalias !13530
  unreachable

_RNCNvXsL_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_25NonEmptyStringValueParserNtB7_16TypedValueParser9parse_ref0Bb_.exit: ; preds = %bb.q
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bk, i8 46, i64 3, i1 false), !noalias !13530
  store i64 3, ptr %i.m, align 8, !alias.scope !13530
  %.sroa.4.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.bk, ptr %.sroa.4.0..sroa_idx.i11, align 8, !alias.scope !13530
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !13530
  br label %bb.s

bb.s:                                             ; preds = %_RNCNvXsL_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_25NonEmptyStringValueParserNtB7_16TypedValueParser9parse_ref0Bb_.exit, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13532
  store i64 0, ptr %i.b, align 8, !noalias !13532
  %.sroa.4.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i12, align 8, !noalias !13532
  %.sroa.5.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i13, align 8, !noalias !13532
  %i.bm = call fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error13invalid_valueB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %i.bn, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.n
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionIBy_NtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtB7_3fmt5Debug3fmtBU_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !14, !noundef !11
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @366, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @365) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @364, i64 noundef 4) #43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_3fmt5Debug3fmtBQ_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !11
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @366, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @368) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @364, i64 noundef 4) #43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parser11ValueParserENtNtB7_3fmt5Debug3fmtBQ_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !25, !noundef !11
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @366, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @369) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @364, i64 noundef 4) #43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtB7_3fmt5Debug3fmtBQ_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !11
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @366, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @364, i64 noundef 4) #43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder5range10ValueRangeENtNtB7_3fmt5Debug3fmtBQ_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !14, !noundef !11
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @366, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @370) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @364, i64 noundef 4) #43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6action9ArgActionENtNtB7_3fmt5Debug3fmtBQ_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !53, !noundef !11
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @366, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @371) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @364, i64 noundef 4) #43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptioncENtNtB7_3fmt5Debug3fmtCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !45, !noundef !11
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @366, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @332) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @364, i64 noundef 4) #43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionjENtNtB7_3fmt5Debug3fmtCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !14, !noundef !11
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @366, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @372) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @364, i64 noundef 4) #43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
end_hunk_9
begin_hunk_10_@_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB5_13SliceContains14slice_containsCsfu0rQaTkGUu_12clap_builder:.lr.ph.i
  br i1 %i.f, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB1K_13SliceContains14slice_contains0ECsfu0rQaTkGUu_12clap_builder.exit, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i.1

_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i.1: ; preds = %.split.i.1, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i
  %i.g = getelementptr i8, ptr %0, i64 40
  %.val3.i.2 = load i64, ptr %i.g, align 8, !noalias !14694, !noundef !11
  %i.h = icmp eq i64 %.val3.i.2, %.8.val
  br i1 %i.h, label %.split.i.2, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i.2

.split.i.2:                                       ; preds = %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i.1
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i.2 = load ptr, ptr %.ptr.2, align 8, !noalias !14694, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.2 = tail call i32 @bcmp(ptr nonnull readonly %.val2.i.2, ptr nonnull readonly %.0.val, i64 %.8.val), !alias.scope !14695, !noalias !14694
  %i.i = icmp eq i32 %bcmp.i.i.i.i.2, 0
  br i1 %i.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB1K_13SliceContains14slice_contains0ECsfu0rQaTkGUu_12clap_builder.exit, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i.2

_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i.2: ; preds = %.split.i.2, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i.1
  %i.j = getelementptr i8, ptr %0, i64 56
  %.val3.i.3 = load i64, ptr %i.j, align 8, !noalias !14694, !noundef !11
  %i.k = icmp eq i64 %.val3.i.3, %.8.val
  br i1 %i.k, label %.split.i.3, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i.3

.split.i.3:                                       ; preds = %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i.2
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val2.i.3 = load ptr, ptr %.ptr.3, align 8, !noalias !14694, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.3 = tail call i32 @bcmp(ptr nonnull readonly %.val2.i.3, ptr nonnull readonly %.0.val, i64 %.8.val), !alias.scope !14695, !noalias !14694
  %i.l = icmp eq i32 %bcmp.i.i.i.i.3, 0
  br i1 %i.l, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB1K_13SliceContains14slice_contains0ECsfu0rQaTkGUu_12clap_builder.exit, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i.3

_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i.3: ; preds = %.split.i.3, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i.2
  %i.m = getelementptr i8, ptr %0, i64 72
  %.val3.i.4 = load i64, ptr %i.m, align 8, !noalias !14694, !noundef !11
  %i.n = icmp eq i64 %.val3.i.4, %.8.val
  br i1 %i.n, label %.split.i.4, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i.4

.split.i.4:                                       ; preds = %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i.3
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val2.i.4 = load ptr, ptr %.ptr.4, align 8, !noalias !14694, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.4 = tail call i32 @bcmp(ptr nonnull readonly %.val2.i.4, ptr nonnull readonly %.0.val, i64 %.8.val), !alias.scope !14695, !noalias !14694
  %i.o = icmp eq i32 %bcmp.i.i.i.i.4, 0
  br i1 %i.o, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB1K_13SliceContains14slice_contains0ECsfu0rQaTkGUu_12clap_builder.exit, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i.4

_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i.4: ; preds = %.split.i.4, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i.3
  %i.p = getelementptr i8, ptr %0, i64 88
  %.val3.i.5 = load i64, ptr %i.p, align 8, !noalias !14694, !noundef !11
  %i.q = icmp eq i64 %.val3.i.5, %.8.val
  br i1 %i.q, label %.split.i.5, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i.5

.split.i.5:                                       ; preds = %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i.4
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val2.i.5 = load ptr, ptr %.ptr.5, align 8, !noalias !14694, !nonnull !11, !noundef !11
  %bcmp.i.i.i.i.5 = tail call i32 @bcmp(ptr nonnull readonly %.val2.i.5, ptr nonnull readonly %.0.val, i64 %.8.val), !alias.scope !14695, !noalias !14694
  %i.r = icmp eq i32 %bcmp.i.i.i.i.5, 0
  br i1 %i.r, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB1K_13SliceContains14slice_contains0ECsfu0rQaTkGUu_12clap_builder.exit, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i.5

_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i.5: ; preds = %.split.i.5, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i.4
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB1K_13SliceContains14slice_contains0ECsfu0rQaTkGUu_12clap_builder.exit

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB1K_13SliceContains14slice_contains0ECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i.5, %.split.i.5, %.split.i.4, %.split.i.3, %.split.i.2, %.split.i.1, %.split.i
  %.lcssa.ph.i = phi i1 [ true, %.split.i ], [ false, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csfu0rQaTkGUu_12clap_builder.exit.backedge.i.5 ], [ true, %.split.i.1 ], [ true, %.split.i.5 ], [ true, %.split.i.2 ], [ true, %.split.i.4 ], [ true, %.split.i.3 ]
  ret i1 %.lcssa.ph.i
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsg_NtCs9ma7mAhtjN1_8anstream6streamNtNtNtCsaKJjC64KgbL_3std2io5stdio10StderrLockNtB5_10IsTerminal11is_terminal(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef i32 @isatty(i32 noundef 2) #43
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsi_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_10StdoutLockNtNtNtCsj6eKBz9Db1c_4core2io5write5Write17is_write_vectored(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !17, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered10linewriter10LineWriterNtNtNtCsaKJjC64KgbL_3std2io5stdio9StdoutRawEE10borrow_mutCsfu0rQaTkGUu_12clap_builder.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @439) #44
  unreachable

_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered10linewriter10LineWriterNtNtNtCsaKJjC64KgbL_3std2io5stdio9StdoutRawEE10borrow_mutCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.a
  ret i1 true
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXsi_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_19OsStringValueParserNtB5_16TypedValueParser9parse_ref(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp slt i64 %5, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %5, 0
  br i1 %i.a, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread12, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !14698
  %i.b = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef range(i64 1, 9) 1) #43, !noalias !14698 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.a ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %5) #46
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread12: ; preds = %bb.b, %bb.d
  %i.d = phi ptr [ %i.b, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.b ]
  store i64 %5, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %5, ptr %.sroa.55.0..sroa_idx, align 8
  ret void

bb.d:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull align 1 %4, i64 %5, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread12
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXsl_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_18PathBufValueParserNtB5_16TypedValueParser5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(600) %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !11
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.f, label %bb.d

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.i, %bb.h, %bb.b
  ret void

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14712
  store i64 0, ptr %i.d, align 8, !noalias !14712
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !14712
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !14712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14712
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1610612768, ptr %i.i, align 8, !noalias !14712
  store ptr %i.d, ptr %i.c, align 8, !noalias !14712
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @204, ptr %i.j, align 8, !noalias !14712
  %i.k = call noundef zeroext i1 @_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #43, !noalias !14713
  br i1 %i.k, label %bb.e, label %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit, !prof !19

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @356, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @358) #44, !noalias !14712
  unreachable

_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14712
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14714)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !14715
  %i.l = tail call noundef dereferenceable_or_null(3) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 3, i64 noundef range(i64 1, 9) 1) #43, !noalias !14715 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %_RNCNvXsl_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_18PathBufValueParserNtB7_16TypedValueParser5parse0Bb_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 3) #46, !noalias !14714
  unreachable

_RNCNvXsl_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_18PathBufValueParserNtB7_16TypedValueParser5parse0Bb_.exit: ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.l, i8 46, i64 3, i1 false), !noalias !14714
  store i64 3, ptr %i.e, align 8, !alias.scope !14714
  %.sroa.4.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i2, align 8, !alias.scope !14714
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !14714
  br label %bb.h

bb.h:                                             ; preds = %_RNCNvXsl_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_18PathBufValueParserNtB7_16TypedValueParser5parse0Bb_.exit, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14716
  store i64 0, ptr %i.b, align 8, !noalias !14716
  %.sroa.4.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i3, align 8, !noalias !14716
  %.sroa.5.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i4, align 8, !noalias !14716
  %i.n = call fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error13invalid_valueB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !14717)
  %.val.i = load i64, ptr %4, align 8, !range !12, !alias.scope !14717, !noundef !11 ; 2 uses
  %i.p = icmp eq i64 %.val.i, 0
  br i1 %i.p, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val1.i = load ptr, ptr %i.q, align 8, !alias.scope !14717, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !14717
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXsl_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_18PathBufValueParserNtB5_16TypedValueParser9parse_ref(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp slt i64 %5, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %5, 0
  br i1 %i.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread9, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !14720
  %i.c = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef range(i64 1, 9) 1) #43, !noalias !14720 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.a ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %5) #46
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread9: ; preds = %bb.b, %bb.d
  %i.e = phi ptr [ %i.c, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.b ]
  store i64 %5, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RNvXsl_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_18PathBufValueParserNtB5_16TypedValueParser5parse(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree nonnull readonly captures(address, read_provenance) poison, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr nonnull align 1 %4, i64 %5, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread9
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !11
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsj6eKBz9Db1c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #43
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtBL_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14726
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #43, !noalias !14727
  %.idx.i = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_5Debug3fmtBB_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14728
  store ptr %.sroa.0.05.i.i, ptr %i.a, align 8, !noalias !14728, !captures !22
  %i.j = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20) #43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14728
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_5Debug3fmtBB_.exit, label %.lr.ph.i.i

_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_5Debug3fmtBB_.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14726
  ret i1 %i.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtBL_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14734
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #43, !noalias !14735
  %.idx.i = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdNtB5_5Debug3fmtBB_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14736
  store ptr %.sroa.0.05.i.i, ptr %i.a, align 8, !noalias !14736, !captures !22
  %i.j = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21) #43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14736
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdNtB5_5Debug3fmtBB_.exit, label %.lr.ph.i.i

_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdNtB5_5Debug3fmtBB_.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14734
  ret i1 %i.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtBL_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14742
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #43, !noalias !14743
  %.idx.i = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrNtB5_5Debug3fmtBB_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14744
  store ptr %.sroa.0.05.i.i, ptr %i.a, align 8, !noalias !14744, !captures !22
  %i.j = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23) #43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14744
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrNtB5_5Debug3fmtBB_.exit, label %.lr.ph.i.i

_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrNtB5_5Debug3fmtBB_.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14742
  ret i1 %i.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtBL_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14750
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #43, !noalias !14751
  %.idx.i = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtB5_5Debug3fmtBB_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14752
  store ptr %.sroa.0.05.i.i, ptr %i.a, align 8, !noalias !14752, !captures !22
  %i.j = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24) #43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14752
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtB5_5Debug3fmtBB_.exit, label %.lr.ph.i.i

_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrNtB5_5Debug3fmtBB_.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14750
  ret i1 %i.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtB2e_3fmt5Debug3fmtBM_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
end_hunk_10
begin_hunk_11_@_RNvXsr_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_16TypedValueParser9parse_ref:bb.a
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.a ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %5) #46
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread9: ; preds = %bb.b, %bb.d
  %i.e = phi ptr [ %i.c, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.b ]
  store i64 %5, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RNvXsr_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_16TypedValueParser5parse(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr nonnull align 1 %4, i64 %5, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread9
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXss_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_10StderrLockNtNtNtCsj6eKBz9Db1c_4core2io5write5Write17is_write_vectored(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !17, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtCsaKJjC64KgbL_3std2io5stdio9StderrRawE10borrow_mutCsfu0rQaTkGUu_12clap_builder.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @448) #44
  unreachable

_RNvMst_NtCsj6eKBz9Db1c_4core4cellINtB5_7RefCellNtNtNtCsaKJjC64KgbL_3std2io5stdio9StderrRawE10borrow_mutCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.a
  ret i1 true
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXsu_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParserhENtB5_16TypedValueParser9parse_refB9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [19 x i8], align 1                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 16 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [14 x i8], align 2                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 9 uses
  %i.w = alloca [16 x i8], align 16               ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 2 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [8 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #43
  %i.ah = load i64, ptr %i.aa, align 8, !range !14, !noundef !11
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15016)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !15016
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !15016
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15020)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !15021, !noalias !15017, !nonnull !11, !noundef !11 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !15021, !noalias !15017, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %i.am, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx
  %i.ao = icmp eq i64 %i.am, 0
  br i1 %i.ao, label %_RNCNvXsu_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParserhENtB7_16TypedValueParser9parse_refs0_0Bb_.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i196, i64 16 ; 2 uses
  %i.aq = add i64 %.sroa.8.0.i.i.i.i195, 1
  %i.ar = icmp eq ptr %i.ap, %i.an
  br i1 %i.ar, label %_RNCNvXsu_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParserhENtB7_16TypedValueParser9parse_refs0_0Bb_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.01.i.i.i.i196 = phi ptr [ %i.ap, %bb.c ], [ %i.ak, %bb.b ] ; 2 uses
  %.sroa.8.0.i.i.i.i195 = phi i64 [ %i.aq, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %.val.i.i.i.i = load i128, ptr %.sroa.0.01.i.i.i.i196, align 8, !noalias !15022
  %i.as = icmp eq i128 %.val.i.i.i.i, -100310019091698447603793328749864812255
  br i1 %i.as, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !15021, !noalias !15017, !noundef !11 ; 2 uses
  %i.av = icmp ult i64 %.sroa.8.0.i.i.i.i195, %i.au
  br i1 %i.av, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i.i195, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !15022, !inline_history !14913
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !15021, !noalias !15017, !nonnull !11, !noundef !11
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %.sroa.8.0.i.i.i.i195 ; 2 uses
  %.val5.i.i.i = load ptr, ptr %i.ay, align 8, !noalias !15023, !nonnull !11, !noundef !11
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %.val6.i.i.i = load ptr, ptr %i.az, align 8, !noalias !15023, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !18, !invariant.load !11, !noalias !15023
  %i.bc = add nsw i64 %i.bb, -1
  %i.bd = and i64 %i.bc, -16
  %i.be = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !15023
  %i.bg = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !invariant.load !11, !noalias !15023, !nonnull !11
  call void %i.bh(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.w, ptr noundef nonnull %i.bf) #45, !noalias !15023, !inline_history !14914
  %i.bi = load i128, ptr %i.w, align 16, !noalias !15023, !noundef !11
  %.not.i.i.i = icmp eq i128 %i.bi, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !15023
  br i1 %.not.i.i.i, label %_RNCNvXsu_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParserhENtB7_16TypedValueParser9parse_refs0_0Bb_.exit, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !15023, !inline_history !14913
  unreachable

_RNCNvXsu_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParserhENtB7_16TypedValueParser9parse_refs0_0Bb_.exit: ; preds = %bb.c, %bb.b, %bb.f
  %.sroa.0.0.i.i.i = phi ptr [ %i.bf, %bb.f ], [ null, %bb.b ], [ null, %bb.c ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  %..i.i = select i1 %.not.i.i, ptr @99, ptr %.sroa.0.0.i.i.i ; 5 uses
  store ptr %2, ptr %i.x, align 8, !alias.scope !15017, !noalias !15024
  %i.bj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %..i.i, ptr %i.bj, align 8, !alias.scope !15017, !noalias !15024
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr null, ptr %i.bk, align 8, !alias.scope !15017, !noalias !15024
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !15025
  store i64 0, ptr %i.v, align 8, !alias.scope !15026, !noalias !15025
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !15026, !noalias !15025
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !15026, !noalias !15025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !15025
  %i.bl = getelementptr inbounds nuw i8, ptr %..i.i, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.u, ptr noundef nonnull align 2 dereferenceable(14) %i.bl, i64 14, i1 false), !noalias !15027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !15025
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.bl, align 2, !noalias !15027
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %..i.i, i64 32
  %.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.7.0..sroa_idx.i.i, align 2, !noalias !15027
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %..i.i, i64 36
  %.sroa.11.0.copyload.i.i = load i8, ptr %.sroa.11.0..sroa_idx.i.i, align 2, !noalias !15027
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %..i.i, i64 40
  %.sroa.15.0.copyload.i.i = load i16, ptr %.sroa.15.0..sroa_idx.i.i, align 2, !noalias !15027
  %.not.i.i1.i = icmp eq i8 %.sroa.0.0.copyload.i.i, -1
  %.not5.i.i.i = icmp eq i8 %.sroa.7.0.copyload.i.i, -1
  %or.cond.i.i = select i1 %.not.i.i1.i, i1 %.not5.i.i.i, i1 false
  %.not7.i.i.i = icmp eq i8 %.sroa.11.0.copyload.i.i, -1
  %or.cond35.i.i = select i1 %or.cond.i.i, i1 %.not7.i.i.i, i1 false
  %i.bm = icmp eq i16 %.sroa.15.0.copyload.i.i, 0
  %or.cond36.i.i = select i1 %or.cond35.i.i, i1 %i.bm, i1 false ; 2 uses
  %spec.select.i.i = select i1 %or.cond36.i.i, ptr inttoptr (i64 1 to ptr), ptr @139
  %spec.select38.i.i = select i1 %or.cond36.i.i, i64 0, i64 4
  store ptr %spec.select.i.i, ptr %i.t, align 8, !noalias !15025, !captures !22
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %spec.select38.i.i, ptr %i.bn, align 8, !noalias !15025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !15025
  store ptr %i.u, ptr %i.s, align 8, !noalias !15025
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs8_NtCscy4Zx2DW6cp_7anstyle5styleNtB5_12StyleDisplayNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !15025
  %i.bo = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.bo, align 8, !noalias !15025
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !15025
  %i.bp = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @140, ptr noundef nonnull %i.s) #43, !noalias !15027, !inline_history !14921 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !15025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !15025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !15025
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage20write_usage_no_title(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x, ptr noalias nofree noundef align 8 dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8trim_end(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #43, !noalias !15028, !inline_history !14921
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !15029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !15025
  %i.bq = call fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error12invalid_utf8B4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.y) #43, !inline_history !14913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !15016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !15016
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bq, ptr %i.br, align 8
  store i8 1, ptr %0, align 8
  br label %bb.bz

bb.h:                                             ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !11 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  switch i64 %i.bv, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.bw = load i8, ptr %i.bt, align 1, !alias.scope !15030, !noalias !15031, !noundef !11 ; 2 uses
  switch i8 %i.bw, label %bb.j [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.h
  %.pr.i = load i8, ptr %i.bt, align 1, !alias.scope !15030, !noalias !15031
  br label %bb.j

bb.j:                                             ; preds = %thread-pre-split.i, %bb.i
  %i.bx = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.bw, %bb.i ]
  switch i8 %i.bx, label %bb.q [
    i8 43, label %bb.k
    i8 45, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bz = add nsw i64 %i.bv, -1
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 1 ; 2 uses
  %i.cb = add nsw i64 %i.bv, -1                   ; 3 uses
  %i.cc = icmp samesign ult i64 %i.bv, 17
  br i1 %i.cc, label %.preheader114.i, label %.lr.ph.i

.preheader114.i:                                  ; preds = %bb.l
  %.not103137.i = icmp eq i64 %i.cb, 0
  br i1 %.not103137.i, label %_RNvMsr_NtCsj6eKBz9Db1c_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.o
  %.sroa.0.1136.i = phi ptr [ %i.cd, %bb.o ], [ %i.ca, %bb.l ] ; 3 uses
  %.sroa.26.1135.i = phi i64 [ %i.ce, %bb.o ], [ %i.cb, %bb.l ]
  %.sroa.084.0134.i = phi i64 [ %i.cp, %bb.o ], [ 0, %bb.l ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.ce = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.cf = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.cg = extractvalue { i64, i1 } %i.cf, 0
  %i.ch = extractvalue { i64, i1 } %i.cf, 1
  br i1 %i.ch, label %.loopexit.sink.split, label %bb.m, !prof !19

bb.m:                                             ; preds = %.lr.ph.i
  %i.ci = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !15030, !noalias !15031, !noundef !11
  %i.cj = zext i8 %i.ci to i32
  %i.ck = add nsw i32 %i.cj, -48                  ; 2 uses
  %i.cl = icmp ult i32 %i.ck, 10
  br i1 %i.cl, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.cm = zext nneg i32 %i.ck to i64
  %i.cn = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.cg, i64 %i.cm) ; 2 uses
  %i.co = extractvalue { i64, i1 } %i.cn, 1
  br i1 %i.co, label %.loopexit, label %bb.o, !prof !19

bb.o:                                             ; preds = %bb.n
  %i.cp = extractvalue { i64, i1 } %i.cn, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.ce, 0
  br i1 %.not102.i, label %_RNvMsr_NtCsj6eKBz9Db1c_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %.preheader114.i, %bb.p
  %.sroa.0.2140.i = phi ptr [ %i.cw, %bb.p ], [ %i.ca, %.preheader114.i ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.cv, %bb.p ], [ %i.cb, %.preheader114.i ]
  %.sroa.084.2138.i = phi i64 [ %i.cy, %bb.p ], [ 0, %.preheader114.i ]
  %i.cq = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !15030, !noalias !15031, !noundef !11
  %i.cr = zext i8 %i.cq to i32
  %i.cs = add nsw i32 %i.cr, -48                  ; 2 uses
  %i.ct = icmp ult i32 %i.cs, 10
  br i1 %i.ct, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.lr.ph141.i
  %i.cu = mul i64 %.sroa.084.2138.i, 10
  %i.cv = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.cx = zext nneg i32 %i.cs to i64
  %i.cy = sub i64 %i.cu, %i.cx                    ; 2 uses
  %.not103.i = icmp eq i64 %i.cv, 0
  br i1 %.not103.i, label %_RNvMsr_NtCsj6eKBz9Db1c_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.q:                                             ; preds = %bb.k, %bb.j
  %.sroa.26.0.i = phi i64 [ %i.bz, %bb.k ], [ %i.bv, %bb.j ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.by, %bb.k ], [ %i.bt, %bb.j ] ; 2 uses
  %i.cz = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.cz, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.q
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCsj6eKBz9Db1c_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.q, %bb.t
  %.sroa.0.3145.i = phi ptr [ %i.da, %bb.t ], [ %.sroa.0.0.i, %bb.q ] ; 3 uses
  %.sroa.26.3144.i = phi i64 [ %i.db, %bb.t ], [ %.sroa.26.0.i, %bb.q ]
  %.sroa.084.3143.i = phi i64 [ %i.dm, %bb.t ], [ 0, %bb.q ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.db = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.dc = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.dd = extractvalue { i64, i1 } %i.dc, 0
  %i.de = extractvalue { i64, i1 } %i.dc, 1
  br i1 %i.de, label %.loopexit.sink.split, label %bb.r, !prof !19

bb.r:                                             ; preds = %.preheader111.i
  %i.df = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !15030, !noalias !15031, !noundef !11
  %i.dg = zext i8 %i.df to i32
  %i.dh = add nsw i32 %i.dg, -48                  ; 2 uses
  %i.di = icmp ult i32 %i.dh, 10
  br i1 %i.di, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.dj = zext nneg i32 %i.dh to i64
  %i.dk = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.dd, i64 %i.dj) ; 2 uses
  %i.dl = extractvalue { i64, i1 } %i.dk, 1
  br i1 %i.dl, label %.loopexit, label %bb.t, !prof !19

bb.t:                                             ; preds = %bb.s
  %i.dm = extractvalue { i64, i1 } %i.dk, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.db, 0
  br i1 %.not104.i, label %_RNvMsr_NtCsj6eKBz9Db1c_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.u
  %.sroa.0.4149.i = phi ptr [ %i.dt, %bb.u ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.ds, %bb.u ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.dv, %bb.u ], [ 0, %.preheader.i ]
  %i.dn = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !15030, !noalias !15031, !noundef !11
  %i.do = zext i8 %i.dn to i32
  %i.dp = add nsw i32 %i.do, -48                  ; 2 uses
  %i.dq = icmp ult i32 %i.dp, 10
  br i1 %i.dq, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %.lr.ph150.i
  %i.dr = mul i64 %.sroa.084.4147.i, 10
  %i.ds = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.du = zext nneg i32 %i.dp to i64
  %i.dv = add i64 %i.dr, %i.du                    ; 2 uses
  %.not105.i = icmp eq i64 %i.ds, 0
  br i1 %.not105.i, label %_RNvMsr_NtCsj6eKBz9Db1c_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.loopexit.sink.split:                             ; preds = %.lr.ph.i, %.preheader111.i
  %.sroa.0.3145.i.lcssa.sink = phi ptr [ %.sroa.0.3145.i, %.preheader111.i ], [ %.sroa.0.1136.i, %.lr.ph.i ]
  %.sink176 = phi i8 [ 2, %.preheader111.i ], [ 3, %.lr.ph.i ]
  %i.dw = load i8, ptr %.sroa.0.3145.i.lcssa.sink, align 1, !alias.scope !15030, !noalias !15031, !noundef !11
  %i.dx = add i8 %i.dw, -48
  %i.dy = icmp ult i8 %i.dx, 10
  %spec.select93 = select i1 %i.dy, i8 %.sink176, i8 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.m, %.lr.ph141.i, %bb.r, %bb.s, %.lr.ph150.i, %.loopexit.sink.split, %bb.h, %bb.i, %bb.i
  %.sroa.5.0.ph = phi i8 [ 1, %.lr.ph150.i ], [ %spec.select93, %.loopexit.sink.split ], [ 1, %.lr.ph141.i ], [ 1, %bb.i ], [ 0, %bb.h ], [ 2, %bb.s ], [ 1, %bb.i ], [ 1, %bb.r ], [ 3, %bb.n ], [ 1, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !15032
  store i64 0, ptr %i.o, align 8, !noalias !15032
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !15032
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !15032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !15032
  %i.dz = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 1610612768, ptr %i.dz, align 8, !noalias !15032
  store ptr %i.o, ptr %i.n, align 8, !noalias !15032
  %i.ea = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @204, ptr %i.ea, align 8, !noalias !15032
  %i.eb = call noundef zeroext i1 @_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #43, !noalias !15033
  br i1 %i.eb, label %bb.w, label %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i, !prof !19

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @356, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @358) #44, !noalias !15032
  unreachable

_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i: ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !15034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !15032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !15032
  br label %bb.z

bb.x:                                             ; preds = %.loopexit
end_hunk_11
begin_hunk_12_@_RNvXsu_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParserhENtB5_16TypedValueParser9parse_refB9_:bb.a
  %i.js = phi ptr [ %i.jq, %bb.bv ], [ inttoptr (i64 1 to ptr), %bb.bt ]
  store i64 %i.jo, ptr %i.g, align 8, !noalias !15085
  %.sroa.4.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.js, ptr %.sroa.4.0..sroa_idx.i50, align 8, !noalias !15085
  %.sroa.6.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.jo, ptr %.sroa.6.0..sroa_idx.i51, align 8, !noalias !15085
  br label %bb.bw

bb.bv:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jq, ptr nonnull align 1 %i.jm, i64 %i.jo, i1 false), !noalias !15085
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread12.i49

bb.bw:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread12.i49, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15085
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !15085
  %i.jt = call noundef dereferenceable_or_null(1) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #43, !noalias !15085 ; 3 uses
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %bb.bx, label %_RNCNvXsu_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParserhENtB7_16TypedValueParser9parse_refs2_0Bb_.exit, !prof !33

bb.bx:                                            ; preds = %bb.bw
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #46, !noalias !15085
  unreachable

_RNCNvXsu_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParserhENtB7_16TypedValueParser9parse_refs2_0Bb_.exit: ; preds = %bb.bw
  store i8 %.sroa.4.0.i, ptr %i.jt, align 1, !noalias !15085
  %i.jv = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error16value_validationB4_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull %i.jt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @93) #43, !noalias !15085 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15085
  %i.jw = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error8with_cmdB4_(ptr noalias noundef nonnull align 8 %i.jv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2) #43, !noalias !15085 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.bk

bb.by:                                            ; preds = %_RINvYTINtNtNtCsj6eKBz9Db1c_4core3ops5range5BoundxEB4_EINtB7_11RangeBoundsxE8containsxECsfu0rQaTkGUu_12clap_builder.exit.thread79
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.fe, ptr %i.jx, align 1
  store i8 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bk, %_RNCNvXsu_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserINtB7_20RangedI64ValueParserhENtB7_16TypedValueParser9parse_refs0_0Bb_.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvXsu_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20RangedI64ValueParserNtB5_16TypedValueParser9parse_refB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(600) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [19 x i8], align 1                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 16 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [14 x i8], align 2                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [16 x i8], align 16               ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 2 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) #43
  %i.ac = load i64, ptr %i.v, align 8, !range !14, !noundef !11
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15189)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !15189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !15189
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15193)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !15194, !noalias !15190, !nonnull !11, !noundef !11 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !15194, !noalias !15190, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ah, 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx
  %i.aj = icmp eq i64 %i.ah, 0
  br i1 %i.aj, label %_RNCNvXsu_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_20RangedI64ValueParserNtB7_16TypedValueParser9parse_refs0_0Bb_.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i174, i64 16 ; 2 uses
  %i.al = add i64 %.sroa.8.0.i.i.i.i173, 1
  %i.am = icmp eq ptr %i.ak, %i.ai
  br i1 %i.am, label %_RNCNvXsu_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_20RangedI64ValueParserNtB7_16TypedValueParser9parse_refs0_0Bb_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.01.i.i.i.i174 = phi ptr [ %i.ak, %bb.c ], [ %i.af, %bb.b ] ; 2 uses
  %.sroa.8.0.i.i.i.i173 = phi i64 [ %i.al, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %.val.i.i.i.i = load i128, ptr %.sroa.0.01.i.i.i.i174, align 8, !noalias !15195
  %i.an = icmp eq i128 %.val.i.i.i.i, -100310019091698447603793328749864812255
  br i1 %i.an, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !15194, !noalias !15190, !noundef !11 ; 2 uses
  %i.aq = icmp ult i64 %.sroa.8.0.i.i.i.i173, %i.ap
  br i1 %i.aq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i.i173, i64 noundef %i.ap, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !15195
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !15194, !noalias !15190, !nonnull !11, !noundef !11
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %.sroa.8.0.i.i.i.i173 ; 2 uses
  %.val5.i.i.i = load ptr, ptr %i.at, align 8, !noalias !15196, !nonnull !11, !noundef !11
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %.val6.i.i.i = load ptr, ptr %i.au, align 8, !noalias !15196, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !18, !invariant.load !11, !noalias !15196
  %i.ax = add nsw i64 %i.aw, -1
  %i.ay = and i64 %i.ax, -16
  %i.az = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !15196
  %i.bb = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !11, !noalias !15196, !nonnull !11
  call void %i.bc(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.r, ptr noundef nonnull %i.ba) #45, !noalias !15196, !inline_history !15099
  %i.bd = load i128, ptr %i.r, align 16, !noalias !15196, !noundef !11
  %.not.i.i.i = icmp eq i128 %i.bd, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !15196
  br i1 %.not.i.i.i, label %_RNCNvXsu_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_20RangedI64ValueParserNtB7_16TypedValueParser9parse_refs0_0Bb_.exit, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !15196
  unreachable

_RNCNvXsu_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB7_20RangedI64ValueParserNtB7_16TypedValueParser9parse_refs0_0Bb_.exit: ; preds = %bb.c, %bb.b, %bb.f
  %.sroa.0.0.i.i.i = phi ptr [ %i.ba, %bb.f ], [ null, %bb.b ], [ null, %bb.c ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  %..i.i = select i1 %.not.i.i, ptr @99, ptr %.sroa.0.0.i.i.i ; 5 uses
  store ptr %1, ptr %i.s, align 8, !alias.scope !15190, !noalias !15197
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %..i.i, ptr %i.be, align 8, !alias.scope !15190, !noalias !15197
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr null, ptr %i.bf, align 8, !alias.scope !15190, !noalias !15197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !15198
  store i64 0, ptr %i.q, align 8, !alias.scope !15199, !noalias !15198
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !15199, !noalias !15198
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !15199, !noalias !15198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !15198
  %i.bg = getelementptr inbounds nuw i8, ptr %..i.i, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.p, ptr noundef nonnull align 2 dereferenceable(14) %i.bg, i64 14, i1 false), !noalias !15200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !15198
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.bg, align 2, !noalias !15200
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %..i.i, i64 32
  %.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.7.0..sroa_idx.i.i, align 2, !noalias !15200
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %..i.i, i64 36
  %.sroa.11.0.copyload.i.i = load i8, ptr %.sroa.11.0..sroa_idx.i.i, align 2, !noalias !15200
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %..i.i, i64 40
  %.sroa.15.0.copyload.i.i = load i16, ptr %.sroa.15.0..sroa_idx.i.i, align 2, !noalias !15200
  %.not.i.i1.i = icmp eq i8 %.sroa.0.0.copyload.i.i, -1
  %.not5.i.i.i = icmp eq i8 %.sroa.7.0.copyload.i.i, -1
  %or.cond.i.i = select i1 %.not.i.i1.i, i1 %.not5.i.i.i, i1 false
  %.not7.i.i.i = icmp eq i8 %.sroa.11.0.copyload.i.i, -1
  %or.cond35.i.i = select i1 %or.cond.i.i, i1 %.not7.i.i.i, i1 false
  %i.bh = icmp eq i16 %.sroa.15.0.copyload.i.i, 0
  %or.cond36.i.i = select i1 %or.cond35.i.i, i1 %i.bh, i1 false ; 2 uses
  %spec.select.i.i = select i1 %or.cond36.i.i, ptr inttoptr (i64 1 to ptr), ptr @139
  %spec.select38.i.i = select i1 %or.cond36.i.i, i64 0, i64 4
  store ptr %spec.select.i.i, ptr %i.o, align 8, !noalias !15198, !captures !22
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %spec.select38.i.i, ptr %i.bi, align 8, !noalias !15198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !15198
  store ptr %i.p, ptr %i.n, align 8, !noalias !15198
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs8_NtCscy4Zx2DW6cp_7anstyle5styleNtB5_12StyleDisplayNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !15198
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.bj, align 8, !noalias !15198
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !15198
  %i.bk = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @140, ptr noundef nonnull %i.n) #43, !noalias !15200, !inline_history !23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !15198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !15198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !15198
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage20write_usage_no_title(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s, ptr noalias nofree noundef align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0) #43
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8trim_end(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #43, !noalias !15201, !inline_history !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !15202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !15198
  %i.bl = call fastcc noalias noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error12invalid_utf8B4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.t) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !15189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !15189
  br label %bb.bl

bb.h:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !11 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  switch i64 %i.bp, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.bq = load i8, ptr %i.bn, align 1, !alias.scope !15203, !noalias !15204, !noundef !11 ; 2 uses
  switch i8 %i.bq, label %bb.j [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.h
  %.pr.i = load i8, ptr %i.bn, align 1, !alias.scope !15203, !noalias !15204
  br label %bb.j

bb.j:                                             ; preds = %thread-pre-split.i, %bb.i
  %i.br = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.bq, %bb.i ]
  switch i8 %i.br, label %bb.q [
    i8 43, label %bb.k
    i8 45, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bt = add nsw i64 %i.bp, -1
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 2 uses
  %i.bv = add nsw i64 %i.bp, -1                   ; 3 uses
  %i.bw = icmp samesign ult i64 %i.bp, 17
  br i1 %i.bw, label %.preheader114.i, label %.lr.ph.i

.preheader114.i:                                  ; preds = %bb.l
  %.not103137.i = icmp eq i64 %i.bv, 0
  br i1 %.not103137.i, label %_RNvMsr_NtCsj6eKBz9Db1c_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.o
  %.sroa.0.1136.i = phi ptr [ %i.bx, %bb.o ], [ %i.bu, %bb.l ] ; 3 uses
  %.sroa.26.1135.i = phi i64 [ %i.by, %bb.o ], [ %i.bv, %bb.l ]
  %.sroa.084.0134.i = phi i64 [ %i.cj, %bb.o ], [ 0, %bb.l ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.by = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.bz = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.ca = extractvalue { i64, i1 } %i.bz, 0
  %i.cb = extractvalue { i64, i1 } %i.bz, 1
  br i1 %i.cb, label %.loopexit.sink.split, label %bb.m, !prof !19

bb.m:                                             ; preds = %.lr.ph.i
  %i.cc = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !15203, !noalias !15204, !noundef !11
  %i.cd = zext i8 %i.cc to i32
  %i.ce = add nsw i32 %i.cd, -48                  ; 2 uses
  %i.cf = icmp ult i32 %i.ce, 10
  br i1 %i.cf, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.cg = zext nneg i32 %i.ce to i64
  %i.ch = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ca, i64 %i.cg) ; 2 uses
  %i.ci = extractvalue { i64, i1 } %i.ch, 1
  br i1 %i.ci, label %.loopexit, label %bb.o, !prof !19

bb.o:                                             ; preds = %bb.n
  %i.cj = extractvalue { i64, i1 } %i.ch, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.by, 0
  br i1 %.not102.i, label %_RNvMsr_NtCsj6eKBz9Db1c_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %.preheader114.i, %bb.p
  %.sroa.0.2140.i = phi ptr [ %i.cq, %bb.p ], [ %i.bu, %.preheader114.i ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.cp, %bb.p ], [ %i.bv, %.preheader114.i ]
  %.sroa.084.2138.i = phi i64 [ %i.cs, %bb.p ], [ 0, %.preheader114.i ]
  %i.ck = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !15203, !noalias !15204, !noundef !11
  %i.cl = zext i8 %i.ck to i32
  %i.cm = add nsw i32 %i.cl, -48                  ; 2 uses
  %i.cn = icmp ult i32 %i.cm, 10
  br i1 %i.cn, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.lr.ph141.i
  %i.co = mul i64 %.sroa.084.2138.i, 10
  %i.cp = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.cr = zext nneg i32 %i.cm to i64
  %i.cs = sub i64 %i.co, %i.cr                    ; 2 uses
  %.not103.i = icmp eq i64 %i.cp, 0
  br i1 %.not103.i, label %_RNvMsr_NtCsj6eKBz9Db1c_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.q:                                             ; preds = %bb.k, %bb.j
  %.sroa.26.0.i = phi i64 [ %i.bt, %bb.k ], [ %i.bp, %bb.j ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.bs, %bb.k ], [ %i.bn, %bb.j ] ; 2 uses
  %i.ct = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.ct, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.q
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCsj6eKBz9Db1c_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.q, %bb.t
  %.sroa.0.3145.i = phi ptr [ %i.cu, %bb.t ], [ %.sroa.0.0.i, %bb.q ] ; 3 uses
  %.sroa.26.3144.i = phi i64 [ %i.cv, %bb.t ], [ %.sroa.26.0.i, %bb.q ]
  %.sroa.084.3143.i = phi i64 [ %i.dg, %bb.t ], [ 0, %bb.q ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.cv = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.cw = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.cx = extractvalue { i64, i1 } %i.cw, 0
  %i.cy = extractvalue { i64, i1 } %i.cw, 1
  br i1 %i.cy, label %.loopexit.sink.split, label %bb.r, !prof !19

bb.r:                                             ; preds = %.preheader111.i
  %i.cz = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !15203, !noalias !15204, !noundef !11
  %i.da = zext i8 %i.cz to i32
  %i.db = add nsw i32 %i.da, -48                  ; 2 uses
  %i.dc = icmp ult i32 %i.db, 10
  br i1 %i.dc, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.dd = zext nneg i32 %i.db to i64
  %i.de = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cx, i64 %i.dd) ; 2 uses
  %i.df = extractvalue { i64, i1 } %i.de, 1
  br i1 %i.df, label %.loopexit, label %bb.t, !prof !19

bb.t:                                             ; preds = %bb.s
  %i.dg = extractvalue { i64, i1 } %i.de, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.cv, 0
  br i1 %.not104.i, label %_RNvMsr_NtCsj6eKBz9Db1c_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.u
  %.sroa.0.4149.i = phi ptr [ %i.dn, %bb.u ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.dm, %bb.u ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.dp, %bb.u ], [ 0, %.preheader.i ]
  %i.dh = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !15203, !noalias !15204, !noundef !11
  %i.di = zext i8 %i.dh to i32
  %i.dj = add nsw i32 %i.di, -48                  ; 2 uses
  %i.dk = icmp ult i32 %i.dj, 10
  br i1 %i.dk, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %.lr.ph150.i
  %i.dl = mul i64 %.sroa.084.4147.i, 10
  %i.dm = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.do = zext nneg i32 %i.dj to i64
  %i.dp = add i64 %i.dl, %i.do                    ; 2 uses
  %.not105.i = icmp eq i64 %i.dm, 0
  br i1 %.not105.i, label %_RNvMsr_NtCsj6eKBz9Db1c_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.loopexit.sink.split:                             ; preds = %.lr.ph.i, %.preheader111.i
  %.sroa.0.3145.i.lcssa.sink = phi ptr [ %.sroa.0.3145.i, %.preheader111.i ], [ %.sroa.0.1136.i, %.lr.ph.i ]
  %.sink155 = phi i8 [ 2, %.preheader111.i ], [ 3, %.lr.ph.i ]
  %i.dq = load i8, ptr %.sroa.0.3145.i.lcssa.sink, align 1, !alias.scope !15203, !noalias !15204, !noundef !11
  %i.dr = add i8 %i.dq, -48
  %i.ds = icmp ult i8 %i.dr, 10
  %spec.select76 = select i1 %i.ds, i8 %.sink155, i8 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.m, %.lr.ph141.i, %bb.r, %bb.s, %.lr.ph150.i, %.loopexit.sink.split, %bb.h, %bb.i, %bb.i
  %.sroa.5.0.ph = phi i8 [ 1, %.lr.ph150.i ], [ %spec.select76, %.loopexit.sink.split ], [ 1, %.lr.ph141.i ], [ 1, %bb.i ], [ 0, %bb.h ], [ 2, %bb.s ], [ 1, %bb.i ], [ 1, %bb.r ], [ 3, %bb.n ], [ 1, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15205
  store i64 0, ptr %i.j, align 8, !noalias !15205
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !15205
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !15205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15205
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 1610612768, ptr %i.dt, align 8, !noalias !15205
  store ptr %i.j, ptr %i.i, align 8, !noalias !15205
  %i.du = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @204, ptr %i.du, align 8, !noalias !15205
  %i.dv = call noundef zeroext i1 @_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #43, !noalias !15206
  br i1 %i.dv, label %bb.w, label %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i, !prof !19

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @356, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @358) #44, !noalias !15205
  unreachable

_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i: ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !15207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15205
  br label %bb.z

bb.x:                                             ; preds = %.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15208)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !15209
  %i.dw = tail call noundef dereferenceable_or_null(3) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 3, i64 noundef range(i64 1, 9) 1) #43, !noalias !15209 ; 3 uses
end_hunk_12
