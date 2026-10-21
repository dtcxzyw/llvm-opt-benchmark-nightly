Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_ptx-f695fb62d915b013.uu_ptx.c0c590d8fc0ebb31-cgu.0?download=true
inline.NumInlined: 1812
inline.NumDeleted: 1075
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvCsgy7pbN39oAf_6uu_ptx24write_traditional_output:bb.a
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !2602
  store i128 79537652246452167413109620736, ptr %i.bc, align 16, !noalias !2602
  call void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.bc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !2602
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %lhsc = load i8, ptr %3, align 1
  %i.bn = icmp eq i8 %lhsc, 45
  br i1 %i.bn, label %.split64, label %.split

.split:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !2603
  store i128 79537652246452167413109620736, ptr %i.bb, align 16, !noalias !2603
  call void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef 1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !2603
  br label %bb.c

bb.c:                                             ; preds = %.split60, %.split
  %.sink = phi i64 [ %4, %.split60 ], [ 1, %.split ]
  call fastcc void @_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_B1i_INtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsgy7pbN39oAf_6uu_ptx24write_traditional_output0EB3J_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.bk, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %i.bj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %.sink) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %i.bo = load ptr, ptr %i.bk, align 8, !noundef !7 ; 2 uses
  %.not = icmp eq ptr %i.bo, null
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  br i1 %.not, label %.split62, label %bb.f

.split64:                                         ; preds = %bb.b
  %i.bq = tail call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #28
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.br = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #28 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !12

bb.d:                                             ; preds = %.split64
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #30
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %.split64
  store ptr %i.bq, ptr %i.br, align 8
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2604
  %i.bt = tail call noundef dereferenceable_or_null(8192) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 8192, i64 noundef range(i64 1, 9) 1) #28, !noalias !2604 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.e, label %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterINtNtB8_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE13with_capacityCsgy7pbN39oAf_6uu_ptx.exit

bb.e:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8192) #30, !noalias !2605
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.bv = load ptr, ptr %i.bp, align 8, !nonnull !7, !align !9, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.bj

.split62:                                         ; preds = %bb.c
  %i.bw = load i32, ptr %i.bp, align 8, !range !18, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.bx = call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #28 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.g, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit93, !prof !12

bb.g:                                             ; preds = %.split62
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #30
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit93: ; preds = %.split62
  store i32 %i.bw, ptr %i.bx, align 4
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2606
  %i.bz = call noundef dereferenceable_or_null(8192) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 8192, i64 noundef range(i64 1, 9) 1) #28, !noalias !2606 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.h, label %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterINtNtB8_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE13with_capacityCsgy7pbN39oAf_6uu_ptx.exit

bb.h:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit93
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8192) #30, !noalias !2607
  unreachable

_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterINtNtB8_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE13with_capacityCsgy7pbN39oAf_6uu_ptx.exit: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit93, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  %.sink1061 = phi ptr [ %i.bt, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %i.bz, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit93 ]
  %.sink1058 = phi ptr [ %i.br, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %i.bx, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit93 ]
  %.sink1056 = phi ptr [ @125, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ @124, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit93 ]
  store i64 8192, ptr %i.bl, align 8
  %.sroa.42.0..sroa_idx.i94 = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %.sink1061, ptr %.sroa.42.0..sroa_idx.i94, align 8
  %.sroa.5.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i95, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store i8 0, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store ptr %.sink1058, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store ptr %.sink1056, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !7, !noundef !7
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !7
  call void @_RNvMs3_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Regex3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cf, i64 noundef %i.ch) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  call void @llvm.experimental.noalias.scope.decl(metadata !2609)
  %i.ci = load ptr, ptr %i.bh, align 8, !alias.scope !2609, !noundef !7
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCsgy7pbN39oAf_6uu_ptx.exit, !prof !12

bb.i:                                             ; preds = %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterINtNtB8_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE13with_capacityCsgy7pbN39oAf_6uu_ptx.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !2610
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ck, i64 24, i1 false), !noalias !2608
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 43, ptr noundef nonnull %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @165, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #27, !noalias !2610
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCsgy7pbN39oAf_6uu_ptx.exit: ; preds = %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterINtNtB8_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE13with_capacityCsgy7pbN39oAf_6uu_ptx.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bh, i64 32, i1 false), !alias.scope !2610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 115 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !range !16, !noundef !7
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %.preheader, label %bb.j

bb.j:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCsgy7pbN39oAf_6uu_ptx.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.cp = load i8, ptr %i.co, align 1, !range !16, !noundef !7
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.k, label %bb.ax

.preheader:                                       ; preds = %bb.ax, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCsgy7pbN39oAf_6uu_ptx.exit
  %i.cr = load ptr, ptr %2, align 8, !noundef !7  ; 5 uses
  %.not79 = icmp ne ptr %i.cr, null
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ct = load i64, ptr %i.cs, align 8            ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cv = load i64, ptr %i.cu, align 8            ; 2 uses
  %i.cw = icmp ne i64 %i.cv, 0
  %.not477 = select i1 %.not79, i1 %i.cw, i1 false
  br i1 %.not477, label %.lr.ph, label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.thread

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !2611)
  %i.cx = load ptr, ptr %2, align 8, !alias.scope !2611, !noundef !7 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i = icmp ne ptr %i.cx, null               ; 4 uses
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !2611 ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !2611
  %.sroa.07.sroa.7.sroa.6.0.i = select i1 %.not.i, i64 %i.cz, i64 undef
  %.sroa.5.0.i = select i1 %.not.i, i64 %i.db, i64 0 ; 4 uses
  %i.dc = ptrtoint ptr %i.cx to i64
  %i.dd = icmp eq i64 %.sroa.5.0.i, 0
  br i1 %i.dd, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefENCNvB1O_26get_auto_max_reference_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2U_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0EB1O_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.de = add i64 %.sroa.5.0.i, -1                ; 2 uses
  br i1 %.not.i, label %bb.m, label %.critedge.i.i

