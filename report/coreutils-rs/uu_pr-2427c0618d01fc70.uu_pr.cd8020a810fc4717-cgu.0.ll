Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_pr-2427c0618d01fc70.uu_pr.cd8020a810fc4717-cgu.0?download=true
inline.NumInlined: 1527
inline.NumDeleted: 885
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvCshDScVpnq8df_5uu_pr15as_page_operand:bb.a
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.d ], [ 1, %.lr.ph.i.i.i ]
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.d
  %.sroa.01.05.i.i.i = phi i64 [ %i.n, %bb.d ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.01.05.i.i.i
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !2052, !noalias !2053, !noundef !4
  %i.m = icmp eq i8 %i.l, 58
  br i1 %i.m, label %._crit_edge.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.n = add nuw nsw i64 %.sroa.01.05.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.n, %i.e
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.c
  %.merged.i.i.i = phi { i64, i64 } [ %i.j, %._crit_edge.i.i.i ], [ %i.h, %bb.c ] ; 2 uses
  %i.o = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i
  %i.q = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 2 uses
  %i.r = add nuw i64 %i.d, 1
  %i.s = add i64 %i.r, %i.q                       ; 5 uses
  %.not12.i.i = icmp ugt i64 %i.s, %i.b
  %i.t = add i64 %i.q, %i.d                       ; 4 uses
  %or.cond.i.not.i = icmp ult i64 %i.t, %i.b
  br i1 %or.cond.i.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  br i1 %.not12.i.i, label %bb.j, label %.lr.ph.split.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %lhsc.i = load i8, ptr %i.u, align 1, !alias.scope !2054
  %i.v = icmp eq i8 %lhsc.i, 58
  br i1 %i.v, label %bb.h, label %bb.f

_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11: ; preds = %bb.l, %.lr.ph, %.lr.ph62, %bb.n, %.lr.ph64, %bb.k, %bb.m, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit, %bb.a, %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit, %bb.j, %bb.h
  %.sroa.4.0 = phi i64 [ 0, %bb.j ], [ undef, %.lr.ph62 ], [ undef, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit ], [ %i.b, %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit ], [ %i.b, %bb.m ], [ undef, %bb.h ], [ undef, %bb.a ], [ %i.b, %bb.n ], [ %i.b, %bb.k ], [ %i.b, %.lr.ph64 ], [ %i.b, %.lr.ph ], [ %i.b, %bb.l ]
  %.sroa.0.0 = phi ptr [ null, %bb.j ], [ null, %.lr.ph62 ], [ null, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit ], [ null, %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit ], [ %i.c, %bb.m ], [ null, %bb.h ], [ null, %bb.a ], [ null, %.lr.ph64 ], [ %i.c, %bb.k ], [ %i.c, %bb.n ], [ null, %.lr.ph ], [ %i.c, %bb.l ]
  %i.w = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.x = insertvalue { ptr, i64 } %i.w, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %i.x

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.s
  %i.aa = icmp eq i64 %i.t, 0
  br i1 %i.aa, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %.lr.ph62

bb.i:                                             ; preds = %.lr.ph62
  %i.ab = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %.not.not.not.i.not.i = icmp eq ptr %i.ab, %i.y
  br i1 %.not.not.not.i.not.i, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit, label %.lr.ph62

.lr.ph62:                                         ; preds = %bb.h, %bb.i
  %i.ac = phi ptr [ %i.ab, %bb.i ], [ %i.c, %bb.h ] ; 2 uses
  %.val.i.i = load i8, ptr %i.ac, align 1, !alias.scope !2055, !noalias !2056, !noundef !4
  %i.ad = add i8 %.val.i.i, -58
  %.sroa.0.0.i.i.i.i.i = icmp ult i8 %i.ad, -10
  br i1 %.sroa.0.0.i.i.i.i.i, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %bb.i

bb.j:                                             ; preds = %bb.f, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i
  %i.ae = icmp eq i64 %i.b, 0
  br i1 %i.ae, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr i8, ptr %0, i64 %1
  %.not.not.not.i.not.i758 = icmp eq i64 %1, 1
  br i1 %.not.not.not.i.not.i758, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %.lr.ph

bb.l:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  %.not.not.not.i.not.i7 = icmp eq ptr %i.ag, %i.af
  br i1 %.not.not.not.i.not.i7, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %i.ah = phi ptr [ %i.ag, %bb.l ], [ %i.c, %bb.k ] ; 2 uses
  %.val.i.i8 = load i8, ptr %i.ah, align 1, !alias.scope !2057, !noalias !2058, !noundef !4
  %i.ai = add i8 %.val.i.i8, -58
  %.sroa.0.0.i.i.i.i.i9 = icmp ult i8 %i.ai, -10
  br i1 %.sroa.0.0.i.i.i.i.i9, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %bb.l

_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit: ; preds = %bb.i
  %i.aj = icmp eq i64 %i.b, %i.s
  br i1 %i.aj, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %bb.m

bb.m:                                             ; preds = %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit
  %i.ak = getelementptr i8, ptr %0, i64 %1
  %i.al = add nuw nsw i64 %i.s, 1
  %.not.not.not.i.not.i1263 = icmp eq i64 %i.al, %1
  br i1 %.not.not.not.i.not.i1263, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %.lr.ph64

bb.n:                                             ; preds = %.lr.ph64
  %i.am = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  %.not.not.not.i.not.i12 = icmp eq ptr %i.am, %i.ak
  br i1 %.not.not.not.i.not.i12, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %.lr.ph64

.lr.ph64:                                         ; preds = %bb.m, %bb.n
  %i.an = phi ptr [ %i.am, %bb.n ], [ %i.z, %bb.m ] ; 2 uses
  %.val.i.i13 = load i8, ptr %i.an, align 1, !alias.scope !2059, !noalias !2060, !noundef !4
  %i.ao = add i8 %.val.i.i13, -58
  %.sroa.0.0.i.i.i.i.i14 = icmp ult i8 %i.ao, -10
  br i1 %.sroa.0.0.i.i.i.i.i14, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %bb.n
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCshDScVpnq8df_5uu_pr18recreate_arguments(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i = alloca [16 x i8], align 8          ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 3 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 9 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.4 = alloca [16 x i8], align 8            ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 10 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvMs3_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Regex3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 9) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !2174)
  call void @llvm.experimental.noalias.scope.decl(metadata !2175)
  %i.u = load ptr, ptr %i.s, align 8, !alias.scope !2175, !noundef !4
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.b, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit33, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2176
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !2177
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @162, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #32, !noalias !2178
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit33: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.s, i64 32, i1 false), !alias.scope !2178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvMs3_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Regex3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 7) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !2179)
  call void @llvm.experimental.noalias.scope.decl(metadata !2180)
  %i.x = load ptr, ptr %i.q, align 8, !alias.scope !2180, !noundef !4
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.c, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit32, !prof !8

