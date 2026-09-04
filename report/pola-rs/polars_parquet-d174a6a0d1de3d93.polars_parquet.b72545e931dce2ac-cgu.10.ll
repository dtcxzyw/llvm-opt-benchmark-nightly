Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.10?download=true
inline.NumInlined: 2534
inline.NumDeleted: 536
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 132
begin_hunk_0_@_RNvXsn_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_5H6SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCsfISxE4fmY1Y_14polars_parquet:bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %.val7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @635) #18, !dbg !40210
  unreachable, !dbg !40210

bb.g:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !40210
  %.val6 = load ptr, ptr %i.ae, align 8, !dbg !40209, !nonnull !664, !noundef !664
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val6, i64 %i.ab, !dbg !40210
  %i.ag = trunc i64 %4 to i32, !dbg !40210
  store i32 %i.ag, ptr %i.af, align 4, !dbg !40210
  %i.ah = load i16, ptr %i.q, align 2, !dbg !40211, !noundef !664
  %i.ai = add i16 %i.ah, 1, !dbg !40212
  store i16 %i.ai, ptr %i.q, align 2, !dbg !40213
  ret void, !dbg !40214
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsn_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher16FindLongestMatchCsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef range(i64 0, 4294967296) %4, i64 noundef %5, ptr noalias noundef nonnull readonly align 4 captures(none) %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, ptr noalias noundef nonnull align 8 dereferenceable(32) initializes((8, 16)) %11) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !40215 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !40376
  %i.c = load i32, ptr %i.b, align 8, !dbg !40376, !noundef !664 ; 4 uses
  %i.d = and i64 %7, %4, !dbg !40377              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 24, !dbg !40378 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !40378, !noundef !664 ; 2 uses
  %i.g = load i64, ptr %11, align 8, !dbg !40379, !noundef !664 ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.d, %3, !dbg !40380
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false), !dbg !40381
  br i1 %.not.i, label %bb.b, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !40380, !prof !712

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @618) #18, !dbg !40382, !noalias !40337
  unreachable, !dbg !40382

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.d, !dbg !40383 ; 8 uses
  %i.i = sub nuw nsw i64 %3, %i.d, !dbg !40384    ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !40385
  %i.k = load i32, ptr %i.j, align 8, !dbg !40385, !noundef !664 ; 2 uses
  %i.l = sext i32 %i.k to i64, !dbg !40385        ; 4 uses
  %.not = icmp eq i32 %i.k, 0, !dbg !40386
  br i1 %.not, label %.outer._crit_edge, label %.lr.ph.lr.ph, !dbg !40341

.lr.ph.lr.ph:                                     ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit
  %i.m = lshr i32 %i.c, 2
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %.lr.ph, !dbg !40341

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.061.0.ph153 = phi i64 [ 0, %.lr.ph.lr.ph ], [ %i.v, %.outer ] ; 5 uses
  %.sroa.010.0.ph152 = phi i1 [ false, %.lr.ph.lr.ph ], [ %.sroa.010.5, %.outer ] ; 6 uses
  %.sroa.012.0.ph151 = phi i64 [ %i.f, %.lr.ph.lr.ph ], [ %.sroa.012.3, %.outer ] ; 8 uses
  %.sroa.017.0.ph150 = phi i64 [ %i.g, %.lr.ph.lr.ph ], [ %.sroa.017.3, %.outer ] ; 12 uses
  %i.p = add i64 %.sroa.017.0.ph150, %i.d
  %i.q = icmp ugt i64 %i.p, %4
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.017.0.ph150
  br i1 %i.q, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %umax283 = tail call i64 @llvm.umax.i64(i64 %.sroa.061.0.ph153, i64 16), !dbg !40341 ; 2 uses
  br label %bb.c, !dbg !40341

bb.c:                                             ; preds = %bb.d, %.lr.ph.split.us
  %.sroa.061.073.us = phi i64 [ %.sroa.061.0.ph153, %.lr.ph.split.us ], [ %i.s, %bb.d ] ; 2 uses
  %exitcond284.not = icmp eq i64 %.sroa.061.073.us, %umax283, !dbg !40387
  br i1 %exitcond284.not, label %.split.us, label %bb.d, !dbg !40387

bb.d:                                             ; preds = %bb.c
  %i.s = add nuw i64 %.sroa.061.073.us, 1, !dbg !40388 ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.l, !dbg !40386
  br i1 %i.t, label %bb.c, label %.outer._crit_edge, !dbg !40341

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.u = icmp ult i64 %.sroa.017.0.ph150, %i.i
  %.fr125 = freeze i1 %i.u
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.061.0.ph153, i64 16), !dbg !40389 ; 4 uses
  br i1 %.fr125, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.i
  %.sroa.061.073.us106 = phi i64 [ %i.v, %bb.i ], [ %.sroa.061.0.ph153, %.lr.ph.split ] ; 6 uses
  %i.v = add i64 %.sroa.061.073.us106, 1, !dbg !40388 ; 4 uses
  %exitcond.not = icmp eq i64 %.sroa.061.073.us106, %umax, !dbg !40387
  br i1 %exitcond.not, label %.split.us, label %bb.e, !dbg !40387

bb.e:                                             ; preds = %.lr.ph.split.split.us
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.061.073.us106, !dbg !40387
  %i.x = load i32, ptr %i.w, align 4, !dbg !40387, !noundef !664
  %i.y = sext i32 %i.x to i64, !dbg !40387        ; 3 uses
  %i.z = sub i64 %7, %i.y, !dbg !40390            ; 2 uses
  %i.aa = icmp uge i64 %i.z, %7, !dbg !40391
  %i.ab = icmp ult i64 %9, %i.y
  %or.cond4.us107 = or i1 %i.ab, %i.aa, !dbg !40391
  br i1 %or.cond4.us107, label %bb.i, label %bb.f, !dbg !40391

bb.f:                                             ; preds = %bb.e
  %i.ac = and i64 %i.z, %4, !dbg !40392           ; 7 uses
  %i.ad = add i64 %i.ac, %.sroa.017.0.ph150, !dbg !40393 ; 4 uses
  %i.ae = icmp ugt i64 %i.ad, %4, !dbg !40394
  br i1 %i.ae, label %bb.i, label %bb.g, !dbg !40394

bb.g:                                             ; preds = %bb.f
  %i.af = icmp ult i64 %i.ad, %3, !dbg !40395
  br i1 %i.af, label %bb.h, label %.split111.us, !dbg !40395

bb.h:                                             ; preds = %bb.g
  %i.ag = load i8, ptr %i.r, align 1, !dbg !40396, !noundef !664
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %i.ad, !dbg !40395
  %i.ai = load i8, ptr %i.ah, align 1, !dbg !40395, !noundef !664
  %.not96.us = icmp eq i8 %i.ag, %i.ai, !dbg !40396
  br i1 %.not96.us, label %.split114.us, label %bb.i, !dbg !40396

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.aj = icmp ult i64 %i.v, %i.l, !dbg !40386
  br i1 %i.aj, label %.lr.ph.split.split.us, label %.outer._crit_edge, !dbg !40341

.split114.us:                                     ; preds = %bb.h
  %.not.i126 = icmp samesign ugt i64 %i.ac, %3, !dbg !40397
  br i1 %.not.i126, label %bb.al, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit130, !dbg !40397, !prof !712

.outer._crit_edge:                                ; preds = %.outer, %bb.i, %bb.as, %bb.d, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit
  %.sroa.017.0.ph.lcssa72 = phi i64 [ %.sroa.017.0.ph150, %bb.as ], [ %i.g, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit ], [ %.sroa.017.0.ph150, %bb.i ], [ %.sroa.017.0.ph150, %bb.d ], [ %.sroa.017.3, %.outer ]
  %.sroa.012.0.ph.lcssa68 = phi i64 [ %.sroa.012.0.ph151, %bb.as ], [ %i.f, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit ], [ %.sroa.012.0.ph151, %bb.i ], [ %.sroa.012.0.ph151, %bb.d ], [ %.sroa.012.3, %.outer ]
  %.sroa.010.0.ph.lcssa64 = phi i1 [ %.sroa.010.0.ph152, %bb.as ], [ false, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit ], [ %.sroa.010.0.ph152, %bb.i ], [ %.sroa.010.0.ph152, %bb.d ], [ %.sroa.010.5, %.outer ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !40398, !noalias !40346
  store i32 0, ptr %i.a, align 4, !dbg !40399, !noalias !40346
  %.not.i.i = icmp samesign ult i64 %i.i, 4, !dbg !40400
  br i1 %.not.i.i, label %bb.j, label %_RNvXsn_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !40400, !prof !712

bb.j:                                             ; preds = %.outer._crit_edge
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @500) #18, !dbg !40401, !noalias !40347
  unreachable, !dbg !40401

