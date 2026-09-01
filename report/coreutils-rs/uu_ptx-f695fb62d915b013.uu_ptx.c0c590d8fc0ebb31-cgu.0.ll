Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_ptx-f695fb62d915b013.uu_ptx.c0c590d8fc0ebb31-cgu.0?download=true
inline.NumInlined: 1812
inline.NumDeleted: 1075
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvCsgy7pbN39oAf_6uu_ptx24write_traditional_output:bb.a
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 13 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [120 x i8], align 8               ; 18 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [80 x i8], align 8                ; 13 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [120 x i8], align 8               ; 18 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.0.i124 = alloca [24 x i8], align 8       ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 12 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [104 x i8], align 8              ; 14 uses
  %i.ac = alloca [32 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 22 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [120 x i8], align 8              ; 10 uses
  %i.ak = alloca [24 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 8 uses
  %i.am = alloca [24 x i8], align 8               ; 8 uses
  %i.an = alloca [24 x i8], align 8               ; 8 uses
  %i.ao = alloca [16 x i8], align 8               ; 6 uses
  %i.ap = alloca [32 x i8], align 8               ; 6 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.0.i = alloca [24 x i8], align 8          ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 7 uses
  %i.ax = alloca [32 x i8], align 8               ; 7 uses
  %i.ay = alloca [24 x i8], align 8               ; 6 uses
  %i.az = alloca [24 x i8], align 8               ; 7 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [16 x i8], align 16              ; 4 uses
  %i.bc = alloca [16 x i8], align 16              ; 4 uses
  %i.bd = alloca [24 x i8], align 8               ; 3 uses
  %i.be = alloca [16 x i8], align 8               ; 6 uses
  %i.bf = alloca [24 x i8], align 8               ; 10 uses
  %i.bg = alloca [24 x i8], align 8               ; 11 uses
  %i.bh = alloca [32 x i8], align 8               ; 6 uses
  %i.bi = alloca [32 x i8], align 8               ; 8 uses
  %i.bj = alloca [16 x i8], align 8               ; 6 uses
  %i.bk = alloca [16 x i8], align 8               ; 7 uses
  %i.bl = alloca [48 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  %i.bm = icmp eq i64 %4, 1
  br i1 %i.bm, label %bb.b, label %.split60

.split60:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !2304
  store i128 79537652246452167413109620736, ptr %i.bc, align 16, !noalias !2304
  call void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.bc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !2304
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %lhsc = load i8, ptr %3, align 1
  %i.bn = icmp eq i8 %lhsc, 45
  br i1 %i.bn, label %.split64, label %.split

.split:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !2308
  store i128 79537652246452167413109620736, ptr %i.bb, align 16, !noalias !2308
  call void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef 1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !2308
  br label %bb.c

bb.c:                                             ; preds = %.split60, %.split
  %.sink = phi i64 [ %4, %.split60 ], [ 1, %.split ]
  call fastcc void @_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_B1i_INtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsgy7pbN39oAf_6uu_ptx24write_traditional_output0EB3J_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.bk, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %i.bj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %.sink) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %i.bo = load ptr, ptr %i.bk, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.bo, null
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  br i1 %.not, label %.split62, label %bb.f

.split64:                                         ; preds = %bb.b
  %i.bq = tail call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #28
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.br = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #28 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !52

bb.d:                                             ; preds = %.split64
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #30
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %.split64
  store ptr %i.bq, ptr %i.br, align 8
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2312
  %i.bt = tail call noundef dereferenceable_or_null(8192) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 8192, i64 noundef range(i64 1, 9) 1) #28, !noalias !2312 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.e, label %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterINtNtB8_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE13with_capacityCsgy7pbN39oAf_6uu_ptx.exit

bb.e:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8192) #30, !noalias !2318
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.bv = load ptr, ptr %i.bp, align 8, !nonnull !4, !align !24, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.bj

.split62:                                         ; preds = %bb.c
  %i.bw = load i32, ptr %i.bp, align 8, !range !193, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.bx = call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #28 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.g, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit93, !prof !52

bb.g:                                             ; preds = %.split62
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #30
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit93: ; preds = %.split62
  store i32 %i.bw, ptr %i.bx, align 4
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2319
  %i.bz = call noundef dereferenceable_or_null(8192) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 8192, i64 noundef range(i64 1, 9) 1) #28, !noalias !2319 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.h, label %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterINtNtB8_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE13with_capacityCsgy7pbN39oAf_6uu_ptx.exit

bb.h:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit93
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8192) #30, !noalias !2325
  unreachable

