Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_arrow_stats-82d00fd98ff02bc8.lance_arrow_stats.b954386bd0024ae1-cgu.0?download=true
inline.NumInlined: 392
inline.NumDeleted: 293
begin_hunk_0_@_RNvCsfUv75jb5FCv_17lance_arrow_stats12find_min_max:bb.a
  %i.abz = add nuw i64 %.sroa.0351.0.i2855, 1     ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  br i1 %.not.i.i1101.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aca = load i64, ptr %i.ky, align 8, !alias.scope !441, !noalias !401, !noundef !7
  %i.acb = icmp ult i64 %.sroa.0351.0.i2855, %i.aca
  br i1 %i.acb, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.i, label %bb.cq, !prof !13

bb.cq:                                            ; preds = %bb.cp
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #20, !noalias !442
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.i: ; preds = %bb.cp
  %i.acc = load ptr, ptr %i.kz, align 8, !alias.scope !441, !noalias !401, !noundef !7
  %i.acd = load i64, ptr %i.la, align 8, !alias.scope !441, !noalias !401, !noundef !7
  %i.ace = add i64 %i.acd, %.sroa.0351.0.i2855    ; 2 uses
  %i.acf = lshr i64 %i.ace, 3
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acc, i64 %i.acf
  %i.ach = load i8, ptr %i.acg, align 1, !noalias !442, !noundef !7
  %i.aci = trunc i64 %i.ace to i8
  %i.acj = and i8 %i.aci, 7
  %i.ack = xor i8 %i.ach, -1
  %i.acl = lshr i8 %i.ack, %i.acj
  %i.acm = trunc i8 %i.acl to i1
  br i1 %i.acm, label %bb.cn, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.i, %bb.co
  %.val962.i = load ptr, ptr %i.lb, align 8, !noalias !401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !403
  store i64 %.sroa.0351.0.i2855, ptr %i.bt, align 8, !noalias !403
  %i.acn = icmp samesign ult i64 %.sroa.0351.0.i2855, %i.kw
  br i1 %i.acn, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i, label %bb.cr, !prof !13

bb.cr:                                            ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !403
  store i64 %i.kw, ptr %i.bs, align 8, !noalias !403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !403
  store ptr %i.bt, ptr %i.br, align 8, !noalias !403
  %.sroa.42.0..sroa_idx.i1103.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i1103.i, align 8, !noalias !403
  %i.aco = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr %i.bs, ptr %i.aco, align 8, !noalias !403
  %.sroa.46.0..sroa_idx.i1104.i = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i1104.i, align 8, !noalias !403
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #20, !noalias !401
  unreachable

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i
  %i.acp = getelementptr inbounds nuw [8 x i8], ptr %.val962.i, i64 %.sroa.0351.0.i2855
  %i.acq = load i64, ptr %i.acp, align 8, !noalias !401, !noundef !7 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !403
  %i.acr = icmp ult i64 %i.acq, %.sroa.6693.0.ph.i2866
  %or.cond864.i = select i1 %.not830.i2867, i1 true, i1 %i.acr ; 3 uses
  %.sroa.6693.1.i = select i1 %or.cond864.i, i64 %i.acq, i64 %.sroa.6693.0.ph.i2866
  %.sroa.366.1.i = select i1 %or.cond864.i, i64 %.sroa.0351.0.i2855, i64 %.sroa.366.0.ph.i2872 ; 2 uses
  %.sroa.065.1.i = select i1 %or.cond864.i, i64 1, i64 %.sroa.065.0.ph.i2873 ; 2 uses
  %i.acs = icmp ugt i64 %i.acq, %.sroa.6688.0.ph.i2868
  %or.cond865.i = select i1 %.not830.i2867, i1 true, i1 %i.acs ; 3 uses
  %.sroa.6688.1.i = select i1 %or.cond865.i, i64 %i.acq, i64 %.sroa.6688.0.ph.i2868
  %.sroa.369.1.i = select i1 %or.cond865.i, i64 %.sroa.0351.0.i2855, i64 %.sroa.369.0.ph.i2870 ; 2 uses
  %.sroa.068.1.i = select i1 %or.cond865.i, i64 1, i64 %.sroa.068.0.ph.i2871 ; 2 uses
  %umax2396.i = call i64 @llvm.umax.i64(i64 %i.abz, i64 %i.kw)
  %exitcond2397.not.i2854.not = icmp ult i64 %i.abz, %i.kw
  br i1 %exitcond2397.not.i2854.not, label %.lr.ph2856, label %.loopexit.i

.lr.ph1788.split.i:                               ; preds = %.lr.ph1788.split.i.preheader645, %bb.cx
  %.sroa.0353.01787.i = phi i64 [ %i.act, %bb.cx ], [ %.sroa.0353.0.ph1813.i, %.lr.ph1788.split.i.preheader645 ] ; 7 uses
  %i.act = add nuw nsw i64 %.sroa.0353.01787.i, 1 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %i.acu = icmp ult i64 %.sroa.0353.01787.i, %.pre1193
  br i1 %i.acu, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.i, label %bb.cs, !prof !13

bb.cs:                                            ; preds = %.lr.ph1788.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #20, !noalias !444
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.i: ; preds = %.lr.ph1788.split.i
  %i.acv = load ptr, ptr %i.lx, align 8, !alias.scope !443, !noalias !401, !noundef !7
  %i.acw = load i64, ptr %i.ly, align 8, !alias.scope !443, !noalias !401, !noundef !7
  %i.acx = add i64 %i.acw, %.sroa.0353.01787.i    ; 2 uses
  %i.acy = lshr i64 %i.acx, 3
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acv, i64 %i.acy
  %i.ada = load i8, ptr %i.acz, align 1, !noalias !444, !noundef !7
  %i.adb = trunc i64 %i.acx to i8
  %i.adc = and i8 %i.adb, 7
  %i.add = xor i8 %i.ada, -1
  %i.ade = lshr i8 %i.add, %i.adc
  %i.adf = trunc i8 %i.ade to i1
  br i1 %i.adf, label %bb.cx, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.i
  %.val910.i = load ptr, ptr %i.lz, align 8, !noalias !401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !403
  store i64 %.sroa.0353.01787.i, ptr %i.bq, align 8, !noalias !403
  %i.adg = icmp samesign ult i64 %.sroa.0353.01787.i, %i.lu
  br i1 %i.adg, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i, label %.split1798.i, !prof !13

.split1798.i:                                     ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i, %.lr.ph1788.split.i.us, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !403
  store i64 %i.lu, ptr %i.bp, align 8, !noalias !403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !403
  store ptr %i.bq, ptr %i.bo, align 8, !noalias !403
  %.sroa.42.0..sroa_idx.i1107.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i1107.i, align 8, !noalias !403
  %i.adh = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr %i.bp, ptr %i.adh, align 8, !noalias !403
  %.sroa.46.0..sroa_idx.i1108.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i1108.i, align 8, !noalias !403
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #20, !noalias !401
  unreachable

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i
  %i.adi = getelementptr inbounds nuw [2 x i8], ptr %.val910.i, i64 %.sroa.0353.01787.i
  %i.adj = load i16, ptr %i.adi, align 2, !noalias !401, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !403
  %i.adk = and i16 %i.adj, 32767
  %i.adl = icmp samesign ugt i16 %i.adk, 31744
  br i1 %i.adl, label %bb.cx, label %.split1801.i

