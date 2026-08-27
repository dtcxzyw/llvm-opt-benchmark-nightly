Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.10?download=true
inline.NumInlined: 4756
inline.NumDeleted: 1858
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortRNtNtCscdodAO9FK5_5alloc6string6StringNvYBW_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter:bb.a
  %i.cb = load i8, ptr %i.ca, align 1, !noundef !12
  %.not29 = icmp ult i8 %i.cb, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cd, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bz
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !12 ; 3 uses
  %i.cg = lshr i64 %i.cf, 1                       ; 5 uses
  %i.ch = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.ci = add nuw i64 %i.cg, %i.ch                ; 5 uses
  %i.cj = sub i64 %.sroa.09.0, %i.ci
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cj ; 3 uses
  %i.cl = icmp samesign ugt i64 %i.ci, %3
  %i.cm = trunc i64 %.sroa.023.137 to i1
  %i.cn = or i64 %i.cf, %.sroa.023.137
  %i.co = trunc i64 %i.cn to i1
  %or.cond3.i = or i1 %i.cl, %i.co
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cp = trunc i64 %i.cf to i1
  br i1 %i.cp, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cq = shl nuw nsw i64 %i.ci, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cm, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.cr = or i64 %i.cg, 1
  %i.cs = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cr, i1 true)
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = shl nuw nsw i32 %i.ct, 1
  %i.cv = xor i32 %i.cu, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 1152921504606846976) %i.cg, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeRNtNtCscdodAO9FK5_5alloc6string6StringNvYBX_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 1152921504606846976) %i.ci, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.cg, ptr noalias noundef nonnull %5)
  %i.cw = shl nuw nsw i64 %i.ci, 1
  %i.cx = or disjoint i64 %i.cw, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

bb.x:                                             ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cg
  %i.cz = or i64 %i.ch, 1
  %i.da = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cz, i1 true)
  %i.db = trunc nuw nsw i64 %i.da to i32
  %i.dc = shl nuw nsw i32 %i.db, 1
  %i.dd = xor i32 %i.dc, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %i.cy, i64 noundef range(i64 0, 1152921504606846976) %i.ch, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5)
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtCscdodAO9FK5_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.cx, %bb.w ], [ %i.cq, %bb.t ] ; 2 uses
  %i.de = icmp ugt i64 %i.bz, 1
  br i1 %i.de, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.df = add i64 %.sroa.02.1.lcssa, 1
  %i.dg = lshr i64 %.sroa.018.0, 1
  %i.dh = add nuw i64 %i.dg, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.di = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.di, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dj = or i64 %1, 1
  %i.dk = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dj, i1 true)
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = xor i32 %i.dm, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtCscdodAO9FK5_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSBW_7sort_byNCNvXs1_NtB11_8settingsNtB2Z_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB15_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.ah, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ah ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fl, %bb.ah ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fj, %bb.ah ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvXs1_NtB18_8settingsNtB37_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1c_.exit
  %.sroa.021.0 = phi i8 [ %i.ec, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvXs1_NtB18_8settingsNtB37_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1c_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvXs1_NtB18_8settingsNtB37_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1c_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2452)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvXs1_NtB17_8settingsNtB36_8SettingsNtNtB8_3fmt7Display3fmts4_0E0EB1b_.exit.i, %bb.h
  br i1 %4, label %bb.y, label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseBD_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val10.i = load ptr, ptr %i.p, align 8, !alias.scope !2452, !noalias !2455, !nonnull !12, !align !171, !noundef !12 ; 5 uses
  %.val11.i = load ptr, ptr %i.n, align 8, !alias.scope !2452, !noalias !2455, !nonnull !12, !align !171, !noundef !12 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2461)
  %i.q = load i64, ptr %.val10.i, align 8, !range !20, !alias.scope !2458, !noalias !2463, !noundef !12 ; 3 uses
  %i.r = icmp ne i64 %i.q, -1                     ; 3 uses
  %i.s = zext i1 %i.r to i8
  %i.t = load i64, ptr %.val11.i, align 8, !range !20, !alias.scope !2461, !noalias !2464, !noundef !12
  %i.u = icmp eq i64 %i.t, -1                     ; 3 uses
  %not..i.i.i.i = xor i1 %i.u, true               ; 2 uses
  %.neg.i.i.i.i = sext i1 %not..i.i.i.i to i8
  %i.v = add nsw i8 %.neg.i.i.i.i, %i.s
  %i.w = xor i1 %i.r, %i.u
  br i1 %i.w, label %bb.l, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8 ; 2 uses
  br i1 %i.r, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !2458, !noalias !2463, !nonnull !12, !noundef !12
  %i.z = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !2458, !noalias !2463, !noundef !12 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !2461, !noalias !2464, !nonnull !12, !noundef !12
  %i.ad = getelementptr inbounds nuw i8, ptr %.val11.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !2461, !noalias !2464, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ae)
  %i.af = tail call i32 @memcmp(ptr nonnull %i.y, ptr nonnull %i.ac, i64 %spec.store.select.i.i.i.i), !noalias !2465 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp eq i32 %i.af, 0
  %i.ai = sub i64 %i.aa, %i.ae
  %spec.select.i.i.i.i = select i1 %i.ah, i64 %i.ai, i64 %i.ag
  %i.aj = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.assume(i1 %i.u)
  %i.ak = load i8, ptr %i.x, align 8, !range !2466, !alias.scope !2458, !noalias !2463, !noundef !12
  %i.al = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.am = load i8, ptr %i.al, align 8, !range !2466, !alias.scope !2461, !noalias !2464, !noundef !12
  %i.an = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ak, i8 %i.am)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i: ; preds = %bb.n, %bb.m, %bb.k
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.aj, %bb.m ], [ %i.an, %bb.n ], [ %i.v, %bb.k ]
  %i.ao = icmp eq i8 %.sroa.0.0.i.i.i.i, -1       ; 2 uses
  %.not43.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.ao, label %.preheader.i, label %.preheader34.i

.preheader34.i:                                   ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i
  br i1 %.not43.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseBD_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i
  br i1 %.not43.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.preheader.i.i.i, label %.lr.ph39.i

.lr.ph.i:                                         ; preds = %.preheader34.i, %bb.r
  %i.ap = phi i64 [ %i.at, %bb.r ], [ %i.q, %.preheader34.i ]
  %.val9.i = phi ptr [ %.val8.i, %bb.r ], [ %.val10.i, %.preheader34.i ] ; 3 uses
  %.sroa.01.0.i36.i = phi i64 [ %i.br, %bb.r ], [ 2, %.preheader34.i ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i36.i
  %i.ar = add nsw i64 %.sroa.01.0.i36.i, -1
  %i.as = icmp samesign ult i64 %i.ar, %i.m
  tail call void @llvm.assume(i1 %i.as)
  %.val8.i = load ptr, ptr %i.aq, align 8, !alias.scope !2452, !noalias !2455, !nonnull !12, !align !171, !noundef !12 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2470)
  %i.at = load i64, ptr %.val8.i, align 8, !range !20, !alias.scope !2467, !noalias !2472, !noundef !12 ; 2 uses
  %i.au = icmp ne i64 %i.at, -1                   ; 3 uses
  %i.av = zext i1 %i.au to i8
  %i.aw = icmp eq i64 %i.ap, -1                   ; 3 uses
  %not..i.i.i12.i = xor i1 %i.aw, true            ; 2 uses
  %.neg.i.i.i13.i = sext i1 %not..i.i.i12.i to i8
  %i.ax = add nsw i8 %i.av, %.neg.i.i.i13.i
  %i.ay = xor i1 %i.aw, %i.au
  br i1 %i.ay, label %bb.o, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit17.i

bb.o:                                             ; preds = %.lr.ph.i
  %i.az = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8 ; 2 uses
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %not..i.i.i12.i)
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !2467, !noalias !2472, !nonnull !12, !noundef !12
  %i.bb = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !2467, !noalias !2472, !noundef !12 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !2470, !noalias !2473, !nonnull !12, !noundef !12
  %i.bf = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !2470, !noalias !2473, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.bg)
  %i.bh = tail call i32 @memcmp(ptr nonnull %i.ba, ptr nonnull %i.be, i64 %spec.store.select.i.i.i15.i), !noalias !2474 ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp eq i32 %i.bh, 0
  %i.bk = sub i64 %i.bc, %i.bg
  %spec.select.i.i.i16.i = select i1 %i.bj, i64 %i.bk, i64 %i.bi
  %i.bl = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i16.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit17.i

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %i.aw)
  %i.bm = load i8, ptr %i.az, align 8, !range !2466, !alias.scope !2467, !noalias !2472, !noundef !12
  %i.bn = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.bo = load i8, ptr %i.bn, align 8, !range !2466, !alias.scope !2470, !noalias !2473, !noundef !12
  %i.bp = tail call i8 @llvm.ucmp.i8.i8(i8 %i.bm, i8 %i.bo)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit17.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit17.i: ; preds = %bb.q, %bb.p, %.lr.ph.i
  %.sroa.0.0.i.i.i14.i = phi i8 [ %i.bl, %bb.p ], [ %i.bp, %bb.q ], [ %i.ax, %.lr.ph.i ]
  %i.bq = icmp eq i8 %.sroa.0.0.i.i.i14.i, -1
  br i1 %i.bq, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvXs1_NtB17_8settingsNtB36_8SettingsNtNtB8_3fmt7Display3fmts4_0E0EB1b_.exit.i, label %bb.r

bb.r:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit17.i
  %i.br = add nuw nsw i64 %.sroa.01.0.i36.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.br, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvXs1_NtB17_8settingsNtB36_8SettingsNtNtB8_3fmt7Display3fmts4_0E0EB1b_.exit.i, label %.lr.ph.i

