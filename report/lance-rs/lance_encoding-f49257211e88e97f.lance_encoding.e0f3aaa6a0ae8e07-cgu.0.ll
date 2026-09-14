Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 155
begin_hunk_0_@_RNCNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB7_18ListOffsetsEncoder16make_encode_task0Bd_:bb.a
bb.am:                                            ; preds = %.noexc30.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !23613
  %i.fw = invoke noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.056.0105.i.i)
          to label %.noexc31.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !23596

.noexc31.i.i:                                     ; preds = %bb.am
  store ptr %i.fw, ptr %i.k, align 8, !noalias !23613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !23613
  store ptr %i.k, ptr %i.j, align 8, !noalias !23613
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_5Debug3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.411.0..sroa_idx.i.i.i, align 8, !noalias !23613
  br label %.noexc31.invoke.i.i

.noexc31.invoke.i.i:                              ; preds = %bb.aq, %bb.ao, %.noexc31.i.i
  %i.fx = phi ptr [ @1769, %.noexc31.i.i ], [ @2075, %bb.ao ], [ @2075, %bb.aq ]
  %i.fy = phi ptr [ %i.j, %.noexc31.i.i ], [ %i.f, %bb.ao ], [ %i.b, %bb.aq ]
  %i.fz = phi ptr [ @1770, %.noexc31.i.i ], [ @2076, %bb.ao ], [ @2076, %bb.aq ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %i.fx, ptr noundef nonnull %i.fy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fz) #66
          to label %.noexc31.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !23596

.noexc31.cont.i.i:                                ; preds = %.noexc31.invoke.i.i
  unreachable

bb.an:                                            ; preds = %.noexc30.i.i
  %i.ga = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.056.0105.i.i)
          to label %.noexc33.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !23596 ; 2 uses

.noexc33.i.i:                                     ; preds = %bb.an
  %i.gb = extractvalue { ptr, ptr } %i.ga, 0      ; 4 uses
  %i.gc = extractvalue { ptr, ptr } %i.ga, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !23613
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !invariant.load !75, !noalias !23612, !nonnull !75
  invoke void %i.ge(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, ptr noundef %i.gb)
          to label %.noexc34.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !23596, !inline_history !23466

.noexc34.i.i:                                     ; preds = %.noexc33.i.i
  %i.gf = load i128, ptr %i.i, align 16, !noalias !23613, !noundef !75
  %i.gg = icmp ne i128 %i.gf, -163779089370675401371046476244961094779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !23613
  %.not1.i.i.i.i = icmp eq ptr %i.gb, null
  %.not.i.i.i.i = or i1 %.not1.i.i.i.i, %i.gg
  br i1 %.not.i.i.i.i, label %.invoke.i.i, label %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types9Int32TypeECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, !prof !81

.invoke.i.i:                                      ; preds = %.noexc38.i.i, %.noexc34.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @451, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @453) #66
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !23596

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types9Int32TypeECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %.noexc34.i.i
  %i.gh = getelementptr i8, ptr %i.gb, i64 32
  %.val.i.i.i = load ptr, ptr %i.gh, align 8, !noalias !23612 ; 6 uses
  %i.gi = getelementptr i8, ptr %i.gb, i64 40
  %.val13.i.i.i = load i64, ptr %i.gi, align 8, !noalias !23612, !noundef !75 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !23613
  store i64 0, ptr %i.h, align 8, !noalias !23613
  %i.gj = lshr i64 %.val13.i.i.i, 2               ; 2 uses
  %.not52.i.i.i = icmp eq i64 %i.gj, 0
  br i1 %.not52.i.i.i, label %bb.ao, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int32TypeE5valueCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, !prof !81

bb.ao:                                            ; preds = %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types9Int32TypeECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23613
  store i64 0, ptr %i.g, align 8, !noalias !23613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23613
  store ptr %i.h, ptr %i.f, align 8, !noalias !23613
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !23613
  %i.gk = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.gk, align 8, !noalias !23613
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !23613
  br label %.noexc31.invoke.i.i

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int32TypeE5valueCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types9Int32TypeECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %i.gl = load i32, ptr %.val.i.i.i, align 4, !noalias !23612, !noundef !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !23613
  %i.gm = sext i32 %i.gl to i64
  %i.gn = sub i64 %i.ft, %i.gm                    ; 8 uses
  %.not12.i.i.i = icmp eq ptr %i.en, null
  %.idx54.i.i.i = and i64 %.val13.i.i.i, -4       ; 3 uses
  br i1 %.not12.i.i.i, label %bb.av, label %bb.ar

bb.ap:                                            ; preds = %.noexc30.i.i
  %i.go = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.056.0105.i.i)
          to label %.noexc37.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !23596 ; 2 uses

.noexc37.i.i:                                     ; preds = %bb.ap
  %i.gp = extractvalue { ptr, ptr } %i.go, 0      ; 4 uses
  %i.gq = extractvalue { ptr, ptr } %i.go, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23613
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8, !invariant.load !75, !noalias !23612, !nonnull !75
  invoke void %i.gs(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noundef %i.gp)
          to label %.noexc38.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !23596, !inline_history !23466

.noexc38.i.i:                                     ; preds = %.noexc37.i.i
  %i.gt = load i128, ptr %i.e, align 16, !noalias !23613, !noundef !75
  %i.gu = icmp ne i128 %i.gt, 113670456804898985252008330795779535745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23613
  %.not1.i18.i.i.i = icmp eq ptr %i.gp, null
  %.not.i19.i.i.i = or i1 %.not1.i18.i.i.i, %i.gu
  br i1 %.not.i19.i.i.i, label %.invoke.i.i, label %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types9Int64TypeECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, !prof !81