bb.c:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2181
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !2182
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @162, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #32, !noalias !2183
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit32: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.q, i64 32, i1 false), !alias.scope !2183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMs3_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Regex3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 3) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !2184)
  call void @llvm.experimental.noalias.scope.decl(metadata !2185)
  %i.aa = load ptr, ptr %i.o, align 8, !alias.scope !2185, !noundef !4
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.d, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit, !prof !8

bb.d:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2186
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !2187
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @162, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #32, !noalias !2188
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.o, i64 32, i1 false), !alias.scope !2188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !2189)
  %i.ad = mul nuw nsw i64 %2, 24                  ; 2 uses
  %i.ae = icmp eq i64 %2, 0
  br i1 %i.ae, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !2190
  %i.af = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ad, i64 noundef range(i64 1, 9) 8) #30, !noalias !2190 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.f, label %.lr.ph.preheader.i

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ad) #31, !noalias !2191
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.e
  %3 = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %.sroa.0.021.i = phi ptr [ %i.aj, %bb.g ], [ %1, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.020.i = phi i64 [ %i.ai, %bb.g ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.019.i = phi i64 [ %i.ah, %bb.g ], [ %2, %.lr.ph.preheader.i ]
  %4 = icmp eq ptr %.sroa.0.021.i, %3
  br i1 %4, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ah = add nsw i64 %.sroa.10.019.i, -1         ; 2 uses
  %i.ai = add nuw nsw i64 %.sroa.7.020.i, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 24
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.sroa.7.020.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2191
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.021.i) #30, !noalias !2189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2191
  %i.al = icmp eq i64 %i.ah, 0
  br i1 %i.al, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.g, %.lr.ph.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit
  %.sroa.10.0.i29.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit ], [ %i.af, %.lr.ph.i ], [ %i.af, %bb.g ]
  store i64 %2, ptr %i.n, align 8, !alias.scope !2189
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 7 uses
  store ptr %.sroa.10.0.i29.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2189
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 9 uses
  store i64 %2, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2189
  %.idx145.a = mul nuw nsw i64 %2, 24
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.idx145.a
  call void @llvm.experimental.noalias.scope.decl(metadata !2192)
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx4.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.7.0..sroa_idx5.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.9.0..sroa_idx6.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !2192, !nonnull !4
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !2192
  %i.ao = icmp eq i64 %2, 0
  br i1 %i.ao, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_arguments0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s_0EB2c_.exit.thread, label %.lr.ph