.lr.ph39.i:                                       ; preds = %.preheader.i, %bb.v
  %i.bs = phi i64 [ %i.bw, %bb.v ], [ %i.q, %.preheader.i ]
  %.val7.i = phi ptr [ %.val.i, %bb.v ], [ %.val10.i, %.preheader.i ] ; 3 uses
  %.sroa.01.1.i38.i = phi i64 [ %i.cu, %bb.v ], [ 2, %.preheader.i ] ; 4 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i38.i
  %i.bu = add nsw i64 %.sroa.01.1.i38.i, -1
  %i.bv = icmp samesign ult i64 %i.bu, %i.m
  tail call void @llvm.assume(i1 %i.bv)
  %.val.i = load ptr, ptr %i.bt, align 8, !alias.scope !2452, !noalias !2455, !nonnull !12, !align !171, !noundef !12 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2478)
  %i.bw = load i64, ptr %.val.i, align 8, !range !20, !alias.scope !2475, !noalias !2480, !noundef !12 ; 2 uses
  %i.bx = icmp ne i64 %i.bw, -1                   ; 3 uses
  %i.by = zext i1 %i.bx to i8
  %i.bz = icmp eq i64 %i.bs, -1                   ; 3 uses
  %not..i.i.i18.i = xor i1 %i.bz, true            ; 2 uses
  %.neg.i.i.i19.i = sext i1 %not..i.i.i18.i to i8
  %i.ca = add nsw i8 %i.by, %.neg.i.i.i19.i
  %i.cb = xor i1 %i.bz, %i.bx
  br i1 %i.cb, label %bb.s, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit23.i

bb.s:                                             ; preds = %.lr.ph39.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  br i1 %i.bx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.assume(i1 %not..i.i.i18.i)
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !2475, !noalias !2480, !nonnull !12, !noundef !12
  %i.ce = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !2475, !noalias !2480, !noundef !12 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !2478, !noalias !2481, !nonnull !12, !noundef !12
  %i.ci = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !2478, !noalias !2481, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i21.i = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 %i.cj)
  %i.ck = tail call i32 @memcmp(ptr nonnull %i.cd, ptr nonnull %i.ch, i64 %spec.store.select.i.i.i21.i), !noalias !2482 ; 2 uses
  %i.cl = sext i32 %i.ck to i64
  %i.cm = icmp eq i32 %i.ck, 0
  %i.cn = sub i64 %i.cf, %i.cj
  %spec.select.i.i.i22.i = select i1 %i.cm, i64 %i.cn, i64 %i.cl
  %i.co = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i22.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit23.i

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.assume(i1 %i.bz)
  %i.cp = load i8, ptr %i.cc, align 8, !range !2466, !alias.scope !2475, !noalias !2480, !noundef !12
  %i.cq = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8
  %i.cr = load i8, ptr %i.cq, align 8, !range !2466, !alias.scope !2478, !noalias !2481, !noundef !12
  %i.cs = tail call i8 @llvm.ucmp.i8.i8(i8 %i.cp, i8 %i.cr)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit23.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit23.i: ; preds = %bb.u, %bb.t, %.lr.ph39.i
  %.sroa.0.0.i.i.i20.i = phi i8 [ %i.co, %bb.t ], [ %i.cs, %bb.u ], [ %i.ca, %.lr.ph39.i ]
  %i.ct = icmp eq i8 %.sroa.0.0.i.i.i20.i, -1
  br i1 %i.ct, label %bb.v, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvXs1_NtB17_8settingsNtB36_8SettingsNtNtB8_3fmt7Display3fmts4_0E0EB1b_.exit.i

bb.v:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit23.i
  %i.cu = add nuw nsw i64 %.sroa.01.1.i38.i, 1    ; 2 uses
  %exitcond47.not.i = icmp eq i64 %i.cu, %i.m
  br i1 %exitcond47.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvXs1_NtB17_8settingsNtB36_8SettingsNtNtB8_3fmt7Display3fmts4_0E0EB1b_.exit.i, label %.lr.ph39.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvXs1_NtB17_8settingsNtB36_8SettingsNtNtB8_3fmt7Display3fmts4_0E0EB1b_.exit.i: ; preds = %bb.r, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit17.i, %bb.v, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit23.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.v ], [ %.sroa.01.1.i38.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit23.i ], [ %.sroa.01.0.i36.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit17.i ], [ %i.m, %bb.r ] ; 6 uses
  %i.cv = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.cv)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.w

bb.w:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvXs1_NtB17_8settingsNtB36_8SettingsNtNtB8_3fmt7Display3fmts4_0E0EB1b_.exit.i
  br i1 %i.ao, label %bb.z, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseBD_.exit.i

bb.x:                                             ; preds = %bb.i
  %.sroa.0.0.i24.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.cw = shl nuw nsw i64 %.sroa.0.0.i24.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvXs1_NtB18_8settingsNtB37_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1c_.exit

bb.y:                                             ; preds = %bb.i
  %.sroa.0.0.i25.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvXs1_NtB1a_8settingsNtB39_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1e_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i25.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.cx = shl nuw nsw i64 %.sroa.0.0.i25.i, 1
  %i.cy = or disjoint i64 %i.cx, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvXs1_NtB18_8settingsNtB37_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1c_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseBD_.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i, %middle.block, %.preheader34.i, %bb.z, %bb.w, %bb.j
  %.sroa.0.0.i31.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.w ], [ %.sroa.0.0.i.i, %bb.z ], [ 2, %.preheader34.i ], [ %.sroa.0.0.i596670.i, %middle.block ], [ %.sroa.0.0.i596670.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i ]
  %i.cz = shl nuw nsw i64 %.sroa.0.0.i31.i, 1
  %i.da = or disjoint i64 %i.cz, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvXs1_NtB18_8settingsNtB37_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1c_.exit

bb.z:                                             ; preds = %bb.w
  %i.db = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2486)
  %.not.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseBD_.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.preheader.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.z
  %i.dc = phi i64 [ %i.db, %bb.z ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i596670.i = phi i64 [ %.sroa.0.0.i.i, %bb.z ], [ 2, %.preheader.i ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i596670.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.dc, 4
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.preheader.i.i.i
  %n.vec = and i64 %i.dc, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.de = xor i64 %index, -1
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 4 uses
  %i.dg = getelementptr [8 x i8], ptr %i.dd, i64 %i.de ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load = load <2 x ptr>, ptr %i.df, align 8, !alias.scope !2488, !noalias !2491
  %wide.load56 = load <2 x ptr>, ptr %i.dh, align 8, !alias.scope !2488, !noalias !2491
  %i.di = getelementptr i8, ptr %i.dg, i64 -8
  %i.dj = getelementptr i8, ptr %i.dg, i64 -24
  %wide.load57 = load <2 x i64>, ptr %i.di, align 8, !alias.scope !2492, !noalias !2493
  %wide.load58 = load <2 x i64>, ptr %i.dj, align 8, !alias.scope !2492, !noalias !2493
  %reverse = shufflevector <2 x i64> %wide.load57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x i64> %wide.load58, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <2 x i64> %reverse, ptr %i.df, align 8, !alias.scope !2488, !noalias !2491
  store <2 x i64> %reverse59, ptr %i.dk, align 8, !alias.scope !2488, !noalias !2491
  %i.dl = getelementptr i8, ptr %i.dg, i64 -8
  %i.dm = getelementptr i8, ptr %i.dg, i64 -24
  %reverse60 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse61 = shufflevector <2 x ptr> %wide.load56, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse60, ptr %i.dl, align 8, !alias.scope !2492, !noalias !2493
  store <2 x ptr> %reverse61, ptr %i.dm, align 8, !alias.scope !2492, !noalias !2493
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !2494

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseBD_.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.dt, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i.preheader ] ; 3 uses
  %i.do = xor i64 %.sroa.0.016.i.i.i, -1
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.dq = getelementptr [8 x i8], ptr %i.dd, i64 %i.do ; 2 uses
  %i.dr = load ptr, ptr %i.dp, align 8, !alias.scope !2488, !noalias !2491, !nonnull !12, !align !171, !noundef !12
  %i.ds = load i64, ptr %i.dq, align 8, !alias.scope !2492, !noalias !2493
  store i64 %i.ds, ptr %i.dp, align 8, !alias.scope !2488, !noalias !2491
  store ptr %i.dr, ptr %i.dq, align 8, !alias.scope !2492, !noalias !2493
  %i.dt = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dt, %i.dc
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseBD_.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutBD_.exit11.i.i.i, !llvm.loop !2495

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvXs1_NtB18_8settingsNtB37_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1c_.exit: ; preds = %bb.x, %bb.y, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseBD_.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.da, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseBD_.exit.i ], [ %i.cy, %bb.y ], [ %i.cw, %bb.x ] ; 2 uses
  %i.du = lshr i64 %.sroa.023.0, 1
  %i.dv = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.dw = sub nsw i64 %factor, %i.du
  %i.dx = add nuw nsw i64 %i.dv, %factor
  %i.dy = mul i64 %i.dw, %.sroa.0.0
  %i.dz = mul i64 %i.dx, %.sroa.0.0
  %i.ea = xor i64 %i.dz, %i.dy
  %i.eb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ea, i1 false)
  %i.ec = trunc nuw nsw i64 %i.eb to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtB1b_8settingsNtB3a_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1f_.exit
  %.sroa.02.138 = phi i64 [ %i.ed, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtB1b_8settingsNtB3a_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1f_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtB1b_8settingsNtB3a_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1f_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ed = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !noundef !12
  %.not29 = icmp ult i8 %i.ef, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.aa

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtB1b_8settingsNtB3a_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1f_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtB1b_8settingsNtB3a_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1f_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtB1b_8settingsNtB3a_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1f_.exit ] ; 3 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.eh, align 1
  br i1 %i.k, label %bb.ah, label %bb.ai