_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types9Int64TypeECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %.noexc38.i.i
  %i.gv = getelementptr i8, ptr %i.gp, i64 32
  %.val14.i.i.i = load ptr, ptr %i.gv, align 8, !noalias !23612 ; 6 uses
  %.val14.i.i.i114 = ptrtoaddr ptr %.val14.i.i.i to i64
  %i.gw = getelementptr i8, ptr %i.gp, i64 40
  %.val15.i.i.i = load i64, ptr %i.gw, align 8, !noalias !23612, !noundef !75 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23613
  store i64 0, ptr %i.d, align 8, !noalias !23613
  %i.gx = lshr i64 %.val15.i.i.i, 3               ; 2 uses
  %.not51.i.i.i = icmp eq i64 %i.gx, 0
  br i1 %.not51.i.i.i, label %bb.aq, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE5valueCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, !prof !81

bb.aq:                                            ; preds = %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types9Int64TypeECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23613
  store i64 0, ptr %i.c, align 8, !noalias !23613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23613
  store ptr %i.d, ptr %i.b, align 8, !noalias !23613
  %.sroa.42.0..sroa_idx.i20.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i20.i.i.i, align 8, !noalias !23613
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.gy, align 8, !noalias !23613
  %.sroa.46.0..sroa_idx.i21.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i21.i.i.i, align 8, !noalias !23613
  br label %.noexc31.invoke.i.i

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE5valueCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %_RINvYDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_NtNtB8_4cast7AsArray12as_primitiveNtNtB8_5types9Int64TypeECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %i.gz = load i64, ptr %.val14.i.i.i, align 8, !noalias !23612, !noundef !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23613
  %i.ha = sub i64 %i.ft, %i.gz                    ; 8 uses
  %.not.i29.i.i = icmp eq ptr %i.en, null
  %.idx.i.i.i = and i64 %.val15.i.i.i, -8         ; 3 uses
  br i1 %.not.i29.i.i, label %bb.bd, label %bb.az

bb.ar:                                            ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int32TypeE5valueCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.idx54.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !23613
  invoke void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer4iter(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) dereferenceable_or_null(88) %i.en)
          to label %.noexc41.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !23596

.noexc41.i.i:                                     ; preds = %bb.ar
  %.sroa.69.24.copyload.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !23614, !noalias !23615 ; 2 uses
  %.sroa.911.24.copyload.i.i.i = load i64, ptr %.sroa.911.24..sroa_idx.i.i.i, align 8, !alias.scope !23614, !noalias !23615 ; 4 uses
  %.sroa.10.24.copyload.i.i.i = load i64, ptr %.sroa.10.24..sroa_idx.i.i.i, align 8, !alias.scope !23614, !noalias !23615 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !23613
  call void @llvm.experimental.noalias.scope.decl(metadata !23616)
  %i.hc = ptrtoint ptr %i.hb to i64
  %.not.i.i.i.i.i.i.peel.i.i.i = icmp ugt i64 %.val13.i.i.i, 7
  %i.hd = getelementptr i8, ptr %.val.i.i.i, i64 4 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.peel.i.i.i, label %select.unfold.i.i.i.i.peel.i.i.i, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB5_18ListOffsetsEncoder22extend_offsets_vec_u64.exit.i.i

select.unfold.i.i.i.i.peel.i.i.i:                 ; preds = %.noexc41.i.i
  %.sink.i.ph.i.i.i.i.peel.i.i.i = getelementptr i8, ptr %.val.i.i.i, i64 8
  %i.he = icmp eq i64 %.sroa.911.24.copyload.i.i.i, %.sroa.10.24.copyload.i.i.i
  br i1 %i.he, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB5_18ListOffsetsEncoder22extend_offsets_vec_u64.exit.i.i, label %bb.as

bb.as:                                            ; preds = %select.unfold.i.i.i.i.peel.i.i.i
  %i.hf = lshr i64 %.sroa.911.24.copyload.i.i.i, 3
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.69.24.copyload.i.i.i, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !noalias !23617, !noundef !75
  %i.hi = trunc i64 %.sroa.911.24.copyload.i.i.i to i8
  %i.hj = and i8 %i.hi, 7
  %i.hk = add i64 %.sroa.911.24.copyload.i.i.i, 1 ; 2 uses
  %i.hl = lshr i8 %i.hh, %i.hj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hd) ]
  %i.hm = trunc i8 %i.hl to i1
  %.val5.i.i.peel.i.i.i = load i32, ptr %i.hd, align 4, !noalias !23618, !noundef !75
  %i.hn = sext i32 %.val5.i.i.peel.i.i.i to i64
  %i.ho = add i64 %i.gn, %i.hn
  %i.hp = select i1 %i.hm, i64 0, i64 %i.dr
  %i.hq = add i64 %i.ho, %i.hp
  %i.hr = icmp ult i64 %i.ek, 1152921504606846976
  call void @llvm.assume(i1 %i.hr)
  %i.hs = load i64, ptr %i.q, align 8, !range !76, !alias.scope !23619, !noalias !23620, !noundef !75
  %i.ht = icmp eq i64 %i.ek, %i.hs
  br i1 %i.ht, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.peel.i.i.i, label %.peel.next62.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.peel.i.i.i: ; preds = %bb.as
  %gepdiff83.i.i.i = add i64 %.val13.i.i.i, -8
  %i.hu = lshr i64 %gepdiff83.i.i.i, 2
  %i.hv = sub i64 %.sroa.10.24.copyload.i.i.i, %i.hk
  %.sroa.0.0.i.i.i.i.i.peel.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.hv, i64 %i.hu)
  %i.hw = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.peel.i.i.i, 1
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.ek, i64 noundef %i.hw, i64 noundef 8, i64 noundef 8)
          to label %.peel.next62.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !23596

.peel.next62.i.i.i:                               ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.peel.i.i.i, %bb.as
  %i.hx = load ptr, ptr %i.ef, align 8, !alias.scope !23619, !noalias !23620, !nonnull !75, !noundef !75 ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.ek
  store i64 %i.hq, ptr %i.hy, align 8, !noalias !23621
  %storemerge8493.i.i.i = add nuw nsw i64 %i.ek, 1 ; 3 uses
  store i64 %storemerge8493.i.i.i, ptr %i.eg, align 8, !alias.scope !23619, !noalias !23620
  %i.hz = icmp eq i64 %.idx54.i.i.i, 8
  br i1 %i.hz, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB5_18ListOffsetsEncoder22extend_offsets_vec_u64.exit.i.i, label %select.unfold.i.i.i.i.i.i.i