.split1801.i:                                     ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i.us, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.i
  %i.adm = phi ptr [ null, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i.us ], [ null, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.i ], [ %.pre2419.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ]
  %.us-phi1802.i = phi i16 [ %i.aed, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i.us ], [ %i.aej, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.i ], [ %i.adj, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ] ; 6 uses
  %.us-phi1803.i = phi i64 [ %i.aeb, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i.us ], [ %i.aeh, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.i ], [ %i.act, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ] ; 2 uses
  %.us-phi1804.i = phi i64 [ %.sroa.0353.01787.i.us, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i.us ], [ %.sroa.0353.01787.us.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.i ], [ %.sroa.0353.01787.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ] ; 4 uses
  br i1 %.not828.i, label %.outer1256.i, label %bb.ct

bb.ct:                                            ; preds = %.split1801.i
  %i.adn = ashr i16 %.us-phi1802.i, 15
  %i.ado = lshr i16 %i.adn, 1
  %i.adp = xor i16 %i.ado, %.us-phi1802.i         ; 2 uses
  %i.adq = ashr i16 %.sroa.6683.0.ph1809.i, 15
  %i.adr = lshr i16 %i.adq, 1
  %i.ads = xor i16 %i.adr, %.sroa.6683.0.ph1809.i
  %i.adt = icmp slt i16 %i.adp, %i.ads            ; 3 uses
  %.sroa.073.12497.i = select i1 %i.adt, i64 1, i64 %.sroa.073.0.ph1817.i ; 2 uses
  %.sroa.374.12494.i = select i1 %i.adt, i64 %.us-phi1804.i, i64 %.sroa.374.0.ph1816.i ; 2 uses
  %.sroa.6683.12491.i = select i1 %i.adt, i16 %.us-phi1802.i, i16 %.sroa.6683.0.ph1809.i ; 2 uses
  %i.adu = ashr i16 %.sroa.6678.0.ph1811.i, 15
  %i.adv = lshr i16 %i.adu, 1
  %i.adw = xor i16 %i.adv, %.sroa.6678.0.ph1811.i
  %i.adx = icmp sgt i16 %i.adp, %i.adw
  br i1 %i.adx, label %bb.cu, label %.outer1256.i

bb.cu:                                            ; preds = %bb.ct
  br label %.outer1256.i

.outer1256.i:                                     ; preds = %bb.cu, %bb.ct, %.split1801.i
  %.sroa.073.12495.i = phi i64 [ %.sroa.073.12497.i, %bb.ct ], [ %.sroa.073.12497.i, %bb.cu ], [ 1, %.split1801.i ] ; 2 uses
  %.sroa.374.12492.i = phi i64 [ %.sroa.374.12494.i, %bb.ct ], [ %.sroa.374.12494.i, %bb.cu ], [ %.us-phi1804.i, %.split1801.i ] ; 2 uses
  %.sroa.6683.12489.i = phi i16 [ %.sroa.6683.12491.i, %bb.ct ], [ %.sroa.6683.12491.i, %bb.cu ], [ %.us-phi1802.i, %.split1801.i ]
  %.sroa.6678.1.i = phi i16 [ %.sroa.6678.0.ph1811.i, %bb.ct ], [ %.us-phi1802.i, %bb.cu ], [ %.us-phi1802.i, %.split1801.i ]
  %.sroa.377.1.i = phi i64 [ %.sroa.377.0.ph1814.i, %bb.ct ], [ %.us-phi1804.i, %bb.cu ], [ %.us-phi1804.i, %.split1801.i ] ; 2 uses
  %.sroa.076.1.i = phi i64 [ %.sroa.076.0.ph1815.i, %bb.ct ], [ 1, %bb.cu ], [ 1, %.split1801.i ] ; 2 uses
  %i.ady = icmp ult i64 %.us-phi1803.i, %i.lu
  br i1 %i.ady, label %.lr.ph1788.i, label %.loopexit.i

.lr.ph1788.i:                                     ; preds = %.outer1256.i, %.lr.ph1788.lr.ph.i
  %i.adz = phi ptr [ %.pre2419.i, %.lr.ph1788.lr.ph.i ], [ %i.adm, %.outer1256.i ]
  %.sroa.073.0.ph1817.i = phi i64 [ 0, %.lr.ph1788.lr.ph.i ], [ %.sroa.073.12495.i, %.outer1256.i ] ; 4 uses
  %.sroa.374.0.ph1816.i = phi i64 [ undef, %.lr.ph1788.lr.ph.i ], [ %.sroa.374.12492.i, %.outer1256.i ] ; 4 uses
  %.sroa.076.0.ph1815.i = phi i64 [ 0, %.lr.ph1788.lr.ph.i ], [ %.sroa.076.1.i, %.outer1256.i ] ; 4 uses
  %.sroa.377.0.ph1814.i = phi i64 [ undef, %.lr.ph1788.lr.ph.i ], [ %.sroa.377.1.i, %.outer1256.i ] ; 4 uses
  %.sroa.0353.0.ph1813.i = phi i64 [ 0, %.lr.ph1788.lr.ph.i ], [ %.us-phi1803.i, %.outer1256.i ] ; 5 uses
  %.sroa.6678.0.ph1811.i = phi i16 [ undef, %.lr.ph1788.lr.ph.i ], [ %.sroa.6678.1.i, %.outer1256.i ] ; 3 uses
  %.not828.i = phi i1 [ true, %.lr.ph1788.lr.ph.i ], [ false, %.outer1256.i ]
  %.sroa.6683.0.ph1809.i = phi i16 [ undef, %.lr.ph1788.lr.ph.i ], [ %.sroa.6683.12489.i, %.outer1256.i ] ; 3 uses
  %i.aea = icmp eq ptr %i.adz, null
  br i1 %i.aea, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader.i, label %.lr.ph1788.split.i.preheader

.lr.ph1788.split.i.preheader:                     ; preds = %.lr.ph1788.i
  br i1 %.not.i.i1105.i, label %.lr.ph1788.split.i.us.preheader, label %.lr.ph1788.split.i.preheader645

.lr.ph1788.split.i.preheader645:                  ; preds = %.lr.ph1788.split.i.preheader
  %.pre1193 = load i64, ptr %i.lw, align 8, !alias.scope !443, !noalias !401
  br label %.lr.ph1788.split.i

.lr.ph1788.split.i.us.preheader:                  ; preds = %.lr.ph1788.split.i.preheader
  %umax1188 = call i64 @llvm.umax.i64(i64 %.sroa.0353.0.ph1813.i, i64 %i.lu)
  %.val910.i.us.pre = load ptr, ptr %i.lz, align 8, !noalias !401
  br label %.lr.ph1788.split.i.us