bb.aa:                                            ; preds = %.lr.ph
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ed
  %i.ej = load i64, ptr %i.ei, align 8, !noundef !12 ; 3 uses
  %i.ek = lshr i64 %i.ej, 1                       ; 5 uses
  %i.el = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.em = add nuw i64 %i.ek, %i.el                ; 5 uses
  %i.en = sub i64 %.sroa.09.0, %i.em
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.en ; 3 uses
  %i.ep = icmp samesign ugt i64 %i.em, %3
  %i.eq = trunc i64 %.sroa.023.137 to i1
  %i.er = or i64 %i.ej, %.sroa.023.137
  %i.es = trunc i64 %i.er to i1
  %or.cond3.i = or i1 %i.ep, %i.es
  br i1 %or.cond3.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.et = trunc i64 %i.ej to i1
  br i1 %i.et, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.eu = shl nuw nsw i64 %i.em, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtB1b_8settingsNtB3a_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1f_.exit

bb.ad:                                            ; preds = %bb.ae, %bb.ab
  br i1 %i.eq, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.ab
  %i.ev = or i64 %i.ek, 1
  %i.ew = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ev, i1 true)
  %i.ex = trunc nuw nsw i64 %i.ew to i32
  %i.ey = shl nuw nsw i32 %i.ex, 1
  %i.ez = xor i32 %i.ey, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvXs1_NtB1a_8settingsNtB39_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1e_(ptr noalias noundef nonnull align 8 %i.eo, i64 noundef range(i64 0, 1152921504606846976) %i.ek, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ez, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ad

bb.af:                                            ; preds = %bb.ag, %bb.ad
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_7sort_byNCNvXs1_NtB12_8settingsNtB30_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB16_(ptr noalias noundef nonnull align 8 %i.eo, i64 noundef range(i64 0, 1152921504606846976) %i.em, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.ek, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.fa = shl nuw nsw i64 %i.em, 1
  %i.fb = or disjoint i64 %i.fa, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtB1b_8settingsNtB3a_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1f_.exit

bb.ag:                                            ; preds = %bb.ad
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.ek
  %i.fd = or i64 %i.el, 1
  %i.fe = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.fd, i1 true)
  %i.ff = trunc nuw nsw i64 %i.fe to i32
  %i.fg = shl nuw nsw i32 %i.ff, 1
  %i.fh = xor i32 %i.fg, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvXs1_NtB1a_8settingsNtB39_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1e_(ptr noalias noundef nonnull align 8 %i.fc, i64 noundef range(i64 0, 1152921504606846976) %i.el, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.fh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.af

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvXs1_NtB1b_8settingsNtB3a_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1f_.exit: ; preds = %bb.ac, %bb.af
  %.sroa.0.0.i = phi i64 [ %i.fb, %bb.af ], [ %i.eu, %bb.ac ] ; 2 uses
  %i.fi = icmp ugt i64 %i.ed, 1
  br i1 %i.fi, label %.lr.ph, label %._crit_edge

bb.ah:                                            ; preds = %._crit_edge
  %i.fj = add i64 %.sroa.02.1.lcssa, 1
  %i.fk = lshr i64 %.sroa.018.0, 1
  %i.fl = add nuw i64 %i.fk, %.sroa.09.0
  br label %bb.f

end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecBX_EIB1N_jEENCINvMNtB1R_5sliceSBW_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0EB41_:bb.a
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !12
  %.not29 = icmp ult i8 %i.bk, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB17_EIB1X_jEENCINvMNtB21_5sliceSB16_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0EB4d_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB17_EIB1X_jEENCINvMNtB21_5sliceSB16_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0EB4d_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB17_EIB1X_jEENCINvMNtB21_5sliceSB16_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0EB4d_.exit ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bm, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !12 ; 3 uses
  %i.bp = lshr i64 %i.bo, 1                       ; 5 uses
  %i.bq = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.br = add nuw i64 %i.bp, %i.bq                ; 5 uses
  %i.bs = sub i64 %.sroa.09.0, %i.br
  %i.bt = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bs ; 3 uses
  %i.bu = icmp samesign ugt i64 %i.br, %3
  %i.bv = trunc i64 %.sroa.023.137 to i1
  %i.bw = or i64 %i.bo, %.sroa.023.137
  %i.bx = trunc i64 %i.bw to i1
  %or.cond3.i = or i1 %i.bu, %i.bx
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = trunc i64 %i.bo to i1
  br i1 %i.by, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bz = shl nuw nsw i64 %i.br, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB17_EIB1X_jEENCINvMNtB21_5sliceSB16_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0EB4d_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bv, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.ca = or i64 %i.bp, 1
  %i.cb = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = xor i32 %i.cd, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB16_EIB1W_jEENCINvMNtB20_5sliceSB15_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0EB4c_(ptr noalias noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 164703072086692426) %i.bp, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.ce, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecBY_EIB1O_jEENCINvMNtB1S_5sliceSBX_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0EB42_(ptr noalias noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 164703072086692426) %i.br, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %i.bp, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.cf = shl nuw nsw i64 %i.br, 1
  %i.cg = or disjoint i64 %i.cf, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB17_EIB1X_jEENCINvMNtB21_5sliceSB16_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0EB4d_.exit

bb.x:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw [56 x i8], ptr %i.bt, i64 %i.bp
  %i.ci = or i64 %i.bq, 1
  %i.cj = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB16_EIB1W_jEENCINvMNtB20_5sliceSB15_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0EB4c_(ptr noalias noundef nonnull align 8 %i.ch, i64 noundef range(i64 0, 164703072086692426) %i.bq, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB17_EIB1X_jEENCINvMNtB21_5sliceSB16_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0EB4d_.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.cg, %bb.w ], [ %i.bz, %bb.t ] ; 2 uses
  %i.cn = icmp ugt i64 %i.bi, 1
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.co = add i64 %.sroa.02.1.lcssa, 1
  %i.cp = lshr i64 %.sroa.018.0, 1
  %i.cq = add nuw i64 %i.cp, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cr = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.cr, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cs = or i64 %1, 1
  %i.ct = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB16_EIB1W_jEENCINvMNtB20_5sliceSB15_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0EB4c_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2e_5sliceSBW_7sort_byNCNvXs1_NtB12_8settingsNtB3o_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB16_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.ah, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ah ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fk, %bb.ah ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fi, %bb.ah ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2l_5sliceSB13_7sort_byNCNvXs1_NtB19_8settingsNtB3w_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1d_.exit
  %.sroa.021.0 = phi i8 [ %i.eb, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2l_5sliceSB13_7sort_byNCNvXs1_NtB19_8settingsNtB3w_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1d_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2l_5sliceSB13_7sort_byNCNvXs1_NtB19_8settingsNtB3w_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1d_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2917)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2k_5sliceSB12_7sort_byNCNvXs1_NtB18_8settingsNtB3v_8SettingsNtNtB8_3fmt7Display3fmts5_0E0EB1c_.exit.i, %bb.h
  br i1 %4, label %bb.y, label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val10.i = load ptr, ptr %i.p, align 8, !alias.scope !2917, !noalias !2920, !nonnull !12, !align !171, !noundef !12 ; 5 uses
  %.val11.i = load ptr, ptr %i.n, align 8, !alias.scope !2917, !noalias !2920, !nonnull !12, !align !171, !noundef !12 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2926)
  %i.q = load i64, ptr %.val10.i, align 8, !range !20, !alias.scope !2923, !noalias !2928, !noundef !12 ; 3 uses
  %i.r = icmp ne i64 %i.q, -1                     ; 3 uses
  %i.s = zext i1 %i.r to i8
  %i.t = load i64, ptr %.val11.i, align 8, !range !20, !alias.scope !2926, !noalias !2929, !noundef !12
  %i.u = icmp eq i64 %i.t, -1                     ; 3 uses
  %not..i.i.i.i = xor i1 %i.u, true               ; 2 uses
  %.neg.i.i.i.i = sext i1 %not..i.i.i.i to i8
  %i.v = add nsw i8 %.neg.i.i.i.i, %i.s
  %i.w = xor i1 %i.r, %i.u
  br i1 %i.w, label %bb.l, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8 ; 2 uses
  br i1 %i.r, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !2923, !noalias !2928, !nonnull !12, !noundef !12
  %i.z = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !2923, !noalias !2928, !noundef !12 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !2926, !noalias !2929, !nonnull !12, !noundef !12
  %i.ad = getelementptr inbounds nuw i8, ptr %.val11.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !2926, !noalias !2929, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ae)
  %i.af = tail call i32 @memcmp(ptr nonnull %i.y, ptr nonnull %i.ac, i64 %spec.store.select.i.i.i.i), !noalias !2930 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp eq i32 %i.af, 0
  %i.ai = sub i64 %i.aa, %i.ae
  %spec.select.i.i.i.i = select i1 %i.ah, i64 %i.ai, i64 %i.ag
  %i.aj = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.assume(i1 %i.u)
  %i.ak = load i8, ptr %i.x, align 8, !range !2466, !alias.scope !2923, !noalias !2928, !noundef !12
  %i.al = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.am = load i8, ptr %i.al, align 8, !range !2466, !alias.scope !2926, !noalias !2929, !noundef !12
  %i.an = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ak, i8 %i.am)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i: ; preds = %bb.n, %bb.m, %bb.k
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.aj, %bb.m ], [ %i.an, %bb.n ], [ %i.v, %bb.k ]
  %i.ao = icmp eq i8 %.sroa.0.0.i.i.i.i, -1       ; 2 uses
  %.not43.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.ao, label %.preheader.i, label %.preheader34.i

.preheader34.i:                                   ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i
  br i1 %.not43.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i
  br i1 %.not43.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.preheader.i.i.i, label %.lr.ph39.i