_RNvXsn_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %.outer._crit_edge
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %i.a, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @501), !dbg !40402
  %i.ak = load i32, ptr %i.a, align 4, !dbg !40403, !noalias !40346
  %i.al = zext i32 %i.ak to i64, !dbg !40403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !40404, !noalias !40346
  %i.am = mul nuw nsw i64 %i.al, 506832829, !dbg !40405
  %i.an = lshr i64 %i.am, 18, !dbg !40406
  %i.ao = and i64 %i.an, 16383, !dbg !40406       ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !40407
  %.val104 = load i64, ptr %i.ap, align 8, !dbg !40407, !noundef !664 ; 2 uses
  %i.aq = icmp ult i64 %i.ao, %.val104, !dbg !40408
  br i1 %i.aq, label %bb.k, label %bb.n, !dbg !40408

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.as
  %.sroa.061.073 = phi i64 [ %i.ar, %bb.as ], [ %.sroa.061.0.ph153, %.lr.ph.split ] ; 3 uses
  %i.ar = add nuw i64 %.sroa.061.073, 1, !dbg !40388 ; 2 uses
  %exitcond275.not = icmp eq i64 %.sroa.061.073, %umax, !dbg !40387
  br i1 %exitcond275.not, label %.split.us, label %bb.ai, !dbg !40387

bb.k:                                             ; preds = %_RNvXsn_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCsfISxE4fmY1Y_14polars_parquet.exit
  %.val = load ptr, ptr %0, align 8, !dbg !40407, !nonnull !664, !noundef !664
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %.val, i64 %i.ao, !dbg !40409 ; 3 uses
  %i.at = load i16, ptr %i.as, align 2, !dbg !40410, !noundef !664 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !40411
  %.val106 = load i64, ptr %i.au, align 8, !dbg !40411, !noundef !664 ; 2 uses
  %i.av = shl nuw nsw i64 %i.ao, 4, !dbg !40412   ; 3 uses
  %.not.i107 = icmp ugt i64 %i.av, %.val106, !dbg !40413
  br i1 %.not.i107, label %bb.l, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !40413, !prof !712

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @620) #18, !dbg !40414, !noalias !40348
  unreachable, !dbg !40414

_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !40415
  %.val105 = load ptr, ptr %i.aw, align 8, !dbg !40411, !nonnull !664, !noundef !664
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val105, i64 %i.av, !dbg !40416 ; 3 uses
  %i.ay = sub nuw nsw i64 %.val106, %i.av, !dbg !40417
  %.not.i111 = icmp ult i64 %i.ay, 16, !dbg !40418
  br i1 %.not.i111, label %bb.m, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit115, !dbg !40418, !prof !712

bb.m:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @621) #18, !dbg !40419, !noalias !40349
  unreachable, !dbg !40419

bb.n:                                             ; preds = %_RNvXsn_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ao, i64 noundef %.val104, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @619) #18, !dbg !40408
  unreachable, !dbg !40408

_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit115: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit
  %i.az = icmp eq i16 %i.at, 0, !dbg !40420
  br i1 %i.az, label %.loopexit.split, label %bb.o, !dbg !40420

.loopexit.split:                                  ; preds = %.split161.us, %bb.v, %.preheader, %bb.r, %bb.y, %bb.o, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit115
  %.sroa.010.1 = phi i1 [ %.sroa.010.0.ph.lcssa64, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit115 ], [ %.sroa.010.0.ph.lcssa64, %bb.o ], [ %.sroa.010.2192, %bb.r ], [ %.sroa.010.2192, %bb.y ], [ %.sroa.010.3, %bb.v ], [ %.sroa.010.2192, %.split161.us ], [ %.sroa.010.2192, %.preheader ], !dbg !40421
  %i.ba = and i16 %i.at, 15, !dbg !40422
  %i.bb = zext nneg i16 %i.ba to i64, !dbg !40422
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bb, !dbg !40423
  %i.bd = trunc i64 %7 to i32, !dbg !40423
  store i32 %i.bd, ptr %i.bc, align 4, !dbg !40423
  %i.be = load i16, ptr %i.as, align 2, !dbg !40424, !noundef !664
  %i.bf = add i16 %i.be, 1, !dbg !40425
  store i16 %i.bf, ptr %i.as, align 2, !dbg !40426
  br i1 %.sroa.010.1, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references24SearchInStaticDictionaryINtB2_9AdvHasherNtB2_6HQ5SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.z, !dbg !40427

bb.o:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit115
  %i.bg = call i16 @llvm.umax.i16(i16 %i.at, i16 16), !dbg !40428
  %i.bh = zext i16 %i.bg to i64, !dbg !40428
  %.sroa.0.0.i = add nsw i64 %i.bh, -16, !dbg !40428 ; 4 uses
  %i.bi = zext i16 %i.at to i64, !dbg !40429      ; 2 uses
  %.old1188 = icmp samesign ult i64 %.sroa.0.0.i, %i.bi, !dbg !40430
  br i1 %.old1188, label %.preheader.lr.ph, label %.loopexit.split, !dbg !40430

.preheader.lr.ph:                                 ; preds = %bb.o
  %i.bj = lshr i32 %i.c, 2
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %.preheader, !dbg !40430

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.v
  %.sroa.010.2192 = phi i1 [ %.sroa.010.0.ph.lcssa64, %.preheader.lr.ph ], [ %.sroa.010.3, %bb.v ] ; 6 uses
  %.sroa.012.1191 = phi i64 [ %.sroa.012.0.ph.lcssa68, %.preheader.lr.ph ], [ %.sroa.012.2, %bb.v ] ; 3 uses
  %.sroa.017.1190 = phi i64 [ %.sroa.017.0.ph.lcssa72, %.preheader.lr.ph ], [ %.sroa.017.2, %bb.v ] ; 8 uses
  %.sroa.045.0189 = phi i64 [ %i.bi, %.preheader.lr.ph ], [ %i.bq, %bb.v ] ; 2 uses
  %i.bm = add i64 %.sroa.017.1190, %i.d
  %i.bn = icmp ugt i64 %i.bm, %4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.017.1190
  br i1 %i.bn, label %.loopexit.split, label %.preheader.split, !dbg !40431

.preheader.split:                                 ; preds = %.preheader
  %i.bp = icmp ult i64 %.sroa.017.1190, %i.i
  %.fr168 = freeze i1 %i.bp
  br i1 %.fr168, label %.preheader.split.split.us, label %.preheader.split.split

.preheader.split.split.us:                        ; preds = %.preheader.split, %bb.r
  %.sroa.045.1.us = phi i64 [ %i.bq, %bb.r ], [ %.sroa.045.0189, %.preheader.split ], !dbg !40432
  %i.bq = add nsw i64 %.sroa.045.1.us, -1, !dbg !40433 ; 5 uses
  %i.br = and i64 %i.bq, 15, !dbg !40434
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.br, !dbg !40435
  %i.bt = load i32, ptr %i.bs, align 4, !dbg !40435, !noundef !664
  %i.bu = zext i32 %i.bt to i64, !dbg !40435      ; 2 uses
  %i.bv = sub i64 %7, %i.bu, !dbg !40436          ; 4 uses
  %i.bw = and i64 %4, %i.bu, !dbg !40437          ; 7 uses
  %i.bx = add i64 %i.bw, %.sroa.017.1190, !dbg !40438 ; 4 uses
  %i.by = icmp ugt i64 %i.bx, %4, !dbg !40439
  br i1 %i.by, label %bb.r, label %bb.p, !dbg !40439

bb.p:                                             ; preds = %.preheader.split.split.us
  %i.bz = icmp ult i64 %i.bx, %3, !dbg !40440
  br i1 %i.bz, label %bb.q, label %.split158.us, !dbg !40440

bb.q:                                             ; preds = %bb.p
  %i.ca = load i8, ptr %i.bo, align 1, !dbg !40441, !noundef !664
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx, !dbg !40440
  %i.cc = load i8, ptr %i.cb, align 1, !dbg !40440, !noundef !664
  %.not.us = icmp eq i8 %i.ca, %i.cc, !dbg !40441
  br i1 %.not.us, label %.split161.us, label %bb.r, !dbg !40441

bb.r:                                             ; preds = %bb.q, %.preheader.split.split.us
  %i.cd = icmp ule i64 %i.bv, %9, !dbg !40442
  %i.ce = icmp ugt i64 %i.bq, %.sroa.0.0.i
  %or.cond2.us = and i1 %i.ce, %i.cd, !dbg !40442
  br i1 %or.cond2.us, label %.preheader.split.split.us, label %.loopexit.split, !dbg !40442

.split161.us:                                     ; preds = %bb.q
  %i.cf = icmp ugt i64 %i.bv, %9, !dbg !40443
  br i1 %i.cf, label %.loopexit.split, label %bb.t, !dbg !40443

.preheader.split.split:                           ; preds = %.preheader.split, %bb.y
  %.sroa.045.1 = phi i64 [ %i.cg, %bb.y ], [ %.sroa.045.0189, %.preheader.split ], !dbg !40432
  %i.cg = add nsw i64 %.sroa.045.1, -1, !dbg !40433 ; 3 uses
  %i.ch = and i64 %i.cg, 15, !dbg !40434
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ch, !dbg !40435
  %i.cj = load i32, ptr %i.ci, align 4, !dbg !40435, !noundef !664
  %i.ck = zext i32 %i.cj to i64, !dbg !40435      ; 2 uses
  %i.cl = and i64 %4, %i.ck, !dbg !40437
  %i.cm = add i64 %i.cl, %.sroa.017.1190, !dbg !40438
  %i.cn = icmp ugt i64 %i.cm, %4, !dbg !40439
  br i1 %i.cn, label %bb.y, label %bb.s, !dbg !40439

