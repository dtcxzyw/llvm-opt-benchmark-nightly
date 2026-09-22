Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.11?download=true
inline.NumInlined: 1144
inline.NumDeleted: 559
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB6_18PreTokenizedString5splitNCNvXs0_NtNtNtBa_14pre_tokenizers15unicode_scripts13pre_tokenizerNtB1C_14UnicodeScriptsNtB8_12PreTokenizer12pre_tokenize0INtNtCscdodAO9FK5_5alloc3vec3VecNtNtB8_10normalizer16NormalizedStringEB3X_EBa_:bb.a
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEB1k_.exit.i unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEB1d_.exit unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEB1k_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEB1d_.exit: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEB1d_.exit32, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEB1d_.exit
  %.sroa.3.0 = phi ptr [ %.sroa.739.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEB1d_.exit32 ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEB1d_.exit ]
  %.sroa.0.0 = phi ptr [ %.sroa.538.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEB1d_.exit32 ], [ null, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEB1d_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ba = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.bb = insertvalue { ptr, ptr } %i.ba, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.bb

bb.m:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.k, ptr noundef nonnull align 8 dereferenceable(104) %i.l, i64 104, i1 false)
  %i.bc = load i64, ptr %i.ac, align 8, !alias.scope !280, !noalias !281, !noundef !5 ; 3 uses
  %i.bd = load i64, ptr %i.o, align 8, !range !10, !alias.scope !280, !noalias !281, !noundef !5
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.n, label %bb.ac

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.ac unwind label %bb.o, !noalias !281

bb.o:                                             ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          cleanup
  store ptr %i.at, ptr %i.m, align 8
  store i64 %i.au, ptr %.sroa.2.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEBH_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.k) #30
          to label %.body23 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.q:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false)
  store i64 %i.as, ptr %i.i, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !282)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !283
  store i8 -1, ptr %i.f, align 1, !noalias !283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !283
  store i64 0, ptr %i.e, align 8, !noalias !283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !283
  %i.bh = load ptr, ptr %i.aj, align 8, !alias.scope !282, !noalias !284, !nonnull !5, !noundef !5 ; 2 uses
  %i.bi = load i64, ptr %i.ak, align 8, !alias.scope !282, !noalias !284, !noundef !5 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  store ptr %i.bh, ptr %i.c, align 8, !noalias !283
  store ptr %i.bj, ptr %i.al, align 8, !noalias !283
  store ptr %i.f, ptr %i.am, align 8, !noalias !283
  store ptr %i.e, ptr %i.an, align 8, !noalias !283
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapNtNtNtB1C_3str4iter5CharsNCNCNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizerNtB34_14UnicodeScriptsNtNtB3a_9tokenizer12PreTokenizer12pre_tokenize00EE9from_iterB3a_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.s unwind label %bb.r, !noalias !283

.body.i:                                          ; preds = %bb.x, %bb.u, %bb.r
  %.pn.i = phi { ptr, i32 } [ %i.bo, %bb.u ], [ %i.bk, %bb.r ], [ %i.bt, %bb.x ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringEBH_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ai) #30
          to label %bb.aq unwind label %bb.aa, !noalias !284

bb.r:                                             ; preds = %bb.y, %bb.q
  %i.bk = landingpad { ptr, i32 }
          cleanup
  store ptr %i.at, ptr %i.m, align 8
  store i64 %i.au, ptr %.sroa.2.0..sroa_idx, align 8
  br label %.body.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !283
  %i.bl = load i64, ptr %i.ao, align 8, !alias.scope !285, !noalias !283, !noundef !5 ; 3 uses
  %i.bm = load i64, ptr %i.d, align 8, !range !10, !alias.scope !285, !noalias !283, !noundef !5
  %i.bn = icmp eq i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs8nxqWztFLNL_12regex_syntax(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.v unwind label %bb.u, !noalias !283

bb.u:                                             ; preds = %bb.v, %bb.t
  %i.bo = landingpad { ptr, i32 }
          cleanup
  store ptr %i.at, ptr %i.m, align 8
  store i64 %i.au, ptr %.sroa.2.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.d) #30
          to label %.body.i unwind label %bb.aa, !noalias !284

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.bp = load ptr, ptr %i.ap, align 8, !alias.scope !285, !noalias !283, !nonnull !5, !noundef !5
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bl
  store i64 %i.bi, ptr %i.bq, align 8, !noalias !283
  %i.br = add i64 %i.bl, 1                        ; 2 uses
  store i64 %i.br, ptr %i.ao, align 8, !alias.scope !285, !noalias !283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !283
  %i.bs = load ptr, ptr %i.ap, align 8, !noalias !283, !nonnull !5, !noundef !5
  store ptr %i.bs, ptr %i.a, align 8, !noalias !283
  store i64 %i.br, ptr %.sroa.4.0..sroa_idx.i20, align 8, !noalias !283
  store i64 2, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !283
  store ptr %i.ai, ptr %i.aq, align 8, !noalias !283
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB2Q_5slice4iter7WindowsjENCNCNvXs0_NtNtNtB18_14pre_tokenizers15unicode_scripts13pre_tokenizerNtB4b_14UnicodeScriptsNtB16_12PreTokenizer12pre_tokenize0s_0EE9from_iterB18_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.w unwind label %bb.u, !noalias !284

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !283
  %.sroa.037.0.copyload = load i64, ptr %i.b, align 8, !noalias !282 ; 2 uses
  %.sroa.538.0.copyload = load ptr, ptr %.sroa.538.0..sroa_idx, align 8, !noalias !282 ; 6 uses
  %.sroa.739.0.copyload = load ptr, ptr %.sroa.739.0..sroa_idx, align 8, !noalias !282 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !283
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.y unwind label %bb.x, !noalias !284

bb.x:                                             ; preds = %bb.w
  %i.bt = landingpad { ptr, i32 }
          cleanup
  store ptr %i.at, ptr %i.m, align 8
  store i64 %i.au, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.z, !noalias !284

bb.y:                                             ; preds = %bb.w
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.r, !noalias !284

bb.z:                                             ; preds = %bb.x
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !284
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !283
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringEBH_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ai)
          to label %_RNCNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizerNtB7_14UnicodeScriptsNtNtBd_9tokenizer12PreTokenizer12pre_tokenize0Bd_.exit unwind label %bb.ab

bb.aa:                                            ; preds = %bb.u, %.body.i
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !284
  unreachable

bb.ab:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.ah
  %i.bw = landingpad { ptr, i32 }
          cleanup
  store ptr %i.at, ptr %i.m, align 8
  store i64 %i.au, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.aq

bb.ac:                                            ; preds = %bb.n, %bb.m
  %i.bx = load ptr, ptr %i.ab, align 8, !alias.scope !280, !noalias !281, !nonnull !5, !noundef !5
  %i.by = getelementptr inbounds nuw [104 x i8], ptr %i.bx, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.by, ptr noundef nonnull align 8 dereferenceable(104) %i.k, i64 104, i1 false)
  %i.bz = add i64 %i.bc, 1
  store i64 %i.bz, ptr %i.ac, align 8, !alias.scope !280, !noalias !281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.backedge

.backedge:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB1b_.exit.i26, %bb.ai, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %i.ca = icmp eq ptr %i.at, %i.af
  br i1 %i.ca, label %_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBU_.exit.i._crit_edge, label %_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBU_.exit.i

_RNCNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizerNtB7_14UnicodeScriptsNtNtBd_9tokenizer12PreTokenizer12pre_tokenize0Bd_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.cb = icmp eq i64 %.sroa.037.0.copyload, -1
  br i1 %i.cb, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %_RNCNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizerNtB7_14UnicodeScriptsNtNtBd_9tokenizer12PreTokenizer12pre_tokenize0Bd_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.538.0.copyload), "nonnull"(ptr %.sroa.739.0.copyload) ]
  store ptr %i.at, ptr %i.m, align 8
  store i64 %i.au, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.cc = load i64, ptr %i.ah, align 8, !range !11, !alias.scope !286, !noundef !5
  %i.cd = icmp eq i64 %i.cc, -1
  br i1 %i.cd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEB1x_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB1b_.exit.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body23 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB1b_.exit.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEB1x_.exit unwind label %.loopexit.split-lp

bb.ah:                                            ; preds = %_RNCNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizerNtB7_14UnicodeScriptsNtNtBd_9tokenizer12PreTokenizer12pre_tokenize0Bd_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.538.0.copyload) ]
  %1 = ptrtoint ptr %.sroa.739.0.copyload to i64
  %i.cg = icmp ult ptr %.sroa.739.0.copyload, inttoptr (i64 115292150460684698 to ptr)
  call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds nuw [80 x i8], ptr %.sroa.538.0.copyload, i64 %1
  store ptr %.sroa.538.0.copyload, ptr %i.j, align 8, !alias.scope !287
  store ptr %.sroa.538.0.copyload, ptr %.sroa.5.0..sroa_idx34, align 8, !alias.scope !287
  store i64 %.sroa.037.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !287
  store ptr %i.ch, ptr %.sroa.736.0..sroa_idx, align 8, !alias.scope !287
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtBU_10normalizer16NormalizedStringENCINvMs0_BS_NtBS_18PreTokenizedString5splitNCNvXs0_NtNtNtBW_14pre_tokenizers15unicode_scripts13pre_tokenizerNtB57_14UnicodeScriptsNtBU_12PreTokenizer12pre_tokenize0IBH_B3G_EB3G_E0EE11spec_extendBW_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.ai unwind label %bb.ab

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ci = load i64, ptr %i.ah, align 8, !range !11, !alias.scope !288, !noundef !5
  %i.cj = icmp eq i64 %i.ci, -1
  br i1 %i.cj, label %.backedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB1b_.exit.i26 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ck = landingpad { ptr, i32 }
          cleanup
  store ptr %i.at, ptr %i.m, align 8
  store i64 %i.au, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body23 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB1b_.exit.i26: ; preds = %bb.aj
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.backedge unwind label %.loopexit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEB1x_.exit: ; preds = %bb.ad, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB1b_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEEB27_(ptr noalias noundef align 8 dereferenceable(48) %i.m)
          to label %bb.am unwind label %bb.d

bb.am:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEB1x_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEB1d_.exit32 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEB1d_.exit32: ; preds = %bb.am
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
  br label %bb.l

bb.ap:                                            ; preds = %bb.ar, %bb.aq, %.body23
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.aq:                                            ; preds = %bb.ab, %.body.i
  %eh.lpad-body19.ph = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.bw, %bb.ab ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEB1x_(ptr noalias noundef align 8 dereferenceable(24) %i.ah) #30
          to label %.body23 unwind label %bb.ap

bb.ar:                                            ; preds = %.body23, %bb.d
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ad, %bb.d ], [ %.pn, %.body23 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.o) #30
          to label %common.resume unwind label %bb.ap
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB6_18PreTokenizedString5splitNCNvXs2_NtNtBa_14pre_tokenizers9metaspaceNtB1C_9MetaspaceNtB8_12PreTokenizer12pre_tokenize0INtNtCscdodAO9FK5_5alloc3vec3VecNtNtB8_10normalizer16NormalizedStringEB3t_EBa_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 11 uses
  %i.b = alloca [4 x i8], align 4                 ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [88 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [104 x i8], align 8               ; 5 uses
  %i.i = alloca [104 x i8], align 8               ; 8 uses
  %.sroa.11 = alloca [96 x i8], align 8           ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 19 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 8, !noundef !5 ; 3 uses
  %i.p = icmp ult i64 %i.o, 88686269585142076
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.o, i1 noundef zeroext false, i64 noundef 8, i64 noundef 104)
  %i.q = load i64, ptr %i.c, align 8, !range !6, !noundef !5
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !7, !noundef !5 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.r, label %bb.b, label %bb.c, !prof !8

common.resume:                                    ; preds = %bb.be, %bb.bi, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEB1k_.exit.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEB1k_.exit.i ], [ %.pn.pn.ph, %bb.bi ], [ %i.er, %bb.be ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.v = load i64, ptr %i.u, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  %i.x = icmp samesign ule i64 %i.o, %i.t
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.t, ptr %i.l, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store i64 0, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitE5drainNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullEBK_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.e unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEB1k_.exit.i: ; preds = %bb.h, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.bd, %bb.k ], [ %i.bb, %bb.h ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %common.resume

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEB1x_.exit, %_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBU_.exit.i._crit_edge, %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 9 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.promoted = load ptr, ptr %i.j, align 8, !alias.scope !314, !noalias !315 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !316, !noalias !315, !nonnull !5, !noundef !5 ; 2 uses
  %i.ad = icmp eq ptr %.promoted, %i.ac
  br i1 %i.ad, label %_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBU_.exit.i._crit_edge, label %_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBU_.exit.i.lr.ph

_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBU_.exit.i.lr.ph: ; preds = %bb.e
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 8 uses
  %i.ag = load ptr, ptr %1, align 8, !nonnull !5, !align !12 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 29
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %.sroa.4.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  br label %_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBU_.exit.i

_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBU_.exit.i: ; preds = %_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBU_.exit.i.lr.ph, %.backedge
  %i.av = phi ptr [ %.promoted, %_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBU_.exit.i.lr.ph ], [ %i.ax, %.backedge ] ; 3 uses
  %i.aw = phi i64 [ 0, %_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBU_.exit.i.lr.ph ], [ %i.ay, %.backedge ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 104 ; 12 uses
  %.sroa.0.0.copyload1.i = load i64, ptr %i.av, align 8, !noalias !319 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.0.copyload1.i, -1
  br i1 %.not.i, label %_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBU_.exit.i._crit_edge, label %bb.f

.body25:                                          ; preds = %.loopexit59, %.loopexit.split-lp60, %bb.bb, %bb.aw, %bb.o, %bb.bh
  %.pn = phi { ptr, i32 } [ %eh.lpad-body19.ph, %bb.bh ], [ %i.eh, %bb.aw ], [ %i.bj, %bb.o ], [ %i.ep, %bb.bb ], [ %lpad.loopexit61, %.loopexit59 ], [ %lpad.loopexit.split-lp62, %.loopexit.split-lp60 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEEB27_(ptr noalias noundef align 8 dereferenceable(48) %i.j) #30
          to label %bb.bi unwind label %bb.bg

.loopexit59:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB1b_.exit.i30
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB4_14UnigramTrainer8do_train:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  %i.aiq = load i64, ptr %i.cj, align 8, !range !25, !noundef !5 ; 3 uses
  %i.air = icmp eq i64 %i.aiq, 2
  %i.ais = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.ait = load ptr, ptr %i.ais, align 8          ; 3 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.aiv = load ptr, ptr %i.aiu, align 8          ; 3 uses
  br i1 %i.air, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  %i.aiw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ait, ptr %i.aiw, align 8
  %i.aix = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aiv, ptr %i.aix, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit

bb.ii:                                            ; preds = %bb.ig
  %.sroa.6125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.568, ptr noundef nonnull align 8 dereferenceable(304) %.sroa.6125.0..sroa_idx, i64 304, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5model7UnigramEBJ_(ptr noalias noundef align 8 dereferenceable(328) %3)
          to label %bb.ij unwind label %.thread276

.thread276:                                       ; preds = %bb.ii
  %i.aiy = landingpad { ptr, i32 }
          cleanup
  store i64 %i.aiq, ptr %3, align 8
  %.sroa.362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ait, ptr %.sroa.362.0..sroa_idx, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.aiv, ptr %.sroa.465.0..sroa_idx, align 8
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.568.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(304) %.sroa.568, i64 304, i1 false)
  br label %.body154

bb.ij:                                            ; preds = %bb.ii
  store i64 %i.aiq, ptr %3, align 8
  %.sroa.362.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ait, ptr %.sroa.362.0..sroa_idx63, align 8
  %.sroa.465.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.aiv, ptr %.sroa.465.0..sroa_idx66, align 8
  %.sroa.568.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.568.0..sroa_idx69, ptr noundef nonnull align 8 dereferenceable(304) %.sroa.568, i64 304, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.ik unwind label %bb.ht

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.di)
          to label %bb.il unwind label %bb.l

bb.il:                                            ; preds = %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  %i.aiz = load ptr, ptr %i.dj, align 8, !alias.scope !1798, !noundef !5
  %i.aja = icmp eq ptr %i.aiz, null
  br i1 %i.aja, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgo2jZVVEzqi_9indicatif12progress_bar11ProgressBarEECs2JiOgHzbbc7_10tokenizers.exit219, label %bb.im

bb.im:                                            ; preds = %bb.il
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgo2jZVVEzqi_9indicatif12progress_bar11ProgressBarECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgo2jZVVEzqi_9indicatif12progress_bar11ProgressBarEECs2JiOgHzbbc7_10tokenizers.exit219 unwind label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgo2jZVVEzqi_9indicatif12progress_bar11ProgressBarEECs2JiOgHzbbc7_10tokenizers.exit219: ; preds = %bb.il, %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringmEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %2)
  br label %bb.in