.lr.ph.i:                                         ; preds = %.preheader34.i, %bb.r
  %i.ap = phi i64 [ %i.at, %bb.r ], [ %i.q, %.preheader34.i ]
  %.val9.i = phi ptr [ %.val8.i, %bb.r ], [ %.val10.i, %.preheader34.i ] ; 3 uses
  %.sroa.01.0.i36.i = phi i64 [ %i.br, %bb.r ], [ 2, %.preheader34.i ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i36.i
  %i.ar = add nsw i64 %.sroa.01.0.i36.i, -1
  %i.as = icmp samesign ult i64 %i.ar, %i.m
  tail call void @llvm.assume(i1 %i.as)
  %.val8.i = load ptr, ptr %i.aq, align 8, !alias.scope !2917, !noalias !2920, !nonnull !12, !align !171, !noundef !12 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2934)
  %i.at = load i64, ptr %.val8.i, align 8, !range !20, !alias.scope !2931, !noalias !2936, !noundef !12 ; 2 uses
  %i.au = icmp ne i64 %i.at, -1                   ; 3 uses
  %i.av = zext i1 %i.au to i8
  %i.aw = icmp eq i64 %i.ap, -1                   ; 3 uses
  %not..i.i.i12.i = xor i1 %i.aw, true            ; 2 uses
  %.neg.i.i.i13.i = sext i1 %not..i.i.i12.i to i8
  %i.ax = add nsw i8 %i.av, %.neg.i.i.i13.i
  %i.ay = xor i1 %i.aw, %i.au
  br i1 %i.ay, label %bb.o, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit17.i

bb.o:                                             ; preds = %.lr.ph.i
  %i.az = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8 ; 2 uses
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %not..i.i.i12.i)
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !2931, !noalias !2936, !nonnull !12, !noundef !12
  %i.bb = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !2931, !noalias !2936, !noundef !12 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !2934, !noalias !2937, !nonnull !12, !noundef !12
  %i.bf = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !2934, !noalias !2937, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.bg)
  %i.bh = tail call i32 @memcmp(ptr nonnull %i.ba, ptr nonnull %i.be, i64 %spec.store.select.i.i.i15.i), !noalias !2938 ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp eq i32 %i.bh, 0
  %i.bk = sub i64 %i.bc, %i.bg
  %spec.select.i.i.i16.i = select i1 %i.bj, i64 %i.bk, i64 %i.bi
  %i.bl = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i16.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit17.i

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %i.aw)
  %i.bm = load i8, ptr %i.az, align 8, !range !2466, !alias.scope !2931, !noalias !2936, !noundef !12
  %i.bn = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.bo = load i8, ptr %i.bn, align 8, !range !2466, !alias.scope !2934, !noalias !2937, !noundef !12
  %i.bp = tail call i8 @llvm.ucmp.i8.i8(i8 %i.bm, i8 %i.bo)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit17.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit17.i: ; preds = %bb.q, %bb.p, %.lr.ph.i
  %.sroa.0.0.i.i.i14.i = phi i8 [ %i.bl, %bb.p ], [ %i.bp, %bb.q ], [ %i.ax, %.lr.ph.i ]
  %i.bq = icmp eq i8 %.sroa.0.0.i.i.i14.i, -1
  br i1 %i.bq, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2k_5sliceSB12_7sort_byNCNvXs1_NtB18_8settingsNtB3v_8SettingsNtNtB8_3fmt7Display3fmts5_0E0EB1c_.exit.i, label %bb.r

bb.r:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit17.i
  %i.br = add nuw nsw i64 %.sroa.01.0.i36.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.br, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2k_5sliceSB12_7sort_byNCNvXs1_NtB18_8settingsNtB3v_8SettingsNtNtB8_3fmt7Display3fmts5_0E0EB1c_.exit.i, label %.lr.ph.i

.lr.ph39.i:                                       ; preds = %.preheader.i, %bb.v
  %i.bs = phi i64 [ %i.bw, %bb.v ], [ %i.q, %.preheader.i ]
  %.val7.i = phi ptr [ %.val.i, %bb.v ], [ %.val10.i, %.preheader.i ] ; 3 uses
  %.sroa.01.1.i38.i = phi i64 [ %i.cu, %bb.v ], [ 2, %.preheader.i ] ; 4 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.1.i38.i
  %i.bu = add nsw i64 %.sroa.01.1.i38.i, -1
  %i.bv = icmp samesign ult i64 %i.bu, %i.m
  tail call void @llvm.assume(i1 %i.bv)
  %.val.i = load ptr, ptr %i.bt, align 8, !alias.scope !2917, !noalias !2920, !nonnull !12, !align !171, !noundef !12 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2942)
  %i.bw = load i64, ptr %.val.i, align 8, !range !20, !alias.scope !2939, !noalias !2944, !noundef !12 ; 2 uses
  %i.bx = icmp ne i64 %i.bw, -1                   ; 3 uses
  %i.by = zext i1 %i.bx to i8
  %i.bz = icmp eq i64 %i.bs, -1                   ; 3 uses
  %not..i.i.i18.i = xor i1 %i.bz, true            ; 2 uses
  %.neg.i.i.i19.i = sext i1 %not..i.i.i18.i to i8
  %i.ca = add nsw i8 %i.by, %.neg.i.i.i19.i
  %i.cb = xor i1 %i.bz, %i.bx
  br i1 %i.cb, label %bb.s, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit23.i

bb.s:                                             ; preds = %.lr.ph39.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  br i1 %i.bx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.assume(i1 %not..i.i.i18.i)
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !2939, !noalias !2944, !nonnull !12, !noundef !12
  %i.ce = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !2939, !noalias !2944, !noundef !12 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !2942, !noalias !2945, !nonnull !12, !noundef !12
  %i.ci = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !2942, !noalias !2945, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i21.i = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 %i.cj)
  %i.ck = tail call i32 @memcmp(ptr nonnull %i.cd, ptr nonnull %i.ch, i64 %spec.store.select.i.i.i21.i), !noalias !2946 ; 2 uses
  %i.cl = sext i32 %i.ck to i64
  %i.cm = icmp eq i32 %i.ck, 0
  %i.cn = sub i64 %i.cf, %i.cj
  %spec.select.i.i.i22.i = select i1 %i.cm, i64 %i.cn, i64 %i.cl
  %i.co = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i22.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit23.i

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.assume(i1 %i.bz)
  %i.cp = load i8, ptr %i.cc, align 8, !range !2466, !alias.scope !2939, !noalias !2944, !noundef !12
  %i.cq = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8
  %i.cr = load i8, ptr %i.cq, align 8, !range !2466, !alias.scope !2942, !noalias !2945, !noundef !12
  %i.cs = tail call i8 @llvm.ucmp.i8.i8(i8 %i.cp, i8 %i.cr)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit23.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit23.i: ; preds = %bb.u, %bb.t, %.lr.ph39.i
  %.sroa.0.0.i.i.i20.i = phi i8 [ %i.co, %bb.t ], [ %i.cs, %bb.u ], [ %i.ca, %.lr.ph39.i ]
  %i.ct = icmp eq i8 %.sroa.0.0.i.i.i20.i, -1
  br i1 %i.ct, label %bb.v, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2k_5sliceSB12_7sort_byNCNvXs1_NtB18_8settingsNtB3v_8SettingsNtNtB8_3fmt7Display3fmts5_0E0EB1c_.exit.i

bb.v:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit23.i
  %i.cu = add nuw nsw i64 %.sroa.01.1.i38.i, 1    ; 2 uses
  %exitcond47.not.i = icmp eq i64 %i.cu, %i.m
  br i1 %exitcond47.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2k_5sliceSB12_7sort_byNCNvXs1_NtB18_8settingsNtB3v_8SettingsNtNtB8_3fmt7Display3fmts5_0E0EB1c_.exit.i, label %.lr.ph39.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2k_5sliceSB12_7sort_byNCNvXs1_NtB18_8settingsNtB3v_8SettingsNtNtB8_3fmt7Display3fmts5_0E0EB1c_.exit.i: ; preds = %bb.r, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit17.i, %bb.v, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit23.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.v ], [ %.sroa.01.1.i38.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit23.i ], [ %.sroa.01.0.i36.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit17.i ], [ %i.m, %bb.r ] ; 6 uses
  %i.cv = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.cv)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.w

bb.w:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2k_5sliceSB12_7sort_byNCNvXs1_NtB18_8settingsNtB3v_8SettingsNtNtB8_3fmt7Display3fmts5_0E0EB1c_.exit.i
  br i1 %i.ao, label %bb.z, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i

bb.x:                                             ; preds = %bb.i
  %.sroa.0.0.i24.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 %.sroa.01.0)
  %i.cw = shl nuw nsw i64 %.sroa.0.0.i24.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2l_5sliceSB13_7sort_byNCNvXs1_NtB19_8settingsNtB3w_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1d_.exit

bb.y:                                             ; preds = %bb.i
  %.sroa.0.0.i25.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2n_5sliceSB15_7sort_byNCNvXs1_NtB1b_8settingsNtB3y_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1f_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i25.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.cx = shl nuw nsw i64 %.sroa.0.0.i25.i, 1
  %i.cy = or disjoint i64 %i.cx, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2l_5sliceSB13_7sort_byNCNvXs1_NtB19_8settingsNtB3w_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1d_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i.loopexit.unr-lcssa: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.i.i.i.epil.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.i.i.i.epil.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i.loopexit.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.preheader.i.i.i
  %.sroa.0.016.i.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.preheader.i.i.i ], [ %i.ds, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod58 = trunc i64 %i.dg to i1
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.cz = xor i64 %.sroa.0.016.i.i.i.epil.init, -1
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i.epil.init ; 2 uses
  %i.db = getelementptr [16 x i8], ptr %i.dh, i64 %i.cz ; 2 uses
  %i.dc = load <2 x ptr>, ptr %i.da, align 8, !alias.scope !2947, !noalias !2952
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.db, i64 16, i1 false), !alias.scope !2954, !noalias !2920
  store <2 x ptr> %i.dc, ptr %i.db, align 8, !alias.scope !2955, !noalias !2956
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.i.i.i.epil.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i.loopexit.unr-lcssa, %.preheader34.i, %bb.z, %bb.w, %bb.j
  %.sroa.0.0.i31.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.w ], [ %.sroa.0.0.i.i, %bb.z ], [ 2, %.preheader34.i ], [ %.sroa.0.0.i596670.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i596670.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.i.i.i.epil.preheader ]
  %i.dd = shl nuw nsw i64 %.sroa.0.0.i31.i, 1
  %i.de = or disjoint i64 %i.dd, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2l_5sliceSB13_7sort_byNCNvXs1_NtB19_8settingsNtB3w_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1d_.exit

