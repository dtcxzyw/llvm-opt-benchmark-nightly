Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_table-a9a6f7d3980ea30b.lance_table.71a0d83425f78a62-cgu.0?download=true
inline.NumInlined: 28246
inline.NumDeleted: 13059
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment13with_new_high:bb.a
  call void @llvm.assume(i1 %i.bh)
  %i.bi = add nsw i64 %i.bg, -3
  %i.bj = icmp samesign ugt i64 %i.bg, 2
  %i.bk = select i1 %i.bj, i64 %i.bi, i64 1
  switch i64 %i.bk, label %bb.k [
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit
    i64 1, label %bb.l
    i64 2, label %bb.s
    i64 3, label %bb.u
    i64 4, label %bb.ab
  ]

bb.k:                                             ; preds = %bb.al, %bb.ak, %bb.j, %bb.d
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit: ; preds = %bb.hb, %bb.gj, %bb.gg, %bb.ey, %bb.eg, %bb.ed, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids6bitmap6BitmapEBH_.exit320, %bb.j
  ret void

bb.l:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !52583)
  switch i64 %i.bg, label %bb.m [
    i64 0, label %bb.o
    i64 1, label %bb.q
  ]

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i = load i64, ptr %i.bl, align 8, !alias.scope !52583 ; 2 uses
  %i.bm = icmp eq i64 %.val2.i, 0
  br i1 %i.bm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load ptr, ptr %i.bn, align 8, !alias.scope !52583, !nonnull !68, !noundef !68
  %i.bo = shl nuw i64 %.val2.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !52583
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit

bb.o:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load i64, ptr %i.bp, align 8, !alias.scope !52583 ; 2 uses
  %i.bq = icmp eq i64 %.val.i, 0
  br i1 %i.bq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i = load ptr, ptr %i.br, align 8, !alias.scope !52583, !nonnull !68, !noundef !68
  %i.bs = shl nuw i64 %.val.i, 1
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) 2) #76, !noalias !52583
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit

bb.q:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4.i = load i64, ptr %i.bt, align 8, !alias.scope !52583 ; 2 uses
  %i.bu = icmp eq i64 %.val4.i, 0
  br i1 %i.bu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val5.i = load ptr, ptr %i.bv, align 8, !alias.scope !52583, !nonnull !68, !noundef !68
  %i.bw = shl nuw i64 %.val4.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !52583
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit

bb.s:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val278 = load i64, ptr %i.bx, align 8         ; 2 uses
  %i.by = icmp eq i64 %.val278, 0
  br i1 %i.by, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val279 = load ptr, ptr %i.bz, align 8, !nonnull !68, !noundef !68
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val279, i64 noundef %.val278, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit

bb.u:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !52584)
  %i.cb = load i64, ptr %i.ca, align 8, !range !74, !alias.scope !52584, !noundef !68
  switch i64 %i.cb, label %bb.v [
    i64 0, label %bb.x
    i64 1, label %bb.z
  ]

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i290 = load i64, ptr %i.cc, align 8, !alias.scope !52584 ; 2 uses
  %i.cd = icmp eq i64 %.val2.i290, 0
  br i1 %i.cd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3.i291 = load ptr, ptr %i.ce, align 8, !alias.scope !52584, !nonnull !68, !noundef !68
  %i.cf = shl nuw i64 %.val2.i290, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i291, i64 noundef %i.cf, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !52584
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit

bb.x:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i288 = load i64, ptr %i.cg, align 8, !alias.scope !52584 ; 2 uses
  %i.ch = icmp eq i64 %.val.i288, 0
  br i1 %i.ch, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i289 = load ptr, ptr %i.ci, align 8, !alias.scope !52584, !nonnull !68, !noundef !68
  %i.cj = shl nuw i64 %.val.i288, 1
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i289, i64 noundef %i.cj, i64 noundef range(i64 1, -9223372036854775807) 2) #76, !noalias !52584
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit

bb.z:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val4.i286 = load i64, ptr %i.ck, align 8, !alias.scope !52584 ; 2 uses
  %i.cl = icmp eq i64 %.val4.i286, 0
  br i1 %i.cl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val5.i287 = load ptr, ptr %i.cm, align 8, !alias.scope !52584, !nonnull !68, !noundef !68
  %i.cn = shl nuw i64 %.val4.i286, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i287, i64 noundef %i.cn, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !52584
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit

bb.ab:                                            ; preds = %bb.j
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !52585)
  %i.cp = load i64, ptr %i.co, align 8, !range !74, !alias.scope !52585, !noundef !68
  switch i64 %i.cp, label %bb.ac [
    i64 0, label %bb.ae
    i64 1, label %bb.ag
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i297 = load i64, ptr %i.cq, align 8, !alias.scope !52585 ; 2 uses
  %i.cr = icmp eq i64 %.val2.i297, 0
  br i1 %i.cr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3.i298 = load ptr, ptr %i.cs, align 8, !alias.scope !52585, !nonnull !68, !noundef !68
  %i.ct = shl nuw i64 %.val2.i297, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i298, i64 noundef %i.ct, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !52585
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit

bb.ae:                                            ; preds = %bb.ab
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i295 = load i64, ptr %i.cu, align 8, !alias.scope !52585 ; 2 uses
  %i.cv = icmp eq i64 %.val.i295, 0
  br i1 %i.cv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i296 = load ptr, ptr %i.cw, align 8, !alias.scope !52585, !nonnull !68, !noundef !68
  %i.cx = shl nuw i64 %.val.i295, 1
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i296, i64 noundef %i.cx, i64 noundef range(i64 1, -9223372036854775807) 2) #76, !noalias !52585
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit

bb.ag:                                            ; preds = %bb.ab
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val4.i293 = load i64, ptr %i.cy, align 8, !alias.scope !52585 ; 2 uses
  %i.cz = icmp eq i64 %.val4.i293, 0
  br i1 %i.cz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val5.i294 = load ptr, ptr %i.da, align 8, !alias.scope !52585, !nonnull !68, !noundef !68
  %i.db = shl nuw i64 %.val4.i293, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i294, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !52585
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit

bb.ai:                                            ; preds = %bb.d
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !68 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.df = load i64, ptr %i.de, align 8, !noundef !68 ; 8 uses
  %i.dg = icmp eq i64 %i.dd, %i.df
  br i1 %i.dg, label %bb.an, label %bb.am

bb.aj:                                            ; preds = %bb.d
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.di = load i64, ptr %i.dh, align 8, !noundef !68
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !68 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.dl = icmp eq i64 %2, %i.dk
  br i1 %i.dl, label %bb.au, label %bb.at

bb.ak:                                            ; preds = %bb.d
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.083.0.copyload = load i64, ptr %i.dm, align 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.584.0.copyload = load i64, ptr %.sroa.584.0..sroa_idx, align 8 ; 13 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.8.sroa.0.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 15 uses
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.8.sroa.7.0.copyload = load ptr, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx, align 8 ; 28 uses
  %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.8.sroa.8.0.copyload = load i64, ptr %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx, align 8 ; 26 uses
  switch i64 %.sroa.083.0.copyload, label %bb.k [
    i64 0, label %bb.di
    i64 1, label %bb.dj
    i64 2, label %bb.dk
  ]

bb.al:                                            ; preds = %bb.d
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0128.0.copyload = load i64, ptr %i.dn, align 8
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5129.0.copyload = load i64, ptr %.sroa.5129.0..sroa_idx, align 8 ; 13 uses
  %.sroa.8131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.8131.sroa.0.0.copyload = load i64, ptr %.sroa.8131.0..sroa_idx, align 8 ; 15 uses
  %.sroa.8131.sroa.7.0..sroa.8131.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.8131.sroa.7.0.copyload = load ptr, ptr %.sroa.8131.sroa.7.0..sroa.8131.0..sroa_idx.sroa_idx, align 8 ; 28 uses
  %.sroa.8131.sroa.8.0..sroa.8131.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.8131.sroa.8.0.copyload = load i64, ptr %.sroa.8131.sroa.8.0..sroa.8131.0..sroa_idx.sroa_idx, align 8 ; 26 uses
  switch i64 %.sroa.0128.0.copyload, label %bb.k [
    i64 0, label %bb.fl
    i64 1, label %bb.fm
    i64 2, label %bb.fn
  ]

bb.am:                                            ; preds = %bb.ai
  %i.do = icmp eq i64 %2, %i.df
  br i1 %i.do, label %bb.as, label %bb.ao

bb.an:                                            ; preds = %bb.ai
  %i.dp = add i64 %2, 1
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids6bitmap6BitmapEBH_.exit320

bb.ao:                                            ; preds = %bb.am
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %i.df) ; 4 uses
  %i.dq = shl i64 %spec.select.i.i, 3             ; 4 uses
  %i.dr = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  %.not.i.i.i = icmp ugt i64 %i.dq, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.dr, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.ar, label %bb.ap, !prof !69

bb.ap:                                            ; preds = %bb.ao
  %i.ds = icmp eq i64 %i.dq, 0
  br i1 %i.ds, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !52586
  %i.dt = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.dq, i64 noundef range(i64 1, 9) 8) #76, !noalias !52586 ; 2 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.ar, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.aq ], [ 0, %bb.ao ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.dq) #80
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.ar
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %bb.aq, %bb.ap
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ap ], [ %i.dt, %bb.aq ] ; 3 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.ap ], [ %spec.select.i.i, %bb.aq ] ; 2 uses
  %i.dv = icmp samesign ule i64 %spec.select.i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = icmp ult i64 %i.df, %2
  br i1 %i.dw, label %.lr.ph.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i
  %i.dx = sub nuw i64 %2, %i.df                   ; 3 uses
  %min.iters.check777 = icmp ult i64 %i.dx, 4
  br i1 %min.iters.check777, label %.lr.ph.i.i.i.i.i.preheader793, label %vector.ph778

vector.ph778:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec779 = and i64 %i.dx, -4                   ; 5 uses
  %i.dy = add i64 %i.df, %n.vec779
  %broadcast.splatinsert780 = insertelement <2 x i64> poison, i64 %i.df, i64 0
  %broadcast.splat781 = shufflevector <2 x i64> %broadcast.splatinsert780, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction782 = add nuw <2 x i64> %broadcast.splat781, <i64 0, i64 1>
  br label %vector.body783

vector.body783:                                   ; preds = %vector.body783, %vector.ph778
  %index784 = phi i64 [ 0, %vector.ph778 ], [ %index.next787, %vector.body783 ] ; 2 uses
  %vec.ind785 = phi <2 x i64> [ %induction782, %vector.ph778 ], [ %vec.ind.next788, %vector.body783 ] ; 3 uses
  %step.add786 = add nuw <2 x i64> %vec.ind785, splat (i64 2)
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i, i64 %index784 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <2 x i64> %vec.ind785, ptr %i.dz, align 8, !noalias !52587
  store <2 x i64> %step.add786, ptr %i.ea, align 8, !noalias !52587
  %index.next787 = add nuw i64 %index784, 4       ; 2 uses
  %vec.ind.next788 = add nuw <2 x i64> %vec.ind785, splat (i64 4)
  %i.eb = icmp eq i64 %index.next787, %n.vec779
  br i1 %i.eb, label %middle.block789, label %vector.body783, !llvm.loop !52277

middle.block789:                                  ; preds = %vector.body783
  %cmp.n790 = icmp eq i64 %i.dx, %n.vec779
  br i1 %cmp.n790, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader793

.lr.ph.i.i.i.i.i.preheader793:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block789
  %.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader ], [ %n.vec779, %middle.block789 ]
  %.sroa.0.011.i.i.i.i.i.ph = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dy, %middle.block789 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader793, %.lr.ph.i.i.i.i.i
  %i.ec = phi i64 [ %i.ef, %.lr.ph.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.preheader793 ] ; 2 uses
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %i.ed, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader793 ] ; 2 uses
  %i.ed = add nuw i64 %.sroa.0.011.i.i.i.i.i, 1   ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i, i64 %i.ec
  store i64 %.sroa.0.011.i.i.i.i.i, ptr %i.ee, align 8, !noalias !52587
  %i.ef = add nuw i64 %i.ec, 1                    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ed, %2
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !52278

bb.as:                                            ; preds = %bb.am
  %i.eg = add i64 %2, 1
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids6bitmap6BitmapEBH_.exit320

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %middle.block789, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i
  %.val5.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ], [ %n.vec779, %middle.block789 ], [ %i.ef, %.lr.ph.i.i.i.i.i ]
  %i.eh = ptrtoint ptr %.sroa.10.0.i.i to i64
  %i.ei = add i64 %2, 1
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids6bitmap6BitmapEBH_.exit320

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids6bitmap6BitmapEBH_.exit320: ; preds = %bb.go, %bb.hg, %bb.hn, %bb.el, %bb.fd, %bb.fk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecbEECs9KQ7US1M400_11lance_table.exit319, %bb.dh, %bb.an, %.loopexit, %bb.as, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit309
  %.sroa.28.sroa.15.0 = phi i64 [ undef, %bb.an ], [ undef, %bb.as ], [ undef, %.loopexit ], [ %.sroa.28.sroa.15.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit309 ], [ %i.uh, %bb.fk ], [ %.sroa.28.sroa.15.0.copyload80, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecbEECs9KQ7US1M400_11lance_table.exit319 ], [ %.sroa.28.sroa.15.0.copyload80, %bb.dh ], [ %.sroa.28.sroa.15.0.copyload74, %bb.el ], [ %.sroa.28.sroa.15.0.copyload75, %bb.fd ], [ %.sroa.28.sroa.15.0.copyload77, %bb.go ], [ %.sroa.28.sroa.15.0.copyload78, %bb.hg ], [ %i.zp, %bb.hn ]
  %.sroa.28.sroa.0.0 = phi i64 [ undef, %bb.an ], [ undef, %bb.as ], [ %.val5.i.i.i.i.i, %.loopexit ], [ %.sroa.28.sroa.0.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit309 ], [ %.sroa.492.0.copyload, %bb.fk ], [ %.sroa.28.sroa.0.0.copyload71, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecbEECs9KQ7US1M400_11lance_table.exit319 ], [ %.sroa.28.sroa.0.0.copyload71, %bb.dh ], [ %.sroa.28.sroa.0.0.copyload65, %bb.el ], [ %.sroa.28.sroa.0.0.copyload66, %bb.fd ], [ %.sroa.28.sroa.0.0.copyload68, %bb.go ], [ %.sroa.28.sroa.0.0.copyload69, %bb.hg ], [ %.sroa.4138.0.copyload, %bb.hn ]
  %.sroa.32.0 = phi i64 [ undef, %bb.an ], [ undef, %bb.as ], [ %i.ei, %.loopexit ], [ %.sroa.32.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit309 ], [ undef, %bb.fk ], [ %i.gj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecbEECs9KQ7US1M400_11lance_table.exit319 ], [ %i.gj, %bb.dh ], [ undef, %bb.el ], [ undef, %bb.fd ], [ undef, %bb.go ], [ undef, %bb.hg ], [ undef, %bb.hn ]
  %.sroa.2843.0 = phi i64 [ undef, %bb.an ], [ undef, %bb.as ], [ %i.dd, %.loopexit ], [ %i.di, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit309 ], [ undef, %bb.fk ], [ %i.gf, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecbEECs9KQ7US1M400_11lance_table.exit319 ], [ %i.gf, %bb.dh ], [ %.sroa.2843.8.copyload, %bb.el ], [ %.sroa.2843.8.copyload45, %bb.fd ], [ %.sroa.2843.8.copyload49, %bb.go ], [ %.sroa.2843.8.copyload51, %bb.hg ], [ undef, %bb.hn ]
  %.sroa.26.0 = phi i64 [ %i.dp, %bb.an ], [ %i.eg, %bb.as ], [ %i.eh, %.loopexit ], [ %.sroa.26.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit309 ], [ %.sroa.091.0.copyload, %bb.fk ], [ %.sroa.26.8.copyload33, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecbEECs9KQ7US1M400_11lance_table.exit319 ], [ %.sroa.26.8.copyload33, %bb.dh ], [ %.sroa.26.8.copyload, %bb.el ], [ %.sroa.26.8.copyload23, %bb.fd ], [ %.sroa.26.8.copyload27, %bb.go ], [ %.sroa.26.8.copyload29, %bb.hg ], [ %.sroa.0137.0.copyload, %bb.hn ]
  %.sroa.17.0 = phi i64 [ %2, %bb.an ], [ %i.dd, %bb.as ], [ %.sroa.4.0.i.i, %.loopexit ], [ %.sroa.17.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit309 ], [ 2, %bb.fk ], [ %.sroa.17.8.copyload15, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecbEECs9KQ7US1M400_11lance_table.exit319 ], [ %.sroa.17.8.copyload15, %bb.dh ], [ %.sroa.17.8.copyload, %bb.el ], [ %.sroa.17.8.copyload10, %bb.fd ], [ %.sroa.17.8.copyload12, %bb.go ], [ %.sroa.17.8.copyload13, %bb.hg ], [ 2, %bb.hn ]
  %.sroa.0.0 = phi i64 [ 3, %bb.an ], [ 3, %bb.as ], [ 2, %.loopexit ], [ %.sroa.0.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit309 ], [ 6, %bb.fk ], [ 5, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecbEECs9KQ7US1M400_11lance_table.exit319 ], [ 5, %bb.dh ], [ 6, %bb.el ], [ 6, %bb.fd ], [ 7, %bb.go ], [ 7, %bb.hg ], [ 7, %bb.hn ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %i.ej, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.26.0, ptr %.sroa.26.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.28.sroa.0.0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.28.sroa.15.0..sroa.28.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.28.sroa.15.0, ptr %.sroa.28.sroa.15.0..sroa.28.0..sroa_idx.sroa_idx, align 8
  %.sroa.2843.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.2843.0, ptr %.sroa.2843.0..sroa_idx, align 8
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.32.0, ptr %.sroa.32.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit

bb.at:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.ek = invoke { ptr, ptr } @_RNvMNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_arrayNtB2_15EncodedU64Array4iter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae)
          to label %bb.aw unwind label %bb.av     ; 2 uses

bb.au:                                            ; preds = %bb.aj
  %.sroa.055.0.copyload = load i64, ptr %i.ae, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.456.0.copyload = load i64, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.657.sroa.0.0.copyload = load i64, ptr %.sroa.657.0..sroa_idx, align 8
  %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.657.sroa.4.0.copyload = load i64, ptr %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit309

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.ba, %bb.az, %bb.av
  %.pn243 = phi { ptr, i32 } [ %i.el, %bb.av ], [ %i.fk, %bb.az ], [ %i.fk, %bb.ba ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.ae) #81
  br label %.body

bb.av:                                            ; preds = %bb.aw, %bb.at
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9KQ7US1M400_11lance_table.exit

bb.aw:                                            ; preds = %bb.at
  %i.em = extractvalue { ptr, ptr } %i.ek, 0
  %i.en = extractvalue { ptr, ptr } %i.ek, 1
  invoke fastcc void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecyEINtB2_18SpecFromIterNestedyINtNtB6_5boxed3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EE9from_iterCs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ad, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.en)
          to label %bb.ax unwind label %bb.av

bb.ax:                                            ; preds = %bb.aw
  %i.eo = load i64, ptr %i.ak, align 8, !noundef !68 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52588)
  %spec.select.i.i301 = call i64 @llvm.usub.sat.i64(i64 %i.eo, i64 %i.dk) ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !52589, !noundef !68 ; 3 uses
  %i.er = load i64, ptr %i.ad, align 8, !range !72, !alias.scope !52589, !noundef !68
  %i.es = sub i64 %i.er, %i.eq
  %i.et = icmp ugt i64 %spec.select.i.i301, %i.es
  br i1 %i.et, label %bb.ay, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i, !prof !71

bb.ay:                                            ; preds = %bb.ax
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad, i64 noundef %i.eq, i64 noundef %spec.select.i.i301, i64 noundef 8, i64 noundef 8)
          to label %.noexc302 unwind label %bb.az

.noexc302:                                        ; preds = %bb.ay
  %.pre.i = load i64, ptr %i.ep, align 8, !alias.scope !52588
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i: ; preds = %.noexc302, %bb.ax
  %i.eu = phi i64 [ %i.eq, %bb.ax ], [ %.pre.i, %.noexc302 ] ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !52588, !nonnull !68, !noundef !68 ; 3 uses
  %i.ex = icmp ult i64 %i.dk, %i.eo
  %i.ey = ptrtoint ptr %i.ew to i64               ; 6 uses
  br i1 %i.ex, label %.lr.ph.i.i.i.preheader, label %.loopexit555

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i
  %i.ez = sub nuw i64 %i.eo, %i.dk                ; 3 uses
  %min.iters.check764 = icmp ult i64 %i.ez, 4
  br i1 %min.iters.check764, label %.lr.ph.i.i.i.preheader794, label %vector.ph765

vector.ph765:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec766 = and i64 %i.ez, -4                   ; 4 uses
  %i.fa = add i64 %i.eu, %n.vec766                ; 2 uses
  %i.fb = add i64 %i.dk, %n.vec766
  %broadcast.splatinsert767 = insertelement <2 x i64> poison, i64 %i.dk, i64 0
  %broadcast.splat768 = shufflevector <2 x i64> %broadcast.splatinsert767, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat768, <i64 0, i64 1>
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment13with_new_high:bb.a
  %i.oq = phi i64 [ %i.jc, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_4take4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterhEINtNtB6_3map3MapINtNtNtBa_3ops5range5RangelENCNCNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids6bitmapNtB32_6Bitmap4iter00ENCB2X_0EEINtNtNtB8_7sources8repeat_n7RepeatNbEEINtNtB4k_4once4OncebEENtNtNtB8_6traits8iterator8Iterator4nextB36_.exit.thread.thread.i.i.i ], [ %i.hu, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_4take4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterhEINtNtB6_3map3MapINtNtNtBa_3ops5range5RangelENCNCNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids6bitmapNtB32_6Bitmap4iter00ENCB2X_0EEINtNtNtB8_7sources8repeat_n7RepeatNbEEINtNtB4k_4once4OncebEENtNtNtB8_6traits8iterator8Iterator4nextB36_.exit.thread.i.thread.i.i ], [ %i.hu, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_4take4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterhEINtNtB6_3map3MapINtNtNtBa_3ops5range5RangelENCNCNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids6bitmapNtB32_6Bitmap4iter00ENCB2X_0EEINtNtNtB8_7sources8repeat_n7RepeatNbEEINtNtB4k_4once4OncebEENtNtNtB8_6traits8iterator8Iterator4nextB36_.exit.thread.i.i.i ], [ %i.nx, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_4take4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterhEINtNtB6_3map3MapINtNtNtBa_3ops5range5RangelENCNCNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids6bitmapNtB32_6Bitmap4iter00ENCB2X_0EEINtNtNtB8_7sources8repeat_n7RepeatNbEEINtNtB4k_4once4OncebEENtNtNtB8_6traits8iterator8Iterator9size_hintB36_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecbE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i ]
  %i.or = phi i8 [ %i.ht, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_4take4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterhEINtNtB6_3map3MapINtNtNtBa_3ops5range5RangelENCNCNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids6bitmapNtB32_6Bitmap4iter00ENCB2X_0EEINtNtNtB8_7sources8repeat_n7RepeatNbEEINtNtB4k_4once4OncebEENtNtNtB8_6traits8iterator8Iterator4nextB36_.exit.thread.thread.i.i.i ], [ 2, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_4take4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterhEINtNtB6_3map3MapINtNtNtBa_3ops5range5RangelENCNCNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids6bitmapNtB32_6Bitmap4iter00ENCB2X_0EEINtNtNtB8_7sources8repeat_n7RepeatNbEEINtNtB4k_4once4OncebEENtNtNtB8_6traits8iterator8Iterator4nextB36_.exit.thread.i.thread.i.i ], [ %i.ht, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_4take4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterhEINtNtB6_3map3MapINtNtNtBa_3ops5range5RangelENCNCNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids6bitmapNtB32_6Bitmap4iter00ENCB2X_0EEINtNtNtB8_7sources8repeat_n7RepeatNbEEINtNtB4k_4once4OncebEENtNtNtB8_6traits8iterator8Iterator4nextB36_.exit.thread.i.i.i ], [ %i.nw, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_4take4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterhEINtNtB6_3map3MapINtNtNtBa_3ops5range5RangelENCNCNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids6bitmapNtB32_6Bitmap4iter00ENCB2X_0EEINtNtNtB8_7sources8repeat_n7RepeatNbEEINtNtB4k_4once4OncebEENtNtNtB8_6traits8iterator8Iterator9size_hintB36_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecbE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i ]
  %i.os = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.hp
  store i8 %.sroa.0.0.i2.i851.i.i.i, ptr %i.os, align 1, !noalias !52631
  %i.ot = add nuw i64 %i.hp, 1                    ; 2 uses
  store i64 %i.ot, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !52632, !noalias !52633
  br label %bb.bp

