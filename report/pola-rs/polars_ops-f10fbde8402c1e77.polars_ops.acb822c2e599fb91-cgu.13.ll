Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_ops-f10fbde8402c1e77.polars_ops.acb822c2e599fb91-cgu.13?download=true
inline.NumInlined: 15820
inline.NumDeleted: 4915
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array4hist11hist_series:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !228882), !dbg !228885
  %i.apx = getelementptr inbounds nuw i8, ptr %i.ajm, i64 16, !dbg !228887
  store ptr %i.ajn, ptr %i.apx, align 8, !dbg !228887, !alias.scope !228895, !noalias !228794
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ajm, i64 24, !dbg !228887
  store ptr %i.ajo, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !228887, !alias.scope !228895, !noalias !228794
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ajm, i64 32, !dbg !228887
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !228887, !alias.scope !228895, !noalias !228794
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ajm, i64 40, !dbg !228887
  store i64 %.sroa.026.0.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !dbg !228887, !alias.scope !228895, !noalias !228794
  store i64 1, ptr %i.ajm, align 8, !dbg !228887, !alias.scope !228897, !noalias !228898
  %i.apy = getelementptr inbounds nuw i8, ptr %i.ajm, i64 8, !dbg !228887
  store double %.sroa.040.0.i.i, ptr %i.apy, align 8, !dbg !228887, !alias.scope !228897, !noalias !228898
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters5chain5ChainINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangejENCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array4hist10get_breaksNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeE0EINtNtNtB1o_7sources4once4OncedEEE9from_iterB32_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ajl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ajm)
          to label %.noexc429 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !228899

.noexc429:                                        ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ajn), !dbg !228904, !noalias !228794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ajo), !dbg !228904, !noalias !228794
  br label %bb.bx, !dbg !228905

bb.bj:                                            ; preds = %bb.bg
  %i.apz = invoke { i64, i64 } @_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes9UInt8TypeE14first_non_nullCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aod)
          to label %.noexc430 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !228906 ; 2 uses

.noexc430:                                        ; preds = %bb.bj
  %i.aqa = extractvalue { i64, i64 } %i.apz, 0, !dbg !228906
  %i.aqb = trunc nuw i64 %i.aqa to i1, !dbg !228907
  br i1 %i.aqb, label %bb.bl, label %.invoke, !dbg !228907, !prof !7465

bb.bk:                                            ; preds = %bb.bg
  %i.aqc = invoke { i1, i8 } @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregateINtB6_12ChunkedArrayNtNtB8_9datatypes9UInt8TypeEINtB4_8ChunkAgghE3minCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aod)
          to label %.noexc431 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !228910 ; 2 uses

.noexc431:                                        ; preds = %bb.bk
  %i.aqd = extractvalue { i1, i8 } %i.aqc, 0, !dbg !228910
  br i1 %i.aqd, label %bb.bs, label %.invoke, !dbg !228911, !prof !7465

bb.bl:                                            ; preds = %.noexc430
  %i.aqe = extractvalue { i64, i64 } %i.apz, 1, !dbg !228906 ; 6 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aod, i64 16, !dbg !228914 ; 2 uses
  %i.aqg = load i64, ptr %i.aqf, align 8, !dbg !228914, !noalias !228794, !noundef !13 ; 6 uses
  %i.aqh = icmp ult i64 %i.aqg, 576460752303423488, !dbg !228920
  call void @llvm.assume(i1 %i.aqh), !dbg !228921
  %i.aqi = icmp eq i64 %i.aqg, 1, !dbg !228922
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aod, i64 8, !dbg !228923 ; 2 uses
  %i.aqk = load ptr, ptr %i.aqj, align 8, !dbg !228923, !noalias !228794, !nonnull !13, !noundef !13 ; 5 uses
  br i1 %i.aqi, label %bb.bm, label %bb.bn, !dbg !228922

bb.bm:                                            ; preds = %bb.bl
  %i.aql = load ptr, ptr %i.aqk, align 8, !dbg !228924, !noalias !228794, !nonnull !13, !noundef !13
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqk, i64 8, !dbg !228924
  %i.aqn = load ptr, ptr %i.aqm, align 8, !dbg !228924, !noalias !228794, !nonnull !13, !align !172, !noundef !13
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 48, !dbg !228924
  %i.aqp = load ptr, ptr %i.aqo, align 8, !dbg !228924, !invariant.load !13, !noalias !228794, !nonnull !13
  %i.aqq = invoke noundef i64 %i.aqp(ptr noundef nonnull %i.aql) #44
          to label %.noexc432 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !228925, !inline_history !228926 ; 2 uses

.noexc432:                                        ; preds = %bb.bm
  %i.aqr = icmp uge i64 %i.aqe, %i.aqq, !dbg !228927 ; 2 uses
  %i.aqs = select i1 %i.aqr, i64 %i.aqq, i64 0, !dbg !228927
  %spec.select13.i.i.i = sub nuw i64 %i.aqe, %i.aqs, !dbg !228927
  %i.aqt = zext i1 %i.aqr to i64, !dbg !228927
  br label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9UInt8TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, !dbg !228927

bb.bn:                                            ; preds = %bb.bl
  %.idx.i.i.i = shl nuw nsw i64 %i.aqg, 4, !dbg !228928 ; 3 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqk, i64 %.idx.i.i.i, !dbg !228928 ; 2 uses
  %i.aqv = load i64, ptr %i.apn, align 8, !dbg !228933, !noalias !228794, !noundef !13 ; 2 uses
  %i.aqw = lshr i64 %i.aqv, 1, !dbg !228935
  %.not.i.i.i = icmp ugt i64 %i.aqe, %i.aqw, !dbg !228936
  br i1 %.not.i.i.i, label %bb.bo, label %bb.bq, !dbg !228936

bb.bo:                                            ; preds = %bb.bn
  %i.aqx = sub i64 %i.aqv, %i.aqe, !dbg !228937   ; 2 uses
  %i.aqy = icmp eq i64 %i.aqg, 0, !dbg !228938
  br i1 %i.aqy, label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i, !dbg !228944

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.bo
  %i.aqz = add nsw i64 %.idx.i.i.i, -16, !dbg !228945
  %i.ara = lshr exact i64 %i.aqz, 4, !dbg !228945
  %i.arb = add nuw nsw i64 %i.ara, 2, !dbg !228945
  br label %.lr.ph.i.i.i.i, !dbg !228945

.lr.ph.i.i.i.i:                                   ; preds = %bb.bp, %.lr.ph.i.preheader.i.i.i
  %.sroa.0.019.i.i.i.i = phi i64 [ %i.arh, %bb.bp ], [ %i.aqx, %.lr.ph.i.preheader.i.i.i ] ; 3 uses
  %.sroa.08.018.i.i.i.i = phi i64 [ %i.ari, %bb.bp ], [ 1, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.sroa.4.017.i.i.i.i = phi ptr [ %i.arc, %bb.bp ], [ %i.aqu, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.arc = getelementptr inbounds i8, ptr %.sroa.4.017.i.i.i.i, i64 -16, !dbg !228946 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !228951), !dbg !228954
  %.val.i.i.i.i = load ptr, ptr %i.arc, align 8, !dbg !228958, !alias.scope !228951, !noalias !228960, !nonnull !13, !noundef !13
  %i.ard = getelementptr inbounds i8, ptr %.sroa.4.017.i.i.i.i, i64 -8, !dbg !228958
  %.val2.i.i.i.i = load ptr, ptr %i.ard, align 8, !dbg !228958, !alias.scope !228951, !noalias !228960, !nonnull !13, !align !172, !noundef !13
  %i.are = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 48, !dbg !228967
  %i.arf = load ptr, ptr %i.are, align 8, !dbg !228967, !invariant.load !13, !noalias !228969, !nonnull !13
  %i.arg = invoke noundef i64 %i.arf(ptr noundef nonnull %.val.i.i.i.i) #44
          to label %.noexc433 unwind label %.loopexit, !dbg !228970, !inline_history !228926 ; 4 uses

.noexc433:                                        ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp ult i64 %i.arg, %.sroa.0.019.i.i.i.i, !dbg !228971
  br i1 %.not.i.i.i.i, label %bb.bp, label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i, !dbg !228945

bb.bp:                                            ; preds = %.noexc433
  %i.arh = sub nuw i64 %.sroa.0.019.i.i.i.i, %i.arg, !dbg !228973 ; 2 uses
  %i.ari = add nuw nsw i64 %.sroa.08.018.i.i.i.i, 1, !dbg !228975
  %i.arj = icmp eq ptr %i.aqk, %i.arc, !dbg !228938
  br i1 %i.arj, label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i, label %.lr.ph.i.i.i.i, !dbg !228944

_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i: ; preds = %bb.bp, %.noexc433, %bb.bo
  %.sroa.08.0.lcssa.i.i.i.i = phi i64 [ 1, %bb.bo ], [ %.sroa.08.018.i.i.i.i, %.noexc433 ], [ %i.arb, %bb.bp ], !dbg !228977
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %i.aqx, %bb.bo ], [ %.sroa.0.019.i.i.i.i, %.noexc433 ], [ %i.arh, %bb.bp ], !dbg !228978
  %.sroa.02.1.i.i.i.i = phi i64 [ 0, %bb.bo ], [ %i.arg, %.noexc433 ], [ %i.arg, %bb.bp ], !dbg !228979
  %i.ark = sub i64 %i.aqg, %.sroa.08.0.lcssa.i.i.i.i, !dbg !228980
  %i.arl = sub i64 %.sroa.02.1.i.i.i.i, %.sroa.0.0.lcssa.i.i.i.i, !dbg !228982
  br label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9UInt8TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, !dbg !228984

bb.bq:                                            ; preds = %bb.bn
  %i.arm = icmp eq i64 %i.aqg, 0, !dbg !228985
  br i1 %i.arm, label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9UInt8TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, label %.lr.ph.i6.preheader.i.i.i, !dbg !228990

.lr.ph.i6.preheader.i.i.i:                        ; preds = %bb.bq
  %i.arn = add nsw i64 %.idx.i.i.i, -16, !dbg !228991
  %i.aro = lshr exact i64 %i.arn, 4, !dbg !228991
  %i.arp = add nuw nsw i64 %i.aro, 1, !dbg !228991
  br label %.lr.ph.i6.i.i.i, !dbg !228991

.lr.ph.i6.i.i.i:                                  ; preds = %bb.br, %.lr.ph.i6.preheader.i.i.i
  %.sroa.0.019.i7.i.i.i = phi i64 [ %i.arw, %bb.br ], [ %i.aqe, %.lr.ph.i6.preheader.i.i.i ] ; 3 uses
  %.sroa.08.018.i8.i.i.i = phi i64 [ %i.arx, %bb.br ], [ 0, %.lr.ph.i6.preheader.i.i.i ] ; 2 uses
  %.sroa.010.017.i.i.i.i = phi ptr [ %i.arv, %bb.br ], [ %i.aqk, %.lr.ph.i6.preheader.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !228992), !dbg !228995
  %.val.i19.i.i.i = load ptr, ptr %.sroa.010.017.i.i.i.i, align 8, !dbg !228999, !alias.scope !228992, !noalias !229001, !nonnull !13, !noundef !13
  %i.arq = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i.i.i, i64 8, !dbg !228999
  %.val2.i20.i.i.i = load ptr, ptr %i.arq, align 8, !dbg !228999, !alias.scope !228992, !noalias !229001, !nonnull !13, !align !172, !noundef !13
  %i.arr = getelementptr inbounds nuw i8, ptr %.val2.i20.i.i.i, i64 48, !dbg !229006
  %i.ars = load ptr, ptr %i.arr, align 8, !dbg !229006, !invariant.load !13, !noalias !229008, !nonnull !13
  %i.art = invoke noundef i64 %i.ars(ptr noundef nonnull %.val.i19.i.i.i) #44
          to label %.noexc434 unwind label %.loopexit.split-lp.loopexit, !dbg !229009, !inline_history !228926 ; 2 uses

.noexc434:                                        ; preds = %.lr.ph.i6.i.i.i
  %i.aru = icmp ugt i64 %i.art, %.sroa.0.019.i7.i.i.i, !dbg !229010
  br i1 %i.aru, label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9UInt8TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, label %bb.br, !dbg !228991

bb.br:                                            ; preds = %.noexc434
  %i.arv = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i.i.i, i64 16, !dbg !229012 ; 2 uses
  %i.arw = sub nuw nsw i64 %.sroa.0.019.i7.i.i.i, %i.art, !dbg !229014 ; 2 uses
  %i.arx = add nuw nsw i64 %.sroa.08.018.i8.i.i.i, 1, !dbg !229016
  %i.ary = icmp eq ptr %i.arv, %i.aqu, !dbg !228985
  br i1 %i.ary, label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9UInt8TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, label %.lr.ph.i6.i.i.i, !dbg !228990

_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9UInt8TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i: ; preds = %bb.br, %.noexc434, %bb.bq, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i, %.noexc432
  %.pn.i.i.i = phi i64 [ %i.ark, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i ], [ %i.aqt, %.noexc432 ], [ 0, %bb.bq ], [ %.sroa.08.018.i8.i.i.i, %.noexc434 ], [ %i.arp, %bb.br ] ; 2 uses
  %.pn12.i.i.i = phi i64 [ %i.arl, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i ], [ %spec.select13.i.i.i, %.noexc432 ], [ %i.aqe, %bb.bq ], [ %.sroa.0.019.i7.i.i.i, %.noexc434 ], [ %i.arw, %bb.br ] ; 3 uses
  %i.arz = load ptr, ptr %i.aqj, align 8, !dbg !229018, !noalias !228794, !nonnull !13, !noundef !13
  %i.asa = load i64, ptr %i.aqf, align 8, !dbg !229036, !noalias !228794, !noundef !13
  %i.asb = icmp ult i64 %.pn.i.i.i, %i.asa, !dbg !229037
  call void @llvm.assume(i1 %i.asb), !dbg !229042
  %i.asc = getelementptr inbounds nuw [16 x i8], ptr %i.arz, i64 %.pn.i.i.i, !dbg !229043
  %i.asd = load ptr, ptr %i.asc, align 8, !dbg !229044, !noalias !228794, !nonnull !13, !noundef !13 ; 4 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 56, !dbg !229046
  %i.asf = load ptr, ptr %i.ase, align 8, !dbg !229046, !noalias !228794, !noundef !13 ; 3 uses
  %.not.i.i69.i.i = icmp eq ptr %i.asf, null, !dbg !229046
  br i1 %.not.i.i69.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.thread.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.i.i, !dbg !229052

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.i.i: ; preds = %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9UInt8TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asf, i64 40, !dbg !229054
  %i.ash = load i64, ptr %i.asg, align 8, !dbg !229054, !noalias !228794, !noundef !13
  %i.asi = getelementptr inbounds nuw i8, ptr %i.asf, i64 32, !dbg !229059
  %i.asj = load ptr, ptr %i.asi, align 8, !dbg !229059, !noalias !228794, !noundef !13
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asd, i64 64, !dbg !229060
  %i.asl = load i64, ptr %i.ask, align 8, !dbg !229060, !noalias !228794, !noundef !13
  %i.asm = add i64 %i.asl, %.pn12.i.i.i, !dbg !229060 ; 2 uses
  %i.asn = lshr i64 %i.asm, 3, !dbg !229061       ; 2 uses
  %i.aso = icmp ult i64 %i.asn, %i.ash, !dbg !229063
  call void @llvm.assume(i1 %i.aso), !dbg !229066
  %i.asp = getelementptr inbounds nuw i8, ptr %i.asj, i64 %i.asn, !dbg !229067
  %i.asq = load i8, ptr %i.asp, align 1, !dbg !229068, !noalias !228794, !noundef !13
  %i.asr = trunc i64 %i.asm to i8, !dbg !229069
  %i.ass = and i8 %i.asr, 7, !dbg !229069
  %i.ast = xor i8 %i.asq, -1, !dbg !229070
  %i.asu = lshr i8 %i.ast, %i.ass, !dbg !229070
  %i.asv = trunc i8 %i.asu to i1, !dbg !229071
  br i1 %i.asv, label %.invoke, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.thread.i.i, !dbg !229072, !prof !229073

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.thread.i.i: ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.i.i, %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9UInt8TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asd, i64 40, !dbg !229074
  %i.asx = load ptr, ptr %i.asw, align 8, !dbg !229074, !noalias !228794, !noundef !13
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asd, i64 48, !dbg !229083
  %i.asz = load i64, ptr %i.asy, align 8, !dbg !229083, !noalias !228794, !noundef !13
  %i.ata = icmp ult i64 %.pn12.i.i.i, %i.asz, !dbg !229084
  call void @llvm.assume(i1 %i.ata), !dbg !229090
  %i.atb = getelementptr inbounds nuw i8, ptr %i.asx, i64 %.pn12.i.i.i, !dbg !229091
  %i.atc = load i8, ptr %i.atb, align 1, !dbg !229092, !noalias !228794, !noundef !13
  %i.atd = uitofp i8 %i.atc to double, !dbg !229093 ; 2 uses
  %i.ate = fadd double %i.atd, -5.000000e-01, !dbg !229100
  %i.atf = uitofp i64 %.sroa.026.0.i.i to double, !dbg !229102
  %i.atg = fdiv double 1.000000e+00, %i.atf, !dbg !229103
  %i.ath = fadd double %i.atd, 5.000000e-01, !dbg !229104
  br label %bb.bi, !dbg !229105

bb.bs:                                            ; preds = %.noexc431
  %i.ati = extractvalue { i1, i8 } %i.aqc, 1, !dbg !228910 ; 2 uses
  %i.atj = uitofp i8 %i.ati to double, !dbg !229106 ; 3 uses
  %i.atk = invoke { i1, i8 } @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregateINtB6_12ChunkedArrayNtNtB8_9datatypes9UInt8TypeEINtB4_8ChunkAgghE3maxCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aod)
          to label %.noexc437 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !229108 ; 2 uses

.noexc437:                                        ; preds = %bb.bs
  %i.atl = extractvalue { i1, i8 } %i.atk, 0, !dbg !229108
  br i1 %i.atl, label %bb.bt, label %.invoke, !dbg !229110, !prof !7465

bb.bt:                                            ; preds = %.noexc437
  %i.atm = extractvalue { i1, i8 } %i.atk, 1, !dbg !229108 ; 2 uses
  %i.atn = uitofp i8 %i.atm to double, !dbg !229112 ; 3 uses
  %8 = icmp eq i8 %i.ati, %i.atm, !dbg !229114
  %i.ato = uitofp i64 %.sroa.026.0.i.i to double, !dbg !229116 ; 2 uses
  br i1 %8, label %bb.bv, label %bb.bu, !dbg !229114

bb.bu:                                            ; preds = %bb.bt
  %i.atp = fsub double %i.atn, %i.atj, !dbg !229117
  %i.atq = fdiv double %i.atp, %i.ato, !dbg !229117
  br label %bb.bi, !dbg !229118

bb.bv:                                            ; preds = %bb.bt
  %i.atr = fadd double %i.atj, -5.000000e-01, !dbg !229119
  %i.ats = fdiv double 1.000000e+00, %i.ato, !dbg !229120
  %i.att = fadd double %i.atn, 5.000000e-01, !dbg !229121
  br label %bb.bi, !dbg !229118

.body110.i:                                       ; preds = %bb.kj, %bb.jk, %.body159.i, %bb.gi, %bb.fi, %bb.eh, %.thread85.i.i.i, %bb.ec, %bb.ea, %bb.cy, %bb.cw, %bb.ct, %bb.ck, %bb.bw
  %.pn90.pn.i = phi { ptr, i32 } [ %.pn90200.i, %bb.kj ], [ %.pn88.i, %bb.gi ], [ %.pn.i.i, %bb.eh ], [ %i.atu, %bb.bw ], [ %lpad.thr_comm104.i.i.i, %bb.ec ], [ %i.avv, %bb.ck ], [ %lpad.thr_comm.i.i.i, %bb.cw ], [ %i.ayd, %bb.ea ], [ %.pn35.pn88.i.i.i, %.thread85.i.i.i ], [ %.pn.pn.i.i.i, %bb.cy ], [ %i.awf, %bb.ct ], [ %lpad.phi.i124.i, %bb.fi ], [ %lpad.thr_comm.split-lp.i, %.body159.i ], [ %i.bmt, %bb.jk ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.akt) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECsePnBjWcsLF5_10polars_ops.exit unwind label %bb.hy, !dbg !229122, !noalias !228785

bb.bw:                                            ; preds = %.invoke.i, %bb.fg, %bb.fe, %bb.dz, %bb.cs, %bb.co, %.thread71.i.i.i, %.thread.i, %bb.ci, %.invoke316.i.a, %bb.ch, %bb.cf, %.thread65.i.i.i, %.thread.i.i.i, %bb.cd, %bb.by
  %i.atu = landingpad { ptr, i32 }
          cleanup
  br label %.body110.i

bb.bx:                                            ; preds = %.noexc429, %bb.bf, %bb.bc
  %.sroa.060.0.i.i = phi i8 [ 1, %.noexc429 ], [ 0, %bb.bf ], [ 0, %bb.bc ], !dbg !228873 ; 2 uses
  %i.atv = getelementptr inbounds nuw i8, ptr %i.aju, i64 8, !dbg !229123 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.atv, ptr noundef nonnull align 8 dereferenceable(24) %i.ajl, i64 24, i1 false), !dbg !229123, !noalias !228785
  %.sroa.454.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aju, i64 32, !dbg !229123
  store i8 %.sroa.060.0.i.i, ptr %.sroa.454.0..sroa_idx.i.i, align 8, !dbg !229123, !noalias !228785
  store i64 18, ptr %i.aju, align 8, !dbg !229123, !noalias !228785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ajl), !dbg !229125, !noalias !228785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ajm), !dbg !229125, !noalias !228785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.akt), !dbg !229126, !noalias !228785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.akt, ptr noundef nonnull align 8 dereferenceable(24) %i.atv, i64 24, i1 false), !dbg !228779, !noalias !228785
  %i.atw = trunc nuw i8 %.sroa.060.0.i.i to i1, !dbg !228779
  %i.atx = getelementptr inbounds nuw i8, ptr %i.akt, i64 16, !dbg !229127 ; 4 uses
  %i.aty = load i64, ptr %i.atx, align 8, !dbg !229127, !noalias !228785, !noundef !13 ; 6 uses
  %i.atz = icmp ult i64 %i.aty, 1152921504606846976, !dbg !229131
  call void @llvm.assume(i1 %i.atz), !dbg !229133
  %i.aua = call i64 @llvm.usub.sat.i64(i64 %i.aty, i64 1), !dbg !229134 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aks), !dbg !229135, !noalias !228785
  %.not71.i = icmp samesign ult i64 %i.aty, 2, !dbg !229137 ; 3 uses
  br i1 %.not71.i, label %bb.by, label %bb.ca, !dbg !229137

bb.by:                                            ; preds = %bb.ca, %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !229138), !dbg !229141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ajj), !dbg !229144, !noalias !229154
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ajj, i64 noundef %i.aua, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc96.i unwind label %bb.bw, !dbg !229144, !noalias !228785

.noexc96.i:                                       ; preds = %bb.by
  %i.aub = load i64, ptr %i.ajj, align 8, !dbg !229144, !range !231, !noalias !229154, !noundef !13
  %i.auc = trunc nuw i64 %i.aub to i1, !dbg !229155
  %i.aud = getelementptr inbounds nuw i8, ptr %i.ajj, i64 8, !dbg !229156
  %i.aue = load i64, ptr %i.aud, align 8, !dbg !229156, !range !234, !noalias !229154, !noundef !13 ; 2 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %i.ajj, i64 16, !dbg !229156 ; 2 uses
  br i1 %i.auc, label %bb.bz, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsePnBjWcsLF5_10polars_ops.exit.i, !dbg !229155, !prof !42

bb.bz:                                            ; preds = %.noexc96.i
  %i.aug = load i64, ptr %i.auf, align 8, !dbg !229157, !noalias !229154
  br label %.invoke.i, !dbg !229158

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsePnBjWcsLF5_10polars_ops.exit.i: ; preds = %.noexc96.i
  %i.auh = load ptr, ptr %i.auf, align 8, !dbg !229160, !noalias !229154, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ajj), !dbg !229161, !noalias !229154
  store i64 %i.aue, ptr %i.aks, align 8, !dbg !229162, !alias.scope !229138, !noalias !228785
  %i.aui = getelementptr inbounds nuw i8, ptr %i.aks, i64 8, !dbg !229162
  store ptr %i.auh, ptr %i.aui, align 8, !dbg !229162, !alias.scope !229138, !noalias !228785
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aks, i64 16, !dbg !229162
  store i64 %i.aua, ptr %i.auj, align 8, !dbg !229162, !alias.scope !229138, !noalias !228785
  br label %bb.cc, !dbg !229163

bb.ca:                                            ; preds = %bb.bx
  %i.auk = getelementptr inbounds nuw i8, ptr %i.aod, i64 32, !dbg !229164 ; 3 uses
  %i.aul = load i64, ptr %i.auk, align 8, !dbg !229164, !noalias !228785, !noundef !13
  %i.aum = getelementptr inbounds nuw i8, ptr %i.aod, i64 40, !dbg !229167 ; 4 uses
  %i.aun = load i64, ptr %i.aum, align 8, !dbg !229167, !noalias !228785, !noundef !13
  %i.auo = icmp ugt i64 %i.aul, %i.aun, !dbg !229170
  br i1 %i.auo, label %bb.cb, label %bb.by, !dbg !229170

bb.cb:                                            ; preds = %bb.ca
  %i.aup = getelementptr inbounds nuw i8, ptr %i.akt, i64 8, !dbg !229171
  %i.auq = load ptr, ptr %i.aup, align 8, !dbg !229171, !noalias !228785, !nonnull !13, !noundef !13 ; 9 uses
  %i.aur = add nsw i64 %i.aty, -1, !dbg !229184   ; 10 uses
  br i1 %i.atw, label %bb.fg, label %bb.cd, !dbg !229185

bb.cc:                                            ; preds = %_RINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array4hist18uniform_hist_countNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeEB6_.exit.i, %_RINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array4hist10hist_countNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9UInt8TypeEB6_.exit.i, %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsePnBjWcsLF5_10polars_ops.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.akr), !dbg !229186, !noalias !228785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ajt), !dbg !229188, !noalias !228785
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ajt, i64 noundef 3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.gj unwind label %.body159.thread203.i, !dbg !229188, !noalias !228785

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !229197), !dbg !229200
  %i.aus = getelementptr inbounds nuw [8 x i8], ptr %i.auq, i64 %i.aty, !dbg !229201 ; 2 uses
  %i.aut = load double, ptr %i.auq, align 8, !dbg !229213, !alias.scope !229197, !noalias !229215, !noundef !13
  %i.auu = getelementptr inbounds nuw [8 x i8], ptr %i.auq, i64 %i.aur, !dbg !229217
  %i.auv = load double, ptr %i.auu, align 8, !dbg !229217, !alias.scope !229197, !noalias !229215, !noundef !13
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auq, i64 16, !dbg !229218
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auq, i64 8, !dbg !229218
  %i.auy = load double, ptr %i.aux, align 8, !dbg !229227, !alias.scope !229197, !noalias !229215, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aji), !dbg !229228, !noalias !229230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ajf), !dbg !229231, !noalias !229230
  %i.auz = getelementptr inbounds nuw i8, ptr %i.ajf, i64 8, !dbg !229231
  store i8 0, ptr %i.auz, align 4, !dbg !229231, !noalias !229230
  %i.ava = getelementptr inbounds nuw i8, ptr %i.ajf, i64 9, !dbg !229231
  store i8 0, ptr %i.ava, align 1, !dbg !229231, !noalias !229230
  %i.avb = getelementptr inbounds nuw i8, ptr %i.ajf, i64 11, !dbg !229231
  store i8 0, ptr %i.avb, align 1, !dbg !229231, !noalias !229230
  store i32 0, ptr %i.ajf, align 4, !dbg !229231, !noalias !229230
  %i.avc = invoke noundef i64 @_RNvMNtCs1LHh8CLbVkQ_11polars_core7runtimeNtB2_5RAYON19current_num_threads(ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr))
          to label %.noexc100.i unwind label %bb.bw, !dbg !229235, !noalias !228785