bb.h:                                             ; preds = %_RNCNvCshDScVpnq8df_5uu_pr18recreate_arguments0B3_.exit.thread.i.i.i.i.i
  %i.ap = icmp eq ptr %i.as, %i.am
  br i1 %i.ap, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_arguments0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s_0EB2c_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit, %bb.h
  %i.aq = phi ptr [ %i.as, %bb.h ], [ %1, %.loopexit ] ; 3 uses
  %i.ar = phi i64 [ %i.bf, %bb.h ], [ 0, %.loopexit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2193)
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !2193, !noalias !2194, !noundef !4 ; 2 uses
  %i.av = icmp eq i64 %i.au, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !2193, !noalias !2194 ; 2 uses
  br i1 %i.av, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_arguments0B3_.exit.i.i.i.i.i, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_arguments0B3_.exit.thread.i.i.i.i.i

_RNCNvCshDScVpnq8df_5uu_pr18recreate_arguments0B3_.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.ay = load i16, ptr %i.ax, align 1
  %i.az = icmp ne i16 %i.ay, 11565
  %i.ba = zext i1 %i.az to i32
  %.not.i.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i.i, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_arguments0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s_0EB2c_.exit.thread, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_arguments0B3_.exit.thread.i.i.i.i.i

_RNCNvCshDScVpnq8df_5uu_pr18recreate_arguments0B3_.exit.thread.i.i.i.i.i: ; preds = %_RNCNvCshDScVpnq8df_5uu_pr18recreate_arguments0B3_.exit.i.i.i.i.i, %.lr.ph
  %i.bb = call fastcc { ptr, i64 } @_RINvMNtCs6JMX4GRUq9U_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ax, i64 noundef %i.au) #30, !noalias !2195 ; 2 uses
  %i.bc = extractvalue { ptr, i64 } %i.bb, 0
  %i.bd = extractvalue { ptr, i64 } %i.bb, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2195
  store i32 0, ptr %i.d, align 8, !noalias !2195
  store ptr %i.bc, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2195
  store i64 %i.bd, ptr %.sroa.5.0..sroa_idx4.i.i.i.i.i.i.i.i.i, align 8, !noalias !2195
  store i64 0, ptr %.sroa.7.0..sroa_idx5.i.i.i.i.i.i.i.i.i, align 8, !noalias !2195
  store i64 %i.bd, ptr %.sroa.9.0..sroa_idx6.i.i.i.i.i.i.i.i.i, align 8, !noalias !2195
  store i8 1, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2195
  call fastcc void @_RNvMs0_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB5_5Regex11search_half(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %.val.i.i.i.i.i.i.i.i.i, ptr %.val1.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d) #34, !noalias !2195
  %i.be = load i64, ptr %i.c, align 8, !range !7, !noalias !2195, !noundef !4
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.be, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2195
  %i.bf = add i64 %i.ar, 1                        ; 11 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %bb.i

bb.i:                                             ; preds = %_RNCNvCshDScVpnq8df_5uu_pr18recreate_arguments0B3_.exit.thread.i.i.i.i.i
  %i.bg = icmp ult i64 %i.bf, %2
  br i1 %i.bg, label %_RINvMNtNtCs5skpMncfVhl_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejEECshDScVpnq8df_5uu_pr.exit, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_arguments0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s_0EB2c_.exit.thread

