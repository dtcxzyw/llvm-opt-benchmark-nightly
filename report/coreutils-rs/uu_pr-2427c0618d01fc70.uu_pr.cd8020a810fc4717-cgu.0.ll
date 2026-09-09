Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_pr-2427c0618d01fc70.uu_pr.cd8020a810fc4717-cgu.0?download=true
inline.NumInlined: 1527
inline.NumDeleted: 885
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB15_11sort_by_keyTjjENCNvB17_20get_file_line_groups0E0EB17_:bb.a
  call void @llvm.assume(i1 %lcmp.mod349)
  %i.mh = xor i64 %.sroa.06.014.i59.epil.init, -1
  %i.mi = getelementptr [48 x i8], ptr %i.kl, i64 %i.mh
  %i.mj = getelementptr [48 x i8], ptr %i.lx, i64 %.sroa.06.014.i59.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mj, ptr noundef nonnull align 8 dereferenceable(48) %i.mi, i64 48, i1 false), !alias.scope !1429
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionNtCshDScVpnq8df_5uu_pr8FileLineNCINvB2_9quicksortB1d_NCINvMNtCs7tKScEop1B6_5alloc5sliceSB1d_11sort_by_keyTjjENCNvB1f_20get_file_line_groups0E0E0EB1f_.exit

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionNtCshDScVpnq8df_5uu_pr8FileLineNCINvB2_9quicksortB1d_NCINvMNtCs7tKScEop1B6_5alloc5sliceSB1d_11sort_by_keyTjjENCNvB1f_20get_file_line_groups0E0E0EB1f_.exit: ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionNtCshDScVpnq8df_5uu_pr8FileLineNCINvB2_9quicksortB1d_NCINvMNtCs7tKScEop1B6_5alloc5sliceSB1d_11sort_by_keyTjjENCNvB1f_20get_file_line_groups0E0E0EB1f_.exit.unr-lcssa, %.epil.preheader340
  %i.mk = icmp ugt i64 %.sroa.11.1.lcssa.i55, %.sroa.16.0102255
  br i1 %i.mk, label %bb.ai, label %.outer, !prof !8

.outer._crit_edge.thread:                         ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtCshDScVpnq8df_5uu_pr8FileLineNCINvMNtCs7tKScEop1B6_5alloc5sliceSB1s_11sort_by_keyTjjENCNvB1u_20get_file_line_groups0E0EB1u_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionNtCshDScVpnq8df_5uu_pr8FileLineNCINvB2_9quicksortB1d_NCINvMNtCs7tKScEop1B6_5alloc5sliceSB1d_11sort_by_keyTjjENCNvB1f_20get_file_line_groups0E0E0EB1f_.exit
  %i.ml = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph109, i64 %.sroa.11.1.lcssa.i55 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.mm = icmp ult i64 %i.lw, 33
  br i1 %i.mm, label %.outer._crit_edge, label %.lr.ph

bb.ai:                                            ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort16stable_partitionNtCshDScVpnq8df_5uu_pr8FileLineNCINvB2_9quicksortB1d_NCINvMNtCs7tKScEop1B6_5alloc5sliceSB1d_11sort_by_keyTjjENCNvB1f_20get_file_line_groups0E0E0EB1f_.exit
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i55, i64 noundef %.sroa.16.0102255, i64 noundef %.sroa.16.0102255, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #32
  unreachable
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 49) %4) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !6, !alias.scope !1434, !noundef !4 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1434
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !1434
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCshDScVpnq8df_5uu_pr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 49) %4) #30, !noalias !1434
  %i.h = load i64, ptr %i.a, align 8, !range !7, !noalias !1434, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !20, !noalias !1434, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !1434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1434
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #31
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !1434, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1434
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !1434
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !1434
  ret void
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0CshDScVpnq8df_5uu_pr(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.b = call noundef ptr @_RNvXs_NtNtNtCs3JjgEOiFeOI_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error12context_impl(ptr noundef %1, ptr noundef %i.b) #33
  ret ptr %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvCshDScVpnq8df_5uu_pr13build_optionss1_000B7_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.not.i = icmp slt i64 %2, 0
  br i1 %.not.i, label %bb.d, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !1452
  %i.j = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, 9) 1) #30, !noalias !1452 ; 18 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %2) #31
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %1, i64 %2, i1 false)
  %cond = icmp eq i64 %2, 1
  %i.l = load i8, ptr %i.j, align 1, !alias.scope !1453, !noalias !1454 ; 2 uses
  br i1 %cond, label %bb.f, label %thread-pre-split.i

bb.f:                                             ; preds = %bb.e
  switch i8 %i.l, label %bb.m [
    i8 43, label %.thread
    i8 45, label %.thread
  ]

thread-pre-split.i:                               ; preds = %bb.e
  switch i8 %i.l, label %bb.m [
    i8 43, label %bb.g
    i8 45, label %bb.h
  ]

bb.g:                                             ; preds = %thread-pre-split.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = add nsw i64 %2, -1
  br label %bb.m

bb.h:                                             ; preds = %thread-pre-split.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  %i.p = add nsw i64 %2, -1                       ; 2 uses
  %i.q = icmp samesign ult i64 %2, 17
  br i1 %i.q, label %.lr.ph141.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.k
  %.sroa.0.1136.i = phi ptr [ %i.r, %bb.k ], [ %i.o, %bb.h ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.s, %bb.k ], [ %i.p, %bb.h ]
  %.sroa.084.0134.i = phi i64 [ %i.ad, %bb.k ], [ 0, %bb.h ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.s = add nsw i64 %.sroa.26.1135.i, -1         ; 2 uses
  %i.t = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 0
  %i.v = extractvalue { i64, i1 } %i.t, 1
  br i1 %i.v, label %.thread, label %bb.i, !prof !8

bb.i:                                             ; preds = %.lr.ph.i
  %i.w = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !1453, !noalias !1454, !noundef !4
  %i.x = zext i8 %i.w to i32
  %i.y = add nsw i32 %i.x, -48                    ; 2 uses
  %i.z = icmp ult i32 %i.y, 10
  br i1 %i.z, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.u, i64 %i.aa) ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  br i1 %i.ac, label %.thread, label %bb.k, !prof !8

bb.k:                                             ; preds = %bb.j
  %i.ad = extractvalue { i64, i1 } %i.ab, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.s, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %bb.h, %bb.l
  %.sroa.0.2140.i = phi ptr [ %i.ak, %bb.l ], [ %i.o, %bb.h ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.aj, %bb.l ], [ %i.p, %bb.h ]
  %.sroa.084.2138.i = phi i64 [ %i.am, %bb.l ], [ 0, %bb.h ]
  %i.ae = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !1453, !noalias !1454, !noundef !4
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.af, -48                  ; 2 uses
  %i.ah = icmp ult i32 %i.ag, 10
  br i1 %i.ah, label %bb.l, label %.thread