bb.m:                                             ; preds = %bb.l
  %i.df = icmp eq i64 %i.cz, 0
  br i1 %i.df, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.m
  %xtraiter = and i64 %i.cz, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.sroa.013.017.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %i.cx, %.lr.ph.i.i.i.preheader ]
  %.sroa.011.016.i.i.i.prol = phi i64 [ %i.dh, %.lr.ph.i.i.i.prol ], [ %i.cz, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.prol, i64 896
  %i.dh = add i64 %.sroa.011.016.i.i.i.prol, -1   ; 2 uses
  %.sroa.013.0.i.i.i.prol = load ptr, ptr %i.dg, align 8, !noalias !2612, !nonnull !7, !noundef !7 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !2253

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.013.0.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.sroa.013.017.i.i.i.unr = phi ptr [ %i.cx, %.lr.ph.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.sroa.011.016.i.i.i.unr = phi i64 [ %i.cz, %.lr.ph.i.i.i.preheader ], [ %i.dh, %.lr.ph.i.i.i.prol ]
  %i.di = icmp ult i64 %i.cz, 8
  br i1 %i.di, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.sroa.013.017.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.7, %.lr.ph.i.i.i ], [ %.sroa.013.017.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.sroa.011.016.i.i.i = phi i64 [ %i.dr, %.lr.ph.i.i.i ], [ %.sroa.011.016.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i, i64 896
  %.sroa.013.0.i.i.i = load ptr, ptr %i.dj, align 8, !noalias !2612, !nonnull !7, !noundef !7
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i, i64 896
  %.sroa.013.0.i.i.i.1 = load ptr, ptr %i.dk, align 8, !noalias !2612, !nonnull !7, !noundef !7
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.1, i64 896
  %.sroa.013.0.i.i.i.2 = load ptr, ptr %i.dl, align 8, !noalias !2612, !nonnull !7, !noundef !7
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.2, i64 896
  %.sroa.013.0.i.i.i.3 = load ptr, ptr %i.dm, align 8, !noalias !2612, !nonnull !7, !noundef !7
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.3, i64 896
  %.sroa.013.0.i.i.i.4 = load ptr, ptr %i.dn, align 8, !noalias !2612, !nonnull !7, !noundef !7
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.4, i64 896
  %.sroa.013.0.i.i.i.5 = load ptr, ptr %i.do, align 8, !noalias !2612, !nonnull !7, !noundef !7
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.5, i64 896
  %.sroa.013.0.i.i.i.6 = load ptr, ptr %i.dp, align 8, !noalias !2612, !nonnull !7, !noundef !7
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.6, i64 896
  %i.dr = add i64 %.sroa.011.016.i.i.i, -8        ; 2 uses
  %.sroa.013.0.i.i.i.7 = load ptr, ptr %i.dq, align 8, !noalias !2612, !nonnull !7, !noundef !7 ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i, label %.lr.ph.i.i.i

_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.m
  %.sroa.013.0.lcssa.i.i.i = phi ptr [ %i.cx, %bb.m ], [ %.sroa.013.0.i.i.i.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.i.7, %.lr.ph.i.i.i ] ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.013.0.lcssa.i.i.i, i64 890
  %i.du = load i16, ptr %i.dt, align 2, !noalias !2613, !noundef !7
  %.not198.i = icmp eq i16 %i.du, 0
  br i1 %.not198.i, label %.lr.ph.i.i.i.i95.i, label %.thread.i

.lr.ph.i.i.i.i95.i:                               ; preds = %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i, %bb.n
  %.sroa.0.022.i.i.i.i.i = phi ptr [ %i.dw, %bb.n ], [ %.sroa.013.0.lcssa.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i = phi i64 [ %i.dx, %bb.n ], [ 0, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i, i64 880
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !2614, !noundef !7 ; 7 uses
  %.not.i.i.i.i.i96.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i96.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i95.i
  %i.dx = add i64 %.sroa.5.021.i.i.i.i.i, 1       ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i, i64 888
  %i.dz = load i16, ptr %i.dy, align 8, !noalias !2614 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 890
  %i.eb = load i16, ptr %i.ea, align 2, !noalias !2613, !noundef !7
  %i.ec = icmp ult i16 %i.dz, %i.eb
  br i1 %i.ec, label %bb.p, label %.lr.ph.i.i.i.i95.i

bb.o:                                             ; preds = %.lr.ph.i.i.i.i95.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #27, !noalias !2615
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ed = zext i16 %i.dz to i64                   ; 4 uses
  %i.ee = icmp eq i64 %i.dx, 0
  br i1 %i.ee, label %.thread.i, label %bb.q

.thread.i:                                        ; preds = %bb.p, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i
  %.sroa.06.0.ph.i.i.i165.i = phi ptr [ %i.dw, %bb.p ], [ %.sroa.013.0.lcssa.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i ] ; 2 uses
  %.sroa.10.0.ph.i.i.i163.i = phi i64 [ %i.ed, %bb.p ], [ 0, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i ] ; 2 uses
  %i.ef = add nuw nsw i64 %.sroa.10.0.ph.i.i.i163.i, 1
  br label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i

bb.q:                                             ; preds = %bb.p
  %i.eg = icmp ult i16 %i.dz, 11
  call void @llvm.assume(i1 %i.eg)
  %i.eh = getelementptr i8, ptr %i.dw, i64 904
  %i.ei = getelementptr [8 x i8], ptr %i.eh, i64 %i.ed ; 2 uses
  %xtraiter1580 = and i64 %i.dx, 7                ; 2 uses
  %lcmp.mod1581.not = icmp eq i64 %xtraiter1580, 0
  br i1 %lcmp.mod1581.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.q, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.prol = phi ptr [ %i.ej, %.prol.preheader ], [ %i.ei, %bb.q ]
  %.sroa.019.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ], [ %i.dx, %bb.q ]
  %prol.iter1582 = phi i64 [ %prol.iter1582.next, %.prol.preheader ], [ 0, %bb.q ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !2616, !nonnull !7, !noundef !7 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 896 ; 2 uses
  %prol.iter1582.next = add i64 %prol.iter1582, 1 ; 2 uses
  %prol.iter1582.cmp.not = icmp eq i64 %prol.iter1582.next, %xtraiter1580
  br i1 %prol.iter1582.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !2267

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.q
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.q ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.ei, %bb.q ], [ %i.ej, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %i.dx, %bb.q ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.ek = icmp ult i64 %.sroa.5.021.i.i.i.i.i, 7
  br i1 %i.ek, label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.et, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !2616, !nonnull !7, !noundef !7
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 896
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.el, align 8, !noalias !2616, !nonnull !7, !noundef !7
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 896
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.em, align 8, !noalias !2616, !nonnull !7, !noundef !7
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 896
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.en, align 8, !noalias !2616, !nonnull !7, !noundef !7
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 896
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.eo, align 8, !noalias !2616, !nonnull !7, !noundef !7
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 896
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.ep, align 8, !noalias !2616, !nonnull !7, !noundef !7
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 896
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.eq, align 8, !noalias !2616, !nonnull !7, !noundef !7
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 896
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.er, align 8, !noalias !2616, !nonnull !7, !noundef !7 ; 2 uses
  %i.es = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 896
  br i1 %i.es, label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i, label %.new

.critedge.i.i:                                    ; preds = %bb.l
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #27, !noalias !2617
  unreachable

_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i: ; preds = %.prol.loopexit, %.new, %.thread.i
  %.sroa.06.0.ph.i.i.i164.i = phi ptr [ %.sroa.06.0.ph.i.i.i165.i, %.thread.i ], [ %i.dw, %.new ], [ %i.dw, %.prol.loopexit ]
  %.sroa.10.0.ph.i.i.i162.i = phi i64 [ %.sroa.10.0.ph.i.i.i163.i, %.thread.i ], [ %i.ed, %.new ], [ %i.ed, %.prol.loopexit ] ; 2 uses
  %.sroa.78.0.i.i.i.i = phi i64 [ %i.ef, %.thread.i ], [ 0, %.new ], [ 0, %.prol.loopexit ] ; 2 uses
  %.sroa.07.0.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i165.i, %.thread.i ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ] ; 3 uses
  %i.eu = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i162.i, 11
  call void @llvm.assume(i1 %i.eu)
  %i.ev = getelementptr inbounds nuw [80 x i8], ptr %.sroa.06.0.ph.i.i.i164.i, i64 %.sroa.10.0.ph.i.i.i162.i
  %i.ew = getelementptr i8, ptr %i.ev, i64 56
  %.val.i.i.i = load i64, ptr %i.ew, align 8, !noalias !2618, !noundef !7 ; 2 uses
  %i.ex = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ex, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i
  %i.ey = uitofp i64 %.val.i.i.i to double
  %i.ez = call double @llvm.log10.f64(double %i.ey)
  %i.fa = call i64 @llvm.fptoui.sat.i64.f64(double %i.ez)
  %i.fb = add i64 %i.fa, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i
  %.sroa.3.0.i.ph.i.i = phi i64 [ 1, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i ], [ %i.fb, %bb.r ] ; 2 uses
  %i.fc = icmp eq i64 %i.de, 0
  br i1 %i.fc, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefENCNvB1O_26get_auto_max_reference_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2U_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0EB1O_.exit.i, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i7.i.i.i

_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i7.i.i.i: ; preds = %bb.s
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i, i64 890
  %i.fe = load i16, ptr %i.fd, align 2, !noalias !2619, !noundef !7
  %i.ff = zext i16 %i.fe to i64
  %i.fg = icmp samesign ult i64 %.sroa.78.0.i.i.i.i, %i.ff
  br i1 %i.fg, label %.thread174.i, label %.lr.ph.i.i.i.i13.i.i.i

.lr.ph.i.i.i.i13.i.i.i:                           ; preds = %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i7.i.i.i, %bb.t
  %.sroa.0.022.i.i.i.i14.i.i.i = phi ptr [ %i.fi, %bb.t ], [ %.sroa.07.0.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i7.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i15.i.i.i = phi i64 [ %i.fj, %bb.t ], [ 0, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i7.i.i.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvCsgy7pbN39oAf_6uu_ptx24write_traditional_output:bb.a
  br i1 %i.ml, label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i.i.i, label %.new1620

.new1620:                                         ; preds = %.prol.loopexit1619, %.new1620
  %.sroa.017.0.in.i.i.i.i.i.i.i.i = phi ptr [ %i.mu, %.new1620 ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit1619 ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.7, %.new1620 ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit1619 ]
  %.sroa.017.0.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i, align 8, !noalias !2656, !nonnull !7, !noundef !7
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.mm, align 8, !noalias !2656, !nonnull !7, !noundef !7
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.1, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.mn, align 8, !noalias !2656, !nonnull !7, !noundef !7
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.2, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.mo, align 8, !noalias !2656, !nonnull !7, !noundef !7
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.3, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.mp, align 8, !noalias !2656, !nonnull !7, !noundef !7
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.4, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.mq, align 8, !noalias !2656, !nonnull !7, !noundef !7
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.5, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.mr, align 8, !noalias !2656, !nonnull !7, !noundef !7
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.6, i64 896
  %.sroa.019.0.i.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.ms, align 8, !noalias !2656, !nonnull !7, !noundef !7 ; 2 uses
  %i.mt = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.i.7, 0
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.7, i64 896
  br i1 %i.mt, label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i.i.i, label %.new1620

_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i.i.i: ; preds = %.prol.loopexit1619, %.new1620, %.thread.i.i.i.i
  %.sroa.06.0.ph.i.i.i71.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i72.i.i.i.i, %.thread.i.i.i.i ], [ %i.lx, %.new1620 ], [ %i.lx, %.prol.loopexit1619 ]
  %.sroa.10.0.ph.i.i.i69.i.i.i.i = phi i64 [ %.sroa.10.0.ph.i.i.i70.i.i.i.i, %.thread.i.i.i.i ], [ %i.me, %.new1620 ], [ %i.me, %.prol.loopexit1619 ] ; 2 uses
  %.sroa.78.0.i.i.i.i.i.i.i = phi i64 [ %i.mg, %.thread.i.i.i.i ], [ 0, %.new1620 ], [ 0, %.prol.loopexit1619 ]
  %.sroa.07.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i72.i.i.i.i, %.thread.i.i.i.i ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit1619 ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.7, %.new1620 ]
  %i.mv = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i69.i.i.i.i, 11
  call void @llvm.assume(i1 %i.mv)
  %i.mw = getelementptr inbounds nuw [80 x i8], ptr %.sroa.06.0.ph.i.i.i71.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i69.i.i.i.i
  br label %bb.aq

_RNvCsgy7pbN39oAf_6uu_ptx26get_auto_max_reference_len.exit: ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkRNtCsgy7pbN39oAf_6uu_ptx7WordRefQNCNvB1f_26get_auto_max_reference_lens_0E0B1f_.exit.i.i.i.i.i.i, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter11filter_foldRNtCsgy7pbN39oAf_6uu_ptx7WordRefjNCNvB14_26get_auto_max_reference_lens_0NCINvNtB6_3map8map_foldB11_jjNCB1A_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0E0B14_.exit.i.i.i.i.i, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefENCNvB1O_26get_auto_max_reference_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2U_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0EB1O_.exit.i, %bb.al
  %.sroa.0.0.i93.i = phi i64 [ 0, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefENCNvB1O_26get_auto_max_reference_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2U_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0EB1O_.exit.i ], [ %.sroa.5.0.copyload.i.i.i.i, %bb.al ], [ %.sroa.0.0.i.i.i.i.i91.i, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter11filter_foldRNtCsgy7pbN39oAf_6uu_ptx7WordRefjNCNvB14_26get_auto_max_reference_lens_0NCINvNtB6_3map8map_foldB11_jjNCB1A_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0E0B14_.exit.i.i.i.i.i ], [ 0, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkRNtCsgy7pbN39oAf_6uu_ptx7WordRefQNCNvB1f_26get_auto_max_reference_lens_0E0B1f_.exit.i.i.i.i.i.i ]
  %i.mx = add i64 %.sroa.0.0.i.i, 1
  %i.my = add i64 %i.mx, %.sroa.0.0.i93.i
  br label %bb.ax

bb.ax:                                            ; preds = %bb.j, %_RNvCsgy7pbN39oAf_6uu_ptx26get_auto_max_reference_len.exit
  %.sroa.03.0 = phi i64 [ %i.my, %_RNvCsgy7pbN39oAf_6uu_ptx26get_auto_max_reference_len.exit ], [ 0, %bb.j ]
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.na = load i64, ptr %i.mz, align 8, !noundef !7
  %i.nb = call i64 @llvm.usub.sat.i64(i64 %i.na, i64 %.sroa.03.0)
  store i64 %i.nb, ptr %i.mz, align 8
  br label %.preheader

.lr.ph:                                           ; preds = %.preheader
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nd = load ptr, ptr %i.nc, align 8, !nonnull !7 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nf = load i64, ptr %i.ne, align 8
  %.fr478 = freeze i64 %i.nf                      ; 2 uses
  %.idx = mul nuw nsw i64 %.fr478, 80
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.idx
  %i.nh = icmp eq i64 %.fr478, 0
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 113 ; 4 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 114 ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 7 uses
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 5 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.nn = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.no = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.42.0..sroa_idx.i105 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 117
  %.sroa.4.0..sroa_idx.i143 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5.0..sroa_idx.i144 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.49.0..sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.4.0..sroa_idx1.i148 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.6.0..sroa_idx.i150 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.nq = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.43.0..sroa_idx.i153 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.64.0..sroa_idx.i155 = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.nr = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.46.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.67.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.ns = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %.sroa.49.0..sroa_idx10.i163 = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %.sroa.611.0..sroa_idx.i165 = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.nt = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %.sroa.413.0..sroa_idx.i168 = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %.sroa.614.0..sroa_idx.i170 = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %.sroa.424.0..sroa_idx.i172 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.428.0..sroa_idx.i173 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.nv = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.432.0..sroa_idx.i174 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.nw = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.436.0..sroa_idx.i175 = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.nx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.440.0..sroa_idx.i176 = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ny = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.oa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.456.0..sroa_idx.i198 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.od = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0..sroa_idx.i129 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.5.0..sroa_idx.i130 = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.4.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.6.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.oe = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.64.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.of = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.og = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %.sroa.49.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.oh = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %.sroa.424.0..sroa_idx.i137 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.428.0..sroa_idx.i138 = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.oj = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ok = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ol = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.om = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.on = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.oo = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.op = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.oq = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.os = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.ou = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %.sroa.4.0..sroa_idx.i106 = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %.sroa.6.0..sroa_idx.i107 = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.ov = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.ow = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %i.ox = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.oy = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.64.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.9.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.64.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.pb = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.sroa.420.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.pc = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.623.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.8.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.623.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.pr = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ps = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 9 uses
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 14 uses
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.pu = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  br i1 %i.nh, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.px = ptrtoint ptr %i.cr to i64
  br label %bb.az

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.py = icmp eq i64 %i.ct, 0
  br i1 %i.py, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.us, label %.lr.ph.i.i.us.preheader

.lr.ph.i.i.us.preheader:                          ; preds = %.lr.ph.split.us
  %xtraiter1635 = and i64 %i.ct, 7                ; 2 uses
  %lcmp.mod1636.not = icmp eq i64 %xtraiter1635, 0
  br i1 %lcmp.mod1636.not, label %.lr.ph.i.i.us.prol.loopexit, label %.lr.ph.i.i.us.prol

.lr.ph.i.i.us.prol:                               ; preds = %.lr.ph.i.i.us.preheader, %.lr.ph.i.i.us.prol
  %.sroa.013.017.i.i.us.prol = phi ptr [ %.sroa.013.0.i.i.us.prol, %.lr.ph.i.i.us.prol ], [ %i.cr, %.lr.ph.i.i.us.preheader ]
  %.sroa.011.016.i.i.us.prol = phi i64 [ %i.qa, %.lr.ph.i.i.us.prol ], [ %i.ct, %.lr.ph.i.i.us.preheader ]
  %prol.iter1637 = phi i64 [ %prol.iter1637.next, %.lr.ph.i.i.us.prol ], [ 0, %.lr.ph.i.i.us.preheader ]
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.us.prol, i64 896
  %i.qa = add i64 %.sroa.011.016.i.i.us.prol, -1  ; 2 uses
  %.sroa.013.0.i.i.us.prol = load ptr, ptr %i.pz, align 8, !noalias !2657, !nonnull !7, !noundef !7 ; 3 uses
  %prol.iter1637.next = add i64 %prol.iter1637, 1 ; 2 uses
  %prol.iter1637.cmp.not = icmp eq i64 %prol.iter1637.next, %xtraiter1635
  br i1 %prol.iter1637.cmp.not, label %.lr.ph.i.i.us.prol.loopexit, label %.lr.ph.i.i.us.prol, !llvm.loop !2393

.lr.ph.i.i.us.prol.loopexit:                      ; preds = %.lr.ph.i.i.us.prol, %.lr.ph.i.i.us.preheader
  %.sroa.013.0.i.i.us.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.us.preheader ], [ %.sroa.013.0.i.i.us.prol, %.lr.ph.i.i.us.prol ]
  %.sroa.013.017.i.i.us.unr = phi ptr [ %i.cr, %.lr.ph.i.i.us.preheader ], [ %.sroa.013.0.i.i.us.prol, %.lr.ph.i.i.us.prol ]
  %.sroa.011.016.i.i.us.unr = phi i64 [ %i.ct, %.lr.ph.i.i.us.preheader ], [ %i.qa, %.lr.ph.i.i.us.prol ]
  %i.qb = icmp ult i64 %i.ct, 8
  br i1 %i.qb, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.us, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us.prol.loopexit, %.lr.ph.i.i.us
  %.sroa.013.017.i.i.us = phi ptr [ %.sroa.013.0.i.i.us.7, %.lr.ph.i.i.us ], [ %.sroa.013.017.i.i.us.unr, %.lr.ph.i.i.us.prol.loopexit ]
  %.sroa.011.016.i.i.us = phi i64 [ %i.qk, %.lr.ph.i.i.us ], [ %.sroa.011.016.i.i.us.unr, %.lr.ph.i.i.us.prol.loopexit ]
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.us, i64 896
  %.sroa.013.0.i.i.us = load ptr, ptr %i.qc, align 8, !noalias !2657, !nonnull !7, !noundef !7
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.us, i64 896
  %.sroa.013.0.i.i.us.1 = load ptr, ptr %i.qd, align 8, !noalias !2657, !nonnull !7, !noundef !7
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.us.1, i64 896
  %.sroa.013.0.i.i.us.2 = load ptr, ptr %i.qe, align 8, !noalias !2657, !nonnull !7, !noundef !7
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.us.2, i64 896
  %.sroa.013.0.i.i.us.3 = load ptr, ptr %i.qf, align 8, !noalias !2657, !nonnull !7, !noundef !7
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.us.3, i64 896
  %.sroa.013.0.i.i.us.4 = load ptr, ptr %i.qg, align 8, !noalias !2657, !nonnull !7, !noundef !7
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.us.4, i64 896
  %.sroa.013.0.i.i.us.5 = load ptr, ptr %i.qh, align 8, !noalias !2657, !nonnull !7, !noundef !7
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.us.5, i64 896
  %.sroa.013.0.i.i.us.6 = load ptr, ptr %i.qi, align 8, !noalias !2657, !nonnull !7, !noundef !7
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.us.6, i64 896
  %i.qk = add i64 %.sroa.011.016.i.i.us, -8       ; 2 uses
  %.sroa.013.0.i.i.us.7 = load ptr, ptr %i.qj, align 8, !noalias !2657, !nonnull !7, !noundef !7 ; 2 uses
  %i.ql = icmp eq i64 %i.qk, 0
  br i1 %i.ql, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.us, label %.lr.ph.i.i.us

_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.us: ; preds = %.lr.ph.i.i.us.prol.loopexit, %.lr.ph.i.i.us, %.lr.ph.split.us
  %.sroa.07.0.copyload.i.i.us = phi ptr [ %i.cr, %.lr.ph.split.us ], [ %.sroa.013.0.i.i.us.lcssa.unr, %.lr.ph.i.i.us.prol.loopexit ], [ %.sroa.013.0.i.i.us.7, %.lr.ph.i.i.us ] ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i.us, i64 890
  %i.qn = load i16, ptr %i.qm, align 2, !noalias !2658, !noundef !7
  %.not479 = icmp eq i16 %i.qn, 0
  br i1 %.not479, label %.lr.ph.i.i.i.i97.us, label %.loopexit244.split.us

.lr.ph.i.i.i.i97.us:                              ; preds = %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.us, %bb.ay
  %.sroa.0.022.i.i.i.i.us = phi ptr [ %i.qp, %bb.ay ], [ %.sroa.07.0.copyload.i.i.us, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.us ] ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.us, i64 880
  %i.qp = load ptr, ptr %i.qo, align 8, !noalias !2659, !noundef !7 ; 3 uses
  %.not.i.i.i.i.i.us = icmp eq ptr %i.qp, null
  br i1 %.not.i.i.i.i.i.us, label %.split475.us, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i97.us
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.us, i64 888
  %i.qr = load i16, ptr %i.qq, align 8, !noalias !2659
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qp, i64 890
  %i.qt = load i16, ptr %i.qs, align 2, !noalias !2658, !noundef !7
  %i.qu = icmp ult i16 %i.qr, %i.qt
  br i1 %i.qu, label %.loopexit244.split.us, label %.lr.ph.i.i.i.i97.us

.loopexit244.split.us:                            ; preds = %bb.ay, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.us
  call void @llvm.experimental.noalias.scope.decl(metadata !2660)
  br label %.loopexit

bb.az:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit212, %.lr.ph.split.preheader
  %.sroa.6.0472 = phi ptr [ %.sroa.07.0.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit212 ], [ null, %.lr.ph.split.preheader ] ; 2 uses
  %.sroa.15.0471 = phi i64 [ %.sroa.78.0.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit212 ], [ %i.ct, %.lr.ph.split.preheader ] ; 6 uses
  %.sroa.23.0470 = phi i64 [ %i.qv, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit212 ], [ %i.cv, %.lr.ph.split.preheader ]
  %.sroa.10.0469 = phi i64 [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit212 ], [ %i.px, %.lr.ph.split.preheader ] ; 2 uses
  %i.qv = add i64 %.sroa.23.0470, -1              ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.6.0472, null
  br i1 %.not.i.i, label %bb.ba, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.qw = inttoptr i64 %.sroa.10.0469 to ptr      ; 3 uses
  %i.qx = icmp eq i64 %.sroa.15.0471, 0
  br i1 %i.qx, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.ba
  %xtraiter1625 = and i64 %.sroa.15.0471, 7       ; 2 uses
  %lcmp.mod1626.not = icmp eq i64 %xtraiter1625, 0
  br i1 %lcmp.mod1626.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i.prol ], [ %i.qw, %.lr.ph.i.i.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.qz, %.lr.ph.i.i.prol ], [ %.sroa.15.0471, %.lr.ph.i.i.preheader ]
  %prol.iter1627 = phi i64 [ %prol.iter1627.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 896
  %i.qz = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.qy, align 8, !noalias !2657, !nonnull !7, !noundef !7 ; 3 uses
  %prol.iter1627.next = add i64 %prol.iter1627, 1 ; 2 uses
  %prol.iter1627.cmp.not = icmp eq i64 %prol.iter1627.next, %xtraiter1625
  br i1 %prol.iter1627.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2406

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %i.qw, %.lr.ph.i.i.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %.sroa.15.0471, %.lr.ph.i.i.preheader ], [ %i.qz, %.lr.ph.i.i.prol ]
  %i.ra = icmp ult i64 %.sroa.15.0471, 8
  br i1 %i.ra, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.rj, %.lr.ph.i.i ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.rb = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 896
  %.sroa.013.0.i.i = load ptr, ptr %i.rb, align 8, !noalias !2657, !nonnull !7, !noundef !7
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 896
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.rc, align 8, !noalias !2657, !nonnull !7, !noundef !7
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 896
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.rd, align 8, !noalias !2657, !nonnull !7, !noundef !7
  %i.re = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 896
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.re, align 8, !noalias !2657, !nonnull !7, !noundef !7
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 896
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.rf, align 8, !noalias !2657, !nonnull !7, !noundef !7
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 896
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.rg, align 8, !noalias !2657, !nonnull !7, !noundef !7
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 896
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.rh, align 8, !noalias !2657, !nonnull !7, !noundef !7
  %i.ri = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 896
  %i.rj = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ri, align 8, !noalias !2657, !nonnull !7, !noundef !7 ; 2 uses
  %i.rk = icmp eq i64 %i.rj, 0
  br i1 %i.rk, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i, label %.lr.ph.i.i

_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.ba, %bb.az
  %.sroa.59.0.copyload.i.i = phi i64 [ %.sroa.15.0471, %bb.az ], [ 0, %bb.ba ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i = phi i64 [ %.sroa.10.0469, %bb.az ], [ 0, %bb.ba ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i = phi ptr [ %.sroa.6.0472, %bb.az ], [ %i.qw, %bb.ba ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i ] ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 890
  %i.rm = load i16, ptr %i.rl, align 2, !noalias !2658, !noundef !7
  %i.rn = zext i16 %i.rm to i64
  %i.ro = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.rn
  br i1 %i.ro, label %bb.bc, label %.lr.ph.i.i.i.i97

.lr.ph.i.i.i.i97:                                 ; preds = %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i, %bb.bb
  %.sroa.0.022.i.i.i.i = phi ptr [ %i.rq, %bb.bb ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i = phi i64 [ %i.rs, %bb.bb ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i ]
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 880
  %i.rq = load ptr, ptr %i.rp, align 8, !noalias !2659, !noundef !7 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.rq, null
  br i1 %.not.i.i.i.i.i, label %.split475.us, label %bb.bb

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.bb
  %i.rr = zext i16 %i.ru to i64
  br label %bb.bc

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i97
  %i.rs = add i64 %.sroa.5.021.i.i.i.i, 1         ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 888
  %i.ru = load i16, ptr %i.rt, align 8, !noalias !2659 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rq, i64 890
  %i.rw = load i16, ptr %i.rv, align 2, !noalias !2658, !noundef !7
  %i.rx = icmp ult i16 %i.ru, %i.rw
  br i1 %i.rx, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i97

.split475.us:                                     ; preds = %.lr.ph.i.i.i.i97, %.lr.ph.i.i.i.i97.us
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #27, !noalias !2661
  unreachable

bb.bc:                                            ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.rr, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i ] ; 5 uses
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.rs, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i = phi ptr [ %i.rq, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i ] ; 3 uses
  %i.ry = icmp eq i64 %.sroa.7.0.ph.i.i.i, 0
  br i1 %i.ry, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.rz = add nuw nsw i64 %.sroa.10.0.ph.i.i.i, 1
  br label %.lr.ph.i

bb.be:                                            ; preds = %bb.bc
  %i.sa = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.sa)
  %i.sb = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i, i64 904
  %i.sc = getelementptr [8 x i8], ptr %i.sb, i64 %.sroa.10.0.ph.i.i.i ; 2 uses
  %xtraiter1632 = and i64 %.sroa.7.0.ph.i.i.i, 7  ; 2 uses
  %lcmp.mod1633.not = icmp eq i64 %xtraiter1632, 0
  br i1 %lcmp.mod1633.not, label %.prol.loopexit1630, label %.prol.preheader1629

.prol.preheader1629:                              ; preds = %bb.be, %.prol.preheader1629
  %.sroa.017.0.in.i.i.i.i.prol = phi ptr [ %i.sd, %.prol.preheader1629 ], [ %i.sc, %bb.be ]
  %.sroa.019.0.in.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.prol, %.prol.preheader1629 ], [ %.sroa.7.0.ph.i.i.i, %bb.be ]
  %prol.iter1634 = phi i64 [ %prol.iter1634.next, %.prol.preheader1629 ], [ 0, %bb.be ]
  %.sroa.019.0.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.prol, align 8, !noalias !2662, !nonnull !7, !noundef !7 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.prol, i64 896 ; 2 uses
  %prol.iter1634.next = add i64 %prol.iter1634, 1 ; 2 uses
  %prol.iter1634.cmp.not = icmp eq i64 %prol.iter1634.next, %xtraiter1632
  br i1 %prol.iter1634.cmp.not, label %.prol.loopexit1630, label %.prol.preheader1629, !llvm.loop !2410

.prol.loopexit1630:                               ; preds = %.prol.preheader1629, %bb.be
  %.sroa.017.0.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.be ], [ %.sroa.017.0.i.i.i.i.prol, %.prol.preheader1629 ]
  %.sroa.017.0.in.i.i.i.i.unr = phi ptr [ %i.sc, %bb.be ], [ %i.sd, %.prol.preheader1629 ]
  %.sroa.019.0.in.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i, %bb.be ], [ %.sroa.019.0.i.i.i.i.prol, %.prol.preheader1629 ]
  %i.se = icmp ult i64 %.sroa.7.0.ph.i.i.i, 8
  br i1 %i.se, label %.lr.ph.i, label %.new1631