.lr.ph1788.split.i.us:                            ; preds = %.lr.ph1788.split.i.us.preheader, %bb.cv
  %.sroa.0353.01787.i.us = phi i64 [ %i.aeb, %bb.cv ], [ %.sroa.0353.0.ph1813.i, %.lr.ph1788.split.i.us.preheader ] ; 5 uses
  %i.aeb = add nuw i64 %.sroa.0353.01787.i.us, 1  ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !403
  store i64 %.sroa.0353.01787.i.us, ptr %i.bq, align 8, !noalias !403
  %exitcond1189.not = icmp eq i64 %.sroa.0353.01787.i.us, %umax1188
  br i1 %exitcond1189.not, label %.split1798.i, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i.us, !prof !10

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i.us: ; preds = %.lr.ph1788.split.i.us
  %i.aec = getelementptr inbounds nuw [2 x i8], ptr %.val910.i.us.pre, i64 %.sroa.0353.01787.i.us
  %i.aed = load i16, ptr %i.aec, align 2, !noalias !401, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !403
  %i.aee = and i16 %i.aed, 32767
  %i.aef = icmp samesign ugt i16 %i.aee, 31744
  br i1 %i.aef, label %bb.cv, label %.split1801.i

bb.cv:                                            ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i.us
  %i.aeg = icmp samesign ult i64 %i.aeb, %i.lu
  br i1 %i.aeg, label %.lr.ph1788.split.i.us, label %.loopexit.i, !llvm.loop !315

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader.i: ; preds = %.lr.ph1788.i
  %.val910.us.pre.i = load ptr, ptr %i.lz, align 8, !noalias !401
  %umax1190 = call i64 @llvm.umax.i64(i64 %.sroa.0353.0.ph1813.i, i64 %i.lu)
  br label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.i: ; preds = %bb.cw, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader.i
  %.sroa.0353.01787.us.i = phi i64 [ %i.aeh, %bb.cw ], [ %.sroa.0353.0.ph1813.i, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader.i ] ; 5 uses
  %i.aeh = add nuw i64 %.sroa.0353.01787.us.i, 1  ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !403
  store i64 %.sroa.0353.01787.us.i, ptr %i.bq, align 8, !noalias !403
  %exitcond1191.not = icmp eq i64 %.sroa.0353.01787.us.i, %umax1190
  br i1 %exitcond1191.not, label %.split1798.i, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.i, !prof !10

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.i
  %i.aei = getelementptr inbounds nuw [2 x i8], ptr %.val910.us.pre.i, i64 %.sroa.0353.01787.us.i
  %i.aej = load i16, ptr %i.aei, align 2, !noalias !401, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !403
  %i.aek = and i16 %i.aej, 32767
  %i.ael = icmp samesign ugt i16 %i.aek, 31744
  br i1 %i.ael, label %bb.cw, label %.split1801.i

bb.cw:                                            ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.i
  %i.aem = icmp samesign ult i64 %i.aeh, %i.lu
  br i1 %i.aem, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.i, label %.loopexit.i

bb.cx:                                            ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.i
  %i.aen = icmp samesign ult i64 %i.act, %i.lu
  br i1 %i.aen, label %.lr.ph1788.split.i, label %.loopexit.i, !llvm.loop !315

.lr.ph1753.split.i:                               ; preds = %.lr.ph1753.split.i.preheader654, %bb.dd
  %.sroa.0367.01752.i = phi i64 [ %i.aeo, %bb.dd ], [ %.sroa.0367.0.ph1778.i, %.lr.ph1753.split.i.preheader654 ] ; 7 uses
  %i.aeo = add nuw nsw i64 %.sroa.0367.01752.i, 1 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %i.aep = icmp ult i64 %.sroa.0367.01752.i, %.pre1192
  br i1 %i.aep, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.i, label %bb.cy, !prof !13

bb.cy:                                            ; preds = %.lr.ph1753.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #20, !noalias !446
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.i: ; preds = %.lr.ph1753.split.i
  %i.aeq = load ptr, ptr %i.mu, align 8, !alias.scope !445, !noalias !401, !noundef !7
  %i.aer = load i64, ptr %i.mv, align 8, !alias.scope !445, !noalias !401, !noundef !7
  %i.aes = add i64 %i.aer, %.sroa.0367.01752.i    ; 2 uses
  %i.aet = lshr i64 %i.aes, 3
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aeq, i64 %i.aet
  %i.aev = load i8, ptr %i.aeu, align 1, !noalias !446, !noundef !7
  %i.aew = trunc i64 %i.aes to i8
  %i.aex = and i8 %i.aew, 7
  %i.aey = xor i8 %i.aev, -1
  %i.aez = lshr i8 %i.aey, %i.aex
  %i.afa = trunc i8 %i.aez to i1
  br i1 %i.afa, label %bb.dd, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.i
  %.val912.i = load ptr, ptr %i.mw, align 8, !noalias !401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !403
  store i64 %.sroa.0367.01752.i, ptr %i.bn, align 8, !noalias !403
  %i.afb = icmp samesign ult i64 %.sroa.0367.01752.i, %i.mr
  br i1 %i.afb, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i, label %.split1763.i, !prof !13

.split1763.i:                                     ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i, %.lr.ph1753.split.i.us, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !403
  store i64 %i.mr, ptr %i.bm, align 8, !noalias !403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !403
  store ptr %i.bn, ptr %i.bl, align 8, !noalias !403
  %.sroa.42.0..sroa_idx.i1111.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i1111.i, align 8, !noalias !403
  %i.afc = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr %i.bm, ptr %i.afc, align 8, !noalias !403
  %.sroa.46.0..sroa_idx.i1112.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i1112.i, align 8, !noalias !403
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #20, !noalias !401
  unreachable

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %.val912.i, i64 %.sroa.0367.01752.i
  %i.afe = load float, ptr %i.afd, align 4, !noalias !401, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !403
  %i.aff = fcmp uno float %i.afe, 0.000000e+00
  br i1 %i.aff, label %bb.dd, label %.split1766.i

.split1766.i:                                     ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i.us, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.i
  %i.afg = phi ptr [ null, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i.us ], [ null, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.i ], [ %.pre2416.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ]
  %.us-phi1767.i = phi float [ %i.aga, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i.us ], [ %i.agf, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.i ], [ %i.afe, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ] ; 5 uses
  %.us-phi1768.i = phi i64 [ %i.afy, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i.us ], [ %i.agd, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.i ], [ %i.aeo, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ] ; 2 uses
  %.us-phi1769.i = phi i64 [ %.sroa.0367.01752.i.us, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i.us ], [ %.sroa.0367.01752.us.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.i ], [ %.sroa.0367.01752.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ] ; 4 uses
  br i1 %.not826.i, label %.outer1258.i, label %bb.cz