select.unfold.i.i.i.i.i.i.i:                      ; preds = %.peel.next62.i.i.i, %bb.au
  %storemerge8496.i.i.i = phi i64 [ %storemerge84.i.i.i, %bb.au ], [ %storemerge8493.i.i.i, %.peel.next62.i.i.i ] ; 5 uses
  %.val.i.i.i.i9.i95.i.i.i = phi ptr [ %.sink.i.ph.i.i.i.i.i.i.i, %bb.au ], [ %.sink.i.ph.i.i.i.i.peel.i.i.i, %.peel.next62.i.i.i ] ; 3 uses
  %i.ia = phi i64 [ %i.ii, %bb.au ], [ %i.hk, %.peel.next62.i.i.i ] ; 4 uses
  %i.ib = phi ptr [ %i.iw, %bb.au ], [ %i.hx, %.peel.next62.i.i.i ]
  %.sink.i.ph.i.i.i.i.i.i.i = getelementptr i8, ptr %.val.i.i.i.i9.i95.i.i.i, i64 4 ; 3 uses
  %i.ic = icmp eq i64 %i.ia, %.sroa.10.24.copyload.i.i.i
  br i1 %i.ic, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB5_18ListOffsetsEncoder22extend_offsets_vec_u64.exit.i.i, label %bb.at

bb.at:                                            ; preds = %select.unfold.i.i.i.i.i.i.i
  %i.id = lshr i64 %i.ia, 3
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.69.24.copyload.i.i.i, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !noalias !23617, !noundef !75
  %i.ig = trunc i64 %i.ia to i8
  %i.ih = and i8 %i.ig, 7
  %i.ii = add i64 %i.ia, 1                        ; 2 uses
  %i.ij = lshr i8 %i.if, %i.ih
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i9.i95.i.i.i) ]
  %i.ik = trunc i8 %i.ij to i1
  %.val5.i.i.i.i.i = load i32, ptr %.val.i.i.i.i9.i95.i.i.i, align 4, !noalias !23618, !noundef !75
  %i.il = sext i32 %.val5.i.i.i.i.i to i64
  %i.im = add i64 %i.gn, %i.il
  %i.in = select i1 %i.ik, i64 0, i64 %i.dr
  %i.io = add i64 %i.im, %i.in
  %i.ip = load i64, ptr %i.q, align 8, !range !76, !alias.scope !23619, !noalias !23620, !noundef !75
  %i.iq = icmp eq i64 %storemerge8496.i.i.i, %i.ip
  br i1 %i.iq, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i, label %bb.au

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i: ; preds = %bb.at
  %i.ir = ptrtoint ptr %.sink.i.ph.i.i.i.i.i.i.i to i64
  %i.is = sub nuw i64 %i.hc, %i.ir
  %i.it = lshr exact i64 %i.is, 2
  %i.iu = sub i64 %.sroa.10.24.copyload.i.i.i, %i.ii
  %.sroa.0.0.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.iu, i64 %i.it)
  %i.iv = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i, 1
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %storemerge8496.i.i.i, i64 noundef %i.iv, i64 noundef 8, i64 noundef 8)
          to label %.noexc43.i.i unwind label %.loopexit.i.i, !noalias !23596

.noexc43.i.i:                                     ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i
  %.pre65.i.i.i = load ptr, ptr %i.ef, align 8, !alias.scope !23619, !noalias !23620
  br label %bb.au

bb.au:                                            ; preds = %.noexc43.i.i, %bb.at
  %i.iw = phi ptr [ %.pre65.i.i.i, %.noexc43.i.i ], [ %i.ib, %bb.at ] ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %storemerge8496.i.i.i
  store i64 %i.io, ptr %i.ix, align 8, !noalias !23621
  %storemerge84.i.i.i = add nuw nsw i64 %storemerge8496.i.i.i, 1 ; 3 uses
  store i64 %storemerge84.i.i.i, ptr %i.eg, align 8, !alias.scope !23619, !noalias !23620
  %i.iy = icmp eq ptr %.sink.i.ph.i.i.i.i.i.i.i, %i.hb
  br i1 %i.iy, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB5_18ListOffsetsEncoder22extend_offsets_vec_u64.exit.i.i, label %select.unfold.i.i.i.i.i.i.i, !llvm.loop !23486

bb.av:                                            ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int32TypeE5valueCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23622)
  %i.iz = add nsw i64 %i.gj, -1                   ; 2 uses
  %i.ja = load i64, ptr %i.q, align 8, !range !76, !alias.scope !23623, !noalias !23624, !noundef !75
  %i.jb = sub i64 %i.ja, %i.ek
  %i.jc = icmp ugt i64 %i.iz, %i.jb
  br i1 %i.jc, label %bb.aw, label %bb.ay, !prof !81

bb.aw:                                            ; preds = %bb.av
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.ek, i64 noundef %i.iz, i64 noundef 8, i64 noundef 8)
          to label %.noexc44.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !23596

.noexc44.i.i:                                     ; preds = %bb.aw
  %.pre.i.i.i.i = load i64, ptr %i.eg, align 8, !alias.scope !23625, !noalias !23624
  br label %bb.ay