bb.z:                                             ; preds = %bb.w
  %i.df = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2957)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2958)
  %.not.i.i.i = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.preheader.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.z
  %i.dg = phi i64 [ %i.df, %bb.z ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i596670.i = phi i64 [ %.sroa.0.0.i.i, %bb.z ], [ 2, %.preheader.i ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.0.i596670.i ; 3 uses
  %xtraiter = and i64 %i.dg, 1
  %i.di = icmp eq i64 %i.dg, 1
  br i1 %i.di, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.i.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.preheader.i.i.i.new

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.preheader.i.i.i.new: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.preheader.i.i.i
  %unroll_iter = and i64 %i.dg, 9223372036854775806
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.preheader.i.i.i.new
  %.sroa.0.016.i.i.i = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.preheader.i.i.i.new ], [ %i.ds, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.preheader.i.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.i.i.i ]
  %i.dj = xor i64 %.sroa.0.016.i.i.i, -1
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.dl = getelementptr [16 x i8], ptr %i.dh, i64 %i.dj ; 2 uses
  %i.dm = load <2 x ptr>, ptr %i.dk, align 8, !alias.scope !2947, !noalias !2952
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i64 16, i1 false), !alias.scope !2954, !noalias !2920
  store <2 x ptr> %i.dm, ptr %i.dl, align 8, !alias.scope !2955, !noalias !2956
  %i.dn = xor i64 %.sroa.0.016.i.i.i, -2
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.dq = getelementptr [16 x i8], ptr %i.dh, i64 %i.dn ; 2 uses
  %i.dr = load <2 x ptr>, ptr %i.dp, align 8, !alias.scope !2947, !noalias !2952
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i64 16, i1 false), !alias.scope !2954, !noalias !2920
  store <2 x ptr> %i.dr, ptr %i.dq, align 8, !alias.scope !2955, !noalias !2956
  %i.ds = add nuw nsw i64 %.sroa.0.016.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i.loopexit.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.i.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2l_5sliceSB13_7sort_byNCNvXs1_NtB19_8settingsNtB3w_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1d_.exit: ; preds = %bb.x, %bb.y, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.de, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i ], [ %i.cy, %bb.y ], [ %i.cw, %bb.x ] ; 2 uses
  %i.dt = lshr i64 %.sroa.023.0, 1
  %i.du = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.dv = sub nsw i64 %factor, %i.dt
  %i.dw = add nuw nsw i64 %i.du, %factor
  %i.dx = mul i64 %i.dv, %.sroa.0.0
  %i.dy = mul i64 %i.dw, %.sroa.0.0
  %i.dz = xor i64 %i.dy, %i.dx
  %i.ea = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dz, i1 false)
  %i.eb = trunc nuw nsw i64 %i.ea to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2o_5sliceSB16_7sort_byNCNvXs1_NtB1c_8settingsNtB3z_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1g_.exit
  %.sroa.02.138 = phi i64 [ %i.ec, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2o_5sliceSB16_7sort_byNCNvXs1_NtB1c_8settingsNtB3z_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1g_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2o_5sliceSB16_7sort_byNCNvXs1_NtB1c_8settingsNtB3z_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1g_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ec = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !noundef !12
  %.not29 = icmp ult i8 %i.ee, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.aa

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2o_5sliceSB16_7sort_byNCNvXs1_NtB1c_8settingsNtB3z_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1g_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2o_5sliceSB16_7sort_byNCNvXs1_NtB1c_8settingsNtB3z_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1g_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2o_5sliceSB16_7sort_byNCNvXs1_NtB1c_8settingsNtB3z_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1g_.exit ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.eg, align 1
  br i1 %i.k, label %bb.ah, label %bb.ai

bb.aa:                                            ; preds = %.lr.ph
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ec
  %i.ei = load i64, ptr %i.eh, align 8, !noundef !12 ; 3 uses
  %i.ej = lshr i64 %i.ei, 1                       ; 5 uses
  %i.ek = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.el = add nuw i64 %i.ej, %i.ek                ; 5 uses
  %i.em = sub i64 %.sroa.09.0, %i.el
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.em ; 3 uses
  %i.eo = icmp samesign ugt i64 %i.el, %3
  %i.ep = trunc i64 %.sroa.023.137 to i1
  %i.eq = or i64 %i.ei, %.sroa.023.137
  %i.er = trunc i64 %i.eq to i1
  %or.cond3.i = or i1 %i.eo, %i.er
  br i1 %or.cond3.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.es = trunc i64 %i.ei to i1
  br i1 %i.es, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.et = shl nuw nsw i64 %i.el, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2o_5sliceSB16_7sort_byNCNvXs1_NtB1c_8settingsNtB3z_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1g_.exit

bb.ad:                                            ; preds = %bb.ae, %bb.ab
  br i1 %i.ep, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.ab
  %i.eu = or i64 %i.ej, 1
  %i.ev = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.eu, i1 true)
  %i.ew = trunc nuw nsw i64 %i.ev to i32
  %i.ex = shl nuw nsw i32 %i.ew, 1
  %i.ey = xor i32 %i.ex, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2n_5sliceSB15_7sort_byNCNvXs1_NtB1b_8settingsNtB3y_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1f_(ptr noalias noundef nonnull align 8 %i.en, i64 noundef range(i64 0, 576460752303423488) %i.ej, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ey, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ad

bb.af:                                            ; preds = %bb.ag, %bb.ad
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2f_5sliceSBX_7sort_byNCNvXs1_NtB13_8settingsNtB3p_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB17_(ptr noalias noundef nonnull align 8 %i.en, i64 noundef range(i64 0, 576460752303423488) %i.el, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.ej, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.ez = shl nuw nsw i64 %i.el, 1
  %i.fa = or disjoint i64 %i.ez, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2o_5sliceSB16_7sort_byNCNvXs1_NtB1c_8settingsNtB3z_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1g_.exit

bb.ag:                                            ; preds = %bb.ad
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %i.ej
  %i.fc = or i64 %i.ek, 1
  %i.fd = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.fc, i1 true)
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = shl nuw nsw i32 %i.fe, 1
  %i.fg = xor i32 %i.ff, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2n_5sliceSB15_7sort_byNCNvXs1_NtB1b_8settingsNtB3y_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1f_(ptr noalias noundef nonnull align 8 %i.fb, i64 noundef range(i64 0, 576460752303423488) %i.ek, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.fg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.af

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2o_5sliceSB16_7sort_byNCNvXs1_NtB1c_8settingsNtB3z_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1g_.exit: ; preds = %bb.ac, %bb.af
  %.sroa.0.0.i = phi i64 [ %i.fa, %bb.af ], [ %i.et, %bb.ac ] ; 2 uses
  %i.fh = icmp ugt i64 %i.ec, 1
  br i1 %i.fh, label %.lr.ph, label %._crit_edge

bb.ah:                                            ; preds = %._crit_edge
  %i.fi = add i64 %.sroa.02.1.lcssa, 1
  %i.fj = lshr i64 %.sroa.018.0, 1
  %i.fk = add nuw i64 %i.fj, %.sroa.09.0
  br label %bb.f

bb.ai:                                            ; preds = %._crit_edge
  %i.fl = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.fl, 0
  br i1 %.not31, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fm = or i64 %1, 1
  %i.fn = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.fm, i1 true)
  %i.fo = trunc nuw nsw i64 %i.fn to i32
  %i.fp = shl nuw nsw i32 %i.fo, 1
  %i.fq = xor i32 %i.fp, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2n_5sliceSB15_7sort_byNCNvXs1_NtB1b_8settingsNtB3y_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1f_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.fq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.al

bb.al:                                            ; preds = %bb.a, %bb.ak
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2e_5sliceSBW_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBY_B2a_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3o_8CacheKey9cache_key0E0EB16_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.ah, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ah ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fk, %bb.ah ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fi, %bb.ah ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2l_5sliceSB13_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB15_B2h_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3w_8CacheKey9cache_key0E0EB1d_.exit
  %.sroa.021.0 = phi i8 [ %i.eb, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2l_5sliceSB13_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB15_B2h_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3w_8CacheKey9cache_key0E0EB1d_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2l_5sliceSB13_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB15_B2h_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3w_8CacheKey9cache_key0E0EB1d_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2959)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2k_5sliceSB12_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB14_B2g_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3v_8CacheKey9cache_key0E0EB1c_.exit.i, %bb.h
  br i1 %4, label %bb.y, label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val10.i = load ptr, ptr %i.p, align 8, !alias.scope !2959, !noalias !2962, !nonnull !12, !align !171, !noundef !12 ; 5 uses
  %.val11.i = load ptr, ptr %i.n, align 8, !alias.scope !2959, !noalias !2962, !nonnull !12, !align !171, !noundef !12 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2968)
  %i.q = load i64, ptr %.val10.i, align 8, !range !20, !alias.scope !2965, !noalias !2970, !noundef !12 ; 3 uses
  %i.r = icmp ne i64 %i.q, -1                     ; 3 uses
  %i.s = zext i1 %i.r to i8
  %i.t = load i64, ptr %.val11.i, align 8, !range !20, !alias.scope !2968, !noalias !2971, !noundef !12
  %i.u = icmp eq i64 %i.t, -1                     ; 3 uses
  %not..i.i.i.i = xor i1 %i.u, true               ; 2 uses
  %.neg.i.i.i.i = sext i1 %not..i.i.i.i to i8
  %i.v = add nsw i8 %.neg.i.i.i.i, %i.s
  %i.w = xor i1 %i.r, %i.u
  br i1 %i.w, label %bb.l, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8 ; 2 uses
  br i1 %i.r, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !2965, !noalias !2970, !nonnull !12, !noundef !12
  %i.z = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !2965, !noalias !2970, !noundef !12 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !2968, !noalias !2971, !nonnull !12, !noundef !12
  %i.ad = getelementptr inbounds nuw i8, ptr %.val11.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !2968, !noalias !2971, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ae)
  %i.af = tail call i32 @memcmp(ptr nonnull %i.y, ptr nonnull %i.ac, i64 %spec.store.select.i.i.i.i), !noalias !2972 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp eq i32 %i.af, 0
  %i.ai = sub i64 %i.aa, %i.ae
  %spec.select.i.i.i.i = select i1 %i.ah, i64 %i.ai, i64 %i.ag
  %i.aj = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.assume(i1 %i.u)
  %i.ak = load i8, ptr %i.x, align 8, !range !2466, !alias.scope !2965, !noalias !2970, !noundef !12
  %i.al = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.am = load i8, ptr %i.al, align 8, !range !2466, !alias.scope !2968, !noalias !2971, !noundef !12
  %i.an = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ak, i8 %i.am)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i: ; preds = %bb.n, %bb.m, %bb.k
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.aj, %bb.m ], [ %i.an, %bb.n ], [ %i.v, %bb.k ]
  %i.ao = icmp eq i8 %.sroa.0.0.i.i.i.i, -1       ; 2 uses
  %.not43.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.ao, label %.preheader.i, label %.preheader34.i

