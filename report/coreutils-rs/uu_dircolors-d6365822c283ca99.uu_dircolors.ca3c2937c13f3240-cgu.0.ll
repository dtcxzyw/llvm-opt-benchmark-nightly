Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_dircolors-d6365822c283ca99.uu_dircolors.ca3c2937c13f3240-cgu.0?download=true
inline.NumInlined: 415
inline.NumDeleted: 238
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvCshmuvWokFoRg_12uu_dircolors25generate_dircolors_config:_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit77: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i76, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i75
  %i.bo = phi ptr [ %.pre96, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i76 ], [ %i.bg, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i75 ]
  %i.bp = phi i64 [ %i.bl, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i76 ], [ %i.bi, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i75 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(73) %i.bq, ptr noundef nonnull align 1 dereferenceable(73) @28, i64 73, i1 false), !noalias !465
  %i.br = add nuw i64 %i.bp, 73                   ; 2 uses
  store i64 %i.br, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !465
  %i.bs = load ptr, ptr @_RNvNtNtCsh036I4OHgIr_6uucore8features6colors11FILE_COLORS, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.bt = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsh036I4OHgIr_6uucore8features6colors11FILE_COLORS, i64 8), align 8, !noundef !5 ; 2 uses
  %.idx92 = shl nuw nsw i64 %i.bt, 5
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx92
  %i.bv = icmp eq i64 %i.bt, 0
  br i1 %i.bv, label %._crit_edge90, label %.lr.ph89

.lr.ph89:                                         ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit77
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph89, %bb.c
  %.sroa.06.088 = phi ptr [ %i.bs, %.lr.ph89 ], [ %i.bx, %bb.c ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.06.088, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.06.088, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.06.088, i64 16
  store ptr %i.by, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRReNtB6_7Display3fmtCshmuvWokFoRg_12uu_dircolors, ptr %.sroa.449.0..sroa_idx, align 8
  store ptr %i.b, ptr %i.bw, align 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRReNtB6_7Display3fmtCshmuvWokFoRg_12uu_dircolors, ptr %.sroa.453.0..sroa_idx, align 8
  %i.bz = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @24, ptr noundef nonnull @26, ptr noundef nonnull %i.a) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ca = icmp eq ptr %i.bx, %i.bu
  br i1 %i.ca, label %._crit_edge90.loopexit, label %bb.c

._crit_edge90.loopexit:                           ; preds = %bb.c
  %.pre97 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !466
  br label %._crit_edge90

._crit_edge90:                                    ; preds = %._crit_edge90.loopexit, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit77
  %i.cb = phi i64 [ %.pre97, %._crit_edge90.loopexit ], [ %i.br, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit77 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.cc = load i64, ptr %i.i, align 8, !range !4, !alias.scope !466, !noundef !5 ; 2 uses
  %i.cd = sub i64 %i.cc, %i.cb
  %i.ce = icmp ult i64 %i.cd, 70
  br i1 %i.ce, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i79, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i78, !prof !10

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i79: ; preds = %._crit_edge90
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshmuvWokFoRg_12uu_dircolors(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.cb, i64 noundef 70, i64 noundef 1, i64 noundef 1) #19
  %i.cf = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !467, !noundef !5 ; 2 uses
  %i.cg = icmp sgt i64 %i.cf, -1
  call void @llvm.assume(i1 %i.cg)
  %.pre98 = load i64, ptr %i.i, align 8, !range !4, !alias.scope !468
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit80

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i78: ; preds = %._crit_edge90
  %i.ch = icmp sgt i64 %i.cb, -1
  call void @llvm.assume(i1 %i.ch)
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit80

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit80: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i79, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i78
  %i.ci = phi i64 [ %.pre98, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i79 ], [ %i.cc, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i78 ]
  %i.cj = phi i64 [ %i.cf, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i79 ], [ %i.cb, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i78 ] ; 2 uses
  %i.ck = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !467, !nonnull !5, !noundef !5 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(70) %i.cl, ptr noundef nonnull align 1 dereferenceable(70) @29, i64 70, i1 false), !noalias !467
  %i.cm = add nuw i64 %i.cj, 70                   ; 5 uses
  store i64 %i.cm, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !467
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.cn = sub i64 %i.ci, %i.cm
  %i.co = icmp ult i64 %i.cn, 58
  br i1 %i.co, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i82, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i81, !prof !10

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i82: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit80
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshmuvWokFoRg_12uu_dircolors(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.cm, i64 noundef 58, i64 noundef 1, i64 noundef 1) #19
  %i.cp = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !469, !noundef !5 ; 2 uses
  %i.cq = icmp sgt i64 %i.cp, -1
  call void @llvm.assume(i1 %i.cq)
  %.pre99 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !469
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit83

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i81: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit80
  %i.cr = icmp sgt i64 %i.cm, -1
  call void @llvm.assume(i1 %i.cr)
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit83

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit83: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i82, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i81
  %i.cs = phi ptr [ %.pre99, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i82 ], [ %i.ck, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i81 ]
  %i.ct = phi i64 [ %i.cp, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i82 ], [ %i.cm, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i81 ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.cu, ptr noundef nonnull align 1 dereferenceable(58) @30, i64 58, i1 false), !noalias !469
  %i.cv = add nuw i64 %i.ct, 58
  store i64 %i.cv, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCshmuvWokFoRg_12uu_dircolors25get_colors_format_strings(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %1, align 1, !range !13, !noundef !5
  switch i8 %i.a, label %default.unreachable81 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.h
  ]