bb.s:                                             ; preds = %.preheader.split.split
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.017.1190, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @625) #18, !dbg !40441
  unreachable, !dbg !40441

.split158.us:                                     ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bx, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @626) #18, !dbg !40440
  unreachable, !dbg !40440

bb.t:                                             ; preds = %.split161.us
  %.not.i116 = icmp samesign ugt i64 %i.bw, %3, !dbg !40444
  br i1 %.not.i116, label %bb.u, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit120, !dbg !40444, !prof !712

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @627) #18, !dbg !40445, !noalias !40354
  unreachable, !dbg !40445

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit120: ; preds = %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %i.bw, !dbg !40446
  %i.cp = sub nuw nsw i64 %3, %i.bw, !dbg !40447
  %i.cq = call noundef i64 @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc11static_dict28FindMatchLengthWithLimitMin4(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef %i.cp, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.i, i64 noundef %8), !dbg !40448 ; 3 uses
  %i.cr = icmp eq i64 %i.cq, 0, !dbg !40449
  br i1 %i.cr, label %bb.v, label %bb.w, !dbg !40449

bb.v:                                             ; preds = %bb.x, %bb.w, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit120
  %.sroa.017.2 = phi i64 [ %.sroa.017.1190, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit120 ], [ %.sroa.057.0, %bb.x ], [ %.sroa.017.1190, %bb.w ], !dbg !40450
  %.sroa.012.2 = phi i64 [ %.sroa.012.1191, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit120 ], [ %i.da, %bb.x ], [ %.sroa.012.1191, %bb.w ], !dbg !40451
  %.sroa.010.3 = phi i1 [ %.sroa.010.2192, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit120 ], [ true, %bb.x ], [ %.sroa.010.2192, %bb.w ], !dbg !40452 ; 2 uses
  %.old1 = icmp ugt i64 %i.bq, %.sroa.0.0.i, !dbg !40430
  br i1 %.old1, label %.preheader, label %.loopexit.split, !dbg !40430

bb.w:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit120
  %i.cs = icmp ult i64 %i.bw, %5
  %i.ct = add i64 %i.cq, %i.bw
  %i.cu = icmp ugt i64 %i.ct, %5
  %or.cond100 = and i1 %i.cs, %i.cu, !dbg !40453
  %i.cv = sub i64 %5, %i.bw, !dbg !40453
  %.sroa.057.0 = select i1 %or.cond100, i64 %i.cv, i64 %i.cq, !dbg !40453 ; 3 uses
  %i.cw = mul i64 %.sroa.057.0, %i.bk, !dbg !40454
  %i.cx = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bv, i1 false), !dbg !40455
  %i.cy = xor i64 %i.cx, 63, !dbg !40456
  %.neg = mul nsw i64 %i.cy, -30, !dbg !40457
  %i.cz = add nsw i64 %.neg, 1920, !dbg !40458
  %i.da = add i64 %i.cz, %i.cw, !dbg !40459       ; 3 uses
  %i.db = icmp ult i64 %.sroa.012.1191, %i.da, !dbg !40460
  br i1 %i.db, label %bb.x, label %bb.v, !dbg !40460

bb.x:                                             ; preds = %bb.w
  store i64 %.sroa.057.0, ptr %11, align 8, !dbg !40461
  store i64 %i.bv, ptr %i.bl, align 8, !dbg !40462
  store i64 %i.da, ptr %i.e, align 8, !dbg !40463
  br label %bb.v, !dbg !40464

bb.y:                                             ; preds = %.preheader.split.split
  %i.dc = sub i64 %7, %i.ck, !dbg !40436
  %i.dd = icmp ule i64 %i.dc, %9, !dbg !40442
  %i.de = icmp ugt i64 %i.cg, %.sroa.0.0.i
  %or.cond2 = and i1 %i.de, %i.dd, !dbg !40442
  br i1 %or.cond2, label %.preheader.split.split, label %.loopexit.split, !dbg !40442

bb.z:                                             ; preds = %.loopexit.split
  %.not95 = icmp eq ptr %1, null, !dbg !40465
  br i1 %.not95, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references24SearchInStaticDictionaryINtB2_9AdvHasherNtB2_6HQ5SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit125, !dbg !40466

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references24SearchInStaticDictionaryINtB2_9AdvHasherNtB2_6HQ5SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.af, %bb.ae, %bb.ad, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit125, %bb.z, %.loopexit.split
  %.sroa.010.4 = phi i1 [ true, %.loopexit.split ], [ false, %bb.z ], [ false, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit125 ], [ %.sroa.0.2.i, %bb.ad ], [ %.sroa.0.2.i, %bb.ae ], [ true, %bb.af ], !dbg !40452
  ret i1 %.sroa.010.4, !dbg !40467

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit125: ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !40365), !dbg !40468
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !40469 ; 3 uses
  %i.dg = load i64, ptr %i.df, align 8, !dbg !40469, !alias.scope !40365, !noalias !40366, !noundef !664 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !40470 ; 3 uses
  %i.di = load i64, ptr %i.dh, align 8, !dbg !40470, !alias.scope !40365, !noalias !40366, !noundef !664 ; 3 uses
  %i.dj = lshr i64 %i.di, 7, !dbg !40470
  %i.dk = icmp ult i64 %i.dg, %i.dj, !dbg !40469
  br i1 %i.dk, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references24SearchInStaticDictionaryINtB2_9AdvHasherNtB2_6HQ5SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.aa, !dbg !40469

bb.aa:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit125
  %i.dl = call noundef i32 @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references6Hash14(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 0, -9223372036854775808) %i.i), !dbg !40471, !noalias !40367
  %i.dm = shl i32 %i.dl, 1, !dbg !40472           ; 2 uses
  %i.dn = zext i32 %i.dm to i64, !dbg !40473      ; 2 uses
  %exitcond.not.i = icmp ugt i32 %i.dm, 32767, !dbg !40474
  br i1 %exitcond.not.i, label %bb.ac, label %bb.ab, !dbg !40474

bb.ab:                                            ; preds = %bb.aa
  %i.do = getelementptr inbounds nuw [2 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc15dictionary_hash21kStaticDictionaryHash, i64 %i.dn, !dbg !40474 ; 2 uses
  %i.dp = load i16, ptr %i.do, align 2, !dbg !40474, !noalias !40368, !noundef !664 ; 2 uses
  %i.dq = add i64 %i.di, 1, !dbg !40475
  store i64 %i.dq, ptr %i.dh, align 8, !dbg !40476, !alias.scope !40365, !noalias !40366
  %i.dr = icmp eq i16 %i.dp, 0, !dbg !40477
  br i1 %i.dr, label %bb.ad, label %bb.ag, !dbg !40477

bb.ac:                                            ; preds = %bb.aa
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dn, i64 noundef 32768, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #18, !dbg !40474, !noalias !40367
  unreachable, !dbg !40474

bb.ad:                                            ; preds = %bb.ah, %bb.ag, %bb.ab
  %i.ds = phi i64 [ %i.dg, %bb.ab ], [ %i.dg, %bb.ag ], [ %i.ee, %bb.ah ]
  %.sroa.0.2.i = phi i1 [ false, %bb.ab ], [ false, %bb.ag ], [ true, %bb.ah ], !dbg !40478 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 2, !dbg !40474
  %i.du = load i16, ptr %i.dt, align 2, !dbg !40474, !noalias !40368, !noundef !664 ; 2 uses
  %i.dv = add i64 %i.di, 2, !dbg !40475
  store i64 %i.dv, ptr %i.dh, align 8, !dbg !40476, !alias.scope !40365, !noalias !40366
  %i.dw = icmp eq i16 %i.du, 0, !dbg !40477
  br i1 %i.dw, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references24SearchInStaticDictionaryINtB2_9AdvHasherNtB2_6HQ5SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.ae, !dbg !40477

bb.ae:                                            ; preds = %bb.ad
  %i.dx = zext i16 %i.du to i64, !dbg !40474
  %i.dy = call noundef i32 @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references24TestStaticDictionaryItem(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.dx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 0, -9223372036854775808) %i.i, i64 noundef %8, i64 noundef %9, i64 noundef %10, i32 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %11), !dbg !40479, !noalias !40365
  %i.dz = icmp eq i32 %i.dy, 0, !dbg !40480
  br i1 %i.dz, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references24SearchInStaticDictionaryINtB2_9AdvHasherNtB2_6HQ5SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.af, !dbg !40480