.preheader34.i:                                   ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i
  br i1 %.not43.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i
  br i1 %.not43.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.preheader.i.i.i, label %.lr.ph39.i

.lr.ph.i:                                         ; preds = %.preheader34.i, %bb.r
  %i.ap = phi i64 [ %i.at, %bb.r ], [ %i.q, %.preheader34.i ]
  %.val9.i = phi ptr [ %.val8.i, %bb.r ], [ %.val10.i, %.preheader34.i ] ; 3 uses
  %.sroa.01.0.i36.i = phi i64 [ %i.br, %bb.r ], [ 2, %.preheader34.i ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i36.i
  %i.ar = add nsw i64 %.sroa.01.0.i36.i, -1
  %i.as = icmp samesign ult i64 %i.ar, %i.m
  tail call void @llvm.assume(i1 %i.as)
  %.val8.i = load ptr, ptr %i.aq, align 8, !alias.scope !2959, !noalias !2962, !nonnull !12, !align !171, !noundef !12 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2976)
  %i.at = load i64, ptr %.val8.i, align 8, !range !20, !alias.scope !2973, !noalias !2978, !noundef !12 ; 2 uses
  %i.au = icmp ne i64 %i.at, -1                   ; 3 uses
  %i.av = zext i1 %i.au to i8
  %i.aw = icmp eq i64 %i.ap, -1                   ; 3 uses
  %not..i.i.i12.i = xor i1 %i.aw, true            ; 2 uses
  %.neg.i.i.i13.i = sext i1 %not..i.i.i12.i to i8
  %i.ax = add nsw i8 %i.av, %.neg.i.i.i13.i
  %i.ay = xor i1 %i.aw, %i.au
  br i1 %i.ay, label %bb.o, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit17.i

bb.o:                                             ; preds = %.lr.ph.i
  %i.az = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8 ; 2 uses
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %not..i.i.i12.i)
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !2973, !noalias !2978, !nonnull !12, !noundef !12
  %i.bb = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !2973, !noalias !2978, !noundef !12 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !2976, !noalias !2979, !nonnull !12, !noundef !12
  %i.bf = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !2976, !noalias !2979, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.bg)
  %i.bh = tail call i32 @memcmp(ptr nonnull %i.ba, ptr nonnull %i.be, i64 %spec.store.select.i.i.i15.i), !noalias !2980 ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp eq i32 %i.bh, 0
  %i.bk = sub i64 %i.bc, %i.bg
  %spec.select.i.i.i16.i = select i1 %i.bj, i64 %i.bk, i64 %i.bi
  %i.bl = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i16.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit17.i

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %i.aw)
  %i.bm = load i8, ptr %i.az, align 8, !range !2466, !alias.scope !2973, !noalias !2978, !noundef !12
  %i.bn = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.bo = load i8, ptr %i.bn, align 8, !range !2466, !alias.scope !2976, !noalias !2979, !noundef !12
  %i.bp = tail call i8 @llvm.ucmp.i8.i8(i8 %i.bm, i8 %i.bo)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit17.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit17.i: ; preds = %bb.q, %bb.p, %.lr.ph.i
  %.sroa.0.0.i.i.i14.i = phi i8 [ %i.bl, %bb.p ], [ %i.bp, %bb.q ], [ %i.ax, %.lr.ph.i ]
  %i.bq = icmp eq i8 %.sroa.0.0.i.i.i14.i, -1
  br i1 %i.bq, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2k_5sliceSB12_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB14_B2g_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3v_8CacheKey9cache_key0E0EB1c_.exit.i, label %bb.r

bb.r:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit17.i
  %i.br = add nuw nsw i64 %.sroa.01.0.i36.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.br, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2k_5sliceSB12_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB14_B2g_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3v_8CacheKey9cache_key0E0EB1c_.exit.i, label %.lr.ph.i

.lr.ph39.i:                                       ; preds = %.preheader.i, %bb.v
  %i.bs = phi i64 [ %i.bw, %bb.v ], [ %i.q, %.preheader.i ]
  %.val7.i = phi ptr [ %.val.i, %bb.v ], [ %.val10.i, %.preheader.i ] ; 3 uses
  %.sroa.01.1.i38.i = phi i64 [ %i.cu, %bb.v ], [ 2, %.preheader.i ] ; 4 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.1.i38.i
  %i.bu = add nsw i64 %.sroa.01.1.i38.i, -1
  %i.bv = icmp samesign ult i64 %i.bu, %i.m
  tail call void @llvm.assume(i1 %i.bv)
  %.val.i = load ptr, ptr %i.bt, align 8, !alias.scope !2959, !noalias !2962, !nonnull !12, !align !171, !noundef !12 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2984)
  %i.bw = load i64, ptr %.val.i, align 8, !range !20, !alias.scope !2981, !noalias !2986, !noundef !12 ; 2 uses
  %i.bx = icmp ne i64 %i.bw, -1                   ; 3 uses
  %i.by = zext i1 %i.bx to i8
  %i.bz = icmp eq i64 %i.bs, -1                   ; 3 uses
  %not..i.i.i18.i = xor i1 %i.bz, true            ; 2 uses
  %.neg.i.i.i19.i = sext i1 %not..i.i.i18.i to i8
  %i.ca = add nsw i8 %i.by, %.neg.i.i.i19.i
  %i.cb = xor i1 %i.bz, %i.bx
  br i1 %i.cb, label %bb.s, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit23.i

bb.s:                                             ; preds = %.lr.ph39.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  br i1 %i.bx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.assume(i1 %not..i.i.i18.i)
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !2981, !noalias !2986, !nonnull !12, !noundef !12
  %i.ce = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !2981, !noalias !2986, !noundef !12 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !2984, !noalias !2987, !nonnull !12, !noundef !12
  %i.ci = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !2984, !noalias !2987, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i21.i = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 %i.cj)
  %i.ck = tail call i32 @memcmp(ptr nonnull %i.cd, ptr nonnull %i.ch, i64 %spec.store.select.i.i.i21.i), !noalias !2988 ; 2 uses
  %i.cl = sext i32 %i.ck to i64
  %i.cm = icmp eq i32 %i.ck, 0
  %i.cn = sub i64 %i.cf, %i.cj
  %spec.select.i.i.i22.i = select i1 %i.cm, i64 %i.cn, i64 %i.cl
  %i.co = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i22.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit23.i

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.assume(i1 %i.bz)
  %i.cp = load i8, ptr %i.cc, align 8, !range !2466, !alias.scope !2981, !noalias !2986, !noundef !12
  %i.cq = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8
  %i.cr = load i8, ptr %i.cq, align 8, !range !2466, !alias.scope !2984, !noalias !2987, !noundef !12
  %i.cs = tail call i8 @llvm.ucmp.i8.i8(i8 %i.cp, i8 %i.cr)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit23.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit23.i: ; preds = %bb.u, %bb.t, %.lr.ph39.i
  %.sroa.0.0.i.i.i20.i = phi i8 [ %i.co, %bb.t ], [ %i.cs, %bb.u ], [ %i.ca, %.lr.ph39.i ]
  %i.ct = icmp eq i8 %.sroa.0.0.i.i.i20.i, -1
  br i1 %i.ct, label %bb.v, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2k_5sliceSB12_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB14_B2g_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3v_8CacheKey9cache_key0E0EB1c_.exit.i

bb.v:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit23.i
  %i.cu = add nuw nsw i64 %.sroa.01.1.i38.i, 1    ; 2 uses
  %exitcond47.not.i = icmp eq i64 %i.cu, %i.m
  br i1 %exitcond47.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2k_5sliceSB12_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB14_B2g_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3v_8CacheKey9cache_key0E0EB1c_.exit.i, label %.lr.ph39.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2k_5sliceSB12_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB14_B2g_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3v_8CacheKey9cache_key0E0EB1c_.exit.i: ; preds = %bb.r, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit17.i, %bb.v, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit23.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.v ], [ %.sroa.01.1.i38.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit23.i ], [ %.sroa.01.0.i36.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit17.i ], [ %i.m, %bb.r ] ; 6 uses
  %i.cv = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.cv)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.w

bb.w:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2k_5sliceSB12_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB14_B2g_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3v_8CacheKey9cache_key0E0EB1c_.exit.i
  br i1 %i.ao, label %bb.z, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i

bb.x:                                             ; preds = %bb.i
  %.sroa.0.0.i24.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 %.sroa.01.0)
  %i.cw = shl nuw nsw i64 %.sroa.0.0.i24.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2l_5sliceSB13_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB15_B2h_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3w_8CacheKey9cache_key0E0EB1d_.exit