bb.in:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgo2jZVVEzqi_9indicatif12progress_bar11ProgressBarEECs2JiOgHzbbc7_10tokenizers.exit219
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.kh, %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %bb.ip unwind label %bb.io

bb.io:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit
  %i.ajb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %.body222 unwind label %bb.iq

bb.ip:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit224 unwind label %bb.l

bb.iq:                                            ; preds = %bb.io
  %i.ajc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ir:                                            ; preds = %.noexc188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  %i.ajd = load double, ptr %i.cu, align 8, !noundef !5
  store double %i.ajd, ptr %i.cx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  %i.aje = load i32, ptr %i.sx, align 8, !noundef !5
  store i32 %i.aje, ptr %i.cw, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.sy, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  %i.ajf = load ptr, ptr %i.er, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ajg = load i64, ptr %i.es, align 8, !noundef !5 ; 4 uses
  %i.ajh = load ptr, ptr %i.sz, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aji = load i64, ptr %i.ta, align 8, !noundef !5 ; 2 uses
  %.not.i225 = icmp eq i64 %i.ajg, %i.aji
  br i1 %.not.i225, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.is, !prof !22

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1799
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.ei, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
          to label %.noexc234 unwind label %.loopexit

.noexc234:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.ajj = load i64, ptr %i.b, align 8, !range !6, !noalias !1799, !noundef !5
  %i.ajk = trunc nuw i64 %i.ajj to i1
  %i.ajl = load i64, ptr %i.tb, align 8, !range !7, !noalias !1799, !noundef !5 ; 3 uses
  br i1 %i.ajk, label %bb.it, label %bb.iu, !prof !8

bb.is:                                            ; preds = %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1799
  store i64 %i.ajg, ptr %i.m, align 8, !noalias !1799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1799
  store i64 %i.aji, ptr %i.l, align 8, !noalias !1799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1799
  store ptr %i.m, ptr %i.k, align 8, !noalias !1799
  %.sroa.413.0..sroa_idx.i226 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.413.0..sroa_idx.i226, align 8, !noalias !1799
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.ajm, align 8, !noalias !1799
  %.sroa.417.0..sroa_idx.i227 = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.417.0..sroa_idx.i227, align 8, !noalias !1799
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @78, ptr noundef nonnull %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #29
          to label %.noexc235 unwind label %.loopexit.split-lp

.noexc235:                                        ; preds = %bb.is
  unreachable

bb.it:                                            ; preds = %.noexc234
  %i.ajn = load i64, ptr %i.tc, align 8, !noalias !1799
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ajl, i64 %i.ajn) #29
          to label %.noexc236 unwind label %.loopexit.split-lp

.noexc236:                                        ; preds = %bb.it
  unreachable

bb.iu:                                            ; preds = %.noexc234
  %i.ajo = load ptr, ptr %i.tc, align 8, !noalias !1799, !nonnull !5, !noundef !5 ; 3 uses
  %i.ajp = icmp samesign uge i64 %i.ajl, %i.ei
  call void @llvm.assume(i1 %i.ajp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1799
  store i64 %i.ajl, ptr %i.j, align 8, !noalias !1799
  store ptr %i.ajo, ptr %i.td, align 8, !noalias !1799
  store i64 0, ptr %i.te, align 8, !noalias !1799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1799
  %i.ajq = getelementptr inbounds nuw [8 x i8], ptr %i.ajh, i64 %i.ajg
  %i.ajr = getelementptr inbounds nuw [32 x i8], ptr %i.ajf, i64 %i.ajg
  invoke void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEIBX_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEINtB5_7ZipImplBW_B1o_E3newCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noundef nonnull readonly align 8 %i.ajh, ptr noundef nonnull readonly %i.ajq, ptr noundef nonnull readonly align 8 %i.ajf, ptr noundef nonnull readonly %i.ajr)
          to label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSTNtNtCscdodAO9FK5_5alloc6string6StringdEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %.body.thread14.loopexit.split-lp.i, !noalias !1800