.noexc100.i:                                      ; preds = %bb.cd
  %i.avd = getelementptr inbounds nuw i8, ptr %i.ajf, i64 10, !dbg !229231
  %i.ave = icmp ugt i64 %i.avc, 1, !dbg !229238
  %i.avf = zext i1 %i.ave to i8, !dbg !229239
  store i8 %i.avf, ptr %i.avd, align 2, !dbg !229239, !noalias !229230
  %.val52.i.i.i = load i64, ptr %i.auk, align 8, !dbg !229240, !noalias !229243, !noundef !13
  %i.avg = icmp eq i64 %.val52.i.i.i, 0, !dbg !229247
  br i1 %i.avg, label %.invoke316.i.a, label %.thread.i.i.i, !dbg !229250

.thread.i.i.i:                                    ; preds = %.noexc100.i
  %i.avh = invoke noundef zeroext i1 @_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes9UInt8TypeE24is_sorted_ascending_flagCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aod)
          to label %.noexc102.i unwind label %bb.bw, !dbg !229251, !noalias !228785

.noexc102.i:                                      ; preds = %.thread.i.i.i
  br i1 %i.avh, label %.thread66.i.i.i, label %.thread65.i.i.i, !dbg !229252

.thread66.i.i.i:                                  ; preds = %.noexc102.i
  %.val57.i.i.i = load i64, ptr %i.aum, align 8, !dbg !229253, !noalias !229243, !noundef !13
  %.not.i27.i.i = icmp eq i64 %.val57.i.i.i, 0, !dbg !229254
  br i1 %.not.i27.i.i, label %.invoke316.i.a, label %bb.ch, !dbg !229254

.thread65.i.i.i:                                  ; preds = %.noexc102.i
  %i.avi = invoke noundef zeroext i1 @_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes9UInt8TypeE25is_sorted_descending_flagCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aod)
          to label %.noexc103.i unwind label %bb.bw, !dbg !229255, !noalias !228785

.noexc103.i:                                      ; preds = %.thread65.i.i.i
  br i1 %i.avi, label %bb.ce, label %bb.cg, !dbg !229256

bb.ce:                                            ; preds = %.noexc103.i
  %.val56.i.i.i = load i64, ptr %i.aum, align 8, !dbg !229257, !noalias !229243, !noundef !13 ; 2 uses
  %i.avj = icmp eq i64 %.val56.i.i.i, 0, !dbg !229258
  br i1 %i.avj, label %bb.cf, label %.thread.i, !dbg !229258

bb.cf:                                            ; preds = %bb.ce
  invoke void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops7reverseINtB6_12ChunkedArrayNtNtB8_9datatypes9UInt8TypeENtB4_12ChunkReverse7reverseCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.aji, ptr noundef nonnull align 8 %i.aod)
          to label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17sort_with_numericNtNtB8_9datatypes9UInt8TypeECsePnBjWcsLF5_10polars_ops.exit.i.i unwind label %bb.bw, !dbg !229259, !noalias !228785

bb.cg:                                            ; preds = %.noexc106.i, %.noexc103.i
  %.val55.i.i.pr.i = load i64, ptr %i.aum, align 8, !dbg !229260, !noalias !229243 ; 2 uses
  %i.avk = icmp eq i64 %.val55.i.i.pr.i, 0, !dbg !229261
  br i1 %i.avk, label %bb.ci, label %.thread.i, !dbg !229261

bb.ch:                                            ; preds = %.thread66.i.i.i
  %i.avl = invoke fastcc { i1, i8 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes9UInt8TypeE3getCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aod, i64 noundef 0) #44
          to label %.noexc106.i unwind label %bb.bw, !dbg !229262, !noalias !228785

.noexc106.i:                                      ; preds = %bb.ch
  %i.avm = extractvalue { i1, i8 } %i.avl, 0, !dbg !229262
  br i1 %i.avm, label %bb.cg, label %.invoke316.i.a, !dbg !229263

.invoke316.i.a:                                   ; preds = %.noexc106.i, %.thread66.i.i.i, %.noexc100.i
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes9UInt8TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.aji, ptr noundef nonnull align 8 %i.aod)
          to label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17sort_with_numericNtNtB8_9datatypes9UInt8TypeECsePnBjWcsLF5_10polars_ops.exit.i.i unwind label %bb.bw, !dbg !229264, !noalias !228785

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ajc), !dbg !229265, !noalias !229243
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i), !dbg !229266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ajb), !dbg !229266, !noalias !229243
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6to_vecINtB4_12ChunkedArrayNtNtB6_9datatypes9UInt8TypeE17to_vec_null_awareCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ajb, ptr noundef nonnull align 8 %i.aod)
          to label %.noexc108.i unwind label %bb.bw, !dbg !229267, !noalias !228785

.noexc108.i:                                      ; preds = %bb.ci
  %i.avn = load i64, ptr %i.ajb, align 8, !dbg !229268, !range !231, !noalias !229243, !noundef !13
  %i.avo = trunc nuw i64 %i.avn to i1, !dbg !229274
  %i.avp = getelementptr inbounds nuw i8, ptr %i.ajb, i64 8, !dbg !229275 ; 4 uses
  br i1 %i.avo, label %bb.cj, label %bb.cm, !dbg !229274

.thread.i:                                        ; preds = %bb.cg, %bb.ce
  %.val55.i.i199.i = phi i64 [ %.val55.i.i.pr.i, %bb.cg ], [ %.val56.i.i.i, %bb.ce ] ; 6 uses
  %.val46.i.i.i = load i64, ptr %i.auk, align 8, !dbg !229276, !noalias !229243, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aix), !dbg !229278, !noalias !229243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aim), !dbg !229280, !noalias !229243
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aim, i64 noundef %.val46.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc109.i unwind label %bb.bw, !dbg !229280, !noalias !228785

.noexc109.i:                                      ; preds = %.thread.i
  %i.avq = load i64, ptr %i.aim, align 8, !dbg !229280, !range !231, !noalias !229243, !noundef !13
  %i.avr = trunc nuw i64 %i.avq to i1, !dbg !229289
  %i.avs = getelementptr inbounds nuw i8, ptr %i.aim, i64 8, !dbg !229290
  %i.avt = load i64, ptr %i.avs, align 8, !dbg !229290, !range !234, !noalias !229243, !noundef !13 ; 3 uses
  %i.avu = getelementptr inbounds nuw i8, ptr %i.aim, i64 16, !dbg !229290 ; 2 uses
  br i1 %i.avr, label %bb.cx, label %bb.cz, !dbg !229289, !prof !42

bb.cj:                                            ; preds = %.noexc108.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptionhEENtNtNtBK_3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.avp)
          to label %.thread71.i.i.i unwind label %bb.ck, !dbg !229291, !noalias !229243
end_hunk_0
begin_hunk_1_@_RNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array4hist11hist_series:bb.a
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.agp, i64 16, !dbg !231155
  store ptr %i.agq, ptr %i.bpn, align 8, !dbg !231155, !alias.scope !231160, !noalias !231064
  %.sroa.4.0..sroa_idx.i.i692 = getelementptr inbounds nuw i8, ptr %i.agp, i64 24, !dbg !231155
  store ptr %i.agr, ptr %.sroa.4.0..sroa_idx.i.i692, align 8, !dbg !231155, !alias.scope !231160, !noalias !231064
  %.sroa.5.0..sroa_idx.i.i693 = getelementptr inbounds nuw i8, ptr %i.agp, i64 32, !dbg !231155
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i693, align 8, !dbg !231155, !alias.scope !231160, !noalias !231064
  %.sroa.6.0..sroa_idx.i.i694 = getelementptr inbounds nuw i8, ptr %i.agp, i64 40, !dbg !231155
  store i64 %.sroa.026.0.i.i676, ptr %.sroa.6.0..sroa_idx.i.i694, align 8, !dbg !231155, !alias.scope !231160, !noalias !231064
  store i64 1, ptr %i.agp, align 8, !dbg !231155, !alias.scope !231162, !noalias !231163
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.agp, i64 8, !dbg !231155
  store double %.sroa.040.0.i.i689, ptr %i.bpo, align 8, !dbg !231155, !alias.scope !231162, !noalias !231163
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters5chain5ChainINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangejENCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array4hist10get_breaksNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeE0EINtNtNtB1o_7sources4once4OncedEEE9from_iterB32_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ago, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.agp)
          to label %.noexc713 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !231164

.noexc713:                                        ; preds = %bb.kx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agq), !dbg !231169, !noalias !231064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agr), !dbg !231169, !noalias !231064
  br label %bb.lm, !dbg !231170

bb.ky:                                            ; preds = %bb.kv
  %i.bpp = invoke { i64, i64 } @_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes10UInt16TypeE14first_non_nullCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aoe)
          to label %.noexc714 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !231171 ; 2 uses

.noexc714:                                        ; preds = %bb.ky
  %i.bpq = extractvalue { i64, i64 } %i.bpp, 0, !dbg !231171
  %i.bpr = trunc nuw i64 %i.bpq to i1, !dbg !231172
  br i1 %i.bpr, label %bb.la, label %.invoke, !dbg !231172, !prof !7465

bb.kz:                                            ; preds = %bb.kv
  %i.bps = invoke { i16, i16 } @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregateINtB6_12ChunkedArrayNtNtB8_9datatypes10UInt16TypeEINtB4_8ChunkAggtE3minCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aoe)
          to label %.noexc715 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !231175 ; 2 uses

.noexc715:                                        ; preds = %bb.kz
  %i.bpt = extractvalue { i16, i16 } %i.bps, 0, !dbg !231175
  %i.bpu = trunc i16 %i.bpt to i1, !dbg !231176
  br i1 %i.bpu, label %bb.lh, label %.invoke, !dbg !231176, !prof !7465

bb.la:                                            ; preds = %.noexc714
  %i.bpv = extractvalue { i64, i64 } %i.bpp, 1, !dbg !231171 ; 6 uses
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.aoe, i64 16, !dbg !231179 ; 2 uses
  %i.bpx = load i64, ptr %i.bpw, align 8, !dbg !231179, !noalias !231064, !noundef !13 ; 6 uses
  %i.bpy = icmp ult i64 %i.bpx, 576460752303423488, !dbg !231185
  call void @llvm.assume(i1 %i.bpy), !dbg !231186
  %i.bpz = icmp eq i64 %i.bpx, 1, !dbg !231187
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.aoe, i64 8, !dbg !231188 ; 2 uses
  %i.bqb = load ptr, ptr %i.bqa, align 8, !dbg !231188, !noalias !231064, !nonnull !13, !noundef !13 ; 5 uses
  br i1 %i.bpz, label %bb.lb, label %bb.lc, !dbg !231187

bb.lb:                                            ; preds = %bb.la
  %i.bqc = load ptr, ptr %i.bqb, align 8, !dbg !231189, !noalias !231064, !nonnull !13, !noundef !13
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.bqb, i64 8, !dbg !231189
  %i.bqe = load ptr, ptr %i.bqd, align 8, !dbg !231189, !noalias !231064, !nonnull !13, !align !172, !noundef !13
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqe, i64 48, !dbg !231189
  %i.bqg = load ptr, ptr %i.bqf, align 8, !dbg !231189, !invariant.load !13, !noalias !231064, !nonnull !13
  %i.bqh = invoke noundef i64 %i.bqg(ptr noundef nonnull %i.bqc) #44
          to label %.noexc716 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !231190, !inline_history !231191 ; 2 uses

.noexc716:                                        ; preds = %bb.lb
  %i.bqi = icmp uge i64 %i.bpv, %i.bqh, !dbg !231192 ; 2 uses
  %i.bqj = select i1 %i.bqi, i64 %i.bqh, i64 0, !dbg !231192
  %spec.select13.i.i.i707 = sub nuw i64 %i.bpv, %i.bqj, !dbg !231192
  %i.bqk = zext i1 %i.bqi to i64, !dbg !231192
  br label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes10UInt16TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, !dbg !231192

bb.lc:                                            ; preds = %bb.la
  %.idx.i.i.i677 = shl nuw nsw i64 %i.bpx, 4, !dbg !231193 ; 3 uses
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqb, i64 %.idx.i.i.i677, !dbg !231193 ; 2 uses
  %i.bqm = load i64, ptr %i.bpd, align 8, !dbg !231198, !noalias !231064, !noundef !13 ; 2 uses
  %i.bqn = lshr i64 %i.bqm, 1, !dbg !231200
  %.not.i.i.i678 = icmp ugt i64 %i.bpv, %i.bqn, !dbg !231201
  br i1 %.not.i.i.i678, label %bb.ld, label %bb.lf, !dbg !231201

bb.ld:                                            ; preds = %bb.lc
  %i.bqo = sub i64 %i.bqm, %i.bpv, !dbg !231202   ; 2 uses
  %i.bqp = icmp eq i64 %i.bpx, 0, !dbg !231203
  br i1 %i.bqp, label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i703, label %.lr.ph.i.preheader.i.i.i695, !dbg !231209

.lr.ph.i.preheader.i.i.i695:                      ; preds = %bb.ld
  %i.bqq = add nsw i64 %.idx.i.i.i677, -16, !dbg !231210
  %i.bqr = lshr exact i64 %i.bqq, 4, !dbg !231210
  %i.bqs = add nuw nsw i64 %i.bqr, 2, !dbg !231210
  br label %.lr.ph.i.i.i.i696, !dbg !231210

.lr.ph.i.i.i.i696:                                ; preds = %bb.le, %.lr.ph.i.preheader.i.i.i695
  %.sroa.0.019.i.i.i.i697 = phi i64 [ %i.bqy, %bb.le ], [ %i.bqo, %.lr.ph.i.preheader.i.i.i695 ] ; 3 uses
  %.sroa.08.018.i.i.i.i698 = phi i64 [ %i.bqz, %bb.le ], [ 1, %.lr.ph.i.preheader.i.i.i695 ] ; 2 uses
  %.sroa.4.017.i.i.i.i699 = phi ptr [ %i.bqt, %bb.le ], [ %i.bql, %.lr.ph.i.preheader.i.i.i695 ] ; 2 uses
  %i.bqt = getelementptr inbounds i8, ptr %.sroa.4.017.i.i.i.i699, i64 -16, !dbg !231211 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !231216), !dbg !231219
  %.val.i.i.i.i700 = load ptr, ptr %i.bqt, align 8, !dbg !231223, !alias.scope !231216, !noalias !231225, !nonnull !13, !noundef !13
  %i.bqu = getelementptr inbounds i8, ptr %.sroa.4.017.i.i.i.i699, i64 -8, !dbg !231223
  %.val2.i.i.i.i701 = load ptr, ptr %i.bqu, align 8, !dbg !231223, !alias.scope !231216, !noalias !231225, !nonnull !13, !align !172, !noundef !13
  %i.bqv = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i701, i64 48, !dbg !231232
  %i.bqw = load ptr, ptr %i.bqv, align 8, !dbg !231232, !invariant.load !13, !noalias !231234, !nonnull !13
  %i.bqx = invoke noundef i64 %i.bqw(ptr noundef nonnull %.val.i.i.i.i700) #44
          to label %.noexc717 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !231235, !inline_history !231191 ; 4 uses

.noexc717:                                        ; preds = %.lr.ph.i.i.i.i696
  %.not.i.i.i.i702 = icmp ult i64 %i.bqx, %.sroa.0.019.i.i.i.i697, !dbg !231236
  br i1 %.not.i.i.i.i702, label %bb.le, label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i703, !dbg !231210

bb.le:                                            ; preds = %.noexc717
  %i.bqy = sub nuw i64 %.sroa.0.019.i.i.i.i697, %i.bqx, !dbg !231238 ; 2 uses
  %i.bqz = add nuw nsw i64 %.sroa.08.018.i.i.i.i698, 1, !dbg !231240
  %i.bra = icmp eq ptr %i.bqb, %i.bqt, !dbg !231203
  br i1 %i.bra, label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i703, label %.lr.ph.i.i.i.i696, !dbg !231209

_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i703: ; preds = %bb.le, %.noexc717, %bb.ld
  %.sroa.08.0.lcssa.i.i.i.i704 = phi i64 [ 1, %bb.ld ], [ %.sroa.08.018.i.i.i.i698, %.noexc717 ], [ %i.bqs, %bb.le ], !dbg !231242
  %.sroa.0.0.lcssa.i.i.i.i705 = phi i64 [ %i.bqo, %bb.ld ], [ %.sroa.0.019.i.i.i.i697, %.noexc717 ], [ %i.bqy, %bb.le ], !dbg !231243
  %.sroa.02.1.i.i.i.i706 = phi i64 [ 0, %bb.ld ], [ %i.bqx, %.noexc717 ], [ %i.bqx, %bb.le ], !dbg !231244
  %i.brb = sub i64 %i.bpx, %.sroa.08.0.lcssa.i.i.i.i704, !dbg !231245
  %i.brc = sub i64 %.sroa.02.1.i.i.i.i706, %.sroa.0.0.lcssa.i.i.i.i705, !dbg !231247
  br label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes10UInt16TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, !dbg !231249

bb.lf:                                            ; preds = %bb.lc
  %i.brd = icmp eq i64 %i.bpx, 0, !dbg !231250
  br i1 %i.brd, label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes10UInt16TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, label %.lr.ph.i6.preheader.i.i.i679, !dbg !231255

.lr.ph.i6.preheader.i.i.i679:                     ; preds = %bb.lf
  %i.bre = add nsw i64 %.idx.i.i.i677, -16, !dbg !231256
  %i.brf = lshr exact i64 %i.bre, 4, !dbg !231256
  %i.brg = add nuw nsw i64 %i.brf, 1, !dbg !231256
  br label %.lr.ph.i6.i.i.i680, !dbg !231256

.lr.ph.i6.i.i.i680:                               ; preds = %bb.lg, %.lr.ph.i6.preheader.i.i.i679
  %.sroa.0.019.i7.i.i.i681 = phi i64 [ %i.brn, %bb.lg ], [ %i.bpv, %.lr.ph.i6.preheader.i.i.i679 ] ; 3 uses
  %.sroa.08.018.i8.i.i.i682 = phi i64 [ %i.bro, %bb.lg ], [ 0, %.lr.ph.i6.preheader.i.i.i679 ] ; 2 uses
  %.sroa.010.017.i.i.i.i683 = phi ptr [ %i.brm, %bb.lg ], [ %i.bqb, %.lr.ph.i6.preheader.i.i.i679 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !231257), !dbg !231260
  %.val.i19.i.i.i684 = load ptr, ptr %.sroa.010.017.i.i.i.i683, align 8, !dbg !231264, !alias.scope !231257, !noalias !231266, !nonnull !13, !noundef !13
  %i.brh = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i.i.i683, i64 8, !dbg !231264
  %.val2.i20.i.i.i685 = load ptr, ptr %i.brh, align 8, !dbg !231264, !alias.scope !231257, !noalias !231266, !nonnull !13, !align !172, !noundef !13
  %i.bri = getelementptr inbounds nuw i8, ptr %.val2.i20.i.i.i685, i64 48, !dbg !231271
  %i.brj = load ptr, ptr %i.bri, align 8, !dbg !231271, !invariant.load !13, !noalias !231273, !nonnull !13
  %i.brk = invoke noundef i64 %i.brj(ptr noundef nonnull %.val.i19.i.i.i684) #44
          to label %.noexc718 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !231274, !inline_history !231191 ; 2 uses

.noexc718:                                        ; preds = %.lr.ph.i6.i.i.i680
  %i.brl = icmp ugt i64 %i.brk, %.sroa.0.019.i7.i.i.i681, !dbg !231275
  br i1 %i.brl, label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes10UInt16TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, label %bb.lg, !dbg !231256

bb.lg:                                            ; preds = %.noexc718
  %i.brm = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i.i.i683, i64 16, !dbg !231277 ; 2 uses
  %i.brn = sub nuw nsw i64 %.sroa.0.019.i7.i.i.i681, %i.brk, !dbg !231279 ; 2 uses
  %i.bro = add nuw nsw i64 %.sroa.08.018.i8.i.i.i682, 1, !dbg !231281
  %i.brp = icmp eq ptr %i.brm, %i.bql, !dbg !231250
  br i1 %i.brp, label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes10UInt16TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, label %.lr.ph.i6.i.i.i680, !dbg !231255

_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes10UInt16TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i: ; preds = %bb.lg, %.noexc718, %bb.lf, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i703, %.noexc716
  %.pn.i.i.i686 = phi i64 [ %i.brb, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i703 ], [ %i.bqk, %.noexc716 ], [ 0, %bb.lf ], [ %.sroa.08.018.i8.i.i.i682, %.noexc718 ], [ %i.brg, %bb.lg ] ; 2 uses
  %.pn12.i.i.i687 = phi i64 [ %i.brc, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i703 ], [ %spec.select13.i.i.i707, %.noexc716 ], [ %i.bpv, %bb.lf ], [ %.sroa.0.019.i7.i.i.i681, %.noexc718 ], [ %i.brn, %bb.lg ] ; 3 uses
  %i.brq = load ptr, ptr %i.bqa, align 8, !dbg !231283, !noalias !231064, !nonnull !13, !noundef !13
  %i.brr = load i64, ptr %i.bpw, align 8, !dbg !231301, !noalias !231064, !noundef !13
  %i.brs = icmp ult i64 %.pn.i.i.i686, %i.brr, !dbg !231302
  call void @llvm.assume(i1 %i.brs), !dbg !231307
  %i.brt = getelementptr inbounds nuw [16 x i8], ptr %i.brq, i64 %.pn.i.i.i686, !dbg !231308
  %i.bru = load ptr, ptr %i.brt, align 8, !dbg !231309, !noalias !231064, !nonnull !13, !noundef !13 ; 4 uses
  %i.brv = getelementptr inbounds nuw i8, ptr %i.bru, i64 56, !dbg !231311
  %i.brw = load ptr, ptr %i.brv, align 8, !dbg !231311, !noalias !231064, !noundef !13 ; 3 uses
  %.not.i.i69.i.i688 = icmp eq ptr %i.brw, null, !dbg !231311
  br i1 %.not.i.i69.i.i688, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.thread.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.i.i, !dbg !231317

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.i.i: ; preds = %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes10UInt16TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i
  %i.brx = getelementptr inbounds nuw i8, ptr %i.brw, i64 40, !dbg !231319
  %i.bry = load i64, ptr %i.brx, align 8, !dbg !231319, !noalias !231064, !noundef !13
  %i.brz = getelementptr inbounds nuw i8, ptr %i.brw, i64 32, !dbg !231324
  %i.bsa = load ptr, ptr %i.brz, align 8, !dbg !231324, !noalias !231064, !noundef !13
  %i.bsb = getelementptr inbounds nuw i8, ptr %i.bru, i64 64, !dbg !231325
  %i.bsc = load i64, ptr %i.bsb, align 8, !dbg !231325, !noalias !231064, !noundef !13
  %i.bsd = add i64 %i.bsc, %.pn12.i.i.i687, !dbg !231325 ; 2 uses
  %i.bse = lshr i64 %i.bsd, 3, !dbg !231326       ; 2 uses
  %i.bsf = icmp ult i64 %i.bse, %i.bry, !dbg !231328
  call void @llvm.assume(i1 %i.bsf), !dbg !231331
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bsa, i64 %i.bse, !dbg !231332
  %i.bsh = load i8, ptr %i.bsg, align 1, !dbg !231333, !noalias !231064, !noundef !13
  %i.bsi = trunc i64 %i.bsd to i8, !dbg !231334
  %i.bsj = and i8 %i.bsi, 7, !dbg !231334
  %i.bsk = xor i8 %i.bsh, -1, !dbg !231335
  %i.bsl = lshr i8 %i.bsk, %i.bsj, !dbg !231335
  %i.bsm = trunc i8 %i.bsl to i1, !dbg !231336
  br i1 %i.bsm, label %.invoke, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.thread.i.i, !dbg !231337, !prof !229073

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.thread.i.i: ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.i.i, %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes10UInt16TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i
  %i.bsn = getelementptr inbounds nuw i8, ptr %i.bru, i64 40, !dbg !231338
  %i.bso = load ptr, ptr %i.bsn, align 8, !dbg !231338, !noalias !231064, !noundef !13
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bru, i64 48, !dbg !231347
  %i.bsq = load i64, ptr %i.bsp, align 8, !dbg !231347, !noalias !231064, !noundef !13
  %i.bsr = icmp ult i64 %.pn12.i.i.i687, %i.bsq, !dbg !231348
  call void @llvm.assume(i1 %i.bsr), !dbg !231354
  %i.bss = getelementptr inbounds nuw [2 x i8], ptr %i.bso, i64 %.pn12.i.i.i687, !dbg !231355
  %i.bst = load i16, ptr %i.bss, align 2, !dbg !231356, !noalias !231064, !noundef !13
  %i.bsu = uitofp i16 %i.bst to double, !dbg !231357 ; 2 uses
  %i.bsv = fadd double %i.bsu, -5.000000e-01, !dbg !231361
  %i.bsw = uitofp i64 %.sroa.026.0.i.i676 to double, !dbg !231363
  %i.bsx = fdiv double 1.000000e+00, %i.bsw, !dbg !231364
  %i.bsy = fadd double %i.bsu, 5.000000e-01, !dbg !231365
  br label %bb.kx, !dbg !231366

bb.lh:                                            ; preds = %.noexc715
  %i.bsz = extractvalue { i16, i16 } %i.bps, 1, !dbg !231175 ; 2 uses
  %i.bta = uitofp i16 %i.bsz to double, !dbg !231367 ; 3 uses
  %i.btb = invoke { i16, i16 } @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregateINtB6_12ChunkedArrayNtNtB8_9datatypes10UInt16TypeEINtB4_8ChunkAggtE3maxCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aoe)
          to label %.noexc721 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !231369 ; 2 uses

.noexc721:                                        ; preds = %bb.lh
  %i.btc = extractvalue { i16, i16 } %i.btb, 0, !dbg !231369
  %i.btd = trunc i16 %i.btc to i1, !dbg !231371
  br i1 %i.btd, label %bb.li, label %.invoke, !dbg !231371, !prof !7465

bb.li:                                            ; preds = %.noexc721
  %i.bte = extractvalue { i16, i16 } %i.btb, 1, !dbg !231369 ; 2 uses
  %i.btf = uitofp i16 %i.bte to double, !dbg !231373 ; 3 uses
  %9 = icmp eq i16 %i.bsz, %i.bte, !dbg !231375
  %i.btg = uitofp i64 %.sroa.026.0.i.i676 to double, !dbg !231377 ; 2 uses
  br i1 %9, label %bb.lk, label %bb.lj, !dbg !231375

bb.lj:                                            ; preds = %bb.li
  %i.bth = fsub double %i.btf, %i.bta, !dbg !231378
  %i.bti = fdiv double %i.bth, %i.btg, !dbg !231378
  br label %bb.kx, !dbg !231379

bb.lk:                                            ; preds = %bb.li
  %i.btj = fadd double %i.bta, -5.000000e-01, !dbg !231380
  %i.btk = fdiv double 1.000000e+00, %i.btg, !dbg !231381
  %i.btl = fadd double %i.btf, 5.000000e-01, !dbg !231382
  br label %bb.kx, !dbg !231379

.body110.i451:                                    ; preds = %bb.ty, %bb.sz, %.body159.i472, %bb.px, %bb.ox, %bb.nw, %.thread87.i.i.i, %bb.nr, %bb.np, %bb.mn, %bb.ml, %bb.mi, %bb.lz, %bb.ll
  %.pn90.pn.i452 = phi { ptr, i32 } [ %.pn90200.i459, %bb.ty ], [ %.pn88.i464, %bb.px ], [ %.pn.i.i559, %bb.nw ], [ %i.btm, %bb.ll ], [ %lpad.thr_comm106.i.i.i, %bb.nr ], [ %i.bvn, %bb.lz ], [ %lpad.thr_comm.i.i.i600, %bb.ml ], [ %i.bxw, %bb.np ], [ %.pn37.pn90.i.i.i, %.thread87.i.i.i ], [ %.pn.pn.i.i.i546, %bb.mn ], [ %i.bvx, %bb.mi ], [ %lpad.phi.i124.i619, %bb.ox ], [ %lpad.thr_comm.split-lp.i473, %.body159.i472 ], [ %i.cmm, %bb.sz ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.ahw) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECsePnBjWcsLF5_10polars_ops.exit unwind label %bb.rn, !dbg !231383, !noalias !231055