bb.l:                                             ; preds = %.lr.ph141.i
  %i.ai = mul i64 %.sroa.084.2138.i, 10
  %i.aj = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.al = zext nneg i32 %i.ag to i64
  %i.am = sub i64 %i.ai, %i.al                    ; 2 uses
  %.not103.i = icmp eq i64 %i.aj, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.m:                                             ; preds = %bb.f, %bb.g, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.n, %bb.g ], [ %2, %thread-pre-split.i ], [ %2, %bb.f ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.m, %bb.g ], [ %i.j, %thread-pre-split.i ], [ %i.j, %bb.f ] ; 2 uses
  %i.an = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.an, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.m
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.m, %bb.p
  %.sroa.0.3145.i = phi ptr [ %i.ao, %bb.p ], [ %.sroa.0.0.i, %bb.m ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.ap, %bb.p ], [ %.sroa.26.0.i, %bb.m ]
  %.sroa.084.3143.i = phi i64 [ %i.ba, %bb.p ], [ 0, %bb.m ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.ap = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.aq = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.ar = extractvalue { i64, i1 } %i.aq, 0
  %i.as = extractvalue { i64, i1 } %i.aq, 1
  br i1 %i.as, label %.thread, label %bb.n, !prof !8

bb.n:                                             ; preds = %.preheader111.i
  %i.at = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !1453, !noalias !1454, !noundef !4
  %i.au = zext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -48                  ; 2 uses
  %i.aw = icmp ult i32 %i.av, 10
  br i1 %i.aw, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.ax = zext nneg i32 %i.av to i64
  %i.ay = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ar, i64 %i.ax) ; 2 uses
  %i.az = extractvalue { i64, i1 } %i.ay, 1
  br i1 %i.az, label %.thread, label %bb.p, !prof !8

bb.p:                                             ; preds = %bb.o
  %i.ba = extractvalue { i64, i1 } %i.ay, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.ap, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.q
  %.sroa.0.4149.i = phi ptr [ %i.bh, %bb.q ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.bg, %bb.q ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.bj, %bb.q ], [ 0, %.preheader.i ]
  %i.bb = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !1453, !noalias !1454, !noundef !4
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add nsw i32 %i.bc, -48                  ; 2 uses
  %i.be = icmp ult i32 %i.bd, 10
  br i1 %i.be, label %bb.q, label %.thread

bb.q:                                             ; preds = %.lr.ph150.i
  %i.bf = mul i64 %.sroa.084.4147.i, 10
  %i.bg = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.bi = zext nneg i32 %i.bd to i64
  %i.bj = add i64 %i.bf, %i.bi                    ; 2 uses
  %.not105.i = icmp eq i64 %i.bg, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.thread:                                          ; preds = %.lr.ph.i, %bb.j, %bb.i, %.lr.ph141.i, %.preheader111.i, %bb.n, %bb.o, %.lr.ph150.i, %bb.f, %bb.f, %bb.b
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.b ], [ %i.j, %.preheader111.i ], [ %i.j, %.lr.ph150.i ], [ %i.j, %bb.f ], [ %i.j, %.lr.ph141.i ], [ %i.j, %bb.f ], [ %i.j, %bb.o ], [ %i.j, %bb.n ], [ %i.j, %bb.i ], [ %i.j, %bb.j ], [ %i.j, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %2) #33
  %i.bk = load i8, ptr %i.e, align 8, !range !5, !noundef !4
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.t, label %bb.u

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.k, %bb.l, %bb.p, %bb.q, %.preheader.i
  %.sroa.155.0 = phi i64 [ %i.ba, %bb.p ], [ %i.am, %bb.l ], [ %i.bj, %bb.q ], [ 0, %.preheader.i ], [ %i.ad, %bb.k ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 3, i64 noundef %.sroa.155.0) #30
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.bm = phi ptr [ %.ph, %bb.u ], [ %i.j, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 36, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bn = icmp eq i64 %2, 0
  br i1 %i.bn, label %.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !1455
  br label %.split

bb.t:                                             ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %2, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.ph, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %2, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 36, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.split

bb.u:                                             ; preds = %.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bp = load double, ptr %i.bo, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 3, double noundef %i.bp) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.r

.split:                                           ; preds = %bb.s, %bb.r, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 19) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.bq, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @28, ptr noundef nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  %.val.i.i17 = load i64, ptr %i.b, align 8, !range !6, !alias.scope !1458, !noundef !4 ; 2 uses
  %i.br = icmp eq i64 %.val.i.i17, 0
  br i1 %i.br, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit19, label %bb.v

bb.v:                                             ; preds = %.split
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i18 = load ptr, ptr %i.bs, align 8, !alias.scope !1458, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i18, i64 noundef %.val.i.i17, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !1458
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit19

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit19: ; preds = %.split, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  %.val.i.i20 = load i64, ptr %i.g, align 8, !range !6, !alias.scope !1461, !noundef !4 ; 2 uses
  %i.bt = icmp eq i64 %.val.i.i20, 0
  br i1 %i.bt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit22, label %bb.w

bb.w:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit19
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i.i21 = load ptr, ptr %i.bu, align 8, !alias.scope !1461, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i21, i64 noundef %.val.i.i20, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !1461
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit22

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit22: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit19, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCNvCshDScVpnq8df_5uu_pr13build_optionss7_0B3_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr nofree nonnull readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 2 uses
  %i.g = alloca [40 x i8], align 8                ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 5) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1476)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @40, ptr %i.e, align 8, !noalias !1477
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 5, ptr %i.i, align 8, !noalias !1477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1477
  %i.j = load i64, ptr %i.g, align 8, !range !13, !alias.scope !1476, !noalias !1478, !noundef !4
  %.not.i = icmp eq i64 %i.j, 2
  br i1 %.not.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !1478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1477
  store ptr %i.e, ptr %i.c, align 8, !noalias !1477
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCshDScVpnq8df_5uu_pr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1477
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.k, align 8, !noalias !1477
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1477
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #32, !noalias !1476
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1476, !noalias !1478, !align !11, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.h, label %bb.c, !prof !8