.new1631:                                         ; preds = %.prol.loopexit1630, %.new1631
  %.sroa.017.0.in.i.i.i.i = phi ptr [ %i.sn, %.new1631 ], [ %.sroa.017.0.in.i.i.i.i.unr, %.prol.loopexit1630 ]
  %.sroa.019.0.in.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.7, %.new1631 ], [ %.sroa.019.0.in.i.i.i.i.unr, %.prol.loopexit1630 ]
  %.sroa.017.0.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i, align 8, !noalias !2662, !nonnull !7, !noundef !7
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i, i64 896
  %.sroa.017.0.i.i.i.i.1 = load ptr, ptr %i.sf, align 8, !noalias !2662, !nonnull !7, !noundef !7
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.1, i64 896
  %.sroa.017.0.i.i.i.i.2 = load ptr, ptr %i.sg, align 8, !noalias !2662, !nonnull !7, !noundef !7
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.2, i64 896
  %.sroa.017.0.i.i.i.i.3 = load ptr, ptr %i.sh, align 8, !noalias !2662, !nonnull !7, !noundef !7
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.3, i64 896
  %.sroa.017.0.i.i.i.i.4 = load ptr, ptr %i.si, align 8, !noalias !2662, !nonnull !7, !noundef !7
  %i.sj = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.4, i64 896
  %.sroa.017.0.i.i.i.i.5 = load ptr, ptr %i.sj, align 8, !noalias !2662, !nonnull !7, !noundef !7
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.5, i64 896
  %.sroa.017.0.i.i.i.i.6 = load ptr, ptr %i.sk, align 8, !noalias !2662, !nonnull !7, !noundef !7
  %i.sl = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.6, i64 896
  %.sroa.019.0.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.7 = load ptr, ptr %i.sl, align 8, !noalias !2662, !nonnull !7, !noundef !7 ; 2 uses
  %i.sm = icmp eq i64 %.sroa.019.0.i.i.i.i.7, 0
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.7, i64 896
  br i1 %i.sm, label %.lr.ph.i, label %.new1631