_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterINtNtB8_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE13with_capacityCsgy7pbN39oAf_6uu_ptx.exit: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit93, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  %.sink1061 = phi ptr [ %i.bt, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %i.bz, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit93 ]
  %.sink1058 = phi ptr [ %i.br, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %i.bx, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit93 ]
  %.sink1056 = phi ptr [ @125, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ @124, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit93 ]
  store i64 8192, ptr %i.bl, align 8, !noalias !4
  %.sroa.42.0..sroa_idx.i94 = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %.sink1061, ptr %.sroa.42.0..sroa_idx.i94, align 8, !noalias !4
  %.sroa.5.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i95, align 8, !noalias !4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store i8 0, ptr %i.cb, align 8, !noalias !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store ptr %.sink1058, ptr %i.cc, align 8, !noalias !4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store ptr %.sink1056, ptr %i.cd, align 8, !noalias !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !4, !noundef !4
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !4
  call void @_RNvMs3_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Regex3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cf, i64 noundef %i.ch) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2326)
  call void @llvm.experimental.noalias.scope.decl(metadata !2329)
  %i.ci = load ptr, ptr %i.bh, align 8, !alias.scope !2329, !noalias !2326, !noundef !4
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCsgy7pbN39oAf_6uu_ptx.exit, !prof !52

bb.i:                                             ; preds = %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterINtNtB8_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE13with_capacityCsgy7pbN39oAf_6uu_ptx.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !2331
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ck, i64 24, i1 false), !noalias !2326
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 43, ptr noundef nonnull %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @165, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #27, !noalias !2331
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCsgy7pbN39oAf_6uu_ptx.exit: ; preds = %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterINtNtB8_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE13with_capacityCsgy7pbN39oAf_6uu_ptx.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bh, i64 32, i1 false), !alias.scope !2331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 115 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !range !181, !noundef !4
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %.preheader, label %bb.j

bb.j:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCsgy7pbN39oAf_6uu_ptx.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.cp = load i8, ptr %i.co, align 1, !range !181, !noundef !4
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.k, label %bb.ax

.preheader:                                       ; preds = %bb.ax, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCsgy7pbN39oAf_6uu_ptx.exit
  %i.cr = load ptr, ptr %2, align 8, !noundef !4  ; 5 uses
  %.not79 = icmp ne ptr %i.cr, null               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ct = load i64, ptr %i.cs, align 8            ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cv = load i64, ptr %i.cu, align 8            ; 2 uses
  %.sroa.15.0.ph = select i1 %.not79, i64 %i.ct, i64 undef ; 5 uses
  %5 = icmp ne i64 %i.cv, 0
  %.not477.a = select i1 %.not79, i1 %5, i1 false
  br i1 %.not477.a, label %.lr.ph, label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.thread

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !2332)
  %i.cw = load ptr, ptr %2, align 8, !alias.scope !2332, !noundef !4 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i = icmp ne ptr %i.cw, null               ; 4 uses
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !2332 ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !2332
  %.sroa.07.sroa.7.sroa.6.0.i = select i1 %.not.i, i64 %i.cy, i64 undef
  %.sroa.5.0.i = select i1 %.not.i, i64 %i.da, i64 0 ; 4 uses
  %i.db = ptrtoint ptr %i.cw to i64
  %i.dc = icmp eq i64 %.sroa.5.0.i, 0
  br i1 %i.dc, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefENCNvB1O_26get_auto_max_reference_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2U_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0EB1O_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dd = add i64 %.sroa.5.0.i, -1                ; 2 uses
  br i1 %.not.i, label %bb.m, label %.critedge.i.i