bb.c:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  switch i64 %i.q, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.o, align 1, !alias.scope !1479, !noalias !1480, !noundef !4 ; 2 uses
  switch i8 %i.r, label %bb.e [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.c
  %.pr.i = load i8, ptr %i.o, align 1, !alias.scope !1479, !noalias !1480
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split.i, %bb.d
  %i.s = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.r, %bb.d ]
  %cond.i = icmp eq i8 %i.s, 43                   ; 2 uses
  %i.t = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.q, %i.t          ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.u = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.u, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.e
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread7, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i35, i64 1
  %i.w = add nsw i64 %.sroa.15.1.i34, -1          ; 2 uses
  %.not52.i = icmp eq i64 %i.w, 0
  br i1 %.not52.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.e, %.preheader56.i
  %.sroa.0.1.i35 = phi ptr [ %i.v, %.preheader56.i ], [ %.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sroa.15.1.i34 = phi i64 [ %i.w, %.preheader56.i ], [ %.sroa.15.0.i, %bb.e ]
  %.sroa.042.0.i33 = phi i64 [ %i.af, %.preheader56.i ], [ 0, %bb.e ]
  %i.x = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i33, i64 10) ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.y, label %.loopexit, label %bb.f, !prof !8

bb.f:                                             ; preds = %.preheader56.i.preheader
  %i.z = extractvalue { i64, i1 } %i.x, 0         ; 2 uses
  %i.aa = load i8, ptr %.sroa.0.1.i35, align 1, !alias.scope !1479, !noalias !1480, !noundef !4
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %i.ad = icmp ugt i32 %i.ac, 9
  %i.ae = zext nneg i32 %i.ac to i64
  %i.af = add i64 %i.z, %i.ae                     ; 3 uses
  %i.ag = icmp ult i64 %i.af, %i.z
  %or.cond = select i1 %i.ad, i1 true, i1 %i.ag, !prof !10
  br i1 %or.cond, label %.loopexit, label %.preheader56.i, !prof !10

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.g
  %.sroa.0.269.i = phi ptr [ %i.an, %bb.g ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.am, %bb.g ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.ap, %bb.g ], [ 0, %.preheader.i ]
  %i.ah = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !1479, !noalias !1480, !noundef !4
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add nsw i32 %i.ai, -48                  ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvCshDScVpnq8df_5uu_pr2pr:bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2492)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %.val.i.i.i.i.i71 = load ptr, ptr %i.dj, align 8, !alias.scope !2493, !noalias !2494, !nonnull !4, !noundef !4 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %.val1.i.i.i.i.i72 = load i64, ptr %i.dk, align 8, !alias.scope !2493, !noalias !2494, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2495)
  %i.dl = icmp eq i64 %.val1.i.i.i.i.i72, 0
  br i1 %i.dl, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCshDScVpnq8df_5uu_pr8FileLineENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i.i.i.i78, label %.lr.ph.i.i.i.i.i.i.i73

.lr.ph.i.i.i.i.i.i.i73:                           ; preds = %.lr.ph.i.i.i69, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit.i.i.i.i.i.i.i77
  %.sroa.0.04.i.i.i.i.i.i.i74 = phi i64 [ %i.dn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit.i.i.i.i.i.i.i77 ], [ 0, %.lr.ph.i.i.i69 ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [48 x i8], ptr %.val.i.i.i.i.i71, i64 %.sroa.0.04.i.i.i.i.i.i.i74 ; 2 uses
  %i.dn = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i74, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i75 = load i64, ptr %i.dm, align 8, !range !6, !alias.scope !2496, !noalias !2497, !noundef !4 ; 2 uses
  %i.do = icmp eq i64 %.val.i.i.i.i.i.i.i75, 0
  br i1 %i.do, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit.i.i.i.i.i.i.i77, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i73
  %i.dp = getelementptr i8, ptr %i.dm, i64 8
  %.val3.i.i.i.i.i.i.i76 = load ptr, ptr %i.dp, align 8, !alias.scope !2495, !noalias !2497, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i76, i64 noundef %.val.i.i.i.i.i.i.i75, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2498
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit.i.i.i.i.i.i.i77

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit.i.i.i.i.i.i.i77: ; preds = %bb.aa, %.lr.ph.i.i.i.i.i.i.i73
  %i.dq = icmp eq i64 %i.dn, %.val1.i.i.i.i.i72
  br i1 %i.dq, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCshDScVpnq8df_5uu_pr8FileLineENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i.i.i.i78, label %.lr.ph.i.i.i.i.i.i.i73

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCshDScVpnq8df_5uu_pr8FileLineENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i.i.i.i78: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit.i.i.i.i.i.i.i77, %.lr.ph.i.i.i69
  %.val2.i.i.i.i.i79 = load i64, ptr %i.di, align 8, !range !6, !alias.scope !2493, !noalias !2494, !noundef !4 ; 2 uses
  %i.dr = icmp eq i64 %.val2.i.i.i.i.i79, 0
  br i1 %i.dr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTjINtNtCs7tKScEop1B6_5alloc3vec3VecNtCshDScVpnq8df_5uu_pr8FileLineEEEB1c_.exit.i.i.i80, label %bb.ab

bb.ab:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCshDScVpnq8df_5uu_pr8FileLineENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i.i.i.i78
  %i.ds = mul nuw i64 %.val2.i.i.i.i.i79, 48
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i71, i64 noundef %i.ds, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !2497
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTjINtNtCs7tKScEop1B6_5alloc3vec3VecNtCshDScVpnq8df_5uu_pr8FileLineEEEB1c_.exit.i.i.i80

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTjINtNtCs7tKScEop1B6_5alloc3vec3VecNtCshDScVpnq8df_5uu_pr8FileLineEEEB1c_.exit.i.i.i80: ; preds = %bb.ab, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCshDScVpnq8df_5uu_pr8FileLineENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i.i.i.i78
  %i.dt = icmp eq i64 %i.dh, %i.de
  br i1 %i.dt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSTjINtNtCs7tKScEop1B6_5alloc3vec3VecNtCshDScVpnq8df_5uu_pr8FileLineEEEB1d_.exit.i.i81, label %.lr.ph.i.i.i69

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSTjINtNtCs7tKScEop1B6_5alloc3vec3VecNtCshDScVpnq8df_5uu_pr8FileLineEEEB1d_.exit.i.i81: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTjINtNtCs7tKScEop1B6_5alloc3vec3VecNtCshDScVpnq8df_5uu_pr8FileLineEEEB1c_.exit.i.i.i80, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCshDScVpnq8df_5uu_pr8FileLineEEB1a_.exit
  %i.du = icmp eq i64 %.sroa.0178.0.copyload, 0
  br i1 %i.du, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterTjINtBG_3VecNtCshDScVpnq8df_5uu_pr8FileLineEEEEB1D_.exit82, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterTjINtBG_3VecNtCshDScVpnq8df_5uu_pr8FileLineEEEEB1D_.exit82.sink.split

bb.ac:                                            ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2499)
  %i.dv = icmp eq i64 %.sroa.9201.sroa.6.0.copyload, 0
  br i1 %i.dv, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCshDScVpnq8df_5uu_pr8FileLineENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i90, label %.lr.ph.i.i.i85