.loopexit.i:                                      ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_4take4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterhEINtNtB6_3map3MapINtNtNtBa_3ops5range5RangelENCNCNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids6bitmapNtB32_6Bitmap4iter00ENCB2X_0EEINtNtNtB8_7sources8repeat_n7RepeatNbEEINtNtB4k_4once4OncebEENtNtNtB8_6traits8iterator8Iterator9size_hintB36_.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

.loopexit.split-lp.i:                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_4take4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterhEINtNtB6_3map3MapINtNtNtBa_3ops5range5RangelENCNCNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids6bitmapNtB32_6Bitmap4iter00ENCB2X_0EEINtNtNtB8_7sources8repeat_n7RepeatNbEEINtNtB4k_4once4OncebEENtNtNtB8_6traits8iterator8Iterator9size_hintB36_.exit.i.jt2.i.i, %bb.bq
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.db:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.val.i313 = load i64, ptr %i.e, align 8, !noalias !52596 ; 2 uses
  %i.ou = icmp eq i64 %.val.i313, 0
  br i1 %i.ou, label %.body317, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.val7.i = load ptr, ptr %.sroa.4.0..sroa_idx.i312, align 8, !noalias !52596, !nonnull !68, !noundef !68
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i, i64 noundef %.val.i313, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !52596
  br label %.body317

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecbEINtB2_10SpecExtendbINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5chain5ChainIB1d_INtNtB1h_4take4TakeINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterhEINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangelENCNCNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids6bitmapNtB4d_6Bitmap4iter00ENCB48_0EEINtNtNtB1j_7sources8repeat_n7RepeatNbEEINtNtB5v_4once4OncebEEE11spec_extendB4h_.exit.sink.split.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_4take4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterhEINtNtB6_3map3MapINtNtNtBa_3ops5range5RangelENCNCNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids6bitmapNtB32_6Bitmap4iter00ENCB2X_0EEINtNtNtB8_7sources8repeat_n7RepeatNbEEINtNtB4k_4once4OncebEENtNtNtB8_6traits8iterator8Iterator4nextB36_.exit.thread104.i.i.i, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_4take4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterhEINtNtB6_3map3MapINtNtNtBa_3ops5range5RangelENCNCNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids6bitmapNtB32_6Bitmap4iter00ENCB2X_0EEINtNtNtB8_7sources8repeat_n7RepeatNbEEINtNtB4k_4once4OncebEENtNtNtB8_6traits8iterator8Iterator4nextB36_.exit.i.thread.i.i
  %.lcssa146.sink.i = phi i64 [ %i.hp, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_4take4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterhEINtNtB6_3map3MapINtNtNtBa_3ops5range5RangelENCNCNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids6bitmapNtB32_6Bitmap4iter00ENCB2X_0EEINtNtNtB8_7sources8repeat_n7RepeatNbEEINtNtB4k_4once4OncebEENtNtNtB8_6traits8iterator8Iterator4nextB36_.exit.thread104.i.i.i ], [ %i.jm, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_4take4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterhEINtNtB6_3map3MapINtNtNtBa_3ops5range5RangelENCNCNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids6bitmapNtB32_6Bitmap4iter00ENCB2X_0EEINtNtNtB8_7sources8repeat_n7RepeatNbEEINtNtB4k_4once4OncebEENtNtNtB8_6traits8iterator8Iterator4nextB36_.exit.i.thread.i.i ]
  %i.ov = add nuw i64 %.lcssa146.sink.i, 1
  br label %.loopexit556

.loopexit556:                                     ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_4take4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterhEINtNtB6_3map3MapINtNtNtBa_3ops5range5RangelENCNCNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids6bitmapNtB32_6Bitmap4iter00ENCB2X_0EEINtNtNtB8_7sources8repeat_n7RepeatNbEEINtNtB4k_4once4OncebEENtNtNtB8_6traits8iterator8Iterator4nextB36_.exit.i.i.i, %bb.cb, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecbEINtB2_10SpecExtendbINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5chain5ChainIB1d_INtNtB1h_4take4TakeINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterhEINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangelENCNCNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids6bitmapNtB4d_6Bitmap4iter00ENCB48_0EEINtNtNtB1j_7sources8repeat_n7RepeatNbEEINtNtB5v_4once4OncebEEE11spec_extendB4h_.exit.sink.split.i, %bb.cc, %bb.cc, %_RNvYNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5chain5ChainINtNtBa_4take4TakeINtNtBa_7flatten7FlatMapINtNtNtBe_5slice4iter4IterhEINtNtBa_3map3MapINtNtNtBe_3ops5range5RangelENCNCNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids6bitmapNtB2W_6Bitmap4iter00ENCB2R_0EEINtNtNtBc_7sources8repeat_n7RepeatNbEENtNtNtBc_6traits8iterator8Iterator4nextINtNtB2q_8function6FnOnceTQB5_EE9call_onceB30_.exit.thread.i.i.i.jt2.i.i, %_RNvYNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5chain5ChainINtNtBa_4take4TakeINtNtBa_7flatten7FlatMapINtNtNtBe_5slice4iter4IterhEINtNtBa_3map3MapINtNtNtBe_3ops5range5RangelENCNCNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids6bitmapNtB2W_6Bitmap4iter00ENCB2R_0EEINtNtNtBc_7sources8repeat_n7RepeatNbEENtNtNtBc_6traits8iterator8Iterator4nextINtNtB2q_8function6FnOnceTQB5_EE9call_onceB30_.exit.thread.i.i.i.jt2.i.i
  %.sroa.10.0.copyload = phi i64 [ %i.jm, %_RNvYNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5chain5ChainINtNtBa_4take4TakeINtNtBa_7flatten7FlatMapINtNtNtBe_5slice4iter4IterhEINtNtBa_3map3MapINtNtNtBe_3ops5range5RangelENCNCNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids6bitmapNtB2W_6Bitmap4iter00ENCB2R_0EEINtNtNtBc_7sources8repeat_n7RepeatNbEENtNtNtBc_6traits8iterator8Iterator4nextINtNtB2q_8function6FnOnceTQB5_EE9call_onceB30_.exit.thread.i.i.i.jt2.i.i ], [ %i.ov, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecbEINtB2_10SpecExtendbINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5chain5ChainIB1d_INtNtB1h_4take4TakeINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterhEINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangelENCNCNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids6bitmapNtB4d_6Bitmap4iter00ENCB48_0EEINtNtNtB1j_7sources8repeat_n7RepeatNbEEINtNtB5v_4once4OncebEEE11spec_extendB4h_.exit.sink.split.i ], [ %i.hp, %bb.cc ], [ %i.hp, %bb.cc ], [ %i.jm, %_RNvYNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5chain5ChainINtNtBa_4take4TakeINtNtBa_7flatten7FlatMapINtNtNtBe_5slice4iter4IterhEINtNtBa_3map3MapINtNtNtBe_3ops5range5RangelENCNCNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids6bitmapNtB2W_6Bitmap4iter00ENCB2R_0EEINtNtNtBc_7sources8repeat_n7RepeatNbEENtNtNtBc_6traits8iterator8Iterator4nextINtNtB2q_8function6FnOnceTQB5_EE9call_onceB30_.exit.thread.i.i.i.jt2.i.i ], [ %i.hp, %bb.cb ], [ %i.hp, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_4take4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterhEINtNtB6_3map3MapINtNtNtBa_3ops5range5RangelENCNCNvMs_NtNtCs9KQ7US1M400_11lance_table6rowids6bitmapNtB32_6Bitmap4iter00ENCB2X_0EEINtNtNtB8_7sources8repeat_n7RepeatNbEEINtNtB4k_4once4OncebEENtNtNtB8_6traits8iterator8Iterator4nextB36_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !52596
  %.sroa.0453.0.copyload = load i64, ptr %i.e, align 8, !noalias !52595 ; 4 uses
  %.sroa.6454.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i312, align 8, !noalias !52595 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !52596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RNvXs0_NtNtCs9KQ7US1M400_11lance_table6rowids6bitmapNtB5_6BitmapINtNtCscI6d9CVNmLh_4core7convert4FromRSbE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.6454.0.copyload, i64 noundef %.sroa.10.0.copyload)
          to label %bb.df unwind label %bb.dd

bb.dd:                                            ; preds = %.loopexit556
  %i.ow = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ox = icmp eq i64 %.sroa.0453.0.copyload, 0
  br i1 %i.ox, label %.body317, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6454.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6454.0.copyload, i64 noundef %.sroa.0453.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %.body317

bb.df:                                            ; preds = %.loopexit556
  %.sroa.17.8.copyload15 = load i64, ptr %i.ab, align 8 ; 2 uses
  %.sroa.26.8..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.26.8.copyload33 = load i64, ptr %.sroa.26.8..sroa_idx32, align 8 ; 2 uses
  %.sroa.28.8..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.28.sroa.0.0.copyload71 = load i64, ptr %.sroa.28.8..sroa_idx42, align 8 ; 2 uses
  %.sroa.28.sroa.15.0..sroa.28.8..sroa_idx42.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.28.sroa.15.0.copyload80 = load i64, ptr %.sroa.28.sroa.15.0..sroa.28.8..sroa_idx42.sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.oy = icmp eq i64 %.sroa.0453.0.copyload, 0
  br i1 %i.oy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecbEECs9KQ7US1M400_11lance_table.exit319, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6454.0.copyload, i64 noundef %.sroa.0453.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecbEECs9KQ7US1M400_11lance_table.exit319

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecbEECs9KQ7US1M400_11lance_table.exit319: ; preds = %bb.dg, %bb.df
  %i.oz = icmp eq i64 %.sroa.0450.0.copyload, 0
  br i1 %i.oz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids6bitmap6BitmapEBH_.exit320, label %bb.dh

bb.dh:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecbEECs9KQ7US1M400_11lance_table.exit319
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5451.0.copyload, i64 noundef %.sroa.0450.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids6bitmap6BitmapEBH_.exit320

bb.di:                                            ; preds = %bb.ak
  %i.pa = icmp ult i64 %2, %.sroa.584.0.copyload
  br i1 %i.pa, label %bb.dr, label %bb.dm

bb.dj:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 %.sroa.8.sroa.0.0.copyload, ptr %i.t, align 8
  %.sroa.8.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  store ptr %.sroa.8.sroa.7.0.copyload, ptr %.sroa.8.sroa.7.0..sroa_idx, align 8
  %.sroa.8.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  store i64 %.sroa.8.sroa.8.0.copyload, ptr %.sroa.8.sroa.8.0..sroa_idx, align 8
  %i.pb = icmp ult i64 %2, %.sroa.584.0.copyload
  br i1 %i.pb, label %bb.er, label %bb.eo

bb.dk:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 %.sroa.584.0.copyload, ptr %i.aa, align 8
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  store i64 %.sroa.8.sroa.0.0.copyload, ptr %.sroa.8.8..sroa_idx, align 8
  %.sroa.8.sroa.7.0..sroa.8.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %.sroa.8.sroa.7.0.copyload, ptr %.sroa.8.sroa.7.0..sroa.8.8..sroa_idx.sroa_idx, align 8
  %.cast550 = ptrtoint ptr %.sroa.8.sroa.7.0.copyload to i64 ; 3 uses
  %i.pc = icmp eq i64 %.sroa.584.0.copyload, %.cast550
  %i.pd = inttoptr i64 %.sroa.8.sroa.0.0.copyload to ptr
  br i1 %i.pc, label %bb.dl, label %bb.fk

bb.dl:                                            ; preds = %bb.dk
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %._crit_edge599 unwind label %bb.fi

._crit_edge599:                                   ; preds = %bb.dl
  %.pre600 = load ptr, ptr %.sroa.8.8..sroa_idx, align 8, !alias.scope !52661
  br label %bb.fk

bb.dm:                                            ; preds = %bb.di
  %i.pe = sub nuw i64 %2, %.sroa.584.0.copyload   ; 4 uses
  %i.pf = icmp ult i64 %i.pe, 65536
  br i1 %i.pf, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.pg = icmp ult i64 %i.pe, 4294967296
  br i1 %i.pg, label %bb.dq, label %bb.dr

bb.do:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 %.sroa.8.sroa.0.0.copyload, ptr %i.z, align 8
  %.sroa.7469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  store ptr %.sroa.8.sroa.7.0.copyload, ptr %.sroa.7469.0..sroa_idx, align 8
  %.sroa.9472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  store i64 %.sroa.8.sroa.8.0.copyload, ptr %.sroa.9472.0..sroa_idx, align 8
  %i.ph = trunc nuw i64 %i.pe to i16
  %i.pi = icmp eq i64 %.sroa.8.sroa.8.0.copyload, %.sroa.8.sroa.0.0.copyload
  br i1 %i.pi, label %bb.dp, label %bb.eg

bb.dp:                                            ; preds = %bb.do
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs1akgR21QTtx_7roaring(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %._crit_edge605 unwind label %bb.ee

._crit_edge605:                                   ; preds = %bb.dp
  %.pre606 = load ptr, ptr %.sroa.7469.0..sroa_idx, align 8, !alias.scope !52662
  br label %bb.eg

bb.dq:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.7.0.copyload) ]
  %i.pj = icmp ult i64 %.sroa.8.sroa.8.0.copyload, 4611686018427387904
  tail call void @llvm.assume(i1 %i.pj)
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.sroa.7.0.copyload, i64 %.sroa.8.sroa.8.0.copyload
  store ptr %.sroa.8.sroa.7.0.copyload, ptr %i.x, align 8
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.8.sroa.7.0.copyload, ptr %.sroa.4103.0..sroa_idx, align 8
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.8.sroa.0.0.copyload, ptr %.sroa.5104.0..sroa_idx, align 8
  %.sroa.6105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.pk, ptr %.sroa.6105.0..sroa_idx, align 8
  invoke fastcc void @_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoItertENCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB2V_10U64Segment13with_new_high0EE9from_iterB2Z_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.x)
          to label %bb.dz unwind label %bb.dy

bb.dr:                                            ; preds = %bb.dn, %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.7.0.copyload) ]
  %i.pl = icmp ult i64 %.sroa.8.sroa.8.0.copyload, 4611686018427387904
  tail call void @llvm.assume(i1 %i.pl)
  %.idx554 = shl nuw nsw i64 %.sroa.8.sroa.8.0.copyload, 1 ; 2 uses
  %i.pm = getelementptr i8, ptr %.sroa.8.sroa.7.0.copyload, i64 %.idx554 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52663)
  %i.pn = shl i64 %.sroa.8.sroa.8.0.copyload, 3   ; 4 uses
  %i.po = icmp samesign ugt i64 %.sroa.8.sroa.8.0.copyload, 2305843009213693951
  %.not.i.i.i325 = icmp ugt i64 %i.pn, 9223372036854775800
  %or.cond.i.i.i326 = or i1 %i.po, %.not.i.i.i325
  br i1 %or.cond.i.i.i326, label %bb.du, label %bb.ds, !prof !69

bb.ds:                                            ; preds = %bb.dr
  %i.pp = icmp eq i64 %i.pn, 0
  br i1 %i.pp, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i327, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !52664
  %i.pq = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.pn, i64 noundef range(i64 1, 9) 8) #76, !noalias !52664 ; 2 uses
  %i.pr = icmp eq ptr %i.pq, null
  br i1 %i.pr, label %bb.du, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i327

bb.du:                                            ; preds = %bb.dt, %bb.dr
  %.sroa.4.0.ph.i.i332 = phi i64 [ 8, %bb.dt ], [ 0, %bb.dr ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i332, i64 %i.pn) #80
          to label %.noexc.i334 unwind label %bb.dw, !noalias !52665

.noexc.i334:                                      ; preds = %bb.du
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i327: ; preds = %bb.dt, %bb.ds
  %.sroa.10.0.i.i328 = phi ptr [ inttoptr (i64 8 to ptr), %bb.ds ], [ %i.pq, %bb.dt ] ; 6 uses
  %.sroa.4.0.i.i329 = phi i64 [ 0, %bb.ds ], [ %.sroa.8.sroa.8.0.copyload, %bb.dt ] ; 3 uses
  %i.ps = icmp samesign ule i64 %.sroa.8.sroa.8.0.copyload, %.sroa.4.0.i.i329
  tail call void @llvm.assume(i1 %i.ps)
  %.not.not12.i.i.i.i.i.i = icmp eq i64 %.sroa.8.sroa.8.0.copyload, 0
  br i1 %.not.not12.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i327
  %i.pt = add nsw i64 %.idx554, -2                ; 2 uses
  %i.pu = lshr exact i64 %i.pt, 1
  %i.pv = add nuw i64 %i.pu, 1                    ; 2 uses
  %min.iters.check748 = icmp ult i64 %i.pt, 26
  br i1 %min.iters.check748, label %.lr.ph.i.i.i.i.i.i.preheader809, label %vector.memcheck742

vector.memcheck742:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.pw = shl nuw i64 %.sroa.8.sroa.8.0.copyload, 3
  %scevgep743 = getelementptr i8, ptr %.sroa.10.0.i.i328, i64 %i.pw
  %bound0744 = icmp ult ptr %.sroa.10.0.i.i328, %i.pm
  %bound1745 = icmp ult ptr %.sroa.8.sroa.7.0.copyload, %scevgep743
  %found.conflict746 = and i1 %bound0744, %bound1745
  br i1 %found.conflict746, label %.lr.ph.i.i.i.i.i.i.preheader809, label %vector.ph749

vector.ph749:                                     ; preds = %vector.memcheck742
  %n.vec750 = and i64 %i.pv, -4                   ; 5 uses
  %i.px = shl i64 %n.vec750, 1
  %i.py = getelementptr i8, ptr %.sroa.8.sroa.7.0.copyload, i64 %i.px
  %broadcast.splatinsert751 = insertelement <2 x i64> poison, i64 %.sroa.584.0.copyload, i64 0
  %broadcast.splat752 = shufflevector <2 x i64> %broadcast.splatinsert751, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body753

vector.body753:                                   ; preds = %vector.body753, %vector.ph749
  %index754 = phi i64 [ 0, %vector.ph749 ], [ %index.next758, %vector.body753 ] ; 3 uses
  %i.pz = shl i64 %index754, 1
  %next.gep755 = getelementptr i8, ptr %.sroa.8.sroa.7.0.copyload, i64 %i.pz ; 2 uses
  %i.qa = getelementptr i8, ptr %next.gep755, i64 4
  %wide.load756 = load <2 x i16>, ptr %next.gep755, align 2, !alias.scope !52666, !noalias !52667
  %wide.load757 = load <2 x i16>, ptr %i.qa, align 2, !alias.scope !52666, !noalias !52667
  %i.qb = zext <2 x i16> %wide.load756 to <2 x i64>
  %i.qc = zext <2 x i16> %wide.load757 to <2 x i64>
  %i.qd = add <2 x i64> %broadcast.splat752, %i.qb
  %i.qe = add <2 x i64> %broadcast.splat752, %i.qc
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i328, i64 %index754 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  store <2 x i64> %i.qd, ptr %i.qf, align 8, !alias.scope !52668, !noalias !52669
  store <2 x i64> %i.qe, ptr %i.qg, align 8, !alias.scope !52668, !noalias !52669
  %index.next758 = add nuw i64 %index754, 4       ; 2 uses
  %i.qh = icmp eq i64 %index.next758, %n.vec750
  br i1 %i.qh, label %middle.block759, label %vector.body753, !llvm.loop !52454

middle.block759:                                  ; preds = %vector.body753
  %cmp.n760 = icmp eq i64 %i.pv, %n.vec750
  br i1 %cmp.n760, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader809

.lr.ph.i.i.i.i.i.i.preheader809:                  ; preds = %vector.memcheck742, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block759
  %.ph810 = phi i64 [ 0, %vector.memcheck742 ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec750, %middle.block759 ]
  %.ph811 = phi ptr [ %.sroa.8.sroa.7.0.copyload, %vector.memcheck742 ], [ %.sroa.8.sroa.7.0.copyload, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.py, %middle.block759 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader809, %.lr.ph.i.i.i.i.i.i
  %i.qi = phi i64 [ %i.qp, %.lr.ph.i.i.i.i.i.i ], [ %.ph810, %.lr.ph.i.i.i.i.i.i.preheader809 ] ; 2 uses
  %i.qj = phi ptr [ %i.ql, %.lr.ph.i.i.i.i.i.i ], [ %.ph811, %.lr.ph.i.i.i.i.i.i.preheader809 ] ; 2 uses
  %i.qk = load i16, ptr %i.qj, align 2, !noalias !52667, !noundef !68
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 2 ; 2 uses
  %i.qm = zext i16 %i.qk to i64
  %i.qn = add i64 %.sroa.584.0.copyload, %i.qm
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i328, i64 %i.qi
  store i64 %i.qn, ptr %i.qo, align 8, !noalias !52670
  %i.qp = add nuw i64 %i.qi, 1                    ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp eq ptr %i.ql, %i.pm
  br i1 %.not.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !52455

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block759, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i327
  %.sroa.42.0.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i327 ], [ %n.vec750, %middle.block759 ], [ %i.qp, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  %i.qq = icmp eq i64 %.sroa.8.sroa.0.0.copyload, 0
  br i1 %i.qq, label %bb.eh, label %bb.dv

bb.dv:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.qr = shl nuw i64 %.sroa.8.sroa.0.0.copyload, 1
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.sroa.7.0.copyload, i64 noundef %i.qr, i64 noundef range(i64 1, -9223372036854775807) 2) #76, !noalias !52667
  br label %bb.eh

bb.dw:                                            ; preds = %bb.du
  %i.qs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qt = icmp eq i64 %.sroa.8.sroa.0.0.copyload, 0
  br i1 %i.qt, label %.body, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.qu = shl nuw i64 %.sroa.8.sroa.0.0.copyload, 1
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.sroa.7.0.copyload, i64 noundef %i.qu, i64 noundef range(i64 1, -9223372036854775807) 2) #76, !noalias !52671
  br label %.body

bb.dy:                                            ; preds = %bb.dq
  %i.qv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dz:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.qw = trunc nuw i64 %i.pe to i32
  %i.qx = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.qy = load i64, ptr %i.qx, align 8, !alias.scope !52672, !noundef !68 ; 3 uses
  %i.qz = load i64, ptr %i.y, align 8, !range !72, !alias.scope !52672, !noundef !68
  %i.ra = icmp eq i64 %i.qy, %i.qz
  br i1 %i.ra, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %bb.dz
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs1akgR21QTtx_7roaring(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.ed unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.rb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val270 = load i64, ptr %i.y, align 8          ; 2 uses
  %i.rc = icmp eq i64 %.val270, 0
  br i1 %i.rc, label %.body, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.rd = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.val271 = load ptr, ptr %i.rd, align 8, !nonnull !68, !noundef !68
  %i.re = shl nuw i64 %.val270, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val271, i64 noundef %i.re, i64 noundef range(i64 1, -9223372036854775807) 4) #76
  br label %.body

bb.ed:                                            ; preds = %bb.dz, %bb.ea
  %i.rf = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.rg = load ptr, ptr %i.rf, align 8, !alias.scope !52672, !nonnull !68, !noundef !68
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %i.qy
  store i32 %i.qw, ptr %i.rh, align 4
  %i.ri = add i64 %i.qy, 1
  store i64 %i.ri, ptr %i.qx, align 8, !alias.scope !52672
  %.sroa.4107.sroa.5.0..sroa.4107.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4107.sroa.5.0..sroa.4107.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.rj, align 8
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.4107.0..sroa_idx, align 8
  %.sroa.4107.sroa.4.0..sroa.4107.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.584.0.copyload, ptr %.sroa.4107.sroa.4.0..sroa.4107.0..sroa_idx.sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit

bb.ee:                                            ; preds = %bb.dp
  %i.rk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val248 = load i64, ptr %i.z, align 8          ; 2 uses
  %i.rl = icmp eq i64 %.val248, 0
  br i1 %i.rl, label %.body, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %.val249 = load ptr, ptr %.sroa.7469.0..sroa_idx, align 8, !nonnull !68, !noundef !68
  %i.rm = shl nuw i64 %.val248, 1
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val249, i64 noundef %i.rm, i64 noundef range(i64 1, -9223372036854775807) 2) #76
  br label %.body

bb.eg:                                            ; preds = %._crit_edge605, %bb.do
  %i.rn = phi ptr [ %.pre606, %._crit_edge605 ], [ %.sroa.8.sroa.7.0.copyload, %bb.do ]
  %i.ro = getelementptr inbounds nuw [2 x i8], ptr %i.rn, i64 %.sroa.8.sroa.8.0.copyload
  store i16 %i.ph, ptr %i.ro, align 2
  %i.rp = add i64 %.sroa.8.sroa.8.0.copyload, 1
  store i64 %i.rp, ptr %.sroa.9472.0..sroa_idx, align 8, !alias.scope !52662
  %.sroa.497.sroa.5.0..sroa.497.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.497.sroa.5.0..sroa.497.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.rq, align 8
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.497.0..sroa_idx, align 8
  %.sroa.497.sroa.4.0..sroa.497.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.584.0.copyload, ptr %.sroa.497.sroa.4.0..sroa.497.0..sroa_idx.sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit

bb.eh:                                            ; preds = %bb.dv, %._crit_edge.i.i.i.i.i.i
  store i64 %.sroa.4.0.i.i329, ptr %i.w, align 8, !alias.scope !52663, !noalias !52673
  %.sroa.4.0..sroa_idx.i331 = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i328, ptr %.sroa.4.0..sroa_idx.i331, align 8, !alias.scope !52663, !noalias !52673
  %.sroa.6.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  store i64 %.sroa.42.0.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx14.i, align 8, !alias.scope !52663, !noalias !52673
  %i.rr = load i64, ptr %i.ak, align 8, !noundef !68
  %i.rs = icmp eq i64 %.sroa.42.0.i.i.i.i.i, %.sroa.4.0.i.i329
  br i1 %i.rs, label %bb.ei, label %bb.ek

bb.ei:                                            ; preds = %bb.eh
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %._crit_edge607 unwind label %bb.em

._crit_edge607:                                   ; preds = %bb.ei
  %.pre608 = load ptr, ptr %.sroa.4.0..sroa_idx.i331, align 8, !alias.scope !52674
  br label %bb.ek

bb.ej:                                            ; preds = %bb.ek
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ek:                                            ; preds = %._crit_edge607, %bb.eh
  %i.ru = phi ptr [ %.pre608, %._crit_edge607 ], [ %.sroa.10.0.i.i328, %bb.eh ]
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.ru, i64 %.sroa.42.0.i.i.i.i.i
  store i64 %i.rr, ptr %i.rv, align 8
  %i.rw = add i64 %.sroa.42.0.i.i.i.i.i, 1
  store i64 %i.rw, ptr %.sroa.6.0..sroa_idx14.i, align 8, !alias.scope !52674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  invoke void @_RNvXs_NtNtCs9KQ7US1M400_11lance_table6rowids13encoded_arrayNtB4_15EncodedU64ArrayINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecyEE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.v, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.u)
          to label %bb.el unwind label %bb.ej

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.sroa.17.8.copyload = load i64, ptr %i.v, align 8
  %.sroa.26.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.26.8.copyload = load i64, ptr %.sroa.26.8..sroa_idx, align 8
  %.sroa.28.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.28.sroa.0.0.copyload65 = load i64, ptr %.sroa.28.8..sroa_idx, align 8
  %.sroa.28.sroa.15.0..sroa.28.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.28.sroa.15.0.copyload74 = load i64, ptr %.sroa.28.sroa.15.0..sroa.28.8..sroa_idx.sroa_idx, align 8
  %.sroa.2843.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.2843.8.copyload = load i64, ptr %.sroa.2843.8..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids6bitmap6BitmapEBH_.exit320

bb.em:                                            ; preds = %bb.ei
  %i.rx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val260 = load i64, ptr %i.w, align 8          ; 2 uses
  %i.ry = icmp eq i64 %.val260, 0
  br i1 %i.ry, label %.body, label %bb.en

bb.en:                                            ; preds = %bb.em
  %.val261 = load ptr, ptr %.sroa.4.0..sroa_idx.i331, align 8, !nonnull !68, !noundef !68
  %i.rz = shl nuw i64 %.val260, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val261, i64 noundef %i.rz, i64 noundef range(i64 1, -9223372036854775807) 8) #76
  br label %.body

bb.eo:                                            ; preds = %bb.dj
  %i.sa = sub nuw i64 %2, %.sroa.584.0.copyload   ; 2 uses
  %i.sb = icmp ult i64 %i.sa, 4294967296
  br i1 %i.sb, label %bb.ep, label %bb.er

bb.ep:                                            ; preds = %bb.eo
  %i.sc = trunc nuw i64 %i.sa to i32
  %i.sd = icmp eq i64 %.sroa.8.sroa.8.0.copyload, %.sroa.8.sroa.0.0.copyload
  br i1 %i.sd, label %bb.eq, label %bb.ey

bb.eq:                                            ; preds = %bb.ep
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs1akgR21QTtx_7roaring(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %._crit_edge601 unwind label %bb.fg

._crit_edge601:                                   ; preds = %bb.eq
  %.pre602 = load ptr, ptr %.sroa.8.sroa.7.0..sroa_idx, align 8, !alias.scope !52675
  br label %bb.ey

bb.er:                                            ; preds = %bb.eo, %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.se = icmp ult i64 %.sroa.8.sroa.8.0.copyload, 2305843009213693952
  tail call void @llvm.assume(i1 %i.se)
  %.idx552 = shl nuw nsw i64 %.sroa.8.sroa.8.0.copyload, 2 ; 2 uses
  %i.sf = getelementptr i8, ptr %.sroa.8.sroa.7.0.copyload, i64 %.idx552 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52676)
  %i.sg = shl nuw i64 %.sroa.8.sroa.8.0.copyload, 3 ; 2 uses
  %.not.i.i.i345 = icmp samesign ugt i64 %.sroa.8.sroa.8.0.copyload, 1152921504606846975
  br i1 %.not.i.i.i345, label %bb.eu, label %bb.es, !prof !69

bb.es:                                            ; preds = %bb.er
  %i.sh = icmp eq i64 %.sroa.8.sroa.8.0.copyload, 0
  br i1 %i.sh, label %._crit_edge.i.i.i.i.i.i358, label %bb.et

bb.et:                                            ; preds = %bb.es
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !52677
  %i.si = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.sg, i64 noundef range(i64 1, 9) 8) #76, !noalias !52677 ; 7 uses
  %i.sj = icmp eq ptr %i.si, null
  br i1 %i.sj, label %bb.eu, label %.lr.ph.i.i.i.i.i.i356.preheader

bb.eu:                                            ; preds = %bb.et, %bb.er
  %.sroa.4.0.ph.i.i362 = phi i64 [ 8, %bb.et ], [ 0, %bb.er ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i362, i64 %i.sg) #80
          to label %.noexc.i365 unwind label %bb.ew, !noalias !52678

.noexc.i365:                                      ; preds = %bb.eu
  unreachable

.lr.ph.i.i.i.i.i.i356.preheader:                  ; preds = %bb.et
  %i.sk = add nsw i64 %.idx552, -4                ; 2 uses
  %i.sl = lshr exact i64 %i.sk, 2
  %i.sm = add nuw nsw i64 %i.sl, 1                ; 2 uses
  %min.iters.check727 = icmp ult i64 %i.sk, 52
  br i1 %min.iters.check727, label %.lr.ph.i.i.i.i.i.i356.preheader813, label %vector.memcheck721

vector.memcheck721:                               ; preds = %.lr.ph.i.i.i.i.i.i356.preheader
  %i.sn = shl nuw nsw i64 %.sroa.8.sroa.8.0.copyload, 3
  %scevgep722 = getelementptr i8, ptr %i.si, i64 %i.sn
  %bound0723 = icmp ult ptr %i.si, %i.sf
  %bound1724 = icmp ult ptr %.sroa.8.sroa.7.0.copyload, %scevgep722
  %found.conflict725 = and i1 %bound0723, %bound1724
  br i1 %found.conflict725, label %.lr.ph.i.i.i.i.i.i356.preheader813, label %vector.ph728

vector.ph728:                                     ; preds = %vector.memcheck721
  %n.vec729 = and i64 %i.sm, 9223372036854775804  ; 5 uses
  %i.so = shl i64 %n.vec729, 2
  %i.sp = getelementptr i8, ptr %.sroa.8.sroa.7.0.copyload, i64 %i.so
  %broadcast.splatinsert730 = insertelement <2 x i64> poison, i64 %.sroa.584.0.copyload, i64 0
  %broadcast.splat731 = shufflevector <2 x i64> %broadcast.splatinsert730, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body732

vector.body732:                                   ; preds = %vector.body732, %vector.ph728
  %index733 = phi i64 [ 0, %vector.ph728 ], [ %index.next737, %vector.body732 ] ; 3 uses
  %i.sq = shl i64 %index733, 2
  %next.gep734 = getelementptr i8, ptr %.sroa.8.sroa.7.0.copyload, i64 %i.sq ; 2 uses
  %i.sr = getelementptr i8, ptr %next.gep734, i64 8
  %wide.load735 = load <2 x i32>, ptr %next.gep734, align 4, !alias.scope !52679, !noalias !52680
  %wide.load736 = load <2 x i32>, ptr %i.sr, align 4, !alias.scope !52679, !noalias !52680
  %i.ss = zext <2 x i32> %wide.load735 to <2 x i64>
  %i.st = zext <2 x i32> %wide.load736 to <2 x i64>
  %i.su = add <2 x i64> %broadcast.splat731, %i.ss
  %i.sv = add <2 x i64> %broadcast.splat731, %i.st
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.si, i64 %index733 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
  store <2 x i64> %i.su, ptr %i.sw, align 8, !alias.scope !52681, !noalias !52682
  store <2 x i64> %i.sv, ptr %i.sx, align 8, !alias.scope !52681, !noalias !52682
  %index.next737 = add nuw i64 %index733, 4       ; 2 uses
  %i.sy = icmp eq i64 %index.next737, %n.vec729
  br i1 %i.sy, label %middle.block738, label %vector.body732, !llvm.loop !52493

middle.block738:                                  ; preds = %vector.body732
  %cmp.n739 = icmp eq i64 %i.sm, %n.vec729
  br i1 %cmp.n739, label %._crit_edge.i.i.i.i.i.i358, label %.lr.ph.i.i.i.i.i.i356.preheader813

.lr.ph.i.i.i.i.i.i356.preheader813:               ; preds = %vector.memcheck721, %.lr.ph.i.i.i.i.i.i356.preheader, %middle.block738
  %.ph814 = phi i64 [ 0, %vector.memcheck721 ], [ 0, %.lr.ph.i.i.i.i.i.i356.preheader ], [ %n.vec729, %middle.block738 ]
  %.ph815 = phi ptr [ %.sroa.8.sroa.7.0.copyload, %vector.memcheck721 ], [ %.sroa.8.sroa.7.0.copyload, %.lr.ph.i.i.i.i.i.i356.preheader ], [ %i.sp, %middle.block738 ]
  br label %.lr.ph.i.i.i.i.i.i356

.lr.ph.i.i.i.i.i.i356:                            ; preds = %.lr.ph.i.i.i.i.i.i356.preheader813, %.lr.ph.i.i.i.i.i.i356
  %i.sz = phi i64 [ %i.tg, %.lr.ph.i.i.i.i.i.i356 ], [ %.ph814, %.lr.ph.i.i.i.i.i.i356.preheader813 ] ; 2 uses
  %i.ta = phi ptr [ %i.tc, %.lr.ph.i.i.i.i.i.i356 ], [ %.ph815, %.lr.ph.i.i.i.i.i.i356.preheader813 ] ; 2 uses
  %i.tb = load i32, ptr %i.ta, align 4, !noalias !52680, !noundef !68
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ta, i64 4 ; 2 uses
  %i.td = zext i32 %i.tb to i64
  %i.te = add i64 %.sroa.584.0.copyload, %i.td
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.si, i64 %i.sz
  store i64 %i.te, ptr %i.tf, align 8, !noalias !52683
  %i.tg = add nuw nsw i64 %i.sz, 1                ; 2 uses
  %.not.not.i.i.i.i.i.i357 = icmp eq ptr %i.tc, %i.sf
  br i1 %.not.not.i.i.i.i.i.i357, label %._crit_edge.i.i.i.i.i.i358, label %.lr.ph.i.i.i.i.i.i356, !llvm.loop !52494

._crit_edge.i.i.i.i.i.i358:                       ; preds = %.lr.ph.i.i.i.i.i.i356, %middle.block738, %bb.es
  %.sroa.4.0.i.i349659 = phi i64 [ 0, %bb.es ], [ %.sroa.8.sroa.8.0.copyload, %middle.block738 ], [ %.sroa.8.sroa.8.0.copyload, %.lr.ph.i.i.i.i.i.i356 ] ; 2 uses
  %.sroa.10.0.i.i348658 = phi ptr [ inttoptr (i64 8 to ptr), %bb.es ], [ %i.si, %middle.block738 ], [ %i.si, %.lr.ph.i.i.i.i.i.i356 ] ; 2 uses
  %.sroa.42.0.i.i.i.i.i359 = phi i64 [ 0, %bb.es ], [ %n.vec729, %middle.block738 ], [ %i.tg, %.lr.ph.i.i.i.i.i.i356 ] ; 4 uses
  %i.th = icmp eq i64 %.sroa.8.sroa.0.0.copyload, 0
  br i1 %i.th, label %bb.ez, label %bb.ev

bb.ev:                                            ; preds = %._crit_edge.i.i.i.i.i.i358
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.7.0.copyload) ]
  %i.ti = shl nuw i64 %.sroa.8.sroa.0.0.copyload, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.sroa.7.0.copyload, i64 noundef %i.ti, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !52680
  br label %bb.ez

bb.ew:                                            ; preds = %bb.eu
  %i.tj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tk = icmp eq i64 %.sroa.8.sroa.0.0.copyload, 0
  br i1 %i.tk, label %.body, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.tl = shl nuw i64 %.sroa.8.sroa.0.0.copyload, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.sroa.7.0.copyload, i64 noundef %i.tl, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !52684
  br label %.body

bb.ey:                                            ; preds = %._crit_edge601, %bb.ep
  %i.tm = phi ptr [ %.pre602, %._crit_edge601 ], [ %.sroa.8.sroa.7.0.copyload, %bb.ep ]
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %.sroa.8.sroa.8.0.copyload
  store i32 %i.sc, ptr %i.tn, align 4
  %i.to = add i64 %.sroa.8.sroa.8.0.copyload, 1
  store i64 %i.to, ptr %.sroa.8.sroa.8.0..sroa_idx, align 8, !alias.scope !52675
  %.sroa.4119.sroa.5.0..sroa.4119.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4119.sroa.5.0..sroa.4119.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.tp, align 8
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.4119.0..sroa_idx, align 8
  %.sroa.4119.sroa.4.0..sroa.4119.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.584.0.copyload, ptr %.sroa.4119.sroa.4.0..sroa.4119.0..sroa_idx.sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit

bb.ez:                                            ; preds = %bb.ev, %._crit_edge.i.i.i.i.i.i358
  store i64 %.sroa.4.0.i.i349659, ptr %i.s, align 8, !alias.scope !52676, !noalias !52685
  %.sroa.4.0..sroa_idx.i360 = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i348658, ptr %.sroa.4.0..sroa_idx.i360, align 8, !alias.scope !52676, !noalias !52685
  %.sroa.6.0..sroa_idx14.i361 = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  store i64 %.sroa.42.0.i.i.i.i.i359, ptr %.sroa.6.0..sroa_idx14.i361, align 8, !alias.scope !52676, !noalias !52685
  %i.tq = load i64, ptr %i.ak, align 8, !noundef !68
  %i.tr = icmp eq i64 %.sroa.42.0.i.i.i.i.i359, %.sroa.4.0.i.i349659
  br i1 %i.tr, label %bb.fa, label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %._crit_edge603 unwind label %bb.fe

._crit_edge603:                                   ; preds = %bb.fa
  %.pre604 = load ptr, ptr %.sroa.4.0..sroa_idx.i360, align 8, !alias.scope !52686
  br label %bb.fc

bb.fb:                                            ; preds = %bb.fc
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.fc:                                            ; preds = %._crit_edge603, %bb.ez
  %i.tt = phi ptr [ %.pre604, %._crit_edge603 ], [ %.sroa.10.0.i.i348658, %bb.ez ]
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %.sroa.42.0.i.i.i.i.i359
  store i64 %i.tq, ptr %i.tu, align 8
  %i.tv = add i64 %.sroa.42.0.i.i.i.i.i359, 1
  store i64 %i.tv, ptr %.sroa.6.0..sroa_idx14.i361, align 8, !alias.scope !52686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  invoke void @_RNvXs_NtNtCs9KQ7US1M400_11lance_table6rowids13encoded_arrayNtB4_15EncodedU64ArrayINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecyEE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.fd unwind label %bb.fb

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.sroa.17.8.copyload10 = load i64, ptr %i.r, align 8
  %.sroa.26.8..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.26.8.copyload23 = load i64, ptr %.sroa.26.8..sroa_idx22, align 8
  %.sroa.28.8..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.28.sroa.0.0.copyload66 = load i64, ptr %.sroa.28.8..sroa_idx37, align 8
  %.sroa.28.sroa.15.0..sroa.28.8..sroa_idx37.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.28.sroa.15.0.copyload75 = load i64, ptr %.sroa.28.sroa.15.0..sroa.28.8..sroa_idx37.sroa_idx, align 8
  %.sroa.2843.8..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.2843.8.copyload45 = load i64, ptr %.sroa.2843.8..sroa_idx44, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids6bitmap6BitmapEBH_.exit320

bb.fe:                                            ; preds = %bb.fa
  %i.tw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val258 = load i64, ptr %i.s, align 8          ; 2 uses
  %i.tx = icmp eq i64 %.val258, 0
  br i1 %i.tx, label %.body, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %.val259 = load ptr, ptr %.sroa.4.0..sroa_idx.i360, align 8, !nonnull !68, !noundef !68
  %i.ty = shl nuw i64 %.val258, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val259, i64 noundef %i.ty, i64 noundef range(i64 1, -9223372036854775807) 8) #76
  br label %.body

bb.fg:                                            ; preds = %bb.eq
  %i.tz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val268 = load i64, ptr %i.t, align 8          ; 2 uses
  %i.ua = icmp eq i64 %.val268, 0
  br i1 %i.ua, label %.body, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %.val269 = load ptr, ptr %.sroa.8.sroa.7.0..sroa_idx, align 8, !nonnull !68, !noundef !68
  %i.ub = shl nuw i64 %.val268, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val269, i64 noundef %i.ub, i64 noundef range(i64 1, -9223372036854775807) 4) #76
  br label %.body

bb.fi:                                            ; preds = %bb.dl
  %i.uc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val256 = load i64, ptr %i.aa, align 8         ; 2 uses
  %i.ud = icmp eq i64 %.val256, 0
  br i1 %i.ud, label %.body, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %.val257 = load ptr, ptr %.sroa.8.8..sroa_idx, align 8, !nonnull !68, !noundef !68
  %i.ue = shl nuw i64 %.val256, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val257, i64 noundef %i.ue, i64 noundef range(i64 1, -9223372036854775807) 8) #76
  br label %.body

bb.fk:                                            ; preds = %._crit_edge599, %bb.dk
  %i.uf = phi ptr [ %.pre600, %._crit_edge599 ], [ %i.pd, %bb.dk ]
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.uf, i64 %.cast550
  store i64 %2, ptr %i.ug, align 8
  %i.uh = add i64 %.cast550, 1
  %.sroa.091.0.copyload = load i64, ptr %i.aa, align 8
  %.sroa.492.0.copyload = load i64, ptr %.sroa.8.8..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids6bitmap6BitmapEBH_.exit320

bb.fl:                                            ; preds = %bb.al
  %i.ui = icmp ult i64 %2, %.sroa.5129.0.copyload
  br i1 %i.ui, label %bb.fu, label %bb.fp

bb.fm:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.sroa.8131.sroa.0.0.copyload, ptr %i.i, align 8
  %.sroa.8131.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %.sroa.8131.sroa.7.0.copyload, ptr %.sroa.8131.sroa.7.0..sroa_idx, align 8
  %.sroa.8131.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 %.sroa.8131.sroa.8.0.copyload, ptr %.sroa.8131.sroa.8.0..sroa_idx, align 8
  %i.uj = icmp ult i64 %2, %.sroa.5129.0.copyload
  br i1 %i.uj, label %bb.gu, label %bb.gr

bb.fn:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %.sroa.5129.0.copyload, ptr %i.p, align 8
  %.sroa.8131.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  store i64 %.sroa.8131.sroa.0.0.copyload, ptr %.sroa.8131.8..sroa_idx, align 8
  %.sroa.8131.sroa.7.0..sroa.8131.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %.sroa.8131.sroa.7.0.copyload, ptr %.sroa.8131.sroa.7.0..sroa.8131.8..sroa_idx.sroa_idx, align 8
  %.cast = ptrtoint ptr %.sroa.8131.sroa.7.0.copyload to i64 ; 3 uses
  %i.uk = icmp eq i64 %.sroa.5129.0.copyload, %.cast
  %i.ul = inttoptr i64 %.sroa.8131.sroa.0.0.copyload to ptr
  br i1 %i.uk, label %bb.fo, label %bb.hn

bb.fo:                                            ; preds = %bb.fn
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %._crit_edge unwind label %bb.hl

._crit_edge:                                      ; preds = %bb.fo
  %.pre = load ptr, ptr %.sroa.8131.8..sroa_idx, align 8, !alias.scope !52687
  br label %bb.hn

bb.fp:                                            ; preds = %bb.fl
  %i.um = sub nuw i64 %2, %.sroa.5129.0.copyload  ; 4 uses
  %i.un = icmp ult i64 %i.um, 65536
  br i1 %i.un, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.uo = icmp ult i64 %i.um, 4294967296
  br i1 %i.uo, label %bb.ft, label %bb.fu

bb.fr:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %.sroa.8131.sroa.0.0.copyload, ptr %i.o, align 8
  %.sroa.7494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store ptr %.sroa.8131.sroa.7.0.copyload, ptr %.sroa.7494.0..sroa_idx, align 8
  %.sroa.9497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 %.sroa.8131.sroa.8.0.copyload, ptr %.sroa.9497.0..sroa_idx, align 8
  %i.up = trunc nuw i64 %i.um to i16
  %i.uq = icmp eq i64 %.sroa.8131.sroa.8.0.copyload, %.sroa.8131.sroa.0.0.copyload
  br i1 %i.uq, label %bb.fs, label %bb.gj