bb.af:                                            ; preds = %bb.ae
  %i.ea = add i64 %i.ds, 1, !dbg !40481
  store i64 %i.ea, ptr %i.df, align 8, !dbg !40482, !alias.scope !40365, !noalias !40366
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references24SearchInStaticDictionaryINtB2_9AdvHasherNtB2_6HQ5SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !40483

bb.ag:                                            ; preds = %bb.ab
  %i.eb = zext i16 %i.dp to i64, !dbg !40474
  %i.ec = call noundef i32 @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references24TestStaticDictionaryItem(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.eb, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 0, -9223372036854775808) %i.i, i64 noundef %8, i64 noundef %9, i64 noundef %10, i32 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %11), !dbg !40479, !noalias !40365
  %i.ed = icmp eq i32 %i.ec, 0, !dbg !40480
  br i1 %i.ed, label %bb.ad, label %bb.ah, !dbg !40480

bb.ah:                                            ; preds = %bb.ag
  %i.ee = add i64 %i.dg, 1, !dbg !40481           ; 2 uses
  store i64 %i.ee, ptr %i.df, align 8, !dbg !40482, !alias.scope !40365, !noalias !40366
  br label %bb.ad, !dbg !40483

bb.ai:                                            ; preds = %.lr.ph.split.split
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.061.073, !dbg !40387
  %i.eg = load i32, ptr %i.ef, align 4, !dbg !40387, !noundef !664
  %i.eh = sext i32 %i.eg to i64, !dbg !40387      ; 2 uses
  %i.ei = sub i64 %7, %i.eh, !dbg !40390          ; 2 uses
  %i.ej = icmp uge i64 %i.ei, %7, !dbg !40391
  %i.ek = icmp ult i64 %9, %i.eh
  %or.cond4 = or i1 %i.ek, %i.ej, !dbg !40391
  br i1 %or.cond4, label %bb.as, label %bb.aj, !dbg !40391

.split.us:                                        ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split, %bb.c
  %.us-phi = phi i64 [ %umax, %.lr.ph.split.split ], [ %umax283, %bb.c ], [ %umax, %.lr.ph.split.split.us ], !dbg !40387
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef 16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @629) #18, !dbg !40387
  unreachable, !dbg !40387

bb.aj:                                            ; preds = %bb.ai
  %i.el = and i64 %i.ei, %4, !dbg !40392
  %i.em = add i64 %i.el, %.sroa.017.0.ph150, !dbg !40393
  %i.en = icmp ugt i64 %i.em, %4, !dbg !40394
  br i1 %i.en, label %bb.as, label %bb.ak, !dbg !40394

bb.ak:                                            ; preds = %bb.aj
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.017.0.ph150, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @630) #18, !dbg !40396
  unreachable, !dbg !40396

.split111.us:                                     ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @631) #18, !dbg !40395
  unreachable, !dbg !40395

bb.al:                                            ; preds = %.split114.us
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @632) #18, !dbg !40484, !noalias !40369
  unreachable, !dbg !40484

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit130: ; preds = %.split114.us
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac, !dbg !40485
  %i.ep = sub nuw nsw i64 %3, %i.ac, !dbg !40486
  %i.eq = tail call noundef i64 @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc11static_dict24FindMatchLengthWithLimit(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.eo, i64 noundef %i.ep, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.i, i64 noundef %8), !dbg !40487 ; 4 uses
  %i.er = icmp ugt i64 %i.eq, 2, !dbg !40488
  br i1 %i.er, label %bb.an, label %bb.am, !dbg !40488

bb.am:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit130
  %i.es = icmp eq i64 %i.eq, 2, !dbg !40489
  %i.et = icmp samesign ult i64 %.sroa.061.073.us106, 2
  %or.cond = and i1 %i.et, %i.es, !dbg !40489
  br i1 %or.cond, label %bb.an, label %.outer, !dbg !40489

bb.an:                                            ; preds = %bb.am, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit130
  %i.eu = icmp ult i64 %i.ac, %5
  %i.ev = add i64 %i.eq, %i.ac
  %i.ew = icmp ugt i64 %i.ev, %5
  %or.cond103 = and i1 %i.eu, %i.ew, !dbg !40490
  %i.ex = sub i64 %5, %i.ac, !dbg !40490
  %.sroa.036.0 = select i1 %or.cond103, i64 %i.ex, i64 %i.eq, !dbg !40490 ; 3 uses
  %i.ey = mul i64 %.sroa.036.0, %i.n, !dbg !40491 ; 2 uses
  %i.ez = add i64 %i.ey, 1935, !dbg !40492        ; 2 uses
  %i.fa = icmp ult i64 %.sroa.012.0.ph151, %i.ez, !dbg !40493
  br i1 %i.fa, label %bb.ao, label %.outer, !dbg !40493

.outer:                                           ; preds = %bb.ar, %bb.ap, %bb.an, %bb.am
  %.sroa.017.3 = phi i64 [ %.sroa.036.0, %bb.ar ], [ %.sroa.017.0.ph150, %bb.ap ], [ %.sroa.017.0.ph150, %bb.an ], [ %.sroa.017.0.ph150, %bb.am ], !dbg !40450 ; 2 uses
  %.sroa.012.3 = phi i64 [ %.sroa.041.0, %bb.ar ], [ %.sroa.012.0.ph151, %bb.ap ], [ %.sroa.012.0.ph151, %bb.an ], [ %.sroa.012.0.ph151, %bb.am ], !dbg !40451 ; 2 uses
  %.sroa.010.5 = phi i1 [ true, %bb.ar ], [ %.sroa.010.0.ph152, %bb.ap ], [ %.sroa.010.0.ph152, %bb.an ], [ %.sroa.010.0.ph152, %bb.am ], !dbg !40452 ; 2 uses
  %i.fb = icmp ult i64 %i.v, %i.l, !dbg !40386
  br i1 %i.fb, label %.lr.ph, label %.outer._crit_edge, !dbg !40341

bb.ao:                                            ; preds = %bb.an
  %i.fc = icmp eq i64 %.sroa.061.073.us106, 0, !dbg !40494
  br i1 %i.fc, label %bb.ap, label %bb.aq, !dbg !40494

bb.ap:                                            ; preds = %bb.aq, %bb.ao
  %.sroa.041.0 = phi i64 [ %i.ez, %bb.ao ], [ %i.fi, %bb.aq ], !dbg !40495 ; 3 uses
  %i.fd = icmp ult i64 %.sroa.012.0.ph151, %.sroa.041.0, !dbg !40496
  br i1 %i.fd, label %bb.ar, label %.outer, !dbg !40496

bb.aq:                                            ; preds = %bb.ao
  %i.fe = and i64 %.sroa.061.073.us106, 14, !dbg !40497
  %i.ff = lshr i64 117264, %i.fe, !dbg !40498
  %i.fg = and i64 %i.ff, 14, !dbg !40499
  %i.fh = sub i64 %i.ey, %i.fg, !dbg !40500
  %i.fi = add i64 %i.fh, 1896, !dbg !40500
  br label %bb.ap, !dbg !40501

bb.ar:                                            ; preds = %bb.ap
  store i64 %.sroa.036.0, ptr %11, align 8, !dbg !40502
  store i64 %i.y, ptr %i.o, align 8, !dbg !40503
  store i64 %.sroa.041.0, ptr %i.e, align 8, !dbg !40504
  br label %.outer, !dbg !40505

bb.as:                                            ; preds = %bb.aj, %bb.ai
  %i.fj = icmp ult i64 %i.ar, %i.l, !dbg !40386
  br i1 %i.fj, label %.lr.ph.split.split, label %.outer._crit_edge, !dbg !40341
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsn_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, 4294967296) %3, i64 noundef %4) unnamed_addr #0 !dbg !526 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = and i64 %4, %3, !dbg !40533              ; 3 uses
  %.not.i = icmp samesign ugt i64 %i.b, %2, !dbg !40534
  br i1 %.not.i, label %bb.b, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !40534, !prof !712

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @633) #18, !dbg !40535, !noalias !40529
  unreachable, !dbg !40535

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.a
  %i.c = sub nuw nsw i64 %2, %i.b, !dbg !40536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !40537, !noalias !40530
  store i32 0, ptr %i.a, align 4, !dbg !40538, !noalias !40530
  %.not.i.i = icmp samesign ult i64 %i.c, 4, !dbg !40539
  br i1 %.not.i.i, label %bb.c, label %_RNvXsn_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !40539, !prof !712

bb.c:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @500) #18, !dbg !40540, !noalias !40531
  unreachable, !dbg !40540

_RNvXsn_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.b, !dbg !40541
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %i.a, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @501), !dbg !40542
  %i.e = load i32, ptr %i.a, align 4, !dbg !40543, !noalias !40530
  %i.f = zext i32 %i.e to i64, !dbg !40543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !40544, !noalias !40530
  %i.g = mul nuw nsw i64 %i.f, 506832829, !dbg !40545
  %i.h = lshr i64 %i.g, 18, !dbg !40546
  %i.i = and i64 %i.h, 16383, !dbg !40546         ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !40547
  %.val9 = load i64, ptr %i.j, align 8, !dbg !40547, !noundef !664 ; 2 uses
  %i.k = icmp ult i64 %i.i, %.val9, !dbg !40548