_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_arguments0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s_0EB2c_.exit.thread: ; preds = %bb.h, %_RNCNvCshDScVpnq8df_5uu_pr18recreate_arguments0B3_.exit.i.i.i.i.i, %.loopexit, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10insert_mutCshDScVpnq8df_5uu_pr.exit58, %_RINvMNtNtCs5skpMncfVhl_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejEECshDScVpnq8df_5uu_pr.exit, %bb.i
  %i.bh = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bi = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noundef !4 ; 2 uses
  %.idx146 = mul nuw nsw i64 %i.bi, 24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx146
  call void @llvm.experimental.noalias.scope.decl(metadata !2196)
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i40 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx4.i.i.i.i.i.i.i.i.i41 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.0..sroa_idx5.i.i.i.i.i.i.i.i.i42 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.9.0..sroa_idx6.i.i.i.i.i.i.i.i.i43 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i44 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val.i.i.i.i.i.i.i.i.i45 = load ptr, ptr %i.p, align 8, !alias.scope !2196, !nonnull !4
  %.val1.i.i.i.i.i.i.i.i.i46 = load ptr, ptr %i.bk, align 8, !alias.scope !2196
  %i.bl = icmp eq i64 %i.bi, 0
  br i1 %i.bl, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s1_0EB2c_.exit.thread, label %.lr.ph142

bb.j:                                             ; preds = %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0B3_.exit.thread.i.i.i.i.i
  %i.bm = add nuw nsw i64 %i.bp, 1
  %i.bn = icmp eq ptr %i.bq, %i.bj
  br i1 %i.bn, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s1_0EB2c_.exit.thread, label %.lr.ph142

.lr.ph142:                                        ; preds = %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_arguments0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s_0EB2c_.exit.thread, %bb.j
  %i.bo = phi ptr [ %i.bq, %bb.j ], [ %i.bh, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_arguments0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s_0EB2c_.exit.thread ] ; 5 uses
  %i.bp = phi i64 [ %i.bm, %bb.j ], [ 0, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_arguments0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s_0EB2c_.exit.thread ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2197)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !2197, !noalias !2198, !noundef !4 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !2197, !noalias !2198 ; 2 uses
  br i1 %i.bt, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0B3_.exit.i.i.i.i.i, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0B3_.exit.thread.i.i.i.i.i

_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0B3_.exit.i.i.i.i.i: ; preds = %.lr.ph142
  %i.bw = load i16, ptr %i.bv, align 1
  %i.bx = icmp ne i16 %i.bw, 11565
  %i.by = zext i1 %i.bx to i32
  %.not.i.i.i.i.i53 = icmp eq i32 %i.by, 0
  br i1 %.not.i.i.i.i.i53, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s1_0EB2c_.exit.thread, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0B3_.exit.thread.i.i.i.i.i

_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0B3_.exit.thread.i.i.i.i.i: ; preds = %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0B3_.exit.i.i.i.i.i, %.lr.ph142
  %i.bz = call fastcc { ptr, i64 } @_RINvMNtCs6JMX4GRUq9U_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bv, i64 noundef %i.bs) #30, !noalias !2199 ; 2 uses
  %i.ca = extractvalue { ptr, i64 } %i.bz, 0
  %i.cb = extractvalue { ptr, i64 } %i.bz, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2199
  store i32 0, ptr %i.b, align 8, !noalias !2199
  store ptr %i.ca, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i40, align 8, !noalias !2199
  store i64 %i.cb, ptr %.sroa.5.0..sroa_idx4.i.i.i.i.i.i.i.i.i41, align 8, !noalias !2199
  store i64 0, ptr %.sroa.7.0..sroa_idx5.i.i.i.i.i.i.i.i.i42, align 8, !noalias !2199
  store i64 %i.cb, ptr %.sroa.9.0..sroa_idx6.i.i.i.i.i.i.i.i.i43, align 8, !noalias !2199
  store i8 1, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i44, align 8, !noalias !2199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2199
  call fastcc void @_RNvMs0_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB5_5Regex11search_half(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %.val.i.i.i.i.i.i.i.i.i45, ptr %.val1.i.i.i.i.i.i.i.i.i46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b) #34, !noalias !2199
  %i.cc = load i64, ptr %i.a, align 8, !range !7, !noalias !2199, !noundef !4
  %.not.i.i.i.i.i.i.i47 = icmp eq i64 %i.cc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2199
  br i1 %.not.i.i.i.i.i.i.i47, label %bb.j, label %bb.w