bb.fs:                                            ; preds = %bb.fr
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs1akgR21QTtx_7roaring(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %._crit_edge595 unwind label %bb.gh

._crit_edge595:                                   ; preds = %bb.fs
  %.pre596 = load ptr, ptr %.sroa.7494.0..sroa_idx, align 8, !alias.scope !52688
  br label %bb.gj

bb.ft:                                            ; preds = %bb.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8131.sroa.7.0.copyload) ]
  %i.ur = icmp ult i64 %.sroa.8131.sroa.8.0.copyload, 4611686018427387904
  tail call void @llvm.assume(i1 %i.ur)
  %i.us = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8131.sroa.7.0.copyload, i64 %.sroa.8131.sroa.8.0.copyload
  store ptr %.sroa.8131.sroa.7.0.copyload, ptr %i.m, align 8
  %.sroa.4149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.8131.sroa.7.0.copyload, ptr %.sroa.4149.0..sroa_idx, align 8
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.sroa.8131.sroa.0.0.copyload, ptr %.sroa.5150.0..sroa_idx, align 8
  %.sroa.6151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.us, ptr %.sroa.6151.0..sroa_idx, align 8
  invoke fastcc void @_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoItertENCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB2V_10U64Segment13with_new_highs1_0EE9from_iterB2Z_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.m)
          to label %bb.gc unwind label %bb.gb

bb.fu:                                            ; preds = %bb.fq, %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8131.sroa.7.0.copyload) ]
  %i.ut = icmp ult i64 %.sroa.8131.sroa.8.0.copyload, 4611686018427387904
  tail call void @llvm.assume(i1 %i.ut)
  %.idx549 = shl nuw nsw i64 %.sroa.8131.sroa.8.0.copyload, 1 ; 2 uses
  %i.uu = getelementptr i8, ptr %.sroa.8131.sroa.7.0.copyload, i64 %.idx549 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52689)
  %i.uv = shl i64 %.sroa.8131.sroa.8.0.copyload, 3 ; 4 uses
  %i.uw = icmp samesign ugt i64 %.sroa.8131.sroa.8.0.copyload, 2305843009213693951
  %.not.i.i.i379 = icmp ugt i64 %i.uv, 9223372036854775800
  %or.cond.i.i.i380 = or i1 %i.uw, %.not.i.i.i379
  br i1 %or.cond.i.i.i380, label %bb.fx, label %bb.fv, !prof !69

bb.fv:                                            ; preds = %bb.fu
  %i.ux = icmp eq i64 %i.uv, 0
  br i1 %i.ux, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i381, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !52690
  %i.uy = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.uv, i64 noundef range(i64 1, 9) 8) #76, !noalias !52690 ; 2 uses
  %i.uz = icmp eq ptr %i.uy, null
  br i1 %i.uz, label %bb.fx, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i381

bb.fx:                                            ; preds = %bb.fw, %bb.fu
  %.sroa.4.0.ph.i.i396 = phi i64 [ 8, %bb.fw ], [ 0, %bb.fu ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i396, i64 %i.uv) #80
          to label %.noexc.i399 unwind label %bb.fz, !noalias !52691

.noexc.i399:                                      ; preds = %bb.fx
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i381: ; preds = %bb.fw, %bb.fv
  %.sroa.10.0.i.i382 = phi ptr [ inttoptr (i64 8 to ptr), %bb.fv ], [ %i.uy, %bb.fw ] ; 6 uses
  %.sroa.4.0.i.i383 = phi i64 [ 0, %bb.fv ], [ %.sroa.8131.sroa.8.0.copyload, %bb.fw ] ; 3 uses
  %i.va = icmp samesign ule i64 %.sroa.8131.sroa.8.0.copyload, %.sroa.4.0.i.i383
  tail call void @llvm.assume(i1 %i.va)
  %.not.not12.i.i.i.i.i.i389 = icmp eq i64 %.sroa.8131.sroa.8.0.copyload, 0
  br i1 %.not.not12.i.i.i.i.i.i389, label %._crit_edge.i.i.i.i.i.i392, label %.lr.ph.i.i.i.i.i.i390.preheader

.lr.ph.i.i.i.i.i.i390.preheader:                  ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i381
  %i.vb = add nsw i64 %.idx549, -2                ; 2 uses
  %i.vc = lshr exact i64 %i.vb, 1
  %i.vd = add nuw i64 %i.vc, 1                    ; 2 uses
  %min.iters.check706 = icmp ult i64 %i.vb, 26
  br i1 %min.iters.check706, label %.lr.ph.i.i.i.i.i.i390.preheader817, label %vector.memcheck700

vector.memcheck700:                               ; preds = %.lr.ph.i.i.i.i.i.i390.preheader
  %i.ve = shl nuw i64 %.sroa.8131.sroa.8.0.copyload, 3
  %scevgep701 = getelementptr i8, ptr %.sroa.10.0.i.i382, i64 %i.ve
  %bound0702 = icmp ult ptr %.sroa.10.0.i.i382, %i.uu
  %bound1703 = icmp ult ptr %.sroa.8131.sroa.7.0.copyload, %scevgep701
  %found.conflict704 = and i1 %bound0702, %bound1703
  br i1 %found.conflict704, label %.lr.ph.i.i.i.i.i.i390.preheader817, label %vector.ph707

vector.ph707:                                     ; preds = %vector.memcheck700
  %n.vec708 = and i64 %i.vd, -4                   ; 5 uses
  %i.vf = shl i64 %n.vec708, 1
  %i.vg = getelementptr i8, ptr %.sroa.8131.sroa.7.0.copyload, i64 %i.vf
  %broadcast.splatinsert709 = insertelement <2 x i64> poison, i64 %.sroa.5129.0.copyload, i64 0
  %broadcast.splat710 = shufflevector <2 x i64> %broadcast.splatinsert709, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body711

vector.body711:                                   ; preds = %vector.body711, %vector.ph707
  %index712 = phi i64 [ 0, %vector.ph707 ], [ %index.next716, %vector.body711 ] ; 3 uses
  %i.vh = shl i64 %index712, 1
  %next.gep713 = getelementptr i8, ptr %.sroa.8131.sroa.7.0.copyload, i64 %i.vh ; 2 uses
  %i.vi = getelementptr i8, ptr %next.gep713, i64 4
  %wide.load714 = load <2 x i16>, ptr %next.gep713, align 2, !alias.scope !52692, !noalias !52693
  %wide.load715 = load <2 x i16>, ptr %i.vi, align 2, !alias.scope !52692, !noalias !52693
  %i.vj = zext <2 x i16> %wide.load714 to <2 x i64>
  %i.vk = zext <2 x i16> %wide.load715 to <2 x i64>
  %i.vl = add <2 x i64> %broadcast.splat710, %i.vj
  %i.vm = add <2 x i64> %broadcast.splat710, %i.vk
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i382, i64 %index712 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  store <2 x i64> %i.vl, ptr %i.vn, align 8, !alias.scope !52694, !noalias !52695
  store <2 x i64> %i.vm, ptr %i.vo, align 8, !alias.scope !52694, !noalias !52695
  %index.next716 = add nuw i64 %index712, 4       ; 2 uses
  %i.vp = icmp eq i64 %index.next716, %n.vec708
  br i1 %i.vp, label %middle.block717, label %vector.body711, !llvm.loop !52532

middle.block717:                                  ; preds = %vector.body711
  %cmp.n718 = icmp eq i64 %i.vd, %n.vec708
  br i1 %cmp.n718, label %._crit_edge.i.i.i.i.i.i392, label %.lr.ph.i.i.i.i.i.i390.preheader817

.lr.ph.i.i.i.i.i.i390.preheader817:               ; preds = %vector.memcheck700, %.lr.ph.i.i.i.i.i.i390.preheader, %middle.block717
  %.ph818 = phi i64 [ 0, %vector.memcheck700 ], [ 0, %.lr.ph.i.i.i.i.i.i390.preheader ], [ %n.vec708, %middle.block717 ]
  %.ph819 = phi ptr [ %.sroa.8131.sroa.7.0.copyload, %vector.memcheck700 ], [ %.sroa.8131.sroa.7.0.copyload, %.lr.ph.i.i.i.i.i.i390.preheader ], [ %i.vg, %middle.block717 ]
  br label %.lr.ph.i.i.i.i.i.i390

.lr.ph.i.i.i.i.i.i390:                            ; preds = %.lr.ph.i.i.i.i.i.i390.preheader817, %.lr.ph.i.i.i.i.i.i390
  %i.vq = phi i64 [ %i.vx, %.lr.ph.i.i.i.i.i.i390 ], [ %.ph818, %.lr.ph.i.i.i.i.i.i390.preheader817 ] ; 2 uses
  %i.vr = phi ptr [ %i.vt, %.lr.ph.i.i.i.i.i.i390 ], [ %.ph819, %.lr.ph.i.i.i.i.i.i390.preheader817 ] ; 2 uses
  %i.vs = load i16, ptr %i.vr, align 2, !noalias !52693, !noundef !68
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vr, i64 2 ; 2 uses
  %i.vu = zext i16 %i.vs to i64
  %i.vv = add i64 %.sroa.5129.0.copyload, %i.vu
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i382, i64 %i.vq
  store i64 %i.vv, ptr %i.vw, align 8, !noalias !52696
  %i.vx = add nuw i64 %i.vq, 1                    ; 2 uses
  %.not.not.i.i.i.i.i.i391 = icmp eq ptr %i.vt, %i.uu
  br i1 %.not.not.i.i.i.i.i.i391, label %._crit_edge.i.i.i.i.i.i392, label %.lr.ph.i.i.i.i.i.i390, !llvm.loop !52533

._crit_edge.i.i.i.i.i.i392:                       ; preds = %.lr.ph.i.i.i.i.i.i390, %middle.block717, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i381
  %.sroa.42.0.i.i.i.i.i393 = phi i64 [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i381 ], [ %n.vec708, %middle.block717 ], [ %i.vx, %.lr.ph.i.i.i.i.i.i390 ] ; 4 uses
  %i.vy = icmp eq i64 %.sroa.8131.sroa.0.0.copyload, 0
  br i1 %i.vy, label %bb.gk, label %bb.fy

bb.fy:                                            ; preds = %._crit_edge.i.i.i.i.i.i392
  %i.vz = shl nuw i64 %.sroa.8131.sroa.0.0.copyload, 1
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8131.sroa.7.0.copyload, i64 noundef %i.vz, i64 noundef range(i64 1, -9223372036854775807) 2) #76, !noalias !52693
  br label %bb.gk

bb.fz:                                            ; preds = %bb.fx
  %i.wa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wb = icmp eq i64 %.sroa.8131.sroa.0.0.copyload, 0
  br i1 %i.wb, label %.body, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.wc = shl nuw i64 %.sroa.8131.sroa.0.0.copyload, 1
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8131.sroa.7.0.copyload, i64 noundef %i.wc, i64 noundef range(i64 1, -9223372036854775807) 2) #76, !noalias !52697
  br label %.body

bb.gb:                                            ; preds = %bb.ft
  %i.wd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.gc:                                            ; preds = %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.we = trunc nuw i64 %i.um to i32
  %i.wf = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.wg = load i64, ptr %i.wf, align 8, !alias.scope !52698, !noundef !68 ; 3 uses
  %i.wh = load i64, ptr %i.n, align 8, !range !72, !alias.scope !52698, !noundef !68
  %i.wi = icmp eq i64 %i.wg, %i.wh
  br i1 %i.wi, label %bb.gd, label %bb.gg

bb.gd:                                            ; preds = %bb.gc
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs1akgR21QTtx_7roaring(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.gg unwind label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.wj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val266 = load i64, ptr %i.n, align 8          ; 2 uses
  %i.wk = icmp eq i64 %.val266, 0
  br i1 %i.wk, label %.body, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.wl = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val267 = load ptr, ptr %i.wl, align 8, !nonnull !68, !noundef !68
  %i.wm = shl nuw i64 %.val266, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val267, i64 noundef %i.wm, i64 noundef range(i64 1, -9223372036854775807) 4) #76
  br label %.body

bb.gg:                                            ; preds = %bb.gc, %bb.gd
  %i.wn = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.wo = load ptr, ptr %i.wn, align 8, !alias.scope !52698, !nonnull !68, !noundef !68
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.wo, i64 %i.wg
  store i32 %i.we, ptr %i.wp, align 4
  %i.wq = add i64 %i.wg, 1
  store i64 %i.wq, ptr %i.wf, align 8, !alias.scope !52698
  %.sroa.4153.sroa.5.0..sroa.4153.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4153.sroa.5.0..sroa.4153.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.wr, align 8
  %.sroa.4153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.4153.0..sroa_idx, align 8
  %.sroa.4153.sroa.4.0..sroa.4153.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5129.0.copyload, ptr %.sroa.4153.sroa.4.0..sroa.4153.0..sroa_idx.sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit

bb.gh:                                            ; preds = %bb.fs
  %i.ws = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load i64, ptr %i.o, align 8             ; 2 uses
  %i.wt = icmp eq i64 %.val, 0
  br i1 %i.wt, label %.body, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %.val247 = load ptr, ptr %.sroa.7494.0..sroa_idx, align 8, !nonnull !68, !noundef !68
  %i.wu = shl nuw i64 %.val, 1
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val247, i64 noundef %i.wu, i64 noundef range(i64 1, -9223372036854775807) 2) #76
  br label %.body

bb.gj:                                            ; preds = %._crit_edge595, %bb.fr
  %i.wv = phi ptr [ %.pre596, %._crit_edge595 ], [ %.sroa.8131.sroa.7.0.copyload, %bb.fr ]
  %i.ww = getelementptr inbounds nuw [2 x i8], ptr %i.wv, i64 %.sroa.8131.sroa.8.0.copyload
  store i16 %i.up, ptr %i.ww, align 2
  %i.wx = add i64 %.sroa.8131.sroa.8.0.copyload, 1
  store i64 %i.wx, ptr %.sroa.9497.0..sroa_idx, align 8, !alias.scope !52688
  %.sroa.4143.sroa.5.0..sroa.4143.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4143.sroa.5.0..sroa.4143.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.wy, align 8
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.4143.0..sroa_idx, align 8
  %.sroa.4143.sroa.4.0..sroa.4143.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5129.0.copyload, ptr %.sroa.4143.sroa.4.0..sroa.4143.0..sroa_idx.sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit

bb.gk:                                            ; preds = %bb.fy, %._crit_edge.i.i.i.i.i.i392
  store i64 %.sroa.4.0.i.i383, ptr %i.l, align 8, !alias.scope !52689, !noalias !52699
  %.sroa.4.0..sroa_idx.i394 = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i382, ptr %.sroa.4.0..sroa_idx.i394, align 8, !alias.scope !52689, !noalias !52699
  %.sroa.6.0..sroa_idx14.i395 = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 %.sroa.42.0.i.i.i.i.i393, ptr %.sroa.6.0..sroa_idx14.i395, align 8, !alias.scope !52689, !noalias !52699
  %i.wz = load i64, ptr %i.ak, align 8, !noundef !68
  %i.xa = icmp eq i64 %.sroa.42.0.i.i.i.i.i393, %.sroa.4.0.i.i383
  br i1 %i.xa, label %bb.gl, label %bb.gn

bb.gl:                                            ; preds = %bb.gk
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %._crit_edge597 unwind label %bb.gp

._crit_edge597:                                   ; preds = %bb.gl
  %.pre598 = load ptr, ptr %.sroa.4.0..sroa_idx.i394, align 8, !alias.scope !52700
  br label %bb.gn

bb.gm:                                            ; preds = %bb.gn
  %i.xb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.gn:                                            ; preds = %._crit_edge597, %bb.gk
  %i.xc = phi ptr [ %.pre598, %._crit_edge597 ], [ %.sroa.10.0.i.i382, %bb.gk ]
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %.sroa.42.0.i.i.i.i.i393
  store i64 %i.wz, ptr %i.xd, align 8
  %i.xe = add i64 %.sroa.42.0.i.i.i.i.i393, 1
  store i64 %i.xe, ptr %.sroa.6.0..sroa_idx14.i395, align 8, !alias.scope !52700
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  invoke void @_RNvXs_NtNtCs9KQ7US1M400_11lance_table6rowids13encoded_arrayNtB4_15EncodedU64ArrayINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecyEE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.go unwind label %bb.gm

bb.go:                                            ; preds = %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.17.8.copyload12 = load i64, ptr %i.k, align 8
  %.sroa.26.8..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.26.8.copyload27 = load i64, ptr %.sroa.26.8..sroa_idx26, align 8
  %.sroa.28.8..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.28.sroa.0.0.copyload68 = load i64, ptr %.sroa.28.8..sroa_idx39, align 8
  %.sroa.28.sroa.15.0..sroa.28.8..sroa_idx39.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.28.sroa.15.0.copyload77 = load i64, ptr %.sroa.28.sroa.15.0..sroa.28.8..sroa_idx39.sroa_idx, align 8
  %.sroa.2843.8..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.2843.8.copyload49 = load i64, ptr %.sroa.2843.8..sroa_idx48, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids6bitmap6BitmapEBH_.exit320

bb.gp:                                            ; preds = %bb.gl
  %i.xf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val254 = load i64, ptr %i.l, align 8          ; 2 uses
  %i.xg = icmp eq i64 %.val254, 0
  br i1 %i.xg, label %.body, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %.val255 = load ptr, ptr %.sroa.4.0..sroa_idx.i394, align 8, !nonnull !68, !noundef !68
  %i.xh = shl nuw i64 %.val254, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val255, i64 noundef %i.xh, i64 noundef range(i64 1, -9223372036854775807) 8) #76
  br label %.body

bb.gr:                                            ; preds = %bb.fm
  %i.xi = sub nuw i64 %2, %.sroa.5129.0.copyload  ; 2 uses
  %i.xj = icmp ult i64 %i.xi, 4294967296
  br i1 %i.xj, label %bb.gs, label %bb.gu

bb.gs:                                            ; preds = %bb.gr
  %i.xk = trunc nuw i64 %i.xi to i32
  %i.xl = icmp eq i64 %.sroa.8131.sroa.8.0.copyload, %.sroa.8131.sroa.0.0.copyload
  br i1 %i.xl, label %bb.gt, label %bb.hb

bb.gt:                                            ; preds = %bb.gs
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs1akgR21QTtx_7roaring(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %._crit_edge591 unwind label %bb.hj

._crit_edge591:                                   ; preds = %bb.gt
  %.pre592 = load ptr, ptr %.sroa.8131.sroa.7.0..sroa_idx, align 8, !alias.scope !52701
  br label %bb.hb

bb.gu:                                            ; preds = %bb.gr, %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.xm = icmp ult i64 %.sroa.8131.sroa.8.0.copyload, 2305843009213693952
  tail call void @llvm.assume(i1 %i.xm)
  %.idx = shl nuw nsw i64 %.sroa.8131.sroa.8.0.copyload, 2 ; 2 uses
  %i.xn = getelementptr i8, ptr %.sroa.8131.sroa.7.0.copyload, i64 %.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52702)
  %i.xo = shl nuw i64 %.sroa.8131.sroa.8.0.copyload, 3 ; 2 uses
  %.not.i.i.i413 = icmp samesign ugt i64 %.sroa.8131.sroa.8.0.copyload, 1152921504606846975
  br i1 %.not.i.i.i413, label %bb.gx, label %bb.gv, !prof !69

bb.gv:                                            ; preds = %bb.gu
  %i.xp = icmp eq i64 %.sroa.8131.sroa.8.0.copyload, 0
  br i1 %i.xp, label %._crit_edge.i.i.i.i.i.i426, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !52703
  %i.xq = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.xo, i64 noundef range(i64 1, 9) 8) #76, !noalias !52703 ; 7 uses
  %i.xr = icmp eq ptr %i.xq, null
  br i1 %i.xr, label %bb.gx, label %.lr.ph.i.i.i.i.i.i424.preheader

bb.gx:                                            ; preds = %bb.gw, %bb.gu
  %.sroa.4.0.ph.i.i430 = phi i64 [ 8, %bb.gw ], [ 0, %bb.gu ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i430, i64 %i.xo) #80
          to label %.noexc.i433 unwind label %bb.gz, !noalias !52704

.noexc.i433:                                      ; preds = %bb.gx
  unreachable

.lr.ph.i.i.i.i.i.i424.preheader:                  ; preds = %bb.gw
  %i.xs = add nsw i64 %.idx, -4                   ; 2 uses
  %i.xt = lshr exact i64 %i.xs, 2
  %i.xu = add nuw nsw i64 %i.xt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.xs, 52
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i424.preheader821, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i424.preheader
  %i.xv = shl nuw nsw i64 %.sroa.8131.sroa.8.0.copyload, 3
  %scevgep = getelementptr i8, ptr %i.xq, i64 %i.xv
  %bound0 = icmp ult ptr %i.xq, %i.xn
  %bound1 = icmp ult ptr %.sroa.8131.sroa.7.0.copyload, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i424.preheader821, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.xu, 9223372036854775804     ; 5 uses
  %i.xw = shl i64 %n.vec, 2
  %i.xx = getelementptr i8, ptr %.sroa.8131.sroa.7.0.copyload, i64 %i.xw
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.5129.0.copyload, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.xy = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.8131.sroa.7.0.copyload, i64 %i.xy ; 2 uses
  %i.xz = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !52705, !noalias !52706
  %wide.load698 = load <2 x i32>, ptr %i.xz, align 4, !alias.scope !52705, !noalias !52706
  %i.ya = zext <2 x i32> %wide.load to <2 x i64>
  %i.yb = zext <2 x i32> %wide.load698 to <2 x i64>
  %i.yc = add <2 x i64> %broadcast.splat, %i.ya
  %i.yd = add <2 x i64> %broadcast.splat, %i.yb
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %index ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  store <2 x i64> %i.yc, ptr %i.ye, align 8, !alias.scope !52707, !noalias !52708
  store <2 x i64> %i.yd, ptr %i.yf, align 8, !alias.scope !52707, !noalias !52708
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.yg = icmp eq i64 %index.next, %n.vec
  br i1 %i.yg, label %middle.block, label %vector.body, !llvm.loop !52571

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.xu, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i426, label %.lr.ph.i.i.i.i.i.i424.preheader821

.lr.ph.i.i.i.i.i.i424.preheader821:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i424.preheader, %middle.block
  %.ph822 = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i424.preheader ], [ %n.vec, %middle.block ]
  %.ph823 = phi ptr [ %.sroa.8131.sroa.7.0.copyload, %vector.memcheck ], [ %.sroa.8131.sroa.7.0.copyload, %.lr.ph.i.i.i.i.i.i424.preheader ], [ %i.xx, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i424

.lr.ph.i.i.i.i.i.i424:                            ; preds = %.lr.ph.i.i.i.i.i.i424.preheader821, %.lr.ph.i.i.i.i.i.i424
  %i.yh = phi i64 [ %i.yo, %.lr.ph.i.i.i.i.i.i424 ], [ %.ph822, %.lr.ph.i.i.i.i.i.i424.preheader821 ] ; 2 uses
  %i.yi = phi ptr [ %i.yk, %.lr.ph.i.i.i.i.i.i424 ], [ %.ph823, %.lr.ph.i.i.i.i.i.i424.preheader821 ] ; 2 uses
  %i.yj = load i32, ptr %i.yi, align 4, !noalias !52706, !noundef !68
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yi, i64 4 ; 2 uses
  %i.yl = zext i32 %i.yj to i64
  %i.ym = add i64 %.sroa.5129.0.copyload, %i.yl
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %i.yh
  store i64 %i.ym, ptr %i.yn, align 8, !noalias !52709
  %i.yo = add nuw nsw i64 %i.yh, 1                ; 2 uses
  %.not.not.i.i.i.i.i.i425 = icmp eq ptr %i.yk, %i.xn
  br i1 %.not.not.i.i.i.i.i.i425, label %._crit_edge.i.i.i.i.i.i426, label %.lr.ph.i.i.i.i.i.i424, !llvm.loop !52572

._crit_edge.i.i.i.i.i.i426:                       ; preds = %.lr.ph.i.i.i.i.i.i424, %middle.block, %bb.gv
  %.sroa.4.0.i.i417663 = phi i64 [ 0, %bb.gv ], [ %.sroa.8131.sroa.8.0.copyload, %middle.block ], [ %.sroa.8131.sroa.8.0.copyload, %.lr.ph.i.i.i.i.i.i424 ] ; 2 uses
  %.sroa.10.0.i.i416662 = phi ptr [ inttoptr (i64 8 to ptr), %bb.gv ], [ %i.xq, %middle.block ], [ %i.xq, %.lr.ph.i.i.i.i.i.i424 ] ; 2 uses
  %.sroa.42.0.i.i.i.i.i427 = phi i64 [ 0, %bb.gv ], [ %n.vec, %middle.block ], [ %i.yo, %.lr.ph.i.i.i.i.i.i424 ] ; 4 uses
  %i.yp = icmp eq i64 %.sroa.8131.sroa.0.0.copyload, 0
  br i1 %i.yp, label %bb.hc, label %bb.gy

bb.gy:                                            ; preds = %._crit_edge.i.i.i.i.i.i426
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8131.sroa.7.0.copyload) ]
  %i.yq = shl nuw i64 %.sroa.8131.sroa.0.0.copyload, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8131.sroa.7.0.copyload, i64 noundef %i.yq, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !52706
  br label %bb.hc