.body.thread14.loopexit.loopexit.i:               ; preds = %bb.iv
  %lpad.loopexit23.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread14.loopexit.loopexit.split-lp.i:      ; preds = %bb.jd
  %lpad.loopexit.split-lp24.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread14.loopexit.split-lp.i:               ; preds = %bb.iu
  %lpad.loopexit.split-lp.i228 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSTNtNtCscdodAO9FK5_5alloc6string6StringdEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.iu
  %.sroa.07.sroa.0.0.copyload.i = load ptr, ptr %i.i, align 8, !noalias !1799 ; 2 uses
  %.sroa.07.sroa.3.0.copyload.i = load ptr, ptr %.sroa.07.sroa.3.0..sroa_idx.i, align 8, !noalias !1799 ; 2 uses
  %.sroa.07.sroa.5.0.copyload.i = load i64, ptr %.sroa.07.sroa.5.0..sroa_idx.i, align 8, !noalias !1799 ; 2 uses
  %.sroa.07.sroa.6.0.copyload.i = load i64, ptr %.sroa.07.sroa.6.0..sroa_idx.i, align 8, !noalias !1799 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1799
  %i.ajs = icmp ult i64 %.sroa.07.sroa.5.0.copyload.i, %.sroa.07.sroa.6.0.copyload.i
  br i1 %i.ajs, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.lr.ph.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.thread.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.thread.i: ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSTNtNtCscdodAO9FK5_5alloc6string6StringdEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1799
  br label %.lr.ph.preheader.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.lr.ph.i: ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSTNtNtCscdodAO9FK5_5alloc6string6StringdEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.sroa.0.0.copyload.i), "nonnull"(ptr %.sroa.07.sroa.3.0.copyload.i) ]
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.i: ; preds = %.outer.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.lr.ph.i
  %i.ajt = phi i64 [ 0, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.lr.ph.i ], [ %i.amb, %.outer.i ]
  %i.aju = phi ptr [ %i.ajo, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.lr.ph.i ], [ %i.alz, %.outer.i ]
  %.sroa.0.0.ph44.i = phi double [ 0.000000e+00, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.lr.ph.i ], [ %i.amc, %.outer.i ] ; 2 uses
  %.sroa.56.0.ph43.i = phi i64 [ %.sroa.07.sroa.5.0.copyload.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.lr.ph.i ], [ %i.ajx, %.outer.i ]
  %.sroa.8.0.ph42.i = phi i64 [ 0, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.lr.ph.i ], [ %i.ajz, %.outer.i ]
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.jc, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.i
  %i.ajv = phi i64 [ %i.ajt, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.i ], [ %i.alr, %bb.jc ]
  %i.ajw = phi ptr [ %i.aju, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.i ], [ %i.als, %bb.jc ]
  %.sroa.56.040.i = phi i64 [ %.sroa.56.0.ph43.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.i ], [ %i.ajx, %bb.jc ] ; 3 uses
  %.sroa.8.039.i = phi i64 [ %.sroa.8.0.ph42.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.i ], [ %i.ajz, %bb.jc ] ; 2 uses
  %i.ajx = add nuw i64 %.sroa.56.040.i, 1         ; 4 uses
  %i.ajy = getelementptr inbounds nuw [32 x i8], ptr %.sroa.07.sroa.3.0.copyload.i, i64 %.sroa.56.040.i ; 2 uses
  %i.ajz = add i64 %.sroa.8.039.i, 1              ; 2 uses
  %i.aka = icmp eq i64 %.sroa.8.039.i, 0
  br i1 %i.aka, label %bb.iv, label %bb.iw

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i: ; preds = %.outer.i, %bb.jc
  %i.akb = phi i64 [ %i.alr, %bb.jc ], [ %i.amb, %.outer.i ] ; 2 uses
  %i.akc = phi ptr [ %i.als, %bb.jc ], [ %i.alz, %.outer.i ] ; 2 uses
  %.sroa.0.0.ph.lcssa38.i = phi double [ %.sroa.0.0.ph44.i, %bb.jc ], [ %i.amc, %.outer.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1799
  %i.akd = fcmp olt double %.sroa.0.0.ph.lcssa38.i, 7.000000e+00
  br i1 %i.akd, label %.lr.ph.preheader.i, label %._crit_edge.i230

.lr.ph.preheader.i:                               ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.thread.i
  %.sroa.0.0.ph.lcssa3877.i = phi double [ 0.000000e+00, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.thread.i ], [ %.sroa.0.0.ph.lcssa38.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i ]
  %i.ake = phi ptr [ %i.ajo, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.thread.i ], [ %i.akc, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i ]
  %i.akf = phi i64 [ 0, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.thread.i ], [ %i.akb, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i ]
  br label %.lr.ph.i229

._crit_edge.i230:                                 ; preds = %.lr.ph.i229, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i
  %i.akg = phi ptr [ %i.akc, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i ], [ %i.ake, %.lr.ph.i229 ] ; 3 uses
  %i.akh = phi i64 [ %i.akb, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i ], [ %i.akf, %.lr.ph.i229 ] ; 2 uses
  %.lcssa46.i = phi double [ 0.000000e+00, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i ], [ %i.ald, %.lr.ph.i229 ]
  %.sroa.0.1.lcssa.i = phi double [ %.sroa.0.0.ph.lcssa38.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i ], [ %i.ale, %.lr.ph.i229 ]
  %i.aki = fadd double %.sroa.0.1.lcssa.i, -5.000000e-01 ; 2 uses
  %i.akj = fdiv double 1.000000e+00, %i.aki       ; 2 uses
  %i.akk = fmul double %i.akj, %i.akj             ; 4 uses
  %i.akl = fmul double %i.akk, %i.akk             ; 4 uses
  %i.akm = call double @llvm.log.f64(double %i.aki)
  %i.akn = fmul double %i.akk, f0x3FA5555555555555
  %i.ako = fadd double %i.akm, %i.akn
  %i.akp = fmul double %i.akl, f0x3F7DDDDDDDDDDDDE
  %i.akq = fsub double %i.ako, %i.akp
  %i.akr = fmul double %i.akl, f0x3F6F7DF7DF7DF7DF
  %i.aks = fmul double %i.akk, %i.akr
  %i.akt = fadd double %i.akq, %i.aks
  %i.aku = fmul double %i.akl, f0x3F70EEEEEEEEEEEF
  %i.akv = fmul double %i.akl, %i.aku
  %i.akw = fsub double %i.akt, %i.akv
  %i.akx = fadd double %.lcssa46.i, %i.akw
  store double %i.akx, ptr %i.d, align 8, !noalias !1799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1799
  %i.aky = load i64, ptr %i.j, align 8, !range !10, !noalias !1799, !noundef !5
  %i.akz = icmp ult i64 %i.akh, 288230376151711744
  call void @llvm.assume(i1 %i.akz)
  %i.ala = getelementptr inbounds nuw [32 x i8], ptr %i.akg, i64 %i.akh
  store ptr %i.akg, ptr %i.c, align 8, !noalias !1799
  store ptr %i.akg, ptr %.sroa.4.0..sroa_idx.i231, align 8, !noalias !1799
  store i64 %i.aky, ptr %.sroa.5.0..sroa_idx.i232, align 8, !noalias !1799
  store ptr %i.ala, ptr %.sroa.6.0..sroa_idx.i233, align 8, !noalias !1799
  store ptr %i.d, ptr %i.th, align 8, !noalias !1799
  invoke void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTNtNtB6_6string6StringdEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2Q_14UnigramTrainer10run_m_step0EB2k_EB2W_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ct, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.jj unwind label %.loopexit

.lr.ph.i229:                                      ; preds = %.lr.ph.i229, %.lr.ph.preheader.i
  %.sroa.0.147.i = phi double [ %i.ale, %.lr.ph.i229 ], [ %.sroa.0.0.ph.lcssa3877.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.alb = phi double [ %i.ald, %.lr.ph.i229 ], [ 0.000000e+00, %.lr.ph.preheader.i ]
  %i.alc = fdiv double 1.000000e+00, %.sroa.0.147.i
  %i.ald = fsub double %i.alb, %i.alc             ; 2 uses
  %i.ale = fadd double %.sroa.0.147.i, 1.000000e+00 ; 3 uses
  %i.alf = fcmp olt double %i.ale, 7.000000e+00
  br i1 %i.alf, label %.lr.ph.i229, label %._crit_edge.i230

bb.iv:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1799
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ajy)
          to label %bb.ix unwind label %.body.thread14.loopexit.loopexit.i, !noalias !1800

bb.iw:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.alg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.07.sroa.0.0.copyload.i, i64 %.sroa.56.040.i
  %i.alh = load double, ptr %i.alg, align 8, !noalias !1800, !noundef !5 ; 3 uses
  %i.ali = fcmp olt double %i.alh, 5.000000e-01
  br i1 %i.ali, label %bb.jc, label %bb.jd

bb.ix:                                            ; preds = %bb.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !1799
  store double +qnan, ptr %i.tf, align 8, !noalias !1799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1799
  %i.alj = load i64, ptr %i.te, align 8, !alias.scope !1801, !noalias !1802, !noundef !5 ; 3 uses
  %i.alk = load i64, ptr %i.j, align 8, !range !10, !alias.scope !1801, !noalias !1802, !noundef !5
  %i.all = icmp eq i64 %i.alj, %i.alk
  br i1 %i.all, label %bb.iy, label %bb.jb

bb.iy:                                            ; preds = %bb.ix
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.jb unwind label %bb.iz, !noalias !1803

bb.iz:                                            ; preds = %bb.iy
  %i.alm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringdEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h) #30
          to label %.body.thread.i unwind label %bb.ja, !noalias !1800