.lr.ph.i.i.i85:                                   ; preds = %bb.ac, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit.i.i.i89
  %.sroa.0.04.i.i.i86 = phi i64 [ %i.dx, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit.i.i.i89 ], [ 0, %bb.ac ] ; 2 uses
  %i.dw = getelementptr inbounds nuw [48 x i8], ptr %.sroa.9201.sroa.0.0.copyload, i64 %.sroa.0.04.i.i.i86 ; 2 uses
  %i.dx = add nuw nsw i64 %.sroa.0.04.i.i.i86, 1  ; 2 uses
  %.val.i.i.i87 = load i64, ptr %i.dw, align 8, !range !6, !alias.scope !2500, !noalias !2501, !noundef !4 ; 2 uses
  %i.dy = icmp eq i64 %.val.i.i.i87, 0
  br i1 %i.dy, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit.i.i.i89, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i85
  %i.dz = getelementptr i8, ptr %i.dw, i64 8
  %.val3.i.i.i88 = load ptr, ptr %i.dz, align 8, !alias.scope !2499, !noalias !2501, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i88, i64 noundef %.val.i.i.i87, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2502
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit.i.i.i89

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit.i.i.i89: ; preds = %bb.ad, %.lr.ph.i.i.i85
  %i.ea = icmp eq i64 %i.dx, %.sroa.9201.sroa.6.0.copyload
  br i1 %i.ea, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCshDScVpnq8df_5uu_pr8FileLineENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i90, label %.lr.ph.i.i.i85

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCshDScVpnq8df_5uu_pr8FileLineENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i90: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit.i.i.i89, %bb.ac
  %i.eb = icmp eq i64 %.sroa.6200.0.copyload, 0
  br i1 %i.eb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCshDScVpnq8df_5uu_pr8FileLineEEB1a_.exit92, label %bb.ae

bb.ae:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCshDScVpnq8df_5uu_pr8FileLineENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i90
  %i.ec = mul nuw i64 %.sroa.6200.0.copyload, 48
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9201.sroa.0.0.copyload, i64 noundef %i.ec, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !2501
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCshDScVpnq8df_5uu_pr8FileLineEEB1a_.exit92

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCshDScVpnq8df_5uu_pr8FileLineEEB1a_.exit92: ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCshDScVpnq8df_5uu_pr8FileLineENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i90, %bb.ae
  %i.ed = icmp eq ptr %i.bm, %i.ai
  br i1 %i.ed, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSTjINtNtCs7tKScEop1B6_5alloc3vec3VecNtCshDScVpnq8df_5uu_pr8FileLineEEEB1d_.exit.i.i, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterTjINtB7_3VecNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB1a_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterTjINtBG_3VecNtCshDScVpnq8df_5uu_pr8FileLineEEEEB1D_.exit82.sink.split: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSTjINtNtCs7tKScEop1B6_5alloc3vec3VecNtCshDScVpnq8df_5uu_pr8FileLineEEEB1d_.exit.i.i81, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTjIBw_NtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBN_.exit.i
  %i.ee = shl nuw i64 %.sroa.0178.0.copyload, 5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %i.ee, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !4
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterTjINtBG_3VecNtCshDScVpnq8df_5uu_pr8FileLineEEEEB1D_.exit82

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterTjINtBG_3VecNtCshDScVpnq8df_5uu_pr8FileLineEEEEB1D_.exit82: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterTjINtBG_3VecNtCshDScVpnq8df_5uu_pr8FileLineEEEEB1D_.exit82.sink.split, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTjIBw_NtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBN_.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSTjINtNtCs7tKScEop1B6_5alloc3vec3VecNtCshDScVpnq8df_5uu_pr8FileLineEEEB1d_.exit.i.i81
  %.val60 = load ptr, ptr %i.w, align 8, !nonnull !4, !align !11, !noundef !4 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.val60, i64 12 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !noundef !4
  %i.eh = add i32 %i.eg, -1                       ; 2 uses
  store i32 %i.eh, ptr %i.ef, align 4
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.af, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECshDScVpnq8df_5uu_pr.exit93

bb.af:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterTjINtBG_3VecNtCshDScVpnq8df_5uu_pr8FileLineEEEEB1D_.exit82
  store atomic i64 0, ptr %.val60 monotonic, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %.val60, i64 8 ; 2 uses
  %i.ek = atomicrmw xchg ptr %i.ej, i32 0 release, align 4
  %i.el = icmp eq i32 %i.ek, 2
  br i1 %i.el, label %bb.ag, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECshDScVpnq8df_5uu_pr.exit93, !prof !8

bb.ag:                                            ; preds = %bb.af
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ej) #30
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECshDScVpnq8df_5uu_pr.exit93

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECshDScVpnq8df_5uu_pr.exit93: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterTjINtBG_3VecNtCshDScVpnq8df_5uu_pr8FileLineEEEEB1D_.exit82, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.em = icmp eq i64 %.sroa.0207.0.copyload, 0
  br i1 %i.em, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECshDScVpnq8df_5uu_pr.exit, label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECshDScVpnq8df_5uu_pr.exit93
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.0207.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2503
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECshDScVpnq8df_5uu_pr.exit

bb.ai:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshDScVpnq8df_5uu_pr.exit, %bb.p
  %.sroa.4210.0.ph = phi i64 [ 1, %bb.p ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshDScVpnq8df_5uu_pr.exit ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4210.0.ph, i64 %i.bi) #31
  unreachable

bb.aj:                                            ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr align 1 %i.bh, i64 %i.bi, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %cond277 = icmp eq i64 %i.bi, 1
  %i.en = load i8, ptr %i.bk, align 1, !alias.scope !2504, !noalias !2505 ; 2 uses
  br i1 %cond277, label %bb.ak, label %thread-pre-split.i

bb.ak:                                            ; preds = %bb.aj
  switch i8 %i.en, label %bb.ar [
    i8 43, label %.loopexit284
    i8 45, label %.loopexit284
  ]

thread-pre-split.i:                               ; preds = %bb.aj
  switch i8 %i.en, label %bb.ar [
    i8 43, label %bb.al
    i8 45, label %bb.am
  ]

bb.al:                                            ; preds = %thread-pre-split.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.ep = add nsw i64 %i.bi, -1
  br label %bb.ar

bb.am:                                            ; preds = %thread-pre-split.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bk, i64 1 ; 2 uses
  %i.er = add nsw i64 %i.bi, -1                   ; 2 uses
  %i.es = icmp samesign ult i64 %i.bi, 17
  br i1 %i.es, label %.lr.ph141.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.am, %bb.ap
  %.sroa.0.1136.i = phi ptr [ %i.et, %bb.ap ], [ %i.eq, %bb.am ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.eu, %bb.ap ], [ %i.er, %bb.am ]
  %.sroa.084.0134.i = phi i64 [ %i.ff, %bb.ap ], [ 0, %bb.am ]
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.eu = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.ev = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.ew = extractvalue { i64, i1 } %i.ev, 0
  %i.ex = extractvalue { i64, i1 } %i.ev, 1
  br i1 %i.ex, label %.loopexit284, label %bb.an, !prof !8