bb.gz:                                            ; preds = %bb.gx
  %i.yr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ys = icmp eq i64 %.sroa.8131.sroa.0.0.copyload, 0
  br i1 %i.ys, label %.body, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.yt = shl nuw i64 %.sroa.8131.sroa.0.0.copyload, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8131.sroa.7.0.copyload, i64 noundef %i.yt, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !52710
  br label %.body

bb.hb:                                            ; preds = %._crit_edge591, %bb.gs
  %i.yu = phi ptr [ %.pre592, %._crit_edge591 ], [ %.sroa.8131.sroa.7.0.copyload, %bb.gs ]
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.yu, i64 %.sroa.8131.sroa.8.0.copyload
  store i32 %i.xk, ptr %i.yv, align 4
  %i.yw = add i64 %.sroa.8131.sroa.8.0.copyload, 1
  store i64 %i.yw, ptr %.sroa.8131.sroa.8.0..sroa_idx, align 8, !alias.scope !52701
  %.sroa.4165.sroa.5.0..sroa.4165.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4165.sroa.5.0..sroa.4165.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.yx, align 8
  %.sroa.4165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.4165.0..sroa_idx, align 8
  %.sroa.4165.sroa.4.0..sroa.4165.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5129.0.copyload, ptr %.sroa.4165.sroa.4.0..sroa.4165.0..sroa_idx.sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids13encoded_array15EncodedU64ArrayEBH_.exit

bb.hc:                                            ; preds = %bb.gy, %._crit_edge.i.i.i.i.i.i426
  store i64 %.sroa.4.0.i.i417663, ptr %i.h, align 8, !alias.scope !52702, !noalias !52711
  %.sroa.4.0..sroa_idx.i428 = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i416662, ptr %.sroa.4.0..sroa_idx.i428, align 8, !alias.scope !52702, !noalias !52711
  %.sroa.6.0..sroa_idx14.i429 = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 %.sroa.42.0.i.i.i.i.i427, ptr %.sroa.6.0..sroa_idx14.i429, align 8, !alias.scope !52702, !noalias !52711
  %i.yy = load i64, ptr %i.ak, align 8, !noundef !68
  %i.yz = icmp eq i64 %.sroa.42.0.i.i.i.i.i427, %.sroa.4.0.i.i417663
  br i1 %i.yz, label %bb.hd, label %bb.hf

bb.hd:                                            ; preds = %bb.hc
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %._crit_edge593 unwind label %bb.hh

._crit_edge593:                                   ; preds = %bb.hd
  %.pre594 = load ptr, ptr %.sroa.4.0..sroa_idx.i428, align 8, !alias.scope !52712
  br label %bb.hf

bb.he:                                            ; preds = %bb.hf
  %i.za = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.hf:                                            ; preds = %._crit_edge593, %bb.hc
  %i.zb = phi ptr [ %.pre594, %._crit_edge593 ], [ %.sroa.10.0.i.i416662, %bb.hc ]
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %i.zb, i64 %.sroa.42.0.i.i.i.i.i427
  store i64 %i.yy, ptr %i.zc, align 8
  %i.zd = add i64 %.sroa.42.0.i.i.i.i.i427, 1
  store i64 %i.zd, ptr %.sroa.6.0..sroa_idx14.i429, align 8, !alias.scope !52712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  invoke void @_RNvXs_NtNtCs9KQ7US1M400_11lance_table6rowids13encoded_arrayNtB4_15EncodedU64ArrayINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecyEE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.hg unwind label %bb.he

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.17.8.copyload13 = load i64, ptr %i.g, align 8
  %.sroa.26.8..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.26.8.copyload29 = load i64, ptr %.sroa.26.8..sroa_idx28, align 8
  %.sroa.28.8..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.28.sroa.0.0.copyload69 = load i64, ptr %.sroa.28.8..sroa_idx40, align 8
  %.sroa.28.sroa.15.0..sroa.28.8..sroa_idx40.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.28.sroa.15.0.copyload78 = load i64, ptr %.sroa.28.sroa.15.0..sroa.28.8..sroa_idx40.sroa_idx, align 8
  %.sroa.2843.8..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.2843.8.copyload51 = load i64, ptr %.sroa.2843.8..sroa_idx50, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids6bitmap6BitmapEBH_.exit320

bb.hh:                                            ; preds = %bb.hd
  %i.ze = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val252 = load i64, ptr %i.h, align 8          ; 2 uses
  %i.zf = icmp eq i64 %.val252, 0
  br i1 %i.zf, label %.body, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %.val253 = load ptr, ptr %.sroa.4.0..sroa_idx.i428, align 8, !nonnull !68, !noundef !68
  %i.zg = shl nuw i64 %.val252, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val253, i64 noundef %i.zg, i64 noundef range(i64 1, -9223372036854775807) 8) #76
  br label %.body

bb.hj:                                            ; preds = %bb.gt
  %i.zh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val264 = load i64, ptr %i.i, align 8          ; 2 uses
  %i.zi = icmp eq i64 %.val264, 0
  br i1 %i.zi, label %.body, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %.val265 = load ptr, ptr %.sroa.8131.sroa.7.0..sroa_idx, align 8, !nonnull !68, !noundef !68
  %i.zj = shl nuw i64 %.val264, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val265, i64 noundef %i.zj, i64 noundef range(i64 1, -9223372036854775807) 4) #76
  br label %.body

bb.hl:                                            ; preds = %bb.fo
  %i.zk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val250 = load i64, ptr %i.p, align 8          ; 2 uses
  %i.zl = icmp eq i64 %.val250, 0
  br i1 %i.zl, label %.body, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %.val251 = load ptr, ptr %.sroa.8131.8..sroa_idx, align 8, !nonnull !68, !noundef !68
  %i.zm = shl nuw i64 %.val250, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val251, i64 noundef %i.zm, i64 noundef range(i64 1, -9223372036854775807) 8) #76
  br label %.body

bb.hn:                                            ; preds = %._crit_edge, %bb.fn
  %i.zn = phi ptr [ %.pre, %._crit_edge ], [ %i.ul, %bb.fn ]
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %i.zn, i64 %.cast
  store i64 %2, ptr %i.zo, align 8
  %i.zp = add i64 %.cast, 1
  %.sroa.0137.0.copyload = load i64, ptr %i.p, align 8
  %.sroa.4138.0.copyload = load i64, ptr %.sroa.8131.8..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids6bitmap6BitmapEBH_.exit320

bb.ho:                                            ; preds = %.body
  br i1 %.sroa.0177.0, label %bb.hw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids6bitmap6BitmapEBH_.exit441

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids6bitmap6BitmapEBH_.exit441: ; preds = %bb.hw, %bb.hs, %bb.hv, %bb.hu, %bb.ht, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %.body
end_hunk_1
begin_hunk_2_@_RNvNtNtCs9KQ7US1M400_11lance_table6format7overlay27verify_overlays_newest_last:bb.a
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.57.0.copyload.i, ptr %.sroa.6.0..sroa_idx4.i, align 8, !noalias !65217
  store i8 0, ptr %0, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @26, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @1281, ptr %.sroa.617.0..sroa_idx, align 8
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs9KQ7US1M400_11lance_table6format8manifest24compute_fragment_offsets(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 38430716820228233) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %.idx = mul nuw nsw i64 %2, 240
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !65254
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4scanINtB5_4ScanINtNtB7_5chain5ChainINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvNtB22_8manifest24compute_fragment_offsets0EINtNtNtBb_5array4iter8IntoIterjKj1_EEjNCB2X_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 3 uses
  %i.e = load i64, ptr %1, align 8, !range !76, !alias.scope !65255, !noalias !65256, !noundef !68
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !65255, !noalias !65256 ; 2 uses
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !97, !alias.scope !65255, !noalias !65256, !noundef !68
  switch i64 %i.j, label %bb.e [
    i64 -1, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4scanINtB5_4ScanINtNtB7_5chain5ChainINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvNtB22_8manifest24compute_fragment_offsets0EINtNtNtBb_5array4iter8IntoIterjKj1_EEjNCB2X_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit.i
    i64 0, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4scanINtB5_4ScanINtNtB7_5chain5ChainINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvNtB22_8manifest24compute_fragment_offsets0EINtNtNtBb_5array4iter8IntoIterjKj1_EEjNCB2X_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !65255, !noalias !65256, !noundef !68
  %i.m = sub i64 %i.g, %i.l
  br label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4scanINtB5_4ScanINtNtB7_5chain5ChainINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvNtB22_8manifest24compute_fragment_offsets0EINtNtNtBb_5array4iter8IntoIterjKj1_EEjNCB2X_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4scanINtB5_4ScanINtNtB7_5chain5ChainINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvNtB22_8manifest24compute_fragment_offsets0EINtNtNtBb_5array4iter8IntoIterjKj1_EEjNCB2X_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit.i: ; preds = %bb.a, %bb.e, %bb.d, %bb.c
  %.sroa.5.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.c ], [ 1, %bb.a ]
  %i.n = phi ptr [ %i.d, %bb.d ], [ %i.d, %bb.e ], [ %i.d, %bb.c ], [ null, %bb.a ]
  %.pn3.i.i.ph.i.i = phi i64 [ 0, %bb.d ], [ %i.m, %bb.e ], [ %i.g, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !65257
  %i.o = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, 9) 8) #76, !noalias !65257 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4scanINtB5_4ScanINtNtB7_5chain5ChainINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvNtB22_8manifest24compute_fragment_offsets0EINtNtNtBb_5array4iter8IntoIterjKj1_EEjNCB2X_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit.i
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 32) #80, !noalias !65254
  unreachable

bb.f:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4scanINtB5_4ScanINtNtB7_5chain5ChainINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvNtB22_8manifest24compute_fragment_offsets0EINtNtNtBb_5array4iter8IntoIterjKj1_EEjNCB2X_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit.i
  store i64 0, ptr %i.o, align 8, !noalias !65254
  store i64 4, ptr %i.a, align 8, !noalias !65254
  %.sroa.4.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i2, align 8, !noalias !65254
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !65254
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65259)
  br label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.f, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCs9KQ7US1M400_11lance_table.exit.us.i.i.i
  %i.q = phi ptr [ %i.am, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCs9KQ7US1M400_11lance_table.exit.us.i.i.i ], [ %i.o, %bb.f ]
  %i.r = phi i64 [ %i.ao, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCs9KQ7US1M400_11lance_table.exit.us.i.i.i ], [ 1, %bb.f ] ; 5 uses
  %i.s = phi i64 [ %i.ai, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCs9KQ7US1M400_11lance_table.exit.us.i.i.i ], [ %.pn3.i.i.ph.i.i, %bb.f ] ; 2 uses
  %i.t = phi i64 [ %i.ag, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCs9KQ7US1M400_11lance_table.exit.us.i.i.i ], [ %.sroa.5.0, %bb.f ] ; 4 uses
  %i.u = phi ptr [ %i.ah, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCs9KQ7US1M400_11lance_table.exit.us.i.i.i ], [ %i.n, %bb.f ] ; 7 uses
  %.not.i.i.i.us.i.i.i = icmp eq ptr %i.u, null
  %i.v = icmp eq ptr %i.u, %i.b
  %or.cond.i.i = select i1 %.not.i.i.i.us.i.i.i, i1 true, i1 %i.v
  br i1 %or.cond.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %.split.us.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 240 ; 3 uses
  %i.x = load i64, ptr %i.u, align 8, !range !76, !alias.scope !65260, !noalias !65261, !noundef !68
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !65260, !noalias !65261 ; 2 uses
  %i.aa = trunc nuw i64 %i.x to i1
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !97, !alias.scope !65260, !noalias !65261, !noundef !68
  switch i64 %i.ac, label %bb.j [
    i64 -1, label %bb.l
    i64 0, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !65260, !noalias !65261, !noundef !68
  %i.af = sub i64 %i.z, %i.ae
  br label %bb.l

bb.k:                                             ; preds = %.split.us.i.i.i
  %.not.i.i.i.i.i.i.us.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i.i.i.us.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4scan4ScanINtNtB1z_5chain5ChainINtNtB1z_3map3MapINtNtNtB1D_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvNtB3r_8manifest24compute_fragment_offsets0EINtNtNtB1D_5array4iter8IntoIterjKj1_EEjNCB4m_s_0EE9from_iterB3t_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.ag = phi i64 [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ], [ 1, %bb.k ]
  %i.ah = phi ptr [ %i.w, %bb.h ], [ %i.w, %bb.i ], [ %i.w, %bb.j ], [ null, %bb.k ]
  %.pn3.i.i.ph.i.us.i.i.i = phi i64 [ %i.z, %bb.h ], [ 0, %bb.i ], [ %i.af, %bb.j ], [ 0, %bb.k ]
  %i.ai = add i64 %.pn3.i.i.ph.i.us.i.i.i, %i.s
  %i.aj = icmp samesign ult i64 %i.r, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = load i64, ptr %i.a, align 8, !range !72, !alias.scope !65262, !noalias !65263, !noundef !68
  %i.al = icmp eq i64 %i.r, %i.ak
  br i1 %i.al, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4scanINtB5_4ScanINtNtB7_5chain5ChainINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvNtB22_8manifest24compute_fragment_offsets0EINtNtNtBb_5array4iter8IntoIterjKj1_EEjNCB2X_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit.us.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCs9KQ7US1M400_11lance_table.exit.us.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4scanINtB5_4ScanINtNtB7_5chain5ChainINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvNtB22_8manifest24compute_fragment_offsets0EINtNtNtBb_5array4iter8IntoIterjKj1_EEjNCB2X_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit.us.i.i.i: ; preds = %bb.l
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.r, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 8)
          to label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4scanINtB5_4ScanINtNtB7_5chain5ChainINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvNtB22_8manifest24compute_fragment_offsets0EINtNtNtBb_5array4iter8IntoIterjKj1_EEjNCB2X_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit.us.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCs9KQ7US1M400_11lance_table.exit.us.i.i_crit_edge.i unwind label %.loopexit.i, !noalias !65254

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4scanINtB5_4ScanINtNtB7_5chain5ChainINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvNtB22_8manifest24compute_fragment_offsets0EINtNtNtBb_5array4iter8IntoIterjKj1_EEjNCB2X_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit.us.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCs9KQ7US1M400_11lance_table.exit.us.i.i_crit_edge.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4scanINtB5_4ScanINtNtB7_5chain5ChainINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvNtB22_8manifest24compute_fragment_offsets0EINtNtNtBb_5array4iter8IntoIterjKj1_EEjNCB2X_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit.us.i.i.i
  %.pre28.i = load ptr, ptr %.sroa.4.0..sroa_idx.i2, align 8, !alias.scope !65262, !noalias !65263
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCs9KQ7US1M400_11lance_table.exit.us.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCs9KQ7US1M400_11lance_table.exit.us.i.i.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4scanINtB5_4ScanINtNtB7_5chain5ChainINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvNtB22_8manifest24compute_fragment_offsets0EINtNtNtBb_5array4iter8IntoIterjKj1_EEjNCB2X_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit.us.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCs9KQ7US1M400_11lance_table.exit.us.i.i_crit_edge.i, %bb.l
  %i.am = phi ptr [ %.pre28.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4scanINtB5_4ScanINtNtB7_5chain5ChainINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvNtB22_8manifest24compute_fragment_offsets0EINtNtNtBb_5array4iter8IntoIterjKj1_EEjNCB2X_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit.us.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCs9KQ7US1M400_11lance_table.exit.us.i.i_crit_edge.i ], [ %i.q, %bb.l ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.r
  store i64 %i.s, ptr %i.an, align 8, !noalias !65264
  %i.ao = add nuw nsw i64 %i.r, 1                 ; 2 uses
  store i64 %i.ao, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !65262, !noalias !65263
  br label %.split.us.i.i.i

.loopexit.i:                                      ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4scanINtB5_4ScanINtNtB7_5chain5ChainINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvNtB22_8manifest24compute_fragment_offsets0EINtNtNtBb_5array4iter8IntoIterjKj1_EEjNCB2X_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit.us.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  %.val.i = load i64, ptr %i.a, align 8, !noalias !65254 ; 2 uses
  %i.ap = icmp eq i64 %.val.i, 0
  br i1 %i.ap, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit.i
  %.val7.i = load ptr, ptr %.sroa.4.0..sroa_idx.i2, align 8, !noalias !65254, !nonnull !68, !noundef !68
  %i.aq = shl nuw i64 %.val.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !65254
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit.i
  resume { ptr, i32 } %lpad.loopexit.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4scan4ScanINtNtB1z_5chain5ChainINtNtB1z_3map3MapINtNtNtB1D_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvNtB3r_8manifest24compute_fragment_offsets0EINtNtNtB1D_5array4iter8IntoIterjKj1_EEjNCB4m_s_0EE9from_iterB3t_.exit: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !65265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !65254
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs9KQ7US1M400_11lance_table6rowids5index22build_chunk_from_pairs(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 11 uses
  %i.h = alloca [112 x i8], align 8               ; 5 uses
  %i.i = alloca [136 x i8], align 8               ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [56 x i8], align 8                ; 6 uses
  %i.l = alloca [56 x i8], align 8                ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !68 ; 6 uses
  %i.o = icmp ult i64 %i.n, 576460752303423488
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.q, align 8
  %.val7 = load i64, ptr %1, align 8              ; 2 uses
  %i.r = icmp eq i64 %.val7, 0
  br i1 %i.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTyyEEECs9KQ7US1M400_11lance_table.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.s, align 8, !nonnull !68, !noundef !68
  %i.t = shl nuw i64 %.val7, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTyyEEECs9KQ7US1M400_11lance_table.exit

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !68, !noundef !68 ; 9 uses
  %i.w = load i64, ptr %1, align 8, !range !72, !noundef !68 ; 4 uses
  %.idx = shl nuw nsw i64 %i.n, 4                 ; 3 uses
  %i.x = getelementptr i8, ptr %i.v, i64 %.idx    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !65320
  store i64 0, ptr %i.g, align 8, !alias.scope !65321, !noalias !65320
  %.sroa.5.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx3.i.i, align 8, !alias.scope !65321, !noalias !65320
  %.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx5.i.i, i8 0, i64 16, i1 false), !alias.scope !65321, !noalias !65320
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !65321, !noalias !65320
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 3 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !65321, !noalias !65320
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65322)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g, i64 noundef 0, i64 noundef range(i64 1, 0) %i.n, i64 noundef 8, i64 noundef 8)
          to label %_RNvXsi_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendyE14extend_reserveCs9KQ7US1M400_11lance_table.exit.i.i.i unwind label %bb.g, !noalias !65323

_RNvXsi_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendyE14extend_reserveCs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.z = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !65324, !noalias !65323, !noundef !68 ; 3 uses
  %i.aa = load i64, ptr %i.y, align 8, !range !72, !alias.scope !65324, !noalias !65323, !noundef !68
  %i.ab = sub i64 %i.aa, %i.z
  %i.ac = icmp ugt i64 %i.n, %i.ab
  br i1 %i.ac, label %bb.e, label %.lr.ph.i.i.i.i, !prof !71

bb.e:                                             ; preds = %_RNvXsi_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendyE14extend_reserveCs9KQ7US1M400_11lance_table.exit.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef %i.z, i64 noundef range(i64 1, 0) %i.n, i64 noundef 8, i64 noundef 8)
          to label %..lr.ph.i.i.i_crit_edge.i unwind label %bb.g, !noalias !65323

..lr.ph.i.i.i_crit_edge.i:                        ; preds = %bb.e
  %.promoted12.i.i.i.pre.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !65325, !noalias !65326
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %..lr.ph.i.i.i_crit_edge.i, %_RNvXsi_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendyE14extend_reserveCs9KQ7US1M400_11lance_table.exit.i.i.i
  %.promoted12.i.i.i.i = phi i64 [ %.promoted12.i.i.i.pre.i, %..lr.ph.i.i.i_crit_edge.i ], [ %i.z, %_RNvXsi_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendyE14extend_reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 5 uses
  %i.ad = load ptr, ptr %.sroa.5.0..sroa_idx3.i.i, align 8, !alias.scope !65327, !noalias !65326, !nonnull !68, !noundef !68 ; 7 uses
  %i.ae = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !65325, !noalias !65326, !nonnull !68, !noundef !68 ; 8 uses
  %.promoted10.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx5.i.i, align 8, !alias.scope !65327, !noalias !65326 ; 5 uses
  %i.af = add nsw i64 %.idx, -16                  ; 2 uses
  %i.ag = lshr exact i64 %i.af, 4
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 624
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i
  %i.ai = shl i64 %.promoted10.i.i.i.i, 3         ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.ad, i64 %i.ai ; 2 uses
  %2 = add nsw i64 %.idx, -16
  %i.aj = lshr exact i64 %2, 1                    ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ad, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 %i.ai
  %scevgep72 = getelementptr i8, ptr %i.al, i64 8 ; 2 uses
  %i.am = shl i64 %.promoted12.i.i.i.i, 3         ; 2 uses
  %scevgep73 = getelementptr nuw i8, ptr %i.ae, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %i.ae, i64 %i.aj
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.am
  %scevgep74 = getelementptr i8, ptr %i.ao, i64 8 ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep74
  %bound1 = icmp ult ptr %scevgep73, %scevgep72
  %found.conflict = and i1 %bound0, %bound1
  %bound075 = icmp ult ptr %scevgep, %i.x
  %bound176 = icmp ult ptr %i.v, %scevgep72
  %found.conflict77 = and i1 %bound075, %bound176
  %conflict.rdx = or i1 %found.conflict, %found.conflict77
  %bound078 = icmp ult ptr %scevgep73, %i.x
  %bound179 = icmp ult ptr %i.v, %scevgep74
  %found.conflict80 = and i1 %bound078, %bound179
  %conflict.rdx81 = or i1 %conflict.rdx, %found.conflict80
  br i1 %conflict.rdx81, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 2305843009213693950     ; 5 uses
  %i.ap = add i64 %.promoted12.i.i.i.i, %n.vec    ; 2 uses
  %i.aq = add i64 %.promoted10.i.i.i.i, %n.vec    ; 2 uses
  %i.ar = shl i64 %n.vec, 4
  %i.as = getelementptr i8, ptr %i.v, i64 %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.promoted10.i.i.i.i
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.promoted12.i.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.av = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.av
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !alias.scope !65328, !noalias !65329 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec86 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65331)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index
  store <2 x i64> %strided.vec, ptr %i.aw, align 8, !alias.scope !65332, !noalias !65333
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65334)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index
  store <2 x i64> %strided.vec86, ptr %i.ax, align 8, !alias.scope !65335, !noalias !65336
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !65296

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i, %middle.block
  %.ph = phi i64 [ %.promoted12.i.i.i.i, %vector.memcheck ], [ %.promoted12.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ap, %middle.block ]
  %.ph91 = phi i64 [ %.promoted10.i.i.i.i, %vector.memcheck ], [ %.promoted10.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.aq, %middle.block ]
  %.ph92 = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i ], [ %i.as, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.az = phi i64 [ %i.bl, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ba = phi i64 [ %i.bi, %scalar.ph ], [ %.ph91, %scalar.ph.preheader ] ; 3 uses
  %i.bb = phi ptr [ %i.bf, %scalar.ph ], [ %.ph92, %scalar.ph.preheader ] ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !65329, !noundef !68
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !noalias !65329, !noundef !68
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65331)
  %i.bg = icmp ult i64 %i.ba, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ba
  store i64 %i.bc, ptr %i.bh, align 8, !noalias !65337
  %i.bi = add nuw nsw i64 %i.ba, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65334)
  %i.bj = icmp ult i64 %i.az, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.az
  store i64 %i.be, ptr %i.bk, align 8, !noalias !65338
  %i.bl = add nuw nsw i64 %i.az, 1                ; 2 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.bf, %i.x
  br i1 %.not.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %scalar.ph, !llvm.loop !65297