bb.cz:                                            ; preds = %.split1766.i
  %i.afh = insertelement <2 x float> poison, float %.us-phi1767.i, i64 0
  %i.afi = insertelement <2 x float> %i.afh, float %.sroa.6668.0.ph1776.i, i64 1
  %i.afj = bitcast <2 x float> %i.afi to <2 x i32> ; 2 uses
  %i.afk = bitcast float %.sroa.6673.0.ph1774.i to i32 ; 2 uses
  %i.afl = ashr i32 %i.afk, 31
  %i.afm = lshr i32 %i.afl, 1
  %i.afn = xor i32 %i.afm, %i.afk
  %i.afo = ashr <2 x i32> %i.afj, splat (i32 31)
  %i.afp = lshr <2 x i32> %i.afo, splat (i32 1)
  %i.afq = xor <2 x i32> %i.afp, %i.afj           ; 3 uses
  %i.afr = extractelement <2 x i32> %i.afq, i64 0
  %i.afs = icmp slt i32 %i.afr, %i.afn            ; 3 uses
  %.sroa.081.12511.i = select i1 %i.afs, i64 1, i64 %.sroa.081.0.ph1782.i ; 2 uses
  %.sroa.382.12508.i = select i1 %i.afs, i64 %.us-phi1769.i, i64 %.sroa.382.0.ph1781.i ; 2 uses
  %.sroa.6673.12505.i = select i1 %i.afs, float %.us-phi1767.i, float %.sroa.6673.0.ph1774.i ; 2 uses
  %shift = shufflevector <2 x i32> %i.afq, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.aft = icmp sgt <2 x i32> %i.afq, %shift
  %i.afu = extractelement <2 x i1> %i.aft, i64 0
  br i1 %i.afu, label %bb.da, label %.outer1258.i

bb.da:                                            ; preds = %bb.cz
  br label %.outer1258.i

.outer1258.i:                                     ; preds = %bb.da, %bb.cz, %.split1766.i
  %.sroa.081.12509.i = phi i64 [ %.sroa.081.12511.i, %bb.cz ], [ %.sroa.081.12511.i, %bb.da ], [ 1, %.split1766.i ] ; 2 uses
  %.sroa.382.12506.i = phi i64 [ %.sroa.382.12508.i, %bb.cz ], [ %.sroa.382.12508.i, %bb.da ], [ %.us-phi1769.i, %.split1766.i ] ; 2 uses
  %.sroa.6673.12503.i = phi float [ %.sroa.6673.12505.i, %bb.cz ], [ %.sroa.6673.12505.i, %bb.da ], [ %.us-phi1767.i, %.split1766.i ]
  %.sroa.6668.1.i = phi float [ %.sroa.6668.0.ph1776.i, %bb.cz ], [ %.us-phi1767.i, %bb.da ], [ %.us-phi1767.i, %.split1766.i ]
  %.sroa.385.1.i = phi i64 [ %.sroa.385.0.ph1779.i, %bb.cz ], [ %.us-phi1769.i, %bb.da ], [ %.us-phi1769.i, %.split1766.i ] ; 2 uses
  %.sroa.084.1.i = phi i64 [ %.sroa.084.0.ph1780.i, %bb.cz ], [ 1, %bb.da ], [ 1, %.split1766.i ] ; 2 uses
  %i.afv = icmp ult i64 %.us-phi1768.i, %i.mr
  br i1 %i.afv, label %.lr.ph1753.i, label %.loopexit.i

.lr.ph1753.i:                                     ; preds = %.outer1258.i, %.lr.ph1753.lr.ph.i
  %i.afw = phi ptr [ %.pre2416.i, %.lr.ph1753.lr.ph.i ], [ %i.afg, %.outer1258.i ]
  %.sroa.081.0.ph1782.i = phi i64 [ 0, %.lr.ph1753.lr.ph.i ], [ %.sroa.081.12509.i, %.outer1258.i ] ; 4 uses
  %.sroa.382.0.ph1781.i = phi i64 [ undef, %.lr.ph1753.lr.ph.i ], [ %.sroa.382.12506.i, %.outer1258.i ] ; 4 uses
  %.sroa.084.0.ph1780.i = phi i64 [ 0, %.lr.ph1753.lr.ph.i ], [ %.sroa.084.1.i, %.outer1258.i ] ; 4 uses
  %.sroa.385.0.ph1779.i = phi i64 [ undef, %.lr.ph1753.lr.ph.i ], [ %.sroa.385.1.i, %.outer1258.i ] ; 4 uses
  %.sroa.0367.0.ph1778.i = phi i64 [ 0, %.lr.ph1753.lr.ph.i ], [ %.us-phi1768.i, %.outer1258.i ] ; 5 uses
  %.sroa.6668.0.ph1776.i = phi float [ undef, %.lr.ph1753.lr.ph.i ], [ %.sroa.6668.1.i, %.outer1258.i ] ; 2 uses
  %.not826.i = phi i1 [ true, %.lr.ph1753.lr.ph.i ], [ false, %.outer1258.i ]
  %.sroa.6673.0.ph1774.i = phi float [ undef, %.lr.ph1753.lr.ph.i ], [ %.sroa.6673.12503.i, %.outer1258.i ] ; 2 uses
  %i.afx = icmp eq ptr %i.afw, null
  br i1 %i.afx, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader.i, label %.lr.ph1753.split.i.preheader

.lr.ph1753.split.i.preheader:                     ; preds = %.lr.ph1753.i
  br i1 %.not.i.i1109.i, label %.lr.ph1753.split.i.us.preheader, label %.lr.ph1753.split.i.preheader654

.lr.ph1753.split.i.preheader654:                  ; preds = %.lr.ph1753.split.i.preheader
  %.pre1192 = load i64, ptr %i.mt, align 8, !alias.scope !445, !noalias !401
  br label %.lr.ph1753.split.i

.lr.ph1753.split.i.us.preheader:                  ; preds = %.lr.ph1753.split.i.preheader
  %umax1184 = call i64 @llvm.umax.i64(i64 %.sroa.0367.0.ph1778.i, i64 %i.mr)
  %.val912.i.us.pre = load ptr, ptr %i.mw, align 8, !noalias !401
  br label %.lr.ph1753.split.i.us

.lr.ph1753.split.i.us:                            ; preds = %.lr.ph1753.split.i.us.preheader, %bb.db
  %.sroa.0367.01752.i.us = phi i64 [ %i.afy, %bb.db ], [ %.sroa.0367.0.ph1778.i, %.lr.ph1753.split.i.us.preheader ] ; 5 uses
  %i.afy = add nuw nsw i64 %.sroa.0367.01752.i.us, 1 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !445)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !403
  store i64 %.sroa.0367.01752.i.us, ptr %i.bn, align 8, !noalias !403
  %exitcond1185.not = icmp eq i64 %.sroa.0367.01752.i.us, %umax1184
  br i1 %exitcond1185.not, label %.split1763.i, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i.us, !prof !10

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i.us: ; preds = %.lr.ph1753.split.i.us
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %.val912.i.us.pre, i64 %.sroa.0367.01752.i.us
  %i.aga = load float, ptr %i.afz, align 4, !noalias !401, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !403
  %i.agb = fcmp uno float %i.aga, 0.000000e+00
  br i1 %i.agb, label %bb.db, label %.split1766.i