bb.an:                                            ; preds = %.lr.ph.i
  %i.ey = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !2504, !noalias !2505, !noundef !4
  %i.ez = zext i8 %i.ey to i32
  %i.fa = add nsw i32 %i.ez, -48                  ; 2 uses
  %i.fb = icmp ult i32 %i.fa, 10
  br i1 %i.fb, label %bb.ao, label %.loopexit284

bb.ao:                                            ; preds = %bb.an
  %i.fc = zext nneg i32 %i.fa to i64
  %i.fd = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ew, i64 %i.fc) ; 2 uses
  %i.fe = extractvalue { i64, i1 } %i.fd, 1
  br i1 %i.fe, label %.loopexit284, label %bb.ap, !prof !8

bb.ap:                                            ; preds = %bb.ao
  %i.ff = extractvalue { i64, i1 } %i.fd, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.eu, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %bb.am, %bb.aq
  %.sroa.0.2140.i = phi ptr [ %i.fm, %bb.aq ], [ %i.eq, %bb.am ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.fl, %bb.aq ], [ %i.er, %bb.am ]
  %.sroa.084.2138.i = phi i64 [ %i.fo, %bb.aq ], [ 0, %bb.am ]
  %i.fg = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !2504, !noalias !2505, !noundef !4
  %i.fh = zext i8 %i.fg to i32
  %i.fi = add nsw i32 %i.fh, -48                  ; 2 uses
  %i.fj = icmp ult i32 %i.fi, 10
  br i1 %i.fj, label %bb.aq, label %.loopexit284

bb.aq:                                            ; preds = %.lr.ph141.i
  %i.fk = mul i64 %.sroa.084.2138.i, 10
  %i.fl = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.fn = zext nneg i32 %i.fi to i64
  %i.fo = sub i64 %i.fk, %i.fn                    ; 2 uses
  %.not103.i = icmp eq i64 %i.fl, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.ar:                                            ; preds = %bb.ak, %bb.al, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.ep, %bb.al ], [ %i.bi, %thread-pre-split.i ], [ %i.bi, %bb.ak ] ; 4 uses
  %.sroa.0.0.i98 = phi ptr [ %i.eo, %bb.al ], [ %i.bk, %thread-pre-split.i ], [ %i.bk, %bb.ak ] ; 2 uses
  %i.fp = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.fp, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.ar
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.ar, %bb.au
  %.sroa.0.3145.i = phi ptr [ %i.fq, %bb.au ], [ %.sroa.0.0.i98, %bb.ar ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.fr, %bb.au ], [ %.sroa.26.0.i, %bb.ar ]
  %.sroa.084.3143.i = phi i64 [ %i.gc, %bb.au ], [ 0, %bb.ar ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.fr = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.fs = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.ft = extractvalue { i64, i1 } %i.fs, 0
  %i.fu = extractvalue { i64, i1 } %i.fs, 1
  br i1 %i.fu, label %.loopexit284, label %bb.as, !prof !8

bb.as:                                            ; preds = %.preheader111.i
  %i.fv = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !2504, !noalias !2505, !noundef !4
  %i.fw = zext i8 %i.fv to i32
  %i.fx = add nsw i32 %i.fw, -48                  ; 2 uses
  %i.fy = icmp ult i32 %i.fx, 10
  br i1 %i.fy, label %bb.at, label %.loopexit284

bb.at:                                            ; preds = %bb.as
  %i.fz = zext nneg i32 %i.fx to i64
  %i.ga = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ft, i64 %i.fz) ; 2 uses
  %i.gb = extractvalue { i64, i1 } %i.ga, 1
  br i1 %i.gb, label %.loopexit284, label %bb.au, !prof !8

bb.au:                                            ; preds = %bb.at
  %i.gc = extractvalue { i64, i1 } %i.ga, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.fr, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.av
  %.sroa.0.4149.i = phi ptr [ %i.gj, %bb.av ], [ %.sroa.0.0.i98, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.gi, %bb.av ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.gl, %bb.av ], [ 0, %.preheader.i ]
  %i.gd = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !2504, !noalias !2505, !noundef !4
  %i.ge = zext i8 %i.gd to i32
  %i.gf = add nsw i32 %i.ge, -48                  ; 2 uses
  %i.gg = icmp ult i32 %i.gf, 10
  br i1 %i.gg, label %bb.av, label %.loopexit284

bb.av:                                            ; preds = %.lr.ph150.i
  %i.gh = mul i64 %.sroa.084.4147.i, 10
  %i.gi = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.gk = zext nneg i32 %i.gf to i64
  %i.gl = add i64 %i.gh, %i.gk                    ; 2 uses
  %.not105.i = icmp eq i64 %i.gi, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.loopexit284:                                     ; preds = %.lr.ph.i, %bb.ao, %bb.an, %.lr.ph141.i, %.preheader111.i, %bb.as, %bb.at, %.lr.ph150.i, %bb.ak, %bb.ak, %.thread
  %.ph = phi ptr [ %i.bk, %.preheader111.i ], [ %i.bk, %.lr.ph141.i ], [ %i.bk, %.lr.ph150.i ], [ %i.bk, %bb.ak ], [ inttoptr (i64 1 to ptr), %.thread ], [ %i.bk, %bb.ak ], [ %i.bk, %bb.at ], [ %i.bk, %bb.as ], [ %i.bk, %bb.an ], [ %i.bk, %bb.ao ], [ %i.bk, %.lr.ph.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.bi) #33
  %i.gm = load i8, ptr %i.n, align 8, !range !5, !noundef !4
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %bb.az, label %bb.ba

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.ap, %bb.aq, %bb.au, %bb.av, %.preheader.i
  %.sroa.15187.0 = phi i64 [ %i.gc, %bb.au ], [ %i.fo, %bb.aq ], [ %i.gl, %bb.av ], [ 0, %.preheader.i ], [ %i.ff, %bb.ap ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 5, i64 noundef %.sroa.15187.0) #30
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ba, %bb.az, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.go = phi ptr [ %.ph, %bb.az ], [ %.ph, %bb.ba ], [ %i.bk, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  %.sroa.08.0.not = phi i1 [ true, %bb.az ], [ false, %bb.ba ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.gp = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %i.ad, ptr noalias nofree noundef nonnull %i.g, i64 noundef 20) #30 ; 2 uses
  %i.gq = extractvalue { ptr, i64 } %i.gp, 0
  %i.gr = extractvalue { ptr, i64 } %i.gp, 1      ; 16 uses
  %.not.i99 = icmp slt i64 %i.gr, 0
  br i1 %.not.i99, label %bb.bb, label %bb.ax, !prof !10

bb.ax:                                            ; preds = %bb.aw
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %.thread261, label %bb.ay

.thread261:                                       ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.loopexit

bb.ay:                                            ; preds = %bb.ax
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !2506
  %i.gt = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.gr, i64 noundef range(i64 1, 9) 1) #30, !noalias !2506 ; 18 uses
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %bb.bb, label %bb.bc