default.unreachable81:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !478
  %i.b = tail call noundef dereferenceable_or_null(11) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 11, i64 noundef range(i64 1, 9) 1) #19, !noalias !478 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !479
  %i.d = tail call noundef dereferenceable_or_null(18) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 18, i64 noundef range(i64 1, 9) 1) #19, !noalias !479 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.i, label %bb.j

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 11) #21
  unreachable

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.b, ptr noundef nonnull align 1 dereferenceable(11) @31, i64 11, i1 false)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !480
  %i.f = tail call noundef dereferenceable_or_null(19) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 19, i64 noundef range(i64 1, 9) 1) #19, !noalias !480 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 19) #21
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.f, ptr noundef nonnull align 1 dereferenceable(19) @32, i64 19, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.l, %bb.g
  %.sroa.530.0 = phi i64 [ 19, %bb.g ], [ 1, %bb.l ], [ 0, %bb.a ]
  %.sroa.425.0 = phi ptr [ %i.f, %bb.g ], [ %i.i, %bb.l ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %.sroa.59.0 = phi i64 [ 11, %bb.g ], [ 18, %bb.l ], [ 0, %bb.a ]
  %.sroa.44.0 = phi ptr [ %i.b, %bb.g ], [ %i.d, %bb.l ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.h = phi <2 x i64> [ <i64 11, i64 19>, %bb.g ], [ <i64 18, i64 1>, %bb.l ], [ zeroinitializer, %bb.a ]
  store i64 %.sroa.59.0, ptr %0, align 8
  %.sroa.44.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.44.0, ptr %.sroa.44.0..sroa_idx5, align 8
  %.sroa.59.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.h, ptr %.sroa.59.0..sroa_idx10, align 8
  %.sroa.425.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.425.0, ptr %.sroa.425.0..sroa_idx26, align 8
  %.sroa.530.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.530.0, ptr %.sroa.530.0..sroa_idx31, align 8
  ret void

bb.i:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 18) #21
  unreachable

bb.j:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.d, ptr noundef nonnull align 1 dereferenceable(18) @33, i64 18, i1 false)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !481
  %i.i = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #19, !noalias !481 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #21
  unreachable