bb.ja:                                            ; preds = %bb.iz
  %i.aln = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !1800
  unreachable

bb.jb:                                            ; preds = %bb.iy, %bb.ix
  %i.alo = load ptr, ptr %i.td, align 8, !alias.scope !1801, !noalias !1802, !nonnull !5, !noundef !5 ; 2 uses
  %i.alp = getelementptr inbounds nuw [32 x i8], ptr %i.alo, i64 %i.alj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.alp, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !1800
  %i.alq = add i64 %i.alj, 1                      ; 2 uses
  store i64 %i.alq, ptr %i.te, align 8, !alias.scope !1801, !noalias !1802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1799
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.iw
  %i.alr = phi i64 [ %i.ajv, %bb.iw ], [ %i.alq, %bb.jb ] ; 2 uses
  %i.als = phi ptr [ %i.ajw, %bb.iw ], [ %i.alo, %bb.jb ] ; 2 uses
  %i.alt = icmp ult i64 %i.ajx, %.sroa.07.sroa.6.0.copyload.i
  br i1 %i.alt, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i

bb.jd:                                            ; preds = %bb.iw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1799
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ajy)
          to label %bb.je unwind label %.body.thread14.loopexit.loopexit.split-lp.i, !noalias !1800

bb.je:                                            ; preds = %bb.jd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1799
  store double %i.alh, ptr %i.tg, align 8, !noalias !1799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1799
  %i.alu = load i64, ptr %i.te, align 8, !alias.scope !1804, !noalias !1805, !noundef !5 ; 3 uses
  %i.alv = load i64, ptr %i.j, align 8, !range !10, !alias.scope !1804, !noalias !1805, !noundef !5
  %i.alw = icmp eq i64 %i.alu, %i.alv
  br i1 %i.alw, label %bb.jf, label %.outer.i

bb.jf:                                            ; preds = %bb.je
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.outer.i unwind label %bb.jg, !noalias !1806

bb.jg:                                            ; preds = %bb.jf
  %i.alx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringdEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f) #30
          to label %.body.thread.i unwind label %bb.jh, !noalias !1800

bb.jh:                                            ; preds = %bb.jg
  %i.aly = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !1800
  unreachable

.outer.i:                                         ; preds = %bb.jf, %bb.je
  %i.alz = load ptr, ptr %i.td, align 8, !alias.scope !1804, !noalias !1805, !nonnull !5, !noundef !5 ; 3 uses
  %i.ama = getelementptr inbounds nuw [32 x i8], ptr %i.alz, i64 %i.alu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ama, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !1800
  %i.amb = add i64 %i.alu, 1                      ; 3 uses
  store i64 %i.amb, ptr %i.te, align 8, !alias.scope !1804, !noalias !1805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1799
  %i.amc = fadd double %.sroa.0.0.ph44.i, %i.alh  ; 2 uses
  %i.amd = icmp ult i64 %i.ajx, %.sroa.07.sroa.6.0.copyload.i
  br i1 %i.amd, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterdEIB1o_TNtNtCscdodAO9FK5_5alloc6string6StringdEEEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i

.body.thread.i:                                   ; preds = %bb.jg, %bb.iz, %.body.thread14.loopexit.split-lp.i, %.body.thread14.loopexit.loopexit.split-lp.i, %.body.thread14.loopexit.loopexit.i
  %eh.lpad-body12.i = phi { ptr, i32 } [ %i.alx, %bb.jg ], [ %i.alm, %bb.iz ], [ %lpad.loopexit.split-lp.i228, %.body.thread14.loopexit.split-lp.i ], [ %lpad.loopexit23.i, %.body.thread14.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp24.i, %.body.thread14.loopexit.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.j) #30
          to label %.body238 unwind label %bb.ji, !noalias !1800

bb.ji:                                            ; preds = %.body.thread.i
  %i.ame = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !1800
  unreachable

.body238:                                         ; preds = %.loopexit, %.loopexit.split-lp, %.body.thread.i, %bb.jv, %.body242
  %.pn = phi { ptr, i32 } [ %eh.lpad-body243, %.body242 ], [ %i.amr, %bb.jv ], [ %eh.lpad-body12.i, %.body.thread.i ], [ %lpad.loopexit301, %.loopexit ], [ %lpad.loopexit.split-lp302, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.cv) #30
          to label %.thread283 unwind label %bb.ki

.loopexit:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit244, %bb.jo, %bb.jy, %bb.ka, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs2JiOgHzbbc7_10tokenizers.exit.i, %._crit_edge.i230
  %lpad.loopexit301 = landingpad { ptr, i32 }
          cleanup
  br label %.body238

.loopexit.split-lp:                               ; preds = %bb.is, %bb.it
  %lpad.loopexit.split-lp302 = landingpad { ptr, i32 }
          cleanup
  br label %.body238

bb.jj:                                            ; preds = %._crit_edge.i230
end_hunk_1
begin_hunk_2_@_RNvXs_NtCsk5MxK7dhvvC_8esaxx_rs5typesNtB4_11SuffixErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt:bb.a
  %narrow = select i1 %i.d, i8 %i.c, i8 2
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 13)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 8)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.g, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers7prependNtB4_7PrependNtNtB8_9tokenizer10Normalizer9normalize(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  %i.i = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5_16NormalizedString7prepend(ptr noalias noundef nonnull align 8 dereferenceable(80) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtBV_10BpeTrainer11count_pairs0INtB6_5FnMutTTjRNtNtBX_4word4WordEEE8call_mutB11_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [12 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [64 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [64 x i8], align 8                ; 6 uses
  %i.k = alloca [64 x i8], align 8                ; 6 uses
  %i.l = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %.val = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val1 = load ptr, ptr %i.m, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2372
  %i.n = tail call noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE), !noalias !2373 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2373, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !2373, !nonnull !5, !align !12, !noundef !5
  %i.r = tail call noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS), !noalias !2373 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !5, !noalias !2373, !nonnull !5
  %i.v = tail call noundef i64 %i.u(ptr noundef nonnull %i.o), !noalias !2373, !inline_history !2361
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s, i64 noundef %i.v), !noalias !2372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) @6, i64 32, i1 false), !noalias !2372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false), !noalias !2372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2372
  %i.x = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE)
          to label %.noexc.i unwind label %bb.b, !noalias !2372 ; 2 uses