.lr.ph.i:                                         ; preds = %.prol.loopexit1630, %.new1631, %bb.bd
  %.sroa.78.0.i.i.i = phi i64 [ %i.rz, %bb.bd ], [ 0, %.new1631 ], [ 0, %.prol.loopexit1630 ]
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i, %bb.bd ], [ %.sroa.017.0.i.i.i.i.lcssa.unr, %.prol.loopexit1630 ], [ %.sroa.017.0.i.i.i.i.7, %.new1631 ]
  %i.so = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.so)
  %i.sp = getelementptr inbounds nuw [80 x i8], ptr %.sroa.06.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2660)
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 40 ; 2 uses
  %.val4.i.i = load i64, ptr %i.sq, align 8, !alias.scope !2660, !noundef !7 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sp, i64 32 ; 2 uses
  %.val3.i.i = load ptr, ptr %i.sr, align 8, !alias.scope !2660, !nonnull !7
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sp, i64 48
  %i.st = load i64, ptr %i.ss, align 8, !alias.scope !2660 ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %_RNCNvCsgy7pbN39oAf_6uu_ptx24write_traditional_outputs_0B3_.exit.thread.i, %.lr.ph.i
  %i.su = phi ptr [ %i.nd, %.lr.ph.i ], [ %i.sv, %_RNCNvCsgy7pbN39oAf_6uu_ptx24write_traditional_outputs_0B3_.exit.thread.i ] ; 13 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 80 ; 2 uses
  %i.sw = getelementptr i8, ptr %i.su, i64 16
  %.val2.i.i = load i64, ptr %i.sw, align 8, !noalias !2663, !noundef !7
  %i.sx = icmp eq i64 %.val2.i.i, %.val4.i.i
  br i1 %i.sx, label %_RNvXs8_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit.i.i, label %_RNCNvCsgy7pbN39oAf_6uu_ptx24write_traditional_outputs_0B3_.exit.thread.i