_RINvMNtNtCs5skpMncfVhl_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejEECshDScVpnq8df_5uu_pr.exit: ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.bf ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !4, !noundef !4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 0, ptr %i.j, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.cf, ptr %.sroa.474.0..sroa_idx, align 8
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.ch, ptr %.sroa.575.0..sroa_idx, align 8
  %.sroa.776.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %.sroa.776.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 %i.ch, ptr %.sroa.9.0..sroa_idx77, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i8 1, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.val37 = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val38 = load ptr, ptr %i.ci, align 8
  call fastcc void @_RNvMs0_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB5_5Regex11search_half(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i, ptr nonnull %.val37, ptr %.val38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j) #34
  %i.cj = load i64, ptr %i.i, align 8, !range !7, !noundef !4
  %.not30 = icmp eq i64 %i.cj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %.not30, label %.split, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_arguments0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s_0EB2c_.exit.thread

.split:                                           ; preds = %_RINvMNtNtCs5skpMncfVhl_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejEECshDScVpnq8df_5uu_pr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  %i.ck = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2202, !noundef !4 ; 5 uses
  %i.cl = icmp ult i64 %i.ck, 384307168202282326
  call void @llvm.assume(i1 %i.cl)
  %.not.i.i = icmp samesign ult i64 %i.bf, %i.ck
  br i1 %.not.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCshDScVpnq8df_5uu_pr.exit.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCshDScVpnq8df_5uu_pr.exit.thread.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCshDScVpnq8df_5uu_pr.exit.i: ; preds = %.split
  %i.cm = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2202, !nonnull !4, !noundef !4
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.bf ; 4 uses
  %.sroa.0.0.copyload1.i = load i64, ptr %i.cn, align 8, !noalias !2203 ; 2 uses
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i, i64 16, i1 false), !noalias !2203
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %reass.sub = sub nsw i64 %i.ck, %i.ar
  %i.cp = mul i64 %reass.sub, 24
  %i.cq = add i64 %i.cp, -48
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cn, ptr nonnull align 8 %i.co, i64 %i.cq, i1 false), !noalias !2204
  %i.cr = add nsw i64 %i.ck, -1                   ; 2 uses
  store i64 %i.cr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2202
  %.not.i55 = icmp eq i64 %.sroa.0.0.copyload1.i, -1
  br i1 %.not.i55, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCshDScVpnq8df_5uu_pr.exit.thread.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE6removeCshDScVpnq8df_5uu_pr.exit, !prof !2205

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCshDScVpnq8df_5uu_pr.exit.thread.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCshDScVpnq8df_5uu_pr.exit.i, %.split
  %i.cs = phi i64 [ %i.ck, %.split ], [ %i.cr, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCshDScVpnq8df_5uu_pr.exit.i ]
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef range(i64 0, 384307168202282325) %i.bf, i64 noundef %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #32, !noalias !2206
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE6removeCshDScVpnq8df_5uu_pr.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCshDScVpnq8df_5uu_pr.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !2200
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !2207)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !2208
  %i.ct = call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #30, !noalias !2208 ; 3 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.k, label %_RNvXs0_CshDScVpnq8df_5uu_prNtB5_13NumberingModeNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit

bb.k:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE6removeCshDScVpnq8df_5uu_pr.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #31, !noalias !2207
  unreachable
end_hunk_0
begin_hunk_1_@_RNvXs8_CshDScVpnq8df_5uu_prNtB5_7PrErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt:bb.a
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !4, !align !11, !noundef !4
  %i.aq = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ap, ptr noundef nonnull @186, ptr noundef nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !3897)
  call void @llvm.experimental.noalias.scope.decl(metadata !3898)
  %.val.i.i70 = load i64, ptr %i.b, align 8, !range !6, !alias.scope !3899, !noundef !4 ; 2 uses
  %i.ar = icmp eq i64 %.val.i.i70, 0
  br i1 %i.ar, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit72, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i71 = load ptr, ptr %i.as, align 8, !alias.scope !3899, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i71, i64 noundef %.val.i.i70, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !3899
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit72

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit72: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit72, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit69, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit, %bb.c
  %.sroa.0.1.in = phi i1 [ %i.r, %bb.c ], [ %i.w, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit ], [ %i.ad, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit69 ], [ %i.aq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit72 ]
  ret i1 %.sroa.0.1.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs6JMX4GRUq9U_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @196, i64 noundef 5) #30
  ret i1 %i.a
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3904)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3904, !noundef !4 ; 5 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
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
  %i.g = load i64, ptr %0, align 8, !range !6, !alias.scope !3905, !noundef !4
  %i.h = sub nsw i64 %i.g, %i.b
  %i.i = icmp ugt i64 %.sroa.0.0.i, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshDScVpnq8df_5uu_pr.exit.i, !prof !8

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0.i, i64 noundef 1, i64 noundef 1) #30
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshDScVpnq8df_5uu_pr.exit.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshDScVpnq8df_5uu_pr.exit.i: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !3904, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b ; 10 uses
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshDScVpnq8df_5uu_pr.exit.i
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