bb.ll:                                            ; preds = %.invoke.i528, %bb.ov, %bb.ot, %bb.no, %bb.mh, %bb.md, %.thread73.i.i.i, %.thread.i534, %bb.lx, %.invoke316.i607, %bb.lw, %bb.lu, %.thread67.i.i.i, %.thread.i.i.i531, %bb.ls, %bb.ln
  %i.btm = landingpad { ptr, i32 }
          cleanup
  br label %.body110.i451

bb.lm:                                            ; preds = %.noexc713, %bb.ku, %bb.kr
  %.sroa.060.0.i.i448 = phi i8 [ 1, %.noexc713 ], [ 0, %bb.ku ], [ 0, %bb.kr ], !dbg !231141 ; 2 uses
  %i.btn = getelementptr inbounds nuw i8, ptr %i.agx, i64 8, !dbg !231384 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.btn, ptr noundef nonnull align 8 dereferenceable(24) %i.ago, i64 24, i1 false), !dbg !231384, !noalias !231055
  %.sroa.454.0..sroa_idx.i.i449 = getelementptr inbounds nuw i8, ptr %i.agx, i64 32, !dbg !231384
  store i8 %.sroa.060.0.i.i448, ptr %.sroa.454.0..sroa_idx.i.i449, align 8, !dbg !231384, !noalias !231055
  store i64 18, ptr %i.agx, align 8, !dbg !231384, !noalias !231055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ago), !dbg !231386, !noalias !231055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agp), !dbg !231386, !noalias !231055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ahw), !dbg !231387, !noalias !231055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ahw, ptr noundef nonnull align 8 dereferenceable(24) %i.btn, i64 24, i1 false), !dbg !231049, !noalias !231055
  %i.bto = trunc nuw i8 %.sroa.060.0.i.i448 to i1, !dbg !231049
  %i.btp = getelementptr inbounds nuw i8, ptr %i.ahw, i64 16, !dbg !231388 ; 4 uses
  %i.btq = load i64, ptr %i.btp, align 8, !dbg !231388, !noalias !231055, !noundef !13 ; 6 uses
  %i.btr = icmp ult i64 %i.btq, 1152921504606846976, !dbg !231392
  call void @llvm.assume(i1 %i.btr), !dbg !231394
  %i.bts = call i64 @llvm.usub.sat.i64(i64 %i.btq, i64 1), !dbg !231395 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ahv), !dbg !231396, !noalias !231055
  %.not71.i450 = icmp samesign ult i64 %i.btq, 2, !dbg !231398 ; 3 uses
  br i1 %.not71.i450, label %bb.ln, label %bb.lp, !dbg !231398

bb.ln:                                            ; preds = %bb.lp, %bb.lm
  call void @llvm.experimental.noalias.scope.decl(metadata !231399), !dbg !231402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.agm), !dbg !231405, !noalias !231409
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.agm, i64 noundef %i.bts, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc96.i455 unwind label %bb.ll, !dbg !231405, !noalias !231055

.noexc96.i455:                                    ; preds = %bb.ln
  %i.btt = load i64, ptr %i.agm, align 8, !dbg !231405, !range !231, !noalias !231409, !noundef !13
  %i.btu = trunc nuw i64 %i.btt to i1, !dbg !231410
  %i.btv = getelementptr inbounds nuw i8, ptr %i.agm, i64 8, !dbg !231411
  %i.btw = load i64, ptr %i.btv, align 8, !dbg !231411, !range !234, !noalias !231409, !noundef !13 ; 2 uses
  %i.btx = getelementptr inbounds nuw i8, ptr %i.agm, i64 16, !dbg !231411 ; 2 uses
  br i1 %i.btu, label %bb.lo, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsePnBjWcsLF5_10polars_ops.exit.i456, !dbg !231410, !prof !42

bb.lo:                                            ; preds = %.noexc96.i455
  %i.bty = load i64, ptr %i.btx, align 8, !dbg !231412, !noalias !231409
  br label %.invoke.i528, !dbg !231413

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsePnBjWcsLF5_10polars_ops.exit.i456: ; preds = %.noexc96.i455
  %i.btz = load ptr, ptr %i.btx, align 8, !dbg !231414, !noalias !231409, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agm), !dbg !231415, !noalias !231409
  store i64 %i.btw, ptr %i.ahv, align 8, !dbg !231416, !alias.scope !231399, !noalias !231055
  %i.bua = getelementptr inbounds nuw i8, ptr %i.ahv, i64 8, !dbg !231416
  store ptr %i.btz, ptr %i.bua, align 8, !dbg !231416, !alias.scope !231399, !noalias !231055
  %i.bub = getelementptr inbounds nuw i8, ptr %i.ahv, i64 16, !dbg !231416
  store i64 %i.bts, ptr %i.bub, align 8, !dbg !231416, !alias.scope !231399, !noalias !231055
  br label %bb.lr, !dbg !231417

bb.lp:                                            ; preds = %bb.lm
  %i.buc = getelementptr inbounds nuw i8, ptr %i.aoe, i64 32, !dbg !231418 ; 3 uses
  %i.bud = load i64, ptr %i.buc, align 8, !dbg !231418, !noalias !231055, !noundef !13
  %i.bue = getelementptr inbounds nuw i8, ptr %i.aoe, i64 40, !dbg !231421 ; 4 uses
  %i.buf = load i64, ptr %i.bue, align 8, !dbg !231421, !noalias !231055, !noundef !13
  %i.bug = icmp ugt i64 %i.bud, %i.buf, !dbg !231424
  br i1 %i.bug, label %bb.lq, label %bb.ln, !dbg !231424

bb.lq:                                            ; preds = %bb.lp
  %i.buh = getelementptr inbounds nuw i8, ptr %i.ahw, i64 8, !dbg !231425
  %i.bui = load ptr, ptr %i.buh, align 8, !dbg !231425, !noalias !231055, !nonnull !13, !noundef !13 ; 9 uses
  %i.buj = add nsw i64 %i.btq, -1, !dbg !231438   ; 10 uses
  br i1 %i.bto, label %bb.ov, label %bb.ls, !dbg !231439

bb.lr:                                            ; preds = %_RINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array4hist18uniform_hist_countNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEB6_.exit.i, %_RINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array4hist10hist_countNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt16TypeEB6_.exit.i, %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsePnBjWcsLF5_10polars_ops.exit.i456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ahu), !dbg !231440, !noalias !231055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.agw), !dbg !231442, !noalias !231055
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.agw, i64 noundef 3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.py unwind label %.body159.thread203.i457, !dbg !231442, !noalias !231055

bb.ls:                                            ; preds = %bb.lq
  call void @llvm.experimental.noalias.scope.decl(metadata !231451), !dbg !231454
  %i.buk = getelementptr inbounds nuw [8 x i8], ptr %i.bui, i64 %i.btq, !dbg !231455 ; 2 uses
  %i.bul = load double, ptr %i.bui, align 8, !dbg !231467, !alias.scope !231451, !noalias !231469, !noundef !13
  %i.bum = getelementptr inbounds nuw [8 x i8], ptr %i.bui, i64 %i.buj, !dbg !231471
  %i.bun = load double, ptr %i.bum, align 8, !dbg !231471, !alias.scope !231451, !noalias !231469, !noundef !13
  %i.buo = getelementptr inbounds nuw i8, ptr %i.bui, i64 16, !dbg !231472
  %i.bup = getelementptr inbounds nuw i8, ptr %i.bui, i64 8, !dbg !231472
  %i.buq = load double, ptr %i.bup, align 8, !dbg !231477, !alias.scope !231451, !noalias !231469, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.agl), !dbg !231478, !noalias !231480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.agi), !dbg !231481, !noalias !231480
  %i.bur = getelementptr inbounds nuw i8, ptr %i.agi, i64 8, !dbg !231481
  store i8 0, ptr %i.bur, align 4, !dbg !231481, !noalias !231480
  %i.bus = getelementptr inbounds nuw i8, ptr %i.agi, i64 9, !dbg !231481
  store i8 0, ptr %i.bus, align 1, !dbg !231481, !noalias !231480
  %i.but = getelementptr inbounds nuw i8, ptr %i.agi, i64 11, !dbg !231481
  store i8 0, ptr %i.but, align 1, !dbg !231481, !noalias !231480
  store i32 0, ptr %i.agi, align 4, !dbg !231481, !noalias !231480
  %i.buu = invoke noundef i64 @_RNvMNtCs1LHh8CLbVkQ_11polars_core7runtimeNtB2_5RAYON19current_num_threads(ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr))
          to label %.noexc100.i530 unwind label %bb.ll, !dbg !231484, !noalias !231055

.noexc100.i530:                                   ; preds = %bb.ls
  %i.buv = getelementptr inbounds nuw i8, ptr %i.agi, i64 10, !dbg !231481
  %i.buw = icmp ugt i64 %i.buu, 1, !dbg !231487
  %i.bux = zext i1 %i.buw to i8, !dbg !231488
  store i8 %i.bux, ptr %i.buv, align 2, !dbg !231488, !noalias !231480
  %.val54.i.i.i = load i64, ptr %i.buc, align 8, !dbg !231489, !noalias !231492, !noundef !13
  %i.buy = icmp eq i64 %.val54.i.i.i, 0, !dbg !231496
  br i1 %i.buy, label %.invoke316.i607, label %.thread.i.i.i531, !dbg !231499

.thread.i.i.i531:                                 ; preds = %.noexc100.i530
  %i.buz = invoke noundef zeroext i1 @_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes10UInt16TypeE24is_sorted_ascending_flagCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aoe)
          to label %.noexc102.i532 unwind label %bb.ll, !dbg !231500, !noalias !231055

.noexc102.i532:                                   ; preds = %.thread.i.i.i531
  br i1 %i.buz, label %.thread68.i.i.i, label %.thread67.i.i.i, !dbg !231501

.thread68.i.i.i:                                  ; preds = %.noexc102.i532
  %.val59.i.i.i = load i64, ptr %i.bue, align 8, !dbg !231502, !noalias !231492, !noundef !13
  %.not.i27.i.i605 = icmp eq i64 %.val59.i.i.i, 0, !dbg !231503
  br i1 %.not.i27.i.i605, label %.invoke316.i607, label %bb.lw, !dbg !231503

.thread67.i.i.i:                                  ; preds = %.noexc102.i532
  %i.bva = invoke noundef zeroext i1 @_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes10UInt16TypeE25is_sorted_descending_flagCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aoe)
          to label %.noexc103.i533 unwind label %bb.ll, !dbg !231504, !noalias !231055

.noexc103.i533:                                   ; preds = %.thread67.i.i.i
  br i1 %i.bva, label %bb.lt, label %bb.lv, !dbg !231505

bb.lt:                                            ; preds = %.noexc103.i533
  %.val58.i.i.i = load i64, ptr %i.bue, align 8, !dbg !231506, !noalias !231492, !noundef !13 ; 2 uses
  %i.bvb = icmp eq i64 %.val58.i.i.i, 0, !dbg !231507
  br i1 %i.bvb, label %bb.lu, label %.thread.i534, !dbg !231507

bb.lu:                                            ; preds = %bb.lt
  invoke void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops7reverseINtB6_12ChunkedArrayNtNtB8_9datatypes10UInt16TypeENtB4_12ChunkReverse7reverseCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.agl, ptr noundef nonnull align 8 %i.aoe)
          to label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17sort_with_numericNtNtB8_9datatypes10UInt16TypeECsePnBjWcsLF5_10polars_ops.exit.i.i unwind label %bb.ll, !dbg !231508, !noalias !231055

bb.lv:                                            ; preds = %.noexc106.i606, %.noexc103.i533
  %.val57.i.i.pr.i = load i64, ptr %i.bue, align 8, !dbg !231509, !noalias !231492 ; 2 uses
  %i.bvc = icmp eq i64 %.val57.i.i.pr.i, 0, !dbg !231510
  br i1 %i.bvc, label %bb.lx, label %.thread.i534, !dbg !231510

bb.lw:                                            ; preds = %.thread68.i.i.i
  %i.bvd = invoke fastcc { i16, i16 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes10UInt16TypeE3getCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aoe, i64 noundef 0) #44
          to label %.noexc106.i606 unwind label %bb.ll, !dbg !231511, !noalias !231055

.noexc106.i606:                                   ; preds = %bb.lw
  %i.bve = extractvalue { i16, i16 } %i.bvd, 0, !dbg !231511
  %.not30.i.i.i = icmp eq i16 %i.bve, 1, !dbg !231512
  br i1 %.not30.i.i.i, label %bb.lv, label %.invoke316.i607, !dbg !231519

.invoke316.i607:                                  ; preds = %.noexc106.i606, %.thread68.i.i.i, %.noexc100.i530
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes10UInt16TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.agl, ptr noundef nonnull align 8 %i.aoe)
          to label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17sort_with_numericNtNtB8_9datatypes10UInt16TypeECsePnBjWcsLF5_10polars_ops.exit.i.i unwind label %bb.ll, !dbg !231520, !noalias !231055

bb.lx:                                            ; preds = %bb.lv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.agf), !dbg !231521, !noalias !231492
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i446), !dbg !231522
  call void @llvm.lifetime.start.p0(ptr nonnull %i.age), !dbg !231522, !noalias !231492
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6to_vecINtB4_12ChunkedArrayNtNtB6_9datatypes10UInt16TypeE17to_vec_null_awareCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.age, ptr noundef nonnull align 8 %i.aoe)
          to label %.noexc108.i596 unwind label %bb.ll, !dbg !231523, !noalias !231055

.noexc108.i596:                                   ; preds = %bb.lx
  %i.bvf = load i64, ptr %i.age, align 8, !dbg !231524, !range !231, !noalias !231492, !noundef !13
  %i.bvg = trunc nuw i64 %i.bvf to i1, !dbg !231527
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.age, i64 8, !dbg !231528 ; 4 uses
  br i1 %i.bvg, label %bb.ly, label %bb.mb, !dbg !231527

.thread.i534:                                     ; preds = %bb.lv, %bb.lt
  %.val57.i.i199.i = phi i64 [ %.val57.i.i.pr.i, %bb.lv ], [ %.val58.i.i.i, %bb.lt ] ; 6 uses
  %.val48.i.i.i535 = load i64, ptr %i.buc, align 8, !dbg !231529, !noalias !231492, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aga), !dbg !231531, !noalias !231492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.afp), !dbg !231533, !noalias !231492
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.afp, i64 noundef %.val48.i.i.i535, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2)
          to label %.noexc109.i536 unwind label %bb.ll, !dbg !231533, !noalias !231055

.noexc109.i536:                                   ; preds = %.thread.i534
  %i.bvi = load i64, ptr %i.afp, align 8, !dbg !231533, !range !231, !noalias !231492, !noundef !13
  %i.bvj = trunc nuw i64 %i.bvi to i1, !dbg !231542
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.afp, i64 8, !dbg !231543
  %i.bvl = load i64, ptr %i.bvk, align 8, !dbg !231543, !range !234, !noalias !231492, !noundef !13 ; 3 uses
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.afp, i64 16, !dbg !231543 ; 2 uses
  br i1 %i.bvj, label %bb.mm, label %bb.mo, !dbg !231542, !prof !42

bb.ly:                                            ; preds = %.noexc108.i596
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiontEENtNtNtBK_3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bvh)
end_hunk_1
begin_hunk_2_@_RNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array4hist11hist_series:bb.a
  %i.cpd = getelementptr inbounds nuw i8, ptr %i.ads, i64 16, !dbg !233250
  store ptr %i.adt, ptr %i.cpd, align 8, !dbg !233250, !alias.scope !233255, !noalias !233159
  %.sroa.4.0..sroa_idx.i.i993 = getelementptr inbounds nuw i8, ptr %i.ads, i64 24, !dbg !233250
  store ptr %i.adu, ptr %.sroa.4.0..sroa_idx.i.i993, align 8, !dbg !233250, !alias.scope !233255, !noalias !233159
  %.sroa.5.0..sroa_idx.i.i994 = getelementptr inbounds nuw i8, ptr %i.ads, i64 32, !dbg !233250
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i994, align 8, !dbg !233250, !alias.scope !233255, !noalias !233159
  %.sroa.6.0..sroa_idx.i.i995 = getelementptr inbounds nuw i8, ptr %i.ads, i64 40, !dbg !233250
  store i64 %.sroa.026.0.i.i977, ptr %.sroa.6.0..sroa_idx.i.i995, align 8, !dbg !233250, !alias.scope !233255, !noalias !233159
  store i64 1, ptr %i.ads, align 8, !dbg !233250, !alias.scope !233257, !noalias !233258
  %i.cpe = getelementptr inbounds nuw i8, ptr %i.ads, i64 8, !dbg !233250
  store double %.sroa.040.0.i.i990, ptr %i.cpe, align 8, !dbg !233250, !alias.scope !233257, !noalias !233258
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters5chain5ChainINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangejENCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array4hist10get_breaksNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeE0EINtNtNtB1o_7sources4once4OncedEEE9from_iterB32_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.adr, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ads)
          to label %.noexc1014 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !233259

.noexc1014:                                       ; preds = %bb.ul
  call void @llvm.lifetime.end.p0(ptr nonnull %i.adt), !dbg !233264, !noalias !233159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.adu), !dbg !233264, !noalias !233159
  br label %bb.va, !dbg !233265

bb.um:                                            ; preds = %bb.uj
  %i.cpf = invoke { i64, i64 } @_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes10UInt32TypeE14first_non_nullCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aof)
          to label %.noexc1015 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !233266 ; 2 uses

.noexc1015:                                       ; preds = %bb.um
  %i.cpg = extractvalue { i64, i64 } %i.cpf, 0, !dbg !233266
  %i.cph = trunc nuw i64 %i.cpg to i1, !dbg !233267
  br i1 %i.cph, label %bb.uo, label %.invoke, !dbg !233267, !prof !7465

bb.un:                                            ; preds = %bb.uj
  %i.cpi = invoke { i32, i32 } @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregateINtB6_12ChunkedArrayNtNtB8_9datatypes10UInt32TypeEINtB4_8ChunkAggmE3minCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aof)
          to label %.noexc1016 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !233270 ; 2 uses

.noexc1016:                                       ; preds = %bb.un
  %i.cpj = extractvalue { i32, i32 } %i.cpi, 0, !dbg !233270
  %i.cpk = trunc i32 %i.cpj to i1, !dbg !233271
  br i1 %i.cpk, label %bb.uv, label %.invoke, !dbg !233271, !prof !7465

bb.uo:                                            ; preds = %.noexc1015
  %i.cpl = extractvalue { i64, i64 } %i.cpf, 1, !dbg !233266 ; 6 uses
  %i.cpm = getelementptr inbounds nuw i8, ptr %i.aof, i64 16, !dbg !233274 ; 2 uses
  %i.cpn = load i64, ptr %i.cpm, align 8, !dbg !233274, !noalias !233159, !noundef !13 ; 6 uses
  %i.cpo = icmp ult i64 %i.cpn, 576460752303423488, !dbg !233280
  call void @llvm.assume(i1 %i.cpo), !dbg !233281
  %i.cpp = icmp eq i64 %i.cpn, 1, !dbg !233282
  %i.cpq = getelementptr inbounds nuw i8, ptr %i.aof, i64 8, !dbg !233283 ; 2 uses
  %i.cpr = load ptr, ptr %i.cpq, align 8, !dbg !233283, !noalias !233159, !nonnull !13, !noundef !13 ; 5 uses
  br i1 %i.cpp, label %bb.up, label %bb.uq, !dbg !233282

bb.up:                                            ; preds = %bb.uo
  %i.cps = load ptr, ptr %i.cpr, align 8, !dbg !233284, !noalias !233159, !nonnull !13, !noundef !13
  %i.cpt = getelementptr inbounds nuw i8, ptr %i.cpr, i64 8, !dbg !233284
  %i.cpu = load ptr, ptr %i.cpt, align 8, !dbg !233284, !noalias !233159, !nonnull !13, !align !172, !noundef !13
  %i.cpv = getelementptr inbounds nuw i8, ptr %i.cpu, i64 48, !dbg !233284
  %i.cpw = load ptr, ptr %i.cpv, align 8, !dbg !233284, !invariant.load !13, !noalias !233159, !nonnull !13
  %i.cpx = invoke noundef i64 %i.cpw(ptr noundef nonnull %i.cps) #44
          to label %.noexc1017 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !233285, !inline_history !233286 ; 2 uses

.noexc1017:                                       ; preds = %bb.up
  %i.cpy = icmp uge i64 %i.cpl, %i.cpx, !dbg !233287 ; 2 uses
  %i.cpz = select i1 %i.cpy, i64 %i.cpx, i64 0, !dbg !233287
  %spec.select13.i.i.i1008 = sub nuw i64 %i.cpl, %i.cpz, !dbg !233287
  %i.cqa = zext i1 %i.cpy to i64, !dbg !233287
  br label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes10UInt32TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, !dbg !233287

bb.uq:                                            ; preds = %bb.uo
  %.idx.i.i.i978 = shl nuw nsw i64 %i.cpn, 4, !dbg !233288 ; 3 uses
  %i.cqb = getelementptr inbounds nuw i8, ptr %i.cpr, i64 %.idx.i.i.i978, !dbg !233288 ; 2 uses
  %i.cqc = load i64, ptr %i.cot, align 8, !dbg !233293, !noalias !233159, !noundef !13 ; 2 uses
  %i.cqd = lshr i64 %i.cqc, 1, !dbg !233295
  %.not.i.i.i979 = icmp ugt i64 %i.cpl, %i.cqd, !dbg !233296
  br i1 %.not.i.i.i979, label %bb.ur, label %bb.ut, !dbg !233296

bb.ur:                                            ; preds = %bb.uq
  %i.cqe = sub i64 %i.cqc, %i.cpl, !dbg !233297   ; 2 uses
  %i.cqf = icmp eq i64 %i.cpn, 0, !dbg !233298
  br i1 %i.cqf, label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i1004, label %.lr.ph.i.preheader.i.i.i996, !dbg !233304

.lr.ph.i.preheader.i.i.i996:                      ; preds = %bb.ur
  %i.cqg = add nsw i64 %.idx.i.i.i978, -16, !dbg !233305
  %i.cqh = lshr exact i64 %i.cqg, 4, !dbg !233305
  %i.cqi = add nuw nsw i64 %i.cqh, 2, !dbg !233305
  br label %.lr.ph.i.i.i.i997, !dbg !233305

.lr.ph.i.i.i.i997:                                ; preds = %bb.us, %.lr.ph.i.preheader.i.i.i996
  %.sroa.0.019.i.i.i.i998 = phi i64 [ %i.cqo, %bb.us ], [ %i.cqe, %.lr.ph.i.preheader.i.i.i996 ] ; 3 uses
  %.sroa.08.018.i.i.i.i999 = phi i64 [ %i.cqp, %bb.us ], [ 1, %.lr.ph.i.preheader.i.i.i996 ] ; 2 uses
  %.sroa.4.017.i.i.i.i1000 = phi ptr [ %i.cqj, %bb.us ], [ %i.cqb, %.lr.ph.i.preheader.i.i.i996 ] ; 2 uses
  %i.cqj = getelementptr inbounds i8, ptr %.sroa.4.017.i.i.i.i1000, i64 -16, !dbg !233306 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !233311), !dbg !233314
  %.val.i.i.i.i1001 = load ptr, ptr %i.cqj, align 8, !dbg !233318, !alias.scope !233311, !noalias !233320, !nonnull !13, !noundef !13
  %i.cqk = getelementptr inbounds i8, ptr %.sroa.4.017.i.i.i.i1000, i64 -8, !dbg !233318
  %.val2.i.i.i.i1002 = load ptr, ptr %i.cqk, align 8, !dbg !233318, !alias.scope !233311, !noalias !233320, !nonnull !13, !align !172, !noundef !13
  %i.cql = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i1002, i64 48, !dbg !233327
  %i.cqm = load ptr, ptr %i.cql, align 8, !dbg !233327, !invariant.load !13, !noalias !233329, !nonnull !13
  %i.cqn = invoke noundef i64 %i.cqm(ptr noundef nonnull %.val.i.i.i.i1001) #44
          to label %.noexc1018 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !233330, !inline_history !233286 ; 4 uses

.noexc1018:                                       ; preds = %.lr.ph.i.i.i.i997
  %.not.i.i.i.i1003 = icmp ult i64 %i.cqn, %.sroa.0.019.i.i.i.i998, !dbg !233331
  br i1 %.not.i.i.i.i1003, label %bb.us, label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i1004, !dbg !233305

bb.us:                                            ; preds = %.noexc1018
  %i.cqo = sub nuw i64 %.sroa.0.019.i.i.i.i998, %i.cqn, !dbg !233333 ; 2 uses
  %i.cqp = add nuw nsw i64 %.sroa.08.018.i.i.i.i999, 1, !dbg !233335
  %i.cqq = icmp eq ptr %i.cpr, %i.cqj, !dbg !233298
  br i1 %i.cqq, label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i1004, label %.lr.ph.i.i.i.i997, !dbg !233304

_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i1004: ; preds = %bb.us, %.noexc1018, %bb.ur
  %.sroa.08.0.lcssa.i.i.i.i1005 = phi i64 [ 1, %bb.ur ], [ %.sroa.08.018.i.i.i.i999, %.noexc1018 ], [ %i.cqi, %bb.us ], !dbg !233337
  %.sroa.0.0.lcssa.i.i.i.i1006 = phi i64 [ %i.cqe, %bb.ur ], [ %.sroa.0.019.i.i.i.i998, %.noexc1018 ], [ %i.cqo, %bb.us ], !dbg !233338
  %.sroa.02.1.i.i.i.i1007 = phi i64 [ 0, %bb.ur ], [ %i.cqn, %.noexc1018 ], [ %i.cqn, %bb.us ], !dbg !233339
  %i.cqr = sub i64 %i.cpn, %.sroa.08.0.lcssa.i.i.i.i1005, !dbg !233340
  %i.cqs = sub i64 %.sroa.02.1.i.i.i.i1007, %.sroa.0.0.lcssa.i.i.i.i1006, !dbg !233342
  br label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes10UInt32TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, !dbg !233344

bb.ut:                                            ; preds = %bb.uq
  %i.cqt = icmp eq i64 %i.cpn, 0, !dbg !233345
  br i1 %i.cqt, label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes10UInt32TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, label %.lr.ph.i6.preheader.i.i.i980, !dbg !233350

.lr.ph.i6.preheader.i.i.i980:                     ; preds = %bb.ut
  %i.cqu = add nsw i64 %.idx.i.i.i978, -16, !dbg !233351
  %i.cqv = lshr exact i64 %i.cqu, 4, !dbg !233351
  %i.cqw = add nuw nsw i64 %i.cqv, 1, !dbg !233351
  br label %.lr.ph.i6.i.i.i981, !dbg !233351

.lr.ph.i6.i.i.i981:                               ; preds = %bb.uu, %.lr.ph.i6.preheader.i.i.i980
  %.sroa.0.019.i7.i.i.i982 = phi i64 [ %i.crd, %bb.uu ], [ %i.cpl, %.lr.ph.i6.preheader.i.i.i980 ] ; 3 uses
  %.sroa.08.018.i8.i.i.i983 = phi i64 [ %i.cre, %bb.uu ], [ 0, %.lr.ph.i6.preheader.i.i.i980 ] ; 2 uses
  %.sroa.010.017.i.i.i.i984 = phi ptr [ %i.crc, %bb.uu ], [ %i.cpr, %.lr.ph.i6.preheader.i.i.i980 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !233352), !dbg !233355
  %.val.i19.i.i.i985 = load ptr, ptr %.sroa.010.017.i.i.i.i984, align 8, !dbg !233359, !alias.scope !233352, !noalias !233361, !nonnull !13, !noundef !13
  %i.cqx = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i.i.i984, i64 8, !dbg !233359
  %.val2.i20.i.i.i986 = load ptr, ptr %i.cqx, align 8, !dbg !233359, !alias.scope !233352, !noalias !233361, !nonnull !13, !align !172, !noundef !13
  %i.cqy = getelementptr inbounds nuw i8, ptr %.val2.i20.i.i.i986, i64 48, !dbg !233366
  %i.cqz = load ptr, ptr %i.cqy, align 8, !dbg !233366, !invariant.load !13, !noalias !233368, !nonnull !13
  %i.cra = invoke noundef i64 %i.cqz(ptr noundef nonnull %.val.i19.i.i.i985) #44
          to label %.noexc1019 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !233369, !inline_history !233286 ; 2 uses