bb.ax:                                            ; preds = %bb.ay
  %gepdiff55.i.i.i = add nsw i64 %.val13.i.i.i, -4 ; 3 uses
  %i.jd = lshr i64 %gepdiff55.i.i.i, 2            ; 6 uses
  %min.iters.check = icmp ult i64 %gepdiff55.i.i.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.ax
  %i.je = shl i64 %i.lc, 3
  %scevgep = getelementptr i8, ptr %i.ld, i64 %i.je
  %i.jf = add i64 %i.lc, %i.jd
  %i.jg = shl i64 %i.jf, 3
  %scevgep108 = getelementptr i8, ptr %i.ld, i64 %i.jg
  %scevgep109 = getelementptr i8, ptr %.val.i.i.i, i64 4
  %i.jh = and i64 %gepdiff55.i.i.i, -4
  %scevgep110 = getelementptr i8, ptr %scevgep109, i64 %i.jh
  %bound0 = icmp ult ptr %scevgep, %scevgep110
  %bound1 = icmp ult ptr %i.le, %scevgep108
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.jd, 4611686018427387900     ; 4 uses
  %i.ji = add i64 %i.lc, %n.vec                   ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.gn, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jj = getelementptr [8 x i8], ptr %i.ld, i64 %i.lc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %index ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %wide.load = load <2 x i32>, ptr %i.jk, align 4, !alias.scope !23626, !noalias !23627
  %wide.load111 = load <2 x i32>, ptr %i.jl, align 4, !alias.scope !23626, !noalias !23627
  %i.jm = sext <2 x i32> %wide.load to <2 x i64>
  %i.jn = sext <2 x i32> %wide.load111 to <2 x i64>
  %i.jo = add <2 x i64> %broadcast.splat, %i.jm
  %i.jp = add <2 x i64> %broadcast.splat, %i.jn
  %i.jq = getelementptr [8 x i8], ptr %i.jj, i64 %index ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  store <2 x i64> %i.jo, ptr %i.jq, align 8, !alias.scope !23628, !noalias !23629
  store <2 x i64> %i.jp, ptr %i.jr, align 8, !alias.scope !23628, !noalias !23629
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.js = icmp eq i64 %index.next, %n.vec
  br i1 %i.js, label %middle.block, label %vector.body, !llvm.loop !23512

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jd, %n.vec
  br i1 %cmp.n, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB5_18ListOffsetsEncoder22extend_offsets_vec_u64.exit.sink.split.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.ax, %middle.block
  %.ph = phi i64 [ %i.lc, %vector.memcheck ], [ %i.lc, %bb.ax ], [ %i.ji, %middle.block ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.ax ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter145 = and i64 %i.jd, 3                 ; 2 uses
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.jt = phi i64 [ %i.jy, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.jz, %scalar.ph.prol ], [ %.sroa.01.0.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter147 = phi i64 [ %prol.iter147.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.prol
  %.val16.i.i.i.i.i.i.i.i.prol = load i32, ptr %i.ju, align 4, !noalias !23627, !noundef !75
  %i.jv = sext i32 %.val16.i.i.i.i.i.i.i.i.prol to i64
  %i.jw = add i64 %i.gn, %i.jv
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.jt
  store i64 %i.jw, ptr %i.jx, align 8, !noalias !23630
  %i.jy = add i64 %i.jt, 1                        ; 3 uses
  %i.jz = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter147.next = add i64 %prol.iter147, 1   ; 2 uses
  %prol.iter147.cmp.not = icmp eq i64 %prol.iter147.next, %xtraiter145
  br i1 %prol.iter147.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !23513

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa135.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.jy, %scalar.ph.prol ]
  %.unr148 = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.jy, %scalar.ph.prol ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.01.0.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.jz, %scalar.ph.prol ]
  %i.ka = sub nsw i64 %.sroa.01.0.i.i.i.i.i.i.i.i.ph, %i.jd
  %i.kb = icmp ugt i64 %i.ka, -4
  br i1 %i.kb, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB5_18ListOffsetsEncoder22extend_offsets_vec_u64.exit.sink.split.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.kc = phi i64 [ %i.kz, %scalar.ph ], [ %.unr148, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i = phi i64 [ %i.la, %scalar.ph ], [ %.sroa.01.0.i.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %.sroa.01.0.i.i.i.i.i.i.i.i
  %.val16.i.i.i.i.i.i.i.i = load i32, ptr %i.kd, align 4, !noalias !23627, !noundef !75
  %i.ke = sext i32 %.val16.i.i.i.i.i.i.i.i to i64
  %i.kf = add i64 %i.gn, %i.ke
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.kc
  store i64 %i.kf, ptr %i.kg, align 8, !noalias !23630
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %.sroa.01.0.i.i.i.i.i.i.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %.val16.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.ki, align 4, !noalias !23627, !noundef !75
  %i.kj = sext i32 %.val16.i.i.i.i.i.i.i.i.1 to i64
  %i.kk = add i64 %i.gn, %i.kj
  %i.kl = getelementptr [8 x i8], ptr %i.ld, i64 %i.kc
  %i.km = getelementptr i8, ptr %i.kl, i64 8
  store i64 %i.kk, ptr %i.km, align 8, !noalias !23630
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %.sroa.01.0.i.i.i.i.i.i.i.i
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %.val16.i.i.i.i.i.i.i.i.2 = load i32, ptr %i.ko, align 4, !noalias !23627, !noundef !75
  %i.kp = sext i32 %.val16.i.i.i.i.i.i.i.i.2 to i64
  %i.kq = add i64 %i.gn, %i.kp
  %i.kr = getelementptr [8 x i8], ptr %i.ld, i64 %i.kc
  %i.ks = getelementptr i8, ptr %i.kr, i64 16
  store i64 %i.kq, ptr %i.ks, align 8, !noalias !23630
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %.sroa.01.0.i.i.i.i.i.i.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 12
  %.val16.i.i.i.i.i.i.i.i.3 = load i32, ptr %i.ku, align 4, !noalias !23627, !noundef !75
  %i.kv = sext i32 %.val16.i.i.i.i.i.i.i.i.3 to i64
  %i.kw = add i64 %i.gn, %i.kv
  %i.kx = getelementptr [8 x i8], ptr %i.ld, i64 %i.kc
  %i.ky = getelementptr i8, ptr %i.kx, i64 24
  store i64 %i.kw, ptr %i.ky, align 8, !noalias !23630
  %i.kz = add i64 %i.kc, 4                        ; 2 uses
  %i.la = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.lb = icmp eq i64 %i.la, %i.jd
  br i1 %i.lb, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB5_18ListOffsetsEncoder22extend_offsets_vec_u64.exit.sink.split.i.i, label %scalar.ph, !llvm.loop !23514

bb.ay:                                            ; preds = %.noexc44.i.i, %bb.av
  %i.lc = phi i64 [ %i.ek, %bb.av ], [ %.pre.i.i.i.i, %.noexc44.i.i ] ; 7 uses
  %i.ld = load ptr, ptr %i.ef, align 8, !alias.scope !23625, !noalias !23624, !nonnull !75, !noundef !75 ; 8 uses
  %i.le = getelementptr i8, ptr %.val.i.i.i, i64 4 ; 7 uses
  %i.lf = icmp samesign eq i64 %.idx54.i.i.i, 4
  br i1 %i.lf, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB5_18ListOffsetsEncoder22extend_offsets_vec_u64.exit.sink.split.i.i, label %bb.ax

bb.az:                                            ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE5valueCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %i.lg = getelementptr inbounds nuw i8, ptr %.val14.i.i.i, i64 %.idx.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !23613
  invoke void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer4iter(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) dereferenceable_or_null(88) %i.en)
          to label %.noexc45.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !23596

.noexc45.i.i:                                     ; preds = %bb.az
  %.sroa.633.24.copyload.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !23631, !noalias !23632 ; 2 uses
  %.sroa.935.24.copyload.i.i.i = load i64, ptr %.sroa.935.24..sroa_idx.i.i.i, align 8, !alias.scope !23631, !noalias !23632 ; 4 uses
  %.sroa.1036.24.copyload.i.i.i = load i64, ptr %.sroa.1036.24..sroa_idx.i.i.i, align 8, !alias.scope !23631, !noalias !23632 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !23613
  call void @llvm.experimental.noalias.scope.decl(metadata !23633)
  %i.lh = ptrtoint ptr %i.lg to i64
  %.not.i.i.i.i.i.i30.peel.i.i.i = icmp ugt i64 %.val15.i.i.i, 15
  %i.li = getelementptr i8, ptr %.val14.i.i.i, i64 8 ; 2 uses
  br i1 %.not.i.i.i.i.i.i30.peel.i.i.i, label %select.unfold.i.i.i.i31.peel.i.i.i, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB5_18ListOffsetsEncoder22extend_offsets_vec_u64.exit.i.i

select.unfold.i.i.i.i31.peel.i.i.i:               ; preds = %.noexc45.i.i
  %.sink.i.ph.i.i.i.i33.peel.i.i.i = getelementptr i8, ptr %.val14.i.i.i, i64 16
  %i.lj = icmp eq i64 %.sroa.935.24.copyload.i.i.i, %.sroa.1036.24.copyload.i.i.i
  br i1 %i.lj, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB5_18ListOffsetsEncoder22extend_offsets_vec_u64.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %select.unfold.i.i.i.i31.peel.i.i.i
  %i.lk = lshr i64 %.sroa.935.24.copyload.i.i.i, 3
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.633.24.copyload.i.i.i, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1, !noalias !23634, !noundef !75
  %i.ln = trunc i64 %.sroa.935.24.copyload.i.i.i to i8
  %i.lo = and i8 %i.ln, 7
  %i.lp = add i64 %.sroa.935.24.copyload.i.i.i, 1 ; 2 uses
  %i.lq = lshr i8 %i.lm, %i.lo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.li) ]
  %i.lr = trunc i8 %i.lq to i1
  %.val5.i.i34.peel.i.i.i = load i64, ptr %i.li, align 8, !noalias !23635, !noundef !75
  %i.ls = add i64 %.val5.i.i34.peel.i.i.i, %i.ha
  %i.lt = select i1 %i.lr, i64 0, i64 %i.dr
  %i.lu = add i64 %i.ls, %i.lt
  %i.lv = icmp ult i64 %i.ek, 1152921504606846976
  call void @llvm.assume(i1 %i.lv)
  %i.lw = load i64, ptr %i.q, align 8, !range !76, !alias.scope !23636, !noalias !23637, !noundef !75
  %i.lx = icmp eq i64 %i.ek, %i.lw
  br i1 %i.lx, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i35.peel.i.i.i, label %.peel.next.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i35.peel.i.i.i: ; preds = %bb.ba
  %gepdiff80.i.i.i = add i64 %.val15.i.i.i, -16
  %i.ly = lshr i64 %gepdiff80.i.i.i, 3
  %i.lz = sub i64 %.sroa.1036.24.copyload.i.i.i, %i.lp
  %.sroa.0.0.i.i.i.i.i36.peel.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.lz, i64 %i.ly)
  %i.ma = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i36.peel.i.i.i, 1
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.ek, i64 noundef %i.ma, i64 noundef 8, i64 noundef 8)
          to label %.peel.next.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !23596