._crit_edge.i.i.i.i:                              ; preds = %scalar.ph, %middle.block
  %.lcssa69 = phi i64 [ %i.aq, %middle.block ], [ %i.bi, %scalar.ph ]
  %.lcssa = phi i64 [ %i.ap, %middle.block ], [ %i.bl, %scalar.ph ]
  %i.bm = icmp eq i64 %i.w, 0
  br i1 %i.bm, label %_RINvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTyyEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator5unzipyyINtB8_3VecyEB1Z_ECs9KQ7US1M400_11lance_table.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bn = shl nuw i64 %i.w, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !65329
  br label %_RINvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTyyEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator5unzipyyINtB8_3VecyEB1Z_ECs9KQ7US1M400_11lance_table.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = icmp eq i64 %i.w, 0
  br i1 %i.bp, label %.body.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = shl nuw i64 %i.w, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !65339
  br label %.body.i

common.resume:                                    ; preds = %bb.n, %bb.o, %bb.j, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.bo, %.body.i ], [ %lpad.thr_comm, %bb.o ], [ %i.eh, %bb.j ], [ %lpad.thr_comm, %bb.n ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.h, %bb.g
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc3vec3VecyEBC_EECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(48) %i.g) #81, !noalias !65320
  br label %common.resume

_RINvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTyyEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator5unzipyyINtB8_3VecyEB1Z_ECs9KQ7US1M400_11lance_table.exit: ; preds = %._crit_edge.i.i.i.i, %bb.f
  %.sroa.045.0.copyload = load i64, ptr %i.g, align 8, !noalias !65340
  %.sroa.647.0.copyload = load i64, ptr %i.y, align 8, !noalias !65340 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !65320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !65341
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.lcssa69
  store ptr %i.ad, ptr %i.f, align 8, !alias.scope !65342, !noalias !65343
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.045.0.copyload, ptr %i.bs, align 8, !alias.scope !65342, !noalias !65343
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ad, ptr %i.bt, align 8, !alias.scope !65342, !noalias !65343
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.br, ptr %i.bu, align 8, !alias.scope !65342, !noalias !65343
  invoke fastcc void @_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB6_3VecyEINtB4_12SpecFromIteryINtNtB6_9into_iter8IntoIteryEE9from_iterCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.f)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %_RINvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTyyEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator5unzipyyINtB8_3VecyEB1Z_ECs9KQ7US1M400_11lance_table.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !65341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !65341
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !65341, !nonnull !68, !noundef !68 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !noalias !65341, !noundef !68 ; 2 uses
  %.idx.i = shl i64 %i.by, 3                      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65344)
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.noexc
  %i.ca = add i64 %.idx.i, -8                     ; 3 uses
  %i.cb = lshr exact i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %i.cd = icmp ne i64 %i.ca, 0                    ; 2 uses
  br i1 %i.cd, label %.lr.ph.i.i.preheader.new, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.cc, 4611686018427387902
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.0.030.i.i = phi i8 [ 1, %.lr.ph.i.i.preheader.new ], [ %spec.store.select5.i.i.1, %.lr.ph.i.i ] ; 2 uses
  %.sroa.07.029.i.i = phi i64 [ -1, %.lr.ph.i.i.preheader.new ], [ %spec.store.select.i.i.1, %.lr.ph.i.i ]
  %.sroa.09.028.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %spec.store.select4.i.i.1, %.lr.ph.i.i ] ; 2 uses
  %.sroa.012.027.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.cl, %.lr.ph.i.i ] ; 2 uses
  %.sroa.0.02026.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.preheader.new ], [ %i.cj, %.lr.ph.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.02026.i.i, i64 8
  %i.cf = load i64, ptr %.sroa.0.02026.i.i, align 8, !noalias !65345, !noundef !68 ; 3 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 %.sroa.07.029.i.i)
  %spec.store.select4.i.i = tail call i64 @llvm.umax.i64(i64 %i.cf, i64 %.sroa.09.028.i.i) ; 2 uses
  %i.cg = trunc nuw i8 %.sroa.0.030.i.i to i1
  %i.ch = icmp ne i64 %.sroa.012.027.i.i, 0
  %or.cond.i.i = select i1 %i.cg, i1 %i.ch, i1 false
  %i.ci = icmp ugt i64 %.sroa.09.028.i.i, %i.cf
  %or.cond3.i.i = select i1 %or.cond.i.i, i1 %i.ci, i1 false
  %spec.store.select5.i.i = select i1 %or.cond3.i.i, i8 0, i8 %.sroa.0.030.i.i ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.02026.i.i, i64 16 ; 2 uses
  %i.ck = load i64, ptr %i.ce, align 8, !noalias !65345, !noundef !68 ; 3 uses
  %i.cl = add nuw nsw i64 %.sroa.012.027.i.i, 2
  %spec.store.select.i.i.1 = tail call i64 @llvm.umin.i64(i64 %i.ck, i64 %spec.store.select.i.i) ; 3 uses
  %spec.store.select4.i.i.1 = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 %spec.store.select4.i.i) ; 3 uses
  %i.cm = trunc nuw i8 %spec.store.select5.i.i to i1
  %i.cn = icmp ugt i64 %spec.store.select4.i.i, %i.ck
  %or.cond3.i.i.1 = select i1 %i.cm, i1 %i.cn, i1 false
  %spec.store.select5.i.i.1 = select i1 %or.cond3.i.i.1, i8 0, i8 %spec.store.select5.i.i ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.i.unr-lcssa, label %.lr.ph.i.i

.loopexit.loopexit.i.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %i.co = and i64 %i.ca, 8
  %lcmp.mod.not.not = icmp eq i64 %i.co, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.epil.preheader, label %.loopexit.loopexit.i

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.loopexit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.0.030.i.i.epil.init = phi i8 [ 1, %.lr.ph.i.i.preheader ], [ %spec.store.select5.i.i.1, %.loopexit.loopexit.i.unr-lcssa ] ; 2 uses
  %.sroa.07.029.i.i.epil.init = phi i64 [ -1, %.lr.ph.i.i.preheader ], [ %spec.store.select.i.i.1, %.loopexit.loopexit.i.unr-lcssa ]
  %.sroa.09.028.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %spec.store.select4.i.i.1, %.loopexit.loopexit.i.unr-lcssa ] ; 2 uses
  %.sroa.0.02026.i.i.epil.init = phi ptr [ %i.bw, %.lr.ph.i.i.preheader ], [ %i.cj, %.loopexit.loopexit.i.unr-lcssa ]
  %lcmp.mod98 = trunc i64 %i.cc to i1
  tail call void @llvm.assume(i1 %lcmp.mod98)
  %i.cp = load i64, ptr %.sroa.0.02026.i.i.epil.init, align 8, !noalias !65345, !noundef !68 ; 3 uses
  %spec.store.select.i.i.epil = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 %.sroa.07.029.i.i.epil.init)
  %spec.store.select4.i.i.epil = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 %.sroa.09.028.i.i.epil.init)
  %i.cq = trunc nuw i8 %.sroa.0.030.i.i.epil.init to i1
end_hunk_2
begin_hunk_3_@_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VeclEINtB4_18SpecFromIterNestedlINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENCNvMNtNtCs9KQ7US1M400_11lance_table11transaction14manifest_buildNtNtB3M_7builder11Transaction32build_manifest_with_read_versionsU_0EE9from_iterB3O_:bb.a
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !76232
  %i.g = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 4) #76, !noalias !76232 ; 8 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.b
  %i.i = add nsw i64 %i.d, -1
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.j = icmp ult i64 %i.i, 3
  br i1 %i.j, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %i.d, 2305843009213693948
  br label %.preheader.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.e) #80
  unreachable

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %i.k = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.ae, %.preheader.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k
  %.val16.i.i.i.i.i = load ptr, ptr %i.l, align 8, !noalias !76233, !nonnull !68, !align !73, !noundef !68
  %i.m = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i, i64 176
  %i.n = load i32, ptr %i.m, align 8, !noalias !76234, !noundef !68
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.k
  store i32 %i.n, ptr %i.o, align 4, !noalias !76235
  %i.p = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.p
  %.val16.i.i.i.i.i.1 = load ptr, ptr %i.q, align 8, !noalias !76233, !nonnull !68, !align !73, !noundef !68
  %i.r = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.1, i64 176
  %i.s = load i32, ptr %i.r, align 8, !noalias !76234, !noundef !68
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.p
  store i32 %i.s, ptr %i.t, align 4, !noalias !76235
  %i.u = or disjoint i64 %i.k, 2                  ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.u
  %.val16.i.i.i.i.i.2 = load ptr, ptr %i.v, align 8, !noalias !76233, !nonnull !68, !align !73, !noundef !68
  %i.w = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.2, i64 176
  %i.x = load i32, ptr %i.w, align 8, !noalias !76234, !noundef !68
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.u
  store i32 %i.x, ptr %i.y, align 4, !noalias !76235
  %i.z = or disjoint i64 %i.k, 3                  ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.z
  %.val16.i.i.i.i.i.3 = load ptr, ptr %i.aa, align 8, !noalias !76233, !nonnull !68, !align !73, !noundef !68
  %i.ab = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.3, i64 176
  %i.ac = load i32, ptr %i.ab, align 8, !noalias !76234, !noundef !68
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.z
  store i32 %i.ac, ptr %i.ad, align 4, !noalias !76235
  %i.ae = add nuw i64 %i.k, 4                     ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.preheader.i.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.ae, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.preheader.i.i.epil

.preheader.i.i.epil:                              ; preds = %.preheader.i.i.epil, %.preheader.i.i.epil.preheader
  %i.af = phi i64 [ %i.ak, %.preheader.i.i.epil ], [ %.epil.init, %.preheader.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.epil ], [ 0, %.preheader.i.i.epil.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.af
  %.val16.i.i.i.i.i.epil = load ptr, ptr %i.ag, align 8, !noalias !76233, !nonnull !68, !align !73, !noundef !68
  %i.ah = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.epil, i64 176
  %i.ai = load i32, ptr %i.ah, align 8, !noalias !76234, !noundef !68
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.af
  store i32 %i.ai, ptr %i.aj, align 4, !noalias !76235
  %i.ak = add nuw i64 %i.af, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader.i.i.epil, !llvm.loop !76231

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.epil, %bb.a
  %.sroa.4.0.i12 = phi i64 [ 0, %bb.a ], [ %i.d, %.preheader.i.i.epil ], [ %i.d, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.10.0.i11 = phi ptr [ inttoptr (i64 4 to ptr), %bb.a ], [ %i.g, %.preheader.i.i.epil ], [ %i.g, %.loopexit.loopexit.unr-lcssa ]
  store i64 %.sroa.4.0.i12, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i11, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.i12, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VeclEINtB4_18SpecFromIterNestedlINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENCNvMNtNtCs9KQ7US1M400_11lance_table11transaction14manifest_buildNtNtB3M_7builder11Transaction32build_manifest_with_read_versionsV_0EE9from_iterB3O_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = lshr i64 %i.c, 3                         ; 5 uses
  %i.e = lshr exact i64 %i.c, 1                   ; 2 uses
  %i.f = icmp eq ptr %2, %1
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !76255
  %i.g = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 4) #76, !noalias !76255 ; 8 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.b
  %i.i = add nsw i64 %i.d, -1
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.j = icmp ult i64 %i.i, 3
  br i1 %i.j, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %i.d, 2305843009213693948
  br label %.preheader.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.e) #80
  unreachable

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %i.k = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.ae, %.preheader.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k
  %.val16.i.i.i.i.i = load ptr, ptr %i.l, align 8, !noalias !76256, !nonnull !68, !align !73, !noundef !68
  %i.m = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i, i64 176
  %i.n = load i32, ptr %i.m, align 8, !noalias !76257, !noundef !68
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.k
  store i32 %i.n, ptr %i.o, align 4, !noalias !76258
  %i.p = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.p
  %.val16.i.i.i.i.i.1 = load ptr, ptr %i.q, align 8, !noalias !76256, !nonnull !68, !align !73, !noundef !68
  %i.r = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.1, i64 176
  %i.s = load i32, ptr %i.r, align 8, !noalias !76257, !noundef !68
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.p
  store i32 %i.s, ptr %i.t, align 4, !noalias !76258
  %i.u = or disjoint i64 %i.k, 2                  ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.u
  %.val16.i.i.i.i.i.2 = load ptr, ptr %i.v, align 8, !noalias !76256, !nonnull !68, !align !73, !noundef !68
  %i.w = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.2, i64 176
  %i.x = load i32, ptr %i.w, align 8, !noalias !76257, !noundef !68
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.u
  store i32 %i.x, ptr %i.y, align 4, !noalias !76258
  %i.z = or disjoint i64 %i.k, 3                  ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.z
  %.val16.i.i.i.i.i.3 = load ptr, ptr %i.aa, align 8, !noalias !76256, !nonnull !68, !align !73, !noundef !68
  %i.ab = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.3, i64 176
  %i.ac = load i32, ptr %i.ab, align 8, !noalias !76257, !noundef !68
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.z
  store i32 %i.ac, ptr %i.ad, align 4, !noalias !76258
  %i.ae = add nuw i64 %i.k, 4                     ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.preheader.i.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.ae, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.preheader.i.i.epil

.preheader.i.i.epil:                              ; preds = %.preheader.i.i.epil, %.preheader.i.i.epil.preheader
  %i.af = phi i64 [ %i.ak, %.preheader.i.i.epil ], [ %.epil.init, %.preheader.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.epil ], [ 0, %.preheader.i.i.epil.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.af
  %.val16.i.i.i.i.i.epil = load ptr, ptr %i.ag, align 8, !noalias !76256, !nonnull !68, !align !73, !noundef !68
  %i.ah = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.epil, i64 176
  %i.ai = load i32, ptr %i.ah, align 8, !noalias !76257, !noundef !68
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.af
  store i32 %i.ai, ptr %i.aj, align 4, !noalias !76258
  %i.ak = add nuw i64 %i.af, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader.i.i.epil, !llvm.loop !76254

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.epil, %bb.a
  %.sroa.4.0.i12 = phi i64 [ 0, %bb.a ], [ %i.d, %.preheader.i.i.epil ], [ %i.d, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.10.0.i11 = phi ptr [ inttoptr (i64 4 to ptr), %bb.a ], [ %i.g, %.preheader.i.i.epil ], [ %i.g, %.loopexit.loopexit.unr-lcssa ]
  store i64 %.sroa.4.0.i12, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i11, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.i12, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoItertENCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB2V_10U64Segment13with_new_high0EE9from_iterB2Z_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.a, align 8, !nonnull !68, !noundef !68 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val5 = load ptr, ptr %i.b, align 8, !nonnull !68, !noundef !68 ; 3 uses
  %i.c = ptrtoint ptr %.val5 to i64               ; 3 uses
  %i.d = ptrtoint ptr %.val4 to i64               ; 3 uses
  %i.e = sub nuw i64 %i.c, %i.d                   ; 3 uses
  %i.f = lshr exact i64 %i.e, 1                   ; 2 uses
  %i.g = shl i64 %i.e, 1                          ; 4 uses
  %i.h = icmp ugt i64 %i.e, 9223372036854775806
  %.not.i.i = icmp ugt i64 %i.g, 9223372036854775804
  %or.cond.i.i = or i1 %i.h, %.not.i.i
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !69

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9KQ7US1M400_11lance_table.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !76289
  %i.j = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, 9) 4) #76, !noalias !76289 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9KQ7US1M400_11lance_table.exit.i.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 4, %bb.c ], [ 0, %bb.a ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.g) #80
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 4 to ptr), %bb.b ], [ %i.j, %bb.c ] ; 5 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.l = icmp samesign ule i64 %i.f, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.l)
  %.sroa.08.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.not.not12.i.i.i.i.i = icmp eq ptr %.val4, %.val5
  br i1 %.not.not12.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9KQ7US1M400_11lance_table.exit.i.i
  %i.m = add i64 %i.c, -2
  %i.n = sub i64 %i.m, %i.d                       ; 2 uses
  %i.o = lshr i64 %i.n, 1
  %i.p = add nuw i64 %i.o, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 54
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %2 = add i64 %i.c, -2
  %3 = sub i64 %2, %i.d                           ; 2 uses
  %i.q = shl i64 %3, 1
  %i.r = and i64 %i.q, -4
  %i.s = getelementptr i8, ptr %.sroa.10.0.i, i64 %i.r
  %scevgep = getelementptr i8, ptr %i.s, i64 4
  %i.t = and i64 %3, -2
  %i.u = getelementptr i8, ptr %.val4, i64 %i.t
  %scevgep17 = getelementptr i8, ptr %i.u, i64 2
  %bound0 = icmp ult ptr %.sroa.10.0.i, %scevgep17
  %bound1 = icmp ult ptr %.val4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, -8                       ; 5 uses
  %i.v = shl i64 %n.vec, 1
  %i.w = getelementptr i8, ptr %.val4, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.val4, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !alias.scope !76290, !noalias !76291
  %wide.load18 = load <4 x i16>, ptr %i.y, align 2, !alias.scope !76290, !noalias !76291
  %i.z = zext <4 x i16> %wide.load to <4 x i32>
  %i.aa = zext <4 x i16> %wide.load18 to <4 x i32>
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <4 x i32> %i.z, ptr %i.ab, align 4, !alias.scope !76292, !noalias !76293
  store <4 x i32> %i.aa, ptr %i.ac, align 4, !alias.scope !76292, !noalias !76293
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !76285

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.ph21 = phi ptr [ %.val4, %vector.memcheck ], [ %.val4, %.lr.ph.i.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %i.ae = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %i.af = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.ph21, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !noalias !76291, !noundef !68
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 2 uses
  %i.ai = zext i16 %i.ag to i32
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i, i64 %i.ae
  store i32 %i.ai, ptr %i.aj, align 4, !noalias !76294
  %i.ak = add nuw i64 %i.ae, 1                    ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq ptr %i.ah, %.val5
  br i1 %.not.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !76286

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9KQ7US1M400_11lance_table.exit.i.i
  %.sroa.42.0.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9KQ7US1M400_11lance_table.exit.i.i ], [ %n.vec, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i.i ]
  %i.al = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %i.al, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload) ]
  %i.am = shl nuw i64 %.sroa.6.0.copyload, 1
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.08.0.copyload, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 2) #76, !noalias !76291
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i.i
  store i64 %.sroa.4.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx14, align 8
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoItertENCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB27_10U64Segment13with_new_high0EEB2b_.exit: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.an

bb.g:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val7 = load i64, ptr %i.ao, align 8, !alias.scope !123, !noundef !68 ; 2 uses
  %i.ap = icmp eq i64 %.val7, 0
  br i1 %i.ap, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoItertENCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB27_10U64Segment13with_new_high0EEB2b_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val6 = load ptr, ptr %1, align 8, !nonnull !68, !noundef !68
  %i.aq = shl nuw i64 %.val7, 1
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 2) #76, !noalias !76295
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoItertENCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB27_10U64Segment13with_new_high0EEB2b_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoItertENCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB2V_10U64Segment13with_new_highs1_0EE9from_iterB2Z_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.a, align 8, !nonnull !68, !noundef !68 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val5 = load ptr, ptr %i.b, align 8, !nonnull !68, !noundef !68 ; 3 uses
  %i.c = ptrtoint ptr %.val5 to i64               ; 3 uses
  %i.d = ptrtoint ptr %.val4 to i64               ; 3 uses
  %i.e = sub nuw i64 %i.c, %i.d                   ; 3 uses
  %i.f = lshr exact i64 %i.e, 1                   ; 2 uses
  %i.g = shl i64 %i.e, 1                          ; 4 uses
  %i.h = icmp ugt i64 %i.e, 9223372036854775806
  %.not.i.i = icmp ugt i64 %i.g, 9223372036854775804
  %or.cond.i.i = or i1 %i.h, %.not.i.i
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !69

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9KQ7US1M400_11lance_table.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !76326
  %i.j = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, 9) 4) #76, !noalias !76326 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9KQ7US1M400_11lance_table.exit.i.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 4, %bb.c ], [ 0, %bb.a ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.g) #80
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 4 to ptr), %bb.b ], [ %i.j, %bb.c ] ; 5 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.l = icmp samesign ule i64 %i.f, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.l)
  %.sroa.08.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.not.not12.i.i.i.i.i = icmp eq ptr %.val4, %.val5
  br i1 %.not.not12.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9KQ7US1M400_11lance_table.exit.i.i
  %i.m = add i64 %i.c, -2
  %i.n = sub i64 %i.m, %i.d                       ; 2 uses
  %i.o = lshr i64 %i.n, 1
  %i.p = add nuw i64 %i.o, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 54
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %2 = add i64 %i.c, -2
  %3 = sub i64 %2, %i.d                           ; 2 uses
  %i.q = shl i64 %3, 1
  %i.r = and i64 %i.q, -4
  %i.s = getelementptr i8, ptr %.sroa.10.0.i, i64 %i.r
  %scevgep = getelementptr i8, ptr %i.s, i64 4
  %i.t = and i64 %3, -2
  %i.u = getelementptr i8, ptr %.val4, i64 %i.t
  %scevgep17 = getelementptr i8, ptr %i.u, i64 2
  %bound0 = icmp ult ptr %.sroa.10.0.i, %scevgep17
  %bound1 = icmp ult ptr %.val4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, -8                       ; 5 uses
  %i.v = shl i64 %n.vec, 1
  %i.w = getelementptr i8, ptr %.val4, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.val4, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !alias.scope !76327, !noalias !76328
  %wide.load18 = load <4 x i16>, ptr %i.y, align 2, !alias.scope !76327, !noalias !76328
  %i.z = zext <4 x i16> %wide.load to <4 x i32>
  %i.aa = zext <4 x i16> %wide.load18 to <4 x i32>
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <4 x i32> %i.z, ptr %i.ab, align 4, !alias.scope !76329, !noalias !76330
  store <4 x i32> %i.aa, ptr %i.ac, align 4, !alias.scope !76329, !noalias !76330
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !76322

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.ph21 = phi ptr [ %.val4, %vector.memcheck ], [ %.val4, %.lr.ph.i.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %i.ae = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %i.af = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.ph21, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !noalias !76328, !noundef !68
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 2 uses
  %i.ai = zext i16 %i.ag to i32
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i, i64 %i.ae
  store i32 %i.ai, ptr %i.aj, align 4, !noalias !76331
  %i.ak = add nuw i64 %i.ae, 1                    ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq ptr %i.ah, %.val5
  br i1 %.not.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !76323

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9KQ7US1M400_11lance_table.exit.i.i
  %.sroa.42.0.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9KQ7US1M400_11lance_table.exit.i.i ], [ %n.vec, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i.i ]
  %i.al = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %i.al, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload) ]
  %i.am = shl nuw i64 %.sroa.6.0.copyload, 1
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.08.0.copyload, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 2) #76, !noalias !76328
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i.i
  store i64 %.sroa.4.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.42.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx14, align 8
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoItertENCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB27_10U64Segment13with_new_highs1_0EEB2b_.exit: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.an