bb.g:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshDScVpnq8df_5uu_pr.exit.i
  %i.ab = trunc nuw nsw i32 %1 to i8
  store i8 %i.ab, ptr %i.l, align 1, !noalias !3904
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = or disjoint i8 %i.r, -64
  store i8 %i.ac, ptr %i.l, align 1, !noalias !3904
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.p, ptr %i.ad, align 1, !noalias !3904
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = icmp samesign ult i32 %1, 65536
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = or disjoint i8 %i.v, -32
  store i8 %i.af, ptr %i.l, align 1, !noalias !3904
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.t, ptr %i.ag, align 1, !noalias !3904
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.p, ptr %i.ah, align 1, !noalias !3904
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.aa, ptr %i.l, align 1, !noalias !3904
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.x, ptr %i.ai, align 1, !noalias !3904
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.t, ptr %i.aj, align 1, !noalias !3904
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  store i8 %i.p, ptr %i.ak, align 1, !noalias !3904
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.al = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.al, ptr %i.a, align 8, !alias.scope !3904
  ret i1 false
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3914)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3915, !noundef !4 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !6, !alias.scope !3915, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshDScVpnq8df_5uu_pr.exit.thread.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshDScVpnq8df_5uu_pr.exit.i.i, !prof !8

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshDScVpnq8df_5uu_pr.exit.thread.i.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1) #30, !noalias !3916
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !3917, !noundef !4 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshDScVpnq8df_5uu_pr.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshDScVpnq8df_5uu_pr.exit.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshDScVpnq8df_5uu_pr.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshDScVpnq8df_5uu_pr.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshDScVpnq8df_5uu_pr.exit.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !3917, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !3917
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshDScVpnq8df_5uu_pr.exit.i.i, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.b, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshDScVpnq8df_5uu_pr.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !3917
  ret i1 false
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #30
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCshDScVpnq8df_5uu_pr8FileLineENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneBH_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3934)
  %i.a = mul nuw nsw i64 %.16.val, 48             ; 2 uses
  %i.b = icmp eq i64 %.16.val, 0
  br i1 %i.b, label %_RINvXNvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inNtCshDScVpnq8df_5uu_pr8FileLineNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBM_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !3935
  %i.c = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.a, i64 noundef range(i64 1, 9) 8) #30, !noalias !3935 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.a) #31, !noalias !3936
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  %1 = getelementptr inbounds nuw [48 x i8], ptr %.8.val, i64 %.16.val
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs4_CshDScVpnq8df_5uu_prNtB5_8FileLineNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i, %.lr.ph.preheader.i
  %.sroa.0.043.i = phi ptr [ %i.e, %_RNvXs4_CshDScVpnq8df_5uu_prNtB5_8FileLineNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i ], [ %.8.val, %.lr.ph.preheader.i ] ; 5 uses
  %.sroa.7.042.i = phi i64 [ %i.f, %_RNvXs4_CshDScVpnq8df_5uu_prNtB5_8FileLineNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.041.i = phi i64 [ %2, %_RNvXs4_CshDScVpnq8df_5uu_prNtB5_8FileLineNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i ], [ %.16.val, %.lr.ph.preheader.i ]
  %2 = add nsw i64 %.sroa.10.041.i, -1            ; 2 uses
  %3 = icmp eq ptr %.sroa.0.043.i, %1
  br i1 %3, label %_RINvXNvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inNtCshDScVpnq8df_5uu_pr8FileLineNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBM_.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.043.i, i64 48
  %i.f = add nuw nsw i64 %.sroa.7.042.i, 1
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %.sroa.7.042.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3937)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.043.i, i64 32
  %i.i = load <2 x i64>, ptr %i.h, align 8, !alias.scope !3938
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.043.i, i64 8
  %.val.i.i = load ptr, ptr %i.j, align 8, !alias.scope !3938, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.043.i, i64 16 ; 2 uses
  %i.l = load <2 x i64>, ptr %i.k, align 8, !alias.scope !3938
  %.val1.i.i = load i64, ptr %i.k, align 8, !alias.scope !3938, !noundef !4 ; 5 uses
  %i.m = icmp eq i64 %.val1.i.i, 0
  br i1 %i.m, label %_RNvXs4_CshDScVpnq8df_5uu_prNtB5_8FileLineNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !3939
  %i.n = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i, i64 noundef range(i64 1, 9) 1) #30, !noalias !3939 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val1.i.i) #31, !noalias !3940
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %.val.i.i, i64 range(i64 0, -9223372036854775808) %.val1.i.i, i1 false), !noalias !3941
  br label %_RNvXs4_CshDScVpnq8df_5uu_prNtB5_8FileLineNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i