.noexc1019:                                       ; preds = %.lr.ph.i6.i.i.i981
  %i.crb = icmp ugt i64 %i.cra, %.sroa.0.019.i7.i.i.i982, !dbg !233370
  br i1 %i.crb, label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes10UInt32TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, label %bb.uu, !dbg !233351

bb.uu:                                            ; preds = %.noexc1019
  %i.crc = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i.i.i984, i64 16, !dbg !233372 ; 2 uses
  %i.crd = sub nuw nsw i64 %.sroa.0.019.i7.i.i.i982, %i.cra, !dbg !233374 ; 2 uses
  %i.cre = add nuw nsw i64 %.sroa.08.018.i8.i.i.i983, 1, !dbg !233376
  %i.crf = icmp eq ptr %i.crc, %i.cqb, !dbg !233345
  br i1 %i.crf, label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes10UInt32TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, label %.lr.ph.i6.i.i.i981, !dbg !233350

_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes10UInt32TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i: ; preds = %bb.uu, %.noexc1019, %bb.ut, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i1004, %.noexc1017
  %.pn.i.i.i987 = phi i64 [ %i.cqr, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i1004 ], [ %i.cqa, %.noexc1017 ], [ 0, %bb.ut ], [ %.sroa.08.018.i8.i.i.i983, %.noexc1019 ], [ %i.cqw, %bb.uu ] ; 2 uses
  %.pn12.i.i.i988 = phi i64 [ %i.cqs, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i1004 ], [ %spec.select13.i.i.i1008, %.noexc1017 ], [ %i.cpl, %bb.ut ], [ %.sroa.0.019.i7.i.i.i982, %.noexc1019 ], [ %i.crd, %bb.uu ] ; 3 uses
  %i.crg = load ptr, ptr %i.cpq, align 8, !dbg !233378, !noalias !233159, !nonnull !13, !noundef !13
  %i.crh = load i64, ptr %i.cpm, align 8, !dbg !233396, !noalias !233159, !noundef !13
  %i.cri = icmp ult i64 %.pn.i.i.i987, %i.crh, !dbg !233397
  call void @llvm.assume(i1 %i.cri), !dbg !233402
  %i.crj = getelementptr inbounds nuw [16 x i8], ptr %i.crg, i64 %.pn.i.i.i987, !dbg !233403
  %i.crk = load ptr, ptr %i.crj, align 8, !dbg !233404, !noalias !233159, !nonnull !13, !noundef !13 ; 4 uses
  %i.crl = getelementptr inbounds nuw i8, ptr %i.crk, i64 56, !dbg !233406
  %i.crm = load ptr, ptr %i.crl, align 8, !dbg !233406, !noalias !233159, !noundef !13 ; 3 uses
  %.not.i.i69.i.i989 = icmp eq ptr %i.crm, null, !dbg !233406
  br i1 %.not.i.i69.i.i989, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.thread.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.i.i, !dbg !233412

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.i.i: ; preds = %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes10UInt32TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i
  %i.crn = getelementptr inbounds nuw i8, ptr %i.crm, i64 40, !dbg !233414
  %i.cro = load i64, ptr %i.crn, align 8, !dbg !233414, !noalias !233159, !noundef !13
  %i.crp = getelementptr inbounds nuw i8, ptr %i.crm, i64 32, !dbg !233419
  %i.crq = load ptr, ptr %i.crp, align 8, !dbg !233419, !noalias !233159, !noundef !13
  %i.crr = getelementptr inbounds nuw i8, ptr %i.crk, i64 64, !dbg !233420
  %i.crs = load i64, ptr %i.crr, align 8, !dbg !233420, !noalias !233159, !noundef !13
  %i.crt = add i64 %i.crs, %.pn12.i.i.i988, !dbg !233420 ; 2 uses
  %i.cru = lshr i64 %i.crt, 3, !dbg !233421       ; 2 uses
  %i.crv = icmp ult i64 %i.cru, %i.cro, !dbg !233423
  call void @llvm.assume(i1 %i.crv), !dbg !233426
  %i.crw = getelementptr inbounds nuw i8, ptr %i.crq, i64 %i.cru, !dbg !233427
  %i.crx = load i8, ptr %i.crw, align 1, !dbg !233428, !noalias !233159, !noundef !13
  %i.cry = trunc i64 %i.crt to i8, !dbg !233429
  %i.crz = and i8 %i.cry, 7, !dbg !233429
  %i.csa = xor i8 %i.crx, -1, !dbg !233430
  %i.csb = lshr i8 %i.csa, %i.crz, !dbg !233430
  %i.csc = trunc i8 %i.csb to i1, !dbg !233431
  br i1 %i.csc, label %.invoke, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.thread.i.i, !dbg !233432, !prof !229073

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.thread.i.i: ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.i.i, %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes10UInt32TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i
  %i.csd = getelementptr inbounds nuw i8, ptr %i.crk, i64 40, !dbg !233433
  %i.cse = load ptr, ptr %i.csd, align 8, !dbg !233433, !noalias !233159, !noundef !13
  %i.csf = getelementptr inbounds nuw i8, ptr %i.crk, i64 48, !dbg !233442
  %i.csg = load i64, ptr %i.csf, align 8, !dbg !233442, !noalias !233159, !noundef !13
  %i.csh = icmp ult i64 %.pn12.i.i.i988, %i.csg, !dbg !233443
  call void @llvm.assume(i1 %i.csh), !dbg !233449
  %i.csi = getelementptr inbounds nuw [4 x i8], ptr %i.cse, i64 %.pn12.i.i.i988, !dbg !233450
  %i.csj = load i32, ptr %i.csi, align 4, !dbg !233451, !noalias !233159, !noundef !13
  %i.csk = uitofp i32 %i.csj to double, !dbg !233452 ; 2 uses
  %i.csl = fadd double %i.csk, -5.000000e-01, !dbg !233456
  %i.csm = uitofp i64 %.sroa.026.0.i.i977 to double, !dbg !233458
  %i.csn = fdiv double 1.000000e+00, %i.csm, !dbg !233459
  %i.cso = fadd double %i.csk, 5.000000e-01, !dbg !233460
  br label %bb.ul, !dbg !233461

bb.uv:                                            ; preds = %.noexc1016
  %i.csp = extractvalue { i32, i32 } %i.cpi, 1, !dbg !233270 ; 2 uses
  %i.csq = uitofp i32 %i.csp to double, !dbg !233462 ; 3 uses
  %i.csr = invoke { i32, i32 } @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregateINtB6_12ChunkedArrayNtNtB8_9datatypes10UInt32TypeEINtB4_8ChunkAggmE3maxCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aof)
          to label %.noexc1022 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !233464 ; 2 uses

.noexc1022:                                       ; preds = %bb.uv
  %i.css = extractvalue { i32, i32 } %i.csr, 0, !dbg !233464
  %i.cst = trunc i32 %i.css to i1, !dbg !233466
  br i1 %i.cst, label %bb.uw, label %.invoke, !dbg !233466, !prof !7465

bb.uw:                                            ; preds = %.noexc1022
  %i.csu = extractvalue { i32, i32 } %i.csr, 1, !dbg !233464 ; 2 uses
  %i.csv = uitofp i32 %i.csu to double, !dbg !233468 ; 3 uses
  %10 = icmp eq i32 %i.csp, %i.csu, !dbg !233470
  %i.csw = uitofp i64 %.sroa.026.0.i.i977 to double, !dbg !233472 ; 2 uses
  br i1 %10, label %bb.uy, label %bb.ux, !dbg !233470

bb.ux:                                            ; preds = %bb.uw
  %i.csx = fsub double %i.csv, %i.csq, !dbg !233473
  %i.csy = fdiv double %i.csx, %i.csw, !dbg !233473
  br label %bb.ul, !dbg !233474

bb.uy:                                            ; preds = %bb.uw
  %i.csz = fadd double %i.csq, -5.000000e-01, !dbg !233475
  %i.cta = fdiv double 1.000000e+00, %i.csw, !dbg !233476
  %i.ctb = fadd double %i.csv, 5.000000e-01, !dbg !233477
  br label %bb.ul, !dbg !233474

.body110.i736:                                    ; preds = %bb.adm, %bb.acn, %.body159.i757, %bb.zl, %bb.yl, %bb.xk, %.thread87.i.i.i826, %bb.xf, %bb.xd, %bb.wb, %bb.vz, %bb.vw, %bb.vn, %bb.uz
  %.pn90.pn.i737 = phi { ptr, i32 } [ %.pn90200.i744, %bb.adm ], [ %.pn88.i749, %bb.zl ], [ %.pn.i.i854, %bb.xk ], [ %i.ctc, %bb.uz ], [ %lpad.thr_comm106.i.i.i852, %bb.xf ], [ %i.cvd, %bb.vn ], [ %lpad.thr_comm.i.i.i896, %bb.vz ], [ %i.cxm, %bb.xd ], [ %.pn37.pn90.i.i.i827, %.thread87.i.i.i826 ], [ %.pn.pn.i.i.i840, %bb.wb ], [ %i.cvn, %bb.vw ], [ %lpad.phi.i124.i920, %bb.yl ], [ %lpad.thr_comm.split-lp.i758, %.body159.i757 ], [ %i.dmc, %bb.acn ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.aez) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECsePnBjWcsLF5_10polars_ops.exit unwind label %bb.abb, !dbg !233478, !noalias !233150

bb.uz:                                            ; preds = %.invoke.i813, %bb.yj, %bb.yh, %bb.xc, %bb.vv, %bb.vr, %.thread73.i.i.i900, %.thread.i821, %bb.vl, %.invoke316.i908, %bb.vk, %bb.vi, %.thread67.i.i.i819, %.thread.i.i.i817, %bb.vg, %bb.vb
  %i.ctc = landingpad { ptr, i32 }
          cleanup
  br label %.body110.i736

bb.va:                                            ; preds = %.noexc1014, %bb.ui, %bb.uf
  %.sroa.060.0.i.i733 = phi i8 [ 1, %.noexc1014 ], [ 0, %bb.ui ], [ 0, %bb.uf ], !dbg !233236 ; 2 uses
  %i.ctd = getelementptr inbounds nuw i8, ptr %i.aea, i64 8, !dbg !233479 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ctd, ptr noundef nonnull align 8 dereferenceable(24) %i.adr, i64 24, i1 false), !dbg !233479, !noalias !233150
  %.sroa.454.0..sroa_idx.i.i734 = getelementptr inbounds nuw i8, ptr %i.aea, i64 32, !dbg !233479
  store i8 %.sroa.060.0.i.i733, ptr %.sroa.454.0..sroa_idx.i.i734, align 8, !dbg !233479, !noalias !233150
  store i64 18, ptr %i.aea, align 8, !dbg !233479, !noalias !233150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.adr), !dbg !233481, !noalias !233150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ads), !dbg !233481, !noalias !233150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aez), !dbg !233482, !noalias !233150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aez, ptr noundef nonnull align 8 dereferenceable(24) %i.ctd, i64 24, i1 false), !dbg !233144, !noalias !233150
  %i.cte = trunc nuw i8 %.sroa.060.0.i.i733 to i1, !dbg !233144
  %i.ctf = getelementptr inbounds nuw i8, ptr %i.aez, i64 16, !dbg !233483 ; 4 uses
  %i.ctg = load i64, ptr %i.ctf, align 8, !dbg !233483, !noalias !233150, !noundef !13 ; 6 uses
  %i.cth = icmp ult i64 %i.ctg, 1152921504606846976, !dbg !233487
  call void @llvm.assume(i1 %i.cth), !dbg !233489
  %i.cti = call i64 @llvm.usub.sat.i64(i64 %i.ctg, i64 1), !dbg !233490 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aey), !dbg !233491, !noalias !233150
  %.not71.i735 = icmp samesign ult i64 %i.ctg, 2, !dbg !233493 ; 3 uses
  br i1 %.not71.i735, label %bb.vb, label %bb.vd, !dbg !233493

bb.vb:                                            ; preds = %bb.vd, %bb.va
  call void @llvm.experimental.noalias.scope.decl(metadata !233494), !dbg !233497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.adp), !dbg !233500, !noalias !233504
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.adp, i64 noundef %i.cti, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc96.i740 unwind label %bb.uz, !dbg !233500, !noalias !233150

.noexc96.i740:                                    ; preds = %bb.vb
  %i.ctj = load i64, ptr %i.adp, align 8, !dbg !233500, !range !231, !noalias !233504, !noundef !13
  %i.ctk = trunc nuw i64 %i.ctj to i1, !dbg !233505
  %i.ctl = getelementptr inbounds nuw i8, ptr %i.adp, i64 8, !dbg !233506
  %i.ctm = load i64, ptr %i.ctl, align 8, !dbg !233506, !range !234, !noalias !233504, !noundef !13 ; 2 uses
  %i.ctn = getelementptr inbounds nuw i8, ptr %i.adp, i64 16, !dbg !233506 ; 2 uses
  br i1 %i.ctk, label %bb.vc, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsePnBjWcsLF5_10polars_ops.exit.i741, !dbg !233505, !prof !42

bb.vc:                                            ; preds = %.noexc96.i740
  %i.cto = load i64, ptr %i.ctn, align 8, !dbg !233507, !noalias !233504
  br label %.invoke.i813, !dbg !233508

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsePnBjWcsLF5_10polars_ops.exit.i741: ; preds = %.noexc96.i740
  %i.ctp = load ptr, ptr %i.ctn, align 8, !dbg !233509, !noalias !233504, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.adp), !dbg !233510, !noalias !233504
  store i64 %i.ctm, ptr %i.aey, align 8, !dbg !233511, !alias.scope !233494, !noalias !233150
  %i.ctq = getelementptr inbounds nuw i8, ptr %i.aey, i64 8, !dbg !233511
  store ptr %i.ctp, ptr %i.ctq, align 8, !dbg !233511, !alias.scope !233494, !noalias !233150
  %i.ctr = getelementptr inbounds nuw i8, ptr %i.aey, i64 16, !dbg !233511
  store i64 %i.cti, ptr %i.ctr, align 8, !dbg !233511, !alias.scope !233494, !noalias !233150
  br label %bb.vf, !dbg !233512

bb.vd:                                            ; preds = %bb.va
  %i.cts = getelementptr inbounds nuw i8, ptr %i.aof, i64 32, !dbg !233513 ; 3 uses
  %i.ctt = load i64, ptr %i.cts, align 8, !dbg !233513, !noalias !233150, !noundef !13
  %i.ctu = getelementptr inbounds nuw i8, ptr %i.aof, i64 40, !dbg !233516 ; 4 uses
  %i.ctv = load i64, ptr %i.ctu, align 8, !dbg !233516, !noalias !233150, !noundef !13
  %i.ctw = icmp ugt i64 %i.ctt, %i.ctv, !dbg !233519
  br i1 %i.ctw, label %bb.ve, label %bb.vb, !dbg !233519

bb.ve:                                            ; preds = %bb.vd
  %i.ctx = getelementptr inbounds nuw i8, ptr %i.aez, i64 8, !dbg !233520
  %i.cty = load ptr, ptr %i.ctx, align 8, !dbg !233520, !noalias !233150, !nonnull !13, !noundef !13 ; 9 uses
  %i.ctz = add nsw i64 %i.ctg, -1, !dbg !233533   ; 10 uses
  br i1 %i.cte, label %bb.yj, label %bb.vg, !dbg !233534

bb.vf:                                            ; preds = %_RINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array4hist18uniform_hist_countNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEB6_.exit.i, %_RINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array4hist10hist_countNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeEB6_.exit.i, %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsePnBjWcsLF5_10polars_ops.exit.i741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aex), !dbg !233535, !noalias !233150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.adz), !dbg !233537, !noalias !233150
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.adz, i64 noundef 3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.zm unwind label %.body159.thread203.i742, !dbg !233537, !noalias !233150

bb.vg:                                            ; preds = %bb.ve
  call void @llvm.experimental.noalias.scope.decl(metadata !233546), !dbg !233549
  %i.cua = getelementptr inbounds nuw [8 x i8], ptr %i.cty, i64 %i.ctg, !dbg !233550 ; 2 uses
  %i.cub = load double, ptr %i.cty, align 8, !dbg !233562, !alias.scope !233546, !noalias !233564, !noundef !13
  %i.cuc = getelementptr inbounds nuw [8 x i8], ptr %i.cty, i64 %i.ctz, !dbg !233566
  %i.cud = load double, ptr %i.cuc, align 8, !dbg !233566, !alias.scope !233546, !noalias !233564, !noundef !13
  %i.cue = getelementptr inbounds nuw i8, ptr %i.cty, i64 16, !dbg !233567
  %i.cuf = getelementptr inbounds nuw i8, ptr %i.cty, i64 8, !dbg !233567
  %i.cug = load double, ptr %i.cuf, align 8, !dbg !233572, !alias.scope !233546, !noalias !233564, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ado), !dbg !233573, !noalias !233575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.adl), !dbg !233576, !noalias !233575
  %i.cuh = getelementptr inbounds nuw i8, ptr %i.adl, i64 8, !dbg !233576
  store i8 0, ptr %i.cuh, align 4, !dbg !233576, !noalias !233575
  %i.cui = getelementptr inbounds nuw i8, ptr %i.adl, i64 9, !dbg !233576
  store i8 0, ptr %i.cui, align 1, !dbg !233576, !noalias !233575
  %i.cuj = getelementptr inbounds nuw i8, ptr %i.adl, i64 11, !dbg !233576
  store i8 0, ptr %i.cuj, align 1, !dbg !233576, !noalias !233575
  store i32 0, ptr %i.adl, align 4, !dbg !233576, !noalias !233575
  %i.cuk = invoke noundef i64 @_RNvMNtCs1LHh8CLbVkQ_11polars_core7runtimeNtB2_5RAYON19current_num_threads(ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr))
          to label %.noexc100.i815 unwind label %bb.uz, !dbg !233579, !noalias !233150

.noexc100.i815:                                   ; preds = %bb.vg
  %i.cul = getelementptr inbounds nuw i8, ptr %i.adl, i64 10, !dbg !233576
  %i.cum = icmp ugt i64 %i.cuk, 1, !dbg !233582
  %i.cun = zext i1 %i.cum to i8, !dbg !233583
  store i8 %i.cun, ptr %i.cul, align 2, !dbg !233583, !noalias !233575
  %.val59.i.i.i816 = load i64, ptr %i.cts, align 8, !dbg !233584, !noalias !233587, !noundef !13
  %i.cuo = icmp eq i64 %.val59.i.i.i816, 0, !dbg !233591
  br i1 %i.cuo, label %.invoke316.i908, label %.thread.i.i.i817, !dbg !233594

.thread.i.i.i817:                                 ; preds = %.noexc100.i815
  %i.cup = invoke noundef zeroext i1 @_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes10UInt32TypeE24is_sorted_ascending_flagCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aof)
          to label %.noexc102.i818 unwind label %bb.uz, !dbg !233595, !noalias !233150

.noexc102.i818:                                   ; preds = %.thread.i.i.i817
  br i1 %i.cup, label %.thread68.i.i.i903, label %.thread67.i.i.i819, !dbg !233596

.thread68.i.i.i903:                               ; preds = %.noexc102.i818
  %.val54.i.i.i904 = load i64, ptr %i.ctu, align 8, !dbg !233597, !noalias !233587, !noundef !13
  %.not.i27.i.i905 = icmp eq i64 %.val54.i.i.i904, 0, !dbg !233598
  br i1 %.not.i27.i.i905, label %.invoke316.i908, label %bb.vk, !dbg !233598

.thread67.i.i.i819:                               ; preds = %.noexc102.i818
  %i.cuq = invoke noundef zeroext i1 @_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes10UInt32TypeE25is_sorted_descending_flagCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aof)
          to label %.noexc103.i820 unwind label %bb.uz, !dbg !233599, !noalias !233150

.noexc103.i820:                                   ; preds = %.thread67.i.i.i819
  br i1 %i.cuq, label %bb.vh, label %bb.vj, !dbg !233600

bb.vh:                                            ; preds = %.noexc103.i820
  %.val53.i.i.i902 = load i64, ptr %i.ctu, align 8, !dbg !233601, !noalias !233587, !noundef !13 ; 2 uses
  %i.cur = icmp eq i64 %.val53.i.i.i902, 0, !dbg !233602
  br i1 %i.cur, label %bb.vi, label %.thread.i821, !dbg !233602

bb.vi:                                            ; preds = %bb.vh
  invoke void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops7reverseINtB6_12ChunkedArrayNtNtB8_9datatypes10UInt32TypeENtB4_12ChunkReverse7reverseCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ado, ptr noundef nonnull align 8 %i.aof)
          to label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17sort_with_numericNtNtB8_9datatypes10UInt32TypeECsePnBjWcsLF5_10polars_ops.exit.i.i unwind label %bb.uz, !dbg !233603, !noalias !233150

bb.vj:                                            ; preds = %.noexc106.i906, %.noexc103.i820
  %.val52.i.i.pr.i = load i64, ptr %i.ctu, align 8, !dbg !233604, !noalias !233587 ; 2 uses
  %i.cus = icmp eq i64 %.val52.i.i.pr.i, 0, !dbg !233605
  br i1 %i.cus, label %bb.vl, label %.thread.i821, !dbg !233605

bb.vk:                                            ; preds = %.thread68.i.i.i903
  %i.cut = invoke fastcc { i32, i32 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes10UInt32TypeE3getCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aof, i64 noundef 0) #44
          to label %.noexc106.i906 unwind label %bb.uz, !dbg !233606, !noalias !233150

.noexc106.i906:                                   ; preds = %bb.vk
  %i.cuu = extractvalue { i32, i32 } %i.cut, 0, !dbg !233606
  %.not30.i.i.i907 = icmp eq i32 %i.cuu, 1, !dbg !233607
  br i1 %.not30.i.i.i907, label %bb.vj, label %.invoke316.i908, !dbg !233614

.invoke316.i908:                                  ; preds = %.noexc106.i906, %.thread68.i.i.i903, %.noexc100.i815
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes10UInt32TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ado, ptr noundef nonnull align 8 %i.aof)
          to label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17sort_with_numericNtNtB8_9datatypes10UInt32TypeECsePnBjWcsLF5_10polars_ops.exit.i.i unwind label %bb.uz, !dbg !233615, !noalias !233150

bb.vl:                                            ; preds = %bb.vj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.adi), !dbg !233616, !noalias !233587
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i731), !dbg !233617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.adh), !dbg !233617, !noalias !233587
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6to_vecINtB4_12ChunkedArrayNtNtB6_9datatypes10UInt32TypeE17to_vec_null_awareCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.adh, ptr noundef nonnull align 8 %i.aof)
          to label %.noexc108.i891 unwind label %bb.uz, !dbg !233618, !noalias !233150

.noexc108.i891:                                   ; preds = %bb.vl
  %i.cuv = load i64, ptr %i.adh, align 8, !dbg !233619, !range !231, !noalias !233587, !noundef !13
  %i.cuw = trunc nuw i64 %i.cuv to i1, !dbg !233622
  %i.cux = getelementptr inbounds nuw i8, ptr %i.adh, i64 8, !dbg !233623 ; 4 uses
  br i1 %i.cuw, label %bb.vm, label %bb.vp, !dbg !233622

.thread.i821:                                     ; preds = %bb.vj, %bb.vh
  %.val52.i.i199.i = phi i64 [ %.val52.i.i.pr.i, %bb.vj ], [ %.val53.i.i.i902, %bb.vh ] ; 6 uses
  %.val48.i.i.i822 = load i64, ptr %i.cts, align 8, !dbg !233624, !noalias !233587, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.add), !dbg !233626, !noalias !233587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.acs), !dbg !233628, !noalias !233587
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.acs, i64 noundef %.val48.i.i.i822, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc109.i823 unwind label %bb.uz, !dbg !233628, !noalias !233150

.noexc109.i823:                                   ; preds = %.thread.i821
  %i.cuy = load i64, ptr %i.acs, align 8, !dbg !233628, !range !231, !noalias !233587, !noundef !13
  %i.cuz = trunc nuw i64 %i.cuy to i1, !dbg !233637
  %i.cva = getelementptr inbounds nuw i8, ptr %i.acs, i64 8, !dbg !233638
  %i.cvb = load i64, ptr %i.cva, align 8, !dbg !233638, !range !234, !noalias !233587, !noundef !13 ; 3 uses
  %i.cvc = getelementptr inbounds nuw i8, ptr %i.acs, i64 16, !dbg !233638 ; 2 uses
  br i1 %i.cuz, label %bb.wa, label %bb.wc, !dbg !233637, !prof !42

bb.vm:                                            ; preds = %.noexc108.i891
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptionmEENtNtNtBK_3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cux)
end_hunk_2
begin_hunk_3_@_RNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array4hist11hist_series:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !239552), !dbg !239555
  %i.foa = getelementptr inbounds nuw i8, ptr %i.uy, i64 16, !dbg !239557
  store ptr %i.uz, ptr %i.foa, align 8, !dbg !239557, !alias.scope !239562, !noalias !239466
  %.sroa.4.0..sroa_idx.i.i1872 = getelementptr inbounds nuw i8, ptr %i.uy, i64 24, !dbg !239557
  store ptr %i.va, ptr %.sroa.4.0..sroa_idx.i.i1872, align 8, !dbg !239557, !alias.scope !239562, !noalias !239466
  %.sroa.5.0..sroa_idx.i.i1873 = getelementptr inbounds nuw i8, ptr %i.uy, i64 32, !dbg !239557
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i1873, align 8, !dbg !239557, !alias.scope !239562, !noalias !239466
  %.sroa.6.0..sroa_idx.i.i1874 = getelementptr inbounds nuw i8, ptr %i.uy, i64 40, !dbg !239557
  store i64 %.sroa.026.0.i.i1856, ptr %.sroa.6.0..sroa_idx.i.i1874, align 8, !dbg !239557, !alias.scope !239562, !noalias !239466
  store i64 1, ptr %i.uy, align 8, !dbg !239557, !alias.scope !239564, !noalias !239565
  %i.fob = getelementptr inbounds nuw i8, ptr %i.uy, i64 8, !dbg !239557
  store double %.sroa.040.0.i.i1869, ptr %i.fob, align 8, !dbg !239557, !alias.scope !239564, !noalias !239565
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters5chain5ChainINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangejENCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array4hist10get_breaksNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeE0EINtNtNtB1o_7sources4once4OncedEEE9from_iterB32_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ux, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.uy)
          to label %.noexc1893.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !239566

.noexc1893.a:                                     ; preds = %bb.axb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.uz), !dbg !239571, !noalias !239466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.va), !dbg !239571, !noalias !239466
  br label %bb.axq, !dbg !239572

bb.axc:                                           ; preds = %bb.awz
  %i.foc = invoke { i64, i64 } @_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes8Int8TypeE14first_non_nullCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aoi)
          to label %.noexc1894.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !239573 ; 2 uses

.noexc1894.a:                                     ; preds = %bb.axc
  %i.fod = extractvalue { i64, i64 } %i.foc, 0, !dbg !239573
  %i.foe = trunc nuw i64 %i.fod to i1, !dbg !239574
  br i1 %i.foe, label %bb.axe, label %.invoke, !dbg !239574, !prof !7465

bb.axd:                                           ; preds = %bb.awz
  %i.fof = invoke { i1, i8 } @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregateINtB6_12ChunkedArrayNtNtB8_9datatypes8Int8TypeEINtB4_8ChunkAggaE3minCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aoi)
          to label %.noexc1895.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !239577 ; 2 uses

.noexc1895.a:                                     ; preds = %bb.axd
  %i.fog = extractvalue { i1, i8 } %i.fof, 0, !dbg !239577
  br i1 %i.fog, label %bb.axl, label %.invoke, !dbg !239578, !prof !7465