.noexc.i:                                         ; preds = %bb.a
  %i.y = load ptr, ptr %i.x, align 8, !noalias !2374, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !2374, !nonnull !5, !align !12, !noundef !5
  %i.ab = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS)
          to label %.noexc12.i unwind label %bb.b, !noalias !2375 ; 2 uses

.noexc12.i:                                       ; preds = %.noexc.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !5, !noalias !2374, !nonnull !5
  %i.ae = invoke noundef i64 %i.ad(ptr noundef nonnull %i.y)
          to label %.noexc13.i unwind label %bb.b, !noalias !2375, !inline_history !1

.noexc13.i:                                       ; preds = %.noexc12.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  invoke void @_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af, i64 noundef %i.ae)
          to label %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit.i unwind label %bb.b, !noalias !2375

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmEINtNtBG_8hash_set8AHashSetjEEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.body.i, %bb.b
  %.pn.pn.i = phi { ptr, i32 } [ %i.ag, %bb.b ], [ %.pn.i, %.body.i ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTmmElEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.w, !noalias !2375

bb.b:                                             ; preds = %.noexc13.i, %.noexc12.i, %.noexc.i, %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmEINtNtBG_8hash_set8AHashSetjEEECs2JiOgHzbbc7_10tokenizers.exit.i

_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit.i: ; preds = %.noexc13.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !2372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) @6, i64 32, i1 false), !noalias !2372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !2372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2372
  invoke void @_RNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB5_4Word9get_chars(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
          to label %bb.d unwind label %bb.c, !noalias !2375

.body.i:                                          ; preds = %bb.g, %bb.f, %bb.c
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.f ], [ %i.ai, %bb.c ], [ %i.at, %bb.g ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTmmEINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmEINtNtBG_8hash_set8AHashSetjEEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.w, !noalias !2375

bb.c:                                             ; preds = %bb.j, %bb.h, %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.d:                                             ; preds = %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !2372, !noundef !5 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ap = icmp ult i64 %i.ak, 2
  br i1 %i.ap, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !2372, !nonnull !5, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  br label %bb.l

bb.e:                                             ; preds = %bb.v
  %i.as = icmp ult i64 %.sroa.5.0.i9, 3
  br i1 %i.as, label %._crit_edge, label %bb.l

.loopexit.i:                                      ; preds = %bb.v, %.noexc31.i, %.noexc30.i, %.noexc29.i, %.noexc28.i, %bb.t, %bb.r, %bb.p, %bb.m
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp.i:                             ; preds = %bb.n
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.i) #30
          to label %.body.i unwind label %bb.w, !noalias !2375

._crit_edge:                                      ; preds = %bb.e, %bb.d
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.h unwind label %bb.g, !noalias !2375

bb.g:                                             ; preds = %._crit_edge
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i unwind label %bb.i, !noalias !2375

bb.h:                                             ; preds = %._crit_edge
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.c, !noalias !2375

bb.i:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2375
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2372
  %i.av = load ptr, ptr %.val1, align 8, !noalias !2372, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !2375, !noundef !5
  %.not7.i = icmp eq ptr %i.aw, null
  br i1 %.not7.i, label %_RNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB7_10BpeTrainer11count_pairs0Bd_.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i
  invoke void @_RNvMs_NtCsgo2jZVVEzqi_9indicatif12progress_barNtB4_11ProgressBar3inc(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av, i64 noundef 1)
          to label %_RNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB7_10BpeTrainer11count_pairs0Bd_.exit unwind label %bb.c, !noalias !2375

bb.k:                                             ; preds = %bb.n
  unreachable

bb.l:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.0.0.i10 = phi ptr [ %i.ar, %.lr.ph ], [ %i.ay, %bb.e ] ; 2 uses
  %.sroa.5.0.i9 = phi i64 [ %i.ak, %.lr.ph ], [ %i.ax, %bb.e ] ; 2 uses
  %i.ax = add i64 %.sroa.5.0.i9, -1
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i10, i64 4 ; 2 uses
  %i.az = load i32, ptr %.sroa.0.0.i10, align 4, !noalias !2375, !noundef !5 ; 2 uses
  %i.ba = load i32, ptr %i.ay, align 4, !noalias !2375, !noundef !5 ; 2 uses
  %i.bb = load i64, ptr %i.al, align 8, !noalias !2372, !noundef !5 ; 2 uses
  %i.bc = icmp ult i64 %2, %i.bb
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bd = load ptr, ptr %.val, align 8, !noalias !2372, !nonnull !5, !align !12, !noundef !5
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %2
  %i.bf = load i64, ptr %i.be, align 8, !noalias !2375, !noundef !5
  %i.bg = trunc i64 %i.bf to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2372
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapTmmElNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE11rustc_entryCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k, i32 noundef %i.az, i32 noundef %i.ba)
          to label %bb.o unwind label %.loopexit.i, !noalias !2375

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #29
          to label %bb.k unwind label %.loopexit.split-lp.i, !noalias !2375

bb.o:                                             ; preds = %bb.m
  %i.bh = load ptr, ptr %i.e, align 8, !noalias !2372, !noundef !5 ; 2 uses
  %.not8.i = icmp eq ptr %i.bh, null
  br i1 %.not8.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.410.0.copyload.i = load i64, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2372
  %.sroa.511.0.copyload.i = load ptr, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !2372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2372
  %i.bi = ptrtoint ptr %.sroa.511.0.copyload.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2376
  store i64 %i.bi, ptr %i.c, align 8, !noalias !2376
  store i32 0, ptr %i.am, align 8, !noalias !2376
  %i.bj = invoke noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTmmElEE14insert_no_growCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bh, i64 noundef %.sroa.410.0.copyload.i, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.c)
          to label %.noexc19.i unwind label %.loopexit.i, !noalias !2375

.noexc19.i:                                       ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2376
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bk = load ptr, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2372, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2372
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.noexc19.i
  %.pn.i.i = phi ptr [ %i.bj, %.noexc19.i ], [ %i.bk, %bb.q ]
  %.sroa.0.0.i18.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -4 ; 2 uses
  %i.bl = load i32, ptr %.sroa.0.0.i18.i, align 4, !noalias !2375, !noundef !5
  %i.bm = add i32 %i.bl, %i.bg
  store i32 %i.bm, ptr %.sroa.0.0.i18.i, align 4, !noalias !2375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2372
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapTmmEINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetjENtNtB18_12random_state11RandomStateE11rustc_entryCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.j, i32 noundef %i.az, i32 noundef %i.ba)
          to label %bb.s unwind label %.loopexit.i, !noalias !2375

bb.s:                                             ; preds = %bb.r
  %i.bn = load ptr, ptr %i.d, align 8, !noalias !2372, !noundef !5 ; 2 uses
  %.not9.i = icmp eq ptr %i.bn, null
  br i1 %.not9.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.416.0.copyload.i = load i64, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !2372
  %.sroa.517.0.copyload.i = load ptr, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !2372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2372
  %i.bo = ptrtoint ptr %.sroa.517.0.copyload.i to i64
  %i.bp = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE)
          to label %.noexc28.i unwind label %.loopexit.i, !noalias !2375 ; 2 uses

.noexc28.i:                                       ; preds = %bb.t
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !2377, !nonnull !5, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !2377, !nonnull !5, !align !12, !noundef !5
  %i.bt = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS)
          to label %.noexc29.i unwind label %.loopexit.i, !noalias !2375 ; 2 uses

.noexc29.i:                                       ; preds = %.noexc28.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !5, !noalias !2377, !nonnull !5
  %i.bw = invoke noundef i64 %i.bv(ptr noundef nonnull %i.bq)
          to label %.noexc30.i unwind label %.loopexit.i, !noalias !2375, !inline_history !0