bb.db:                                            ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i.us
  %i.agc = icmp samesign ult i64 %i.afy, %i.mr
  br i1 %i.agc, label %.lr.ph1753.split.i.us, label %.loopexit.i, !llvm.loop !316

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader.i: ; preds = %.lr.ph1753.i
  %.val912.us.pre.i = load ptr, ptr %i.mw, align 8, !noalias !401
  %umax1186 = call i64 @llvm.umax.i64(i64 %.sroa.0367.0.ph1778.i, i64 %i.mr)
  br label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.i: ; preds = %bb.dc, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader.i
  %.sroa.0367.01752.us.i = phi i64 [ %i.agd, %bb.dc ], [ %.sroa.0367.0.ph1778.i, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader.i ] ; 5 uses
  %i.agd = add nuw nsw i64 %.sroa.0367.01752.us.i, 1 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !445)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !403
  store i64 %.sroa.0367.01752.us.i, ptr %i.bn, align 8, !noalias !403
  %exitcond1187.not = icmp eq i64 %.sroa.0367.01752.us.i, %umax1186
  br i1 %exitcond1187.not, label %.split1763.i, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.i, !prof !10

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.i
  %i.age = getelementptr inbounds nuw [4 x i8], ptr %.val912.us.pre.i, i64 %.sroa.0367.01752.us.i
  %i.agf = load float, ptr %i.age, align 4, !noalias !401, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !403
  %i.agg = fcmp uno float %i.agf, 0.000000e+00
  br i1 %i.agg, label %bb.dc, label %.split1766.i

bb.dc:                                            ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.i
  %i.agh = icmp samesign ult i64 %i.agd, %i.mr
  br i1 %i.agh, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.i, label %.loopexit.i

bb.dd:                                            ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.i
  %i.agi = icmp samesign ult i64 %i.aeo, %i.mr
  br i1 %i.agi, label %.lr.ph1753.split.i, label %.loopexit.i, !llvm.loop !316

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader663, %bb.dj
  %.sroa.0381.01722.i = phi i64 [ %i.agj, %bb.dj ], [ %.sroa.0381.0.ph1743.i, %.lr.ph.split.i.preheader663 ] ; 7 uses
  %i.agj = add nuw nsw i64 %.sroa.0381.01722.i, 1 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %i.agk = icmp ult i64 %.sroa.0381.01722.i, %.pre
  br i1 %i.agk, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.i, label %bb.de, !prof !13

bb.de:                                            ; preds = %.lr.ph.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #20, !noalias !448
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.i: ; preds = %.lr.ph.split.i
  %i.agl = load ptr, ptr %i.nr, align 8, !alias.scope !447, !noalias !401, !noundef !7
  %i.agm = load i64, ptr %i.ns, align 8, !alias.scope !447, !noalias !401, !noundef !7
  %i.agn = add i64 %i.agm, %.sroa.0381.01722.i    ; 2 uses
  %i.ago = lshr i64 %i.agn, 3
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agl, i64 %i.ago
  %i.agq = load i8, ptr %i.agp, align 1, !noalias !448, !noundef !7
  %i.agr = trunc i64 %i.agn to i8
  %i.ags = and i8 %i.agr, 7
  %i.agt = xor i8 %i.agq, -1
  %i.agu = lshr i8 %i.agt, %i.ags
  %i.agv = trunc i8 %i.agu to i1
  br i1 %i.agv, label %bb.dj, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.i
  %.val914.i = load ptr, ptr %i.nt, align 8, !noalias !401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !403
  store i64 %.sroa.0381.01722.i, ptr %i.bk, align 8, !noalias !403
  %i.agw = icmp samesign ult i64 %.sroa.0381.01722.i, %i.no
  br i1 %i.agw, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i, label %.split.i, !prof !13

.split.i:                                         ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i, %.lr.ph.split.i.us, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !403
  store i64 %i.no, ptr %i.bj, align 8, !noalias !403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !403
  store ptr %i.bk, ptr %i.bi, align 8, !noalias !403
  %.sroa.42.0..sroa_idx.i1115.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i1115.i, align 8, !noalias !403
  %i.agx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bj, ptr %i.agx, align 8, !noalias !403
  %.sroa.46.0..sroa_idx.i1116.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i1116.i, align 8, !noalias !403
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #20, !noalias !401
  unreachable

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i
  %i.agy = getelementptr inbounds nuw [8 x i8], ptr %.val914.i, i64 %.sroa.0381.01722.i
  %i.agz = load double, ptr %i.agy, align 8, !noalias !401, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !403
  %i.aha = fcmp uno double %i.agz, 0.000000e+00
  br i1 %i.aha, label %bb.dj, label %.split1731.i

.split1731.i:                                     ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i.us, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.i
  %i.ahb = phi ptr [ null, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i.us ], [ null, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.i ], [ %.pre.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ]
  %.us-phi1732.i = phi double [ %i.ahv, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i.us ], [ %i.aia, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.i ], [ %i.agz, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ] ; 5 uses
  %.us-phi1733.i = phi i64 [ %i.aht, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i.us ], [ %i.ahy, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.i ], [ %i.agj, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ] ; 2 uses
  %.us-phi1734.i = phi i64 [ %.sroa.0381.01722.i.us, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i.us ], [ %.sroa.0381.01722.us.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.i ], [ %.sroa.0381.01722.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ] ; 4 uses
  br i1 %.not824.i, label %.outer1260.i, label %bb.df

bb.df:                                            ; preds = %.split1731.i
  %i.ahc = bitcast double %.us-phi1732.i to i64   ; 2 uses
  %i.ahd = bitcast double %.sroa.6663.0.ph1739.i to i64 ; 2 uses
  %i.ahe = ashr i64 %i.ahc, 63
  %i.ahf = lshr i64 %i.ahe, 1
  %i.ahg = xor i64 %i.ahf, %i.ahc                 ; 2 uses
  %i.ahh = ashr i64 %i.ahd, 63
  %i.ahi = lshr i64 %i.ahh, 1
  %i.ahj = xor i64 %i.ahi, %i.ahd
  %i.ahk = icmp slt i64 %i.ahg, %i.ahj            ; 3 uses
  %.sroa.089.12525.i = select i1 %i.ahk, i64 1, i64 %.sroa.089.0.ph1747.i ; 2 uses
  %.sroa.390.12522.i = select i1 %i.ahk, i64 %.us-phi1734.i, i64 %.sroa.390.0.ph1746.i ; 2 uses
  %.sroa.6663.12519.i = select i1 %i.ahk, double %.us-phi1732.i, double %.sroa.6663.0.ph1739.i ; 2 uses
  %i.ahl = bitcast double %.sroa.6658.0.ph1741.i to i64 ; 2 uses
  %i.ahm = ashr i64 %i.ahl, 63
  %i.ahn = lshr i64 %i.ahm, 1
  %i.aho = xor i64 %i.ahn, %i.ahl
  %i.ahp = icmp sgt i64 %i.ahg, %i.aho
  br i1 %i.ahp, label %bb.dg, label %.outer1260.i

bb.dg:                                            ; preds = %bb.df
  br label %.outer1260.i