bb.y:                                             ; preds = %bb.i
  %.sroa.0.0.i25.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2n_5sliceSB15_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB17_B2j_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3y_8CacheKey9cache_key0E0EB1f_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i25.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.cx = shl nuw nsw i64 %.sroa.0.0.i25.i, 1
  %i.cy = or disjoint i64 %i.cx, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2l_5sliceSB13_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB15_B2h_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3w_8CacheKey9cache_key0E0EB1d_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i.loopexit.unr-lcssa: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.i.i.i.epil.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.i.i.i.epil.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i.loopexit.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.preheader.i.i.i
  %.sroa.0.016.i.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.preheader.i.i.i ], [ %i.ds, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod58 = trunc i64 %i.dg to i1
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.cz = xor i64 %.sroa.0.016.i.i.i.epil.init, -1
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i.epil.init ; 2 uses
  %i.db = getelementptr [16 x i8], ptr %i.dh, i64 %i.cz ; 2 uses
  %i.dc = load <2 x ptr>, ptr %i.da, align 8, !alias.scope !2989, !noalias !2994
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.db, i64 16, i1 false), !alias.scope !2996, !noalias !2962
  store <2 x ptr> %i.dc, ptr %i.db, align 8, !alias.scope !2997, !noalias !2998
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.i.i.i.epil.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i.loopexit.unr-lcssa, %.preheader34.i, %bb.z, %bb.w, %bb.j
  %.sroa.0.0.i31.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.w ], [ %.sroa.0.0.i.i, %bb.z ], [ 2, %.preheader34.i ], [ %.sroa.0.0.i596670.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i596670.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.i.i.i.epil.preheader ]
  %i.dd = shl nuw nsw i64 %.sroa.0.0.i31.i, 1
  %i.de = or disjoint i64 %i.dd, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2l_5sliceSB13_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB15_B2h_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3w_8CacheKey9cache_key0E0EB1d_.exit