bb.g:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val7 = load i64, ptr %i.ao, align 8, !alias.scope !123, !noundef !68 ; 2 uses
  %i.ap = icmp eq i64 %.val7, 0
  br i1 %i.ap, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoItertENCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB27_10U64Segment13with_new_highs1_0EEB2b_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val6 = load ptr, ptr %1, align 8, !nonnull !68, !noundef !68
  %i.aq = shl nuw i64 %.val7, 1
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 2) #76, !noalias !76332
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoItertENCNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB27_10U64Segment13with_new_highs1_0EEB2b_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecyEINtB4_18SpecFromIterNestedyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB1B_5chain5ChainINtNtNtB1F_5slice4iter4IteryEINtNtB1B_3map3MapIB2M_NtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvMNtNtB3G_11transaction14manifest_buildNtNtB4E_7builder11Transaction32build_manifest_with_read_versionsf_0EEEE9from_iterB3G_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !alias.scope !76380, !noalias !76381, !noundef !68 ; 11 uses
  %.not.i.i = icmp eq ptr %i.b, null              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !76380, !noalias !76381, !noundef !68 ; 12 uses
  %.not8.i.i = icmp eq ptr %i.d, null             ; 5 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11.i.i = load ptr, ptr %i.e, align 8, !alias.scope !76380, !noalias !76381, !nonnull !68, !noundef !68
  %i.f = ptrtoint ptr %.val11.i.i to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 3                   ; 2 uses
  br i1 %.not8.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IteryEINtNtB6_3map3MapIB1m_NtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvMNtNtB2e_11transaction14manifest_buildNtNtB3c_7builder11Transaction32build_manifest_with_read_versionsf_0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB2e_.exit, label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %.not8.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IteryEINtNtB6_3map3MapIB1m_NtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvMNtNtB2e_11transaction14manifest_buildNtNtB3c_7builder11Transaction32build_manifest_with_read_versionsf_0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB2e_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val17.i.i = load ptr, ptr %i.j, align 8, !alias.scope !76380, !noalias !76381, !nonnull !68, !noundef !68
  %i.k = ptrtoint ptr %.val17.i.i to i64
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = udiv exact i64 %i.m, 240
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IteryEINtNtB6_3map3MapIB1m_NtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvMNtNtB2e_11transaction14manifest_buildNtNtB3c_7builder11Transaction32build_manifest_with_read_versionsf_0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB2e_.exit

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val15.i.i = load ptr, ptr %i.o, align 8, !alias.scope !76380, !noalias !76381, !nonnull !68, !noundef !68
  %i.p = ptrtoint ptr %.val15.i.i to i64
  %i.q = ptrtoint ptr %i.d to i64
  %i.r = sub nuw i64 %i.p, %i.q
  %i.s = udiv exact i64 %i.r, 240
  %i.t = add nuw nsw i64 %i.s, %i.i
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IteryEINtNtB6_3map3MapIB1m_NtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvMNtNtB2e_11transaction14manifest_buildNtNtB3c_7builder11Transaction32build_manifest_with_read_versionsf_0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB2e_.exit

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IteryEINtNtB6_3map3MapIB1m_NtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvMNtNtB2e_11transaction14manifest_buildNtNtB3c_7builder11Transaction32build_manifest_with_read_versionsf_0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB2e_.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sink25.i.i = phi i64 [ %i.t, %bb.e ], [ %i.n, %bb.d ], [ %i.i, %bb.b ], [ 0, %bb.c ] ; 4 uses
  %i.u = shl i64 %.sink25.i.i, 3                  ; 4 uses
  %i.v = icmp samesign ugt i64 %.sink25.i.i, 2305843009213693951
  %.not.i.i4 = icmp ugt i64 %i.u, 9223372036854775800
  %or.cond.i.i = or i1 %i.v, %.not.i.i4
  br i1 %or.cond.i.i, label %bb.h, label %bb.f, !prof !69

bb.f:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IteryEINtNtB6_3map3MapIB1m_NtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvMNtNtB2e_11transaction14manifest_buildNtNtB3c_7builder11Transaction32build_manifest_with_read_versionsf_0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB2e_.exit
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !76382
  %i.x = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.u, i64 noundef range(i64 1, 9) 8) #76, !noalias !76382 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IteryEINtNtB6_3map3MapIB1m_NtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvMNtNtB2e_11transaction14manifest_buildNtNtB3c_7builder11Transaction32build_manifest_with_read_versionsf_0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB2e_.exit
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.g ], [ 0, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IteryEINtNtB6_3map3MapIB1m_NtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvMNtNtB2e_11transaction14manifest_buildNtNtB3c_7builder11Transaction32build_manifest_with_read_versionsf_0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB2e_.exit ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.u) #80
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.g, %bb.f
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.x, %bb.g ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.f ], [ %.sink25.i.i, %bb.g ] ; 3 uses
  %i.z = icmp samesign ule i64 %.sink25.i.i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.z)
  store i64 %.sroa.4.0.i, ptr %i.a, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.ab, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 5 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76384)
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.ac = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.ad = ptrtoint ptr %i.b to i64
  %i.ae = sub nuw i64 %i.ac, %i.ad
  %i.af = lshr exact i64 %i.ae, 3                 ; 2 uses
  br i1 %.not8.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IteryEINtNtB6_3map3MapIB1m_NtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvMNtNtB2e_11transaction14manifest_buildNtNtB3c_7builder11Transaction32build_manifest_with_read_versionsf_0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB2e_.exit.i.i, label %bb.l

bb.j:                                             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9KQ7US1M400_11lance_table.exit
  br i1 %.not8.i.i, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  %i.ag = ptrtoint ptr %.sroa.7.0.copyload to i64
  %i.ah = ptrtoint ptr %i.d to i64
  %i.ai = sub nuw i64 %i.ag, %i.ah
  %i.aj = udiv exact i64 %i.ai, 240
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IteryEINtNtB6_3map3MapIB1m_NtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvMNtNtB2e_11transaction14manifest_buildNtNtB3c_7builder11Transaction32build_manifest_with_read_versionsf_0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB2e_.exit.i.i

bb.l:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  %i.ak = ptrtoint ptr %.sroa.7.0.copyload to i64
  %i.al = ptrtoint ptr %i.d to i64
  %i.am = sub nuw i64 %i.ak, %i.al
  %i.an = udiv exact i64 %i.am, 240
  %i.ao = add nuw nsw i64 %i.an, %i.af
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IteryEINtNtB6_3map3MapIB1m_NtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvMNtNtB2e_11transaction14manifest_buildNtNtB3c_7builder11Transaction32build_manifest_with_read_versionsf_0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB2e_.exit.i.i

end_hunk_3
begin_hunk_4_@_RNvYNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtBb_8RawTableTyNtNtNtCs9KQ7US1M400_11lance_table6rowids7version25RowDatasetVersionSequenceEE14reserve_rehashNCINvNtBd_3map11make_hasheryBW_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0Es_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTOhEE9call_onceB12_:bb.a

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7version20RowDatasetVersionRunENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.a
  %.val2.i.i.i.i = load i64, ptr %i.a, align 8, !range !72, !alias.scope !80575, !noundef !68 ; 2 uses
  %i.h = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.h, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTyNtNtNtCs9KQ7US1M400_11lance_table6rowids7version25RowDatasetVersionSequenceEE14reserve_rehashNCINvNtBa_3map11make_hasheryBT_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0Es_0BZ_.exit, label %bb.b

bb.b:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7version20RowDatasetVersionRunENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i
  %i.i = shl nuw i64 %.val2.i.i.i.i, 6
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !80575
  br label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTyNtNtNtCs9KQ7US1M400_11lance_table6rowids7version25RowDatasetVersionSequenceEE14reserve_rehashNCINvNtBa_3map11make_hasheryBT_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0Es_0BZ_.exit

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTyNtNtNtCs9KQ7US1M400_11lance_table6rowids7version25RowDatasetVersionSequenceEE14reserve_rehashNCINvNtBa_3map11make_hasheryBT_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0Es_0BZ_.exit: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7version20RowDatasetVersionRunENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noalias noundef nonnull ptr @_RNvYNCNvNtNtCs9KQ7US1M400_11lance_table2io8deletion21DELETION_ARROW_SCHEMA0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceuE9call_onceBa_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76
  %i.f = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #76 ; 13 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i, !prof !75

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #80
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 8, ptr %i.d, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !80613
  %i.h = tail call noundef dereferenceable_or_null(6) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 6, i64 noundef range(i64 1, 9) 1) #76, !noalias !80613 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) 6) #80
          to label %.noexc.i.i unwind label %bb.h, !noalias !80614

.noexc.i.i:                                       ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.h, ptr noundef nonnull readonly align 1 dereferenceable(6) @798, i64 range(i64 0, -9223372036854775808) 6, i1 false), !noalias !80615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !80614
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !80616
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !range !77, !noalias !80617, !noundef !68
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i.i, !prof !80

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i.i: ; preds = %bb.d
  %.pre.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !80618
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !80618
  br label %bb.i

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i.i: ; preds = %bb.d
  %i.n = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc7.i.i unwind label %bb.e, !noalias !80614 ; 2 uses

.noexc7.i.i:                                      ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i.i
  %i.o = extractvalue { i64, i64 } %i.n, 0
  %i.p = extractvalue { i64, i64 } %i.n, 1        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.p, ptr %i.q, align 8, !noalias !80619
  store i8 1, ptr %i.k, align 8, !noalias !80619
  br label %bb.i

bb.e:                                             ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.b) #81
          to label %bb.g unwind label %bb.f, !noalias !80614

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !80616
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 6, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !80620
  br label %bb.m

bb.h:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #81
          to label %bb.m unwind label %bb.f, !noalias !80616

.body.i.i:                                        ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.a), !noalias !80621
  br label %common.resume.i

bb.i:                                             ; preds = %.noexc7.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i.i
  %.pre1.i.i.i10.i = phi i64 [ %i.p, %.noexc7.i.i ], [ %.pre1.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i.i ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %i.o, %.noexc7.i.i ], [ %.pre.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i.i ] ; 3 uses
  %i.v = add i64 %.pre-phi.i.i, 1
  %.sroa.6.0..sroa.01.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa.01.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !80614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 6, ptr %i.f, align 8
  %.sroa.43.0..sroa.01.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.h, ptr %.sroa.43.0..sroa.01.0..sroa_idx.i, align 8
  %.sroa.54.0..sroa.01.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 6, ptr %.sroa.54.0..sroa.01.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa.01.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa.01.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @66, i64 32, i1 false)
  %.sroa.8.0..sroa.01.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store i64 %.pre-phi.i.i, ptr %.sroa.8.0..sroa.01.0..sroa_idx.i, align 8
  %.sroa.9.0..sroa.01.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store i64 %.pre1.i.i.i10.i, ptr %.sroa.9.0..sroa.01.0..sroa_idx.i, align 8
  %.sroa.10.0..sroa.01.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i64 0, ptr %.sroa.10.0..sroa.01.0..sroa_idx.i, align 8
  %.sroa.11.0..sroa.01.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store i8 0, ptr %.sroa.11.0..sroa.01.0..sroa_idx.i, align 8
  %.sroa.12.0..sroa.01.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 105
  store i8 0, ptr %.sroa.12.0..sroa.01.0..sroa_idx.i, align 1
  store i64 1, ptr %i.e, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.f, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 1, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !80622
  %i.y = add i64 %.pre-phi.i.i, 2
  store i64 %i.y, ptr %i.j, align 8, !noalias !80623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @66, i64 32, i1 false), !noalias !80622
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.v, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !80622
  %.sroa.5.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.pre1.i.i.i10.i, ptr %.sroa.5.0..sroa_idx.i6.i, align 8, !noalias !80622
  %i.z = invoke { ptr, i64 } @_RNvXs3_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB7_5field5FieldEE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
          to label %_RINvMs5_NtCs8SUNSmrkv52_12arrow_schema6schemaNtB6_6Schema3newINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB8_5field5FieldEECs9KQ7US1M400_11lance_table.exit.i unwind label %.body.i.i, !noalias !80624 ; 2 uses

common.resume.i:                                  ; preds = %bb.m, %bb.k, %.body.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i, %bb.m ], [ %i.u, %.body.i.i ], [ %i.ag, %bb.k ]
  resume { ptr, i32 } %common.resume.op.i

_RINvMs5_NtCs8SUNSmrkv52_12arrow_schema6schemaNtB6_6Schema3newINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB8_5field5FieldEECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.i
  %i.aa = extractvalue { ptr, i64 } %i.z, 0
  %i.ab = extractvalue { ptr, i64 } %i.z, 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !80622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 1, ptr %i.c, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.aa, ptr %i.ad, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.ab, ptr %.sroa.4.0..sroa_idx.i, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !80625
  %i.ae = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !80625 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %_RNCNvNtNtCs9KQ7US1M400_11lance_table2io8deletion21DELETION_ARROW_SCHEMA0B7_.exit, !prof !75

bb.j:                                             ; preds = %_RINvMs5_NtCs8SUNSmrkv52_12arrow_schema6schemaNtB6_6Schema3newINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB8_5field5FieldEECs9KQ7US1M400_11lance_table.exit.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #80
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c) #81
          to label %common.resume.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

bb.m:                                             ; preds = %bb.h, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.t, %bb.h ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 112, i64 noundef 8) #76
  br label %common.resume.i

_RNCNvNtNtCs9KQ7US1M400_11lance_table2io8deletion21DELETION_ARROW_SCHEMA0B7_.exit: ; preds = %_RINvMs5_NtCs8SUNSmrkv52_12arrow_schema6schemaNtB6_6Schema3newINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB8_5field5FieldEECs9KQ7US1M400_11lance_table.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs3PfUT229lOd_12object_store4path5ErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @2127, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs3PfUT229lOd_12object_store4path5ErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeCs9KQ7US1M400_11lance_table(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #32 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !140, !alias.scope !80628, !noundef !68 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775807
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %_RNvXs8_NtCs3PfUT229lOd_12object_store4pathNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %_RNvXs8_NtCs3PfUT229lOd_12object_store4pathNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
    i64 4, label %bb.e
    i64 5, label %_RNvXs8_NtCs3PfUT229lOd_12object_store4pathNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_RNvXs8_NtCs3PfUT229lOd_12object_store4pathNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_RNvXs8_NtCs3PfUT229lOd_12object_store4pathNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_RNvXs8_NtCs3PfUT229lOd_12object_store4pathNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

_RNvXs8_NtCs3PfUT229lOd_12object_store4pathNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.c, %bb.d, %bb.e
  %.sroa.7.0.i = phi ptr [ undef, %bb.a ], [ @1800, %bb.c ], [ @146, %bb.d ], [ undef, %bb.a ], [ @1802, %bb.e ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ null, %bb.a ], [ %i.h, %bb.e ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.7.0.i, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs3PfUT229lOd_12object_store4path5ErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs3PfUT229lOd_12object_store4path5ErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #37 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @2128, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3fmt5Write9write_fmtCs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCscI6d9CVNmLh_4core3fmt5Write9write_fmtQNtNtCs40k4W9msRzi_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCs9KQ7US1M400_11lance_table.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @9, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !80629
  ret i1 %i.a
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvYNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error14invalid_lengthCs9KQ7US1M400_11lance_table(i64 noundef %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.c, align 8
  store ptr %1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRDNtNtCskpEw9nXJLNc_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.46.0..sroa_idx, align 8
  %i.f = call fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error6customNtNtCscI6d9CVNmLh_4core3fmt9ArgumentsECs9KQ7US1M400_11lance_table(ptr noundef nonnull @2130, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvYNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error15unknown_variantCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.47.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs6_NtCskpEw9nXJLNc_10serde_core2deNtB5_5OneOfNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.g = call fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error6customNtNtCscI6d9CVNmLh_4core3fmt9ArgumentsECs9KQ7US1M400_11lance_table(ptr noundef nonnull @2132, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @2127, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeCs9KQ7US1M400_11lance_table(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs1C_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #37 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @2133, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs9ipI1vyGjpZ_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #45 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @2134, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_reader17CloudObjectReaderNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf12deep_size_ofCs9KQ7US1M400_11lance_table(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCs63DIHKhvmTb_10lance_core8deepsizeNtB4_7Context3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a)
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val2 = load i64, ptr %i.b, align 8, !noundef !68 ; 4 uses
  %i.c = icmp eq i64 %.val2, 0
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECs9KQ7US1M400_11lance_table.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = shl i64 %.val2, 3
  %i.e = icmp slt i64 %.val2, 2305843009213693950
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i64 %i.d, -16                        ; 2 uses
  %i.g = add i64 %i.f, 16                         ; 2 uses
  %i.h = add nsw i64 %.val2, 17
  %i.i = add i64 %i.h, %i.g                       ; 4 uses
  %i.j = icmp uge i64 %i.i, %i.g
  %i.k = icmp ult i64 %i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %i.j)
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECs9KQ7US1M400_11lance_table.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.m = sub nuw nsw i64 -16, %i.f
  %i.n = getelementptr inbounds i8, ptr %.val, i64 %i.m
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECs9KQ7US1M400_11lance_table.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.a, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 112
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_writer11LocalWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite17is_write_vectoredCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_writer11LocalWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite19poll_write_vectoredCs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %3, 4
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsgczF5crJ4sT_3std2io7IoSliceE6map_orRShNCNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_writer11LocalWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite19poll_write_vectoreds_0ECs9KQ7US1M400_11lance_table.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsgczF5crJ4sT_3std2io7IoSliceE6map_orRShNCNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_writer11LocalWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite19poll_write_vectoreds_0ECs9KQ7US1M400_11lance_table.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.c, %bb.b ], [ %2, %bb.a ]   ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !80634, !noundef !68 ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !80635, !noundef !68
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsgczF5crJ4sT_3std2io7IoSliceE6map_orRShNCNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_writer11LocalWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite19poll_write_vectoreds_0ECs9KQ7US1M400_11lance_table.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsgczF5crJ4sT_3std2io7IoSliceE6map_orRShNCNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_writer11LocalWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite19poll_write_vectoreds_0ECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.02.0.i = phi ptr [ %.val.i, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i) ]
  %i.h = tail call { i64, ptr } @_RNvXs6_NtCsjjbR6Jfsbqw_8lance_io13object_writerNtB5_11LocalWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite10poll_write(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.02.0.i, i64 noundef %.sroa.3.0.i)
  ret { i64, ptr } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_writer12ObjectWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite17is_write_vectoredCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_writer12ObjectWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite19poll_write_vectoredCs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %3, 4
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsgczF5crJ4sT_3std2io7IoSliceE6map_orRShNCNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_writer12ObjectWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite19poll_write_vectoreds_0ECs9KQ7US1M400_11lance_table.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsgczF5crJ4sT_3std2io7IoSliceE6map_orRShNCNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_writer12ObjectWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite19poll_write_vectoreds_0ECs9KQ7US1M400_11lance_table.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.c, %bb.b ], [ %2, %bb.a ]   ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !80640, !noundef !68 ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !80641, !noundef !68
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsgczF5crJ4sT_3std2io7IoSliceE6map_orRShNCNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_writer12ObjectWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite19poll_write_vectoreds_0ECs9KQ7US1M400_11lance_table.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsgczF5crJ4sT_3std2io7IoSliceE6map_orRShNCNvYNtNtCsjjbR6Jfsbqw_8lance_io13object_writer12ObjectWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite19poll_write_vectoreds_0ECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.02.0.i = phi ptr [ %.val.i, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i) ]
  %i.h = tail call { i64, ptr } @_RNvXs4_NtCsjjbR6Jfsbqw_8lance_io13object_writerNtB5_12ObjectWriterNtNtNtCseXbohGRa9jr_5tokio2io11async_write10AsyncWrite10poll_write(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.02.0.i, i64 noundef %.sroa.3.0.i)
  ret { i64, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvYNtNtCsjjbR6Jfsbqw_8lance_io5local17LocalObjectReaderNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf12deep_size_ofCs9KQ7US1M400_11lance_table(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCs63DIHKhvmTb_10lance_core8deepsizeNtB4_7Context3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a)
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val2 = load i64, ptr %i.b, align 8, !noundef !68 ; 4 uses
  %i.c = icmp eq i64 %.val2, 0
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECs9KQ7US1M400_11lance_table.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = shl i64 %.val2, 3
  %i.e = icmp slt i64 %.val2, 2305843009213693950
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i64 %i.d, -16                        ; 2 uses
  %i.g = add i64 %i.f, 16                         ; 2 uses
  %i.h = add nsw i64 %.val2, 17
  %i.i = add i64 %i.h, %i.g                       ; 4 uses
  %i.j = icmp uge i64 %i.i, %i.g
  %i.k = icmp ult i64 %i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %i.j)
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECs9KQ7US1M400_11lance_table.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.m = sub nuw nsw i64 -16, %i.f
  %i.n = getelementptr inbounds i8, ptr %.val, i64 %i.m
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECs9KQ7US1M400_11lance_table.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.a, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 104
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs3PfUT229lOd_12object_store4path5parts11InvalidPartNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @2127, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs3PfUT229lOd_12object_store4path5parts11InvalidPartNtNtCscI6d9CVNmLh_4core5error5Error5causeCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs3PfUT229lOd_12object_store4path5parts11InvalidPartNtNtCscI6d9CVNmLh_4core5error5Error6sourceCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs3PfUT229lOd_12object_store4path5parts11InvalidPartNtNtCscI6d9CVNmLh_4core5error5Error7provideCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs3PfUT229lOd_12object_store4path5parts11InvalidPartNtNtCscI6d9CVNmLh_4core5error5Error7type_idCs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #37 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @2135, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtCs9KQ7US1M400_11lance_table5utils6stream11MergeStreamNtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9size_hintB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #59 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs9KQ7US1M400_11lance_table5utils6stream15SharedReadErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionB8_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @2127, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs9KQ7US1M400_11lance_table5utils6stream15SharedReadErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeB8_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #30 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !80644, !nonnull !68, !noundef !68
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @1946, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs9KQ7US1M400_11lance_table5utils6stream15SharedReadErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideB8_(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs9KQ7US1M400_11lance_table5utils6stream15SharedReadErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #37 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @2136, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb12IndexSectionNtNtCskAO0uQb8M5a_5prost7message7Message13encode_to_vecB8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = icmp eq i64 %.16.val, 0                  ; 2 uses
  br i1 %i.b, label %_RNvXs1d_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_12IndexSectionNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.m, %.preheader.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ %i.l, %.preheader.i.i ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw [232 x i8], ptr %.8.val, i64 %.sroa.04.0.i.i.i.i
  %i.d = tail call fastcc noundef i64 @_RNvXsY_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB5_13IndexMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.c) ; 2 uses
  %i.e = or i64 %i.d, 1
  %i.f = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = xor i64 %i.f, 63
  %i.h = mul nuw nsw i64 %i.g, 9
  %i.i = add nuw nsw i64 %i.h, 73
  %i.j = lshr i64 %i.i, 6
  %i.k = add i64 %i.d, %.sroa.02.0.i.i.i.i
  %i.l = add i64 %i.k, %i.j                       ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.04.0.i.i.i.i, 1   ; 2 uses
  %i.n = icmp eq i64 %i.m, %.16.val
  br i1 %i.n, label %_RNvXs1d_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_12IndexSectionNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit, label %.preheader.i.i

_RNvXs1d_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_12IndexSectionNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit: ; preds = %.preheader.i.i, %bb.a
  %.sroa.0.0.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.l, %.preheader.i.i ]
  %i.o = add i64 %.sroa.0.0.i.i.i.i, %.16.val     ; 5 uses
  %.not.i = icmp slt i64 %i.o, 0
  br i1 %.not.i, label %bb.e, label %bb.b, !prof !69

bb.b:                                             ; preds = %_RNvXs1d_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_12IndexSectionNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !80647
  %i.q = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !80647 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = ptrtoint ptr %i.q to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit

bb.e:                                             ; preds = %_RNvXs1d_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_12IndexSectionNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit, %bb.c
  %.sroa.4.0.ph = phi i64 [ 1, %bb.c ], [ 0, %_RNvXs1d_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_12IndexSectionNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.o) #80
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.d, %bb.b
  %.sroa.10.0 = phi i64 [ %i.s, %bb.d ], [ 1, %bb.b ]
  %i.t = inttoptr i64 %.sroa.10.0 to ptr
  store i64 %i.o, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.v, align 8
  %.idx.i = mul nuw nsw i64 %.16.val, 232
  %i.w = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx.i
  br i1 %i.b, label %_RINvXs1d_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_12IndexSectionNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEEBb_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit, %.noexc
  %.sroa.0.01.i = phi ptr [ %i.x, %.noexc ], [ %.8.val, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  invoke fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb13IndexMetadataINtNtCs40k4W9msRzi_5alloc3vec3VechEEBU_(i32 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %.sroa.0.01.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 232 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.w
  br i1 %i.y, label %_RINvXs1d_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_12IndexSectionNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEEBb_.exit, label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.aa = icmp eq i64 %.val, 0
  br i1 %i.aa, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val1 = load ptr, ptr %i.u, align 8, !nonnull !68, !noundef !68
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit

_RINvXs1d_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_12IndexSectionNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEEBb_.exit: ; preds = %.noexc, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.z
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb8ManifestNtNtCskAO0uQb8M5a_5prost7message7Message13encode_to_vecB8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(536) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 101 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call fastcc noundef i64 @_RNvXsC_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB5_8ManifestNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(536) %1) ; 5 uses
  %.not.i = icmp slt i64 %i.b, 0
  br i1 %.not.i, label %bb.e, label %bb.b, !prof !69

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !81145
  %i.d = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !81145 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %i.d to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.b) #80
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.d, %bb.b
  %.sroa.10.0 = phi i64 [ %i.f, %bb.d ], [ 1, %bb.b ]
  %i.g = inttoptr i64 %.sroa.10.0 to ptr
  store i64 %i.b, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 35 uses
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 98 uses
  store i64 0, ptr %i.i, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81147)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !81146, !noalias !81147, !nonnull !68, !noundef !68 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !81146, !noalias !81147, !noundef !68 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.m, 176
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit, %.noexc
  %.sroa.0.0125.i = phi ptr [ %i.p, %.noexc ], [ %i.k, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit ] ; 2 uses
  invoke fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i32 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.0.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0125.i, i64 176 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.n
  br i1 %i.q, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !81146, !noalias !81147, !nonnull !68, !noundef !68 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !81146, !noalias !81147, !noundef !68 ; 2 uses
  %.idx133.i = mul nuw nsw i64 %i.u, 224
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx133.i
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %._crit_edge129.i, label %.lr.ph128.i

.lr.ph128.i:                                      ; preds = %._crit_edge.i, %.noexc3
  %.sroa.02.0126.i = phi ptr [ %i.x, %.noexc3 ], [ %i.s, %._crit_edge.i ] ; 2 uses
  invoke fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentINtNtCs40k4W9msRzi_5alloc3vec3VechEEBU_(i32 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %.sroa.02.0126.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc3 unwind label %.loopexit.split-lp.loopexit

.noexc3:                                          ; preds = %.lr.ph128.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.02.0126.i, i64 224 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.v
  br i1 %i.y, label %._crit_edge129.i, label %.lr.ph128.i

._crit_edge129.i:                                 ; preds = %.noexc3, %._crit_edge.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 496
end_hunk_4
begin_hunk_5_@_RNvYNtNtNtCs9KQ7US1M400_11lance_table6format2pb8ManifestNtNtCskAO0uQb8M5a_5prost7message7Message13encode_to_vecB8_:bb.a
  br i1 %i.nw, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i, label %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i.i, !prof !71

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.at
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.pre18.i110.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc56:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i
  %i.nx = load i64, ptr %i.i, align 8, !alias.scope !81453, !noalias !81454, !noundef !68
  %.pre27.pre.i.i = load i64, ptr %i.a, align 8, !range !72, !alias.scope !81447, !noalias !81146
  br label %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i.i

_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %.noexc56, %bb.at
  %.pre27.i.i = phi i64 [ %.pre27.pre.i.i, %.noexc56 ], [ %.pre28.i111.i, %bb.at ] ; 2 uses
  %.sink1.i.i.i = phi i64 [ %i.nx, %.noexc56 ], [ %.pre18.i110.i, %bb.at ] ; 3 uses
  %i.ny = icmp sgt i64 %.sink1.i.i.i, -1
  call void @llvm.assume(i1 %i.ny)
  %i.nz = load ptr, ptr %i.h, align 8, !alias.scope !81453, !noalias !81454, !nonnull !68, !noundef !68
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 %.sink1.i.i.i
  store i8 -94, ptr %i.oa, align 1, !noalias !81455
  %i.ob = add nuw i64 %.sink1.i.i.i, 1            ; 3 uses
  store i64 %i.ob, ptr %i.i, align 8, !alias.scope !81453, !noalias !81454
  call void @llvm.experimental.noalias.scope.decl(metadata !81456)
  call void @llvm.experimental.noalias.scope.decl(metadata !81457)
  call void @llvm.experimental.noalias.scope.decl(metadata !81458)
  call void @llvm.experimental.noalias.scope.decl(metadata !81459)
  call void @llvm.experimental.noalias.scope.decl(metadata !81460)
  %i.oc = icmp eq i64 %.pre27.i.i, %i.ob
  br i1 %i.oc, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i113.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit114.i, !prof !71

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i113.i: ; preds = %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.pre27.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc57 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc57:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i113.i
  %i.od = load i64, ptr %i.i, align 8, !alias.scope !81461, !noalias !81462, !noundef !68
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit114.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit114.i: ; preds = %.noexc57, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i.i
  %.sink1.i6.i112.i = phi i64 [ %i.od, %.noexc57 ], [ %i.ob, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i.i ] ; 3 uses
  %i.oe = icmp sgt i64 %.sink1.i6.i112.i, -1
  call void @llvm.assume(i1 %i.oe)
  %i.of = load ptr, ptr %i.h, align 8, !alias.scope !81461, !noalias !81462, !nonnull !68, !noundef !68
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 %.sink1.i6.i112.i
  store i8 1, ptr %i.og, align 1, !noalias !81463
  %i.oh = add nuw i64 %.sink1.i6.i112.i, 1
  store i64 %i.oh, ptr %i.i, align 8, !alias.scope !81461, !noalias !81462
  %i.oi = icmp sgt i64 %.val21.i, -1
  call void @llvm.assume(i1 %i.oi)
  invoke fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %.val21.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit114.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val20.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !81464)
  call void @llvm.experimental.noalias.scope.decl(metadata !81465)
  call void @llvm.experimental.noalias.scope.decl(metadata !81466)
  call void @llvm.experimental.noalias.scope.decl(metadata !81467)
  %i.oj = load i64, ptr %i.i, align 8, !alias.scope !81468, !noalias !81469, !noundef !68 ; 5 uses
  %i.ok = load i64, ptr %i.a, align 8, !range !72, !alias.scope !81468, !noalias !81469, !noundef !68
  %i.ol = sub i64 %i.ok, %i.oj
  %i.om = icmp ugt i64 %.val21.i, %i.ol
  br i1 %i.om, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i68.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i66.i, !prof !71

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i68.i: ; preds = %.noexc58
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.oj, i64 noundef range(i64 0, -9223372036854775808) %.val21.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i68.i
  %i.on = load i64, ptr %i.i, align 8, !alias.scope !81470, !noalias !81469, !noundef !68 ; 2 uses
  %i.oo = icmp sgt i64 %i.on, -1
  call void @llvm.assume(i1 %i.oo)
  br label %bb.au

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i66.i: ; preds = %.noexc58
  %i.op = icmp sgt i64 %i.oj, -1
  call void @llvm.assume(i1 %i.op)
  %.not.i.i.i.i.i67.i = icmp samesign eq i64 %.val21.i, 0
  br i1 %.not.i.i.i.i.i67.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit69.i, label %bb.au

bb.au:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i66.i, %.noexc59
  %i.oq = phi i64 [ %i.on, %.noexc59 ], [ %i.oj, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i66.i ] ; 2 uses
  %i.or = load ptr, ptr %i.h, align 8, !alias.scope !81470, !noalias !81469, !nonnull !68, !noundef !68
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.oq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.os, ptr nonnull readonly align 1 %.val20.i, i64 range(i64 0, -9223372036854775808) %.val21.i, i1 false), !noalias !81471
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit69.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit69.i: ; preds = %bb.au, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i66.i
  %i.ot = phi i64 [ %i.oq, %bb.au ], [ %i.oj, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i66.i ]
  %i.ou = add nuw i64 %i.ot, %.val21.i
  store i64 %i.ou, ptr %i.i, align 8, !alias.scope !81470, !noalias !81469
  br label %bb.av

bb.av:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit69.i, %.noexc55
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ow = load i64, ptr %i.ov, align 8, !range !76, !alias.scope !81146, !noalias !81147, !noundef !68
  %i.ox = trunc nuw i64 %i.ow to i1
  br i1 %i.ox, label %bb.aw, label %_RINvXsC_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_8ManifestNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEEBa_.exit

bb.aw:                                            ; preds = %bb.av
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i = load i64, ptr %i.oy, align 8, !alias.scope !81146, !noalias !81147
  call void @llvm.experimental.noalias.scope.decl(metadata !81472)
  %.pre18.i115.i = load i64, ptr %i.i, align 8, !alias.scope !81473, !noalias !81146 ; 3 uses
  %.pre28.i116.i = load i64, ptr %i.a, align 8, !range !72, !alias.scope !81473, !noalias !81146 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81474)
  call void @llvm.experimental.noalias.scope.decl(metadata !81475)
  call void @llvm.experimental.noalias.scope.decl(metadata !81476)
  call void @llvm.experimental.noalias.scope.decl(metadata !81477)
  call void @llvm.experimental.noalias.scope.decl(metadata !81478)
  %i.oz = icmp eq i64 %.pre28.i116.i, %.pre18.i115.i
  br i1 %i.oz, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i122.i, label %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i117.i, !prof !71

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i122.i: ; preds = %bb.aw
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.pre18.i115.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i122.i
  %i.pa = load i64, ptr %i.i, align 8, !alias.scope !81479, !noalias !81480, !noundef !68
  %.pre27.pre.i123.i = load i64, ptr %i.a, align 8, !range !72, !alias.scope !81473, !noalias !81146
  br label %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i117.i

_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i117.i: ; preds = %.noexc60, %bb.aw
  %.pre27.i118.i = phi i64 [ %.pre27.pre.i123.i, %.noexc60 ], [ %.pre28.i116.i, %bb.aw ] ; 2 uses
  %.sink1.i.i119.i = phi i64 [ %i.pa, %.noexc60 ], [ %.pre18.i115.i, %bb.aw ] ; 3 uses
  %i.pb = icmp sgt i64 %.sink1.i.i119.i, -1
  call void @llvm.assume(i1 %i.pb)
  %i.pc = load ptr, ptr %i.h, align 8, !alias.scope !81479, !noalias !81480, !nonnull !68, !noundef !68
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 %.sink1.i.i119.i
  store i8 -88, ptr %i.pd, align 1, !noalias !81481
  %i.pe = add nuw i64 %.sink1.i.i119.i, 1         ; 3 uses
  store i64 %i.pe, ptr %i.i, align 8, !alias.scope !81479, !noalias !81480
  call void @llvm.experimental.noalias.scope.decl(metadata !81482)
  call void @llvm.experimental.noalias.scope.decl(metadata !81483)
  call void @llvm.experimental.noalias.scope.decl(metadata !81484)
  call void @llvm.experimental.noalias.scope.decl(metadata !81485)
  call void @llvm.experimental.noalias.scope.decl(metadata !81486)
  %i.pf = icmp eq i64 %.pre27.i118.i, %i.pe
  br i1 %i.pf, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i121.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit124.i, !prof !71

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i121.i: ; preds = %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i117.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.pre27.i118.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc61:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i121.i
  %i.pg = load i64, ptr %i.i, align 8, !alias.scope !81487, !noalias !81488, !noundef !68
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit124.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit124.i: ; preds = %.noexc61, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i117.i
  %.sink1.i6.i120.i = phi i64 [ %i.pg, %.noexc61 ], [ %i.pe, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i117.i ] ; 3 uses
  %i.ph = icmp sgt i64 %.sink1.i6.i120.i, -1
  call void @llvm.assume(i1 %i.ph)
  %i.pi = load ptr, ptr %i.h, align 8, !alias.scope !81487, !noalias !81488, !nonnull !68, !noundef !68
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 %.sink1.i6.i120.i
  store i8 1, ptr %i.pj, align 1, !noalias !81489
  %i.pk = add nuw i64 %.sink1.i6.i120.i, 1
  store i64 %i.pk, ptr %i.i, align 8, !alias.scope !81487, !noalias !81488
  invoke fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvXsC_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_8ManifestNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEEBa_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph131.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph128.i
  %lpad.loopexit69 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.i
  %lpad.loopexit72 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i73.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit74.i, %.noexc7, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i78.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit79.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i, %_RNvXs4C_NtCs1nbc6HIrAcO_11prost_types8protobufNtB6_9TimestampNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i5.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit6.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i83.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit84.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i88.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit89.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i93.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit94.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i98.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit99.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i103.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit104.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i36.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i49.i, %_RNvXs5_NtNtNtCs9KQ7US1M400_11lance_table6format2pb8manifestNtB5_13WriterVersionNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i48.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i46.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i26.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit27.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i13.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i31.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit32.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i17.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i36.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit37.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i21.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i108.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit109.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i65.i, %_RNvXse_NtNtNtCs9KQ7US1M400_11lance_table6format2pb8manifestNtB5_17DataStorageFormatNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i64.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i59.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i63.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i13.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit14.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i8.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb8manifest17DataStorageFormatINtNtCs40k4W9msRzi_5alloc3vec3VechEEBW_.exit.i, %._crit_edge132.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i113.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit114.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i68.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i122.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i121.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit124.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit69, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit72, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.pl = icmp eq i64 %.val, 0
  br i1 %i.pl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit, label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp
  %.val1 = load ptr, ptr %i.h, align 8, !nonnull !68, !noundef !68
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit

_RINvXsC_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_8ManifestNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEEBa_.exit: ; preds = %bb.av, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit124.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.ax, %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCscI6d9CVNmLh_4core3str5error9Utf8ErrorNtNtB8_5error5Error11descriptionCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @2127, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCscI6d9CVNmLh_4core3str5error9Utf8ErrorNtNtB8_5error5Error5causeCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCscI6d9CVNmLh_4core3str5error9Utf8ErrorNtNtB8_5error5Error6sourceCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCscI6d9CVNmLh_4core3str5error9Utf8ErrorNtNtB8_5error5Error7provideCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCscI6d9CVNmLh_4core3str5error9Utf8ErrorNtNtB8_5error5Error7type_idCs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #37 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @2137, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @2127, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #37 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @2138, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring14current_thread24UringCurrentThreadReaderNtNtB8_6traits6Reader10get_streamCs9KQ7US1M400_11lance_table(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 0, ptr %i.b, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !81492
  %i.c = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !81492 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring14current_thread24UringCurrentThreadReaderNtNtBP_6traits6Reader10get_stream0E3newCs9KQ7US1M400_11lance_table.exit, !prof !75

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #80
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring14current_thread24UringCurrentThreadReaderNtNtBM_6traits6Reader10get_stream0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #81
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring14current_thread24UringCurrentThreadReaderNtNtBP_6traits6Reader10get_stream0E3newCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr @2139, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring14current_thread24UringCurrentThreadReaderNtNtB8_6traits6Reader16get_range_streamCs9KQ7US1M400_11lance_table(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !81495
  %i.e = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !81495 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring14current_thread24UringCurrentThreadReaderNtNtBP_6traits6Reader16get_range_stream0E3newCs9KQ7US1M400_11lance_table.exit, !prof !75

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #80
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring14current_thread24UringCurrentThreadReaderNtNtBM_6traits6Reader16get_range_stream0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #81
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring14current_thread24UringCurrentThreadReaderNtNtBP_6traits6Reader16get_range_stream0E3newCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @2140, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring14current_thread24UringCurrentThreadReaderNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf12deep_size_ofCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCs63DIHKhvmTb_10lance_core8deepsizeNtB4_7Context3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a)
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val2 = load i64, ptr %i.b, align 8, !noundef !68 ; 4 uses
  %i.c = icmp eq i64 %.val2, 0
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECs9KQ7US1M400_11lance_table.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = shl i64 %.val2, 3
  %i.e = icmp slt i64 %.val2, 2305843009213693950
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i64 %i.d, -16                        ; 2 uses
  %i.g = add i64 %i.f, 16                         ; 2 uses
  %i.h = add nsw i64 %.val2, 17
  %i.i = add i64 %i.h, %i.g                       ; 4 uses
  %i.j = icmp uge i64 %i.i, %i.g
  %i.k = icmp ult i64 %i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %i.j)
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECs9KQ7US1M400_11lance_table.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.m = sub nuw nsw i64 -16, %i.f
  %i.n = getelementptr inbounds i8, ptr %.val, i64 %i.m
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECs9KQ7US1M400_11lance_table.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.a, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 32
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtB8_6traits6Reader10get_streamCs9KQ7US1M400_11lance_table(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 0, ptr %i.b, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !81498
  %i.c = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !81498 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtBP_6traits6Reader10get_stream0E3newCs9KQ7US1M400_11lance_table.exit, !prof !75

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #80
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtBM_6traits6Reader10get_stream0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #81
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtBP_6traits6Reader10get_stream0E3newCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr @2141, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtB8_6traits6Reader16get_range_streamCs9KQ7US1M400_11lance_table(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !81501
  %i.e = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !81501 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtBP_6traits6Reader16get_range_stream0E3newCs9KQ7US1M400_11lance_table.exit, !prof !75

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #80
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtBM_6traits6Reader16get_range_stream0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #81
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtBP_6traits6Reader16get_range_stream0E3newCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @2142, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf12deep_size_ofCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCs63DIHKhvmTb_10lance_core8deepsizeNtB4_7Context3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a)
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val2 = load i64, ptr %i.b, align 8, !noundef !68 ; 4 uses
  %i.c = icmp eq i64 %.val2, 0
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECs9KQ7US1M400_11lance_table.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = shl i64 %.val2, 3
  %i.e = icmp slt i64 %.val2, 2305843009213693950
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i64 %i.d, -16                        ; 2 uses
  %i.g = add i64 %i.f, 16                         ; 2 uses
  %i.h = add nsw i64 %.val2, 17
  %i.i = add i64 %i.h, %i.g                       ; 4 uses
  %i.j = icmp uge i64 %i.i, %i.g
  %i.k = icmp ult i64 %i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %i.j)
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECs9KQ7US1M400_11lance_table.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.m = sub nuw nsw i64 -16, %i.f
  %i.n = getelementptr inbounds i8, ptr %.val, i64 %i.m
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECs9KQ7US1M400_11lance_table.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.a, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 32
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvYNtNtNtNtCsgczF5crJ4sT_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.0.042 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.117, %bb.j ] ; 3 uses
  %.sroa.6.041 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.115, %bb.j ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = tail call { i64, ptr } @_RNvXs3_NtNtNtCsgczF5crJ4sT_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write5write(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.042, i64 noundef %.sroa.6.041) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 11 uses
  store i64 %i.e, ptr %i.a, align 8
  store ptr %i.f, ptr %i.c, align 8
  %i.g = trunc nuw i64 %i.e to i1
  %i.h = ptrtoint ptr %i.f to i64                 ; 7 uses
  br i1 %i.g, label %bb.c, label %bb.d

.loopexit:                                        ; preds = %bb.j, %bb.a, %bb.f
  %.sroa.07.0 = phi ptr [ %.sroa.07.1, %bb.f ], [ null, %bb.a ], [ null, %bb.j ]
  ret ptr %.sroa.07.0

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.h, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.i
    i64 0, label %.split37
    i64 1, label %.split36
  ], !prof !149

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %i.f, null
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult i64 %.sroa.6.041, %i.h
  br i1 %i.k, label %bb.g, label %bb.h, !prof !71

bb.f:                                             ; preds = %bb.i, %.split, %.split36, %.split37, %bb.d
  %.sroa.07.1 = phi ptr [ @2144, %bb.d ], [ %i.f, %.split37 ], [ %i.f, %.split36 ], [ %i.f, %.split ], [ %i.f, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %.sroa.6.041, i64 noundef %.sroa.6.041, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2145) #80
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.l = sub nuw nsw i64 %.sroa.6.041, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.042, i64 %i.h
  br label %bb.j

.split:                                           ; preds = %bb.c
  %.mask = and i64 %i.h, -4294967296
  %i.n = icmp eq i64 %.mask, 17179869184
  br i1 %i.n, label %.thread, label %bb.f

.split37:                                         ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !194, !noundef !68
  %i.q = icmp eq i8 %i.p, 35
  br i1 %i.q, label %.thread, label %bb.f

.split36:                                         ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.f, i64 15
  %i.s = load i8, ptr %i.r, align 8, !range !194, !noundef !68
  %i.t = icmp eq i8 %i.s, 35
  br i1 %i.t, label %.thread, label %bb.f

bb.i:                                             ; preds = %bb.c
  %i.u = lshr i64 %i.h, 32
  %i.v = icmp ult ptr %i.f, inttoptr (i64 180388626432 to ptr)
  %switch.idx.cast.i.i = trunc i64 %i.u to i8
  %spec.select.i.i = select i1 %i.v, i8 %switch.idx.cast.i.i, i8 -1 ; 2 uses
  %i.w = icmp ne i8 %spec.select.i.i, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp eq i8 %spec.select.i.i, 35
  br i1 %i.x, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.i, %.split, %.split36, %.split37
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %.thread
  %.sroa.0.117 = phi ptr [ %.sroa.0.042, %.thread ], [ %i.m, %bb.h ]
  %.sroa.6.115 = phi i64 [ %.sroa.6.041, %.thread ], [ %i.l, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = icmp eq i64 %.sroa.6.115, 0
  br i1 %i.y, label %.loopexit, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvYNtNtNtNtCsgczF5crJ4sT_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef ptr @_RNvYNtNtNtNtCsgczF5crJ4sT_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1389, i64 noundef 61)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, i64 } { ptr @2127, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCs9KQ7US1M400_11lance_table(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #37 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @2146, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #60

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #60

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #61

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #62

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #60

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #61

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #63

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #61

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #64

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #65

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtCs1nbc6HIrAcO_11prost_types8type_urlNtB2_7TypeUrl3new(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #66

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() unnamed_addr #67

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #64

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs3PfUT229lOd_12object_store4path5partsNtB2_8PathPart5parse(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs4XDKJNDGLq7_5bytes5bytes13static_to_vec(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs4XDKJNDGLq7_5bytes5bytes13static_to_mut(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs17_NtCs9ipI1vyGjpZ_12tracing_core5fieldjNtB6_5Value6record(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local5defer(ptr noundef nonnull align 128, ptr noalias noundef align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs_NtNtCs1akgR21QTtx_7roaring6bitmap9containerNtB4_9Container3len(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #68

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef range(i8 0, 42), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #69

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store12bitmap_store5ErrorECsbjTsVCnQnhv_12lance_select(i8 noundef range(i8 0, 42), i64 noundef, i64 noundef) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newNtNtNtNtCs1akgR21QTtx_7roaring6bitmap5store11array_store5ErrorECsbjTsVCnQnhv_12lance_select(i8 noundef range(i8 0, 42), i64 noundef, i1 noundef zeroext) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBd_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB12_6marker4SyncNtB1z_4SendEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB5_5Error4__new(i8 noundef range(i8 0, 42), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs8_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE4from(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1f_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1B_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCscI6d9CVNmLh_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #70

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 4) i8 @_RNvMs7_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketNtB5_8RehashOp3new(i64 noundef, ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #61

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsl_Cs9ZJqkc64Jh8_14event_listenerNtB5_4Task4wake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_6Schema9field_ids(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 4) i8 @_RNvXNtCskTBvlRM5ILY_4moka6commonNtB2_11CacheRegionINtNtCscI6d9CVNmLh_4core7convert4FromjE4from(i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedNtNtCskTBvlRM5ILY_4moka6common11CacheRegionjECsDbzj4lZ5l5_11goosefs_sdk(i8 noundef range(i8 0, 3), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #68

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCsgczF5crJ4sT_3std4pathNtB6_4Path5__join(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtNtCs63DIHKhvmTb_10lance_core5cache3keyNtB5_10KeyBuilder3new(ptr dead_on_unwind noalias noundef writable sret([1920 x i8]) align 8 captures(none) dereferenceable(1920), ptr noalias noundef readonly align 1 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64, i64) #65

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtCslnBYTBsvsQk_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #65

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCskfeRsqx2rfd_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathINtNtCscI6d9CVNmLh_4core7convert4FromReE4from(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtNtCsgczF5crJ4sT_3std2io5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

end_hunk_5
