Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.05?download=true
inline.NumInlined: 6802
inline.NumDeleted: 1969
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core:bb.a
  %.sroa.03.1.i13 = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i11, %bb.m ] ; 3 uses
  %.sroa.0.1.i14 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i12, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i13, %i.ag
  br i1 %i.bw, label %bb.p, label %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit18

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i13, %.sroa.0.1.lcssa ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !22914, !noundef !4
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.03.1.i13, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.0.1.i14
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit18

_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit18: ; preds = %bb.o, %bb.p
  %.sroa.0.2.i15 = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.1.i14, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i15, ptr %i.cf, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cg = phi i64 [ %.promoted23, %.lr.ph ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted21, %.lr.ph ], [ %i.cw, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted20, %.lr.ph ], [ %i.cy, %bb.q ]
  %.sroa.0.119 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted, %.lr.ph ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.119
  %.sroa.07.0.copyload = load i64, ptr %i.ck, align 1 ; 2 uses
  %i.cl = xor i64 %i.ci, %.sroa.07.0.copyload     ; 3 uses
  %i.cm = add i64 %i.ch, %i.cj                    ; 3 uses
  %i.cn = add i64 %i.cg, %i.cl                    ; 2 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.cp = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.07.0.copyload     ; 2 uses
  %i.db = add nuw i64 %.sroa.0.119, 8             ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit18, %bb.j
  %storemerge = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit18 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10Date32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !22931)
  call void @llvm.experimental.noalias.scope.decl(metadata !22932)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !22933, !noalias !22934, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 2                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !22935, !noalias !22934, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !22931, !noalias !22934
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !22931, !noalias !22934
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !22931, !noalias !22934
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !22931, !noalias !22934 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22936)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !22932, !noalias !22937, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !22932, !noalias !22937, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !22938, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !22938, !inline_history !22926
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10Date32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !22931
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !22932, !noalias !22937, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !22932, !noalias !22937, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !22938, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !22938, !inline_history !22926
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 43
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22936)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !22939
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !22939, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !22932, !noalias !22937, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !22932, !noalias !22937, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !22938, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 83
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22940
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !22940
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22940
  store ptr %i.b, ptr %i.a, align 8, !noalias !22940
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !22940
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !22932, !noalias !22937, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !22932, !noalias !22937, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !22938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22940
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !22941, !noalias !22934, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !22931, !noalias !22934
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !22931, !noalias !22934
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !22931, !noalias !22934
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !22931, !noalias !22934 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22942)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !22932, !noalias !22937, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !22932, !noalias !22937, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !22938, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !22938, !inline_history !22926
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10Date32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !22931
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !22932, !noalias !22937, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !22932, !noalias !22937, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !22938, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !22938, !inline_history !22926
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22942)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !22943
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !22943, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !22932, !noalias !22937, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !22932, !noalias !22937, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !22938, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !22938, !inline_history !22926
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10Date32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !22931
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !22932, !noalias !22937, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !22932, !noalias !22937, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !22938, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !22938, !inline_history !22926
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !22938, !inline_history !22926
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !22938, !inline_history !22926
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10Date32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !22931
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !22932, !noalias !22937, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !22932, !noalias !22937, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !22938, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !22938, !inline_history !22926
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !22938, !inline_history !22926
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10Date64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !22960)
  call void @llvm.experimental.noalias.scope.decl(metadata !22961)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !22962, !noalias !22963, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 3                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !22964, !noalias !22963, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !22960, !noalias !22963
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !22960, !noalias !22963
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !22960, !noalias !22963
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !22960, !noalias !22963 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22965)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !22961, !noalias !22966, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !22961, !noalias !22966, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !22967, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !22967, !inline_history !22955
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10Date64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !22960
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !22961, !noalias !22966, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !22961, !noalias !22966, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !22967, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !22967, !inline_history !22955
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 87
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22965)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !22968
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !22968, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !22961, !noalias !22966, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !22961, !noalias !22966, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !22967, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 167
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22969
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !22969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22969
  store ptr %i.b, ptr %i.a, align 8, !noalias !22969
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !22969
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !22961, !noalias !22966, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !22961, !noalias !22966, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !22967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22969
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !22970, !noalias !22963, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !22960, !noalias !22963
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !22960, !noalias !22963
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !22960, !noalias !22963
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !22960, !noalias !22963 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22971)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !22961, !noalias !22966, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !22961, !noalias !22966, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !22967, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !22967, !inline_history !22955
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10Date64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !22960
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !22961, !noalias !22966, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !22961, !noalias !22966, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !22967, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !22967, !inline_history !22955
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22971)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !22972
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !22972, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !22961, !noalias !22966, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !22961, !noalias !22966, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !22967, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !22967, !inline_history !22955
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10Date64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !22960
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !22961, !noalias !22966, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !22961, !noalias !22966, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !22967, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !22967, !inline_history !22955
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !22967, !inline_history !22955
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !22967, !inline_history !22955
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10Date64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !22960
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !22961, !noalias !22966, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !22961, !noalias !22966, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !22967, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !22967, !inline_history !22955
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !22967, !inline_history !22955
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !22989)
  call void @llvm.experimental.noalias.scope.decl(metadata !22990)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !22991, !noalias !22992, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 1                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !22993, !noalias !22992, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !22989, !noalias !22992
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !22989, !noalias !22992
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !22989, !noalias !22992
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !22989, !noalias !22992 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22994)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !22990, !noalias !22995, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !22990, !noalias !22995, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !22996, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !22996, !inline_history !22984
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt16TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !22989
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !22990, !noalias !22995, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !22990, !noalias !22995, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !22996, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !22996, !inline_history !22984
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 21
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22994)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !22997
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !22997, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !22990, !noalias !22995, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !22990, !noalias !22995, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !22996, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 41
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22998
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !22998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22998
  store ptr %i.b, ptr %i.a, align 8, !noalias !22998
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !22998
end_hunk_0
begin_hunk_1_@_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt16TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !22989
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !22990, !noalias !22995, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !22990, !noalias !22995, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !22996, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !22996, !inline_history !22984
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !22996, !inline_history !22984
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !22996, !inline_history !22984
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt16TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !22989
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !22990, !noalias !22995, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !22990, !noalias !22995, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !22996, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !22996, !inline_history !22984
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !22996, !inline_history !22984
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23018)
  call void @llvm.experimental.noalias.scope.decl(metadata !23019)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23020, !noalias !23021, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 2                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23022, !noalias !23021, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23018, !noalias !23021
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23018, !noalias !23021
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23018, !noalias !23021
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23018, !noalias !23021 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23023)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23019, !noalias !23024, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23019, !noalias !23024, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23025, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23025, !inline_history !23013
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23018
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23019, !noalias !23024, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23019, !noalias !23024, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23025, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23025, !inline_history !23013
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 43
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23023)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23026
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23026, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23019, !noalias !23024, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23019, !noalias !23024, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23025, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 83
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23027
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23027
  store ptr %i.b, ptr %i.a, align 8, !noalias !23027
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23027
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23019, !noalias !23024, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23019, !noalias !23024, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23027
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23028, !noalias !23021, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23018, !noalias !23021
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23018, !noalias !23021
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23018, !noalias !23021
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23018, !noalias !23021 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23029)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23019, !noalias !23024, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23019, !noalias !23024, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23025, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23025, !inline_history !23013
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23018
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23019, !noalias !23024, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23019, !noalias !23024, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23025, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23025, !inline_history !23013
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23029)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23030
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23030, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23019, !noalias !23024, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23019, !noalias !23024, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23025, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23025, !inline_history !23013
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23018
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23019, !noalias !23024, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23019, !noalias !23024, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23025, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23025, !inline_history !23013
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23025, !inline_history !23013
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23025, !inline_history !23013
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23018
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23019, !noalias !23024, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23019, !noalias !23024, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23025, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23025, !inline_history !23013
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23025, !inline_history !23013
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23047)
  call void @llvm.experimental.noalias.scope.decl(metadata !23048)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23049, !noalias !23050, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 3                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23051, !noalias !23050, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23047, !noalias !23050
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23047, !noalias !23050
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23047, !noalias !23050
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23047, !noalias !23050 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23052)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23048, !noalias !23053, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23048, !noalias !23053, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23054, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23054, !inline_history !23042
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23047
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23048, !noalias !23053, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23048, !noalias !23053, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23054, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23054, !inline_history !23042
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 87
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23052)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23055
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23055, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23048, !noalias !23053, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23048, !noalias !23053, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23054, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 167
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23056
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23056
  store ptr %i.b, ptr %i.a, align 8, !noalias !23056
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23056
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23048, !noalias !23053, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23048, !noalias !23053, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23056
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23057, !noalias !23050, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23047, !noalias !23050
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23047, !noalias !23050
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23047, !noalias !23050
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23047, !noalias !23050 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23058)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23048, !noalias !23053, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23048, !noalias !23053, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23054, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23054, !inline_history !23042
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23047
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23048, !noalias !23053, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23048, !noalias !23053, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23054, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23054, !inline_history !23042
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23058)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23059
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23059, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23048, !noalias !23053, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23048, !noalias !23053, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23054, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23054, !inline_history !23042
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23047
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23048, !noalias !23053, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23048, !noalias !23053, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23054, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23054, !inline_history !23042
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23054, !inline_history !23042
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23054, !inline_history !23042
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23047
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23048, !noalias !23053, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23048, !noalias !23053, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23054, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23054, !inline_history !23042
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23054, !inline_history !23042
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23076)
  call void @llvm.experimental.noalias.scope.decl(metadata !23077)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23078, !noalias !23079, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 1                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23080, !noalias !23079, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23076, !noalias !23079
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23076, !noalias !23079
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23076, !noalias !23079
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23076, !noalias !23079 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23081)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23077, !noalias !23082, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23077, !noalias !23082, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23082, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23082, !inline_history !23071
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types11Float16TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23076
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23077, !noalias !23082, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23077, !noalias !23082, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23082, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23082, !inline_history !23071
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 21
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23081)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23083
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23083, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23077, !noalias !23082, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23077, !noalias !23082, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23082, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 41
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23084
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23084
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23084
  store ptr %i.b, ptr %i.a, align 8, !noalias !23084
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23084
end_hunk_1
begin_hunk_2_@_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types11Float16TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23076
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23077, !noalias !23082, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23077, !noalias !23082, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23082, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23082, !inline_history !23071
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23082, !inline_history !23071
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23082, !inline_history !23071
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types11Float16TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23076
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23077, !noalias !23082, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23077, !noalias !23082, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23082, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23082, !inline_history !23071
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23082, !inline_history !23071
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23104)
  call void @llvm.experimental.noalias.scope.decl(metadata !23105)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23106, !noalias !23107, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 2                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23108, !noalias !23107, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23104, !noalias !23107
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23104, !noalias !23107
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23104, !noalias !23107
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23104, !noalias !23107 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23109)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23105, !noalias !23110, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23105, !noalias !23110, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23110, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23110, !inline_history !23099
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types11Float32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23104
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23105, !noalias !23110, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23105, !noalias !23110, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23110, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23110, !inline_history !23099
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 43
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23109)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23111
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23111, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23105, !noalias !23110, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23105, !noalias !23110, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23110, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 83
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23112
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23112
  store ptr %i.b, ptr %i.a, align 8, !noalias !23112
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23112
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23105, !noalias !23110, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23105, !noalias !23110, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23112
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23113, !noalias !23107, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23104, !noalias !23107
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23104, !noalias !23107
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23104, !noalias !23107
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23104, !noalias !23107 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23114)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23105, !noalias !23110, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23105, !noalias !23110, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23110, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23110, !inline_history !23099
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types11Float32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23104
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23105, !noalias !23110, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23105, !noalias !23110, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23110, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23110, !inline_history !23099
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23114)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23115
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23115, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23105, !noalias !23110, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23105, !noalias !23110, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23110, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23110, !inline_history !23099
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types11Float32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23104
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23105, !noalias !23110, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23105, !noalias !23110, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23110, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23110, !inline_history !23099
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23110, !inline_history !23099
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23110, !inline_history !23099
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types11Float32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23104
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23105, !noalias !23110, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23105, !noalias !23110, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23110, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23110, !inline_history !23099
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23110, !inline_history !23099
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23132)
  call void @llvm.experimental.noalias.scope.decl(metadata !23133)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23134, !noalias !23135, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 3                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23136, !noalias !23135, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23132, !noalias !23135
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23132, !noalias !23135
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23132, !noalias !23135
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23132, !noalias !23135 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23137)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23133, !noalias !23138, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23133, !noalias !23138, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23138, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23138, !inline_history !23127
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types11Float64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23132
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23133, !noalias !23138, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23133, !noalias !23138, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23138, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23138, !inline_history !23127
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 87
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23137)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23139
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23139, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23133, !noalias !23138, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23133, !noalias !23138, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23138, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 167
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23140
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23140
  store ptr %i.b, ptr %i.a, align 8, !noalias !23140
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23140
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23133, !noalias !23138, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23133, !noalias !23138, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23140
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23141, !noalias !23135, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23132, !noalias !23135
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23132, !noalias !23135
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23132, !noalias !23135
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23132, !noalias !23135 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23142)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23133, !noalias !23138, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23133, !noalias !23138, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23138, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23138, !inline_history !23127
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types11Float64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23132
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23133, !noalias !23138, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23133, !noalias !23138, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23138, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23138, !inline_history !23127
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23142)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23143
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23143, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23133, !noalias !23138, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23133, !noalias !23138, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23138, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23138, !inline_history !23127
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types11Float64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23132
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23133, !noalias !23138, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23133, !noalias !23138, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23138, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23138, !inline_history !23127
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23138, !inline_history !23127
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23138, !inline_history !23127
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types11Float64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23132
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23133, !noalias !23138, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23133, !noalias !23138, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23138, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23138, !inline_history !23127
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23138, !inline_history !23127
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23160)
  call void @llvm.experimental.noalias.scope.decl(metadata !23161)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23162, !noalias !23163, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 2                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23164, !noalias !23163, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23160, !noalias !23163
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23160, !noalias !23163
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23160, !noalias !23163
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23160, !noalias !23163 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23165)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23161, !noalias !23166, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23161, !noalias !23166, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23167, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23167, !inline_history !23155
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types13Decimal32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23160
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23161, !noalias !23166, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23161, !noalias !23166, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23167, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23167, !inline_history !23155
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 43
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23165)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23168
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23168, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23161, !noalias !23166, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23161, !noalias !23166, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23167, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 83
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23169
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23169
  store ptr %i.b, ptr %i.a, align 8, !noalias !23169
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23169
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23161, !noalias !23166, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23161, !noalias !23166, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23169
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23170, !noalias !23163, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23160, !noalias !23163
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23160, !noalias !23163
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23160, !noalias !23163
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23160, !noalias !23163 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23171)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23161, !noalias !23166, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23161, !noalias !23166, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23167, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23167, !inline_history !23155
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types13Decimal32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23160
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23161, !noalias !23166, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23161, !noalias !23166, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23167, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23167, !inline_history !23155
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23171)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23172
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23172, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23161, !noalias !23166, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23161, !noalias !23166, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23167, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23167, !inline_history !23155
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types13Decimal32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23160
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23161, !noalias !23166, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23161, !noalias !23166, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23167, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23167, !inline_history !23155
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23167, !inline_history !23155
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23167, !inline_history !23155
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types13Decimal32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23160
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23161, !noalias !23166, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23161, !noalias !23166, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23167, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23167, !inline_history !23155
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23167, !inline_history !23155
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23189)
  call void @llvm.experimental.noalias.scope.decl(metadata !23190)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23191, !noalias !23192, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 3                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23193, !noalias !23192, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23189, !noalias !23192
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23189, !noalias !23192
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23189, !noalias !23192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23189, !noalias !23192 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23194)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23190, !noalias !23195, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23190, !noalias !23195, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23196, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23196, !inline_history !23184
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types13Decimal64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23189
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23190, !noalias !23195, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23190, !noalias !23195, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23196, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23196, !inline_history !23184
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 87
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23194)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23197
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23197, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23190, !noalias !23195, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23190, !noalias !23195, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23196, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 167
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23198
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23198
  store ptr %i.b, ptr %i.a, align 8, !noalias !23198
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23198
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23190, !noalias !23195, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23190, !noalias !23195, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23198
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23199, !noalias !23192, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23189, !noalias !23192
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23189, !noalias !23192
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23189, !noalias !23192
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23189, !noalias !23192 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23200)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23190, !noalias !23195, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23190, !noalias !23195, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23196, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23196, !inline_history !23184
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types13Decimal64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23189
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23190, !noalias !23195, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23190, !noalias !23195, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23196, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23196, !inline_history !23184
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23200)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23201
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23201, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23190, !noalias !23195, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23190, !noalias !23195, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23196, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23196, !inline_history !23184
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types13Decimal64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23189
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23190, !noalias !23195, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23190, !noalias !23195, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23196, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23196, !inline_history !23184
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23196, !inline_history !23184
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23196, !inline_history !23184
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types13Decimal64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23189
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23190, !noalias !23195, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23190, !noalias !23195, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23196, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23196, !inline_history !23184
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23196, !inline_history !23184
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types13Decimal64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types13Decimal64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23218)
  call void @llvm.experimental.noalias.scope.decl(metadata !23219)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23220, !noalias !23221, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 4                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23222, !noalias !23221, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23218, !noalias !23221
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23218, !noalias !23221
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23218, !noalias !23221
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23218, !noalias !23221 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23223)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23219, !noalias !23224, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23219, !noalias !23224, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23225, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23225, !inline_history !23213
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types14Decimal128TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23218
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23219, !noalias !23224, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23219, !noalias !23224, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23225, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23225, !inline_history !23213
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 175
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23223)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23226
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23226, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23219, !noalias !23224, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23219, !noalias !23224, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23225, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 335
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23227
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23227
  store ptr %i.b, ptr %i.a, align 8, !noalias !23227
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23227
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23219, !noalias !23224, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23219, !noalias !23224, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23227
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23228, !noalias !23221, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23218, !noalias !23221
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23218, !noalias !23221
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23218, !noalias !23221
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23218, !noalias !23221 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23229)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23219, !noalias !23224, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23219, !noalias !23224, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23225, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23225, !inline_history !23213
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types14Decimal128TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23218
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23219, !noalias !23224, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23219, !noalias !23224, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23225, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23225, !inline_history !23213
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23229)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23230
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23230, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23219, !noalias !23224, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23219, !noalias !23224, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23225, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23225, !inline_history !23213
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types14Decimal128TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23218
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23219, !noalias !23224, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23219, !noalias !23224, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23225, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23225, !inline_history !23213
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23225, !inline_history !23213
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23225, !inline_history !23213
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types14Decimal128TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23218
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23219, !noalias !23224, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23219, !noalias !23224, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23225, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23225, !inline_history !23213
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23225, !inline_history !23213
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal128TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal128TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23247)
  call void @llvm.experimental.noalias.scope.decl(metadata !23248)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23249, !noalias !23250, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 5                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23251, !noalias !23250, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23247, !noalias !23250
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23247, !noalias !23250
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23247, !noalias !23250
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23247, !noalias !23250 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23252)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23248, !noalias !23253, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23248, !noalias !23253, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23254, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23254, !inline_history !23242
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types14Decimal256TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23247
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23248, !noalias !23253, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23248, !noalias !23253, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23254, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23254, !inline_history !23242
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 351
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23252)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23255
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23255, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23248, !noalias !23253, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23248, !noalias !23253, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23254, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 671
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23256
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23256
  store ptr %i.b, ptr %i.a, align 8, !noalias !23256
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23256
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23248, !noalias !23253, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23248, !noalias !23253, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23256
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23257, !noalias !23250, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23247, !noalias !23250
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23247, !noalias !23250
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23247, !noalias !23250
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23247, !noalias !23250 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23258)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23248, !noalias !23253, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23248, !noalias !23253, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23254, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23254, !inline_history !23242
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types14Decimal256TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23247
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23248, !noalias !23253, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23248, !noalias !23253, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23254, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23254, !inline_history !23242
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23258)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23259
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23259, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23248, !noalias !23253, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23248, !noalias !23253, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23254, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23254, !inline_history !23242
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types14Decimal256TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23247
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23248, !noalias !23253, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23248, !noalias !23253, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23254, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23254, !inline_history !23242
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23254, !inline_history !23242
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23254, !inline_history !23242
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types14Decimal256TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23247
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23248, !noalias !23253, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23248, !noalias !23253, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23254, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23254, !inline_history !23242
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23254, !inline_history !23242
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types14Decimal256TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23276)
  call void @llvm.experimental.noalias.scope.decl(metadata !23277)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23278, !noalias !23279, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 2                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23280, !noalias !23279, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23276, !noalias !23279
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23276, !noalias !23279
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23276, !noalias !23279
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23276, !noalias !23279 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23281)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23277, !noalias !23282, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23277, !noalias !23282, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23283, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23283, !inline_history !23271
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types16Time32SecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23276
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23277, !noalias !23282, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23277, !noalias !23282, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23283, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23283, !inline_history !23271
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 43
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23281)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23284
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23284, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23277, !noalias !23282, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23277, !noalias !23282, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23283, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 83
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23285
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23285
  store ptr %i.b, ptr %i.a, align 8, !noalias !23285
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23285
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23277, !noalias !23282, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23277, !noalias !23282, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23285
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23286, !noalias !23279, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23276, !noalias !23279
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23276, !noalias !23279
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23276, !noalias !23279
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23276, !noalias !23279 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23287)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23277, !noalias !23282, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23277, !noalias !23282, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23283, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23283, !inline_history !23271
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types16Time32SecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23276
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23277, !noalias !23282, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23277, !noalias !23282, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23283, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23283, !inline_history !23271
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23287)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23288
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23288, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23277, !noalias !23282, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23277, !noalias !23282, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23283, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23283, !inline_history !23271
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types16Time32SecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23276
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23277, !noalias !23282, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23277, !noalias !23282, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23283, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23283, !inline_history !23271
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23283, !inline_history !23271
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23283, !inline_history !23271
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types16Time32SecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23276
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23277, !noalias !23282, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23277, !noalias !23282, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23283, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23283, !inline_history !23271
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23283, !inline_history !23271
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types16Time32SecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types16Time32SecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23305)
  call void @llvm.experimental.noalias.scope.decl(metadata !23306)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23307, !noalias !23308, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 3                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23309, !noalias !23308, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23305, !noalias !23308
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23305, !noalias !23308
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23305, !noalias !23308
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23305, !noalias !23308 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23310)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23306, !noalias !23311, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23306, !noalias !23311, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23312, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23312, !inline_history !23300
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types18DurationSecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23305
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23306, !noalias !23311, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23306, !noalias !23311, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23312, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23312, !inline_history !23300
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 87
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23310)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23313
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23313, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23306, !noalias !23311, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23306, !noalias !23311, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23312, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 167
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23314
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23314
  store ptr %i.b, ptr %i.a, align 8, !noalias !23314
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23314
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23306, !noalias !23311, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23306, !noalias !23311, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23314
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23315, !noalias !23308, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23305, !noalias !23308
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23305, !noalias !23308
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23305, !noalias !23308
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23305, !noalias !23308 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23316)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23306, !noalias !23311, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23306, !noalias !23311, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23312, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23312, !inline_history !23300
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types18DurationSecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23305
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23306, !noalias !23311, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23306, !noalias !23311, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23312, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23312, !inline_history !23300
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23316)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23317
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23317, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23306, !noalias !23311, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23306, !noalias !23311, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23312, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23312, !inline_history !23300
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types18DurationSecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23305
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23306, !noalias !23311, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23306, !noalias !23311, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23312, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23312, !inline_history !23300
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23312, !inline_history !23300
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23312, !inline_history !23300
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types18DurationSecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23305
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23306, !noalias !23311, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23306, !noalias !23311, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23312, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23312, !inline_history !23300
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23312, !inline_history !23300
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types18DurationSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23334)
  call void @llvm.experimental.noalias.scope.decl(metadata !23335)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23336, !noalias !23337, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 3                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23338, !noalias !23337, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23334, !noalias !23337
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23334, !noalias !23337
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23334, !noalias !23337
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23334, !noalias !23337 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23339)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23335, !noalias !23340, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23335, !noalias !23340, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23340, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23340, !inline_history !23329
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types19IntervalDayTimeTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23334
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23335, !noalias !23340, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23335, !noalias !23340, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23340, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23340, !inline_history !23329
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 87
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23339)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23341
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23341, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23335, !noalias !23340, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23335, !noalias !23340, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23340, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 167
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23342
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23342
  store ptr %i.b, ptr %i.a, align 8, !noalias !23342
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23342
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23335, !noalias !23340, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23335, !noalias !23340, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23342
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23343, !noalias !23337, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23334, !noalias !23337
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23334, !noalias !23337
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23334, !noalias !23337
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23334, !noalias !23337 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23344)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23335, !noalias !23340, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23335, !noalias !23340, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23340, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23340, !inline_history !23329
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types19IntervalDayTimeTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23334
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23335, !noalias !23340, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23335, !noalias !23340, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23340, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23340, !inline_history !23329
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23344)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23345
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23345, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23335, !noalias !23340, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23335, !noalias !23340, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23340, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23340, !inline_history !23329
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types19IntervalDayTimeTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23334
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23335, !noalias !23340, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23335, !noalias !23340, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23340, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23340, !inline_history !23329
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23340, !inline_history !23329
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23340, !inline_history !23329
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types19IntervalDayTimeTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23334
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23335, !noalias !23340, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23335, !noalias !23340, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23340, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23340, !inline_history !23329
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23340, !inline_history !23329
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19IntervalDayTimeTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19IntervalDayTimeTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23362)
  call void @llvm.experimental.noalias.scope.decl(metadata !23363)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23364, !noalias !23365, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 3                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23366, !noalias !23365, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23362, !noalias !23365
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23362, !noalias !23365
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23362, !noalias !23365
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23362, !noalias !23365 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23367)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23363, !noalias !23368, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23363, !noalias !23368, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23369, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23369, !inline_history !23357
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types19TimestampSecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23362
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23363, !noalias !23368, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23363, !noalias !23368, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23369, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23369, !inline_history !23357
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 87
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23367)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23370
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23370, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23363, !noalias !23368, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23363, !noalias !23368, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23369, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 167
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23371
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23371
  store ptr %i.b, ptr %i.a, align 8, !noalias !23371
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23371
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23363, !noalias !23368, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23363, !noalias !23368, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23371
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23372, !noalias !23365, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23362, !noalias !23365
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23362, !noalias !23365
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23362, !noalias !23365
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23362, !noalias !23365 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23373)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23363, !noalias !23368, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23363, !noalias !23368, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23369, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23369, !inline_history !23357
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types19TimestampSecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23362
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23363, !noalias !23368, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23363, !noalias !23368, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23369, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23369, !inline_history !23357
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23373)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23374
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23374, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23363, !noalias !23368, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23363, !noalias !23368, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23369, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23369, !inline_history !23357
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types19TimestampSecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23362
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23363, !noalias !23368, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23363, !noalias !23368, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23369, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23369, !inline_history !23357
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23369, !inline_history !23357
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23369, !inline_history !23357
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types19TimestampSecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23362
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23363, !noalias !23368, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23363, !noalias !23368, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23369, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23369, !inline_history !23357
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23369, !inline_history !23357
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types19TimestampSecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23391)
  call void @llvm.experimental.noalias.scope.decl(metadata !23392)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23393, !noalias !23394, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 3                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23395, !noalias !23394, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23391, !noalias !23394
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23391, !noalias !23394
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23391, !noalias !23394
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23391, !noalias !23394 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23396)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23392, !noalias !23397, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23392, !noalias !23397, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23398, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23398, !inline_history !23386
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types20Time64NanosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23391
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23392, !noalias !23397, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23392, !noalias !23397, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23398, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23398, !inline_history !23386
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 87
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23396)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23399
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23399, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23392, !noalias !23397, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23392, !noalias !23397, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23398, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 167
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23400
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23400
  store ptr %i.b, ptr %i.a, align 8, !noalias !23400
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23400
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23392, !noalias !23397, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23392, !noalias !23397, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23400
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23401, !noalias !23394, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23391, !noalias !23394
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23391, !noalias !23394
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23391, !noalias !23394
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23391, !noalias !23394 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23402)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23392, !noalias !23397, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23392, !noalias !23397, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23398, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23398, !inline_history !23386
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types20Time64NanosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23391
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23392, !noalias !23397, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23392, !noalias !23397, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23398, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23398, !inline_history !23386
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23402)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23403
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23403, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23392, !noalias !23397, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23392, !noalias !23397, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23398, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23398, !inline_history !23386
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types20Time64NanosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23391
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23392, !noalias !23397, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23392, !noalias !23397, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23398, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23398, !inline_history !23386
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23398, !inline_history !23386
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23398, !inline_history !23386
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types20Time64NanosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23391
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23392, !noalias !23397, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23392, !noalias !23397, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23398, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23398, !inline_history !23386
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23398, !inline_history !23386
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types20Time64NanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23420)
  call void @llvm.experimental.noalias.scope.decl(metadata !23421)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23422, !noalias !23423, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 2                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23424, !noalias !23423, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23420, !noalias !23423
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23420, !noalias !23423
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23420, !noalias !23423
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23420, !noalias !23423 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23425)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23421, !noalias !23426, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23421, !noalias !23426, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23427, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23427, !inline_history !23415
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types21IntervalYearMonthTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23420
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23421, !noalias !23426, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23421, !noalias !23426, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23427, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23427, !inline_history !23415
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 43
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23425)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23428
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23428, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23421, !noalias !23426, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23421, !noalias !23426, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23427, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 83
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23429
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23429
  store ptr %i.b, ptr %i.a, align 8, !noalias !23429
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23429
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23421, !noalias !23426, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23421, !noalias !23426, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23429
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23430, !noalias !23423, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23420, !noalias !23423
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23420, !noalias !23423
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23420, !noalias !23423
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23420, !noalias !23423 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23431)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23421, !noalias !23426, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23421, !noalias !23426, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23427, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23427, !inline_history !23415
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types21IntervalYearMonthTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23420
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23421, !noalias !23426, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23421, !noalias !23426, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23427, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23427, !inline_history !23415
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23431)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23432
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23432, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23421, !noalias !23426, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23421, !noalias !23426, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23427, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23427, !inline_history !23415
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types21IntervalYearMonthTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23420
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23421, !noalias !23426, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23421, !noalias !23426, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23427, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23427, !inline_history !23415
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23427, !inline_history !23415
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23427, !inline_history !23415
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types21IntervalYearMonthTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23420
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23421, !noalias !23426, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23421, !noalias !23426, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23427, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23427, !inline_history !23415
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23427, !inline_history !23415
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21IntervalYearMonthTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21IntervalYearMonthTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23449)
  call void @llvm.experimental.noalias.scope.decl(metadata !23450)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23451, !noalias !23452, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 2                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23453, !noalias !23452, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23449, !noalias !23452
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23449, !noalias !23452
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23449, !noalias !23452
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23449, !noalias !23452 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23454)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23450, !noalias !23455, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23450, !noalias !23455, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23456, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23456, !inline_history !23444
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types21Time32MillisecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23449
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23450, !noalias !23455, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23450, !noalias !23455, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23456, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23456, !inline_history !23444
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 43
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23454)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23457
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23457, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23450, !noalias !23455, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23450, !noalias !23455, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23456, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 83
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23458
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23458
  store ptr %i.b, ptr %i.a, align 8, !noalias !23458
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23458
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23450, !noalias !23455, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23450, !noalias !23455, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23458
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23459, !noalias !23452, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23449, !noalias !23452
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23449, !noalias !23452
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23449, !noalias !23452
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23449, !noalias !23452 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23460)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23450, !noalias !23455, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23450, !noalias !23455, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23456, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23456, !inline_history !23444
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types21Time32MillisecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23449
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23450, !noalias !23455, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23450, !noalias !23455, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23456, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23456, !inline_history !23444
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23460)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23461
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23461, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23450, !noalias !23455, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23450, !noalias !23455, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23456, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23456, !inline_history !23444
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types21Time32MillisecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23449
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23450, !noalias !23455, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23450, !noalias !23455, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23456, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23456, !inline_history !23444
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23456, !inline_history !23444
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23456, !inline_history !23444
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types21Time32MillisecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23449
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23450, !noalias !23455, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23450, !noalias !23455, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23456, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23456, !inline_history !23444
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23456, !inline_history !23444
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time32MillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time32MillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23478)
  call void @llvm.experimental.noalias.scope.decl(metadata !23479)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23480, !noalias !23481, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 3                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23482, !noalias !23481, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23478, !noalias !23481
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23478, !noalias !23481
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23478, !noalias !23481
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23478, !noalias !23481 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23483)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23479, !noalias !23484, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23479, !noalias !23484, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23485, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23485, !inline_history !23473
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types21Time64MicrosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23478
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23479, !noalias !23484, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23479, !noalias !23484, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23485, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23485, !inline_history !23473
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 87
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23483)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23486
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23486, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23479, !noalias !23484, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23479, !noalias !23484, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23485, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 167
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23487
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23487
  store ptr %i.b, ptr %i.a, align 8, !noalias !23487
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23487
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23479, !noalias !23484, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23479, !noalias !23484, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23487
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23488, !noalias !23481, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23478, !noalias !23481
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23478, !noalias !23481
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23478, !noalias !23481
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23478, !noalias !23481 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23489)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23479, !noalias !23484, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23479, !noalias !23484, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23485, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23485, !inline_history !23473
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types21Time64MicrosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23478
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23479, !noalias !23484, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23479, !noalias !23484, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23485, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23485, !inline_history !23473
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23489)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23490
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23490, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23479, !noalias !23484, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23479, !noalias !23484, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23485, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23485, !inline_history !23473
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types21Time64MicrosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23478
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23479, !noalias !23484, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23479, !noalias !23484, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23485, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23485, !inline_history !23473
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23485, !inline_history !23473
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23485, !inline_history !23473
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types21Time64MicrosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23478
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23479, !noalias !23484, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23479, !noalias !23484, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23485, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23485, !inline_history !23473
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23485, !inline_history !23473
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types21Time64MicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23507)
  call void @llvm.experimental.noalias.scope.decl(metadata !23508)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23509, !noalias !23510, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 3                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23511, !noalias !23510, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23507, !noalias !23510
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23507, !noalias !23510
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23507, !noalias !23510
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23507, !noalias !23510 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23512)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23508, !noalias !23513, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23508, !noalias !23513, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23514, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23514, !inline_history !23502
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types22DurationNanosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23507
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23508, !noalias !23513, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23508, !noalias !23513, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23514, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23514, !inline_history !23502
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 87
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23512)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23515
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23515, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23508, !noalias !23513, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23508, !noalias !23513, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23514, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 167
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23516
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23516
  store ptr %i.b, ptr %i.a, align 8, !noalias !23516
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23516
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23508, !noalias !23513, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23508, !noalias !23513, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23516
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23517, !noalias !23510, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23507, !noalias !23510
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23507, !noalias !23510
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23507, !noalias !23510
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23507, !noalias !23510 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23518)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23508, !noalias !23513, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23508, !noalias !23513, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23514, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23514, !inline_history !23502
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types22DurationNanosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23507
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23508, !noalias !23513, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23508, !noalias !23513, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23514, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23514, !inline_history !23502
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23518)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23519
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23519, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23508, !noalias !23513, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23508, !noalias !23513, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23514, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23514, !inline_history !23502
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types22DurationNanosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23507
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23508, !noalias !23513, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23508, !noalias !23513, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23514, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23514, !inline_history !23502
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23514, !inline_history !23502
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23514, !inline_history !23502
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types22DurationNanosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23507
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23508, !noalias !23513, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23508, !noalias !23513, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23514, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23514, !inline_history !23502
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23514, !inline_history !23502
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types22DurationNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23536)
  call void @llvm.experimental.noalias.scope.decl(metadata !23537)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23538, !noalias !23539, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 3                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23540, !noalias !23539, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23536, !noalias !23539
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23536, !noalias !23539
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23536, !noalias !23539
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23536, !noalias !23539 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23541)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23537, !noalias !23542, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23537, !noalias !23542, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23543, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23543, !inline_history !23531
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types23DurationMicrosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23536
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23537, !noalias !23542, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23537, !noalias !23542, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23543, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23543, !inline_history !23531
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 87
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23541)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23544
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23544, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23537, !noalias !23542, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23537, !noalias !23542, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23543, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 167
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23545
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23545
  store ptr %i.b, ptr %i.a, align 8, !noalias !23545
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23545
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23537, !noalias !23542, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23537, !noalias !23542, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23545
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23546, !noalias !23539, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23536, !noalias !23539
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23536, !noalias !23539
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23536, !noalias !23539
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23536, !noalias !23539 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23547)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23537, !noalias !23542, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23537, !noalias !23542, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23543, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23543, !inline_history !23531
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types23DurationMicrosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23536
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23537, !noalias !23542, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23537, !noalias !23542, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23543, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23543, !inline_history !23531
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23547)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23548
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23548, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23537, !noalias !23542, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23537, !noalias !23542, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23543, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23543, !inline_history !23531
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types23DurationMicrosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23536
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23537, !noalias !23542, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23537, !noalias !23542, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23543, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23543, !inline_history !23531
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23543, !inline_history !23531
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23543, !inline_history !23531
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types23DurationMicrosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23536
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23537, !noalias !23542, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23537, !noalias !23542, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23543, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23543, !inline_history !23531
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23543, !inline_history !23531
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23565)
  call void @llvm.experimental.noalias.scope.decl(metadata !23566)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23567, !noalias !23568, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 3                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23569, !noalias !23568, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23565, !noalias !23568
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23565, !noalias !23568
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23565, !noalias !23568
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23565, !noalias !23568 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23570)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23566, !noalias !23571, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23566, !noalias !23571, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23572, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23572, !inline_history !23560
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types23DurationMillisecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23565
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23566, !noalias !23571, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23566, !noalias !23571, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23572, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23572, !inline_history !23560
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 87
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23570)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23573
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23573, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23566, !noalias !23571, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23566, !noalias !23571, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23572, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 167
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23574
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23574
  store ptr %i.b, ptr %i.a, align 8, !noalias !23574
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23574
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23566, !noalias !23571, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23566, !noalias !23571, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23574
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23575, !noalias !23568, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23565, !noalias !23568
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23565, !noalias !23568
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23565, !noalias !23568
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23565, !noalias !23568 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23576)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23566, !noalias !23571, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23566, !noalias !23571, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23572, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23572, !inline_history !23560
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types23DurationMillisecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23565
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23566, !noalias !23571, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23566, !noalias !23571, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23572, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23572, !inline_history !23560
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23576)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23577
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23577, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23566, !noalias !23571, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23566, !noalias !23571, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23572, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23572, !inline_history !23560
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types23DurationMillisecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23565
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23566, !noalias !23571, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23566, !noalias !23571, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23572, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23572, !inline_history !23560
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23572, !inline_history !23560
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23572, !inline_history !23560
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types23DurationMillisecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23565
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23566, !noalias !23571, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23566, !noalias !23571, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23572, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23572, !inline_history !23560
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23572, !inline_history !23560
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23DurationMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23594)
  call void @llvm.experimental.noalias.scope.decl(metadata !23595)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23596, !noalias !23597, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 3                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23598, !noalias !23597, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23594, !noalias !23597
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23594, !noalias !23597
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23594, !noalias !23597
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23594, !noalias !23597 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23599)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23595, !noalias !23600, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23595, !noalias !23600, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23601, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23601, !inline_history !23589
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types23TimestampNanosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23594
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23595, !noalias !23600, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23595, !noalias !23600, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23601, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23601, !inline_history !23589
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 87
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23599)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23602
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23602, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23595, !noalias !23600, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23595, !noalias !23600, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23601, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 167
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23603
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23603
  store ptr %i.b, ptr %i.a, align 8, !noalias !23603
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23603
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23595, !noalias !23600, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23595, !noalias !23600, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23603
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23604, !noalias !23597, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23594, !noalias !23597
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23594, !noalias !23597
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23594, !noalias !23597
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23594, !noalias !23597 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23605)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23595, !noalias !23600, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23595, !noalias !23600, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23601, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23601, !inline_history !23589
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types23TimestampNanosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23594
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23595, !noalias !23600, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23595, !noalias !23600, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23601, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23601, !inline_history !23589
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23605)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23606
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23606, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23595, !noalias !23600, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23595, !noalias !23600, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23601, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23601, !inline_history !23589
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types23TimestampNanosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23594
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23595, !noalias !23600, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23595, !noalias !23600, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23601, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23601, !inline_history !23589
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23601, !inline_history !23589
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23601, !inline_history !23589
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types23TimestampNanosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23594
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23595, !noalias !23600, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23595, !noalias !23600, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23601, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23601, !inline_history !23589
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23601, !inline_history !23589
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types23TimestampNanosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23623)
  call void @llvm.experimental.noalias.scope.decl(metadata !23624)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23625, !noalias !23626, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 4                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23627, !noalias !23626, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23623, !noalias !23626
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23623, !noalias !23626
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23623, !noalias !23626
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23623, !noalias !23626 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23628)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23624, !noalias !23629, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23624, !noalias !23629, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23629, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23629, !inline_history !23618
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types24IntervalMonthDayNanoTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23623
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23624, !noalias !23629, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23624, !noalias !23629, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23629, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23629, !inline_history !23618
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 175
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23628)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23630
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23630, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23624, !noalias !23629, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23624, !noalias !23629, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23629, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 335
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23631
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23631
  store ptr %i.b, ptr %i.a, align 8, !noalias !23631
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23631
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23624, !noalias !23629, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23624, !noalias !23629, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23631
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23632, !noalias !23626, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23623, !noalias !23626
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23623, !noalias !23626
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23623, !noalias !23626
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23623, !noalias !23626 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23633)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23624, !noalias !23629, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23624, !noalias !23629, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23629, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23629, !inline_history !23618
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types24IntervalMonthDayNanoTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23623
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23624, !noalias !23629, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23624, !noalias !23629, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23629, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23629, !inline_history !23618
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23633)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23634
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23634, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23624, !noalias !23629, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23624, !noalias !23629, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23629, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23629, !inline_history !23618
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types24IntervalMonthDayNanoTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23623
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23624, !noalias !23629, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23624, !noalias !23629, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23629, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23629, !inline_history !23618
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23629, !inline_history !23618
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23629, !inline_history !23618
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types24IntervalMonthDayNanoTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23623
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23624, !noalias !23629, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23624, !noalias !23629, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23629, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23629, !inline_history !23618
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23629, !inline_history !23618
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24IntervalMonthDayNanoTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24IntervalMonthDayNanoTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23651)
  call void @llvm.experimental.noalias.scope.decl(metadata !23652)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23653, !noalias !23654, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 3                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23655, !noalias !23654, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23651, !noalias !23654
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23651, !noalias !23654
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23651, !noalias !23654
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23651, !noalias !23654 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23656)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23652, !noalias !23657, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23652, !noalias !23657, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23658, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23658, !inline_history !23646
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types24TimestampMicrosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23651
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23652, !noalias !23657, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23652, !noalias !23657, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23658, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23658, !inline_history !23646
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 87
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23656)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23659
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23659, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23652, !noalias !23657, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23652, !noalias !23657, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23658, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 167
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23660
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23660
  store ptr %i.b, ptr %i.a, align 8, !noalias !23660
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23660
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23652, !noalias !23657, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23652, !noalias !23657, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23660
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23661, !noalias !23654, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23651, !noalias !23654
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23651, !noalias !23654
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23651, !noalias !23654
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23651, !noalias !23654 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23662)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23652, !noalias !23657, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23652, !noalias !23657, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23658, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23658, !inline_history !23646
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types24TimestampMicrosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23651
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23652, !noalias !23657, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23652, !noalias !23657, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23658, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23658, !inline_history !23646
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23662)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23663
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23663, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23652, !noalias !23657, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23652, !noalias !23657, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23658, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23658, !inline_history !23646
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types24TimestampMicrosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23651
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23652, !noalias !23657, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23652, !noalias !23657, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23658, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23658, !inline_history !23646
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23658, !inline_history !23646
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23658, !inline_history !23646
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types24TimestampMicrosecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23651
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23652, !noalias !23657, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23652, !noalias !23657, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23658, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23658, !inline_history !23646
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23658, !inline_history !23646
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMicrosecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23680)
  call void @llvm.experimental.noalias.scope.decl(metadata !23681)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23682, !noalias !23683, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 3                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23684, !noalias !23683, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23680, !noalias !23683
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23680, !noalias !23683
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23680, !noalias !23683
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23680, !noalias !23683 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23685)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23681, !noalias !23686, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23681, !noalias !23686, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23687, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23687, !inline_history !23675
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types24TimestampMillisecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23680
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23681, !noalias !23686, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23681, !noalias !23686, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23687, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23687, !inline_history !23675
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 87
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23685)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23688
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23688, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23681, !noalias !23686, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23681, !noalias !23686, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23687, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 167
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23689
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23689
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23689
  store ptr %i.b, ptr %i.a, align 8, !noalias !23689
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23689
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23681, !noalias !23686, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23681, !noalias !23686, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23689
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23690, !noalias !23683, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23680, !noalias !23683
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23680, !noalias !23683
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23680, !noalias !23683
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23680, !noalias !23683 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23691)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23681, !noalias !23686, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23681, !noalias !23686, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23687, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23687, !inline_history !23675
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types24TimestampMillisecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23680
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23681, !noalias !23686, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23681, !noalias !23686, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23687, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23687, !inline_history !23675
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23691)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23692
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23692, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23681, !noalias !23686, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23681, !noalias !23686, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23687, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23687, !inline_history !23675
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types24TimestampMillisecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23680
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23681, !noalias !23686, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23681, !noalias !23686, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23687, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23687, !inline_history !23675
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23687, !inline_history !23675
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23687, !inline_history !23675
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types24TimestampMillisecondTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23680
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23681, !noalias !23686, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23681, !noalias !23686, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23687, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23687, !inline_history !23675
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23687, !inline_history !23675
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types24TimestampMillisecondTypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types8Int8TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23707)
  call void @llvm.experimental.noalias.scope.decl(metadata !23708)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23709, !noalias !23710, !noundef !4 ; 13 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.j, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !23711, !noalias !23710, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.l, null            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !23707, !noalias !23710 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !23707, !noalias !23710 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !23707, !noalias !23710 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.s, align 8, !alias.scope !23707, !noalias !23710 ; 4 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.t, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.t = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23712)
  %i.u = load ptr, ptr %1, align 8, !alias.scope !23708, !noalias !23713, !nonnull !4, !noundef !4
  %i.v = load ptr, ptr %i.f, align 8, !alias.scope !23708, !noalias !23713, !nonnull !4, !align !6, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !4, !noalias !23714, !nonnull !4
  %i.y = call noundef zeroext i1 %i.x(ptr noundef nonnull %i.u, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23714, !inline_history !23704
  br i1 %i.y, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.z = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types8Int8TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23707
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %1, align 8, !alias.scope !23708, !noalias !23713, !nonnull !4, !noundef !4
  %i.ab = load ptr, ptr %i.f, align 8, !alias.scope !23708, !noalias !23713, !nonnull !4, !align !6, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !4, !noalias !23714, !nonnull !4
  %i.ae = call noundef zeroext i1 %i.ad(ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23714, !inline_history !23704
  br i1 %i.ae, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond144.not.i = icmp eq i64 %i.t, %.sroa.0.0.i.i
  br i1 %exitcond144.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e
  %i.af = icmp ugt i64 %i.j, 10
  br i1 %i.af, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ag, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ag = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23712)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.n
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23715
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ah = add i64 %.sroa.015.0124.i, %i.r         ; 2 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !23715, !noundef !4
  %i.al = trunc i64 %i.ah to i8
  %i.am = and i8 %i.al, 7
  %i.an = xor i8 %i.ak, -1
  %i.ao = lshr i8 %i.an, %i.am
  %i.ap = trunc i8 %i.ao to i1
  %i.aq = load ptr, ptr %1, align 8, !alias.scope !23708, !noalias !23713, !nonnull !4, !noundef !4 ; 2 uses
  %i.ar = load ptr, ptr %i.f, align 8, !alias.scope !23708, !noalias !23713, !nonnull !4, !align !6, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !invariant.load !4, !noalias !23714, !nonnull !4 ; 2 uses
  br i1 %i.ap, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.au = icmp ugt i64 %i.j, 20
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23716
  %i.av = add i64 %i.j, -20
  store i64 %i.av, ptr %i.b, align 8, !noalias !23716
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23716
  store ptr %i.b, ptr %i.a, align 8, !noalias !23716
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23716
  %i.aw = load ptr, ptr %1, align 8, !alias.scope !23708, !noalias !23713, !nonnull !4, !noundef !4
end_hunk_2
begin_hunk_3_@_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types9Int16TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23734
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23735, !noalias !23740, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23735, !noalias !23740, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23741, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23741, !inline_history !23729
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23741, !inline_history !23729
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23741, !inline_history !23729
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types9Int16TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23734
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23735, !noalias !23740, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23735, !noalias !23740, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23741, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23741, !inline_history !23729
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23741, !inline_history !23729
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23763)
  call void @llvm.experimental.noalias.scope.decl(metadata !23764)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23765, !noalias !23766, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 2                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23767, !noalias !23766, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23763, !noalias !23766
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23763, !noalias !23766
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23763, !noalias !23766
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23763, !noalias !23766 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23768)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23764, !noalias !23769, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23764, !noalias !23769, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23770, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23770, !inline_history !23758
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types9Int32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23763
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23764, !noalias !23769, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23764, !noalias !23769, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23770, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23770, !inline_history !23758
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 43
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23768)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23771
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23771, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23764, !noalias !23769, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23764, !noalias !23769, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23770, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 83
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23772
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23772
  store ptr %i.b, ptr %i.a, align 8, !noalias !23772
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23772
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23764, !noalias !23769, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23764, !noalias !23769, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23772
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23773, !noalias !23766, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23763, !noalias !23766
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23763, !noalias !23766
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23763, !noalias !23766
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23763, !noalias !23766 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23774)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23764, !noalias !23769, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23764, !noalias !23769, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23770, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23770, !inline_history !23758
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types9Int32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23763
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23764, !noalias !23769, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23764, !noalias !23769, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23770, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23770, !inline_history !23758
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23774)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23775
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23775, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23764, !noalias !23769, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23764, !noalias !23769, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23770, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23770, !inline_history !23758
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types9Int32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23763
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23764, !noalias !23769, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23764, !noalias !23769, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23770, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23770, !inline_history !23758
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23770, !inline_history !23758
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23770, !inline_history !23758
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types9Int32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23763
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23764, !noalias !23769, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23764, !noalias !23769, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23770, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23770, !inline_history !23758
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23770, !inline_history !23758
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23792)
  call void @llvm.experimental.noalias.scope.decl(metadata !23793)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23794, !noalias !23795, !noundef !4 ; 7 uses
  %i.k = lshr i64 %i.j, 3                         ; 7 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !23796, !noalias !23795, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !23792, !noalias !23795
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !23792, !noalias !23795
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !23792, !noalias !23795
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !23792, !noalias !23795 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23797)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !23793, !noalias !23798, !nonnull !4, !noundef !4
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !23793, !noalias !23798, !nonnull !4, !align !6, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !noalias !23799, !nonnull !4
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23799, !inline_history !23787
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types9Int64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23792
  br i1 %i.aa, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !23793, !noalias !23798, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !23793, !noalias !23798, !nonnull !4, !align !6, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !23799, !nonnull !4
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23799, !inline_history !23787
  br i1 %i.af, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 87
  br i1 %i.ag, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23797)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23800
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !23800, !noundef !4
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !23793, !noalias !23798, !nonnull !4, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !23793, !noalias !23798, !nonnull !4, !align !6, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !noalias !23799, !nonnull !4 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 167
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23801
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !23801
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23801
  store ptr %i.b, ptr %i.a, align 8, !noalias !23801
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23801
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !23793, !noalias !23798, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !23793, !noalias !23798, !nonnull !4, !align !6, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @68, ptr noundef nonnull %i.a), !noalias !23799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23801
  br i1 %i.az, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !23802, !noalias !23795, !noundef !4
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23792, !noalias !23795
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23792, !noalias !23795
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !23792, !noalias !23795
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !23792, !noalias !23795 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23803)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !23793, !noalias !23798, !nonnull !4, !noundef !4
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !23793, !noalias !23798, !nonnull !4, !align !6, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !4, !noalias !23799, !nonnull !4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23799, !inline_history !23787
  br i1 %i.bq, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types9Int64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23792
  br i1 %i.br, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !23793, !noalias !23798, !nonnull !4, !noundef !4
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !23793, !noalias !23798, !nonnull !4, !align !6, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !4, !noalias !23799, !nonnull !4
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23799, !inline_history !23787
  br i1 %i.bw, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23803)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i, label %bb.m, !prof !9

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23804
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !23804, !noundef !4
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !23793, !noalias !23798, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !23793, !noalias !23798, !nonnull !4, !align !6, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !23799, !nonnull !4 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23799, !inline_history !23787
  br i1 %i.cm, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types9Int64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23792
  br i1 %i.cn, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !23793, !noalias !23798, !nonnull !4, !noundef !4
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !23793, !noalias !23798, !nonnull !4, !align !6, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !23799, !nonnull !4
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23799, !inline_history !23787
  br i1 %i.cs, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23799, !inline_history !23787
  br i1 %i.ct, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.p

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23799, !inline_history !23787
  br i1 %i.cu, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types9Int64TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23792
  br i1 %i.cv, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !23793, !noalias !23798, !nonnull !4, !noundef !4
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !23793, !noalias !23798, !nonnull !4, !align !6, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !23799, !nonnull !4
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23799, !inline_history !23787
  br i1 %i.da, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 8), !noalias !23799, !inline_history !23787
  br i1 %i.db, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !4, !nonnull !4
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 1) #43
  br label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9UInt8TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !6, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @485, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9UInt8TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23819)
  call void @llvm.experimental.noalias.scope.decl(metadata !23820)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !23821, !noalias !23822, !noundef !4 ; 13 uses
  %.sroa.0.0.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.j, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9UInt8TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !23823, !noalias !23822, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.l, null            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !23819, !noalias !23822 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !23819, !noalias !23822 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !23819, !noalias !23822 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.s, align 8, !alias.scope !23819, !noalias !23822 ; 4 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9UInt8TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9UInt8TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.t, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.t = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23824)
  %i.u = load ptr, ptr %1, align 8, !alias.scope !23820, !noalias !23825, !nonnull !4, !noundef !4
  %i.v = load ptr, ptr %i.f, align 8, !alias.scope !23820, !noalias !23825, !nonnull !4, !align !6, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !4, !noalias !23826, !nonnull !4
  %i.y = call noundef zeroext i1 %i.x(ptr noundef nonnull %i.u, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 2), !noalias !23826, !inline_history !23816
  br i1 %i.y, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9UInt8TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9UInt8TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i
  %i.z = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types9UInt8TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs14kWLkQVSKO_14deltalake_core(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23819
  br i1 %i.z, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9UInt8TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %1, align 8, !alias.scope !23820, !noalias !23825, !nonnull !4, !noundef !4
  %i.ab = load ptr, ptr %i.f, align 8, !alias.scope !23820, !noalias !23825, !nonnull !4, !align !6, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !4, !noalias !23826, !nonnull !4
  %i.ae = call noundef zeroext i1 %i.ad(ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 2), !noalias !23826, !inline_history !23816
  br i1 %i.ae, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9UInt8TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond144.not.i = icmp eq i64 %i.t, %.sroa.0.0.i.i
  br i1 %exitcond144.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9UInt8TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e
  %i.af = icmp ugt i64 %i.j, 10
  br i1 %i.af, label %bb.g, label %_RINvNtCs1N9T06jgEdt_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9UInt8TypeENCNvXs4_BW_BT_NtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ag, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ag = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23824)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.n
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9UInt8TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !5

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40, !noalias !23827
  unreachable