end_hunk_0
begin_hunk_1_@_RNvXsn_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ5SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCsfISxE4fmY1Y_14polars_parquet:bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %.val7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @635) #18, !dbg !40553
  unreachable, !dbg !40553

bb.g:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !40553
  %.val6 = load ptr, ptr %i.t, align 8, !dbg !40552, !nonnull !664, !noundef !664
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.val6, i64 %i.q, !dbg !40553
  %i.v = trunc i64 %4 to i32, !dbg !40553
  store i32 %i.v, ptr %i.u, align 4, !dbg !40553
  %i.w = load i16, ptr %i.l, align 2, !dbg !40554, !noundef !664
  %i.x = add i16 %i.w, 1, !dbg !40555
  store i16 %i.x, ptr %i.l, align 2, !dbg !40556
  ret void, !dbg !40557
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsn_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher16FindLongestMatchCsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef range(i64 0, 4294967296) %4, i64 noundef %5, ptr noalias noundef nonnull readonly align 4 captures(none) %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, ptr noalias noundef nonnull align 8 dereferenceable(32) initializes((8, 16)) %11) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !40558 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !40719
  %i.c = load i32, ptr %i.b, align 8, !dbg !40719, !noundef !664 ; 4 uses
  %i.d = and i64 %7, %4, !dbg !40720              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 24, !dbg !40721 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !40721, !noundef !664 ; 2 uses
  %i.g = load i64, ptr %11, align 8, !dbg !40722, !noundef !664 ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.d, %3, !dbg !40723
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false), !dbg !40724
  br i1 %.not.i, label %bb.b, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !40723, !prof !712

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @618) #18, !dbg !40725, !noalias !40680
  unreachable, !dbg !40725

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.d, !dbg !40726 ; 8 uses
  %i.i = sub nuw nsw i64 %3, %i.d, !dbg !40727    ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !40728
  %i.k = load i32, ptr %i.j, align 8, !dbg !40728, !noundef !664 ; 2 uses
  %i.l = sext i32 %i.k to i64, !dbg !40728        ; 4 uses
  %.not = icmp eq i32 %i.k, 0, !dbg !40729
  br i1 %.not, label %.outer._crit_edge, label %.lr.ph.lr.ph, !dbg !40684

.lr.ph.lr.ph:                                     ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit
  %i.m = lshr i32 %i.c, 2
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %.lr.ph, !dbg !40684

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.061.0.ph153 = phi i64 [ 0, %.lr.ph.lr.ph ], [ %i.v, %.outer ] ; 5 uses
  %.sroa.010.0.ph152 = phi i1 [ false, %.lr.ph.lr.ph ], [ %.sroa.010.5, %.outer ] ; 6 uses
  %.sroa.012.0.ph151 = phi i64 [ %i.f, %.lr.ph.lr.ph ], [ %.sroa.012.3, %.outer ] ; 8 uses
  %.sroa.017.0.ph150 = phi i64 [ %i.g, %.lr.ph.lr.ph ], [ %.sroa.017.3, %.outer ] ; 12 uses
  %i.p = add i64 %.sroa.017.0.ph150, %i.d
  %i.q = icmp ugt i64 %i.p, %4
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.017.0.ph150
  br i1 %i.q, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %umax283 = tail call i64 @llvm.umax.i64(i64 %.sroa.061.0.ph153, i64 16), !dbg !40684 ; 2 uses
  br label %bb.c, !dbg !40684

bb.c:                                             ; preds = %bb.d, %.lr.ph.split.us
  %.sroa.061.073.us = phi i64 [ %.sroa.061.0.ph153, %.lr.ph.split.us ], [ %i.s, %bb.d ] ; 2 uses
  %exitcond284.not = icmp eq i64 %.sroa.061.073.us, %umax283, !dbg !40730
  br i1 %exitcond284.not, label %.split.us, label %bb.d, !dbg !40730

bb.d:                                             ; preds = %bb.c
  %i.s = add nuw i64 %.sroa.061.073.us, 1, !dbg !40731 ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.l, !dbg !40729
  br i1 %i.t, label %bb.c, label %.outer._crit_edge, !dbg !40684

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.u = icmp ult i64 %.sroa.017.0.ph150, %i.i
  %.fr125 = freeze i1 %i.u
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.061.0.ph153, i64 16), !dbg !40732 ; 4 uses
  br i1 %.fr125, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.i
  %.sroa.061.073.us106 = phi i64 [ %i.v, %bb.i ], [ %.sroa.061.0.ph153, %.lr.ph.split ] ; 6 uses
  %i.v = add i64 %.sroa.061.073.us106, 1, !dbg !40731 ; 4 uses
  %exitcond.not = icmp eq i64 %.sroa.061.073.us106, %umax, !dbg !40730
  br i1 %exitcond.not, label %.split.us, label %bb.e, !dbg !40730

bb.e:                                             ; preds = %.lr.ph.split.split.us
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.061.073.us106, !dbg !40730
  %i.x = load i32, ptr %i.w, align 4, !dbg !40730, !noundef !664
  %i.y = sext i32 %i.x to i64, !dbg !40730        ; 3 uses
  %i.z = sub i64 %7, %i.y, !dbg !40733            ; 2 uses
  %i.aa = icmp uge i64 %i.z, %7, !dbg !40734
  %i.ab = icmp ult i64 %9, %i.y
  %or.cond4.us107 = or i1 %i.ab, %i.aa, !dbg !40734
  br i1 %or.cond4.us107, label %bb.i, label %bb.f, !dbg !40734

bb.f:                                             ; preds = %bb.e
  %i.ac = and i64 %i.z, %4, !dbg !40735           ; 7 uses
  %i.ad = add i64 %i.ac, %.sroa.017.0.ph150, !dbg !40736 ; 4 uses
  %i.ae = icmp ugt i64 %i.ad, %4, !dbg !40737
  br i1 %i.ae, label %bb.i, label %bb.g, !dbg !40737

bb.g:                                             ; preds = %bb.f
  %i.af = icmp ult i64 %i.ad, %3, !dbg !40738
  br i1 %i.af, label %bb.h, label %.split111.us, !dbg !40738

bb.h:                                             ; preds = %bb.g
  %i.ag = load i8, ptr %i.r, align 1, !dbg !40739, !noundef !664
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %i.ad, !dbg !40738
  %i.ai = load i8, ptr %i.ah, align 1, !dbg !40738, !noundef !664
  %.not96.us = icmp eq i8 %i.ag, %i.ai, !dbg !40739
  br i1 %.not96.us, label %.split114.us, label %bb.i, !dbg !40739

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.aj = icmp ult i64 %i.v, %i.l, !dbg !40729
  br i1 %i.aj, label %.lr.ph.split.split.us, label %.outer._crit_edge, !dbg !40684

.split114.us:                                     ; preds = %bb.h
  %.not.i126 = icmp samesign ugt i64 %i.ac, %3, !dbg !40740
  br i1 %.not.i126, label %bb.al, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit130, !dbg !40740, !prof !712

.outer._crit_edge:                                ; preds = %.outer, %bb.i, %bb.as, %bb.d, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit
  %.sroa.017.0.ph.lcssa72 = phi i64 [ %.sroa.017.0.ph150, %bb.as ], [ %i.g, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit ], [ %.sroa.017.0.ph150, %bb.i ], [ %.sroa.017.0.ph150, %bb.d ], [ %.sroa.017.3, %.outer ]
  %.sroa.012.0.ph.lcssa68 = phi i64 [ %.sroa.012.0.ph151, %bb.as ], [ %i.f, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit ], [ %.sroa.012.0.ph151, %bb.i ], [ %.sroa.012.0.ph151, %bb.d ], [ %.sroa.012.3, %.outer ]
  %.sroa.010.0.ph.lcssa64 = phi i1 [ %.sroa.010.0.ph152, %bb.as ], [ false, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit ], [ %.sroa.010.0.ph152, %bb.i ], [ %.sroa.010.0.ph152, %bb.d ], [ %.sroa.010.5, %.outer ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !40741, !noalias !40689
  store i32 0, ptr %i.a, align 4, !dbg !40742, !noalias !40689
  %.not.i.i = icmp samesign ult i64 %i.i, 4, !dbg !40743
  br i1 %.not.i.i, label %bb.j, label %_RNvXsn_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !40743, !prof !712

bb.j:                                             ; preds = %.outer._crit_edge
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @500) #18, !dbg !40744, !noalias !40690
  unreachable, !dbg !40744