_RNvXs8_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.bf
  %i.sy = getelementptr i8, ptr %i.su, i64 8
  %.val.i.i = load ptr, ptr %i.sy, align 8, !noalias !2663, !nonnull !7, !noundef !7
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val3.i.i, i64 %.val4.i.i), !noalias !2663
  %i.sz = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.sz, label %bb.bg, label %_RNCNvCsgy7pbN39oAf_6uu_ptx24write_traditional_outputs_0B3_.exit.thread.i

bb.bg:                                            ; preds = %_RNvXs8_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit.i.i
  %i.ta = getelementptr inbounds nuw i8, ptr %i.su, i64 72
  %i.tb = load i64, ptr %i.ta, align 8, !noalias !2663, !noundef !7 ; 2 uses
  %.not.i.i99 = icmp ult i64 %i.st, %i.tb
  br i1 %.not.i.i99, label %_RNCNvCsgy7pbN39oAf_6uu_ptx24write_traditional_outputs_0B3_.exit.thread.i, label %_RNCNvCsgy7pbN39oAf_6uu_ptx24write_traditional_outputs_0B3_.exit.i

_RNCNvCsgy7pbN39oAf_6uu_ptx24write_traditional_outputs_0B3_.exit.i: ; preds = %bb.bg
  %i.tc = getelementptr inbounds nuw i8, ptr %i.su, i64 40
  %i.td = load i64, ptr %i.tc, align 8, !noalias !2663, !noundef !7 ; 4 uses
  %i.te = icmp ult i64 %i.td, 384307168202282326
  call void @llvm.assume(i1 %i.te)
  %i.tf = add i64 %i.td, %i.tb
  %i.tg = icmp ult i64 %i.st, %i.tf
  br i1 %i.tg, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtCsgy7pbN39oAf_6uu_ptx11FileContentEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvB1B_24write_traditional_outputs_0EB1B_.exit, label %_RNCNvCsgy7pbN39oAf_6uu_ptx24write_traditional_outputs_0B3_.exit.thread.i

_RNCNvCsgy7pbN39oAf_6uu_ptx24write_traditional_outputs_0B3_.exit.thread.i: ; preds = %_RNCNvCsgy7pbN39oAf_6uu_ptx24write_traditional_outputs_0B3_.exit.i, %bb.bg, %_RNvXs8_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit.i.i, %bb.bf
  %i.th = icmp eq ptr %i.sv, %i.ng
end_hunk_1