.peel.next.i.i.i:                                 ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i35.peel.i.i.i, %bb.ba
  %i.mb = load ptr, ptr %i.ef, align 8, !alias.scope !23636, !noalias !23637, !nonnull !75, !noundef !75 ; 2 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %i.ek
  store i64 %i.lu, ptr %i.mc, align 8, !noalias !23638
  %storemerge89.i.i.i = add nuw nsw i64 %i.ek, 1  ; 3 uses
  store i64 %storemerge89.i.i.i, ptr %i.eg, align 8, !alias.scope !23636, !noalias !23637
  %i.md = icmp eq i64 %.idx.i.i.i, 16
  br i1 %i.md, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB5_18ListOffsetsEncoder22extend_offsets_vec_u64.exit.i.i, label %select.unfold.i.i.i.i31.i.i.i

select.unfold.i.i.i.i31.i.i.i:                    ; preds = %.peel.next.i.i.i, %bb.bc
  %storemerge92.i.i.i = phi i64 [ %storemerge.i.i.i, %bb.bc ], [ %storemerge89.i.i.i, %.peel.next.i.i.i ] ; 5 uses
  %.val.i.i.i.i9.i2891.i.i.i = phi ptr [ %.sink.i.ph.i.i.i.i33.i.i.i, %bb.bc ], [ %.sink.i.ph.i.i.i.i33.peel.i.i.i, %.peel.next.i.i.i ] ; 3 uses
  %i.me = phi i64 [ %i.mm, %bb.bc ], [ %i.lp, %.peel.next.i.i.i ] ; 4 uses
  %i.mf = phi ptr [ %i.mz, %bb.bc ], [ %i.mb, %.peel.next.i.i.i ]
  %.sink.i.ph.i.i.i.i33.i.i.i = getelementptr i8, ptr %.val.i.i.i.i9.i2891.i.i.i, i64 8 ; 3 uses
  %i.mg = icmp eq i64 %i.me, %.sroa.1036.24.copyload.i.i.i
  br i1 %i.mg, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB5_18ListOffsetsEncoder22extend_offsets_vec_u64.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %select.unfold.i.i.i.i31.i.i.i
  %i.mh = lshr i64 %i.me, 3
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.633.24.copyload.i.i.i, i64 %i.mh
  %i.mj = load i8, ptr %i.mi, align 1, !noalias !23634, !noundef !75
  %i.mk = trunc i64 %i.me to i8
  %i.ml = and i8 %i.mk, 7
  %i.mm = add i64 %i.me, 1                        ; 2 uses
  %i.mn = lshr i8 %i.mj, %i.ml
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i9.i2891.i.i.i) ]
  %i.mo = trunc i8 %i.mn to i1
  %.val5.i.i34.i.i.i = load i64, ptr %.val.i.i.i.i9.i2891.i.i.i, align 8, !noalias !23635, !noundef !75
  %i.mp = add i64 %.val5.i.i34.i.i.i, %i.ha
  %i.mq = select i1 %i.mo, i64 0, i64 %i.dr
  %i.mr = add i64 %i.mp, %i.mq
  %i.ms = load i64, ptr %i.q, align 8, !range !76, !alias.scope !23636, !noalias !23637, !noundef !75
  %i.mt = icmp eq i64 %storemerge92.i.i.i, %i.ms
  br i1 %i.mt, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i35.i.i.i, label %bb.bc

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i35.i.i.i: ; preds = %bb.bb
  %i.mu = ptrtoint ptr %.sink.i.ph.i.i.i.i33.i.i.i to i64
  %i.mv = sub nuw i64 %i.lh, %i.mu
  %i.mw = lshr exact i64 %i.mv, 3
  %i.mx = sub i64 %.sroa.1036.24.copyload.i.i.i, %i.mm
  %.sroa.0.0.i.i.i.i.i36.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.mx, i64 %i.mw)
  %i.my = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i36.i.i.i, 1
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %storemerge92.i.i.i, i64 noundef %i.my, i64 noundef 8, i64 noundef 8)
          to label %.noexc47.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !23596