bb.axe:                                           ; preds = %.noexc1894.a
  %i.foh = extractvalue { i64, i64 } %i.foc, 1, !dbg !239573 ; 6 uses
  %i.foi = getelementptr inbounds nuw i8, ptr %i.aoi, i64 16, !dbg !239581 ; 2 uses
  %i.foj = load i64, ptr %i.foi, align 8, !dbg !239581, !noalias !239466, !noundef !13 ; 6 uses
  %i.fok = icmp ult i64 %i.foj, 576460752303423488, !dbg !239587
  call void @llvm.assume(i1 %i.fok), !dbg !239588
  %i.fol = icmp eq i64 %i.foj, 1, !dbg !239589
  %i.fom = getelementptr inbounds nuw i8, ptr %i.aoi, i64 8, !dbg !239590 ; 2 uses
  %i.fon = load ptr, ptr %i.fom, align 8, !dbg !239590, !noalias !239466, !nonnull !13, !noundef !13 ; 5 uses
  br i1 %i.fol, label %bb.axf, label %bb.axg, !dbg !239589

bb.axf:                                           ; preds = %bb.axe
  %i.foo = load ptr, ptr %i.fon, align 8, !dbg !239591, !noalias !239466, !nonnull !13, !noundef !13
  %i.fop = getelementptr inbounds nuw i8, ptr %i.fon, i64 8, !dbg !239591
  %i.foq = load ptr, ptr %i.fop, align 8, !dbg !239591, !noalias !239466, !nonnull !13, !align !172, !noundef !13
  %i.for = getelementptr inbounds nuw i8, ptr %i.foq, i64 48, !dbg !239591
  %i.fos = load ptr, ptr %i.for, align 8, !dbg !239591, !invariant.load !13, !noalias !239466, !nonnull !13
  %i.fot = invoke noundef i64 %i.fos(ptr noundef nonnull %i.foo) #44
          to label %.noexc1896.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !239592, !inline_history !239593 ; 2 uses

.noexc1896.a:                                     ; preds = %bb.axf
  %i.fou = icmp uge i64 %i.foh, %i.fot, !dbg !239594 ; 2 uses
  %i.fov = select i1 %i.fou, i64 %i.fot, i64 0, !dbg !239594
  %spec.select13.i.i.i1887 = sub nuw i64 %i.foh, %i.fov, !dbg !239594
  %i.fow = zext i1 %i.fou to i64, !dbg !239594
  br label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes8Int8TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, !dbg !239594

bb.axg:                                           ; preds = %bb.axe
  %.idx.i.i.i1857 = shl nuw nsw i64 %i.foj, 4, !dbg !239595 ; 3 uses
  %i.fox = getelementptr inbounds nuw i8, ptr %i.fon, i64 %.idx.i.i.i1857, !dbg !239595 ; 2 uses
  %i.foy = load i64, ptr %i.fnq, align 8, !dbg !239600, !noalias !239466, !noundef !13 ; 2 uses
  %i.foz = lshr i64 %i.foy, 1, !dbg !239602
  %.not.i.i.i1858 = icmp ugt i64 %i.foh, %i.foz, !dbg !239603
  br i1 %.not.i.i.i1858, label %bb.axh, label %bb.axj, !dbg !239603

bb.axh:                                           ; preds = %bb.axg
  %i.fpa = sub i64 %i.foy, %i.foh, !dbg !239604   ; 2 uses
  %i.fpb = icmp eq i64 %i.foj, 0, !dbg !239605
  br i1 %i.fpb, label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i1883, label %.lr.ph.i.preheader.i.i.i1875, !dbg !239611

.lr.ph.i.preheader.i.i.i1875:                     ; preds = %bb.axh
  %i.fpc = add nsw i64 %.idx.i.i.i1857, -16, !dbg !239612
  %i.fpd = lshr exact i64 %i.fpc, 4, !dbg !239612
  %i.fpe = add nuw nsw i64 %i.fpd, 2, !dbg !239612
  br label %.lr.ph.i.i.i.i1876, !dbg !239612

.lr.ph.i.i.i.i1876:                               ; preds = %bb.axi, %.lr.ph.i.preheader.i.i.i1875
  %.sroa.0.019.i.i.i.i1877 = phi i64 [ %i.fpk, %bb.axi ], [ %i.fpa, %.lr.ph.i.preheader.i.i.i1875 ] ; 3 uses
  %.sroa.08.018.i.i.i.i1878 = phi i64 [ %i.fpl, %bb.axi ], [ 1, %.lr.ph.i.preheader.i.i.i1875 ] ; 2 uses
  %.sroa.4.017.i.i.i.i1879 = phi ptr [ %i.fpf, %bb.axi ], [ %i.fox, %.lr.ph.i.preheader.i.i.i1875 ] ; 2 uses
  %i.fpf = getelementptr inbounds i8, ptr %.sroa.4.017.i.i.i.i1879, i64 -16, !dbg !239613 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !239618), !dbg !239621
  %.val.i.i.i.i1880 = load ptr, ptr %i.fpf, align 8, !dbg !239625, !alias.scope !239618, !noalias !239627, !nonnull !13, !noundef !13
  %i.fpg = getelementptr inbounds i8, ptr %.sroa.4.017.i.i.i.i1879, i64 -8, !dbg !239625
  %.val2.i.i.i.i1881 = load ptr, ptr %i.fpg, align 8, !dbg !239625, !alias.scope !239618, !noalias !239627, !nonnull !13, !align !172, !noundef !13
  %i.fph = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i1881, i64 48, !dbg !239634
  %i.fpi = load ptr, ptr %i.fph, align 8, !dbg !239634, !invariant.load !13, !noalias !239636, !nonnull !13
  %i.fpj = invoke noundef i64 %i.fpi(ptr noundef nonnull %.val.i.i.i.i1880) #44
          to label %.noexc1897.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !239637, !inline_history !239593 ; 4 uses

.noexc1897.a:                                     ; preds = %.lr.ph.i.i.i.i1876
  %.not.i.i.i.i1882 = icmp ult i64 %i.fpj, %.sroa.0.019.i.i.i.i1877, !dbg !239638
  br i1 %.not.i.i.i.i1882, label %bb.axi, label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i1883, !dbg !239612

bb.axi:                                           ; preds = %.noexc1897.a
  %i.fpk = sub nuw i64 %.sroa.0.019.i.i.i.i1877, %i.fpj, !dbg !239640 ; 2 uses
  %i.fpl = add nuw nsw i64 %.sroa.08.018.i.i.i.i1878, 1, !dbg !239642
  %i.fpm = icmp eq ptr %i.fon, %i.fpf, !dbg !239605
  br i1 %i.fpm, label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i1883, label %.lr.ph.i.i.i.i1876, !dbg !239611

_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i1883: ; preds = %bb.axi, %.noexc1897.a, %bb.axh
  %.sroa.08.0.lcssa.i.i.i.i1884 = phi i64 [ 1, %bb.axh ], [ %.sroa.08.018.i.i.i.i1878, %.noexc1897.a ], [ %i.fpe, %bb.axi ], !dbg !239644
  %.sroa.0.0.lcssa.i.i.i.i1885 = phi i64 [ %i.fpa, %bb.axh ], [ %.sroa.0.019.i.i.i.i1877, %.noexc1897.a ], [ %i.fpk, %bb.axi ], !dbg !239645
  %.sroa.02.1.i.i.i.i1886 = phi i64 [ 0, %bb.axh ], [ %i.fpj, %.noexc1897.a ], [ %i.fpj, %bb.axi ], !dbg !239646
  %i.fpn = sub i64 %i.foj, %.sroa.08.0.lcssa.i.i.i.i1884, !dbg !239647
  %i.fpo = sub i64 %.sroa.02.1.i.i.i.i1886, %.sroa.0.0.lcssa.i.i.i.i1885, !dbg !239649
  br label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes8Int8TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, !dbg !239651

bb.axj:                                           ; preds = %bb.axg
  %i.fpp = icmp eq i64 %i.foj, 0, !dbg !239652
  br i1 %i.fpp, label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes8Int8TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, label %.lr.ph.i6.preheader.i.i.i1859, !dbg !239657

.lr.ph.i6.preheader.i.i.i1859:                    ; preds = %bb.axj
  %i.fpq = add nsw i64 %.idx.i.i.i1857, -16, !dbg !239658
  %i.fpr = lshr exact i64 %i.fpq, 4, !dbg !239658
  %i.fps = add nuw nsw i64 %i.fpr, 1, !dbg !239658
  br label %.lr.ph.i6.i.i.i1860, !dbg !239658

.lr.ph.i6.i.i.i1860:                              ; preds = %bb.axk, %.lr.ph.i6.preheader.i.i.i1859
  %.sroa.0.019.i7.i.i.i1861 = phi i64 [ %i.fpz, %bb.axk ], [ %i.foh, %.lr.ph.i6.preheader.i.i.i1859 ] ; 3 uses
  %.sroa.08.018.i8.i.i.i1862 = phi i64 [ %i.fqa, %bb.axk ], [ 0, %.lr.ph.i6.preheader.i.i.i1859 ] ; 2 uses
  %.sroa.010.017.i.i.i.i1863 = phi ptr [ %i.fpy, %bb.axk ], [ %i.fon, %.lr.ph.i6.preheader.i.i.i1859 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !239659), !dbg !239662
  %.val.i19.i.i.i1864 = load ptr, ptr %.sroa.010.017.i.i.i.i1863, align 8, !dbg !239666, !alias.scope !239659, !noalias !239668, !nonnull !13, !noundef !13
  %i.fpt = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i.i.i1863, i64 8, !dbg !239666
  %.val2.i20.i.i.i1865 = load ptr, ptr %i.fpt, align 8, !dbg !239666, !alias.scope !239659, !noalias !239668, !nonnull !13, !align !172, !noundef !13
  %i.fpu = getelementptr inbounds nuw i8, ptr %.val2.i20.i.i.i1865, i64 48, !dbg !239673
  %i.fpv = load ptr, ptr %i.fpu, align 8, !dbg !239673, !invariant.load !13, !noalias !239675, !nonnull !13
  %i.fpw = invoke noundef i64 %i.fpv(ptr noundef nonnull %.val.i19.i.i.i1864) #44
          to label %.noexc1898 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !239676, !inline_history !239593 ; 2 uses

.noexc1898:                                       ; preds = %.lr.ph.i6.i.i.i1860
  %i.fpx = icmp ugt i64 %i.fpw, %.sroa.0.019.i7.i.i.i1861, !dbg !239677
  br i1 %i.fpx, label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes8Int8TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, label %bb.axk, !dbg !239658

bb.axk:                                           ; preds = %.noexc1898
  %i.fpy = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i.i.i1863, i64 16, !dbg !239679 ; 2 uses
  %i.fpz = sub nuw nsw i64 %.sroa.0.019.i7.i.i.i1861, %i.fpw, !dbg !239681 ; 2 uses
  %i.fqa = add nuw nsw i64 %.sroa.08.018.i8.i.i.i1862, 1, !dbg !239683
  %i.fqb = icmp eq ptr %i.fpy, %i.fox, !dbg !239652
  br i1 %i.fqb, label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes8Int8TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, label %.lr.ph.i6.i.i.i1860, !dbg !239657

_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes8Int8TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i: ; preds = %bb.axk, %.noexc1898, %bb.axj, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i1883, %.noexc1896.a
  %.pn.i.i.i1866 = phi i64 [ %i.fpn, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i1883 ], [ %i.fow, %.noexc1896.a ], [ 0, %bb.axj ], [ %.sroa.08.018.i8.i.i.i1862, %.noexc1898 ], [ %i.fps, %bb.axk ] ; 2 uses
  %.pn12.i.i.i1867 = phi i64 [ %i.fpo, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i1883 ], [ %spec.select13.i.i.i1887, %.noexc1896.a ], [ %i.foh, %bb.axj ], [ %.sroa.0.019.i7.i.i.i1861, %.noexc1898 ], [ %i.fpz, %bb.axk ] ; 3 uses
  %i.fqc = load ptr, ptr %i.fom, align 8, !dbg !239685, !noalias !239466, !nonnull !13, !noundef !13
  %i.fqd = load i64, ptr %i.foi, align 8, !dbg !239703, !noalias !239466, !noundef !13
  %i.fqe = icmp ult i64 %.pn.i.i.i1866, %i.fqd, !dbg !239704
  call void @llvm.assume(i1 %i.fqe), !dbg !239709
  %i.fqf = getelementptr inbounds nuw [16 x i8], ptr %i.fqc, i64 %.pn.i.i.i1866, !dbg !239710
  %i.fqg = load ptr, ptr %i.fqf, align 8, !dbg !239711, !noalias !239466, !nonnull !13, !noundef !13 ; 4 uses
  %i.fqh = getelementptr inbounds nuw i8, ptr %i.fqg, i64 56, !dbg !239713
  %i.fqi = load ptr, ptr %i.fqh, align 8, !dbg !239713, !noalias !239466, !noundef !13 ; 3 uses
  %.not.i.i69.i.i1868 = icmp eq ptr %i.fqi, null, !dbg !239713
  br i1 %.not.i.i69.i.i1868, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.thread.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.i.i, !dbg !239719

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.i.i: ; preds = %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes8Int8TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i
  %i.fqj = getelementptr inbounds nuw i8, ptr %i.fqi, i64 40, !dbg !239721
  %i.fqk = load i64, ptr %i.fqj, align 8, !dbg !239721, !noalias !239466, !noundef !13
  %i.fql = getelementptr inbounds nuw i8, ptr %i.fqi, i64 32, !dbg !239726
  %i.fqm = load ptr, ptr %i.fql, align 8, !dbg !239726, !noalias !239466, !noundef !13
  %i.fqn = getelementptr inbounds nuw i8, ptr %i.fqg, i64 64, !dbg !239727
  %i.fqo = load i64, ptr %i.fqn, align 8, !dbg !239727, !noalias !239466, !noundef !13
  %i.fqp = add i64 %i.fqo, %.pn12.i.i.i1867, !dbg !239727 ; 2 uses
  %i.fqq = lshr i64 %i.fqp, 3, !dbg !239728       ; 2 uses
  %i.fqr = icmp ult i64 %i.fqq, %i.fqk, !dbg !239730
  call void @llvm.assume(i1 %i.fqr), !dbg !239733
  %i.fqs = getelementptr inbounds nuw i8, ptr %i.fqm, i64 %i.fqq, !dbg !239734
  %i.fqt = load i8, ptr %i.fqs, align 1, !dbg !239735, !noalias !239466, !noundef !13
  %i.fqu = trunc i64 %i.fqp to i8, !dbg !239736
  %i.fqv = and i8 %i.fqu, 7, !dbg !239736
  %i.fqw = xor i8 %i.fqt, -1, !dbg !239737
  %i.fqx = lshr i8 %i.fqw, %i.fqv, !dbg !239737
  %i.fqy = trunc i8 %i.fqx to i1, !dbg !239738
  br i1 %i.fqy, label %.invoke, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.thread.i.i, !dbg !239739, !prof !229073

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.thread.i.i: ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.i.i, %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes8Int8TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i
  %i.fqz = getelementptr inbounds nuw i8, ptr %i.fqg, i64 40, !dbg !239740
  %i.fra = load ptr, ptr %i.fqz, align 8, !dbg !239740, !noalias !239466, !noundef !13
  %i.frb = getelementptr inbounds nuw i8, ptr %i.fqg, i64 48, !dbg !239749
  %i.frc = load i64, ptr %i.frb, align 8, !dbg !239749, !noalias !239466, !noundef !13
  %i.frd = icmp ult i64 %.pn12.i.i.i1867, %i.frc, !dbg !239750
  call void @llvm.assume(i1 %i.frd), !dbg !239756
  %i.fre = getelementptr inbounds nuw i8, ptr %i.fra, i64 %.pn12.i.i.i1867, !dbg !239757
  %i.frf = load i8, ptr %i.fre, align 1, !dbg !239758, !noalias !239466, !noundef !13
  %i.frg = sitofp i8 %i.frf to double, !dbg !239759 ; 2 uses
  %i.frh = fadd double %i.frg, -5.000000e-01, !dbg !239763
  %i.fri = uitofp i64 %.sroa.026.0.i.i1856 to double, !dbg !239765
  %i.frj = fdiv double 1.000000e+00, %i.fri, !dbg !239766
  %i.frk = fadd double %i.frg, 5.000000e-01, !dbg !239767
  br label %bb.axb, !dbg !239768

bb.axl:                                           ; preds = %.noexc1895.a
  %i.frl = extractvalue { i1, i8 } %i.fof, 1, !dbg !239577 ; 2 uses
  %i.frm = sitofp i8 %i.frl to double, !dbg !239769 ; 3 uses
  %i.frn = invoke { i1, i8 } @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregateINtB6_12ChunkedArrayNtNtB8_9datatypes8Int8TypeEINtB4_8ChunkAggaE3maxCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aoi)
          to label %.noexc1901 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !239771 ; 2 uses

.noexc1901:                                       ; preds = %bb.axl
  %i.fro = extractvalue { i1, i8 } %i.frn, 0, !dbg !239771
  br i1 %i.fro, label %bb.axm, label %.invoke, !dbg !239773, !prof !7465

bb.axm:                                           ; preds = %.noexc1901
  %i.frp = extractvalue { i1, i8 } %i.frn, 1, !dbg !239771 ; 2 uses
  %i.frq = sitofp i8 %i.frp to double, !dbg !239775 ; 3 uses
  %11 = icmp eq i8 %i.frl, %i.frp, !dbg !239777
  %i.frr = uitofp i64 %.sroa.026.0.i.i1856 to double, !dbg !239779 ; 2 uses
  br i1 %11, label %bb.axo, label %bb.axn, !dbg !239777

bb.axn:                                           ; preds = %bb.axm
  %i.frs = fsub double %i.frq, %i.frm, !dbg !239780
  %i.frt = fdiv double %i.frs, %i.frr, !dbg !239780
  br label %bb.axb, !dbg !239781

bb.axo:                                           ; preds = %bb.axm
  %i.fru = fadd double %i.frm, -5.000000e-01, !dbg !239782
  %i.frv = fdiv double 1.000000e+00, %i.frr, !dbg !239783
  %i.frw = fadd double %i.frq, 5.000000e-01, !dbg !239784
  br label %bb.axb, !dbg !239781

.body110.i1614:                                   ; preds = %bb.bgc, %bb.bfd, %.body159.i1635, %bb.bcb, %bb.bbb, %bb.baa, %.thread85.i.i.i1705, %bb.azv, %bb.azt, %bb.ayr, %bb.ayp, %bb.aym, %bb.ayd, %bb.axp
  %.pn90.pn.i1615 = phi { ptr, i32 } [ %.pn90200.i1622, %bb.bgc ], [ %.pn88.i1627, %bb.bcb ], [ %.pn.i.i1734, %bb.baa ], [ %i.frx, %bb.axp ], [ %lpad.thr_comm104.i.i.i1731, %bb.azv ], [ %i.fty, %bb.ayd ], [ %lpad.thr_comm.i.i.i1776, %bb.ayp ], [ %i.fwg, %bb.azt ], [ %.pn35.pn88.i.i.i1706, %.thread85.i.i.i1705 ], [ %.pn.pn.i.i.i1719, %bb.ayr ], [ %i.fui, %bb.aym ], [ %lpad.phi.i124.i1799, %bb.bbb ], [ %lpad.thr_comm.split-lp.i1636, %.body159.i1635 ], [ %i.gkw, %bb.bfd ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.wf) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECsePnBjWcsLF5_10polars_ops.exit unwind label %bb.bdr, !dbg !239785, !noalias !239457

bb.axp:                                           ; preds = %.invoke.i1691, %bb.baz, %bb.bax, %bb.azs, %bb.ayl, %bb.ayh, %.thread71.i.i.i1780, %.thread.i1700, %bb.ayb, %.invoke316.i1787, %bb.aya, %bb.axy, %.thread65.i.i.i1697, %.thread.i.i.i1695, %bb.axw, %bb.axr
  %i.frx = landingpad { ptr, i32 }
          cleanup
  br label %.body110.i1614

bb.axq:                                           ; preds = %.noexc1893.a, %bb.awy, %bb.awv
  %.sroa.060.0.i.i1611 = phi i8 [ 1, %.noexc1893.a ], [ 0, %bb.awy ], [ 0, %bb.awv ], !dbg !239543 ; 2 uses
  %i.fry = getelementptr inbounds nuw i8, ptr %i.vg, i64 8, !dbg !239786 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fry, ptr noundef nonnull align 8 dereferenceable(24) %i.ux, i64 24, i1 false), !dbg !239786, !noalias !239457
  %.sroa.454.0..sroa_idx.i.i1612 = getelementptr inbounds nuw i8, ptr %i.vg, i64 32, !dbg !239786
  store i8 %.sroa.060.0.i.i1611, ptr %.sroa.454.0..sroa_idx.i.i1612, align 8, !dbg !239786, !noalias !239457
  store i64 18, ptr %i.vg, align 8, !dbg !239786, !noalias !239457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ux), !dbg !239788, !noalias !239457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.uy), !dbg !239788, !noalias !239457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.wf), !dbg !239789, !noalias !239457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wf, ptr noundef nonnull align 8 dereferenceable(24) %i.fry, i64 24, i1 false), !dbg !239451, !noalias !239457
  %i.frz = trunc nuw i8 %.sroa.060.0.i.i1611 to i1, !dbg !239451
  %i.fsa = getelementptr inbounds nuw i8, ptr %i.wf, i64 16, !dbg !239790 ; 4 uses
  %i.fsb = load i64, ptr %i.fsa, align 8, !dbg !239790, !noalias !239457, !noundef !13 ; 6 uses
  %i.fsc = icmp ult i64 %i.fsb, 1152921504606846976, !dbg !239794
  call void @llvm.assume(i1 %i.fsc), !dbg !239796
  %i.fsd = call i64 @llvm.usub.sat.i64(i64 %i.fsb, i64 1), !dbg !239797 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.we), !dbg !239798, !noalias !239457
  %.not71.i1613 = icmp samesign ult i64 %i.fsb, 2, !dbg !239800 ; 3 uses
  br i1 %.not71.i1613, label %bb.axr, label %bb.axt, !dbg !239800

bb.axr:                                           ; preds = %bb.axt, %bb.axq
  call void @llvm.experimental.noalias.scope.decl(metadata !239801), !dbg !239804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.uv), !dbg !239807, !noalias !239811
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.uv, i64 noundef %i.fsd, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc96.i1618 unwind label %bb.axp, !dbg !239807, !noalias !239457

.noexc96.i1618:                                   ; preds = %bb.axr
  %i.fse = load i64, ptr %i.uv, align 8, !dbg !239807, !range !231, !noalias !239811, !noundef !13
  %i.fsf = trunc nuw i64 %i.fse to i1, !dbg !239812
  %i.fsg = getelementptr inbounds nuw i8, ptr %i.uv, i64 8, !dbg !239813
  %i.fsh = load i64, ptr %i.fsg, align 8, !dbg !239813, !range !234, !noalias !239811, !noundef !13 ; 2 uses
  %i.fsi = getelementptr inbounds nuw i8, ptr %i.uv, i64 16, !dbg !239813 ; 2 uses
  br i1 %i.fsf, label %bb.axs, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsePnBjWcsLF5_10polars_ops.exit.i1619, !dbg !239812, !prof !42

bb.axs:                                           ; preds = %.noexc96.i1618
  %i.fsj = load i64, ptr %i.fsi, align 8, !dbg !239814, !noalias !239811
  br label %.invoke.i1691, !dbg !239815

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsePnBjWcsLF5_10polars_ops.exit.i1619: ; preds = %.noexc96.i1618
  %i.fsk = load ptr, ptr %i.fsi, align 8, !dbg !239816, !noalias !239811, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.uv), !dbg !239817, !noalias !239811
  store i64 %i.fsh, ptr %i.we, align 8, !dbg !239818, !alias.scope !239801, !noalias !239457
  %i.fsl = getelementptr inbounds nuw i8, ptr %i.we, i64 8, !dbg !239818
  store ptr %i.fsk, ptr %i.fsl, align 8, !dbg !239818, !alias.scope !239801, !noalias !239457
  %i.fsm = getelementptr inbounds nuw i8, ptr %i.we, i64 16, !dbg !239818
  store i64 %i.fsd, ptr %i.fsm, align 8, !dbg !239818, !alias.scope !239801, !noalias !239457
  br label %bb.axv, !dbg !239819

bb.axt:                                           ; preds = %bb.axq
  %i.fsn = getelementptr inbounds nuw i8, ptr %i.aoi, i64 32, !dbg !239820 ; 3 uses
  %i.fso = load i64, ptr %i.fsn, align 8, !dbg !239820, !noalias !239457, !noundef !13
  %i.fsp = getelementptr inbounds nuw i8, ptr %i.aoi, i64 40, !dbg !239823 ; 4 uses
  %i.fsq = load i64, ptr %i.fsp, align 8, !dbg !239823, !noalias !239457, !noundef !13
  %i.fsr = icmp ugt i64 %i.fso, %i.fsq, !dbg !239826
  br i1 %i.fsr, label %bb.axu, label %bb.axr, !dbg !239826

bb.axu:                                           ; preds = %bb.axt
  %i.fss = getelementptr inbounds nuw i8, ptr %i.wf, i64 8, !dbg !239827
  %i.fst = load ptr, ptr %i.fss, align 8, !dbg !239827, !noalias !239457, !nonnull !13, !noundef !13 ; 9 uses
  %i.fsu = add nsw i64 %i.fsb, -1, !dbg !239840   ; 10 uses
  br i1 %i.frz, label %bb.baz, label %bb.axw, !dbg !239841

bb.axv:                                           ; preds = %_RINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array4hist18uniform_hist_countNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeEB6_.exit.i, %_RINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array4hist10hist_countNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeEB6_.exit.i, %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsePnBjWcsLF5_10polars_ops.exit.i1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.wd), !dbg !239842, !noalias !239457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.vf), !dbg !239844, !noalias !239457
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.vf, i64 noundef 3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.bcc unwind label %.body159.thread203.i1620, !dbg !239844, !noalias !239457

bb.axw:                                           ; preds = %bb.axu
  call void @llvm.experimental.noalias.scope.decl(metadata !239853), !dbg !239856
  %i.fsv = getelementptr inbounds nuw [8 x i8], ptr %i.fst, i64 %i.fsb, !dbg !239857 ; 2 uses
  %i.fsw = load double, ptr %i.fst, align 8, !dbg !239869, !alias.scope !239853, !noalias !239871, !noundef !13
  %i.fsx = getelementptr inbounds nuw [8 x i8], ptr %i.fst, i64 %i.fsu, !dbg !239873
  %i.fsy = load double, ptr %i.fsx, align 8, !dbg !239873, !alias.scope !239853, !noalias !239871, !noundef !13
  %i.fsz = getelementptr inbounds nuw i8, ptr %i.fst, i64 16, !dbg !239874
  %i.fta = getelementptr inbounds nuw i8, ptr %i.fst, i64 8, !dbg !239874
  %i.ftb = load double, ptr %i.fta, align 8, !dbg !239879, !alias.scope !239853, !noalias !239871, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.uu), !dbg !239880, !noalias !239882
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ur), !dbg !239883, !noalias !239882
  %i.ftc = getelementptr inbounds nuw i8, ptr %i.ur, i64 8, !dbg !239883
  store i8 0, ptr %i.ftc, align 4, !dbg !239883, !noalias !239882
  %i.ftd = getelementptr inbounds nuw i8, ptr %i.ur, i64 9, !dbg !239883
  store i8 0, ptr %i.ftd, align 1, !dbg !239883, !noalias !239882
  %i.fte = getelementptr inbounds nuw i8, ptr %i.ur, i64 11, !dbg !239883
  store i8 0, ptr %i.fte, align 1, !dbg !239883, !noalias !239882
  store i32 0, ptr %i.ur, align 4, !dbg !239883, !noalias !239882
  %i.ftf = invoke noundef i64 @_RNvMNtCs1LHh8CLbVkQ_11polars_core7runtimeNtB2_5RAYON19current_num_threads(ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr))
          to label %.noexc100.i1693 unwind label %bb.axp, !dbg !239886, !noalias !239457