bb.l:                                             ; preds = %bb.j
  store i8 39, ptr %i.i, align 1
  br label %bb.h
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCshmuvWokFoRg_12uu_dircolors6escape(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  %i.c = icmp samesign eq i64 %2, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.q
  %3 = phi ptr [ %8, %bb.q ], [ inttoptr (i64 1 to ptr), %bb.a ] ; 2 uses
  %i.d = phi ptr [ %i.cg, %bb.q ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.e = phi i64 [ %.sink, %bb.q ], [ 0, %bb.a ]  ; 14 uses
  %.sroa.0.019 = phi i32 [ %.sroa.4.0.i.ph, %bb.q ], [ 32, %bb.a ]
  %.sroa.0.01118 = phi ptr [ %.sroa.0.1.ph, %bb.q ], [ %1, %bb.a ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.01118, i64 1 ; 3 uses
  %i.g = load i8, ptr %.sroa.0.01118, align 1, !noalias !496, !noundef !5 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit12.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit12.i: ; preds = %.lr.ph
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.b
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.01118, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !496, !noundef !5
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit14.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit14.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit12.i
  %i.t = icmp ne ptr %i.l, %i.b
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.01118, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !496, !noundef !5
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit16.i, label %bb.c

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit16.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit14.i
  %i.ad = icmp ne ptr %i.u, %i.b
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.01118, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !496, !noundef !5
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit12.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit16.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit14.i
  %.sroa.0.1.ph = phi ptr [ %i.l, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit12.i ], [ %i.u, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit14.i ], [ %i.ae, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit16.i ], [ %i.f, %bb.b ] ; 2 uses
  %.sroa.4.0.i.ph = phi i32 [ %i.q, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit12.i ], [ %i.ab, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit14.i ], [ %i.am, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit16.i ], [ %i.s, %bb.b ] ; 13 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.an)
  switch i32 %.sroa.4.0.i.ph, label %bb.d [
    i32 39, label %bb.o
    i32 58, label %bb.p
  ]

._crit_edge:                                      ; preds = %bb.q, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  %i.ao = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp samesign ult i32 %.sroa.4.0.i.ph, 128
  br i1 %i.ap, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048
  br i1 %i.aq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536
  %..i = select i1 %i.ar, i64 3, i64 4
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f, %bb.e, %bb.d
  %i.as = phi i1 [ false, %bb.e ], [ false, %bb.f ], [ true, %bb.d ], [ true, %.thread ]
  %.sroa.0.0.i6 = phi i64 [ 2, %bb.e ], [ %..i, %bb.f ], [ 1, %bb.d ], [ 1, %.thread ] ; 3 uses
  %i.at = load i64, ptr %i.a, align 8, !range !4, !alias.scope !498, !noundef !5
  %i.au = sub nsw i64 %i.at, %i.e
  %i.av = icmp ugt i64 %.sroa.0.0.i6, %i.au
  br i1 %i.av, label %bb.h, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i, !prof !10

bb.h:                                             ; preds = %bb.g
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshmuvWokFoRg_12uu_dircolors(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.e, i64 noundef %.sroa.0.0.i6, i64 noundef 1, i64 noundef 1) #19
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i: ; preds = %bb.h, %bb.g
  %i.aw = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !497, !nonnull !5, !noundef !5 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.e ; 10 uses
  br i1 %i.as, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i
  %i.ay = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048
  %i.az = trunc i32 %.sroa.4.0.i.ph to i8
  %i.ba = and i8 %i.az, 63
  %i.bb = or disjoint i8 %i.ba, -128              ; 3 uses
  %i.bc = lshr i32 %.sroa.4.0.i.ph, 6
  %i.bd = trunc i32 %i.bc to i8                   ; 2 uses
  %i.be = and i8 %i.bd, 63
  %i.bf = or disjoint i8 %i.be, -128              ; 2 uses
  %i.bg = lshr i32 %.sroa.4.0.i.ph, 12
  %i.bh = trunc i32 %i.bg to i8                   ; 2 uses
  %i.bi = and i8 %i.bh, 63
  %i.bj = or disjoint i8 %i.bi, -128
  %i.bk = lshr i32 %.sroa.4.0.i.ph, 18
  %i.bl = trunc nuw nsw i32 %i.bk to i8
  %i.bm = or disjoint i8 %i.bl, -16
  br i1 %i.ay, label %bb.k, label %bb.l

bb.j:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i
  %i.bn = trunc nuw nsw i32 %.sroa.4.0.i.ph to i8
  store i8 %i.bn, ptr %i.ax, align 1, !noalias !497
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.k:                                             ; preds = %bb.i
  %i.bo = or disjoint i8 %i.bd, -64
  store i8 %i.bo, ptr %i.ax, align 1, !noalias !497
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 %i.bb, ptr %i.bp, align 1, !noalias !497
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.l:                                             ; preds = %bb.i
  %i.bq = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536
  br i1 %i.bq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.br = or disjoint i8 %i.bh, -32
  store i8 %i.br, ptr %i.ax, align 1, !noalias !497
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 %i.bf, ptr %i.bs, align 1, !noalias !497
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store i8 %i.bb, ptr %i.bt, align 1, !noalias !497
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.n:                                             ; preds = %bb.l
  store i8 %i.bm, ptr %i.ax, align 1, !noalias !497
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 %i.bj, ptr %i.bu, align 1, !noalias !497
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store i8 %i.bf, ptr %i.bv, align 1, !noalias !497
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  store i8 %i.bb, ptr %i.bw, align 1, !noalias !497
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.j, %bb.k, %bb.m, %bb.n
  %i.bx = add nuw i64 %.sroa.0.0.i6, %i.e
  br label %bb.q

bb.o:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.by = load i64, ptr %i.a, align 8, !range !4, !alias.scope !500, !noundef !5
  %i.bz = sub i64 %i.by, %i.e
  %i.ca = icmp ult i64 %i.bz, 4
  br i1 %i.ca, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i7, !prof !10

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i: ; preds = %bb.o
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshmuvWokFoRg_12uu_dircolors(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.e, i64 noundef 4, i64 noundef 1, i64 noundef 1) #19
  %i.cb = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !499, !noundef !5 ; 2 uses
  %4 = icmp sgt i64 %i.cb, -1
  tail call void @llvm.assume(i1 %4)
  %.pre20 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !499
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i7: ; preds = %bb.o
  %5 = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %5)
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i7
  %6 = phi ptr [ %.pre20, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i ], [ %3, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i7 ] ; 3 uses
  %7 = phi i64 [ %i.cb, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i ], [ %i.e, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i7 ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 %7
  store i32 656890919, ptr %i.cc, align 1, !noalias !499
  %i.cd = add nuw i64 %7, 4
  br label %bb.q

bb.p:                                             ; preds = %bb.c
  %i.ce = icmp eq i32 %.sroa.0.019, 92
  br i1 %i.ce, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.p
  %i.cf = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.cf)
  br label %bb.g

bb.q:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit10, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit
  %.sink = phi i64 [ %i.cr, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit10 ], [ %i.cd, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit ], [ %i.bx, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit ] ; 2 uses
  %8 = phi ptr [ %9, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit10 ], [ %6, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit ], [ %i.aw, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit ]
  %i.cg = phi ptr [ %i.co, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit10 ], [ %6, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit ], [ %i.aw, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit ]
  store i64 %.sink, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ch = icmp eq ptr %.sroa.0.1.ph, %i.b
  br i1 %i.ch, label %._crit_edge, label %.lr.ph

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.ci = load i64, ptr %i.a, align 8, !range !4, !alias.scope !502, !noundef !5
  %i.cj = sub i64 %i.ci, %i.e
  %i.ck = icmp ult i64 %i.cj, 2
  br i1 %i.ck, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i9, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i8, !prof !10

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i9: ; preds = %bb.r
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshmuvWokFoRg_12uu_dircolors(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.e, i64 noundef 2, i64 noundef 1, i64 noundef 1) #19
  %i.cl = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !501, !noundef !5 ; 2 uses
  %i.cm = icmp sgt i64 %i.cl, -1
  tail call void @llvm.assume(i1 %i.cm)
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !501 ; 2 uses
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit10

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i8: ; preds = %bb.r
  %i.cn = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.cn)
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit10

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCshmuvWokFoRg_12uu_dircolors.exit10: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i9, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i8
  %9 = phi ptr [ %.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i9 ], [ %3, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i8 ]
  %i.co = phi ptr [ %.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i9 ], [ %i.d, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i8 ] ; 2 uses
  %i.cp = phi i64 [ %i.cl, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.thread.i9 ], [ %i.e, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshmuvWokFoRg_12uu_dircolors.exit.i8 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cp
  store i16 14940, ptr %i.cq, align 1, !noalias !501
  %i.cr = add nuw i64 %i.cp, 2
  br label %bb.q
}