.noexc47.i.i:                                     ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i35.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.ef, align 8, !alias.scope !23636, !noalias !23637
  br label %bb.bc

bb.bc:                                            ; preds = %.noexc47.i.i, %bb.bb
  %i.mz = phi ptr [ %.pre.i.i.i, %.noexc47.i.i ], [ %i.mf, %bb.bb ] ; 2 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %storemerge92.i.i.i
  store i64 %i.mr, ptr %i.na, align 8, !noalias !23638
  %storemerge.i.i.i = add nuw nsw i64 %storemerge92.i.i.i, 1 ; 3 uses
  store i64 %storemerge.i.i.i, ptr %i.eg, align 8, !alias.scope !23636, !noalias !23637
  %i.nb = icmp eq ptr %.sink.i.ph.i.i.i.i33.i.i.i, %i.lg
  br i1 %i.nb, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB5_18ListOffsetsEncoder22extend_offsets_vec_u64.exit.i.i, label %select.unfold.i.i.i.i31.i.i.i, !llvm.loop !23534

bb.bd:                                            ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE5valueCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23639)
  %i.nc = add nsw i64 %i.gx, -1                   ; 2 uses
  %i.nd = load i64, ptr %i.q, align 8, !range !76, !alias.scope !23640, !noalias !23641, !noundef !75
  %i.ne = sub i64 %i.nd, %i.ek
  %i.nf = icmp ugt i64 %i.nc, %i.ne
  br i1 %i.nf, label %bb.be, label %bb.bg, !prof !81

bb.be:                                            ; preds = %bb.bd
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.ek, i64 noundef %i.nc, i64 noundef 8, i64 noundef 8)
          to label %.noexc48.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !23596

.noexc48.i.i:                                     ; preds = %bb.be
  %.pre.i48.i.i.i = load i64, ptr %i.eg, align 8, !alias.scope !23642, !noalias !23641
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bg
  %gepdiff.i.i.i = add nsw i64 %.val15.i.i.i, -8  ; 2 uses
  %i.ng = lshr i64 %gepdiff.i.i.i, 3              ; 5 uses
  %min.iters.check116 = icmp ult i64 %gepdiff.i.i.i, 48
  br i1 %min.iters.check116, label %scalar.ph115.preheader, label %vector.memcheck113

vector.memcheck113:                               ; preds = %bb.bf
  %i.nh = add i64 %i.pa, -8
  %i.ni = shl i64 %i.oy, 3
  %i.nj = add i64 %i.nh, %i.ni
  %i.nk = sub i64 %.val14.i.i.i114, %i.nj
  %diff.check = icmp ugt i64 %i.nk, -32
  br i1 %diff.check, label %scalar.ph115.preheader, label %vector.ph117

vector.ph117:                                     ; preds = %vector.memcheck113
  %n.vec118 = and i64 %i.ng, 2305843009213693948  ; 4 uses
  %i.nl = add i64 %i.oy, %n.vec118                ; 2 uses
  %broadcast.splatinsert119 = insertelement <2 x i64> poison, i64 %i.ha, i64 0
  %broadcast.splat120 = shufflevector <2 x i64> %broadcast.splatinsert119, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nm = getelementptr [8 x i8], ptr %i.oz, i64 %i.oy
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph117
  %index122 = phi i64 [ 0, %vector.ph117 ], [ %index.next125, %vector.body121 ] ; 3 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %index122 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %wide.load123 = load <2 x i64>, ptr %i.nn, align 8, !noalias !23643
  %wide.load124 = load <2 x i64>, ptr %i.no, align 8, !noalias !23643
  %i.np = add <2 x i64> %wide.load123, %broadcast.splat120
  %i.nq = add <2 x i64> %wide.load124, %broadcast.splat120
  %i.nr = getelementptr [8 x i8], ptr %i.nm, i64 %index122 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  store <2 x i64> %i.np, ptr %i.nr, align 8, !noalias !23644
  store <2 x i64> %i.nq, ptr %i.ns, align 8, !noalias !23644
  %index.next125 = add nuw i64 %index122, 4       ; 2 uses
  %i.nt = icmp eq i64 %index.next125, %n.vec118
  br i1 %i.nt, label %middle.block126, label %vector.body121, !llvm.loop !23557