.outer1260.i:                                     ; preds = %bb.dg, %bb.df, %.split1731.i
  %.sroa.089.12523.i = phi i64 [ %.sroa.089.12525.i, %bb.df ], [ %.sroa.089.12525.i, %bb.dg ], [ 1, %.split1731.i ] ; 2 uses
  %.sroa.390.12520.i = phi i64 [ %.sroa.390.12522.i, %bb.df ], [ %.sroa.390.12522.i, %bb.dg ], [ %.us-phi1734.i, %.split1731.i ] ; 2 uses
  %.sroa.6663.12517.i = phi double [ %.sroa.6663.12519.i, %bb.df ], [ %.sroa.6663.12519.i, %bb.dg ], [ %.us-phi1732.i, %.split1731.i ]
  %.sroa.6658.1.i = phi double [ %.sroa.6658.0.ph1741.i, %bb.df ], [ %.us-phi1732.i, %bb.dg ], [ %.us-phi1732.i, %.split1731.i ]
  %.sroa.393.1.i = phi i64 [ %.sroa.393.0.ph1744.i, %bb.df ], [ %.us-phi1734.i, %bb.dg ], [ %.us-phi1734.i, %.split1731.i ] ; 2 uses
  %.sroa.092.1.i = phi i64 [ %.sroa.092.0.ph1745.i, %bb.df ], [ 1, %bb.dg ], [ 1, %.split1731.i ] ; 2 uses
  %i.ahq = icmp ult i64 %.us-phi1733.i, %i.no
  br i1 %i.ahq, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.outer1260.i, %.lr.ph.lr.ph.i
  %i.ahr = phi ptr [ %.pre.i, %.lr.ph.lr.ph.i ], [ %i.ahb, %.outer1260.i ]
  %.sroa.089.0.ph1747.i = phi i64 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.089.12523.i, %.outer1260.i ] ; 4 uses
  %.sroa.390.0.ph1746.i = phi i64 [ undef, %.lr.ph.lr.ph.i ], [ %.sroa.390.12520.i, %.outer1260.i ] ; 4 uses
  %.sroa.092.0.ph1745.i = phi i64 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.092.1.i, %.outer1260.i ] ; 4 uses
  %.sroa.393.0.ph1744.i = phi i64 [ undef, %.lr.ph.lr.ph.i ], [ %.sroa.393.1.i, %.outer1260.i ] ; 4 uses
  %.sroa.0381.0.ph1743.i = phi i64 [ 0, %.lr.ph.lr.ph.i ], [ %.us-phi1733.i, %.outer1260.i ] ; 5 uses
  %.not824.i = phi i1 [ true, %.lr.ph.lr.ph.i ], [ false, %.outer1260.i ]
  %.sroa.6658.0.ph1741.i = phi double [ undef, %.lr.ph.lr.ph.i ], [ %.sroa.6658.1.i, %.outer1260.i ] ; 2 uses
  %.sroa.6663.0.ph1739.i = phi double [ undef, %.lr.ph.lr.ph.i ], [ %.sroa.6663.12517.i, %.outer1260.i ] ; 2 uses
  %i.ahs = icmp eq ptr %i.ahr, null
  br i1 %i.ahs, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader.i, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  br i1 %.not.i.i1113.i, label %.lr.ph.split.i.us.preheader, label %.lr.ph.split.i.preheader663

.lr.ph.split.i.preheader663:                      ; preds = %.lr.ph.split.i.preheader
  %.pre = load i64, ptr %i.nq, align 8, !alias.scope !447, !noalias !401
  br label %.lr.ph.split.i

.lr.ph.split.i.us.preheader:                      ; preds = %.lr.ph.split.i.preheader
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.0381.0.ph1743.i, i64 %i.no)
  %.val914.i.us.pre = load ptr, ptr %i.nt, align 8, !noalias !401
  br label %.lr.ph.split.i.us

.lr.ph.split.i.us:                                ; preds = %.lr.ph.split.i.us.preheader, %bb.dh
  %.sroa.0381.01722.i.us = phi i64 [ %i.aht, %bb.dh ], [ %.sroa.0381.0.ph1743.i, %.lr.ph.split.i.us.preheader ] ; 5 uses
  %i.aht = add nuw nsw i64 %.sroa.0381.01722.i.us, 1 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !447)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !403
  store i64 %.sroa.0381.01722.i.us, ptr %i.bk, align 8, !noalias !403
  %exitcond.not = icmp eq i64 %.sroa.0381.01722.i.us, %umax
  br i1 %exitcond.not, label %.split.i, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i.us, !prof !10

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i.us: ; preds = %.lr.ph.split.i.us
  %i.ahu = getelementptr inbounds nuw [8 x i8], ptr %.val914.i.us.pre, i64 %.sroa.0381.01722.i.us
  %i.ahv = load double, ptr %i.ahu, align 8, !noalias !401, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !403
  %i.ahw = fcmp uno double %i.ahv, 0.000000e+00
  br i1 %i.ahw, label %bb.dh, label %.split1731.i

bb.dh:                                            ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i.us
  %i.ahx = icmp samesign ult i64 %i.aht, %i.no
  br i1 %i.ahx, label %.lr.ph.split.i.us, label %.loopexit.i, !llvm.loop !317

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader.i: ; preds = %.lr.ph.i
  %.val914.us.pre.i = load ptr, ptr %i.nt, align 8, !noalias !401
  %umax1182 = call i64 @llvm.umax.i64(i64 %.sroa.0381.0.ph1743.i, i64 %i.no)
  br label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.i: ; preds = %bb.di, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader.i
  %.sroa.0381.01722.us.i = phi i64 [ %i.ahy, %bb.di ], [ %.sroa.0381.0.ph1743.i, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader.i ] ; 5 uses
  %i.ahy = add nuw nsw i64 %.sroa.0381.01722.us.i, 1 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !447)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !403
  store i64 %.sroa.0381.01722.us.i, ptr %i.bk, align 8, !noalias !403
  %exitcond1183.not = icmp eq i64 %.sroa.0381.01722.us.i, %umax1182
  br i1 %exitcond1183.not, label %.split.i, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.i, !prof !10

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.i
  %i.ahz = getelementptr inbounds nuw [8 x i8], ptr %.val914.us.pre.i, i64 %.sroa.0381.01722.us.i
  %i.aia = load double, ptr %i.ahz, align 8, !noalias !401, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !403
  %i.aib = fcmp uno double %i.aia, 0.000000e+00
  br i1 %i.aib, label %bb.di, label %.split1731.i

bb.di:                                            ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.us.i
  %i.aic = icmp samesign ult i64 %i.ahy, %i.no
  br i1 %i.aic, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.i, label %.loopexit.i

bb.dj:                                            ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.i
  %i.aid = icmp samesign ult i64 %i.agj, %i.no
  br i1 %i.aid, label %.lr.ph.split.i, label %.loopexit.i, !llvm.loop !317

default.unreachable:                              ; preds = %bb.ag, %bb.z
  unreachable

bb.dk:                                            ; preds = %bb.z
  %i.aie = tail call fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types19TimestampSecondTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr nonnull %.val964.i, ptr nonnull %.val965.i), !noalias !401 ; 6 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 40
  %i.aig = load i64, ptr %i.aif, align 8, !noalias !401, !noundef !7
  %i.aih = lshr i64 %i.aig, 3                     ; 6 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aie, i64 48
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aie, i64 80
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aie, i64 56
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aie, i64 72
  %i.aim = getelementptr i8, ptr %i.aie, i64 32
  %exitcond2395.not.i28292840 = icmp eq i64 %i.aih, 0
  br i1 %exitcond2395.not.i28292840, label %.loopexit.i, label %.lr.ph2831