bb.z:                                             ; preds = %bb.w
  %i.df = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3000)
  %.not.i.i.i = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.preheader.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.z
  %i.dg = phi i64 [ %i.df, %bb.z ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i596670.i = phi i64 [ %.sroa.0.0.i.i, %bb.z ], [ 2, %.preheader.i ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.0.i596670.i ; 3 uses
  %xtraiter = and i64 %i.dg, 1
  %i.di = icmp eq i64 %i.dg, 1
  br i1 %i.di, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.i.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.preheader.i.i.i.new

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.preheader.i.i.i.new: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.preheader.i.i.i
  %unroll_iter = and i64 %i.dg, 9223372036854775806
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.preheader.i.i.i.new
  %.sroa.0.016.i.i.i = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.preheader.i.i.i.new ], [ %i.ds, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.preheader.i.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.i.i.i ]
  %i.dj = xor i64 %.sroa.0.016.i.i.i, -1
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.dl = getelementptr [16 x i8], ptr %i.dh, i64 %i.dj ; 2 uses
  %i.dm = load <2 x ptr>, ptr %i.dk, align 8, !alias.scope !2989, !noalias !2994
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i64 16, i1 false), !alias.scope !2996, !noalias !2962
  store <2 x ptr> %i.dm, ptr %i.dl, align 8, !alias.scope !2997, !noalias !2998
  %i.dn = xor i64 %.sroa.0.016.i.i.i, -2
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.dq = getelementptr [16 x i8], ptr %i.dh, i64 %i.dn ; 2 uses
  %i.dr = load <2 x ptr>, ptr %i.dp, align 8, !alias.scope !2989, !noalias !2994
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i64 16, i1 false), !alias.scope !2996, !noalias !2962
  store <2 x ptr> %i.dr, ptr %i.dq, align 8, !alias.scope !2997, !noalias !2998
  %i.ds = add nuw nsw i64 %.sroa.0.016.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i.loopexit.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE12split_at_mutBE_.exit11.i.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2l_5sliceSB13_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB15_B2h_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3w_8CacheKey9cache_key0E0EB1d_.exit: ; preds = %bb.x, %bb.y, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.de, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringE7reverseBE_.exit.i ], [ %i.cy, %bb.y ], [ %i.cw, %bb.x ] ; 2 uses
  %i.dt = lshr i64 %.sroa.023.0, 1
  %i.du = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.dv = sub nsw i64 %factor, %i.dt
  %i.dw = add nuw nsw i64 %i.du, %factor
  %i.dx = mul i64 %i.dv, %.sroa.0.0
  %i.dy = mul i64 %i.dw, %.sroa.0.0
  %i.dz = xor i64 %i.dy, %i.dx
  %i.ea = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dz, i1 false)
  %i.eb = trunc nuw nsw i64 %i.ea to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2o_5sliceSB16_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB18_B2k_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3z_8CacheKey9cache_key0E0EB1g_.exit
  %.sroa.02.138 = phi i64 [ %i.ec, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2o_5sliceSB16_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB18_B2k_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3z_8CacheKey9cache_key0E0EB1g_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2o_5sliceSB16_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB18_B2k_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3z_8CacheKey9cache_key0E0EB1g_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ec = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !noundef !12
  %.not29 = icmp ult i8 %i.ee, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.aa

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2o_5sliceSB16_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB18_B2k_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3z_8CacheKey9cache_key0E0EB1g_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2o_5sliceSB16_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB18_B2k_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3z_8CacheKey9cache_key0E0EB1g_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2o_5sliceSB16_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB18_B2k_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3z_8CacheKey9cache_key0E0EB1g_.exit ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.eg, align 1
  br i1 %i.k, label %bb.ah, label %bb.ai

bb.aa:                                            ; preds = %.lr.ph
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ec
  %i.ei = load i64, ptr %i.eh, align 8, !noundef !12 ; 3 uses
  %i.ej = lshr i64 %i.ei, 1                       ; 5 uses
  %i.ek = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.el = add nuw i64 %i.ej, %i.ek                ; 5 uses
  %i.em = sub i64 %.sroa.09.0, %i.el
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.em ; 3 uses
  %i.eo = icmp samesign ugt i64 %i.el, %3
  %i.ep = trunc i64 %.sroa.023.137 to i1
  %i.eq = or i64 %i.ei, %.sroa.023.137
  %i.er = trunc i64 %i.eq to i1
  %or.cond3.i = or i1 %i.eo, %i.er
  br i1 %or.cond3.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.es = trunc i64 %i.ei to i1
  br i1 %i.es, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.et = shl nuw nsw i64 %i.el, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2o_5sliceSB16_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB18_B2k_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3z_8CacheKey9cache_key0E0EB1g_.exit

bb.ad:                                            ; preds = %bb.ae, %bb.ab
  br i1 %i.ep, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.ab
  %i.eu = or i64 %i.ej, 1
  %i.ev = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.eu, i1 true)
  %i.ew = trunc nuw nsw i64 %i.ev to i32
  %i.ex = shl nuw nsw i32 %i.ew, 1
  %i.ey = xor i32 %i.ex, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2n_5sliceSB15_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB17_B2j_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3y_8CacheKey9cache_key0E0EB1f_(ptr noalias noundef nonnull align 8 %i.en, i64 noundef range(i64 0, 576460752303423488) %i.ej, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ey, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ad

bb.af:                                            ; preds = %bb.ag, %bb.ad
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2f_5sliceSBX_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBZ_B2b_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3p_8CacheKey9cache_key0E0EB17_(ptr noalias noundef nonnull align 8 %i.en, i64 noundef range(i64 0, 576460752303423488) %i.el, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.ej, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.ez = shl nuw nsw i64 %i.el, 1
  %i.fa = or disjoint i64 %i.ez, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2o_5sliceSB16_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB18_B2k_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3z_8CacheKey9cache_key0E0EB1g_.exit

bb.ag:                                            ; preds = %bb.ad
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %i.ej
  %i.fc = or i64 %i.ek, 1
  %i.fd = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.fc, i1 true)
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = shl nuw nsw i32 %i.fe, 1
  %i.fg = xor i32 %i.ff, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2n_5sliceSB15_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB17_B2j_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3y_8CacheKey9cache_key0E0EB1f_(ptr noalias noundef nonnull align 8 %i.fb, i64 noundef range(i64 0, 576460752303423488) %i.ek, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.fg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.af

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2o_5sliceSB16_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB18_B2k_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3z_8CacheKey9cache_key0E0EB1g_.exit: ; preds = %bb.ac, %bb.af
  %.sroa.0.0.i = phi i64 [ %i.fa, %bb.af ], [ %i.et, %bb.ac ] ; 2 uses
  %i.fh = icmp ugt i64 %i.ec, 1
  br i1 %i.fh, label %.lr.ph, label %._crit_edge

bb.ah:                                            ; preds = %._crit_edge
  %i.fi = add i64 %.sroa.02.1.lcssa, 1
  %i.fj = lshr i64 %.sroa.018.0, 1
  %i.fk = add nuw i64 %i.fj, %.sroa.09.0
  br label %bb.f

bb.ai:                                            ; preds = %._crit_edge
  %i.fl = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.fl, 0
  br i1 %.not31, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fm = or i64 %1, 1
  %i.fn = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.fm, i1 true)
  %i.fo = trunc nuw nsw i64 %i.fn to i32
  %i.fp = shl nuw nsw i32 %i.fo, 1
end_hunk_1
begin_hunk_2_@_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules13flake8_bandit5rules25hardcoded_password_string23HardcodedPasswordStringEBa_
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules13flake8_bandit5rules25hardcoded_password_string23HardcodedPasswordStringEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django7helpers13is_model_form(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsS_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValueINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqeE2eq(ptr noundef nonnull align 8, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules13flake8_django5rules19all_with_model_form22DjangoAllWithModelFormEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs18_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValueINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqShE2eq(ptr noundef nonnull align 8, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsEhZmuQNqkz_11ruff_linter3fix5edits18fresh_binding_name(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges19contains_line_break(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel17match_typing_expr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472), ptr noundef nonnull align 8, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules13flake8_errmsg5rules19string_in_exception20DotFormatInExceptionEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvNtCskVZVgnzM3Oh_18ruff_python_trivia10whitespace21indentation_at_offset(i32 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules13flake8_errmsg5rules19string_in_exception18FStringInExceptionEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue3len(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules13flake8_errmsg5rules19string_in_exception20RawStringInExceptionEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue3len(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules14flake8_bugbear5rules12assert_false11AssertFalseEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules14flake8_bugbear5rules18f_string_docstring16FStringDocstringEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18match_builtin_expr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472), ptr noundef nonnull align 8, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib11identifiers13is_identifier(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib11identifiers18is_mangled_private(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtCs7CqHJXwM7TD_21unicode_normalization9recompose14RecompositionsNtNtNtBT_3str4iter5CharsEECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(136)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules14flake8_bugbear5rules21delattr_with_constant19DelAttrWithConstantEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules14flake8_bugbear5rules24assignment_to_os_environ21AssignmentToOsEnvironEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtCsf5BUmUrrPiN_17ruff_python_index7indexerNtB2_7Indexer32preceded_by_multi_statement_line(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), ptr noundef nonnull align 8, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs5b_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze13function_type7is_stub(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCskVZVgnzM3Oh_18ruff_python_trivia8textwrap6indent(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges10line_start(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges13full_line_end(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtCsf5BUmUrrPiN_17ruff_python_index7indexerNtB2_7Indexer23in_multi_statement_line(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), ptr noundef nonnull align 8, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10Parameters24iter_non_variadic_params(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4IterNtNtB8_6string6StringENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_bugbear5rules24mutable_argument_default24mutable_argument_default0EE9from_iterB4d_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing15is_mutable_expr(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing23is_immutable_annotation(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 64051194700380388)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules14flake8_bugbear5rules24mutable_argument_default22MutableArgumentDefaultEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor9walk_bodyNtNtB4_7helpers21RaiseStatementVisitorECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull align 8, i64 noundef range(i64 0, 104811045873349726)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules14flake8_bugbear5rules32raise_without_from_inside_except28RaiseWithoutFromInsideExceptEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i1 noundef zeroext, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules14flake8_gettext5rules29f_string_in_gettext_func_call24FStringInGetTextFuncCallEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i1 noundef zeroext, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_gettext16is_ngettext_call(ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_logging7helpers16outside_handlers(i32 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules14flake8_logging5rules36log_exception_outside_except_handler32LogExceptionOutsideExceptHandlerEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_builtins7helpers15shadows_builtin(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i8 noundef range(i8 0, 3), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326), i8 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules15flake8_builtins5rules33builtin_lambda_argument_shadowing30BuiltinLambdaArgumentShadowingEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCskLngH8kgpZI_15ruff_python_ast9traversal5suiteRNtNtB4_9generated4StmtBP_ECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing20is_sys_version_block(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing22is_type_checking_block(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCskVZVgnzM3Oh_18ruff_python_trivia14comment_rangesNtB6_13CommentRanges12has_commentsNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules15flake8_simplify5rules13needless_bool12NeedlessBoolEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor9walk_bodyNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules18enumerate_for_loop22LoopControlFlowVisitorEB1c_(ptr noalias noundef dereferenceable(1), ptr noundef nonnull align 8, i64 noundef range(i64 0, 104811045873349726)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing18find_binding_value(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inferenceNtB4_18ResolvedPythonTypeINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel20current_statement_id(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel19parent_statement_id(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472), i32 noundef range(i32 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules15flake8_simplify5rules18enumerate_for_loop16EnumerateForLoopEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules16flake8_datetimez5rules15call_date_today13CallDateTodayEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules16flake8_datetimez7helpers22followed_by_astimezone(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvMs23_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9Arguments19find_argument_value(ptr noundef nonnull align 8, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules16flake8_datetimez5rules28call_datetime_without_tzinfo25CallDatetimeWithoutTzinfoEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i1 noundef zeroext, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_boolean_trap7helpers19is_allowed_func_def(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules19flake8_boolean_trap5rules37boolean_type_hint_positional_argument33BooleanTypeHintPositionalArgumentEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_boolean_trap7helpers38add_liskov_substitution_principle_help(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 8, i64 noundef range(i64 0, 104811045873349726), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules19flake8_pytest_style5rules5warns25PytestWarnsWithoutWarningEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvMs23_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9Arguments12find_keyword(ptr noundef nonnull align 8, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style7helpers23is_empty_or_null_string(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules19flake8_pytest_style5rules5warns33PytestWarnsWithMultipleStatementsEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules19flake8_pytest_style5rules5warns19PytestWarnsTooBroadEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8, i8) #29

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 3) i8 @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker19lazy_import_context(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settingsNtB5_14ImportSelector4find(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvXs82_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules19flake8_tidy_imports5rules20lazy_import_mismatch18LazyImportMismatchEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel12at_top_level(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8matchersNtB6_15NameMatchPolicy4findINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringENvYB2S_INtNtB1M_7convert5AsRefeE6as_refEEBc_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules19flake8_tidy_imports5rules27banned_module_level_imports24BannedModuleLevelImportsEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers12is_stub_body(ptr noundef nonnull align 8, i64 noundef range(i64 0, 104811045873349726)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RINvNtCskLngH8kgpZI_15ruff_python_ast7helpers11side_effectNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules14unnecessary_if14unnecessary_if0EB16_(ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_7Checker17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules14unnecessary_if13UnnecessaryIfEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtCskLngH8kgpZI_15ruff_python_ast7helpers13any_over_exprNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules14unnecessary_if14unnecessary_ifs_0EB18_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsEhZmuQNqkz_11ruff_linter3fix5edits11delete_stmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef align 8, ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27current_statement_parent_id(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges8line_end(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers25comment_indentation_after(i64 noundef range(i64 0, 94), ptr noundef, i32 noundef, i32 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens8in_range(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #29

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules16unraw_re_pattern14UnrawRePatternEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules17unnecessary_round16UnnecessaryRoundEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing6is_int(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing8is_float(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvCsb6FLkjZuKG_18ruff_python_parser16parse_expression(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel19current_expressions(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE12contains_keyBP_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel42simulate_runtime_load_at_location_in_scope(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef, i32 noundef, i32 noundef range(i32 1, 0), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_10FormatSpec5parse(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules22missing_fstring_syntax20MissingFStringSyntaxEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralNtB5_13SliceContains14slice_containsCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull align 8, ptr noundef nonnull align 8, i64 noundef range(i64 0, 288230376151711744)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules22mutable_fromkeys_value20MutableFromkeysValueEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style7helpers17is_pytest_fixture(ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules22pytest_fixture_autouse20PytestFixtureAutouseEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules23map_int_version_parsing20MapIntVersionParsingEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing16traverse_literal5innerNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules26unnecessary_nested_literal26unnecessary_nested_literal0EB1x_(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472), ptr noundef nonnull align 8, ptr noundef align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing16traverse_literal5innerNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules26unnecessary_nested_literal26unnecessary_nested_literals_0EB1x_(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472), ptr noundef nonnull align 8, ptr noundef align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules26unnecessary_nested_literal24UnnecessaryNestedLiteralEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules30parenthesize_chained_operators28ParenthesizeChainedOperatorsEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5rules6raises16is_pytest_raises(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules31pytest_raises_ambiguous_pattern28PytestRaisesAmbiguousPatternEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules6pylint5rules13bad_open_mode11BadOpenModeEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint7helpers16in_dunder_method(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2432)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules6pylint5rules13yield_in_init11YieldInInitEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules6pylint5rules14nested_min_max12NestedMinMaxEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i1 noundef zeroext, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtB4_7helpers22ReturnStatementVisitorECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32), ptr noundef nonnull align 8, i64 noundef range(i64 0, 104811045873349726)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_7Checker17report_diagnosticNtNtNtNtNtBa_5rules6pylint5rules14useless_return13UselessReturnEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel6global(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(address) dereferenceable(12), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules6pylint5rules16global_statement15GlobalStatementEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules6pylint5rules18bad_str_strip_call15BadStrStripCallEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i8 noundef range(i8 0, 3), i8 noundef range(i8 0, 3), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules6pylint5rules18invalid_all_object16InvalidAllObjectEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsn_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqNtNtCscdodAO9FK5_5alloc6string6StringE2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameRNtNtBR_9generated4StmtNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6insertCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(16), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_7Checker17report_diagnosticNtNtNtNtNtBa_5rules6pylint5rules19no_method_decorator22NoClassmethodDecoratorEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_7Checker17report_diagnosticNtNtNtNtNtBa_5rules6pylint5rules19no_method_decorator23NoStaticmethodDecoratorEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB3_3Fix10safe_editsANtNtB5_4edit4Editj1_ECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules6pylint5rules19single_string_slots17SingleStringSlotsEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 7) i8 @_RNvMNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze8terminalNtB2_8Terminal13from_function(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules6pylint5rules20invalid_index_return22InvalidIndexReturnTypeEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsEhZmuQNqkz_11ruff_linter3fix5edits12add_argument(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules6pylint5rules20unspecified_encoding19UnspecifiedEncodingEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules21stop_iteration_return17GeneratorAnalyzerEB11_(ptr noalias noundef align 8 dereferenceable(40), ptr noundef nonnull align 8, i64 noundef range(i64 0, 104811045873349726)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules6pylint5rules21stop_iteration_return19StopIterationReturnEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE4keysCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1c_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_7HashMapReRRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorTB15_B17_EE9from_iterINtNtNtB2W_8adapters10filter_map9FilterMapINtNtNtB2Y_5slice4iter4IterB18_ENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules22bad_string_format_type13is_valid_dict0EEB5y_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes18StringLiteralFlagsNtB4_11StringFlags10opener_lenCsEhZmuQNqkz_11ruff_linter(i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes18StringLiteralFlagsNtB4_11StringFlags10closer_lenCsEhZmuQNqkz_11ruff_linter(i8 noundef) unnamed_addr #0
end_hunk_2