; Function Attrs: cold nounwind nonlazybind uwtable
define void @_RNvCshmuvWokFoRg_12uu_dircolors6uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECshmuvWokFoRg_12uu_dircolors.exit:
  %i.a = alloca [640 x i8], align 8               ; 56 uses
  %.sroa.0398 = alloca [80 x i8], align 8         ; 4 uses
  %.sroa.9408 = alloca [536 x i8], align 8        ; 4 uses
  %i.b = alloca [640 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [640 x i8], align 8               ; 53 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [640 x i8], align 8               ; 53 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [640 x i8], align 8               ; 54 uses
  %i.i = alloca [640 x i8], align 8               ; 10 uses
  %.sroa.0251 = alloca [488 x i8], align 8        ; 4 uses
  %.sroa.7258.sroa.5 = alloca [128 x i8], align 8 ; 4 uses
  %i.j = alloca [640 x i8], align 8               ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [640 x i8], align 8               ; 54 uses
  %i.m = alloca [640 x i8], align 8               ; 10 uses
  %.sroa.0242 = alloca [488 x i8], align 8        ; 4 uses
  %.sroa.7249.sroa.5 = alloca [128 x i8], align 8 ; 4 uses
  %i.n = alloca [640 x i8], align 8               ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [712 x i8], align 8               ; 59 uses
  %i.u = alloca [712 x i8], align 8               ; 5 uses
  %i.v = alloca [712 x i8], align 8               ; 5 uses
  %i.w = alloca [712 x i8], align 8               ; 5 uses
  %i.x = alloca [712 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.16.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 9) #19
  %.sroa.0.0.copyload.i = load i64, ptr %i.s, align 8, !alias.scope !600, !noalias !601 ; 2 uses
  %i.y = icmp eq i64 %.sroa.0.0.copyload.i, -1    ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5.i.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 8
  %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.i.sroa.0.0 = select i1 %i.y, ptr undef, ptr %.sroa.5.i.sroa.0.0.copyload
  %.sroa.5.i.sroa.4.0 = select i1 %i.y, i64 undef, i64 %.sroa.5.i.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 15) #19
  %.sroa.0.0.copyload.i9 = load i64, ptr %i.r, align 8, !alias.scope !602, !noalias !603 ; 2 uses
  %i.z = icmp eq i64 %.sroa.0.0.copyload.i9, -1   ; 2 uses
  %.sroa.55.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.i8.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i10, align 8
  %.sroa.5.i8.sroa.4.0..sroa.55.0..sroa_idx.i10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.5.i8.sroa.4.0.copyload = load i64, ptr %.sroa.5.i8.sroa.4.0..sroa.55.0..sroa_idx.i10.sroa_idx, align 8
  %.sroa.5.i8.sroa.0.0 = select i1 %i.z, ptr undef, ptr %.sroa.5.i8.sroa.0.0.copyload
  %.sroa.5.i8.sroa.4.0 = select i1 %i.z, i64 undef, i64 %.sroa.5.i8.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 20) #19
  %.sroa.0.0.copyload.i15 = load i64, ptr %i.q, align 8, !alias.scope !604, !noalias !605 ; 2 uses
  %i.aa = icmp eq i64 %.sroa.0.0.copyload.i15, -1 ; 2 uses
  %.sroa.55.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.i14.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i16, align 8
  %.sroa.5.i14.sroa.4.0..sroa.55.0..sroa_idx.i16.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5.i14.sroa.4.0.copyload = load i64, ptr %.sroa.5.i14.sroa.4.0..sroa.55.0..sroa_idx.i16.sroa_idx, align 8
  %.sroa.5.i14.sroa.0.0 = select i1 %i.aa, ptr undef, ptr %.sroa.5.i14.sroa.0.0.copyload
  %.sroa.5.i14.sroa.4.0 = select i1 %i.aa, i64 undef, i64 %.sroa.5.i14.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 15) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5
  call void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ae) #19
  %.sroa.0.0.copyload.i21 = load i64, ptr %i.p, align 8, !alias.scope !606, !noalias !607 ; 2 uses
  %i.af = icmp eq i64 %.sroa.0.0.copyload.i21, -1 ; 2 uses
  %.sroa.55.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5.i20.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i22, align 8
  %.sroa.5.i20.sroa.4.0..sroa.55.0..sroa_idx.i22.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5.i20.sroa.4.0.copyload = load i64, ptr %.sroa.5.i20.sroa.4.0..sroa.55.0..sroa_idx.i22.sroa_idx, align 8
  %.sroa.5.i20.sroa.0.0 = select i1 %i.af, ptr undef, ptr %.sroa.5.i20.sroa.0.0.copyload
  %.sroa.5.i20.sroa.4.0 = select i1 %i.af, i64 undef, i64 %.sroa.5.i20.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.t, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 1, ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.8.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.10.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.12.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.15.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.17.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.19.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.21.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 216
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.22.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.24.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.26.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 264
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.27.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 272
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.28.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 296
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.0.sroa.30.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 320
  store i64 %.sroa.0.0.copyload.i9, ptr %.sroa.0.sroa.0.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 328
  store ptr %.sroa.5.i8.sroa.0.0, ptr %.sroa.0.sroa.0.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 336
  store i64 %.sroa.5.i8.sroa.4.0, ptr %.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.4.sroa.2.0..sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 344
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.4.sroa.2.0..sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 368
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.4.sroa.6.0..sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 392
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.4.sroa.6.0..sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 416
  store i64 %.sroa.0.0.copyload.i15, ptr %.sroa.0.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 424
  store ptr %.sroa.5.i14.sroa.0.0, ptr %.sroa.0.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 432
  store i64 %.sroa.5.i14.sroa.4.0, ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.4.sroa.2.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 440
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.4.sroa.2.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 464
  store i64 %.sroa.0.0.copyload.i21, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 472
  store ptr %.sroa.5.i20.sroa.0.0, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 480
  store i64 %.sroa.5.i20.sroa.4.0, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.2.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 488
  store i64 -1, ptr %.sroa.0.sroa.4.sroa.2.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 512
  store i64 -1, ptr %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.6.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 536
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.0.sroa.4.sroa.6.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.7.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 544
  store ptr %.sroa.5.i.sroa.0.0, ptr %.sroa.0.sroa.4.sroa.7.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.8.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 552
  store i64 %.sroa.5.i.sroa.4.0, ptr %.sroa.0.sroa.4.sroa.8.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.9.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 560
  store ptr @34, ptr %.sroa.0.sroa.4.sroa.9.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.10.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 568
  store i64 9, ptr %.sroa.0.sroa.4.sroa.10.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.11.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 576
  store ptr null, ptr %.sroa.0.sroa.4.sroa.11.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.13.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 592
  store ptr null, ptr %.sroa.0.sroa.4.sroa.13.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.15.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 608
  store ptr @35, ptr %.sroa.0.sroa.4.sroa.15.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.16.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 616
  store i64 25, ptr %.sroa.0.sroa.4.sroa.16.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.17.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 624
  store ptr null, ptr %.sroa.0.sroa.4.sroa.17.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.19.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 640
  store ptr null, ptr %.sroa.0.sroa.4.sroa.19.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.21.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 656
  store ptr null, ptr %.sroa.0.sroa.4.sroa.21.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.23.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 672