_RNvXsn_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %.outer._crit_edge
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %i.a, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @501), !dbg !40745
  %i.ak = load i32, ptr %i.a, align 4, !dbg !40746, !noalias !40689
  %i.al = zext i32 %i.ak to i64, !dbg !40746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !40747, !noalias !40689
  %i.am = mul nuw nsw i64 %i.al, 506832829, !dbg !40748
  %i.an = lshr i64 %i.am, 17, !dbg !40749
  %i.ao = and i64 %i.an, 32767, !dbg !40749       ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !40750
  %.val104 = load i64, ptr %i.ap, align 8, !dbg !40750, !noundef !664 ; 2 uses
  %i.aq = icmp ult i64 %i.ao, %.val104, !dbg !40751
  br i1 %i.aq, label %bb.k, label %bb.n, !dbg !40751

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.as
  %.sroa.061.073 = phi i64 [ %i.ar, %bb.as ], [ %.sroa.061.0.ph153, %.lr.ph.split ] ; 3 uses
  %i.ar = add nuw i64 %.sroa.061.073, 1, !dbg !40731 ; 2 uses
  %exitcond275.not = icmp eq i64 %.sroa.061.073, %umax, !dbg !40730
  br i1 %exitcond275.not, label %.split.us, label %bb.ai, !dbg !40730

bb.k:                                             ; preds = %_RNvXsn_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCsfISxE4fmY1Y_14polars_parquet.exit
  %.val = load ptr, ptr %0, align 8, !dbg !40750, !nonnull !664, !noundef !664
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %.val, i64 %i.ao, !dbg !40752 ; 3 uses
  %i.at = load i16, ptr %i.as, align 2, !dbg !40753, !noundef !664 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !40754
  %.val106 = load i64, ptr %i.au, align 8, !dbg !40754, !noundef !664 ; 2 uses
  %i.av = shl nuw nsw i64 %i.ao, 6, !dbg !40755   ; 3 uses
  %.not.i107 = icmp ugt i64 %i.av, %.val106, !dbg !40756
  br i1 %.not.i107, label %bb.l, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !40756, !prof !712

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @620) #18, !dbg !40757, !noalias !40691
  unreachable, !dbg !40757

_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !40758
  %.val105 = load ptr, ptr %i.aw, align 8, !dbg !40754, !nonnull !664, !noundef !664
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val105, i64 %i.av, !dbg !40759 ; 3 uses
  %i.ay = sub nuw nsw i64 %.val106, %i.av, !dbg !40760
  %.not.i111 = icmp ult i64 %i.ay, 64, !dbg !40761
  br i1 %.not.i111, label %bb.m, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit115, !dbg !40761, !prof !712

bb.m:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @621) #18, !dbg !40762, !noalias !40692
  unreachable, !dbg !40762

bb.n:                                             ; preds = %_RNvXsn_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ao, i64 noundef %.val104, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @619) #18, !dbg !40751
  unreachable, !dbg !40751

_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit115: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit
  %i.az = icmp eq i16 %i.at, 0, !dbg !40763
  br i1 %i.az, label %.loopexit.split, label %bb.o, !dbg !40763

.loopexit.split:                                  ; preds = %.split161.us, %bb.v, %.preheader, %bb.r, %bb.y, %bb.o, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit115
  %.sroa.010.1 = phi i1 [ %.sroa.010.0.ph.lcssa64, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit115 ], [ %.sroa.010.0.ph.lcssa64, %bb.o ], [ %.sroa.010.2192, %bb.r ], [ %.sroa.010.2192, %bb.y ], [ %.sroa.010.3, %bb.v ], [ %.sroa.010.2192, %.split161.us ], [ %.sroa.010.2192, %.preheader ], !dbg !40764
  %i.ba = and i16 %i.at, 63, !dbg !40765
  %i.bb = zext nneg i16 %i.ba to i64, !dbg !40765
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bb, !dbg !40766
  %i.bd = trunc i64 %7 to i32, !dbg !40766
  store i32 %i.bd, ptr %i.bc, align 4, !dbg !40766
  %i.be = load i16, ptr %i.as, align 2, !dbg !40767, !noundef !664
  %i.bf = add i16 %i.be, 1, !dbg !40768
  store i16 %i.bf, ptr %i.as, align 2, !dbg !40769
  br i1 %.sroa.010.1, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references24SearchInStaticDictionaryINtB2_9AdvHasherNtB2_6HQ7SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.z, !dbg !40770

bb.o:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit115
  %i.bg = call i16 @llvm.umax.i16(i16 %i.at, i16 64), !dbg !40771
  %i.bh = zext i16 %i.bg to i64, !dbg !40771
  %.sroa.0.0.i = add nsw i64 %i.bh, -64, !dbg !40771 ; 4 uses
  %i.bi = zext i16 %i.at to i64, !dbg !40772      ; 2 uses
  %.old1188 = icmp samesign ult i64 %.sroa.0.0.i, %i.bi, !dbg !40773
  br i1 %.old1188, label %.preheader.lr.ph, label %.loopexit.split, !dbg !40773

.preheader.lr.ph:                                 ; preds = %bb.o
  %i.bj = lshr i32 %i.c, 2
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %.preheader, !dbg !40773

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.v
  %.sroa.010.2192 = phi i1 [ %.sroa.010.0.ph.lcssa64, %.preheader.lr.ph ], [ %.sroa.010.3, %bb.v ] ; 6 uses
  %.sroa.012.1191 = phi i64 [ %.sroa.012.0.ph.lcssa68, %.preheader.lr.ph ], [ %.sroa.012.2, %bb.v ] ; 3 uses
  %.sroa.017.1190 = phi i64 [ %.sroa.017.0.ph.lcssa72, %.preheader.lr.ph ], [ %.sroa.017.2, %bb.v ] ; 8 uses
  %.sroa.045.0189 = phi i64 [ %i.bi, %.preheader.lr.ph ], [ %i.bq, %bb.v ] ; 2 uses
  %i.bm = add i64 %.sroa.017.1190, %i.d
  %i.bn = icmp ugt i64 %i.bm, %4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.017.1190
  br i1 %i.bn, label %.loopexit.split, label %.preheader.split, !dbg !40774

.preheader.split:                                 ; preds = %.preheader
  %i.bp = icmp ult i64 %.sroa.017.1190, %i.i
  %.fr168 = freeze i1 %i.bp
  br i1 %.fr168, label %.preheader.split.split.us, label %.preheader.split.split

.preheader.split.split.us:                        ; preds = %.preheader.split, %bb.r
  %.sroa.045.1.us = phi i64 [ %i.bq, %bb.r ], [ %.sroa.045.0189, %.preheader.split ], !dbg !40775
  %i.bq = add nsw i64 %.sroa.045.1.us, -1, !dbg !40776 ; 5 uses
  %i.br = and i64 %i.bq, 63, !dbg !40777
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.br, !dbg !40778
  %i.bt = load i32, ptr %i.bs, align 4, !dbg !40778, !noundef !664
  %i.bu = zext i32 %i.bt to i64, !dbg !40778      ; 2 uses
  %i.bv = sub i64 %7, %i.bu, !dbg !40779          ; 4 uses
  %i.bw = and i64 %4, %i.bu, !dbg !40780          ; 7 uses
  %i.bx = add i64 %i.bw, %.sroa.017.1190, !dbg !40781 ; 4 uses
  %i.by = icmp ugt i64 %i.bx, %4, !dbg !40782
  br i1 %i.by, label %bb.r, label %bb.p, !dbg !40782

bb.p:                                             ; preds = %.preheader.split.split.us
  %i.bz = icmp ult i64 %i.bx, %3, !dbg !40783
  br i1 %i.bz, label %bb.q, label %.split158.us, !dbg !40783

bb.q:                                             ; preds = %bb.p
  %i.ca = load i8, ptr %i.bo, align 1, !dbg !40784, !noundef !664
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx, !dbg !40783
  %i.cc = load i8, ptr %i.cb, align 1, !dbg !40783, !noundef !664
  %.not.us = icmp eq i8 %i.ca, %i.cc, !dbg !40784
  br i1 %.not.us, label %.split161.us, label %bb.r, !dbg !40784

bb.r:                                             ; preds = %bb.q, %.preheader.split.split.us
  %i.cd = icmp ule i64 %i.bv, %9, !dbg !40785
  %i.ce = icmp ugt i64 %i.bq, %.sroa.0.0.i
  %or.cond2.us = and i1 %i.ce, %i.cd, !dbg !40785
  br i1 %or.cond2.us, label %.preheader.split.split.us, label %.loopexit.split, !dbg !40785

.split161.us:                                     ; preds = %bb.q
  %i.cf = icmp ugt i64 %i.bv, %9, !dbg !40786
  br i1 %i.cf, label %.loopexit.split, label %bb.t, !dbg !40786

.preheader.split.split:                           ; preds = %.preheader.split, %bb.y
  %.sroa.045.1 = phi i64 [ %i.cg, %bb.y ], [ %.sroa.045.0189, %.preheader.split ], !dbg !40775
  %i.cg = add nsw i64 %.sroa.045.1, -1, !dbg !40776 ; 3 uses
  %i.ch = and i64 %i.cg, 63, !dbg !40777
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ch, !dbg !40778
  %i.cj = load i32, ptr %i.ci, align 4, !dbg !40778, !noundef !664
  %i.ck = zext i32 %i.cj to i64, !dbg !40778      ; 2 uses
  %i.cl = and i64 %4, %i.ck, !dbg !40780
  %i.cm = add i64 %i.cl, %.sroa.017.1190, !dbg !40781
  %i.cn = icmp ugt i64 %i.cm, %4, !dbg !40782
  br i1 %i.cn, label %bb.y, label %bb.s, !dbg !40782