.noexc30.i:                                       ; preds = %.noexc29.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  invoke void @_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bx, i64 noundef %i.bw)
          to label %.noexc31.i unwind label %.loopexit.i, !noalias !2375

.noexc31.i:                                       ; preds = %.noexc30.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @6, i64 32, i1 false), !noalias !2378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2378
  store i64 %i.bo, ptr %i.b, align 8, !noalias !2378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !2378
  %i.by = invoke noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTmmEINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetjEEE14insert_no_growCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bn, i64 noundef %.sroa.416.0.copyload.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.b)
          to label %.noexc32.i unwind label %.loopexit.i, !noalias !2375

.noexc32.i:                                       ; preds = %.noexc31.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2378
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bz = load ptr, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !2372, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2372
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.noexc32.i
  %.pn.i26.i = phi ptr [ %i.by, %.noexc32.i ], [ %i.bz, %bb.u ]
  %.sroa.0.0.i27.i = getelementptr inbounds i8, ptr %.pn.i26.i, i64 -64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2372
  %i.ca = invoke noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapjuNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %.sroa.0.0.i27.i, i64 noundef %2)
          to label %bb.e unwind label %.loopexit.i, !noalias !2375 ; 0 uses

bb.w:                                             ; preds = %bb.f, %.body.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmEINtNtBG_8hash_set8AHashSetjEEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2375
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmEINtNtBG_8hash_set8AHashSetjEEECs2JiOgHzbbc7_10tokenizers.exit.i
  resume { ptr, i32 } %.pn.pn.i

_RNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB7_10BpeTrainer11count_pairs0Bd_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false), !noalias !2379
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cc, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false), !noalias !2379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtBV_10BpeTrainer11count_pairss0_0INtB6_5FnMutTTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB2x_B3d_INtNtB2B_8hash_set8AHashSetjEEEB2v_EE8call_mutB11_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(128) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(128) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %3, i64 128, i1 false)
  call fastcc void @_RNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB7_10BpeTrainer11count_pairss0_0Bd_(ptr noalias noundef align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(128) %i.a, ptr noalias noundef readonly align 8 captures(none) dereferenceable(128) %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBU_14UnigramTrainer10run_e_steps1_0INtB6_5FnMutTTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEB2B_EE8call_mutB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.0.0.copyload = load double, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.4.40.copyload = load double, ptr %3, align 8
  %.sroa.6.40..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.6.40.copyload = load i32, ptr %.sroa.6.40..sroa_idx, align 8
  %.sroa.71.40..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.71.40.copyload = load i64, ptr %.sroa.71.40..sroa_idx, align 8
  %.sroa.8.40..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.8.40.copyload = load ptr, ptr %.sroa.8.40..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.9.40..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.9.40.copyload = load i64, ptr %.sroa.9.40..sroa_idx, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2384)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2385
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2385
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !2385, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noalias !2385, !noundef !5
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = icmp ult i64 %.sroa.9.40.copyload, 1152921504606846976
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.40.copyload, i64 %.sroa.9.40.copyload
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2385
  store ptr %i.f, ptr %i.a, align 8, !noalias !2385
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2385
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.8.40.copyload, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !2385
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.8.40.copyload, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2385
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sroa.71.40.copyload, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !2385
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.k, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2385
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecdEINtB4_18SpecFromIterNesteddINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1A_3zip3ZipINtNtNtB1E_5slice4iter4IterdEINtNtB6_9into_iter8IntoIterdEENCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3G_14UnigramTrainer10run_e_steps1_00EE9from_iterB3M_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
          to label %bb.c unwind label %bb.b, !noalias !2385

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.c) #30
          to label %common.resume.i unwind label %bb.f, !noalias !2385

bb.c:                                             ; preds = %bb.a
  %i.m = add i32 %.sroa.6.40.copyload, %.sroa.2.0.copyload
  %i.n = fadd double %.sroa.0.0.copyload, %.sroa.4.40.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2385
  store double %i.n, ptr %0, align 8, !alias.scope !2384, !noalias !2386
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.m, ptr %i.o, align 8, !alias.scope !2384, !noalias !2386
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2385
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer10run_e_steps1_0Bc_.exit unwind label %bb.d, !noalias !2385

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i unwind label %bb.e, !noalias !2385

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2385
  unreachable

common.resume.i:                                  ; preds = %bb.d, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.l, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2385
  unreachable

_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer10run_e_steps1_0Bc_.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !2385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2385
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBU_14UnigramTrainer10run_e_steps_0INtB6_5FnMutTRSTNtNtCscdodAO9FK5_5alloc6string6StringmEEE8call_mutB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 288230376151711744) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [112 x i8], align 8               ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %.val = load ptr, ptr %i.e, align 8, !nonnull !5, !align !12, !noundef !5 ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val1 = load ptr, ptr %i.f, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2393)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2394
  %i.g = load ptr, ptr %.val, align 8, !noalias !2394, !nonnull !5, !align !12, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load i64, ptr %i.h, align 8, !noalias !2394, !noundef !5 ; 4 uses
  %i.j = icmp ult i64 %i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.j)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2395)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2396
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.i, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !noalias !2396
  %i.k = load i64, ptr %i.a, align 8, !range !6, !noalias !2396, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !7, !noalias !2396, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8, !noalias !2396
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #29, !noalias !2396
  unreachable

_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !noalias !2396, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2396
  store i64 %i.n, ptr %i.d, align 8, !alias.scope !2395, !noalias !2394
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !2395, !noalias !2394
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.i, ptr %i.s, align 8, !alias.scope !2395, !noalias !2394
  %.idx.i = shl nuw nsw i64 %3, 5
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i
  %i.u = icmp eq i64 %3, 0
  br i1 %i.u, label %_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer10run_e_steps_0Bc_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.o, %.lr.ph.i
  %.sroa.0.011.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.aw, %bb.o ]
  %.sroa.02.010.i = phi i32 [ 0, %.lr.ph.i ], [ %i.aq, %bb.o ]
  %.sroa.04.09.i = phi ptr [ %2, %.lr.ph.i ], [ %i.w, %bb.o ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2394
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !2393, !noalias !2392, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !2393, !noalias !2392, !noundef !5
  %i.ab = load ptr, ptr %.val, align 8, !noalias !2394, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 304
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !2394, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 312
  %i.af = load i64, ptr %i.ae, align 8, !noalias !2394, !noundef !5
  invoke void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice4from(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.aa, i64 noundef %i.ad, i64 noundef %i.af)
          to label %bb.f unwind label %bb.e, !noalias !2394

bb.d:                                             ; preds = %.body.i, %bb.e
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.ag, %bb.e ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.d) #30
          to label %bb.r unwind label %bb.q, !noalias !2394

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB1O_.exit.i, %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %.val, align 8, !noalias !2394, !nonnull !5, !align !12, !noundef !5
  invoke void @_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram14populate_nodes(ptr noundef nonnull align 8 %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c)
          to label %bb.g unwind label %.loopexit.i, !noalias !2394