.noexc100.i1693:                                  ; preds = %bb.axw
  %i.ftg = getelementptr inbounds nuw i8, ptr %i.ur, i64 10, !dbg !239883
  %i.fth = icmp ugt i64 %i.ftf, 1, !dbg !239889
  %i.fti = zext i1 %i.fth to i8, !dbg !239890
  store i8 %i.fti, ptr %i.ftg, align 2, !dbg !239890, !noalias !239882
  %.val52.i.i.i1694 = load i64, ptr %i.fsn, align 8, !dbg !239891, !noalias !239894, !noundef !13
  %i.ftj = icmp eq i64 %.val52.i.i.i1694, 0, !dbg !239898
  br i1 %i.ftj, label %.invoke316.i1787, label %.thread.i.i.i1695, !dbg !239901

.thread.i.i.i1695:                                ; preds = %.noexc100.i1693
  %i.ftk = invoke noundef zeroext i1 @_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes8Int8TypeE24is_sorted_ascending_flagCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aoi)
          to label %.noexc102.i1696 unwind label %bb.axp, !dbg !239902, !noalias !239457

.noexc102.i1696:                                  ; preds = %.thread.i.i.i1695
  br i1 %i.ftk, label %.thread66.i.i.i1783, label %.thread65.i.i.i1697, !dbg !239903

.thread66.i.i.i1783:                              ; preds = %.noexc102.i1696
  %.val57.i.i.i1784 = load i64, ptr %i.fsp, align 8, !dbg !239904, !noalias !239894, !noundef !13
  %.not.i27.i.i1785 = icmp eq i64 %.val57.i.i.i1784, 0, !dbg !239905
  br i1 %.not.i27.i.i1785, label %.invoke316.i1787, label %bb.aya, !dbg !239905

.thread65.i.i.i1697:                              ; preds = %.noexc102.i1696
  %i.ftl = invoke noundef zeroext i1 @_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes8Int8TypeE25is_sorted_descending_flagCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aoi)
          to label %.noexc103.i1698 unwind label %bb.axp, !dbg !239906, !noalias !239457

.noexc103.i1698:                                  ; preds = %.thread65.i.i.i1697
  br i1 %i.ftl, label %bb.axx, label %bb.axz, !dbg !239907

bb.axx:                                           ; preds = %.noexc103.i1698
  %.val56.i.i.i1782 = load i64, ptr %i.fsp, align 8, !dbg !239908, !noalias !239894, !noundef !13 ; 2 uses
  %i.ftm = icmp eq i64 %.val56.i.i.i1782, 0, !dbg !239909
  br i1 %i.ftm, label %bb.axy, label %.thread.i1700, !dbg !239909

bb.axy:                                           ; preds = %bb.axx
  invoke void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops7reverseINtB6_12ChunkedArrayNtNtB8_9datatypes8Int8TypeENtB4_12ChunkReverse7reverseCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.uu, ptr noundef nonnull align 8 %i.aoi)
          to label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17sort_with_numericNtNtB8_9datatypes8Int8TypeECsePnBjWcsLF5_10polars_ops.exit.i.i unwind label %bb.axp, !dbg !239910, !noalias !239457

bb.axz:                                           ; preds = %.noexc106.i1786, %.noexc103.i1698
  %.val55.i.i.pr.i1699 = load i64, ptr %i.fsp, align 8, !dbg !239911, !noalias !239894 ; 2 uses
  %i.ftn = icmp eq i64 %.val55.i.i.pr.i1699, 0, !dbg !239912
  br i1 %i.ftn, label %bb.ayb, label %.thread.i1700, !dbg !239912

bb.aya:                                           ; preds = %.thread66.i.i.i1783
  %i.fto = invoke fastcc { i1, i8 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes8Int8TypeE3getCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aoi, i64 noundef 0) #44
          to label %.noexc106.i1786 unwind label %bb.axp, !dbg !239913, !noalias !239457

.noexc106.i1786:                                  ; preds = %bb.aya
  %i.ftp = extractvalue { i1, i8 } %i.fto, 0, !dbg !239913
  br i1 %i.ftp, label %bb.axz, label %.invoke316.i1787, !dbg !239914

.invoke316.i1787:                                 ; preds = %.noexc106.i1786, %.thread66.i.i.i1783, %.noexc100.i1693
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes8Int8TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.uu, ptr noundef nonnull align 8 %i.aoi)
          to label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17sort_with_numericNtNtB8_9datatypes8Int8TypeECsePnBjWcsLF5_10polars_ops.exit.i.i unwind label %bb.axp, !dbg !239915, !noalias !239457

bb.ayb:                                           ; preds = %bb.axz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.uo), !dbg !239916, !noalias !239894
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i1609), !dbg !239917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.un), !dbg !239917, !noalias !239894
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6to_vecINtB4_12ChunkedArrayNtNtB6_9datatypes8Int8TypeE17to_vec_null_awareCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.un, ptr noundef nonnull align 8 %i.aoi)
          to label %.noexc108.i1771 unwind label %bb.axp, !dbg !239918, !noalias !239457

.noexc108.i1771:                                  ; preds = %bb.ayb
  %i.ftq = load i64, ptr %i.un, align 8, !dbg !239919, !range !231, !noalias !239894, !noundef !13
  %i.ftr = trunc nuw i64 %i.ftq to i1, !dbg !239922
  %i.fts = getelementptr inbounds nuw i8, ptr %i.un, i64 8, !dbg !239923 ; 4 uses
  br i1 %i.ftr, label %bb.ayc, label %bb.ayf, !dbg !239922

.thread.i1700:                                    ; preds = %bb.axz, %bb.axx
  %.val55.i.i199.i1701 = phi i64 [ %.val55.i.i.pr.i1699, %bb.axz ], [ %.val56.i.i.i1782, %bb.axx ] ; 6 uses
  %.val45.i.i.i = load i64, ptr %i.fsn, align 8, !dbg !239924, !noalias !239894, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.uj), !dbg !239926, !noalias !239894
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ty), !dbg !239928, !noalias !239894
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ty, i64 noundef %.val45.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc109.i1702 unwind label %bb.axp, !dbg !239928, !noalias !239457

.noexc109.i1702:                                  ; preds = %.thread.i1700
  %i.ftt = load i64, ptr %i.ty, align 8, !dbg !239928, !range !231, !noalias !239894, !noundef !13
  %i.ftu = trunc nuw i64 %i.ftt to i1, !dbg !239937
  %i.ftv = getelementptr inbounds nuw i8, ptr %i.ty, i64 8, !dbg !239938
  %i.ftw = load i64, ptr %i.ftv, align 8, !dbg !239938, !range !234, !noalias !239894, !noundef !13 ; 3 uses
  %i.ftx = getelementptr inbounds nuw i8, ptr %i.ty, i64 16, !dbg !239938 ; 2 uses
  br i1 %i.ftu, label %bb.ayq, label %bb.ays, !dbg !239937, !prof !42

bb.ayc:                                           ; preds = %.noexc108.i1771
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptionaEENtNtNtBK_3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fts)
          to label %.thread71.i.i.i1780 unwind label %bb.ayd, !dbg !239939, !noalias !239894
end_hunk_3
begin_hunk_4_@_RNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array4hist11hist_series:bb.a
  %i.gnn = getelementptr inbounds nuw i8, ptr %i.sb, i64 16, !dbg !241651
  store ptr %i.sc, ptr %i.gnn, align 8, !dbg !241651, !alias.scope !241656, !noalias !241560
  %.sroa.4.0..sroa_idx.i.i2176 = getelementptr inbounds nuw i8, ptr %i.sb, i64 24, !dbg !241651
  store ptr %i.sd, ptr %.sroa.4.0..sroa_idx.i.i2176, align 8, !dbg !241651, !alias.scope !241656, !noalias !241560
  %.sroa.5.0..sroa_idx.i.i2177 = getelementptr inbounds nuw i8, ptr %i.sb, i64 32, !dbg !241651
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i2177, align 8, !dbg !241651, !alias.scope !241656, !noalias !241560
  %.sroa.6.0..sroa_idx.i.i2178 = getelementptr inbounds nuw i8, ptr %i.sb, i64 40, !dbg !241651
  store i64 %.sroa.026.0.i.i2160, ptr %.sroa.6.0..sroa_idx.i.i2178, align 8, !dbg !241651, !alias.scope !241656, !noalias !241560
  store i64 1, ptr %i.sb, align 8, !dbg !241651, !alias.scope !241658, !noalias !241659
  %i.gno = getelementptr inbounds nuw i8, ptr %i.sb, i64 8, !dbg !241651
  store double %.sroa.040.0.i.i2173, ptr %i.gno, align 8, !dbg !241651, !alias.scope !241658, !noalias !241659
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters5chain5ChainINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangejENCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array4hist10get_breaksNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeE0EINtNtNtB1o_7sources4once4OncedEEE9from_iterB32_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.sa, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.sb)
          to label %.noexc2197.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !241660

.noexc2197.a:                                     ; preds = %bb.bgp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.sc), !dbg !241665, !noalias !241560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.sd), !dbg !241665, !noalias !241560
  br label %bb.bhe, !dbg !241666

bb.bgq:                                           ; preds = %bb.bgn
  %i.gnp = invoke { i64, i64 } @_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes9Int16TypeE14first_non_nullCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aoj)
          to label %.noexc2198.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !241667 ; 2 uses

.noexc2198.a:                                     ; preds = %bb.bgq
  %i.gnq = extractvalue { i64, i64 } %i.gnp, 0, !dbg !241667
  %i.gnr = trunc nuw i64 %i.gnq to i1, !dbg !241668
  br i1 %i.gnr, label %bb.bgs, label %.invoke, !dbg !241668, !prof !7465

bb.bgr:                                           ; preds = %bb.bgn
  %i.gns = invoke { i16, i16 } @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregateINtB6_12ChunkedArrayNtNtB8_9datatypes9Int16TypeEINtB4_8ChunkAggsE3minCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aoj)
          to label %.noexc2199.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !241671 ; 2 uses

.noexc2199.a:                                     ; preds = %bb.bgr
  %i.gnt = extractvalue { i16, i16 } %i.gns, 0, !dbg !241671
  %i.gnu = trunc i16 %i.gnt to i1, !dbg !241672
  br i1 %i.gnu, label %bb.bgz, label %.invoke, !dbg !241672, !prof !7465

bb.bgs:                                           ; preds = %.noexc2198.a
  %i.gnv = extractvalue { i64, i64 } %i.gnp, 1, !dbg !241667 ; 6 uses
  %i.gnw = getelementptr inbounds nuw i8, ptr %i.aoj, i64 16, !dbg !241675 ; 2 uses
  %i.gnx = load i64, ptr %i.gnw, align 8, !dbg !241675, !noalias !241560, !noundef !13 ; 6 uses
  %i.gny = icmp ult i64 %i.gnx, 576460752303423488, !dbg !241681
  call void @llvm.assume(i1 %i.gny), !dbg !241682
  %i.gnz = icmp eq i64 %i.gnx, 1, !dbg !241683
  %i.goa = getelementptr inbounds nuw i8, ptr %i.aoj, i64 8, !dbg !241684 ; 2 uses
  %i.gob = load ptr, ptr %i.goa, align 8, !dbg !241684, !noalias !241560, !nonnull !13, !noundef !13 ; 5 uses
  br i1 %i.gnz, label %bb.bgt, label %bb.bgu, !dbg !241683

bb.bgt:                                           ; preds = %bb.bgs
  %i.goc = load ptr, ptr %i.gob, align 8, !dbg !241685, !noalias !241560, !nonnull !13, !noundef !13
  %i.god = getelementptr inbounds nuw i8, ptr %i.gob, i64 8, !dbg !241685
  %i.goe = load ptr, ptr %i.god, align 8, !dbg !241685, !noalias !241560, !nonnull !13, !align !172, !noundef !13
  %i.gof = getelementptr inbounds nuw i8, ptr %i.goe, i64 48, !dbg !241685
  %i.gog = load ptr, ptr %i.gof, align 8, !dbg !241685, !invariant.load !13, !noalias !241560, !nonnull !13
  %i.goh = invoke noundef i64 %i.gog(ptr noundef nonnull %i.goc) #44
          to label %.noexc2200.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !241686, !inline_history !241687 ; 2 uses

.noexc2200.a:                                     ; preds = %bb.bgt
  %i.goi = icmp uge i64 %i.gnv, %i.goh, !dbg !241688 ; 2 uses
  %i.goj = select i1 %i.goi, i64 %i.goh, i64 0, !dbg !241688
  %spec.select13.i.i.i2191 = sub nuw i64 %i.gnv, %i.goj, !dbg !241688
  %i.gok = zext i1 %i.goi to i64, !dbg !241688
  br label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9Int16TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, !dbg !241688

bb.bgu:                                           ; preds = %bb.bgs
  %.idx.i.i.i2161 = shl nuw nsw i64 %i.gnx, 4, !dbg !241689 ; 3 uses
  %i.gol = getelementptr inbounds nuw i8, ptr %i.gob, i64 %.idx.i.i.i2161, !dbg !241689 ; 2 uses
  %i.gom = load i64, ptr %i.gnd, align 8, !dbg !241694, !noalias !241560, !noundef !13 ; 2 uses
  %i.gon = lshr i64 %i.gom, 1, !dbg !241696
  %.not.i.i.i2162 = icmp ugt i64 %i.gnv, %i.gon, !dbg !241697
  br i1 %.not.i.i.i2162, label %bb.bgv, label %bb.bgx, !dbg !241697

bb.bgv:                                           ; preds = %bb.bgu
  %i.goo = sub i64 %i.gom, %i.gnv, !dbg !241698   ; 2 uses
  %i.gop = icmp eq i64 %i.gnx, 0, !dbg !241699
  br i1 %i.gop, label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i2187, label %.lr.ph.i.preheader.i.i.i2179, !dbg !241705

.lr.ph.i.preheader.i.i.i2179:                     ; preds = %bb.bgv
  %i.goq = add nsw i64 %.idx.i.i.i2161, -16, !dbg !241706
  %i.gor = lshr exact i64 %i.goq, 4, !dbg !241706
  %i.gos = add nuw nsw i64 %i.gor, 2, !dbg !241706
  br label %.lr.ph.i.i.i.i2180, !dbg !241706

.lr.ph.i.i.i.i2180:                               ; preds = %bb.bgw, %.lr.ph.i.preheader.i.i.i2179
  %.sroa.0.019.i.i.i.i2181 = phi i64 [ %i.goy, %bb.bgw ], [ %i.goo, %.lr.ph.i.preheader.i.i.i2179 ] ; 3 uses
  %.sroa.08.018.i.i.i.i2182 = phi i64 [ %i.goz, %bb.bgw ], [ 1, %.lr.ph.i.preheader.i.i.i2179 ] ; 2 uses
  %.sroa.4.017.i.i.i.i2183 = phi ptr [ %i.got, %bb.bgw ], [ %i.gol, %.lr.ph.i.preheader.i.i.i2179 ] ; 2 uses
  %i.got = getelementptr inbounds i8, ptr %.sroa.4.017.i.i.i.i2183, i64 -16, !dbg !241707 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !241712), !dbg !241715
  %.val.i.i.i.i2184 = load ptr, ptr %i.got, align 8, !dbg !241719, !alias.scope !241712, !noalias !241721, !nonnull !13, !noundef !13
  %i.gou = getelementptr inbounds i8, ptr %.sroa.4.017.i.i.i.i2183, i64 -8, !dbg !241719
  %.val2.i.i.i.i2185 = load ptr, ptr %i.gou, align 8, !dbg !241719, !alias.scope !241712, !noalias !241721, !nonnull !13, !align !172, !noundef !13
  %i.gov = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i2185, i64 48, !dbg !241728
  %i.gow = load ptr, ptr %i.gov, align 8, !dbg !241728, !invariant.load !13, !noalias !241730, !nonnull !13
  %i.gox = invoke noundef i64 %i.gow(ptr noundef nonnull %.val.i.i.i.i2184) #44
          to label %.noexc2201.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !241731, !inline_history !241687 ; 4 uses

.noexc2201.a:                                     ; preds = %.lr.ph.i.i.i.i2180
  %.not.i.i.i.i2186 = icmp ult i64 %i.gox, %.sroa.0.019.i.i.i.i2181, !dbg !241732
  br i1 %.not.i.i.i.i2186, label %bb.bgw, label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i2187, !dbg !241706

bb.bgw:                                           ; preds = %.noexc2201.a
  %i.goy = sub nuw i64 %.sroa.0.019.i.i.i.i2181, %i.gox, !dbg !241734 ; 2 uses
  %i.goz = add nuw nsw i64 %.sroa.08.018.i.i.i.i2182, 1, !dbg !241736
  %i.gpa = icmp eq ptr %i.gob, %i.got, !dbg !241699
  br i1 %i.gpa, label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i2187, label %.lr.ph.i.i.i.i2180, !dbg !241705

_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i2187: ; preds = %bb.bgw, %.noexc2201.a, %bb.bgv
  %.sroa.08.0.lcssa.i.i.i.i2188 = phi i64 [ 1, %bb.bgv ], [ %.sroa.08.018.i.i.i.i2182, %.noexc2201.a ], [ %i.gos, %bb.bgw ], !dbg !241738
  %.sroa.0.0.lcssa.i.i.i.i2189 = phi i64 [ %i.goo, %bb.bgv ], [ %.sroa.0.019.i.i.i.i2181, %.noexc2201.a ], [ %i.goy, %bb.bgw ], !dbg !241739
  %.sroa.02.1.i.i.i.i2190 = phi i64 [ 0, %bb.bgv ], [ %i.gox, %.noexc2201.a ], [ %i.gox, %bb.bgw ], !dbg !241740
  %i.gpb = sub i64 %i.gnx, %.sroa.08.0.lcssa.i.i.i.i2188, !dbg !241741
  %i.gpc = sub i64 %.sroa.02.1.i.i.i.i2190, %.sroa.0.0.lcssa.i.i.i.i2189, !dbg !241743
  br label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9Int16TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, !dbg !241745

bb.bgx:                                           ; preds = %bb.bgu
  %i.gpd = icmp eq i64 %i.gnx, 0, !dbg !241746
  br i1 %i.gpd, label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9Int16TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, label %.lr.ph.i6.preheader.i.i.i2163, !dbg !241751

.lr.ph.i6.preheader.i.i.i2163:                    ; preds = %bb.bgx
  %i.gpe = add nsw i64 %.idx.i.i.i2161, -16, !dbg !241752
  %i.gpf = lshr exact i64 %i.gpe, 4, !dbg !241752
  %i.gpg = add nuw nsw i64 %i.gpf, 1, !dbg !241752
  br label %.lr.ph.i6.i.i.i2164, !dbg !241752

.lr.ph.i6.i.i.i2164:                              ; preds = %bb.bgy, %.lr.ph.i6.preheader.i.i.i2163
  %.sroa.0.019.i7.i.i.i2165 = phi i64 [ %i.gpn, %bb.bgy ], [ %i.gnv, %.lr.ph.i6.preheader.i.i.i2163 ] ; 3 uses
  %.sroa.08.018.i8.i.i.i2166 = phi i64 [ %i.gpo, %bb.bgy ], [ 0, %.lr.ph.i6.preheader.i.i.i2163 ] ; 2 uses
  %.sroa.010.017.i.i.i.i2167 = phi ptr [ %i.gpm, %bb.bgy ], [ %i.gob, %.lr.ph.i6.preheader.i.i.i2163 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !241753), !dbg !241756
  %.val.i19.i.i.i2168 = load ptr, ptr %.sroa.010.017.i.i.i.i2167, align 8, !dbg !241760, !alias.scope !241753, !noalias !241762, !nonnull !13, !noundef !13
  %i.gph = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i.i.i2167, i64 8, !dbg !241760
  %.val2.i20.i.i.i2169 = load ptr, ptr %i.gph, align 8, !dbg !241760, !alias.scope !241753, !noalias !241762, !nonnull !13, !align !172, !noundef !13
  %i.gpi = getelementptr inbounds nuw i8, ptr %.val2.i20.i.i.i2169, i64 48, !dbg !241767
  %i.gpj = load ptr, ptr %i.gpi, align 8, !dbg !241767, !invariant.load !13, !noalias !241769, !nonnull !13
  %i.gpk = invoke noundef i64 %i.gpj(ptr noundef nonnull %.val.i19.i.i.i2168) #44
          to label %.noexc2202 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !241770, !inline_history !241687 ; 2 uses

.noexc2202:                                       ; preds = %.lr.ph.i6.i.i.i2164
  %i.gpl = icmp ugt i64 %i.gpk, %.sroa.0.019.i7.i.i.i2165, !dbg !241771
  br i1 %i.gpl, label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9Int16TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, label %bb.bgy, !dbg !241752

bb.bgy:                                           ; preds = %.noexc2202
  %i.gpm = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i.i.i2167, i64 16, !dbg !241773 ; 2 uses
  %i.gpn = sub nuw nsw i64 %.sroa.0.019.i7.i.i.i2165, %i.gpk, !dbg !241775 ; 2 uses
  %i.gpo = add nuw nsw i64 %.sroa.08.018.i8.i.i.i2166, 1, !dbg !241777
  %i.gpp = icmp eq ptr %i.gpm, %i.gol, !dbg !241746
  br i1 %i.gpp, label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9Int16TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, label %.lr.ph.i6.i.i.i2164, !dbg !241751

_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9Int16TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i: ; preds = %bb.bgy, %.noexc2202, %bb.bgx, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i2187, %.noexc2200.a
  %.pn.i.i.i2170 = phi i64 [ %i.gpb, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i2187 ], [ %i.gok, %.noexc2200.a ], [ 0, %bb.bgx ], [ %.sroa.08.018.i8.i.i.i2166, %.noexc2202 ], [ %i.gpg, %bb.bgy ] ; 2 uses
  %.pn12.i.i.i2171 = phi i64 [ %i.gpc, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i2187 ], [ %spec.select13.i.i.i2191, %.noexc2200.a ], [ %i.gnv, %bb.bgx ], [ %.sroa.0.019.i7.i.i.i2165, %.noexc2202 ], [ %i.gpn, %bb.bgy ] ; 3 uses
  %i.gpq = load ptr, ptr %i.goa, align 8, !dbg !241779, !noalias !241560, !nonnull !13, !noundef !13
  %i.gpr = load i64, ptr %i.gnw, align 8, !dbg !241797, !noalias !241560, !noundef !13
  %i.gps = icmp ult i64 %.pn.i.i.i2170, %i.gpr, !dbg !241798
  call void @llvm.assume(i1 %i.gps), !dbg !241803
  %i.gpt = getelementptr inbounds nuw [16 x i8], ptr %i.gpq, i64 %.pn.i.i.i2170, !dbg !241804
  %i.gpu = load ptr, ptr %i.gpt, align 8, !dbg !241805, !noalias !241560, !nonnull !13, !noundef !13 ; 4 uses
  %i.gpv = getelementptr inbounds nuw i8, ptr %i.gpu, i64 56, !dbg !241807
  %i.gpw = load ptr, ptr %i.gpv, align 8, !dbg !241807, !noalias !241560, !noundef !13 ; 3 uses
  %.not.i.i69.i.i2172 = icmp eq ptr %i.gpw, null, !dbg !241807
  br i1 %.not.i.i69.i.i2172, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.thread.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.i.i, !dbg !241813

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.i.i: ; preds = %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9Int16TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i
  %i.gpx = getelementptr inbounds nuw i8, ptr %i.gpw, i64 40, !dbg !241815
  %i.gpy = load i64, ptr %i.gpx, align 8, !dbg !241815, !noalias !241560, !noundef !13
  %i.gpz = getelementptr inbounds nuw i8, ptr %i.gpw, i64 32, !dbg !241820
  %i.gqa = load ptr, ptr %i.gpz, align 8, !dbg !241820, !noalias !241560, !noundef !13
  %i.gqb = getelementptr inbounds nuw i8, ptr %i.gpu, i64 64, !dbg !241821
  %i.gqc = load i64, ptr %i.gqb, align 8, !dbg !241821, !noalias !241560, !noundef !13
  %i.gqd = add i64 %i.gqc, %.pn12.i.i.i2171, !dbg !241821 ; 2 uses
  %i.gqe = lshr i64 %i.gqd, 3, !dbg !241822       ; 2 uses
  %i.gqf = icmp ult i64 %i.gqe, %i.gpy, !dbg !241824
  call void @llvm.assume(i1 %i.gqf), !dbg !241827
  %i.gqg = getelementptr inbounds nuw i8, ptr %i.gqa, i64 %i.gqe, !dbg !241828
  %i.gqh = load i8, ptr %i.gqg, align 1, !dbg !241829, !noalias !241560, !noundef !13
  %i.gqi = trunc i64 %i.gqd to i8, !dbg !241830
  %i.gqj = and i8 %i.gqi, 7, !dbg !241830
  %i.gqk = xor i8 %i.gqh, -1, !dbg !241831
  %i.gql = lshr i8 %i.gqk, %i.gqj, !dbg !241831
  %i.gqm = trunc i8 %i.gql to i1, !dbg !241832
  br i1 %i.gqm, label %.invoke, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.thread.i.i, !dbg !241833, !prof !229073

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.thread.i.i: ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.i.i, %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9Int16TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i
  %i.gqn = getelementptr inbounds nuw i8, ptr %i.gpu, i64 40, !dbg !241834
  %i.gqo = load ptr, ptr %i.gqn, align 8, !dbg !241834, !noalias !241560, !noundef !13
  %i.gqp = getelementptr inbounds nuw i8, ptr %i.gpu, i64 48, !dbg !241843
  %i.gqq = load i64, ptr %i.gqp, align 8, !dbg !241843, !noalias !241560, !noundef !13
  %i.gqr = icmp ult i64 %.pn12.i.i.i2171, %i.gqq, !dbg !241844
  call void @llvm.assume(i1 %i.gqr), !dbg !241850
  %i.gqs = getelementptr inbounds nuw [2 x i8], ptr %i.gqo, i64 %.pn12.i.i.i2171, !dbg !241851
  %i.gqt = load i16, ptr %i.gqs, align 2, !dbg !241852, !noalias !241560, !noundef !13
  %i.gqu = sitofp i16 %i.gqt to double, !dbg !241853 ; 2 uses
  %i.gqv = fadd double %i.gqu, -5.000000e-01, !dbg !241857
  %i.gqw = uitofp i64 %.sroa.026.0.i.i2160 to double, !dbg !241859
  %i.gqx = fdiv double 1.000000e+00, %i.gqw, !dbg !241860
  %i.gqy = fadd double %i.gqu, 5.000000e-01, !dbg !241861
  br label %bb.bgp, !dbg !241862

bb.bgz:                                           ; preds = %.noexc2199.a
  %i.gqz = extractvalue { i16, i16 } %i.gns, 1, !dbg !241671 ; 2 uses
  %i.gra = sitofp i16 %i.gqz to double, !dbg !241863 ; 3 uses
  %i.grb = invoke { i16, i16 } @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregateINtB6_12ChunkedArrayNtNtB8_9datatypes9Int16TypeEINtB4_8ChunkAggsE3maxCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aoj)
          to label %.noexc2205 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !241865 ; 2 uses

.noexc2205:                                       ; preds = %bb.bgz
  %i.grc = extractvalue { i16, i16 } %i.grb, 0, !dbg !241865
  %i.grd = trunc i16 %i.grc to i1, !dbg !241867
  br i1 %i.grd, label %bb.bha, label %.invoke, !dbg !241867, !prof !7465

bb.bha:                                           ; preds = %.noexc2205
  %i.gre = extractvalue { i16, i16 } %i.grb, 1, !dbg !241865 ; 2 uses
  %i.grf = sitofp i16 %i.gre to double, !dbg !241869 ; 3 uses
  %12 = icmp eq i16 %i.gqz, %i.gre, !dbg !241871
  %i.grg = uitofp i64 %.sroa.026.0.i.i2160 to double, !dbg !241873 ; 2 uses
  br i1 %12, label %bb.bhc, label %bb.bhb, !dbg !241871

bb.bhb:                                           ; preds = %bb.bha
  %i.grh = fsub double %i.grf, %i.gra, !dbg !241874
  %i.gri = fdiv double %i.grh, %i.grg, !dbg !241874
  br label %bb.bgp, !dbg !241875

bb.bhc:                                           ; preds = %bb.bha
  %i.grj = fadd double %i.gra, -5.000000e-01, !dbg !241876
  %i.grk = fdiv double 1.000000e+00, %i.grg, !dbg !241877
  %i.grl = fadd double %i.grf, 5.000000e-01, !dbg !241878
  br label %bb.bgp, !dbg !241875