bb.az:                                            ; preds = %.loopexit284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 %i.bi, ptr %i.m, align 8
  %.sroa.5183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.ph, ptr %.sroa.5183.0..sroa_idx, align 8
  %.sroa.8184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.bi, ptr %.sroa.8184.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.aw

bb.ba:                                            ; preds = %.loopexit284
  %i.gv = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.gw = load double, ptr %i.gv, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 5, double noundef %i.gw) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.aw

bb.bb:                                            ; preds = %bb.aw, %bb.ay
  %.sroa.4213.0.ph = phi i64 [ 1, %bb.ay ], [ 0, %bb.aw ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4213.0.ph, i64 %i.gr) #31
  unreachable

bb.bc:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gt, ptr align 1 %i.gq, i64 %i.gr, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %cond = icmp eq i64 %i.gr, 1
  %i.gx = load i8, ptr %i.gt, align 1, !alias.scope !2507, !noalias !2508 ; 2 uses
  br i1 %cond, label %bb.bd, label %thread-pre-split.i133

bb.bd:                                            ; preds = %bb.bc
  switch i8 %i.gx, label %bb.bk [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i133:                            ; preds = %bb.bc
  switch i8 %i.gx, label %bb.bk [
    i8 43, label %bb.be
    i8 45, label %bb.bf
  ]

bb.be:                                            ; preds = %thread-pre-split.i133
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 1
  %i.gz = add nsw i64 %i.gr, -1
  br label %bb.bk

bb.bf:                                            ; preds = %thread-pre-split.i133
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 1 ; 2 uses
  %i.hb = add nsw i64 %i.gr, -1                   ; 2 uses
  %i.hc = icmp samesign ult i64 %i.gr, 17
  br i1 %i.hc, label %.lr.ph141.i113, label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %bb.bf, %bb.bi
  %.sroa.0.1136.i104 = phi ptr [ %i.hd, %bb.bi ], [ %i.ha, %bb.bf ] ; 2 uses
  %.sroa.26.1135.i105 = phi i64 [ %i.he, %bb.bi ], [ %i.hb, %bb.bf ]
  %.sroa.084.0134.i106 = phi i64 [ %i.hp, %bb.bi ], [ 0, %bb.bf ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i104, i64 1
  %i.he = add nsw i64 %.sroa.26.1135.i105, -1     ; 2 uses
  %i.hf = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i106, i64 10) ; 2 uses
  %i.hg = extractvalue { i64, i1 } %i.hf, 0
  %i.hh = extractvalue { i64, i1 } %i.hf, 1
  br i1 %i.hh, label %.loopexit, label %bb.bg, !prof !8

bb.bg:                                            ; preds = %.lr.ph.i103
  %i.hi = load i8, ptr %.sroa.0.1136.i104, align 1, !alias.scope !2507, !noalias !2508, !noundef !4
  %i.hj = zext i8 %i.hi to i32
  %i.hk = add nsw i32 %i.hj, -48                  ; 2 uses
  %i.hl = icmp ult i32 %i.hk, 10
  br i1 %i.hl, label %bb.bh, label %.loopexit

bb.bh:                                            ; preds = %bb.bg
  %i.hm = zext nneg i32 %i.hk to i64
  %i.hn = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.hg, i64 %i.hm) ; 2 uses
  %i.ho = extractvalue { i64, i1 } %i.hn, 1
  br i1 %i.ho, label %.loopexit, label %bb.bi, !prof !8

bb.bi:                                            ; preds = %bb.bh
  %i.hp = extractvalue { i64, i1 } %i.hn, 0       ; 2 uses
  %.not102.i108 = icmp eq i64 %i.he, 0
  br i1 %.not102.i108, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit135, label %.lr.ph.i103

.lr.ph141.i113:                                   ; preds = %bb.bf, %bb.bj
  %.sroa.0.2140.i114 = phi ptr [ %i.hw, %bb.bj ], [ %i.ha, %bb.bf ] ; 2 uses
  %.sroa.26.2139.i115 = phi i64 [ %i.hv, %bb.bj ], [ %i.hb, %bb.bf ]
  %.sroa.084.2138.i116 = phi i64 [ %i.hy, %bb.bj ], [ 0, %bb.bf ]
  %i.hq = load i8, ptr %.sroa.0.2140.i114, align 1, !alias.scope !2507, !noalias !2508, !noundef !4
  %i.hr = zext i8 %i.hq to i32
  %i.hs = add nsw i32 %i.hr, -48                  ; 2 uses
  %i.ht = icmp ult i32 %i.hs, 10
  br i1 %i.ht, label %bb.bj, label %.loopexit

bb.bj:                                            ; preds = %.lr.ph141.i113
  %i.hu = mul i64 %.sroa.084.2138.i116, 10
  %i.hv = add nsw i64 %.sroa.26.2139.i115, -1     ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i114, i64 1
  %i.hx = zext nneg i32 %i.hs to i64
  %i.hy = sub i64 %i.hu, %i.hx                    ; 2 uses
  %.not103.i117 = icmp eq i64 %i.hv, 0
  br i1 %.not103.i117, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit135, label %.lr.ph141.i113

bb.bk:                                            ; preds = %bb.bd, %bb.be, %thread-pre-split.i133
  %.sroa.26.0.i118 = phi i64 [ %i.gz, %bb.be ], [ %i.gr, %thread-pre-split.i133 ], [ %i.gr, %bb.bd ] ; 4 uses
  %.sroa.0.0.i119 = phi ptr [ %i.gy, %bb.be ], [ %i.gt, %thread-pre-split.i133 ], [ %i.gt, %bb.bd ] ; 2 uses
  %i.hz = icmp samesign ult i64 %.sroa.26.0.i118, 16
  br i1 %i.hz, label %.preheader.i126, label %.preheader111.i120

.preheader.i126:                                  ; preds = %bb.bk
  %.not105146.i127 = icmp eq i64 %.sroa.26.0.i118, 0
  br i1 %.not105146.i127, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit135, label %.lr.ph150.i128