.loopexit.i:                                      ; preds = %bb.m, %bb.i, %bb.g, %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.j
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.l, %.loopexit.split-lp.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ar, %bb.l ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice7LatticeEBJ_(ptr noalias noundef align 8 dereferenceable(112) %i.c) #30
          to label %bb.d unwind label %bb.q, !noalias !2394

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !alias.scope !2393, !noalias !2392, !noundef !5
  %i.ak = uitofp i32 %i.aj to double
  %i.al = invoke noundef double @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice17populate_marginal(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.c, double noundef %i.ak, ptr noalias noundef nonnull align 8 %i.q, i64 noundef %i.i)
          to label %bb.h unwind label %.loopexit.i, !noalias !2394 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.am = fcmp uno double %i.al, 0.000000e+00
  br i1 %i.am, label %bb.j, label %bb.i, !prof !8

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2394
  invoke void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice7viterbi(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c)
          to label %bb.k unwind label %.loopexit.i, !noalias !2394

bb.j:                                             ; preds = %bb.h
  invoke void @_RINvNtCs2AWtUsOyxgP_3std9panicking11begin_panicReEB4_(ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 50, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #29
          to label %bb.p unwind label %.loopexit.split-lp.i, !noalias !2394

bb.k:                                             ; preds = %bb.i
  %i.an = load i64, ptr %i.v, align 8, !noalias !2394, !noundef !5 ; 2 uses
  %i.ao = icmp ult i64 %i.an, 1152921504606846976
  call void @llvm.assume(i1 %i.ao)
  %i.ap = trunc i64 %i.an to i32
  %i.aq = add i32 %.sroa.02.010.i, %i.ap          ; 2 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtBX_3ops4drop4Drop4dropB1B_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.m unwind label %bb.l, !noalias !2394

bb.l:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtB14_3ops4drop4Drop4dropB1I_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.n, !noalias !2394

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtB14_3ops4drop4Drop4dropB1I_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB1O_.exit.i unwind label %.loopexit.i, !noalias !2394

bb.n:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2394
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB1O_.exit.i: ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2394
  %i.at = load i32, ptr %.val1, align 4, !noalias !2394, !noundef !5
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice7LatticeEBJ_(ptr noalias noundef align 8 dereferenceable(112) %i.c)
          to label %bb.o unwind label %bb.e, !noalias !2394

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB1O_.exit.i
  %i.au = uitofp i32 %i.at to double
  %i.av = fdiv double %i.al, %i.au
  %i.aw = fsub double %.sroa.0.011.i, %i.av       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2394
  %i.ax = icmp eq ptr %i.w, %i.t
  br i1 %i.ax, label %_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer10run_e_steps_0Bc_.exit, label %bb.c

bb.p:                                             ; preds = %bb.j
  unreachable

bb.q:                                             ; preds = %.body.i, %bb.d
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2394
  unreachable

bb.r:                                             ; preds = %bb.d
  resume { ptr, i32 } %.pn.i

_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer10run_e_steps_0Bc_.exit: ; preds = %bb.o, %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i
  %.sroa.02.0.lcssa.i = phi i32 [ 0, %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %i.aq, %bb.o ]
  %.sroa.0.0.lcssa.i = phi double [ 0.000000e+00, %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %i.aw, %bb.o ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2393
  store double %.sroa.0.0.lcssa.i, ptr %0, align 8, !alias.scope !2392, !noalias !2393
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.02.0.lcssa.i, ptr %i.ba, align 8, !alias.scope !2392, !noalias !2393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2394
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBU_14UnigramTrainer21prune_sentence_pieces0INtB6_5FnMutTRSTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEE8call_mutB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [112 x i8], align 8               ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2420)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2421
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2419, !noalias !2422, !nonnull !5, !align !12, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !2421, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2423)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2424
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.l, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !noalias !2424
  %i.m = load i64, ptr %i.a, align 8, !range !6, !noalias !2424, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !7, !noalias !2424, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.n, label %bb.b, label %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %i.q, align 8, !noalias !2424
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #29, !noalias !2424
  unreachable

_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.a
  %i.s = load ptr, ptr %i.q, align 8, !noalias !2424, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2424
  store i64 %i.p, ptr %i.h, align 8, !alias.scope !2423, !noalias !2421
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.s, ptr %i.t, align 8, !alias.scope !2423, !noalias !2421
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.l, ptr %i.u, align 8, !alias.scope !2423, !noalias !2421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2421
  store i64 0, ptr %i.f, align 8, !noalias !2421
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !noalias !2421
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.w, align 8, !noalias !2421
  %i.x = load i64, ptr %i.k, align 8, !noalias !2421, !noundef !5
  invoke void @_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtB5_3VecjENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, i64 noundef %i.x)
          to label %bb.g unwind label %bb.f, !noalias !2421

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_jEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.k, %bb.f
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %.pn.pn.pn.i, %bb.k ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.d unwind label %bb.c, !noalias !2421

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_jEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.e, !noalias !2421

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_jEEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ac

bb.e:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2421
  unreachable

bb.f:                                             ; preds = %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_jEEECs2JiOgHzbbc7_10tokenizers.exit

bb.g:                                             ; preds = %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2421
  %.idx.i = shl nuw nsw i64 %3, 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i
  %i.ac = icmp eq i64 %3, 0
  br i1 %i.ac, label %_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer21prune_sentence_pieces0Bc_.exit, label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !2419, !noalias !2422, !nonnull !5, !align !12, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !2419, !noalias !2422, !nonnull !5, !align !12, !noundef !5
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !2419, !noalias !2422, !nonnull !5, !align !12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.t, %.lr.ph44.i
  %.sroa.0.042.i = phi double [ 0.000000e+00, %.lr.ph44.i ], [ %i.be, %bb.t ]
  %.sroa.02.041.i = phi ptr [ %2, %.lr.ph44.i ], [ %i.an, %bb.t ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.02.041.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.02.041.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !2420, !noalias !2425, !nonnull !5, !align !12, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2421
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !2421, !nonnull !5, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.at = load i64, ptr %i.as, align 8, !noalias !2421, !noundef !5
  %i.au = load i64, ptr %i.ae, align 8, !noalias !2421, !noundef !5
  %i.av = load i64, ptr %i.ag, align 8, !noalias !2421, !noundef !5
  invoke void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice4from(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %i.at, i64 noundef %i.au, i64 noundef %i.av)
          to label %bb.n unwind label %bb.m, !noalias !2421

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB25_.exit.i, %bb.m
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB25_.exit.i ], [ %i.ay, %bb.m ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_jEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.k unwind label %bb.j, !noalias !2421

bb.j:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.l, !noalias !2421

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_jEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ac

bb.l:                                             ; preds = %bb.j
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2421
  unreachable

bb.m:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB25_.exit17.i, %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.n:                                             ; preds = %bb.h
  %i.az = load ptr, ptr %i.ai, align 8, !noalias !2421, !nonnull !5, !align !12, !noundef !5
  invoke void @_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram14populate_nodes(ptr noundef nonnull align 8 %i.az, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.e)
          to label %bb.p unwind label %bb.o, !noalias !2421

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB25_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit.i, %bb.o
  %.pn.pn.i = phi { ptr, i32 } [ %i.ba, %bb.o ], [ %.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice7LatticeEBJ_(ptr noalias noundef align 8 dereferenceable(112) %i.e) #30
          to label %bb.i unwind label %bb.ac, !noalias !2421

bb.o:                                             ; preds = %._crit_edge.i, %bb.p, %bb.n
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB25_.exit.i

bb.p:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !noalias !2421, !noundef !5
  %i.bd = uitofp i32 %i.bc to double              ; 2 uses
  %i.be = fadd double %.sroa.0.042.i, %i.bd       ; 2 uses
end_hunk_2