.body110.i1916:                                   ; preds = %bb.bpq, %bb.bor, %.body159.i1937, %bb.blp, %bb.bkp, %bb.bjo, %.thread87.i.i.i2008, %bb.bjj, %bb.bjh, %bb.bif, %bb.bid, %bb.bia, %bb.bhr, %bb.bhd
  %.pn90.pn.i1917 = phi { ptr, i32 } [ %.pn90200.i1924, %bb.bpq ], [ %.pn88.i1929, %bb.blp ], [ %.pn.i.i2037, %bb.bjo ], [ %i.grm, %bb.bhd ], [ %lpad.thr_comm106.i.i.i2034, %bb.bjj ], [ %i.gtn, %bb.bhr ], [ %lpad.thr_comm.i.i.i2079, %bb.bid ], [ %i.gvw, %bb.bjh ], [ %.pn37.pn90.i.i.i2009, %.thread87.i.i.i2008 ], [ %.pn.pn.i.i.i2022, %bb.bif ], [ %i.gtx, %bb.bia ], [ %lpad.phi.i124.i2103, %bb.bkp ], [ %lpad.thr_comm.split-lp.i1938, %.body159.i1937 ], [ %i.hkm, %bb.bor ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.ti) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECsePnBjWcsLF5_10polars_ops.exit unwind label %bb.bnf, !dbg !241879, !noalias !241551

bb.bhd:                                           ; preds = %.invoke.i1993, %bb.bkn, %bb.bkl, %bb.bjg, %bb.bhz, %bb.bhv, %.thread73.i.i.i2083, %.thread.i2002, %bb.bhp, %.invoke316.i2091, %bb.bho, %bb.bhm, %.thread67.i.i.i1999, %.thread.i.i.i1997, %bb.bhk, %bb.bhf
  %i.grm = landingpad { ptr, i32 }
          cleanup
  br label %.body110.i1916

bb.bhe:                                           ; preds = %.noexc2197.a, %bb.bgm, %bb.bgj
  %.sroa.060.0.i.i1913 = phi i8 [ 1, %.noexc2197.a ], [ 0, %bb.bgm ], [ 0, %bb.bgj ], !dbg !241637 ; 2 uses
  %i.grn = getelementptr inbounds nuw i8, ptr %i.sj, i64 8, !dbg !241880 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.grn, ptr noundef nonnull align 8 dereferenceable(24) %i.sa, i64 24, i1 false), !dbg !241880, !noalias !241551
  %.sroa.454.0..sroa_idx.i.i1914 = getelementptr inbounds nuw i8, ptr %i.sj, i64 32, !dbg !241880
  store i8 %.sroa.060.0.i.i1913, ptr %.sroa.454.0..sroa_idx.i.i1914, align 8, !dbg !241880, !noalias !241551
  store i64 18, ptr %i.sj, align 8, !dbg !241880, !noalias !241551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.sa), !dbg !241882, !noalias !241551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.sb), !dbg !241882, !noalias !241551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ti), !dbg !241883, !noalias !241551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ti, ptr noundef nonnull align 8 dereferenceable(24) %i.grn, i64 24, i1 false), !dbg !241545, !noalias !241551
  %i.gro = trunc nuw i8 %.sroa.060.0.i.i1913 to i1, !dbg !241545
  %i.grp = getelementptr inbounds nuw i8, ptr %i.ti, i64 16, !dbg !241884 ; 4 uses
  %i.grq = load i64, ptr %i.grp, align 8, !dbg !241884, !noalias !241551, !noundef !13 ; 6 uses
  %i.grr = icmp ult i64 %i.grq, 1152921504606846976, !dbg !241888
  call void @llvm.assume(i1 %i.grr), !dbg !241890
  %i.grs = call i64 @llvm.usub.sat.i64(i64 %i.grq, i64 1), !dbg !241891 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.th), !dbg !241892, !noalias !241551
  %.not71.i1915 = icmp samesign ult i64 %i.grq, 2, !dbg !241894 ; 3 uses
  br i1 %.not71.i1915, label %bb.bhf, label %bb.bhh, !dbg !241894

bb.bhf:                                           ; preds = %bb.bhh, %bb.bhe
  call void @llvm.experimental.noalias.scope.decl(metadata !241895), !dbg !241898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ry), !dbg !241901, !noalias !241905
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ry, i64 noundef %i.grs, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc96.i1920 unwind label %bb.bhd, !dbg !241901, !noalias !241551

.noexc96.i1920:                                   ; preds = %bb.bhf
  %i.grt = load i64, ptr %i.ry, align 8, !dbg !241901, !range !231, !noalias !241905, !noundef !13
  %i.gru = trunc nuw i64 %i.grt to i1, !dbg !241906
  %i.grv = getelementptr inbounds nuw i8, ptr %i.ry, i64 8, !dbg !241907
  %i.grw = load i64, ptr %i.grv, align 8, !dbg !241907, !range !234, !noalias !241905, !noundef !13 ; 2 uses
  %i.grx = getelementptr inbounds nuw i8, ptr %i.ry, i64 16, !dbg !241907 ; 2 uses
  br i1 %i.gru, label %bb.bhg, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsePnBjWcsLF5_10polars_ops.exit.i1921, !dbg !241906, !prof !42

bb.bhg:                                           ; preds = %.noexc96.i1920
  %i.gry = load i64, ptr %i.grx, align 8, !dbg !241908, !noalias !241905
  br label %.invoke.i1993, !dbg !241909

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsePnBjWcsLF5_10polars_ops.exit.i1921: ; preds = %.noexc96.i1920
  %i.grz = load ptr, ptr %i.grx, align 8, !dbg !241910, !noalias !241905, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ry), !dbg !241911, !noalias !241905
  store i64 %i.grw, ptr %i.th, align 8, !dbg !241912, !alias.scope !241895, !noalias !241551
  %i.gsa = getelementptr inbounds nuw i8, ptr %i.th, i64 8, !dbg !241912
  store ptr %i.grz, ptr %i.gsa, align 8, !dbg !241912, !alias.scope !241895, !noalias !241551
  %i.gsb = getelementptr inbounds nuw i8, ptr %i.th, i64 16, !dbg !241912
  store i64 %i.grs, ptr %i.gsb, align 8, !dbg !241912, !alias.scope !241895, !noalias !241551
  br label %bb.bhj, !dbg !241913

bb.bhh:                                           ; preds = %bb.bhe
  %i.gsc = getelementptr inbounds nuw i8, ptr %i.aoj, i64 32, !dbg !241914 ; 3 uses
  %i.gsd = load i64, ptr %i.gsc, align 8, !dbg !241914, !noalias !241551, !noundef !13
  %i.gse = getelementptr inbounds nuw i8, ptr %i.aoj, i64 40, !dbg !241917 ; 4 uses
  %i.gsf = load i64, ptr %i.gse, align 8, !dbg !241917, !noalias !241551, !noundef !13
  %i.gsg = icmp ugt i64 %i.gsd, %i.gsf, !dbg !241920
  br i1 %i.gsg, label %bb.bhi, label %bb.bhf, !dbg !241920

bb.bhi:                                           ; preds = %bb.bhh
  %i.gsh = getelementptr inbounds nuw i8, ptr %i.ti, i64 8, !dbg !241921
  %i.gsi = load ptr, ptr %i.gsh, align 8, !dbg !241921, !noalias !241551, !nonnull !13, !noundef !13 ; 9 uses
  %i.gsj = add nsw i64 %i.grq, -1, !dbg !241934   ; 10 uses
  br i1 %i.gro, label %bb.bkn, label %bb.bhk, !dbg !241935

bb.bhj:                                           ; preds = %_RINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array4hist18uniform_hist_countNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEB6_.exit.i, %_RINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array4hist10hist_countNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int16TypeEB6_.exit.i, %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsePnBjWcsLF5_10polars_ops.exit.i1921
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tg), !dbg !241936, !noalias !241551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.si), !dbg !241938, !noalias !241551
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.si, i64 noundef 3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.blq unwind label %.body159.thread203.i1922, !dbg !241938, !noalias !241551

bb.bhk:                                           ; preds = %bb.bhi
  call void @llvm.experimental.noalias.scope.decl(metadata !241947), !dbg !241950
  %i.gsk = getelementptr inbounds nuw [8 x i8], ptr %i.gsi, i64 %i.grq, !dbg !241951 ; 2 uses
  %i.gsl = load double, ptr %i.gsi, align 8, !dbg !241963, !alias.scope !241947, !noalias !241965, !noundef !13
  %i.gsm = getelementptr inbounds nuw [8 x i8], ptr %i.gsi, i64 %i.gsj, !dbg !241967
  %i.gsn = load double, ptr %i.gsm, align 8, !dbg !241967, !alias.scope !241947, !noalias !241965, !noundef !13
  %i.gso = getelementptr inbounds nuw i8, ptr %i.gsi, i64 16, !dbg !241968
  %i.gsp = getelementptr inbounds nuw i8, ptr %i.gsi, i64 8, !dbg !241968
  %i.gsq = load double, ptr %i.gsp, align 8, !dbg !241973, !alias.scope !241947, !noalias !241965, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.rx), !dbg !241974, !noalias !241976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ru), !dbg !241977, !noalias !241976
  %i.gsr = getelementptr inbounds nuw i8, ptr %i.ru, i64 8, !dbg !241977
  store i8 0, ptr %i.gsr, align 4, !dbg !241977, !noalias !241976
  %i.gss = getelementptr inbounds nuw i8, ptr %i.ru, i64 9, !dbg !241977
  store i8 0, ptr %i.gss, align 1, !dbg !241977, !noalias !241976
  %i.gst = getelementptr inbounds nuw i8, ptr %i.ru, i64 11, !dbg !241977
  store i8 0, ptr %i.gst, align 1, !dbg !241977, !noalias !241976
  store i32 0, ptr %i.ru, align 4, !dbg !241977, !noalias !241976
  %i.gsu = invoke noundef i64 @_RNvMNtCs1LHh8CLbVkQ_11polars_core7runtimeNtB2_5RAYON19current_num_threads(ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr))
          to label %.noexc100.i1995 unwind label %bb.bhd, !dbg !241980, !noalias !241551

.noexc100.i1995:                                  ; preds = %bb.bhk
  %i.gsv = getelementptr inbounds nuw i8, ptr %i.ru, i64 10, !dbg !241977
  %i.gsw = icmp ugt i64 %i.gsu, 1, !dbg !241983
  %i.gsx = zext i1 %i.gsw to i8, !dbg !241984
  store i8 %i.gsx, ptr %i.gsv, align 2, !dbg !241984, !noalias !241976
  %.val54.i.i.i1996 = load i64, ptr %i.gsc, align 8, !dbg !241985, !noalias !241988, !noundef !13
  %i.gsy = icmp eq i64 %.val54.i.i.i1996, 0, !dbg !241992
  br i1 %i.gsy, label %.invoke316.i2091, label %.thread.i.i.i1997, !dbg !241995

.thread.i.i.i1997:                                ; preds = %.noexc100.i1995
  %i.gsz = invoke noundef zeroext i1 @_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes9Int16TypeE24is_sorted_ascending_flagCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aoj)
          to label %.noexc102.i1998 unwind label %bb.bhd, !dbg !241996, !noalias !241551

.noexc102.i1998:                                  ; preds = %.thread.i.i.i1997
  br i1 %i.gsz, label %.thread68.i.i.i2086, label %.thread67.i.i.i1999, !dbg !241997

.thread68.i.i.i2086:                              ; preds = %.noexc102.i1998
  %.val59.i.i.i2087 = load i64, ptr %i.gse, align 8, !dbg !241998, !noalias !241988, !noundef !13
  %.not.i27.i.i2088 = icmp eq i64 %.val59.i.i.i2087, 0, !dbg !241999
  br i1 %.not.i27.i.i2088, label %.invoke316.i2091, label %bb.bho, !dbg !241999

.thread67.i.i.i1999:                              ; preds = %.noexc102.i1998
  %i.gta = invoke noundef zeroext i1 @_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes9Int16TypeE25is_sorted_descending_flagCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aoj)
          to label %.noexc103.i2000 unwind label %bb.bhd, !dbg !242000, !noalias !241551

.noexc103.i2000:                                  ; preds = %.thread67.i.i.i1999
  br i1 %i.gta, label %bb.bhl, label %bb.bhn, !dbg !242001

bb.bhl:                                           ; preds = %.noexc103.i2000
  %.val58.i.i.i2085 = load i64, ptr %i.gse, align 8, !dbg !242002, !noalias !241988, !noundef !13 ; 2 uses
  %i.gtb = icmp eq i64 %.val58.i.i.i2085, 0, !dbg !242003
  br i1 %i.gtb, label %bb.bhm, label %.thread.i2002, !dbg !242003

bb.bhm:                                           ; preds = %bb.bhl
  invoke void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops7reverseINtB6_12ChunkedArrayNtNtB8_9datatypes9Int16TypeENtB4_12ChunkReverse7reverseCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.rx, ptr noundef nonnull align 8 %i.aoj)
          to label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17sort_with_numericNtNtB8_9datatypes9Int16TypeECsePnBjWcsLF5_10polars_ops.exit.i.i unwind label %bb.bhd, !dbg !242004, !noalias !241551

bb.bhn:                                           ; preds = %.noexc106.i2089, %.noexc103.i2000
  %.val57.i.i.pr.i2001 = load i64, ptr %i.gse, align 8, !dbg !242005, !noalias !241988 ; 2 uses
  %i.gtc = icmp eq i64 %.val57.i.i.pr.i2001, 0, !dbg !242006
  br i1 %i.gtc, label %bb.bhp, label %.thread.i2002, !dbg !242006

bb.bho:                                           ; preds = %.thread68.i.i.i2086
  %i.gtd = invoke fastcc { i16, i16 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes9Int16TypeE3getCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aoj, i64 noundef 0) #44
          to label %.noexc106.i2089 unwind label %bb.bhd, !dbg !242007, !noalias !241551

.noexc106.i2089:                                  ; preds = %bb.bho
  %i.gte = extractvalue { i16, i16 } %i.gtd, 0, !dbg !242007
  %.not30.i.i.i2090 = icmp eq i16 %i.gte, 1, !dbg !242008
  br i1 %.not30.i.i.i2090, label %bb.bhn, label %.invoke316.i2091, !dbg !242015

.invoke316.i2091:                                 ; preds = %.noexc106.i2089, %.thread68.i.i.i2086, %.noexc100.i1995
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes9Int16TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.rx, ptr noundef nonnull align 8 %i.aoj)
          to label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17sort_with_numericNtNtB8_9datatypes9Int16TypeECsePnBjWcsLF5_10polars_ops.exit.i.i unwind label %bb.bhd, !dbg !242016, !noalias !241551

bb.bhp:                                           ; preds = %bb.bhn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.rr), !dbg !242017, !noalias !241988
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i1911), !dbg !242018
  call void @llvm.lifetime.start.p0(ptr nonnull %i.rq), !dbg !242018, !noalias !241988
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6to_vecINtB4_12ChunkedArrayNtNtB6_9datatypes9Int16TypeE17to_vec_null_awareCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.rq, ptr noundef nonnull align 8 %i.aoj)
          to label %.noexc108.i2074 unwind label %bb.bhd, !dbg !242019, !noalias !241551

.noexc108.i2074:                                  ; preds = %bb.bhp
  %i.gtf = load i64, ptr %i.rq, align 8, !dbg !242020, !range !231, !noalias !241988, !noundef !13
  %i.gtg = trunc nuw i64 %i.gtf to i1, !dbg !242023
  %i.gth = getelementptr inbounds nuw i8, ptr %i.rq, i64 8, !dbg !242024 ; 4 uses
  br i1 %i.gtg, label %bb.bhq, label %bb.bht, !dbg !242023

.thread.i2002:                                    ; preds = %bb.bhn, %bb.bhl
  %.val57.i.i199.i2003 = phi i64 [ %.val57.i.i.pr.i2001, %bb.bhn ], [ %.val58.i.i.i2085, %bb.bhl ] ; 6 uses
  %.val47.i.i.i2004 = load i64, ptr %i.gsc, align 8, !dbg !242025, !noalias !241988, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.rm), !dbg !242027, !noalias !241988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.rb), !dbg !242029, !noalias !241988
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.rb, i64 noundef %.val47.i.i.i2004, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2)
          to label %.noexc109.i2005 unwind label %bb.bhd, !dbg !242029, !noalias !241551

.noexc109.i2005:                                  ; preds = %.thread.i2002
  %i.gti = load i64, ptr %i.rb, align 8, !dbg !242029, !range !231, !noalias !241988, !noundef !13
  %i.gtj = trunc nuw i64 %i.gti to i1, !dbg !242038
  %i.gtk = getelementptr inbounds nuw i8, ptr %i.rb, i64 8, !dbg !242039
  %i.gtl = load i64, ptr %i.gtk, align 8, !dbg !242039, !range !234, !noalias !241988, !noundef !13 ; 3 uses
  %i.gtm = getelementptr inbounds nuw i8, ptr %i.rb, i64 16, !dbg !242039 ; 2 uses
  br i1 %i.gtj, label %bb.bie, label %bb.big, !dbg !242038, !prof !42

bb.bhq:                                           ; preds = %.noexc108.i2074
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptionsEENtNtNtBK_3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gth)
end_hunk_4
begin_hunk_5_@_RNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array4hist11hist_series:bb.a
  %i.hnd = getelementptr inbounds nuw i8, ptr %i.pe, i64 16, !dbg !243753
  store ptr %i.pf, ptr %i.hnd, align 8, !dbg !243753, !alias.scope !243758, !noalias !243662
  %.sroa.4.0..sroa_idx.i.i2480 = getelementptr inbounds nuw i8, ptr %i.pe, i64 24, !dbg !243753
  store ptr %i.pg, ptr %.sroa.4.0..sroa_idx.i.i2480, align 8, !dbg !243753, !alias.scope !243758, !noalias !243662
  %.sroa.5.0..sroa_idx.i.i2481 = getelementptr inbounds nuw i8, ptr %i.pe, i64 32, !dbg !243753
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i2481, align 8, !dbg !243753, !alias.scope !243758, !noalias !243662
  %.sroa.6.0..sroa_idx.i.i2482 = getelementptr inbounds nuw i8, ptr %i.pe, i64 40, !dbg !243753
  store i64 %.sroa.026.0.i.i2464, ptr %.sroa.6.0..sroa_idx.i.i2482, align 8, !dbg !243753, !alias.scope !243758, !noalias !243662
  store i64 1, ptr %i.pe, align 8, !dbg !243753, !alias.scope !243760, !noalias !243761
  %i.hne = getelementptr inbounds nuw i8, ptr %i.pe, i64 8, !dbg !243753
  store double %.sroa.040.0.i.i2477, ptr %i.hne, align 8, !dbg !243753, !alias.scope !243760, !noalias !243761
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters5chain5ChainINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangejENCINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array4hist10get_breaksNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeE0EINtNtNtB1o_7sources4once4OncedEEE9from_iterB32_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.pd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.pe)
          to label %.noexc2501.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !243762

.noexc2501.a:                                     ; preds = %bb.bqd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pf), !dbg !243767, !noalias !243662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pg), !dbg !243767, !noalias !243662
  br label %bb.bqs, !dbg !243768

bb.bqe:                                           ; preds = %bb.bqb
  %i.hnf = invoke { i64, i64 } @_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes9Int32TypeE14first_non_nullCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aok)
          to label %.noexc2502.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !243769 ; 2 uses

.noexc2502.a:                                     ; preds = %bb.bqe
  %i.hng = extractvalue { i64, i64 } %i.hnf, 0, !dbg !243769
  %i.hnh = trunc nuw i64 %i.hng to i1, !dbg !243770
  br i1 %i.hnh, label %bb.bqg, label %.invoke, !dbg !243770, !prof !7465

bb.bqf:                                           ; preds = %bb.bqb
  %i.hni = invoke { i32, i32 } @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregateINtB6_12ChunkedArrayNtNtB8_9datatypes9Int32TypeEINtB4_8ChunkAgglE3minCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aok)
          to label %.noexc2503.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !243773 ; 2 uses

.noexc2503.a:                                     ; preds = %bb.bqf
  %i.hnj = extractvalue { i32, i32 } %i.hni, 0, !dbg !243773
  %i.hnk = trunc i32 %i.hnj to i1, !dbg !243774
  br i1 %i.hnk, label %bb.bqn, label %.invoke, !dbg !243774, !prof !7465

bb.bqg:                                           ; preds = %.noexc2502.a
  %i.hnl = extractvalue { i64, i64 } %i.hnf, 1, !dbg !243769 ; 6 uses
  %i.hnm = getelementptr inbounds nuw i8, ptr %i.aok, i64 16, !dbg !243777 ; 2 uses
  %i.hnn = load i64, ptr %i.hnm, align 8, !dbg !243777, !noalias !243662, !noundef !13 ; 6 uses
  %i.hno = icmp ult i64 %i.hnn, 576460752303423488, !dbg !243783
  call void @llvm.assume(i1 %i.hno), !dbg !243784
  %i.hnp = icmp eq i64 %i.hnn, 1, !dbg !243785
  %i.hnq = getelementptr inbounds nuw i8, ptr %i.aok, i64 8, !dbg !243786 ; 2 uses
  %i.hnr = load ptr, ptr %i.hnq, align 8, !dbg !243786, !noalias !243662, !nonnull !13, !noundef !13 ; 5 uses
  br i1 %i.hnp, label %bb.bqh, label %bb.bqi, !dbg !243785

bb.bqh:                                           ; preds = %bb.bqg
  %i.hns = load ptr, ptr %i.hnr, align 8, !dbg !243787, !noalias !243662, !nonnull !13, !noundef !13
  %i.hnt = getelementptr inbounds nuw i8, ptr %i.hnr, i64 8, !dbg !243787
  %i.hnu = load ptr, ptr %i.hnt, align 8, !dbg !243787, !noalias !243662, !nonnull !13, !align !172, !noundef !13
  %i.hnv = getelementptr inbounds nuw i8, ptr %i.hnu, i64 48, !dbg !243787
  %i.hnw = load ptr, ptr %i.hnv, align 8, !dbg !243787, !invariant.load !13, !noalias !243662, !nonnull !13
  %i.hnx = invoke noundef i64 %i.hnw(ptr noundef nonnull %i.hns) #44
          to label %.noexc2504.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !243788, !inline_history !243789 ; 2 uses

.noexc2504.a:                                     ; preds = %bb.bqh
  %i.hny = icmp uge i64 %i.hnl, %i.hnx, !dbg !243790 ; 2 uses
  %i.hnz = select i1 %i.hny, i64 %i.hnx, i64 0, !dbg !243790
  %spec.select13.i.i.i2495 = sub nuw i64 %i.hnl, %i.hnz, !dbg !243790
  %i.hoa = zext i1 %i.hny to i64, !dbg !243790
  br label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9Int32TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, !dbg !243790

bb.bqi:                                           ; preds = %bb.bqg
  %.idx.i.i.i2465 = shl nuw nsw i64 %i.hnn, 4, !dbg !243791 ; 3 uses
  %i.hob = getelementptr inbounds nuw i8, ptr %i.hnr, i64 %.idx.i.i.i2465, !dbg !243791 ; 2 uses
  %i.hoc = load i64, ptr %i.hmt, align 8, !dbg !243796, !noalias !243662, !noundef !13 ; 2 uses
  %i.hod = lshr i64 %i.hoc, 1, !dbg !243798
  %.not.i.i.i2466 = icmp ugt i64 %i.hnl, %i.hod, !dbg !243799
  br i1 %.not.i.i.i2466, label %bb.bqj, label %bb.bql, !dbg !243799

bb.bqj:                                           ; preds = %bb.bqi
  %i.hoe = sub i64 %i.hoc, %i.hnl, !dbg !243800   ; 2 uses
  %i.hof = icmp eq i64 %i.hnn, 0, !dbg !243801
  br i1 %i.hof, label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i2491, label %.lr.ph.i.preheader.i.i.i2483, !dbg !243807

.lr.ph.i.preheader.i.i.i2483:                     ; preds = %bb.bqj
  %i.hog = add nsw i64 %.idx.i.i.i2465, -16, !dbg !243808
  %i.hoh = lshr exact i64 %i.hog, 4, !dbg !243808
  %i.hoi = add nuw nsw i64 %i.hoh, 2, !dbg !243808
  br label %.lr.ph.i.i.i.i2484, !dbg !243808

.lr.ph.i.i.i.i2484:                               ; preds = %bb.bqk, %.lr.ph.i.preheader.i.i.i2483
  %.sroa.0.019.i.i.i.i2485 = phi i64 [ %i.hoo, %bb.bqk ], [ %i.hoe, %.lr.ph.i.preheader.i.i.i2483 ] ; 3 uses
  %.sroa.08.018.i.i.i.i2486 = phi i64 [ %i.hop, %bb.bqk ], [ 1, %.lr.ph.i.preheader.i.i.i2483 ] ; 2 uses
  %.sroa.4.017.i.i.i.i2487 = phi ptr [ %i.hoj, %bb.bqk ], [ %i.hob, %.lr.ph.i.preheader.i.i.i2483 ] ; 2 uses
  %i.hoj = getelementptr inbounds i8, ptr %.sroa.4.017.i.i.i.i2487, i64 -16, !dbg !243809 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !243814), !dbg !243817
  %.val.i.i.i.i2488 = load ptr, ptr %i.hoj, align 8, !dbg !243821, !alias.scope !243814, !noalias !243823, !nonnull !13, !noundef !13
  %i.hok = getelementptr inbounds i8, ptr %.sroa.4.017.i.i.i.i2487, i64 -8, !dbg !243821
  %.val2.i.i.i.i2489 = load ptr, ptr %i.hok, align 8, !dbg !243821, !alias.scope !243814, !noalias !243823, !nonnull !13, !align !172, !noundef !13
  %i.hol = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i2489, i64 48, !dbg !243830
  %i.hom = load ptr, ptr %i.hol, align 8, !dbg !243830, !invariant.load !13, !noalias !243832, !nonnull !13
  %i.hon = invoke noundef i64 %i.hom(ptr noundef nonnull %.val.i.i.i.i2488) #44
          to label %.noexc2505.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !243833, !inline_history !243789 ; 4 uses

.noexc2505.a:                                     ; preds = %.lr.ph.i.i.i.i2484
  %.not.i.i.i.i2490 = icmp ult i64 %i.hon, %.sroa.0.019.i.i.i.i2485, !dbg !243834
  br i1 %.not.i.i.i.i2490, label %bb.bqk, label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i2491, !dbg !243808

bb.bqk:                                           ; preds = %.noexc2505.a
  %i.hoo = sub nuw i64 %.sroa.0.019.i.i.i.i2485, %i.hon, !dbg !243836 ; 2 uses
  %i.hop = add nuw nsw i64 %.sroa.08.018.i.i.i.i2486, 1, !dbg !243838
  %i.hoq = icmp eq ptr %i.hnr, %i.hoj, !dbg !243801
  br i1 %i.hoq, label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i2491, label %.lr.ph.i.i.i.i2484, !dbg !243807

_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i2491: ; preds = %bb.bqk, %.noexc2505.a, %bb.bqj
  %.sroa.08.0.lcssa.i.i.i.i2492 = phi i64 [ 1, %bb.bqj ], [ %.sroa.08.018.i.i.i.i2486, %.noexc2505.a ], [ %i.hoi, %bb.bqk ], !dbg !243840
  %.sroa.0.0.lcssa.i.i.i.i2493 = phi i64 [ %i.hoe, %bb.bqj ], [ %.sroa.0.019.i.i.i.i2485, %.noexc2505.a ], [ %i.hoo, %bb.bqk ], !dbg !243841
  %.sroa.02.1.i.i.i.i2494 = phi i64 [ 0, %bb.bqj ], [ %i.hon, %.noexc2505.a ], [ %i.hon, %bb.bqk ], !dbg !243842
  %i.hor = sub i64 %i.hnn, %.sroa.08.0.lcssa.i.i.i.i2492, !dbg !243843
  %i.hos = sub i64 %.sroa.02.1.i.i.i.i2494, %.sroa.0.0.lcssa.i.i.i.i2493, !dbg !243845
  br label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9Int32TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, !dbg !243847