_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9UInt8TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.split.i
  %i.ah = add i64 %.sroa.015.0124.i, %i.r         ; 2 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !23827, !noundef !4
  %i.al = trunc i64 %i.ah to i8
  %i.am = and i8 %i.al, 7
  %i.an = xor i8 %i.ak, -1
  %i.ao = lshr i8 %i.an, %i.am
  %i.ap = trunc i8 %i.ao to i1
  %i.aq = load ptr, ptr %1, align 8, !alias.scope !23820, !noalias !23825, !nonnull !4, !noundef !4 ; 2 uses
  %i.ar = load ptr, ptr %i.f, align 8, !alias.scope !23820, !noalias !23825, !nonnull !4, !align !6, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !invariant.load !4, !noalias !23826, !nonnull !4 ; 2 uses
  br i1 %i.ap, label %bb.u, label %_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9UInt8TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.au = icmp ugt i64 %i.j, 20
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23828
  %i.av = add i64 %i.j, -20
  store i64 %i.av, ptr %i.b, align 8, !noalias !23828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23828
  store ptr %i.b, ptr %i.a, align 8, !noalias !23828
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !23828
  %i.aw = load ptr, ptr %1, align 8, !alias.scope !23820, !noalias !23825, !nonnull !4, !noundef !4
end_hunk_3