.lr.ph2831:                                       ; preds = %bb.dk, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types19TimestampSecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i
  %umax2394.i2849 = phi i64 [ %umax2394.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types19TimestampSecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ %i.aih, %bb.dk ]
  %.sroa.0166.0.ph.i2848 = phi i64 [ %.sroa.0166.1.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types19TimestampSecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ 0, %bb.dk ] ; 2 uses
  %.sroa.3167.0.ph.i2847 = phi i64 [ %.sroa.3167.1.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types19TimestampSecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ undef, %bb.dk ] ; 2 uses
  %.sroa.0169.0.ph.i2846 = phi i64 [ %.sroa.0169.1.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types19TimestampSecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ 0, %bb.dk ] ; 2 uses
  %.sroa.3170.0.ph.i2845 = phi i64 [ %.sroa.3170.1.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types19TimestampSecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ undef, %bb.dk ] ; 2 uses
  %.sroa.0417.0.ph.i2844 = phi i64 [ %i.ajs, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types19TimestampSecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ 0, %bb.dk ]
  %.sroa.6571.0.ph.i2843 = phi i64 [ %.sroa.6571.1.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types19TimestampSecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ undef, %bb.dk ] ; 2 uses
  %.not822.i2842 = phi i1 [ false, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types19TimestampSecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ true, %bb.dk ] ; 2 uses
  %.sroa.6576.0.ph.i2841 = phi i64 [ %.sroa.6576.1.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types19TimestampSecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ undef, %bb.dk ] ; 2 uses
  %i.ain = load ptr, ptr %i.aii, align 8, !alias.scope !449, !noalias !401, !noundef !7
  %.not.i.i1117.i = icmp eq ptr %i.ain, null
  br label %bb.dp

bb.dl:                                            ; preds = %bb.z
  %i.aio = tail call fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types24TimestampMillisecondTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr nonnull %.val964.i, ptr nonnull %.val965.i), !noalias !401 ; 6 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 40
  %i.aiq = load i64, ptr %i.aip, align 8, !noalias !401, !noundef !7
  %i.air = lshr i64 %i.aiq, 3                     ; 6 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aio, i64 48
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aio, i64 80
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.aio, i64 56
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aio, i64 72
  %i.aiw = getelementptr i8, ptr %i.aio, i64 32
  %exitcond2393.not.i28042815 = icmp eq i64 %i.air, 0
  br i1 %exitcond2393.not.i28042815, label %.loopexit.i, label %.lr.ph2806

.lr.ph2806:                                       ; preds = %bb.dl, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMillisecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i
  %umax2392.i2824 = phi i64 [ %umax2392.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMillisecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ %i.air, %bb.dl ]
  %.sroa.0174.0.ph.i2823 = phi i64 [ %.sroa.0174.1.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMillisecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ 0, %bb.dl ] ; 2 uses
  %.sroa.3175.0.ph.i2822 = phi i64 [ %.sroa.3175.1.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMillisecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ undef, %bb.dl ] ; 2 uses
  %.sroa.0177.0.ph.i2821 = phi i64 [ %.sroa.0177.1.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMillisecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ 0, %bb.dl ] ; 2 uses
  %.sroa.3178.0.ph.i2820 = phi i64 [ %.sroa.3178.1.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMillisecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ undef, %bb.dl ] ; 2 uses
  %.sroa.0419.0.ph.i2819 = phi i64 [ %i.akm, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMillisecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ 0, %bb.dl ]
  %.sroa.6561.0.ph.i2818 = phi i64 [ %.sroa.6561.1.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMillisecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ undef, %bb.dl ] ; 2 uses
  %.not820.i2817 = phi i1 [ false, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMillisecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ true, %bb.dl ] ; 2 uses
  %.sroa.6566.0.ph.i2816 = phi i64 [ %.sroa.6566.1.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMillisecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ undef, %bb.dl ] ; 2 uses
  %i.aix = load ptr, ptr %i.ais, align 8, !alias.scope !450, !noalias !401, !noundef !7
  %.not.i.i1121.i = icmp eq ptr %i.aix, null
  br label %bb.du

bb.dm:                                            ; preds = %bb.z
  %i.aiy = tail call fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types24TimestampMicrosecondTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr nonnull %.val964.i, ptr nonnull %.val965.i), !noalias !401 ; 6 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 40
  %i.aja = load i64, ptr %i.aiz, align 8, !noalias !401, !noundef !7
  %i.ajb = lshr i64 %i.aja, 3                     ; 6 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aiy, i64 48
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aiy, i64 80
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aiy, i64 56
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aiy, i64 72
  %i.ajg = getelementptr i8, ptr %i.aiy, i64 32
  %exitcond2391.not.i27792790 = icmp eq i64 %i.ajb, 0
  br i1 %exitcond2391.not.i27792790, label %.loopexit.i, label %.lr.ph2781

.lr.ph2781:                                       ; preds = %bb.dm, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMicrosecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i
  %umax2390.i2799 = phi i64 [ %umax2390.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMicrosecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ %i.ajb, %bb.dm ]
  %.sroa.0182.0.ph.i2798 = phi i64 [ %.sroa.0182.1.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMicrosecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ 0, %bb.dm ] ; 2 uses
  %.sroa.3183.0.ph.i2797 = phi i64 [ %.sroa.3183.1.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMicrosecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ undef, %bb.dm ] ; 2 uses
  %.sroa.0185.0.ph.i2796 = phi i64 [ %.sroa.0185.1.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMicrosecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ 0, %bb.dm ] ; 2 uses
  %.sroa.3186.0.ph.i2795 = phi i64 [ %.sroa.3186.1.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMicrosecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ undef, %bb.dm ] ; 2 uses
  %.sroa.0421.0.ph.i2794 = phi i64 [ %i.alg, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMicrosecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ 0, %bb.dm ]
  %.sroa.6551.0.ph.i2793 = phi i64 [ %.sroa.6551.1.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMicrosecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ undef, %bb.dm ] ; 2 uses
  %.not818.i2792 = phi i1 [ false, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMicrosecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ true, %bb.dm ] ; 2 uses
  %.sroa.6556.0.ph.i2791 = phi i64 [ %.sroa.6556.1.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types24TimestampMicrosecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ undef, %bb.dm ] ; 2 uses
  %i.ajh = load ptr, ptr %i.ajc, align 8, !alias.scope !451, !noalias !401, !noundef !7
  %.not.i.i1125.i = icmp eq ptr %i.ajh, null
  br label %bb.dz

bb.dn:                                            ; preds = %bb.z
  %i.aji = tail call fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types23TimestampNanosecondTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr nonnull %.val964.i, ptr nonnull %.val965.i), !noalias !401 ; 6 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 40
  %i.ajk = load i64, ptr %i.ajj, align 8, !noalias !401, !noundef !7
  %i.ajl = lshr i64 %i.ajk, 3                     ; 6 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.aji, i64 48
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.aji, i64 80
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.aji, i64 56
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.aji, i64 72
  %i.ajq = getelementptr i8, ptr %i.aji, i64 32
  %exitcond2389.not.i27542765 = icmp eq i64 %i.ajl, 0
  br i1 %exitcond2389.not.i27542765, label %.loopexit.i, label %.lr.ph2756