.preheader111.i120:                               ; preds = %bb.bk, %bb.bn
  %.sroa.0.3145.i121 = phi ptr [ %i.ia, %bb.bn ], [ %.sroa.0.0.i119, %bb.bk ] ; 2 uses
  %.sroa.26.3144.i122 = phi i64 [ %i.ib, %bb.bn ], [ %.sroa.26.0.i118, %bb.bk ]
  %.sroa.084.3143.i123 = phi i64 [ %i.im, %bb.bn ], [ 0, %bb.bk ]
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i121, i64 1
  %i.ib = add nsw i64 %.sroa.26.3144.i122, -1     ; 2 uses
  %i.ic = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i123, i64 10) ; 2 uses
  %i.id = extractvalue { i64, i1 } %i.ic, 0
  %i.ie = extractvalue { i64, i1 } %i.ic, 1
  br i1 %i.ie, label %.loopexit, label %bb.bl, !prof !8

bb.bl:                                            ; preds = %.preheader111.i120
  %i.if = load i8, ptr %.sroa.0.3145.i121, align 1, !alias.scope !2507, !noalias !2508, !noundef !4
  %i.ig = zext i8 %i.if to i32
  %i.ih = add nsw i32 %i.ig, -48                  ; 2 uses
  %i.ii = icmp ult i32 %i.ih, 10
  br i1 %i.ii, label %bb.bm, label %.loopexit

bb.bm:                                            ; preds = %bb.bl
  %i.ij = zext nneg i32 %i.ih to i64
  %i.ik = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.id, i64 %i.ij) ; 2 uses
  %i.il = extractvalue { i64, i1 } %i.ik, 1
  br i1 %i.il, label %.loopexit, label %bb.bn, !prof !8

bb.bn:                                            ; preds = %bb.bm
  %i.im = extractvalue { i64, i1 } %i.ik, 0       ; 2 uses
  %.not104.i125 = icmp eq i64 %i.ib, 0
  br i1 %.not104.i125, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit135, label %.preheader111.i120

.lr.ph150.i128:                                   ; preds = %.preheader.i126, %bb.bo
  %.sroa.0.4149.i129 = phi ptr [ %i.it, %bb.bo ], [ %.sroa.0.0.i119, %.preheader.i126 ] ; 2 uses
  %.sroa.26.4148.i130 = phi i64 [ %i.is, %bb.bo ], [ %.sroa.26.0.i118, %.preheader.i126 ]
  %.sroa.084.4147.i131 = phi i64 [ %i.iv, %bb.bo ], [ 0, %.preheader.i126 ]
  %i.in = load i8, ptr %.sroa.0.4149.i129, align 1, !alias.scope !2507, !noalias !2508, !noundef !4
  %i.io = zext i8 %i.in to i32
  %i.ip = add nsw i32 %i.io, -48                  ; 2 uses
  %i.iq = icmp ult i32 %i.ip, 10
  br i1 %i.iq, label %bb.bo, label %.loopexit

bb.bo:                                            ; preds = %.lr.ph150.i128
  %i.ir = mul i64 %.sroa.084.4147.i131, 10
  %i.is = add nsw i64 %.sroa.26.4148.i130, -1     ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i129, i64 1
  %i.iu = zext nneg i32 %i.ip to i64
  %i.iv = add i64 %i.ir, %i.iu                    ; 2 uses
  %.not105.i132 = icmp eq i64 %i.is, 0
  br i1 %.not105.i132, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit135, label %.lr.ph150.i128

.loopexit:                                        ; preds = %.lr.ph.i103, %bb.bh, %bb.bg, %.lr.ph141.i113, %.preheader111.i120, %bb.bl, %bb.bm, %.lr.ph150.i128, %bb.bd, %bb.bd, %.thread261
  %.ph269 = phi ptr [ %i.gt, %.preheader111.i120 ], [ %i.gt, %.lr.ph141.i113 ], [ %i.gt, %.lr.ph150.i128 ], [ %i.gt, %bb.bd ], [ inttoptr (i64 1 to ptr), %.thread261 ], [ %i.gt, %bb.bd ], [ %i.gt, %bb.bm ], [ %i.gt, %bb.bl ], [ %i.gt, %bb.bg ], [ %i.gt, %bb.bh ], [ %i.gt, %.lr.ph.i103 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph269, i64 noundef %i.gr) #33
  %i.iw = load i8, ptr %i.l, align 8, !range !5, !noundef !4
  %i.ix = trunc nuw i8 %i.iw to i1
  br i1 %i.ix, label %bb.br, label %bb.bs

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit135: ; preds = %bb.bi, %bb.bj, %bb.bn, %bb.bo, %.preheader.i126
  %.sroa.15194.0 = phi i64 [ %i.im, %bb.bn ], [ %i.hy, %bb.bj ], [ %i.iv, %bb.bo ], [ 0, %.preheader.i126 ], [ %i.hp, %bb.bi ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 5, i64 noundef %.sroa.15194.0) #30
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bs, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit135
  %i.iy = phi ptr [ %.ph269, %bb.bs ], [ %i.gt, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit135 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 41, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.iz = icmp eq i64 %i.gr, 0
  br i1 %i.iz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iy, i64 noundef %i.gr, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2509
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit

bb.br:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %i.gr, ptr %i.k, align 8
  %.sroa.5189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.ph269, ptr %.sroa.5189.0..sroa_idx, align 8
  %.sroa.8190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.gr, ptr %.sroa.8190.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 41, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit

bb.bs:                                            ; preds = %.loopexit
  %i.ja = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.jb = load double, ptr %i.ja, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 5, double noundef %i.jb) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bp

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit: ; preds = %bb.bq, %bb.bp, %bb.br
  %i.jc = icmp eq i64 %i.bi, 0
  %or.cond = or i1 %.sroa.08.0.not, %i.jc
  br i1 %or.cond, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit168, label %bb.ch

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit168: ; preds = %bb.ch, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.p, ptr %i.i, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.431.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2510
  store ptr %i.t, ptr %i.c, align 8, !noalias !2510
  %i.jd = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr null, ptr %i.jd, align 8, !noalias !2510
  %i.je = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @20, ptr noundef nonnull @47, ptr noundef nonnull %i.i) #30
  %i.jf = load ptr, ptr %i.jd, align 8, !noalias !2510, !noundef !4 ; 7 uses
  %.not.i5.i139 = icmp eq ptr %i.jf, null         ; 2 uses
  br i1 %i.je, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit168
  br i1 %.not.i5.i139, label %bb.by, label %bb.bz, !prof !8