end_hunk_0
begin_hunk_1_@_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsgNwXemyrBWj_12clap_builder7builder3str3StrbEE8grow_oneCshmuvWokFoRg_12uu_dircolors:bb.a
  store i64 %i.d, ptr %0, align 8, !alias.scope !661
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCshmuvWokFoRg_12uu_dircolors(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 25) %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !9
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #19
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.k = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 9) %2) #19
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintE9drop_slowCshmuvWokFoRg_12uu_dircolors(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECshmuvWokFoRg_12uu_dircolors.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECshmuvWokFoRg_12uu_dircolors.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #19
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECshmuvWokFoRg_12uu_dircolors.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECshmuvWokFoRg_12uu_dircolors.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, i64 } @_RNvXCshmuvWokFoRg_12uu_dircolorseNtB2_8StrUtils6purify(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_QNCNvXCshmuvWokFoRg_12uu_dircolorseNtB4a_8StrUtils6purify0E0E0B2S_EB4a_.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = icmp eq ptr %i.f, %i.a
  br i1 %i.c, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_QNCNvXCshmuvWokFoRg_12uu_dircolorseNtB4a_8StrUtils6purify0E0E0B2S_EB4a_.exit.thread, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %bb.b, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph.backedge
  %i.d = phi ptr [ %i.f, %.lr.ph.backedge ], [ %0, %bb.a ] ; 2 uses
  %i.e = phi i64 [ %i.h, %.lr.ph.backedge ], [ 0, %bb.a ] ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !alias.scope !703, !noalias !704, !noundef !5
  %.not.i = icmp eq i8 %i.g, 35
  %i.h = add i64 %i.e, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.i = icmp eq i64 %i.e, 0
  br i1 %i.i, label %_RINvMNtCs6JMX4GRUq9U_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECshmuvWokFoRg_12uu_dircolors.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i32 = icmp ult i64 %i.e, %1
  br i1 %.not.i32, label %bb.e, label %.split.i

.split.i:                                         ; preds = %bb.d
  %i.j = icmp eq i64 %i.e, %1
  br i1 %i.j, label %bb.z, label %bb.ad

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !705, !noundef !5
  %i.m = icmp sgt i8 %i.l, -65
  br i1 %i.m, label %bb.z, label %bb.ad

_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_QNCNvXCshmuvWokFoRg_12uu_dircolorseNtB4a_8StrUtils6purify0E0E0B2S_EB4a_.exit.thread.thread120: ; preds = %bb.ao, %.split.i38
  %.sroa.48.0.ph = phi i64 [ %1, %.split.i38 ], [ %i.gn, %bb.ao ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.48.0.ph
  br label %.lr.ph.i.i.i.preheader

_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_QNCNvXCshmuvWokFoRg_12uu_dircolorseNtB4a_8StrUtils6purify0E0E0B2S_EB4a_.exit.thread: ; preds = %bb.b, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.p = icmp samesign eq i64 %1, 0
  br i1 %i.p, label %_RNvXso_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCshmuvWokFoRg_12uu_dircolors.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_QNCNvXCshmuvWokFoRg_12uu_dircolorseNtB4a_8StrUtils6purify0E0E0B2S_EB4a_.exit.thread.thread120, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_QNCNvXCshmuvWokFoRg_12uu_dircolorseNtB4a_8StrUtils6purify0E0E0B2S_EB4a_.exit.thread
  %i.q = phi ptr [ %i.n, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_QNCNvXCshmuvWokFoRg_12uu_dircolorseNtB4a_8StrUtils6purify0E0E0B2S_EB4a_.exit.thread.thread120 ], [ %i.o, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_QNCNvXCshmuvWokFoRg_12uu_dircolorseNtB4a_8StrUtils6purify0E0E0B2S_EB4a_.exit.thread ] ; 7 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshmuvWokFoRg_12uu_dircolors.exit.i.i.i
  %i.r = phi i64 [ %i.bf, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshmuvWokFoRg_12uu_dircolors.exit.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %i.s = phi ptr [ %.sroa.4.0.i, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshmuvWokFoRg_12uu_dircolors.exit.i.i.i ], [ %0, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 3 uses
  %i.v = load i8, ptr %i.s, align 1, !alias.scope !706, !noalias !707, !noundef !5 ; 5 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.f, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit12.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.x = and i8 %i.v, 31
  %i.y = zext nneg i8 %i.x to i32                 ; 3 uses
  %i.z = icmp ne ptr %i.u, %i.q
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 3 uses
  %i.ab = load i8, ptr %i.u, align 1, !alias.scope !706, !noalias !707, !noundef !5
  %i.ac = shl nuw nsw i32 %i.y, 6
  %i.ad = and i8 %i.ab, 63
  %i.ae = zext nneg i8 %i.ad to i32               ; 2 uses
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = icmp samesign ugt i8 %i.v, -33
  br i1 %i.ag, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit14.i.i.i.i.i.i, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = zext nneg i8 %i.v to i32
  br label %bb.g

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit12.i.i.i.i.i.i
  %i.ai = icmp ne ptr %i.aa, %i.q
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 3 ; 3 uses
  %i.ak = load i8, ptr %i.aa, align 1, !alias.scope !706, !noalias !707, !noundef !5
  %i.al = shl nuw nsw i32 %i.ae, 6
  %i.am = and i8 %i.ak, 63
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = or disjoint i32 %i.al, %i.an            ; 2 uses
  %i.ap = shl nuw nsw i32 %i.y, 12
  %i.aq = or disjoint i32 %i.ao, %i.ap
  %i.ar = icmp samesign ugt i8 %i.v, -17
  br i1 %i.ar, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit16.i.i.i.i.i.i, label %bb.g

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit14.i.i.i.i.i.i
  %i.as = icmp ne ptr %i.aj, %i.q
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.au = load i8, ptr %i.aj, align 1, !alias.scope !706, !noalias !707, !noundef !5
  %i.av = shl nuw nsw i32 %i.y, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.ao, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit14.i.i.i.i.i.i, %bb.f, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit12.i.i.i.i.i.i
  %.sroa.4.0.i = phi ptr [ %i.aj, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit14.i.i.i.i.i.i ], [ %i.at, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit16.i.i.i.i.i.i ], [ %i.aa, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit12.i.i.i.i.i.i ], [ %i.u, %bb.f ] ; 6 uses
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.aq, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit14.i.i.i.i.i.i ], [ %i.bb, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit16.i.i.i.i.i.i ], [ %i.af, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshmuvWokFoRg_12uu_dircolors.exit12.i.i.i.i.i.i ], [ %i.ah, %bb.f ] ; 8 uses
  %i.bc = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = ptrtoint ptr %.sroa.4.0.i to i64
  %i.be = sub i64 %i.bd, %i.t
  %i.bf = add i64 %i.be, %i.r                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i, label %bb.h [
    i32 32, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshmuvWokFoRg_12uu_dircolors.exit.i.i.i
    i32 13, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshmuvWokFoRg_12uu_dircolors.exit.i.i.i
    i32 12, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshmuvWokFoRg_12uu_dircolors.exit.i.i.i
    i32 11, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshmuvWokFoRg_12uu_dircolors.exit.i.i.i
    i32 10, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshmuvWokFoRg_12uu_dircolors.exit.i.i.i
    i32 9, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshmuvWokFoRg_12uu_dircolors.exit.i.i.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 133
  br i1 %i.bg, label %_RNvXso_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCshmuvWokFoRg_12uu_dircolors.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = lshr i32 %.sroa.4.0.i.ph.i.i.i.i.i, 8
  switch i32 %i.bh, label %_RNvXso_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCshmuvWokFoRg_12uu_dircolors.exit.i [
    i32 0, label %bb.l
    i32 22, label %bb.j
    i32 32, label %bb.m
    i32 48, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.bi = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i, 5760
  %i.bj = zext i1 %i.bi to i8
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshmuvWokFoRg_12uu_dircolors.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bk = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i, 12288
  %i.bl = zext i1 %i.bk to i8
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshmuvWokFoRg_12uu_dircolors.exit.i.i.i.i

bb.l:                                             ; preds = %bb.i
  %i.bm = and i32 %.sroa.4.0.i.ph.i.i.i.i.i, 255
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !708, !noundef !5
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshmuvWokFoRg_12uu_dircolors.exit.i.i.i.i

bb.m:                                             ; preds = %bb.i
  %i.bq = and i32 %.sroa.4.0.i.ph.i.i.i.i.i, 255
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !708, !noundef !5
  %i.bu = lshr i8 %i.bt, 1
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshmuvWokFoRg_12uu_dircolors.exit.i.i.i.i

_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshmuvWokFoRg_12uu_dircolors.exit.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i8 [ %i.bl, %bb.k ], [ %i.bp, %bb.l ], [ %i.bj, %bb.j ], [ %i.bu, %bb.m ]
  %i.bv = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i to i1
  br i1 %i.bv, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshmuvWokFoRg_12uu_dircolors.exit.i.i.i, label %_RNvXso_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCshmuvWokFoRg_12uu_dircolors.exit.i

_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshmuvWokFoRg_12uu_dircolors.exit.i.i.i: ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshmuvWokFoRg_12uu_dircolors.exit.i.i.i.i, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.bw = icmp eq ptr %.sroa.4.0.i, %i.q
  br i1 %i.bw, label %_RINvMNtCs6JMX4GRUq9U_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECshmuvWokFoRg_12uu_dircolors.exit, label %.lr.ph.i.i.i

_RNvXso_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCshmuvWokFoRg_12uu_dircolors.exit.i: ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshmuvWokFoRg_12uu_dircolors.exit.i.i.i.i, %bb.i, %bb.h, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_QNCNvXCshmuvWokFoRg_12uu_dircolorseNtB4a_8StrUtils6purify0E0E0B2S_EB4a_.exit.thread
  %i.bx = phi ptr [ %i.o, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_QNCNvXCshmuvWokFoRg_12uu_dircolorseNtB4a_8StrUtils6purify0E0E0B2S_EB4a_.exit.thread ], [ %i.q, %bb.h ], [ %i.q, %bb.i ], [ %i.q, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshmuvWokFoRg_12uu_dircolors.exit.i.i.i.i ] ; 2 uses
  %.sroa.4.121.i = phi ptr [ %0, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_QNCNvXCshmuvWokFoRg_12uu_dircolorseNtB4a_8StrUtils6purify0E0E0B2S_EB4a_.exit.thread ], [ %.sroa.4.0.i, %bb.h ], [ %.sroa.4.0.i, %bb.i ], [ %.sroa.4.0.i, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshmuvWokFoRg_12uu_dircolors.exit.i.i.i.i ] ; 6 uses
  %.sroa.18.019.i = phi i64 [ 0, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_QNCNvXCshmuvWokFoRg_12uu_dircolorseNtB4a_8StrUtils6purify0E0E0B2S_EB4a_.exit.thread ], [ %i.bf, %bb.h ], [ %i.bf, %bb.i ], [ %i.bf, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshmuvWokFoRg_12uu_dircolors.exit.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i34 = phi i64 [ 0, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtBR_8adapters9enumerateINtB1K_9EnumeratepEBL_8try_fold9enumerateRhuINtNtNtBa_3ops12control_flow11ControlFlowTjB2P_EENCINvNvBL_4find5checkB3x_QNCNvXCshmuvWokFoRg_12uu_dircolorseNtB4a_8StrUtils6purify0E0E0B2S_EB4a_.exit.thread ], [ %i.r, %bb.h ], [ %i.r, %bb.i ], [ %i.r, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshmuvWokFoRg_12uu_dircolors.exit.i.i.i.i ] ; 3 uses
  %i.by = icmp eq ptr %.sroa.4.121.i, %i.bx
  br i1 %i.by, label %_RINvMNtCs6JMX4GRUq9U_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECshmuvWokFoRg_12uu_dircolors.exit, label %.lr.ph.i.i4.i

.lr.ph.i.i4.i:                                    ; preds = %_RNvXso_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCshmuvWokFoRg_12uu_dircolors.exit.i, %bb.x
  %i.bz = phi ptr [ %i.dj, %bb.x ], [ %i.bx, %_RNvXso_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCshmuvWokFoRg_12uu_dircolors.exit.i ] ; 5 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -1 ; 3 uses
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !706, !noalias !709, !noundef !5 ; 3 uses
  %i.cc = icmp sgt i8 %i.cb, -1
  br i1 %i.cc, label %bb.n, label %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshmuvWokFoRg_12uu_dircolors.exit17.i.i.i.i.i.i

_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshmuvWokFoRg_12uu_dircolors.exit17.i.i.i.i.i.i: ; preds = %.lr.ph.i.i4.i
  %i.cd = icmp ne ptr %.sroa.4.121.i, %i.ca
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds i8, ptr %i.bz, i64 -2 ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !alias.scope !706, !noalias !709, !noundef !5 ; 3 uses
  %i.cg = and i8 %i.cf, 31
  %i.ch = zext nneg i8 %i.cg to i32
  %i.ci = icmp slt i8 %i.cf, -64
  br i1 %i.ci, label %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshmuvWokFoRg_12uu_dircolors.exit19.i.i.i.i.i.i, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i4.i
  %i.cj = zext nneg i8 %i.cb to i32
  br label %bb.q

_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshmuvWokFoRg_12uu_dircolors.exit19.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshmuvWokFoRg_12uu_dircolors.exit17.i.i.i.i.i.i
  %i.ck = icmp ne ptr %.sroa.4.121.i, %i.ce
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds i8, ptr %i.bz, i64 -3 ; 3 uses
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !706, !noalias !709, !noundef !5 ; 3 uses
  %i.cn = and i8 %i.cm, 15
  %i.co = zext nneg i8 %i.cn to i32
  %i.cp = icmp slt i8 %i.cm, -64
  br i1 %i.cp, label %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshmuvWokFoRg_12uu_dircolors.exit21.i.i.i.i.i.i, label %bb.p

bb.o:                                             ; preds = %bb.p, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshmuvWokFoRg_12uu_dircolors.exit17.i.i.i.i.i.i
  %i.cq = phi ptr [ %i.de, %bb.p ], [ %i.ce, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshmuvWokFoRg_12uu_dircolors.exit17.i.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i.i = phi i32 [ %i.di, %bb.p ], [ %i.ch, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshmuvWokFoRg_12uu_dircolors.exit17.i.i.i.i.i.i ]
  %i.cr = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i.i, 6
  %i.cs = and i8 %i.cb, 63
  %i.ct = zext nneg i8 %i.cs to i32
  %i.cu = or disjoint i32 %i.cr, %i.ct
  br label %bb.q

_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshmuvWokFoRg_12uu_dircolors.exit21.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshmuvWokFoRg_12uu_dircolors.exit19.i.i.i.i.i.i
  %i.cv = icmp ne ptr %.sroa.4.121.i, %i.cl
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !706, !noalias !709, !noundef !5
  %i.cy = and i8 %i.cx, 7
  %i.cz = zext nneg i8 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 6
  %i.db = and i8 %i.cm, 63
  %i.dc = zext nneg i8 %i.db to i32
  %i.dd = or disjoint i32 %i.da, %i.dc
  br label %bb.p

bb.p:                                             ; preds = %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshmuvWokFoRg_12uu_dircolors.exit21.i.i.i.i.i.i, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshmuvWokFoRg_12uu_dircolors.exit19.i.i.i.i.i.i
  %i.de = phi ptr [ %i.cw, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshmuvWokFoRg_12uu_dircolors.exit21.i.i.i.i.i.i ], [ %i.cl, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshmuvWokFoRg_12uu_dircolors.exit19.i.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i.i = phi i32 [ %i.dd, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshmuvWokFoRg_12uu_dircolors.exit21.i.i.i.i.i.i ], [ %i.co, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshmuvWokFoRg_12uu_dircolors.exit19.i.i.i.i.i.i ]
  %i.df = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i.i, 6
  %i.dg = and i8 %i.cf, 63
  %i.dh = zext nneg i8 %i.dg to i32
  %i.di = or disjoint i32 %i.df, %i.dh
  br label %bb.o

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.dj = phi ptr [ %i.ca, %bb.n ], [ %i.cq, %bb.o ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i.i = phi i32 [ %i.cj, %bb.n ], [ %i.cu, %bb.o ] ; 8 uses
  %i.dk = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.dk)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i.i, label %bb.r [
    i32 32, label %bb.x
    i32 13, label %bb.x
    i32 12, label %bb.x
    i32 11, label %bb.x
    i32 10, label %bb.x
    i32 9, label %bb.x
  ]

bb.r:                                             ; preds = %bb.q
  %i.dl = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i.i, 133
  br i1 %i.dl, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dm = lshr i32 %.sroa.4.1.i.ph.i.i.i.i.i, 8
  switch i32 %i.dm, label %bb.y [
    i32 0, label %bb.v
    i32 22, label %bb.t
    i32 32, label %bb.w
    i32 48, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.dn = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i.i, 5760
  %i.do = zext i1 %i.dn to i8
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshmuvWokFoRg_12uu_dircolors.exit.i.i.i6.i

bb.u:                                             ; preds = %bb.s
  %i.dp = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i.i, 12288
  %i.dq = zext i1 %i.dp to i8
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshmuvWokFoRg_12uu_dircolors.exit.i.i.i6.i

bb.v:                                             ; preds = %bb.s
  %i.dr = and i32 %.sroa.4.1.i.ph.i.i.i.i.i, 255
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !noalias !710, !noundef !5
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshmuvWokFoRg_12uu_dircolors.exit.i.i.i6.i

bb.w:                                             ; preds = %bb.s
  %i.dv = and i32 %.sroa.4.1.i.ph.i.i.i.i.i, 255
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !noalias !710, !noundef !5
  %i.dz = lshr i8 %i.dy, 1
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshmuvWokFoRg_12uu_dircolors.exit.i.i.i6.i

_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshmuvWokFoRg_12uu_dircolors.exit.i.i.i6.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %.sroa.0.0.i.i.i.i.i.i.i7.i = phi i8 [ %i.dq, %bb.u ], [ %i.du, %bb.v ], [ %i.do, %bb.t ], [ %i.dz, %bb.w ]
  %i.ea = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7.i to i1
  br i1 %i.ea, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshmuvWokFoRg_12uu_dircolors.exit.i.i.i6.i, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  %i.eb = icmp eq ptr %.sroa.4.121.i, %i.dj
  br i1 %i.eb, label %_RINvMNtCs6JMX4GRUq9U_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECshmuvWokFoRg_12uu_dircolors.exit, label %.lr.ph.i.i4.i

bb.y:                                             ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCshmuvWokFoRg_12uu_dircolors.exit.i.i.i6.i, %bb.s, %bb.r
  %i.ec = ptrtoint ptr %i.bz to i64
  %i.ed = ptrtoint ptr %.sroa.4.121.i to i64
  %i.ee = sub i64 %.sroa.18.019.i, %i.ed
  %i.ef = add i64 %i.ee, %i.ec
  br label %_RINvMNtCs6JMX4GRUq9U_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECshmuvWokFoRg_12uu_dircolors.exit

_RINvMNtCs6JMX4GRUq9U_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECshmuvWokFoRg_12uu_dircolors.exit: ; preds = %bb.c, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCshmuvWokFoRg_12uu_dircolors.exit.i.i.i, %bb.x, %.thread, %_RNvXso_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCshmuvWokFoRg_12uu_dircolors.exit.i, %bb.y
end_hunk_1