bb.bql:                                           ; preds = %bb.bqi
  %i.hot = icmp eq i64 %i.hnn, 0, !dbg !243848
  br i1 %i.hot, label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9Int32TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, label %.lr.ph.i6.preheader.i.i.i2467, !dbg !243853

.lr.ph.i6.preheader.i.i.i2467:                    ; preds = %bb.bql
  %i.hou = add nsw i64 %.idx.i.i.i2465, -16, !dbg !243854
  %i.hov = lshr exact i64 %i.hou, 4, !dbg !243854
  %i.how = add nuw nsw i64 %i.hov, 1, !dbg !243854
  br label %.lr.ph.i6.i.i.i2468, !dbg !243854

.lr.ph.i6.i.i.i2468:                              ; preds = %bb.bqm, %.lr.ph.i6.preheader.i.i.i2467
  %.sroa.0.019.i7.i.i.i2469 = phi i64 [ %i.hpd, %bb.bqm ], [ %i.hnl, %.lr.ph.i6.preheader.i.i.i2467 ] ; 3 uses
  %.sroa.08.018.i8.i.i.i2470 = phi i64 [ %i.hpe, %bb.bqm ], [ 0, %.lr.ph.i6.preheader.i.i.i2467 ] ; 2 uses
  %.sroa.010.017.i.i.i.i2471 = phi ptr [ %i.hpc, %bb.bqm ], [ %i.hnr, %.lr.ph.i6.preheader.i.i.i2467 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !243855), !dbg !243858
  %.val.i19.i.i.i2472 = load ptr, ptr %.sroa.010.017.i.i.i.i2471, align 8, !dbg !243862, !alias.scope !243855, !noalias !243864, !nonnull !13, !noundef !13
  %i.hox = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i.i.i2471, i64 8, !dbg !243862
  %.val2.i20.i.i.i2473 = load ptr, ptr %i.hox, align 8, !dbg !243862, !alias.scope !243855, !noalias !243864, !nonnull !13, !align !172, !noundef !13
  %i.hoy = getelementptr inbounds nuw i8, ptr %.val2.i20.i.i.i2473, i64 48, !dbg !243869
  %i.hoz = load ptr, ptr %i.hoy, align 8, !dbg !243869, !invariant.load !13, !noalias !243871, !nonnull !13
  %i.hpa = invoke noundef i64 %i.hoz(ptr noundef nonnull %.val.i19.i.i.i2472) #44
          to label %.noexc2506 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !243872, !inline_history !243789 ; 2 uses

.noexc2506:                                       ; preds = %.lr.ph.i6.i.i.i2468
  %i.hpb = icmp ugt i64 %i.hpa, %.sroa.0.019.i7.i.i.i2469, !dbg !243873
  br i1 %i.hpb, label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9Int32TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, label %bb.bqm, !dbg !243854

bb.bqm:                                           ; preds = %.noexc2506
  %i.hpc = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i.i.i2471, i64 16, !dbg !243875 ; 2 uses
  %i.hpd = sub nuw nsw i64 %.sroa.0.019.i7.i.i.i2469, %i.hpa, !dbg !243877 ; 2 uses
  %i.hpe = add nuw nsw i64 %.sroa.08.018.i8.i.i.i2470, 1, !dbg !243879
  %i.hpf = icmp eq ptr %i.hpc, %i.hob, !dbg !243848
  br i1 %i.hpf, label %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9Int32TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i, label %.lr.ph.i6.i.i.i2468, !dbg !243853

_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9Int32TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i: ; preds = %bb.bqm, %.noexc2506, %bb.bql, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i2491, %.noexc2504.a
  %.pn.i.i.i2474 = phi i64 [ %i.hor, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i2491 ], [ %i.hoa, %.noexc2504.a ], [ 0, %bb.bql ], [ %.sroa.08.018.i8.i.i.i2470, %.noexc2506 ], [ %i.how, %bb.bqm ] ; 2 uses
  %.pn12.i.i.i2475 = phi i64 [ %i.hos, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils26index_to_chunked_index_revINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3rev3RevINtNtB18_3map3MapINtNtNtB1c_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2z_EjEEjECsePnBjWcsLF5_10polars_ops.exit.i.i.i2491 ], [ %spec.select13.i.i.i2495, %.noexc2504.a ], [ %i.hnl, %bb.bql ], [ %.sroa.0.019.i7.i.i.i2469, %.noexc2506 ], [ %i.hpd, %bb.bqm ] ; 3 uses
  %i.hpg = load ptr, ptr %i.hnq, align 8, !dbg !243881, !noalias !243662, !nonnull !13, !noundef !13
  %i.hph = load i64, ptr %i.hnm, align 8, !dbg !243899, !noalias !243662, !noundef !13
  %i.hpi = icmp ult i64 %.pn.i.i.i2474, %i.hph, !dbg !243900
  call void @llvm.assume(i1 %i.hpi), !dbg !243905
  %i.hpj = getelementptr inbounds nuw [16 x i8], ptr %i.hpg, i64 %.pn.i.i.i2474, !dbg !243906
  %i.hpk = load ptr, ptr %i.hpj, align 8, !dbg !243907, !noalias !243662, !nonnull !13, !noundef !13 ; 4 uses
  %i.hpl = getelementptr inbounds nuw i8, ptr %i.hpk, i64 56, !dbg !243909
  %i.hpm = load ptr, ptr %i.hpl, align 8, !dbg !243909, !noalias !243662, !noundef !13 ; 3 uses
  %.not.i.i69.i.i2476 = icmp eq ptr %i.hpm, null, !dbg !243909
  br i1 %.not.i.i69.i.i2476, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.thread.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.i.i, !dbg !243915

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.i.i: ; preds = %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9Int32TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i
  %i.hpn = getelementptr inbounds nuw i8, ptr %i.hpm, i64 40, !dbg !243917
  %i.hpo = load i64, ptr %i.hpn, align 8, !dbg !243917, !noalias !243662, !noundef !13
  %i.hpp = getelementptr inbounds nuw i8, ptr %i.hpm, i64 32, !dbg !243922
  %i.hpq = load ptr, ptr %i.hpp, align 8, !dbg !243922, !noalias !243662, !noundef !13
  %i.hpr = getelementptr inbounds nuw i8, ptr %i.hpk, i64 64, !dbg !243923
  %i.hps = load i64, ptr %i.hpr, align 8, !dbg !243923, !noalias !243662, !noundef !13
  %i.hpt = add i64 %i.hps, %.pn12.i.i.i2475, !dbg !243923 ; 2 uses
  %i.hpu = lshr i64 %i.hpt, 3, !dbg !243924       ; 2 uses
  %i.hpv = icmp ult i64 %i.hpu, %i.hpo, !dbg !243926
  call void @llvm.assume(i1 %i.hpv), !dbg !243929
  %i.hpw = getelementptr inbounds nuw i8, ptr %i.hpq, i64 %i.hpu, !dbg !243930
  %i.hpx = load i8, ptr %i.hpw, align 1, !dbg !243931, !noalias !243662, !noundef !13
  %i.hpy = trunc i64 %i.hpt to i8, !dbg !243932
  %i.hpz = and i8 %i.hpy, 7, !dbg !243932
  %i.hqa = xor i8 %i.hpx, -1, !dbg !243933
  %i.hqb = lshr i8 %i.hqa, %i.hpz, !dbg !243933
  %i.hqc = trunc i8 %i.hqb to i1, !dbg !243934
  br i1 %i.hqc, label %.invoke, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.thread.i.i, !dbg !243935, !prof !229073

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.thread.i.i: ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array17is_null_uncheckedCsePnBjWcsLF5_10polars_ops.exit.i.i, %_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9Int32TypeE22index_to_chunked_indexCsePnBjWcsLF5_10polars_ops.exit.i.i
  %i.hqd = getelementptr inbounds nuw i8, ptr %i.hpk, i64 40, !dbg !243936
  %i.hqe = load ptr, ptr %i.hqd, align 8, !dbg !243936, !noalias !243662, !noundef !13
  %i.hqf = getelementptr inbounds nuw i8, ptr %i.hpk, i64 48, !dbg !243945
  %i.hqg = load i64, ptr %i.hqf, align 8, !dbg !243945, !noalias !243662, !noundef !13
  %i.hqh = icmp ult i64 %.pn12.i.i.i2475, %i.hqg, !dbg !243946
  call void @llvm.assume(i1 %i.hqh), !dbg !243952
  %i.hqi = getelementptr inbounds nuw [4 x i8], ptr %i.hqe, i64 %.pn12.i.i.i2475, !dbg !243953
  %i.hqj = load i32, ptr %i.hqi, align 4, !dbg !243954, !noalias !243662, !noundef !13
  %i.hqk = sitofp i32 %i.hqj to double, !dbg !243955 ; 2 uses
  %i.hql = fadd double %i.hqk, -5.000000e-01, !dbg !243959
  %i.hqm = uitofp i64 %.sroa.026.0.i.i2464 to double, !dbg !243961
  %i.hqn = fdiv double 1.000000e+00, %i.hqm, !dbg !243962
  %i.hqo = fadd double %i.hqk, 5.000000e-01, !dbg !243963
  br label %bb.bqd, !dbg !243964

bb.bqn:                                           ; preds = %.noexc2503.a
  %i.hqp = extractvalue { i32, i32 } %i.hni, 1, !dbg !243773 ; 2 uses
  %i.hqq = sitofp i32 %i.hqp to double, !dbg !243965 ; 3 uses
  %i.hqr = invoke { i32, i32 } @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregateINtB6_12ChunkedArrayNtNtB8_9datatypes9Int32TypeEINtB4_8ChunkAgglE3maxCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aok)
          to label %.noexc2509 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !243967 ; 2 uses

.noexc2509:                                       ; preds = %bb.bqn
  %i.hqs = extractvalue { i32, i32 } %i.hqr, 0, !dbg !243967
  %i.hqt = trunc i32 %i.hqs to i1, !dbg !243969
  br i1 %i.hqt, label %bb.bqo, label %.invoke, !dbg !243969, !prof !7465

bb.bqo:                                           ; preds = %.noexc2509
  %i.hqu = extractvalue { i32, i32 } %i.hqr, 1, !dbg !243967 ; 2 uses
  %i.hqv = sitofp i32 %i.hqu to double, !dbg !243971 ; 3 uses
  %13 = icmp eq i32 %i.hqp, %i.hqu, !dbg !243973
  %i.hqw = uitofp i64 %.sroa.026.0.i.i2464 to double, !dbg !243975 ; 2 uses
  br i1 %13, label %bb.bqq, label %bb.bqp, !dbg !243973

bb.bqp:                                           ; preds = %bb.bqo
  %i.hqx = fsub double %i.hqv, %i.hqq, !dbg !243976
  %i.hqy = fdiv double %i.hqx, %i.hqw, !dbg !243976
  br label %bb.bqd, !dbg !243977

bb.bqq:                                           ; preds = %bb.bqo
  %i.hqz = fadd double %i.hqq, -5.000000e-01, !dbg !243978
  %i.hra = fdiv double 1.000000e+00, %i.hqw, !dbg !243979
  %i.hrb = fadd double %i.hqv, 5.000000e-01, !dbg !243980
  br label %bb.bqd, !dbg !243977

.body110.i2220:                                   ; preds = %bb.bze, %bb.byf, %.body159.i2241, %bb.bvd, %bb.bud, %bb.btc, %.thread87.i.i.i2312, %bb.bsx, %bb.bsv, %bb.brt, %bb.brr, %bb.bro, %bb.brf, %bb.bqr
  %.pn90.pn.i2221 = phi { ptr, i32 } [ %.pn90200.i2228, %bb.bze ], [ %.pn88.i2233, %bb.bvd ], [ %.pn.i.i2341, %bb.btc ], [ %i.hrc, %bb.bqr ], [ %lpad.thr_comm106.i.i.i2338, %bb.bsx ], [ %i.htd, %bb.brf ], [ %lpad.thr_comm.i.i.i2383, %bb.brr ], [ %i.hvm, %bb.bsv ], [ %.pn37.pn90.i.i.i2313, %.thread87.i.i.i2312 ], [ %.pn.pn.i.i.i2326, %bb.brt ], [ %i.htn, %bb.bro ], [ %lpad.phi.i124.i2407, %bb.bud ], [ %lpad.thr_comm.split-lp.i2242, %.body159.i2241 ], [ %i.ikc, %bb.byf ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.ql) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECsePnBjWcsLF5_10polars_ops.exit unwind label %bb.bwt, !dbg !243981, !noalias !243653

bb.bqr:                                           ; preds = %.invoke.i2297, %bb.bub, %bb.btz, %bb.bsu, %bb.brn, %bb.brj, %.thread73.i.i.i2387, %.thread.i2306, %bb.brd, %.invoke316.i2395, %bb.brc, %bb.bra, %.thread67.i.i.i2303, %.thread.i.i.i2301, %bb.bqy, %bb.bqt
  %i.hrc = landingpad { ptr, i32 }
          cleanup
  br label %.body110.i2220

bb.bqs:                                           ; preds = %.noexc2501.a, %bb.bqa, %bb.bpx
  %.sroa.060.0.i.i2217 = phi i8 [ 1, %.noexc2501.a ], [ 0, %bb.bqa ], [ 0, %bb.bpx ], !dbg !243739 ; 2 uses
  %i.hrd = getelementptr inbounds nuw i8, ptr %i.pm, i64 8, !dbg !243982 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hrd, ptr noundef nonnull align 8 dereferenceable(24) %i.pd, i64 24, i1 false), !dbg !243982, !noalias !243653
  %.sroa.454.0..sroa_idx.i.i2218 = getelementptr inbounds nuw i8, ptr %i.pm, i64 32, !dbg !243982
  store i8 %.sroa.060.0.i.i2217, ptr %.sroa.454.0..sroa_idx.i.i2218, align 8, !dbg !243982, !noalias !243653
  store i64 18, ptr %i.pm, align 8, !dbg !243982, !noalias !243653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pd), !dbg !243984, !noalias !243653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pe), !dbg !243984, !noalias !243653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ql), !dbg !243985, !noalias !243653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ql, ptr noundef nonnull align 8 dereferenceable(24) %i.hrd, i64 24, i1 false), !dbg !243647, !noalias !243653
  %i.hre = trunc nuw i8 %.sroa.060.0.i.i2217 to i1, !dbg !243647
  %i.hrf = getelementptr inbounds nuw i8, ptr %i.ql, i64 16, !dbg !243986 ; 4 uses
  %i.hrg = load i64, ptr %i.hrf, align 8, !dbg !243986, !noalias !243653, !noundef !13 ; 6 uses
  %i.hrh = icmp ult i64 %i.hrg, 1152921504606846976, !dbg !243990
  call void @llvm.assume(i1 %i.hrh), !dbg !243992
  %i.hri = call i64 @llvm.usub.sat.i64(i64 %i.hrg, i64 1), !dbg !243993 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qk), !dbg !243994, !noalias !243653
  %.not71.i2219 = icmp samesign ult i64 %i.hrg, 2, !dbg !243996 ; 3 uses
  br i1 %.not71.i2219, label %bb.bqt, label %bb.bqv, !dbg !243996

bb.bqt:                                           ; preds = %bb.bqv, %bb.bqs
  call void @llvm.experimental.noalias.scope.decl(metadata !243997), !dbg !244000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pb), !dbg !244003, !noalias !244007
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.pb, i64 noundef %i.hri, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc96.i2224 unwind label %bb.bqr, !dbg !244003, !noalias !243653

.noexc96.i2224:                                   ; preds = %bb.bqt
  %i.hrj = load i64, ptr %i.pb, align 8, !dbg !244003, !range !231, !noalias !244007, !noundef !13
  %i.hrk = trunc nuw i64 %i.hrj to i1, !dbg !244008
  %i.hrl = getelementptr inbounds nuw i8, ptr %i.pb, i64 8, !dbg !244009
  %i.hrm = load i64, ptr %i.hrl, align 8, !dbg !244009, !range !234, !noalias !244007, !noundef !13 ; 2 uses
  %i.hrn = getelementptr inbounds nuw i8, ptr %i.pb, i64 16, !dbg !244009 ; 2 uses
  br i1 %i.hrk, label %bb.bqu, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsePnBjWcsLF5_10polars_ops.exit.i2225, !dbg !244008, !prof !42

bb.bqu:                                           ; preds = %.noexc96.i2224
  %i.hro = load i64, ptr %i.hrn, align 8, !dbg !244010, !noalias !244007
  br label %.invoke.i2297, !dbg !244011

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsePnBjWcsLF5_10polars_ops.exit.i2225: ; preds = %.noexc96.i2224
  %i.hrp = load ptr, ptr %i.hrn, align 8, !dbg !244012, !noalias !244007, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pb), !dbg !244013, !noalias !244007
  store i64 %i.hrm, ptr %i.qk, align 8, !dbg !244014, !alias.scope !243997, !noalias !243653
  %i.hrq = getelementptr inbounds nuw i8, ptr %i.qk, i64 8, !dbg !244014
  store ptr %i.hrp, ptr %i.hrq, align 8, !dbg !244014, !alias.scope !243997, !noalias !243653
  %i.hrr = getelementptr inbounds nuw i8, ptr %i.qk, i64 16, !dbg !244014
  store i64 %i.hri, ptr %i.hrr, align 8, !dbg !244014, !alias.scope !243997, !noalias !243653
  br label %bb.bqx, !dbg !244015

bb.bqv:                                           ; preds = %bb.bqs
  %i.hrs = getelementptr inbounds nuw i8, ptr %i.aok, i64 32, !dbg !244016 ; 3 uses
  %i.hrt = load i64, ptr %i.hrs, align 8, !dbg !244016, !noalias !243653, !noundef !13
  %i.hru = getelementptr inbounds nuw i8, ptr %i.aok, i64 40, !dbg !244019 ; 4 uses
  %i.hrv = load i64, ptr %i.hru, align 8, !dbg !244019, !noalias !243653, !noundef !13
  %i.hrw = icmp ugt i64 %i.hrt, %i.hrv, !dbg !244022
  br i1 %i.hrw, label %bb.bqw, label %bb.bqt, !dbg !244022

bb.bqw:                                           ; preds = %bb.bqv
  %i.hrx = getelementptr inbounds nuw i8, ptr %i.ql, i64 8, !dbg !244023
  %i.hry = load ptr, ptr %i.hrx, align 8, !dbg !244023, !noalias !243653, !nonnull !13, !noundef !13 ; 9 uses
  %i.hrz = add nsw i64 %i.hrg, -1, !dbg !244036   ; 10 uses
  br i1 %i.hre, label %bb.bub, label %bb.bqy, !dbg !244037

bb.bqx:                                           ; preds = %_RINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array4hist18uniform_hist_countNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEB6_.exit.i, %_RINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array4hist10hist_countNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeEB6_.exit.i, %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsePnBjWcsLF5_10polars_ops.exit.i2225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qj), !dbg !244038, !noalias !243653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pl), !dbg !244040, !noalias !243653
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.pl, i64 noundef 3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.bve unwind label %.body159.thread203.i2226, !dbg !244040, !noalias !243653

bb.bqy:                                           ; preds = %bb.bqw
  call void @llvm.experimental.noalias.scope.decl(metadata !244049), !dbg !244052
  %i.hsa = getelementptr inbounds nuw [8 x i8], ptr %i.hry, i64 %i.hrg, !dbg !244053 ; 2 uses
  %i.hsb = load double, ptr %i.hry, align 8, !dbg !244065, !alias.scope !244049, !noalias !244067, !noundef !13
  %i.hsc = getelementptr inbounds nuw [8 x i8], ptr %i.hry, i64 %i.hrz, !dbg !244069
  %i.hsd = load double, ptr %i.hsc, align 8, !dbg !244069, !alias.scope !244049, !noalias !244067, !noundef !13
  %i.hse = getelementptr inbounds nuw i8, ptr %i.hry, i64 16, !dbg !244070
  %i.hsf = getelementptr inbounds nuw i8, ptr %i.hry, i64 8, !dbg !244070
  %i.hsg = load double, ptr %i.hsf, align 8, !dbg !244075, !alias.scope !244049, !noalias !244067, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pa), !dbg !244076, !noalias !244078
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ox), !dbg !244079, !noalias !244078
  %i.hsh = getelementptr inbounds nuw i8, ptr %i.ox, i64 8, !dbg !244079
  store i8 0, ptr %i.hsh, align 4, !dbg !244079, !noalias !244078
  %i.hsi = getelementptr inbounds nuw i8, ptr %i.ox, i64 9, !dbg !244079
  store i8 0, ptr %i.hsi, align 1, !dbg !244079, !noalias !244078
  %i.hsj = getelementptr inbounds nuw i8, ptr %i.ox, i64 11, !dbg !244079
  store i8 0, ptr %i.hsj, align 1, !dbg !244079, !noalias !244078
  store i32 0, ptr %i.ox, align 4, !dbg !244079, !noalias !244078
  %i.hsk = invoke noundef i64 @_RNvMNtCs1LHh8CLbVkQ_11polars_core7runtimeNtB2_5RAYON19current_num_threads(ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr))
          to label %.noexc100.i2299 unwind label %bb.bqr, !dbg !244082, !noalias !243653

.noexc100.i2299:                                  ; preds = %bb.bqy
  %i.hsl = getelementptr inbounds nuw i8, ptr %i.ox, i64 10, !dbg !244079
  %i.hsm = icmp ugt i64 %i.hsk, 1, !dbg !244085
  %i.hsn = zext i1 %i.hsm to i8, !dbg !244086
  store i8 %i.hsn, ptr %i.hsl, align 2, !dbg !244086, !noalias !244078
  %.val59.i.i.i2300 = load i64, ptr %i.hrs, align 8, !dbg !244087, !noalias !244090, !noundef !13
  %i.hso = icmp eq i64 %.val59.i.i.i2300, 0, !dbg !244094
  br i1 %i.hso, label %.invoke316.i2395, label %.thread.i.i.i2301, !dbg !244097

.thread.i.i.i2301:                                ; preds = %.noexc100.i2299
  %i.hsp = invoke noundef zeroext i1 @_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes9Int32TypeE24is_sorted_ascending_flagCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aok)
          to label %.noexc102.i2302 unwind label %bb.bqr, !dbg !244098, !noalias !243653

.noexc102.i2302:                                  ; preds = %.thread.i.i.i2301
  br i1 %i.hsp, label %.thread68.i.i.i2390, label %.thread67.i.i.i2303, !dbg !244099

.thread68.i.i.i2390:                              ; preds = %.noexc102.i2302
  %.val53.i.i.i2391 = load i64, ptr %i.hru, align 8, !dbg !244100, !noalias !244090, !noundef !13
  %.not.i27.i.i2392 = icmp eq i64 %.val53.i.i.i2391, 0, !dbg !244101
  br i1 %.not.i27.i.i2392, label %.invoke316.i2395, label %bb.brc, !dbg !244101

.thread67.i.i.i2303:                              ; preds = %.noexc102.i2302
  %i.hsq = invoke noundef zeroext i1 @_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes9Int32TypeE25is_sorted_descending_flagCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aok)
          to label %.noexc103.i2304 unwind label %bb.bqr, !dbg !244102, !noalias !243653

.noexc103.i2304:                                  ; preds = %.thread67.i.i.i2303
  br i1 %i.hsq, label %bb.bqz, label %bb.brb, !dbg !244103

bb.bqz:                                           ; preds = %.noexc103.i2304
  %.val52.i.i.i2389 = load i64, ptr %i.hru, align 8, !dbg !244104, !noalias !244090, !noundef !13 ; 2 uses
  %i.hsr = icmp eq i64 %.val52.i.i.i2389, 0, !dbg !244105
  br i1 %i.hsr, label %bb.bra, label %.thread.i2306, !dbg !244105

bb.bra:                                           ; preds = %bb.bqz
  invoke void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops7reverseINtB6_12ChunkedArrayNtNtB8_9datatypes9Int32TypeENtB4_12ChunkReverse7reverseCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.pa, ptr noundef nonnull align 8 %i.aok)
          to label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17sort_with_numericNtNtB8_9datatypes9Int32TypeECsePnBjWcsLF5_10polars_ops.exit.i.i unwind label %bb.bqr, !dbg !244106, !noalias !243653

bb.brb:                                           ; preds = %.noexc106.i2393, %.noexc103.i2304
  %.val51.i.i.pr.i2305 = load i64, ptr %i.hru, align 8, !dbg !244107, !noalias !244090 ; 2 uses
  %i.hss = icmp eq i64 %.val51.i.i.pr.i2305, 0, !dbg !244108
  br i1 %i.hss, label %bb.brd, label %.thread.i2306, !dbg !244108

bb.brc:                                           ; preds = %.thread68.i.i.i2390
  %i.hst = invoke fastcc { i32, i32 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes9Int32TypeE3getCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull align 8 %i.aok, i64 noundef 0) #44
          to label %.noexc106.i2393 unwind label %bb.bqr, !dbg !244109, !noalias !243653

.noexc106.i2393:                                  ; preds = %bb.brc
  %i.hsu = extractvalue { i32, i32 } %i.hst, 0, !dbg !244109
  %.not30.i.i.i2394 = icmp eq i32 %i.hsu, 1, !dbg !244110
  br i1 %.not30.i.i.i2394, label %bb.brb, label %.invoke316.i2395, !dbg !244117

.invoke316.i2395:                                 ; preds = %.noexc106.i2393, %.thread68.i.i.i2390, %.noexc100.i2299
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes9Int32TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.pa, ptr noundef nonnull align 8 %i.aok)
          to label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17sort_with_numericNtNtB8_9datatypes9Int32TypeECsePnBjWcsLF5_10polars_ops.exit.i.i unwind label %bb.bqr, !dbg !244118, !noalias !243653

bb.brd:                                           ; preds = %bb.brb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ou), !dbg !244119, !noalias !244090
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i2215), !dbg !244120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ot), !dbg !244120, !noalias !244090
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6to_vecINtB4_12ChunkedArrayNtNtB6_9datatypes9Int32TypeE17to_vec_null_awareCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ot, ptr noundef nonnull align 8 %i.aok)
          to label %.noexc108.i2378 unwind label %bb.bqr, !dbg !244121, !noalias !243653

.noexc108.i2378:                                  ; preds = %bb.brd
  %i.hsv = load i64, ptr %i.ot, align 8, !dbg !244122, !range !231, !noalias !244090, !noundef !13
  %i.hsw = trunc nuw i64 %i.hsv to i1, !dbg !244125
  %i.hsx = getelementptr inbounds nuw i8, ptr %i.ot, i64 8, !dbg !244126 ; 4 uses
  br i1 %i.hsw, label %bb.bre, label %bb.brh, !dbg !244125

.thread.i2306:                                    ; preds = %bb.brb, %bb.bqz
  %.val51.i.i199.i2307 = phi i64 [ %.val51.i.i.pr.i2305, %bb.brb ], [ %.val52.i.i.i2389, %bb.bqz ] ; 6 uses
  %.val47.i.i.i2308 = load i64, ptr %i.hrs, align 8, !dbg !244127, !noalias !244090, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.op), !dbg !244129, !noalias !244090
  call void @llvm.lifetime.start.p0(ptr nonnull %i.oe), !dbg !244131, !noalias !244090
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.oe, i64 noundef %.val47.i.i.i2308, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc109.i2309 unwind label %bb.bqr, !dbg !244131, !noalias !243653

.noexc109.i2309:                                  ; preds = %.thread.i2306
  %i.hsy = load i64, ptr %i.oe, align 8, !dbg !244131, !range !231, !noalias !244090, !noundef !13
  %i.hsz = trunc nuw i64 %i.hsy to i1, !dbg !244140
  %i.hta = getelementptr inbounds nuw i8, ptr %i.oe, i64 8, !dbg !244141
  %i.htb = load i64, ptr %i.hta, align 8, !dbg !244141, !range !234, !noalias !244090, !noundef !13 ; 3 uses
  %i.htc = getelementptr inbounds nuw i8, ptr %i.oe, i64 16, !dbg !244141 ; 2 uses
  br i1 %i.hsz, label %bb.brs, label %bb.bru, !dbg !244140, !prof !42

bb.bre:                                           ; preds = %.noexc108.i2378
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptionlEENtNtNtBK_3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hsx)
end_hunk_5