bb.bu:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit168
  br i1 %.not.i5.i139, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECshDScVpnq8df_5uu_pr.exit.i141.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2510
  %i.jg = ptrtoint ptr %i.jf to i64               ; 2 uses
  %i.jh = and i64 %i.jg, 3
  switch i64 %i.jh, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshDScVpnq8df_5uu_pr.exit.i.i.i140
    i64 3, label %bb.bw
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshDScVpnq8df_5uu_pr.exit.i.i.i140
    i64 1, label %bb.bx
  ], !prof !16

bb.bw:                                            ; preds = %bb.bv
  %i.ji = icmp ult ptr %i.jf, inttoptr (i64 188978561024 to ptr)
  %i.jj = and i64 %i.jg, 1095216660480
  %i.jk = icmp ne i64 %i.jj, 1095216660480
  call void @llvm.assume(i1 %i.ji)
  call void @llvm.assume(i1 %i.jk)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshDScVpnq8df_5uu_pr.exit.i.i.i140

bb.bx:                                            ; preds = %bb.bv
  %i.jl = getelementptr i8, ptr %i.jf, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jl) ]
  %i.jm = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.jl, ptr %i.jm, align 8, !alias.scope !2511, !noalias !2510
  store i8 3, ptr %i.b, align 8, !alias.scope !2511, !noalias !2510
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jm) #30
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshDScVpnq8df_5uu_pr.exit.i.i.i140

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshDScVpnq8df_5uu_pr.exit.i.i.i140: ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2510
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECshDScVpnq8df_5uu_pr.exit.i141.thread

bb.by:                                            ; preds = %bb.bt
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @17, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #32
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECshDScVpnq8df_5uu_pr.exit.i141.thread: ; preds = %bb.bu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshDScVpnq8df_5uu_pr.exit.i.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2510
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshDScVpnq8df_5uu_pr.exit148

bb.bz:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.jn = ptrtoint ptr %i.jf to i64               ; 2 uses
  %i.jo = and i64 %i.jn, 3
  switch i64 %i.jo, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshDScVpnq8df_5uu_pr.exit.i146
    i64 3, label %bb.ca
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshDScVpnq8df_5uu_pr.exit.i146
    i64 1, label %bb.cb
  ], !prof !16

bb.ca:                                            ; preds = %bb.bz
  %i.jp = icmp ult ptr %i.jf, inttoptr (i64 188978561024 to ptr)
  %i.jq = and i64 %i.jn, 1095216660480
  %i.jr = icmp ne i64 %i.jq, 1095216660480
  call void @llvm.assume(i1 %i.jp)
  call void @llvm.assume(i1 %i.jr)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshDScVpnq8df_5uu_pr.exit.i146

bb.cb:                                            ; preds = %bb.bz
  %i.js = getelementptr i8, ptr %i.jf, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.js) ]
  %i.jt = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.js, ptr %i.jt, align 8, !alias.scope !2512
  store i8 3, ptr %i.a, align 8, !alias.scope !2512
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jt) #30
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshDScVpnq8df_5uu_pr.exit.i146

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshDScVpnq8df_5uu_pr.exit.i146: ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshDScVpnq8df_5uu_pr.exit148

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshDScVpnq8df_5uu_pr.exit148: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECshDScVpnq8df_5uu_pr.exit.i141.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshDScVpnq8df_5uu_pr.exit.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2513)
  call void @llvm.experimental.noalias.scope.decl(metadata !2514)
  %.val.i.i149 = load i64, ptr %i.p, align 8, !range !6, !alias.scope !2515, !noundef !4 ; 2 uses
  %i.ju = icmp eq i64 %.val.i.i149, 0
  br i1 %i.ju, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit151, label %bb.cc

bb.cc:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshDScVpnq8df_5uu_pr.exit148
  %i.jv = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val1.i.i150 = load ptr, ptr %i.jv, align 8, !alias.scope !2515, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i150, i64 noundef %.val.i.i149, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2515
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit151

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit151: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshDScVpnq8df_5uu_pr.exit148, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.val62 = load ptr, ptr %i.t, align 8, !nonnull !4, !align !11, !noundef !4 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.val62, i64 12 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !noundef !4
  %i.jy = add i32 %i.jx, -1                       ; 2 uses
  store i32 %i.jy, ptr %i.jw, align 4
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %bb.cd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECshDScVpnq8df_5uu_pr.exit

bb.cd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit151
  store atomic i64 0, ptr %.val62 monotonic, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %.val62, i64 8 ; 2 uses
  %i.kb = atomicrmw xchg ptr %i.ka, i32 0 release, align 4
  %i.kc = icmp eq i32 %i.kb, 2
  br i1 %i.kc, label %bb.ce, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECshDScVpnq8df_5uu_pr.exit, !prof !8

bb.ce:                                            ; preds = %bb.cd
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ka) #30
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECshDScVpnq8df_5uu_pr.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECshDScVpnq8df_5uu_pr.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit151, %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.kd, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2516)
  %i.ke = icmp eq i64 %.sroa.8.0.copyload, 0
  br i1 %i.ke, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTjIBw_NtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBN_.exit.i, label %.lr.ph.i.i.i153

.lr.ph.i.i.i153:                                  ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECshDScVpnq8df_5uu_pr.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTjINtNtCs7tKScEop1B6_5alloc3vec3VecNtCshDScVpnq8df_5uu_pr8FileLineEEEB1c_.exit.i.i.i164
  %.sroa.0.03.i.i.i154 = phi i64 [ %i.kg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTjINtNtCs7tKScEop1B6_5alloc3vec3VecNtCshDScVpnq8df_5uu_pr8FileLineEEEB1c_.exit.i.i.i164 ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECshDScVpnq8df_5uu_pr.exit ] ; 2 uses
  %i.kf = getelementptr inbounds nuw [32 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.0.03.i.i.i154 ; 3 uses
  %i.kg = add nuw nsw i64 %.sroa.0.03.i.i.i154, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2517)
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2518)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %.val.i.i.i.i.i155 = load ptr, ptr %i.ki, align 8, !alias.scope !2519, !noalias !2520, !nonnull !4, !noundef !4 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  %.val1.i.i.i.i.i156 = load i64, ptr %i.kj, align 8, !alias.scope !2519, !noalias !2520, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2521)
  %i.kk = icmp eq i64 %.val1.i.i.i.i.i156, 0
  br i1 %i.kk, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCshDScVpnq8df_5uu_pr8FileLineENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i.i.i.i162, label %.lr.ph.i.i.i.i.i.i.i157

.lr.ph.i.i.i.i.i.i.i157:                          ; preds = %.lr.ph.i.i.i153, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit.i.i.i.i.i.i.i161
  %.sroa.0.04.i.i.i.i.i.i.i158 = phi i64 [ %i.km, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit.i.i.i.i.i.i.i161 ], [ 0, %.lr.ph.i.i.i153 ] ; 2 uses
end_hunk_1