.lr.ph2756:                                       ; preds = %bb.dn, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types23TimestampNanosecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i
  %umax2388.i2774 = phi i64 [ %umax2388.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types23TimestampNanosecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ %i.ajl, %bb.dn ]
  %.sroa.0190.0.ph.i2773 = phi i64 [ %.sroa.0190.1.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types23TimestampNanosecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ 0, %bb.dn ] ; 2 uses
  %.sroa.3191.0.ph.i2772 = phi i64 [ %.sroa.3191.1.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types23TimestampNanosecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ undef, %bb.dn ] ; 2 uses
  %.sroa.0193.0.ph.i2771 = phi i64 [ %.sroa.0193.1.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types23TimestampNanosecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ 0, %bb.dn ] ; 2 uses
  %.sroa.3194.0.ph.i2770 = phi i64 [ %.sroa.3194.1.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types23TimestampNanosecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ undef, %bb.dn ] ; 2 uses
  %.sroa.0423.0.ph.i2769 = phi i64 [ %i.ama, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types23TimestampNanosecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ 0, %bb.dn ]
  %.sroa.6541.0.ph.i2768 = phi i64 [ %.sroa.6541.1.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types23TimestampNanosecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ undef, %bb.dn ] ; 2 uses
  %.not816.i2767 = phi i1 [ false, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types23TimestampNanosecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ true, %bb.dn ] ; 2 uses
  %.sroa.6546.0.ph.i2766 = phi i64 [ %.sroa.6546.1.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types23TimestampNanosecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ], [ undef, %bb.dn ] ; 2 uses
  %i.ajr = load ptr, ptr %i.ajm, align 8, !alias.scope !452, !noalias !401, !noundef !7
  %.not.i.i1129.i = icmp eq ptr %i.ajr, null
  br label %bb.ee

bb.do:                                            ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.i
  %exitcond2395.not.i = icmp eq i64 %i.ajs, %umax2394.i2849
  br i1 %exitcond2395.not.i, label %.loopexit.i, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph2831, %bb.do
  %.sroa.0417.0.i2830 = phi i64 [ %.sroa.0417.0.ph.i2844, %.lr.ph2831 ], [ %i.ajs, %bb.do ] ; 8 uses
  %i.ajs = add nuw i64 %.sroa.0417.0.i2830, 1     ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  br i1 %.not.i.i1117.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ajt = load i64, ptr %i.aij, align 8, !alias.scope !453, !noalias !401, !noundef !7
  %i.aju = icmp ult i64 %.sroa.0417.0.i2830, %i.ajt
  br i1 %i.aju, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.i, label %bb.dr, !prof !13

bb.dr:                                            ; preds = %bb.dq
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #20, !noalias !454
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.i: ; preds = %bb.dq
  %i.ajv = load ptr, ptr %i.aik, align 8, !alias.scope !453, !noalias !401, !noundef !7
  %i.ajw = load i64, ptr %i.ail, align 8, !alias.scope !453, !noalias !401, !noundef !7
  %i.ajx = add i64 %i.ajw, %.sroa.0417.0.i2830    ; 2 uses
  %i.ajy = lshr i64 %i.ajx, 3
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajv, i64 %i.ajy
  %i.aka = load i8, ptr %i.ajz, align 1, !noalias !454, !noundef !7
  %i.akb = trunc i64 %i.ajx to i8
  %i.akc = and i8 %i.akb, 7
  %i.akd = xor i8 %i.aka, -1
  %i.ake = lshr i8 %i.akd, %i.akc
  %i.akf = trunc i8 %i.ake to i1
  br i1 %i.akf, label %bb.do, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.i, %bb.dp
  %.val972.i = load ptr, ptr %i.aim, align 8, !noalias !401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !403
  store i64 %.sroa.0417.0.i2830, ptr %i.bh, align 8, !noalias !403
  %i.akg = icmp samesign ult i64 %.sroa.0417.0.i2830, %i.aih
  br i1 %i.akg, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types19TimestampSecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i, label %bb.ds, !prof !13

bb.ds:                                            ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !403
  store i64 %i.aih, ptr %i.bg, align 8, !noalias !403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !403
  store ptr %i.bh, ptr %i.bf, align 8, !noalias !403
  %.sroa.42.0..sroa_idx.i1119.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i1119.i, align 8, !noalias !403
  %i.akh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr %i.bg, ptr %i.akh, align 8, !noalias !403
  %.sroa.46.0..sroa_idx.i1120.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i1120.i, align 8, !noalias !403
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull %i.bf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #20, !noalias !401
  unreachable

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types19TimestampSecondTypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i
  %i.aki = getelementptr inbounds nuw [8 x i8], ptr %.val972.i, i64 %.sroa.0417.0.i2830
  %i.akj = load i64, ptr %i.aki, align 8, !noalias !401, !noundef !7 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !403
  %i.akk = icmp slt i64 %i.akj, %.sroa.6576.0.ph.i2841
  %or.cond866.i = select i1 %.not822.i2842, i1 true, i1 %i.akk ; 3 uses
  %.sroa.6576.1.i = select i1 %or.cond866.i, i64 %i.akj, i64 %.sroa.6576.0.ph.i2841
  %.sroa.3167.1.i = select i1 %or.cond866.i, i64 %.sroa.0417.0.i2830, i64 %.sroa.3167.0.ph.i2847 ; 2 uses
  %.sroa.0166.1.i = select i1 %or.cond866.i, i64 1, i64 %.sroa.0166.0.ph.i2848 ; 2 uses
  %i.akl = icmp sgt i64 %i.akj, %.sroa.6571.0.ph.i2843
  %or.cond867.i = select i1 %.not822.i2842, i1 true, i1 %i.akl ; 3 uses
  %.sroa.6571.1.i = select i1 %or.cond867.i, i64 %i.akj, i64 %.sroa.6571.0.ph.i2843
  %.sroa.3170.1.i = select i1 %or.cond867.i, i64 %.sroa.0417.0.i2830, i64 %.sroa.3170.0.ph.i2845 ; 2 uses
  %.sroa.0169.1.i = select i1 %or.cond867.i, i64 1, i64 %.sroa.0169.0.ph.i2846 ; 2 uses
  %umax2394.i = tail call i64 @llvm.umax.i64(i64 %i.ajs, i64 %i.aih)
  %exitcond2395.not.i2829.not = icmp ult i64 %i.ajs, %i.aih
  br i1 %exitcond2395.not.i2829.not, label %.lr.ph2831, label %.loopexit.i

bb.dt:                                            ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.i
  %exitcond2393.not.i = icmp eq i64 %i.akm, %umax2392.i2824
  br i1 %exitcond2393.not.i, label %.loopexit.i, label %bb.du

bb.du:                                            ; preds = %.lr.ph2806, %bb.dt
  %.sroa.0419.0.i2805 = phi i64 [ %.sroa.0419.0.ph.i2819, %.lr.ph2806 ], [ %i.akm, %bb.dt ] ; 8 uses
  %i.akm = add nuw i64 %.sroa.0419.0.i2805, 1     ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  br i1 %.not.i.i1121.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.akn = load i64, ptr %i.ait, align 8, !alias.scope !455, !noalias !401, !noundef !7
  %i.ako = icmp ult i64 %.sroa.0419.0.i2805, %i.akn
  br i1 %i.ako, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.i, label %bb.dw, !prof !13

end_hunk_0