_RNvXs4_CshDScVpnq8df_5uu_prNtB5_8FileLineNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i: ; preds = %bb.g, %bb.d
  %.sroa.5.0.i.i = phi ptr [ %i.n, %bb.g ], [ inttoptr (i64 1 to ptr), %bb.d ]
  store i64 %.val1.i.i, ptr %i.g, align 8, !noalias !3936
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.5.0.i.i, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !3936
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <2 x i64> %i.l, ptr %.sroa.530.0..sroa_idx.i, align 8, !noalias !3936
  %.sroa.732.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store <2 x i64> %i.i, ptr %.sroa.732.0..sroa_idx.i, align 8, !noalias !3936
  %i.p = icmp eq i64 %2, 0
  br i1 %i.p, label %_RINvXNvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inNtCshDScVpnq8df_5uu_pr8FileLineNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBM_.exit, label %.lr.ph.i

_RINvXNvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inNtCshDScVpnq8df_5uu_pr8FileLineNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBM_.exit: ; preds = %.lr.ph.i, %_RNvXs4_CshDScVpnq8df_5uu_prNtB5_8FileLineNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i, %bb.a
  %.sroa.10.0.i53.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.c, %_RNvXs4_CshDScVpnq8df_5uu_prNtB5_8FileLineNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i ], [ %i.c, %.lr.ph.i ]
  store i64 %.16.val, ptr %0, align 8, !alias.scope !3933
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i53.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3933
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.16.val, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !3933
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCshDScVpnq8df_5uu_pr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #30
  ret i1 %i.e
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #30
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmtCshDScVpnq8df_5uu_pr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3947
  call void @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #30, !noalias !3948
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %i.h = icmp samesign eq i64 %i.f, 0
  br i1 %i.h, label %_RNvXsr_NtCs6JMX4GRUq9U_4core3fmtShNtB5_5Debug3fmtCshDScVpnq8df_5uu_pr.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3949
  store ptr %.sroa.0.05.i.i, ptr %i.a, align 8, !noalias !3949, !captures !12
  %i.j = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3949
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %_RNvXsr_NtCs6JMX4GRUq9U_4core3fmtShNtB5_5Debug3fmtCshDScVpnq8df_5uu_pr.exit, label %.lr.ph.i.i