bb.s:                                             ; preds = %.preheader.split.split
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.017.1190, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @625) #18, !dbg !40784
  unreachable, !dbg !40784

.split158.us:                                     ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bx, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @626) #18, !dbg !40783
  unreachable, !dbg !40783

bb.t:                                             ; preds = %.split161.us
  %.not.i116 = icmp samesign ugt i64 %i.bw, %3, !dbg !40787
  br i1 %.not.i116, label %bb.u, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit120, !dbg !40787, !prof !712

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @627) #18, !dbg !40788, !noalias !40697
  unreachable, !dbg !40788

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit120: ; preds = %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %i.bw, !dbg !40789
  %i.cp = sub nuw nsw i64 %3, %i.bw, !dbg !40790
  %i.cq = call noundef i64 @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc11static_dict28FindMatchLengthWithLimitMin4(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef %i.cp, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.i, i64 noundef %8), !dbg !40791 ; 3 uses
  %i.cr = icmp eq i64 %i.cq, 0, !dbg !40792
  br i1 %i.cr, label %bb.v, label %bb.w, !dbg !40792

bb.v:                                             ; preds = %bb.x, %bb.w, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit120
  %.sroa.017.2 = phi i64 [ %.sroa.017.1190, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit120 ], [ %.sroa.057.0, %bb.x ], [ %.sroa.017.1190, %bb.w ], !dbg !40793
  %.sroa.012.2 = phi i64 [ %.sroa.012.1191, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit120 ], [ %i.da, %bb.x ], [ %.sroa.012.1191, %bb.w ], !dbg !40794
  %.sroa.010.3 = phi i1 [ %.sroa.010.2192, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit120 ], [ true, %bb.x ], [ %.sroa.010.2192, %bb.w ], !dbg !40795 ; 2 uses
  %.old1 = icmp ugt i64 %i.bq, %.sroa.0.0.i, !dbg !40773
  br i1 %.old1, label %.preheader, label %.loopexit.split, !dbg !40773

bb.w:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit120
  %i.cs = icmp ult i64 %i.bw, %5
  %i.ct = add i64 %i.cq, %i.bw
  %i.cu = icmp ugt i64 %i.ct, %5
  %or.cond100 = and i1 %i.cs, %i.cu, !dbg !40796
  %i.cv = sub i64 %5, %i.bw, !dbg !40796
  %.sroa.057.0 = select i1 %or.cond100, i64 %i.cv, i64 %i.cq, !dbg !40796 ; 3 uses
  %i.cw = mul i64 %.sroa.057.0, %i.bk, !dbg !40797
  %i.cx = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bv, i1 false), !dbg !40798
  %i.cy = xor i64 %i.cx, 63, !dbg !40799
  %.neg = mul nsw i64 %i.cy, -30, !dbg !40800
  %i.cz = add nsw i64 %.neg, 1920, !dbg !40801
  %i.da = add i64 %i.cz, %i.cw, !dbg !40802       ; 3 uses
  %i.db = icmp ult i64 %.sroa.012.1191, %i.da, !dbg !40803
  br i1 %i.db, label %bb.x, label %bb.v, !dbg !40803

bb.x:                                             ; preds = %bb.w
  store i64 %.sroa.057.0, ptr %11, align 8, !dbg !40804
  store i64 %i.bv, ptr %i.bl, align 8, !dbg !40805
  store i64 %i.da, ptr %i.e, align 8, !dbg !40806
  br label %bb.v, !dbg !40807

bb.y:                                             ; preds = %.preheader.split.split
  %i.dc = sub i64 %7, %i.ck, !dbg !40779
  %i.dd = icmp ule i64 %i.dc, %9, !dbg !40785
  %i.de = icmp ugt i64 %i.cg, %.sroa.0.0.i
  %or.cond2 = and i1 %i.de, %i.dd, !dbg !40785
  br i1 %or.cond2, label %.preheader.split.split, label %.loopexit.split, !dbg !40785

bb.z:                                             ; preds = %.loopexit.split
  %.not95 = icmp eq ptr %1, null, !dbg !40808
  br i1 %.not95, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references24SearchInStaticDictionaryINtB2_9AdvHasherNtB2_6HQ7SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit125, !dbg !40809

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references24SearchInStaticDictionaryINtB2_9AdvHasherNtB2_6HQ7SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.af, %bb.ae, %bb.ad, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit125, %bb.z, %.loopexit.split
  %.sroa.010.4 = phi i1 [ true, %.loopexit.split ], [ false, %bb.z ], [ false, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit125 ], [ %.sroa.0.2.i, %bb.ad ], [ %.sroa.0.2.i, %bb.ae ], [ true, %bb.af ], !dbg !40795
  ret i1 %.sroa.010.4, !dbg !40810

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit125: ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !40708), !dbg !40811
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !40812 ; 3 uses
  %i.dg = load i64, ptr %i.df, align 8, !dbg !40812, !alias.scope !40708, !noalias !40709, !noundef !664 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !40813 ; 3 uses
  %i.di = load i64, ptr %i.dh, align 8, !dbg !40813, !alias.scope !40708, !noalias !40709, !noundef !664 ; 3 uses
  %i.dj = lshr i64 %i.di, 7, !dbg !40813
  %i.dk = icmp ult i64 %i.dg, %i.dj, !dbg !40812
  br i1 %i.dk, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references24SearchInStaticDictionaryINtB2_9AdvHasherNtB2_6HQ7SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.aa, !dbg !40812

bb.aa:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit125
  %i.dl = call noundef i32 @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references6Hash14(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 0, -9223372036854775808) %i.i), !dbg !40814, !noalias !40710
  %i.dm = shl i32 %i.dl, 1, !dbg !40815           ; 2 uses
  %i.dn = zext i32 %i.dm to i64, !dbg !40816      ; 2 uses
  %exitcond.not.i = icmp ugt i32 %i.dm, 32767, !dbg !40817
  br i1 %exitcond.not.i, label %bb.ac, label %bb.ab, !dbg !40817

bb.ab:                                            ; preds = %bb.aa
  %i.do = getelementptr inbounds nuw [2 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc15dictionary_hash21kStaticDictionaryHash, i64 %i.dn, !dbg !40817 ; 2 uses
  %i.dp = load i16, ptr %i.do, align 2, !dbg !40817, !noalias !40711, !noundef !664 ; 2 uses
  %i.dq = add i64 %i.di, 1, !dbg !40818
  store i64 %i.dq, ptr %i.dh, align 8, !dbg !40819, !alias.scope !40708, !noalias !40709
  %i.dr = icmp eq i16 %i.dp, 0, !dbg !40820
  br i1 %i.dr, label %bb.ad, label %bb.ag, !dbg !40820

bb.ac:                                            ; preds = %bb.aa
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dn, i64 noundef 32768, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #18, !dbg !40817, !noalias !40710
  unreachable, !dbg !40817

bb.ad:                                            ; preds = %bb.ah, %bb.ag, %bb.ab
  %i.ds = phi i64 [ %i.dg, %bb.ab ], [ %i.dg, %bb.ag ], [ %i.ee, %bb.ah ]
  %.sroa.0.2.i = phi i1 [ false, %bb.ab ], [ false, %bb.ag ], [ true, %bb.ah ], !dbg !40821 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 2, !dbg !40817
  %i.du = load i16, ptr %i.dt, align 2, !dbg !40817, !noalias !40711, !noundef !664 ; 2 uses
  %i.dv = add i64 %i.di, 2, !dbg !40818
  store i64 %i.dv, ptr %i.dh, align 8, !dbg !40819, !alias.scope !40708, !noalias !40709
  %i.dw = icmp eq i16 %i.du, 0, !dbg !40820
  br i1 %i.dw, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references24SearchInStaticDictionaryINtB2_9AdvHasherNtB2_6HQ7SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.ae, !dbg !40820

bb.ae:                                            ; preds = %bb.ad
  %i.dx = zext i16 %i.du to i64, !dbg !40817
  %i.dy = call noundef i32 @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references24TestStaticDictionaryItem(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.dx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 0, -9223372036854775808) %i.i, i64 noundef %8, i64 noundef %9, i64 noundef %10, i32 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %11), !dbg !40822, !noalias !40708
  %i.dz = icmp eq i32 %i.dy, 0, !dbg !40823
  br i1 %i.dz, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references24SearchInStaticDictionaryINtB2_9AdvHasherNtB2_6HQ7SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.af, !dbg !40823

bb.af:                                            ; preds = %bb.ae
  %i.ea = add i64 %i.ds, 1, !dbg !40824
  store i64 %i.ea, ptr %i.df, align 8, !dbg !40825, !alias.scope !40708, !noalias !40709
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references24SearchInStaticDictionaryINtB2_9AdvHasherNtB2_6HQ7SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !40826