bb.m:                                             ; preds = %bb.l
  %i.de = icmp eq i64 %i.cy, 0
  br i1 %i.de, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.m
  %xtraiter = and i64 %i.cy, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.sroa.013.017.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %i.cw, %.lr.ph.i.i.i.preheader ]
  %.sroa.011.016.i.i.i.prol = phi i64 [ %i.dg, %.lr.ph.i.i.i.prol ], [ %i.cy, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.prol, i64 896
  %i.dg = add i64 %.sroa.011.016.i.i.i.prol, -1   ; 2 uses
  %.sroa.013.0.i.i.i.prol = load ptr, ptr %i.df, align 8, !noalias !2335, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !2340

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.013.0.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.sroa.013.017.i.i.i.unr = phi ptr [ %i.cw, %.lr.ph.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.sroa.011.016.i.i.i.unr = phi i64 [ %i.cy, %.lr.ph.i.i.i.preheader ], [ %i.dg, %.lr.ph.i.i.i.prol ]
  %i.dh = icmp ult i64 %i.cy, 8
  br i1 %i.dh, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.sroa.013.017.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.7, %.lr.ph.i.i.i ], [ %.sroa.013.017.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.sroa.011.016.i.i.i = phi i64 [ %i.dq, %.lr.ph.i.i.i ], [ %.sroa.011.016.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i, i64 896
  %.sroa.013.0.i.i.i = load ptr, ptr %i.di, align 8, !noalias !2335, !nonnull !4, !noundef !4
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i, i64 896
  %.sroa.013.0.i.i.i.1 = load ptr, ptr %i.dj, align 8, !noalias !2335, !nonnull !4, !noundef !4
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.1, i64 896
  %.sroa.013.0.i.i.i.2 = load ptr, ptr %i.dk, align 8, !noalias !2335, !nonnull !4, !noundef !4
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.2, i64 896
  %.sroa.013.0.i.i.i.3 = load ptr, ptr %i.dl, align 8, !noalias !2335, !nonnull !4, !noundef !4
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.3, i64 896
  %.sroa.013.0.i.i.i.4 = load ptr, ptr %i.dm, align 8, !noalias !2335, !nonnull !4, !noundef !4
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.4, i64 896
  %.sroa.013.0.i.i.i.5 = load ptr, ptr %i.dn, align 8, !noalias !2335, !nonnull !4, !noundef !4
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.5, i64 896
  %.sroa.013.0.i.i.i.6 = load ptr, ptr %i.do, align 8, !noalias !2335, !nonnull !4, !noundef !4
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.6, i64 896
  %i.dq = add i64 %.sroa.011.016.i.i.i, -8        ; 2 uses
  %.sroa.013.0.i.i.i.7 = load ptr, ptr %i.dp, align 8, !noalias !2335, !nonnull !4, !noundef !4 ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i, label %.lr.ph.i.i.i

_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.m
  %.sroa.013.0.lcssa.i.i.i = phi ptr [ %i.cw, %bb.m ], [ %.sroa.013.0.i.i.i.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.i.7, %.lr.ph.i.i.i ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.013.0.lcssa.i.i.i, i64 890
  %i.dt = load i16, ptr %i.ds, align 2, !noalias !2341, !noundef !4
  %.not198.i = icmp eq i16 %i.dt, 0
  br i1 %.not198.i, label %.lr.ph.i.i.i.i95.i, label %.thread.i

.lr.ph.i.i.i.i95.i:                               ; preds = %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i, %bb.n
  %.sroa.0.022.i.i.i.i.i = phi ptr [ %i.dv, %bb.n ], [ %.sroa.013.0.lcssa.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i = phi i64 [ %i.dw, %bb.n ], [ 0, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i, i64 880
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !2350, !noundef !4 ; 7 uses
  %.not.i.i.i.i.i96.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i96.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i95.i
  %i.dw = add i64 %.sroa.5.021.i.i.i.i.i, 1       ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i, i64 888
  %i.dy = load i16, ptr %i.dx, align 8, !noalias !2350 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 890
  %i.ea = load i16, ptr %i.dz, align 2, !noalias !2341, !noundef !4
  %i.eb = icmp ult i16 %i.dy, %i.ea
  br i1 %i.eb, label %bb.p, label %.lr.ph.i.i.i.i95.i

bb.o:                                             ; preds = %.lr.ph.i.i.i.i95.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #27, !noalias !2353
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ec = zext i16 %i.dy to i64                   ; 4 uses
  %i.ed = icmp eq i64 %i.dw, 0
  br i1 %i.ed, label %.thread.i, label %bb.q

.thread.i:                                        ; preds = %bb.p, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i
  %.sroa.06.0.ph.i.i.i165.i = phi ptr [ %i.dv, %bb.p ], [ %.sroa.013.0.lcssa.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i ] ; 2 uses
  %.sroa.10.0.ph.i.i.i163.i = phi i64 [ %i.ec, %bb.p ], [ 0, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i ] ; 2 uses
  %i.ee = add nuw nsw i64 %.sroa.10.0.ph.i.i.i163.i, 1
  br label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i

bb.q:                                             ; preds = %bb.p
  %i.ef = icmp ult i16 %i.dy, 11
  call void @llvm.assume(i1 %i.ef)
  %i.eg = getelementptr i8, ptr %i.dv, i64 904
  %i.eh = getelementptr [8 x i8], ptr %i.eg, i64 %i.ec ; 2 uses
  %xtraiter1579 = and i64 %i.dw, 7                ; 2 uses
  %lcmp.mod1580.not = icmp eq i64 %xtraiter1579, 0
  br i1 %lcmp.mod1580.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.q, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.prol = phi ptr [ %i.ei, %.prol.preheader ], [ %i.eh, %bb.q ]
  %.sroa.019.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ], [ %i.dw, %bb.q ]
  %prol.iter1581 = phi i64 [ %prol.iter1581.next, %.prol.preheader ], [ 0, %bb.q ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !2354, !nonnull !4, !noundef !4 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 896 ; 2 uses
  %prol.iter1581.next = add i64 %prol.iter1581, 1 ; 2 uses
  %prol.iter1581.cmp.not = icmp eq i64 %prol.iter1581.next, %xtraiter1579
  br i1 %prol.iter1581.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !2358

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.q
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.q ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.eh, %bb.q ], [ %i.ei, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %i.dw, %bb.q ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.ej = icmp ult i64 %.sroa.5.021.i.i.i.i.i, 7
  br i1 %i.ej, label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.es, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !2354, !nonnull !4, !noundef !4
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 896
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.ek, align 8, !noalias !2354, !nonnull !4, !noundef !4
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 896
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.el, align 8, !noalias !2354, !nonnull !4, !noundef !4
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 896
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.em, align 8, !noalias !2354, !nonnull !4, !noundef !4
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 896
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.en, align 8, !noalias !2354, !nonnull !4, !noundef !4
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 896
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.eo, align 8, !noalias !2354, !nonnull !4, !noundef !4
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 896
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.ep, align 8, !noalias !2354, !nonnull !4, !noundef !4
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 896
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.eq, align 8, !noalias !2354, !nonnull !4, !noundef !4 ; 2 uses
  %i.er = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 896
  br i1 %i.er, label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i, label %.new

.critedge.i.i:                                    ; preds = %bb.l
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #27, !noalias !2359
  unreachable

_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i: ; preds = %.prol.loopexit, %.new, %.thread.i
  %.sroa.06.0.ph.i.i.i164.i = phi ptr [ %.sroa.06.0.ph.i.i.i165.i, %.thread.i ], [ %i.dv, %.new ], [ %i.dv, %.prol.loopexit ]
  %.sroa.10.0.ph.i.i.i162.i = phi i64 [ %.sroa.10.0.ph.i.i.i163.i, %.thread.i ], [ %i.ec, %.new ], [ %i.ec, %.prol.loopexit ] ; 2 uses
  %.sroa.78.0.i.i.i.i = phi i64 [ %i.ee, %.thread.i ], [ 0, %.new ], [ 0, %.prol.loopexit ] ; 2 uses
  %.sroa.07.0.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i165.i, %.thread.i ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ] ; 3 uses
  %i.et = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i162.i, 11
  call void @llvm.assume(i1 %i.et)
  %i.eu = getelementptr inbounds nuw [80 x i8], ptr %.sroa.06.0.ph.i.i.i164.i, i64 %.sroa.10.0.ph.i.i.i162.i
  %i.ev = getelementptr i8, ptr %i.eu, i64 56
  %.val.i.i.i = load i64, ptr %i.ev, align 8, !noalias !2360, !noundef !4 ; 2 uses
  %i.ew = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ew, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i
  %i.ex = uitofp i64 %.val.i.i.i to double
  %i.ey = call double @llvm.log10.f64(double %i.ex)
  %i.ez = call i64 @llvm.fptoui.sat.i64.f64(double %i.ey)
  %i.fa = add i64 %i.ez, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i
  %.sroa.3.0.i.ph.i.i = phi i64 [ 1, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i ], [ %i.fa, %bb.r ] ; 2 uses
  %i.fb = icmp eq i64 %i.dd, 0
  br i1 %i.fb, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefENCNvB1O_26get_auto_max_reference_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2U_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0EB1O_.exit.i, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i7.i.i.i

_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i7.i.i.i: ; preds = %bb.s
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i, i64 890
  %i.fd = load i16, ptr %i.fc, align 2, !noalias !2365, !noundef !4
  %i.fe = zext i16 %i.fd to i64
  %i.ff = icmp samesign ult i64 %.sroa.78.0.i.i.i.i, %i.fe
  br i1 %i.ff, label %.thread174.i, label %.lr.ph.i.i.i.i13.i.i.i

.lr.ph.i.i.i.i13.i.i.i:                           ; preds = %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i7.i.i.i, %bb.t
  %.sroa.0.022.i.i.i.i14.i.i.i = phi ptr [ %i.fh, %bb.t ], [ %.sroa.07.0.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i7.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i15.i.i.i = phi i64 [ %i.fi, %bb.t ], [ 0, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i7.i.i.i ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i14.i.i.i, i64 880
  %i.fh = load ptr, ptr %i.fg, align 8, !noalias !2378, !noundef !4 ; 7 uses
  %.not.i.i.i.i.i16.i.i.i = icmp eq ptr %i.fh, null
end_hunk_0