middle.block126:                                  ; preds = %vector.body121
  %cmp.n127 = icmp eq i64 %i.ng, %n.vec118
  br i1 %cmp.n127, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB5_18ListOffsetsEncoder22extend_offsets_vec_u64.exit.sink.split.i.i, label %scalar.ph115.preheader

scalar.ph115.preheader:                           ; preds = %vector.memcheck113, %bb.bf, %middle.block126
  %.ph131 = phi i64 [ %i.oy, %vector.memcheck113 ], [ %i.oy, %bb.bf ], [ %i.nl, %middle.block126 ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i46.i.i.i.ph = phi i64 [ 0, %vector.memcheck113 ], [ 0, %bb.bf ], [ %n.vec118, %middle.block126 ] ; 3 uses
  %xtraiter = and i64 %i.ng, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph115.prol.loopexit, label %scalar.ph115.prol

scalar.ph115.prol:                                ; preds = %scalar.ph115.preheader, %scalar.ph115.prol
  %i.nu = phi i64 [ %i.ny, %scalar.ph115.prol ], [ %.ph131, %scalar.ph115.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i46.i.i.i.prol = phi i64 [ %i.nz, %scalar.ph115.prol ], [ %.sroa.01.0.i.i.i.i.i46.i.i.i.ph, %scalar.ph115.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph115.prol ], [ 0, %scalar.ph115.preheader ]
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %.sroa.01.0.i.i.i.i.i46.i.i.i.prol
  %.val16.i.i.i.i.i47.i.i.i.prol = load i64, ptr %i.nv, align 8, !noalias !23643, !noundef !75
  %i.nw = add i64 %.val16.i.i.i.i.i47.i.i.i.prol, %i.ha
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.oz, i64 %i.nu
  store i64 %i.nw, ptr %i.nx, align 8, !noalias !23644
  %i.ny = add i64 %i.nu, 1                        ; 3 uses
  %i.nz = add nuw i64 %.sroa.01.0.i.i.i.i.i46.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph115.prol.loopexit, label %scalar.ph115.prol, !llvm.loop !23558

scalar.ph115.prol.loopexit:                       ; preds = %scalar.ph115.prol, %scalar.ph115.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph115.preheader ], [ %i.ny, %scalar.ph115.prol ]
  %.unr = phi i64 [ %.ph131, %scalar.ph115.preheader ], [ %i.ny, %scalar.ph115.prol ]
  %.sroa.01.0.i.i.i.i.i46.i.i.i.unr = phi i64 [ %.sroa.01.0.i.i.i.i.i46.i.i.i.ph, %scalar.ph115.preheader ], [ %i.nz, %scalar.ph115.prol ]
  %i.oa = sub nsw i64 %.sroa.01.0.i.i.i.i.i46.i.i.i.ph, %i.ng
  %i.ob = icmp ugt i64 %i.oa, -4
  br i1 %i.ob, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB5_18ListOffsetsEncoder22extend_offsets_vec_u64.exit.sink.split.i.i, label %scalar.ph115

scalar.ph115:                                     ; preds = %scalar.ph115.prol.loopexit, %scalar.ph115
  %i.oc = phi i64 [ %i.ov, %scalar.ph115 ], [ %.unr, %scalar.ph115.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i.i.i.i.i46.i.i.i = phi i64 [ %i.ow, %scalar.ph115 ], [ %.sroa.01.0.i.i.i.i.i46.i.i.i.unr, %scalar.ph115.prol.loopexit ] ; 5 uses
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %.sroa.01.0.i.i.i.i.i46.i.i.i
  %.val16.i.i.i.i.i47.i.i.i = load i64, ptr %i.od, align 8, !noalias !23643, !noundef !75
  %i.oe = add i64 %.val16.i.i.i.i.i47.i.i.i, %i.ha
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.oz, i64 %i.oc
  store i64 %i.oe, ptr %i.of, align 8, !noalias !23644
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %.sroa.01.0.i.i.i.i.i46.i.i.i
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %.val16.i.i.i.i.i47.i.i.i.1 = load i64, ptr %i.oh, align 8, !noalias !23643, !noundef !75
  %i.oi = add i64 %.val16.i.i.i.i.i47.i.i.i.1, %i.ha
  %i.oj = getelementptr [8 x i8], ptr %i.oz, i64 %i.oc
  %i.ok = getelementptr i8, ptr %i.oj, i64 8
  store i64 %i.oi, ptr %i.ok, align 8, !noalias !23644
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %.sroa.01.0.i.i.i.i.i46.i.i.i
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %.val16.i.i.i.i.i47.i.i.i.2 = load i64, ptr %i.om, align 8, !noalias !23643, !noundef !75
  %i.on = add i64 %.val16.i.i.i.i.i47.i.i.i.2, %i.ha
  %i.oo = getelementptr [8 x i8], ptr %i.oz, i64 %i.oc
  %i.op = getelementptr i8, ptr %i.oo, i64 16
  store i64 %i.on, ptr %i.op, align 8, !noalias !23644
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %.sroa.01.0.i.i.i.i.i46.i.i.i
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  %.val16.i.i.i.i.i47.i.i.i.3 = load i64, ptr %i.or, align 8, !noalias !23643, !noundef !75
  %i.os = add i64 %.val16.i.i.i.i.i47.i.i.i.3, %i.ha
  %i.ot = getelementptr [8 x i8], ptr %i.oz, i64 %i.oc
  %i.ou = getelementptr i8, ptr %i.ot, i64 24
  store i64 %i.os, ptr %i.ou, align 8, !noalias !23644
  %i.ov = add i64 %i.oc, 4                        ; 2 uses
  %i.ow = add nuw i64 %.sroa.01.0.i.i.i.i.i46.i.i.i, 4 ; 2 uses
  %i.ox = icmp eq i64 %i.ow, %i.ng
  br i1 %i.ox, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB5_18ListOffsetsEncoder22extend_offsets_vec_u64.exit.sink.split.i.i, label %scalar.ph115, !llvm.loop !23559

bb.bg:                                            ; preds = %.noexc48.i.i, %bb.bd
  %i.oy = phi i64 [ %i.ek, %bb.bd ], [ %.pre.i48.i.i.i, %.noexc48.i.i ] ; 6 uses
  %i.oz = load ptr, ptr %i.ef, align 8, !alias.scope !23642, !noalias !23641, !nonnull !75, !noundef !75 ; 7 uses
  %i.pa = ptrtoaddr ptr %i.oz to i64
  %i.pb = getelementptr inbounds nuw i8, ptr %.val14.i.i.i, i64 8 ; 6 uses
  %i.pc = icmp samesign eq i64 %.idx.i.i.i, 8
  br i1 %i.pc, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB5_18ListOffsetsEncoder22extend_offsets_vec_u64.exit.sink.split.i.i, label %bb.bf

.split.us.i.i:                                    ; preds = %.lr.ph.split.us.i.i
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1759) #66
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !23596

bb.bh:                                            ; preds = %.split.us.i.i, %bb.u
  unreachable

_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB5_18ListOffsetsEncoder22extend_offsets_vec_u64.exit.sink.split.i.i: ; preds = %scalar.ph115.prol.loopexit, %scalar.ph115, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block126, %middle.block, %bb.bg, %bb.ay
  %.sroa.5.0.copyload.sink.i.i.i44.i.sink.i.i = phi i64 [ %i.kz, %scalar.ph ], [ %i.lc, %bb.ay ], [ %i.oy, %bb.bg ], [ %i.ji, %middle.block ], [ %i.nl, %middle.block126 ], [ %.lcssa135.unr, %scalar.ph.prol.loopexit ], [ %.lcssa.unr, %scalar.ph115.prol.loopexit ], [ %i.ov, %scalar.ph115 ] ; 2 uses
  store i64 %.sroa.5.0.copyload.sink.i.i.i44.i.sink.i.i, ptr %i.eg, align 8, !alias.scope !23611, !noalias !23645
  br label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB5_18ListOffsetsEncoder22extend_offsets_vec_u64.exit.i.i

_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB5_18ListOffsetsEncoder22extend_offsets_vec_u64.exit.i.i: ; preds = %bb.bc, %select.unfold.i.i.i.i31.i.i.i, %bb.au, %select.unfold.i.i.i.i.i.i.i, %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB5_18ListOffsetsEncoder22extend_offsets_vec_u64.exit.sink.split.i.i, %.peel.next.i.i.i, %select.unfold.i.i.i.i31.peel.i.i.i, %.noexc45.i.i, %.peel.next62.i.i.i, %select.unfold.i.i.i.i.peel.i.i.i, %.noexc41.i.i
  %i.pd = phi i64 [ %.sroa.5.0.copyload.sink.i.i.i44.i.sink.i.i, %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4listNtB5_18ListOffsetsEncoder22extend_offsets_vec_u64.exit.sink.split.i.i ], [ %i.ek, %.noexc41.i.i ], [ %i.ek, %select.unfold.i.i.i.i.peel.i.i.i ], [ %storemerge89.i.i.i, %.peel.next.i.i.i ], [ %i.ek, %select.unfold.i.i.i.i31.peel.i.i.i ], [ %i.ek, %.noexc45.i.i ], [ %storemerge84.i.i.i, %bb.au ], [ %storemerge8493.i.i.i, %.peel.next62.i.i.i ], [ %storemerge8496.i.i.i, %select.unfold.i.i.i.i.i.i.i ], [ %storemerge.i.i.i, %bb.bc ], [ %storemerge92.i.i.i, %select.unfold.i.i.i.i31.i.i.i ] ; 2 uses
  %i.pe = icmp eq ptr %i.el, %i.eh
  br i1 %i.pe, label %._crit_edge.i.i, label %.lr.ph.split.i.i

bb.bi:                                            ; preds = %bb.x, %.loopexit.split-lp.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23646)
  %.val.i49.i.i = load i64, ptr %i.q, align 8, !alias.scope !23646, !noalias !23592 ; 2 uses
  %i.pf = icmp eq i64 %.val.i49.i.i, 0
  br i1 %i.pf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.val1.i.i.i = load ptr, ptr %i.ef, align 8, !alias.scope !23646, !noalias !23592, !nonnull !75, !noundef !75
  %i.pg = shl nuw i64 %.val.i49.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.pg, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !23647
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionRNtNtNtCs4ytUTZt2Gw9_11arrow_array5array13boolean_array12BooleanArrayEEECsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %bb.bk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12ArrayEncoderEL_EEB1e_.exit.thread.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12ArrayEncoderEL_EEB1e_.exit.i.i
  %.pn14.pn87.i.i = phi { ptr, i32 } [ %i.fn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12ArrayEncoderEL_EEB1e_.exit.thread.i.i ], [ %.pn14.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12ArrayEncoderEL_EEB1e_.exit.i.i ], [ %.pn14.i.i, %bb.bk ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.af) #67
          to label %.thread70.i unwind label %bb.aj, !noalias !23648

bb.bk:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12ArrayEncoderEL_EEB1e_.exit.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i20.i.i, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !23595
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionRNtNtNtCs4ytUTZt2Gw9_11arrow_array5array13boolean_array12BooleanArrayEEECsjjpCCFGI3ul_14lance_encoding.exit.i.i

bb.bl:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12ArrayEncoderEL_EEB1e_.exit28.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !23583
  %i.ph = load i64, ptr %i.ab, align 8, !range !169, !noalias !23583, !noundef !75 ; 4 uses
  %i.pi = icmp eq i64 %i.ph, -1
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
end_hunk_0