bb.ag:                                            ; preds = %bb.ab
  %i.eb = zext i16 %i.dp to i64, !dbg !40817
  %i.ec = call noundef i32 @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references24TestStaticDictionaryItem(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.eb, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 0, -9223372036854775808) %i.i, i64 noundef %8, i64 noundef %9, i64 noundef %10, i32 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %11), !dbg !40822, !noalias !40708
  %i.ed = icmp eq i32 %i.ec, 0, !dbg !40823
  br i1 %i.ed, label %bb.ad, label %bb.ah, !dbg !40823

bb.ah:                                            ; preds = %bb.ag
  %i.ee = add i64 %i.dg, 1, !dbg !40824           ; 2 uses
  store i64 %i.ee, ptr %i.df, align 8, !dbg !40825, !alias.scope !40708, !noalias !40709
  br label %bb.ad, !dbg !40826

bb.ai:                                            ; preds = %.lr.ph.split.split
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.061.073, !dbg !40730
  %i.eg = load i32, ptr %i.ef, align 4, !dbg !40730, !noundef !664
  %i.eh = sext i32 %i.eg to i64, !dbg !40730      ; 2 uses
  %i.ei = sub i64 %7, %i.eh, !dbg !40733          ; 2 uses
  %i.ej = icmp uge i64 %i.ei, %7, !dbg !40734
  %i.ek = icmp ult i64 %9, %i.eh
  %or.cond4 = or i1 %i.ek, %i.ej, !dbg !40734
  br i1 %or.cond4, label %bb.as, label %bb.aj, !dbg !40734

.split.us:                                        ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split, %bb.c
  %.us-phi = phi i64 [ %umax, %.lr.ph.split.split ], [ %umax283, %bb.c ], [ %umax, %.lr.ph.split.split.us ], !dbg !40730
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef 16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @629) #18, !dbg !40730
  unreachable, !dbg !40730

bb.aj:                                            ; preds = %bb.ai
  %i.el = and i64 %i.ei, %4, !dbg !40735
  %i.em = add i64 %i.el, %.sroa.017.0.ph150, !dbg !40736
  %i.en = icmp ugt i64 %i.em, %4, !dbg !40737
  br i1 %i.en, label %bb.as, label %bb.ak, !dbg !40737

bb.ak:                                            ; preds = %bb.aj
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.017.0.ph150, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @630) #18, !dbg !40739
  unreachable, !dbg !40739

.split111.us:                                     ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @631) #18, !dbg !40738
  unreachable, !dbg !40738

bb.al:                                            ; preds = %.split114.us
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @632) #18, !dbg !40827, !noalias !40712
  unreachable, !dbg !40827

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit130: ; preds = %.split114.us
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac, !dbg !40828
  %i.ep = sub nuw nsw i64 %3, %i.ac, !dbg !40829
  %i.eq = tail call noundef i64 @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc11static_dict24FindMatchLengthWithLimit(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.eo, i64 noundef %i.ep, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.i, i64 noundef %8), !dbg !40830 ; 4 uses
  %i.er = icmp ugt i64 %i.eq, 2, !dbg !40831
  br i1 %i.er, label %bb.an, label %bb.am, !dbg !40831

bb.am:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit130
  %i.es = icmp eq i64 %i.eq, 2, !dbg !40832
  %i.et = icmp samesign ult i64 %.sroa.061.073.us106, 2
  %or.cond = and i1 %i.et, %i.es, !dbg !40832
  br i1 %or.cond, label %bb.an, label %.outer, !dbg !40832

bb.an:                                            ; preds = %bb.am, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit130
  %i.eu = icmp ult i64 %i.ac, %5
  %i.ev = add i64 %i.eq, %i.ac
  %i.ew = icmp ugt i64 %i.ev, %5
  %or.cond103 = and i1 %i.eu, %i.ew, !dbg !40833
  %i.ex = sub i64 %5, %i.ac, !dbg !40833
  %.sroa.036.0 = select i1 %or.cond103, i64 %i.ex, i64 %i.eq, !dbg !40833 ; 3 uses
  %i.ey = mul i64 %.sroa.036.0, %i.n, !dbg !40834 ; 2 uses
  %i.ez = add i64 %i.ey, 1935, !dbg !40835        ; 2 uses
  %i.fa = icmp ult i64 %.sroa.012.0.ph151, %i.ez, !dbg !40836
  br i1 %i.fa, label %bb.ao, label %.outer, !dbg !40836

.outer:                                           ; preds = %bb.ar, %bb.ap, %bb.an, %bb.am
  %.sroa.017.3 = phi i64 [ %.sroa.036.0, %bb.ar ], [ %.sroa.017.0.ph150, %bb.ap ], [ %.sroa.017.0.ph150, %bb.an ], [ %.sroa.017.0.ph150, %bb.am ], !dbg !40793 ; 2 uses
  %.sroa.012.3 = phi i64 [ %.sroa.041.0, %bb.ar ], [ %.sroa.012.0.ph151, %bb.ap ], [ %.sroa.012.0.ph151, %bb.an ], [ %.sroa.012.0.ph151, %bb.am ], !dbg !40794 ; 2 uses
  %.sroa.010.5 = phi i1 [ true, %bb.ar ], [ %.sroa.010.0.ph152, %bb.ap ], [ %.sroa.010.0.ph152, %bb.an ], [ %.sroa.010.0.ph152, %bb.am ], !dbg !40795 ; 2 uses
  %i.fb = icmp ult i64 %i.v, %i.l, !dbg !40729
  br i1 %i.fb, label %.lr.ph, label %.outer._crit_edge, !dbg !40684

bb.ao:                                            ; preds = %bb.an
  %i.fc = icmp eq i64 %.sroa.061.073.us106, 0, !dbg !40837
  br i1 %i.fc, label %bb.ap, label %bb.aq, !dbg !40837

bb.ap:                                            ; preds = %bb.aq, %bb.ao
  %.sroa.041.0 = phi i64 [ %i.ez, %bb.ao ], [ %i.fi, %bb.aq ], !dbg !40838 ; 3 uses
  %i.fd = icmp ult i64 %.sroa.012.0.ph151, %.sroa.041.0, !dbg !40839
  br i1 %i.fd, label %bb.ar, label %.outer, !dbg !40839

bb.aq:                                            ; preds = %bb.ao
  %i.fe = and i64 %.sroa.061.073.us106, 14, !dbg !40840
  %i.ff = lshr i64 117264, %i.fe, !dbg !40841
  %i.fg = and i64 %i.ff, 14, !dbg !40842
  %i.fh = sub i64 %i.ey, %i.fg, !dbg !40843
  %i.fi = add i64 %i.fh, 1896, !dbg !40843
  br label %bb.ap, !dbg !40844

bb.ar:                                            ; preds = %bb.ap
  store i64 %.sroa.036.0, ptr %11, align 8, !dbg !40845
  store i64 %i.y, ptr %i.o, align 8, !dbg !40846
  store i64 %.sroa.041.0, ptr %i.e, align 8, !dbg !40847
  br label %.outer, !dbg !40848

bb.as:                                            ; preds = %bb.aj, %bb.ai
  %i.fj = icmp ult i64 %i.ar, %i.l, !dbg !40729
  br i1 %i.fj, label %.lr.ph.split.split, label %.outer._crit_edge, !dbg !40684
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsn_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher5StoreCsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, 4294967296) %3, i64 noundef %4) unnamed_addr #0 !dbg !511 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = and i64 %4, %3, !dbg !40876              ; 3 uses
  %.not.i = icmp samesign ugt i64 %i.b, %2, !dbg !40877
  br i1 %.not.i, label %bb.b, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !40877, !prof !712

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @633) #18, !dbg !40878, !noalias !40872
  unreachable, !dbg !40878

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.a
  %i.c = sub nuw nsw i64 %2, %i.b, !dbg !40879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !40880, !noalias !40873
  store i32 0, ptr %i.a, align 4, !dbg !40881, !noalias !40873
  %.not.i.i = icmp samesign ult i64 %i.c, 4, !dbg !40882
  br i1 %.not.i.i, label %bb.c, label %_RNvXsn_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !40882, !prof !712

bb.c:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @500) #18, !dbg !40883, !noalias !40874
  unreachable, !dbg !40883

_RNvXsn_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_9AdvHasherNtB5_6HQ7SubNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtB5_9AnyHasher9HashBytesCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.b, !dbg !40884
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %i.a, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @501), !dbg !40885
  %i.e = load i32, ptr %i.a, align 4, !dbg !40886, !noalias !40873
  %i.f = zext i32 %i.e to i64, !dbg !40886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !40887, !noalias !40873
  %i.g = mul nuw nsw i64 %i.f, 506832829, !dbg !40888
  %i.h = lshr i64 %i.g, 17, !dbg !40889
  %i.i = and i64 %i.h, 32767, !dbg !40889         ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !40890
  %.val9 = load i64, ptr %i.j, align 8, !dbg !40890, !noundef !664 ; 2 uses
  %i.k = icmp ult i64 %i.i, %.val9, !dbg !40891
end_hunk_1