_RNvXsr_NtCs6JMX4GRUq9U_4core3fmtShNtB5_5Debug3fmtCshDScVpnq8df_5uu_pr.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_RNvMs6_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3947
  ret i1 %i.l
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvYINtNtCs3JjgEOiFeOI_4jiff3fmt10StdIoWriteQINtNtCs7tKScEop1B6_5alloc3vec3VechEENtB5_5Write10as_mut_vecCshDScVpnq8df_5uu_pr(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtCs3JjgEOiFeOI_4jiff3fmt10StdIoWriteQINtNtCs7tKScEop1B6_5alloc3vec3VechEENtB5_5Write10write_charCshDScVpnq8df_5uu_pr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 {
bb.a:
  %.sroa.0 = alloca i32, align 4                  ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i32 0, ptr %.sroa.0, align 4
  %i.a = icmp samesign ult i32 %1, 128
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %1, 2048
  %i.c = trunc i32 %1 to i8
  %i.d = and i8 %i.c, 63
  %i.e = or disjoint i8 %i.d, -128                ; 3 uses
  %i.f = lshr i32 %1, 6
  %i.g = trunc i32 %i.f to i8                     ; 2 uses
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128                ; 2 uses
  %i.j = lshr i32 %1, 12
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128
  %i.n = lshr i32 %1, 18
  %i.o = trunc nuw nsw i32 %i.n to i8
  %i.p = or disjoint i8 %i.o, -16
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.q = trunc nuw nsw i32 %1 to i8
  store i8 %i.q, ptr %.sroa.0, align 4, !alias.scope !3969
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.r = or disjoint i8 %i.g, -64
  store i8 %i.r, ptr %.sroa.0, align 4, !alias.scope !3969
  %.sroa.0.1..sroa_idx12 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.e, ptr %.sroa.0.1..sroa_idx12, align 1, !alias.scope !3969
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i32 %1, 65536
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = or disjoint i8 %i.k, -32
  store i8 %i.t, ptr %.sroa.0, align 4, !alias.scope !3969
  %.sroa.0.1..sroa_idx11 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.i, ptr %.sroa.0.1..sroa_idx11, align 1, !alias.scope !3969
  %.sroa.0.2..sroa_idx13 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  store i8 %i.e, ptr %.sroa.0.2..sroa_idx13, align 2, !alias.scope !3969
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.p, ptr %.sroa.0, align 4, !alias.scope !3969
  %.sroa.0.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.m, ptr %.sroa.0.1..sroa_idx, align 1, !alias.scope !3969
  %.sroa.0.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  store i8 %i.i, ptr %.sroa.0.2..sroa_idx, align 2, !alias.scope !3969
  %.sroa.0.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3
  store i8 %i.e, ptr %.sroa.0.3..sroa_idx, align 1, !alias.scope !3969
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3970)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !3970, !nonnull !4, !align !11, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3974)
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !3975, !noalias !3976, !noundef !4 ; 3 uses
  %i.w = load i64, ptr %.val.i, align 8, !range !6, !alias.scope !3975, !noalias !3976, !noundef !4
  %i.x = sub i64 %i.w, %i.v
  %i.y = icmp ugt i64 %.sroa.0.05.i, %i.x
  br i1 %i.y, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshDScVpnq8df_5uu_pr.exit.thread.i.i.i.i.i.i, label %_RNvXs6_NtCs3JjgEOiFeOI_4jiff3fmtINtB5_10StdIoWriteQINtNtCs7tKScEop1B6_5alloc3vec3VechEENtB5_5Write9write_strCshDScVpnq8df_5uu_pr.exit, !prof !8

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshDScVpnq8df_5uu_pr.exit.thread.i.i.i.i.i.i: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.v, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.05.i, i64 noundef 1, i64 noundef 1) #30, !noalias !3977
  %i.z = load i64, ptr %i.u, align 8, !alias.scope !3978, !noalias !3976, !noundef !4
  br label %_RNvXs6_NtCs3JjgEOiFeOI_4jiff3fmtINtB5_10StdIoWriteQINtNtCs7tKScEop1B6_5alloc3vec3VechEENtB5_5Write9write_strCshDScVpnq8df_5uu_pr.exit

_RNvXs6_NtCs3JjgEOiFeOI_4jiff3fmtINtB5_10StdIoWriteQINtNtCs7tKScEop1B6_5alloc3vec3VechEENtB5_5Write9write_strCshDScVpnq8df_5uu_pr.exit: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshDScVpnq8df_5uu_pr.exit.thread.i.i.i.i.i.i
  %.sink10 = phi i64 [ %i.z, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshDScVpnq8df_5uu_pr.exit.thread.i.i.i.i.i.i ], [ %i.v, %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit ] ; 3 uses
  %i.aa = icmp sgt i64 %.sink10, -1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !3978, !noalias !3976, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sink10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, ptr noundef nonnull readonly align 4 dereferenceable(1) %.sroa.0, i64 range(i64 0, -9223372036854775808) %.sroa.0.05.i, i1 false), !noalias !3979
  %i.ae = add nuw i64 %.sink10, %.sroa.0.05.i
  store i64 %i.ae, ptr %i.u, align 8, !alias.scope !3978, !noalias !3976
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret { i64, ptr } { i64 0, ptr undef }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtBb_3fmt5Write10write_charCshDScVpnq8df_5uu_pr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.c = icmp samesign ult i32 %1, 128
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 2048
  %i.e = trunc i32 %1 to i8
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128                ; 3 uses
  %i.h = lshr i32 %1, 6
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 2 uses
  %i.l = lshr i32 %1, 12
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = lshr i32 %1, 18
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -16
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %1 to i8
  store i8 %i.s, ptr %i.b, align 4, !alias.scope !3987
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64
  store i8 %i.t, ptr %i.b, align 4, !alias.scope !3987
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
end_hunk_1
