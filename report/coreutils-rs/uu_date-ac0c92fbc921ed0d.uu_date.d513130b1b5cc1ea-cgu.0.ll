Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_date-ac0c92fbc921ed0d.uu_date.d513130b1b5cc1ea-cgu.0?download=true
inline.NumInlined: 1460
inline.NumDeleted: 758
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNCINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockReE10initializeNCINvB1a_11get_or_initNCNvNtCsiibOIv6tv3q_7uu_date6locale25get_locale_default_format0E0zE0E0B2n_:bb.a

_RNvNtCsiibOIv6tv3q_7uu_date6locale25ensure_timezone_in_format.exit.thread.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i2.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull readonly align 1 %i.r, i64 %i.p, i1 false), !noalias !505
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit.i.i.i

_RNvNtCsiibOIv6tv3q_7uu_date6locale25ensure_timezone_in_format.exit.i.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit27.thread69.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsiibOIv6tv3q_7uu_date.exit39.i.i.i.i
  %.sroa.712.0.i.i.i = phi i64 [ %i.cd, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit27.thread69.i.i.i.i ], [ %i.by, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsiibOIv6tv3q_7uu_date.exit39.i.i.i.i ] ; 6 uses
  %.sroa.6.0.i.i.i = phi ptr [ %i.cb, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit27.thread69.i.i.i.i ], [ %.sroa.6.0.copyload11.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsiibOIv6tv3q_7uu_date.exit39.i.i.i.i ] ; 4 uses
  %.sroa.05.0.i.i.i = phi i64 [ %.sroa.05.0.copyload6.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit27.thread69.i.i.i.i ], [ %.sroa.05.0.copyload7.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsiibOIv6tv3q_7uu_date.exit39.i.i.i.i ] ; 3 uses
  %i.ce = icmp ugt i64 %.sroa.05.0.i.i.i, %.sroa.712.0.i.i.i
  br i1 %i.ce, label %bb.y, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit.i.i.i

bb.y:                                             ; preds = %_RNvNtCsiibOIv6tv3q_7uu_date6locale25ensure_timezone_in_format.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.i.i.i) ]
  %i.cf = icmp eq i64 %.sroa.712.0.i.i.i, 0
  br i1 %i.cf, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, label %bb.z

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.y
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i.i.i, i64 noundef %.sroa.05.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !523
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.cg = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.6.0.i.i.i, i64 noundef %.sroa.05.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %.sroa.712.0.i.i.i) #33, !noalias !523 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.aa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.sroa.712.0.i.i.i) #37, !noalias !524
  unreachable

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit.i.i.i: ; preds = %bb.z, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %_RNvNtCsiibOIv6tv3q_7uu_date6locale25ensure_timezone_in_format.exit.i.i.i, %_RNvNtCsiibOIv6tv3q_7uu_date6locale25ensure_timezone_in_format.exit.thread.i.i.i
  %.sroa.712.033.i.i.i = phi i64 [ %.sroa.712.0.i.i.i, %bb.z ], [ 0, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i ], [ %i.p, %_RNvNtCsiibOIv6tv3q_7uu_date6locale25ensure_timezone_in_format.exit.thread.i.i.i ], [ %.sroa.712.0.i.i.i, %_RNvNtCsiibOIv6tv3q_7uu_date6locale25ensure_timezone_in_format.exit.i.i.i ] ; 2 uses
  %.sroa.410.0.copyload.i.i.i.i = phi ptr [ %i.cg, %bb.z ], [ inttoptr (i64 1 to ptr), %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i ], [ %i.ad, %_RNvNtCsiibOIv6tv3q_7uu_date6locale25ensure_timezone_in_format.exit.thread.i.i.i ], [ %.sroa.6.0.i.i.i, %_RNvNtCsiibOIv6tv3q_7uu_date6locale25ensure_timezone_in_format.exit.i.i.i ]
  %i.ci = icmp sgt i64 %.sroa.712.033.i.i.i, -1
  call void @llvm.assume(i1 %i.ci)
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !525
  br label %_RNCINvMNtNtCs2vKOLqTMYjT_3std4sync9once_lockINtB5_8OnceLockReE10initializeNCINvB4_11get_or_initNCNvNtCsiibOIv6tv3q_7uu_date6locale25get_locale_default_format0E0zE0B1B_.exit

_RNCINvMNtNtCs2vKOLqTMYjT_3std4sync9once_lockINtB5_8OnceLockReE10initializeNCINvB4_11get_or_initNCNvNtCsiibOIv6tv3q_7uu_date6locale25get_locale_default_format0E0zE0B1B_.exit: ; preds = %bb.b, %bb.d, %bb.e, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit.i.i.i
  %.sroa.3.0.i.i.i = phi i64 [ %.sroa.712.033.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit.i.i.i ], [ 17, %bb.d ], [ 17, %bb.b ], [ 17, %bb.e ]
  %.sroa.0.0.i.i.i = phi ptr [ %.sroa.410.0.copyload.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit.i.i.i ], [ @44, %bb.d ], [ @44, %bb.b ], [ @44, %bb.e ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i) ]
  store ptr %.sroa.0.0.i.i.i, ptr %i.e, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.3.0.i.i.i, ptr %i.cj, align 8
  ret void

bb.ab:                                            ; preds = %bb.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #34
  unreachable
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0CsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.b = call noundef ptr @_RNvXs_NtNtNtCs3JjgEOiFeOI_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error12context_impl(ptr noundef %1, ptr noundef %i.b) #36
  ret ptr %i.c
}

; Function Attrs: cold inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtB8_5ErrorEINtB8_12ErrorContextuB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0CsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.b = call noundef ptr @_RNvXs_NtNtNtCs3JjgEOiFeOI_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error12context_impl(ptr noundef %1, ptr noundef %i.b) #36
  ret ptr %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNCNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_11PosixCustomE6format0CsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i32 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [100 x i8], align 1               ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [100 x i8], align 1               ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 11 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [16 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 7 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %i.ad = alloca [16 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %i.af = alloca [16 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 7 uses
  %i.ai = alloca [16 x i8], align 8               ; 7 uses
  %i.aj = alloca [16 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 7 uses
  %i.am = alloca [16 x i8], align 8               ; 7 uses
  %i.an = alloca [16 x i8], align 8               ; 4 uses
  %i.ao = alloca [1 x i8], align 1                ; 3 uses
  %i.ap = alloca [16 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 7 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [9 x i8], align 1                ; 9 uses
  %i.av = alloca [24 x i8], align 8               ; 12 uses
  %i.aw = alloca [24 x i8], align 8               ; 7 uses
  %i.ax = alloca [24 x i8], align 8               ; 7 uses
  %i.ay = alloca [24 x i8], align 8               ; 7 uses
  %i.az = alloca [24 x i8], align 8               ; 7 uses
  %i.ba = alloca [24 x i8], align 8               ; 7 uses
  %i.bb = alloca [24 x i8], align 8               ; 7 uses
  %i.bc = alloca [24 x i8], align 8               ; 7 uses
  %i.bd = alloca [24 x i8], align 8               ; 7 uses
  %i.be = alloca [24 x i8], align 8               ; 7 uses
  %i.bf = alloca [24 x i8], align 8               ; 7 uses
  %i.bg = alloca [24 x i8], align 8               ; 7 uses
  %i.bh = alloca [24 x i8], align 8               ; 7 uses
  %i.bi = alloca [24 x i8], align 8               ; 7 uses
  %i.bj = alloca [24 x i8], align 8               ; 7 uses
  %i.bk = alloca [24 x i8], align 8               ; 7 uses
  %i.bl = alloca [24 x i8], align 8               ; 7 uses
  %i.bm = alloca [24 x i8], align 8               ; 7 uses
  %i.bn = alloca [24 x i8], align 8               ; 7 uses
  %i.bo = alloca [24 x i8], align 8               ; 7 uses
  %i.bp = alloca [24 x i8], align 8               ; 7 uses
  %i.bq = alloca [24 x i8], align 8               ; 7 uses
  %i.br = alloca [24 x i8], align 8               ; 7 uses
  %i.bs = alloca [24 x i8], align 8               ; 7 uses
  %i.bt = alloca [24 x i8], align 8               ; 7 uses
  %i.bu = alloca [24 x i8], align 8               ; 7 uses
  %i.bv = alloca [24 x i8], align 8               ; 7 uses
  %i.bw = alloca [24 x i8], align 8               ; 7 uses
  %i.bx = alloca [24 x i8], align 8               ; 7 uses
  %i.by = alloca [24 x i8], align 8               ; 7 uses
  %i.bz = alloca [24 x i8], align 8               ; 7 uses
  %i.ca = alloca [24 x i8], align 8               ; 6 uses
  %i.cb = alloca [24 x i8], align 8               ; 6 uses
  %i.cc = alloca [24 x i8], align 8               ; 7 uses
  %i.cd = alloca [24 x i8], align 8               ; 7 uses
  %i.ce = alloca [24 x i8], align 8               ; 7 uses
  %i.cf = alloca [24 x i8], align 8               ; 7 uses
  %i.cg = alloca [24 x i8], align 8               ; 7 uses
  %i.ch = alloca [24 x i8], align 8               ; 7 uses
  %i.ci = alloca [24 x i8], align 8               ; 7 uses
  %i.cj = alloca [24 x i8], align 8               ; 7 uses
  %i.ck = alloca [24 x i8], align 8               ; 7 uses
  %i.cl = alloca [24 x i8], align 8               ; 7 uses
  %i.cm = alloca [24 x i8], align 8               ; 6 uses
  %i.cn = alloca [24 x i8], align 8               ; 6 uses
  %i.co = alloca [24 x i8], align 8               ; 6 uses
  %i.cp = alloca [24 x i8], align 8               ; 6 uses
  %i.cq = alloca [24 x i8], align 8               ; 5 uses
  %i.cr = alloca [24 x i8], align 8               ; 5 uses
  %i.cs = alloca [24 x i8], align 8               ; 5 uses
  %i.ct = alloca [24 x i8], align 8               ; 8 uses
  %i.cu = alloca [24 x i8], align 8               ; 4 uses
  %i.cv = alloca [24 x i8], align 8               ; 5 uses
  %i.cw = alloca [24 x i8], align 8               ; 7 uses
  %i.cx = alloca [24 x i8], align 8               ; 7 uses
  %i.cy = alloca [24 x i8], align 8               ; 7 uses
  %i.cz = alloca [24 x i8], align 8               ; 7 uses
  %i.da = alloca [24 x i8], align 8               ; 5 uses
  %i.db = alloca [24 x i8], align 8               ; 4 uses
  %i.dc = alloca [24 x i8], align 8               ; 4 uses
  %i.dd = alloca [24 x i8], align 8               ; 8 uses
  %i.de = alloca [24 x i8], align 8               ; 8 uses
  %i.df = alloca [24 x i8], align 8               ; 137 uses
  %i.dg = alloca [4 x i8], align 4                ; 8 uses
  store i32 %1, ptr %i.dg, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.val36 = load ptr, ptr %i.dh, align 8          ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.val37 = load i64, ptr %i.di, align 8, !noundef !6 ; 2 uses
  %.not.i93 = icmp eq i64 %.val37, 0
  %i.dj = lshr i32 %1, 24
  %i.dk = trunc nuw i32 %i.dj to i8               ; 2 uses
  %i.dl = lshr i32 %1, 16
  %i.dm = trunc i32 %i.dl to i8                   ; 4 uses
  %i.dn = lshr i32 %1, 8                          ; 3 uses
  %i.do = trunc i32 %i.dn to i8                   ; 2 uses
  br i1 %.not.i93, label %bb.b, label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE1fCsiibOIv6tv3q_7uu_date.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #34
  unreachable

_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE1fCsiibOIv6tv3q_7uu_date.exit: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val36) ]
  %i.dp = load i8, ptr %.val36, align 1, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !1744
  switch i8 %i.dp, label %bb.c [
    i8 37, label %_RINvMNtCs6JMX4GRUq9U_4core6resultINtB3_6ResultNtNtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0ECsiibOIv6tv3q_7uu_date.exit362
    i8 65, label %bb.d
    i8 97, label %bb.k
    i8 66, label %bb.r
    i8 98, label %bb.x
    i8 67, label %bb.y
    i8 99, label %bb.ad
    i8 68, label %bb.ai
    i8 100, label %bb.ce
    i8 101, label %bb.cj
    i8 70, label %bb.co
    i8 102, label %bb.el
    i8 71, label %bb.es
    i8 103, label %bb.ey
    i8 72, label %bb.fe
    i8 104, label %bb.ff
    i8 73, label %bb.fg
    i8 106, label %bb.fh
    i8 107, label %bb.fo
    i8 108, label %bb.fp
    i8 77, label %bb.fq
    i8 109, label %bb.fr
    i8 78, label %bb.fw
    i8 110, label %.thread2675
    i8 80, label %bb.gd
    i8 112, label %bb.gh
    i8 81, label %bb.gr
    i8 113, label %bb.gs
    i8 82, label %bb.hb
    i8 114, label %bb.hv
    i8 83, label %bb.ia
    i8 115, label %bb.ib
    i8 84, label %bb.if
    i8 116, label %_RINvMNtCs6JMX4GRUq9U_4core6resultINtB3_6ResultNtNtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0ECsiibOIv6tv3q_7uu_date.exit458
    i8 85, label %bb.jk
    i8 117, label %bb.kd
    i8 86, label %bb.kk
    i8 87, label %bb.kp
    i8 119, label %bb.li
    i8 88, label %bb.lp
    i8 120, label %bb.lv
    i8 89, label %bb.mb
    i8 121, label %bb.mg
    i8 90, label %bb.ml
    i8 122, label %bb.na
    i8 46, label %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE8bump_fmtCsiibOIv6tv3q_7uu_date.exit
  ]

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE1fCsiibOIv6tv3q_7uu_date.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !1744
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store i8 %i.dp, ptr %i.dq, align 1, !noalias !1744
  store i8 34, ptr %i.cr, align 8, !noalias !1744
  %i.dr = call noundef ptr @_RNvXs0_NtNtNtCs3JjgEOiFeOI_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs6JMX4GRUq9U_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cr) #36, !noalias !1745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !1744
  br label %bb.oo

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE1fCsiibOIv6tv3q_7uu_date.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val38 = load ptr, ptr %i.ds, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.val38, i64 109
  %i.du = load i8, ptr %i.dt, align 1, !range !20, !noalias !1746, !noundef !6 ; 2 uses
  %.not.i.i95 = icmp eq i8 %i.du, 0
  br i1 %.not.i.i95, label %bb.e, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionNtNtNtCs3JjgEOiFeOI_4jiff5civil7weekday7WeekdayE7or_elseNCNvMs1_NtNtNtBO_3fmt7strtime7printerINtB1K_9FormatterNtB1M_11PosixCustomE16fmt_weekday_full0ECsiibOIv6tv3q_7uu_date.exit.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !1747
  call fastcc void @_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt7strtimeNtB5_14BrokenDownTime7to_date(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.val38) #35, !noalias !1746
  %i.dv = load i16, ptr %i.aq, align 8, !range !21, !noalias !1747, !noundef !6
  %i.dw = trunc nuw i16 %i.dv to i1
  br i1 %i.dw, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %.sroa.03.0.copyload.i.i.i = load i32, ptr %i.dx, align 2, !noalias !1747 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1747
  %i.dy = shl i32 %.sroa.03.0.copyload.i.i.i, 8
  %i.dz = ashr i32 %i.dy, 24                      ; 3 uses
  %i.ea = icmp ult i32 %i.dz, 3                   ; 2 uses
  %i.eb = or disjoint i32 %i.dz, 12
  %.sroa.02.0.i.i.i.i.i = select i1 %i.ea, i32 %i.eb, i32 %i.dz
  %i.ec = shl i32 %.sroa.03.0.copyload.i.i.i, 16
  %i.ed = ashr exact i32 %i.ec, 16
  %i.ee = add nsw i32 %i.ed, 32800
  %.neg.i.i.i.i.i = sext i1 %i.ea to i32
  %i.ef = add nsw i32 %i.ee, %.neg.i.i.i.i.i      ; 3 uses
  %i.eg = ashr i32 %.sroa.03.0.copyload.i.i.i, 24
  %i.eh = udiv i32 %i.ef, 100
  %i.ei = mul nuw nsw i32 %i.ef, 1461
  %i.ej = lshr i32 %i.ei, 2
  %i.ek = udiv i32 %i.ef, 400
  %i.el = mul nsw i32 %.sroa.02.0.i.i.i.i.i, 979
  %i.em = add nsw i32 %i.el, -2919
  %i.en = lshr i32 %i.em, 5
  %i.eo = add nsw i32 %i.eg, -12699423
  %i.ep = sub nuw nsw i32 %i.eo, %i.eh
  %i.eq = add nuw nsw i32 %i.ep, %i.ek
  %i.er = add nsw i32 %i.eq, %i.ej
  %i.es = add nsw i32 %i.er, %i.en
  %i.et = mul i32 %i.es, 613566757
  %i.eu = add i32 %i.et, -1879048192
  %i.ev = lshr i32 %i.eu, 29                      ; 2 uses
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.g, label %_RNvMNtNtCs3JjgEOiFeOI_4jiff5civil4dateNtB2_4Date7weekday.exit.i.i.i, !prof !22

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @147, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #34, !noalias !1746
  unreachable

_RNvMNtNtCs3JjgEOiFeOI_4jiff5civil4dateNtB2_4Date7weekday.exit.i.i.i: ; preds = %bb.f
  %i.ex = trunc nuw nsw i32 %i.ev to i8
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionNtNtNtCs3JjgEOiFeOI_4jiff5civil7weekday7WeekdayE7or_elseNCNvMs1_NtNtNtBO_3fmt7strtime7printerINtB1K_9FormatterNtB1M_11PosixCustomE16fmt_weekday_full0ECsiibOIv6tv3q_7uu_date.exit.i

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1748)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1750)
  %i.ez = load ptr, ptr %i.ey, align 8, !alias.scope !1751, !noalias !1747, !noundef !6 ; 2 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %bb.nc, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fb = atomicrmw add ptr %i.ez, i64 -1 release, align 8, !noalias !1752
  %i.fc = icmp eq i64 %i.fb, 1
  br i1 %i.fc, label %bb.j, label %bb.nc

bb.j:                                             ; preds = %bb.i
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtCs3JjgEOiFeOI_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ey) #36, !noalias !1746
  br label %bb.nc

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionNtNtNtCs3JjgEOiFeOI_4jiff5civil7weekday7WeekdayE7or_elseNCNvMs1_NtNtNtBO_3fmt7strtime7printerINtB1K_9FormatterNtB1M_11PosixCustomE16fmt_weekday_full0ECsiibOIv6tv3q_7uu_date.exit.i: ; preds = %_RNvMNtNtCs3JjgEOiFeOI_4jiff5civil4dateNtB2_4Date7weekday.exit.i.i.i, %bb.d
  %.sroa.0.0.i.i96 = phi i8 [ %i.du, %bb.d ], [ %i.ex, %_RNvMNtNtCs3JjgEOiFeOI_4jiff5civil4dateNtB2_4Date7weekday.exit.i.i.i ]
  %switch.tableidx = add nsw i8 %.sroa.0.0.i.i96, -1 ; 2 uses
  %i.fd = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNCNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_11PosixCustomE6format0CsiibOIv6tv3q_7uu_date, i64 %i.fd
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.fe = zext nneg i8 %switch.tableidx to i64
  %switch.gep2707 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNCNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_11PosixCustomE6format0CsiibOIv6tv3q_7uu_date.311, i64 %i.fe
  %switch.load2708 = load ptr, ptr %switch.gep2707, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !1753
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1755)
  store ptr %switch.load2708, ptr %i.df, align 8, !alias.scope !1756, !noalias !1757
  %.sroa.6569.0..sroa_idx570 = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i64 %switch.ext, ptr %.sroa.6569.0..sroa_idx570, align 8, !alias.scope !1756, !noalias !1757
  br label %_RINvMNtCs6JMX4GRUq9U_4core6resultINtB3_6ResultNtNtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0ECsiibOIv6tv3q_7uu_date.exit366

default.unreachable2668:                          ; preds = %bb.mr
  unreachable

bb.k:                                             ; preds = %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE1fCsiibOIv6tv3q_7uu_date.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val39 = load ptr, ptr %i.ff, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.val39, i64 109
  %i.fh = load i8, ptr %i.fg, align 1, !range !20, !noalias !1758, !noundef !6 ; 2 uses
  %.not.i.i99 = icmp eq i8 %i.fh, 0
  br i1 %.not.i.i99, label %bb.l, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionNtNtNtCs3JjgEOiFeOI_4jiff5civil7weekday7WeekdayE7or_elseNCNvMs1_NtNtNtBO_3fmt7strtime7printerINtB1K_9FormatterNtB1M_11PosixCustomE18fmt_weekday_abbrev0ECsiibOIv6tv3q_7uu_date.exit.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1759
  call fastcc void @_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt7strtimeNtB5_14BrokenDownTime7to_date(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.val39) #35, !noalias !1758
  %i.fi = load i16, ptr %i.ap, align 8, !range !21, !noalias !1759, !noundef !6
  %i.fj = trunc nuw i16 %i.fi to i1
  br i1 %i.fj, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %.sroa.03.0.copyload.i.i.i106 = load i32, ptr %i.fk, align 2, !noalias !1759 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1759
  %i.fl = shl i32 %.sroa.03.0.copyload.i.i.i106, 8
  %i.fm = ashr i32 %i.fl, 24                      ; 3 uses
  %i.fn = icmp ult i32 %i.fm, 3                   ; 2 uses
  %i.fo = or disjoint i32 %i.fm, 12
  %.sroa.02.0.i.i.i.i.i107 = select i1 %i.fn, i32 %i.fo, i32 %i.fm
  %i.fp = shl i32 %.sroa.03.0.copyload.i.i.i106, 16
  %i.fq = ashr exact i32 %i.fp, 16
  %i.fr = add nsw i32 %i.fq, 32800
  %.neg.i.i.i.i.i108 = sext i1 %i.fn to i32
  %i.fs = add nsw i32 %i.fr, %.neg.i.i.i.i.i108   ; 3 uses
  %i.ft = ashr i32 %.sroa.03.0.copyload.i.i.i106, 24
  %i.fu = udiv i32 %i.fs, 100
  %i.fv = mul nuw nsw i32 %i.fs, 1461
  %i.fw = lshr i32 %i.fv, 2
  %i.fx = udiv i32 %i.fs, 400
  %i.fy = mul nsw i32 %.sroa.02.0.i.i.i.i.i107, 979
end_hunk_0
begin_hunk_1_@_RNCNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_11PosixCustomE6format0CsiibOIv6tv3q_7uu_date:bb.a
  %i.vx = extractvalue { i64, ptr } %i.vl, 1
  br label %bb.ej

bb.du:                                            ; preds = %bb.dr
  %i.vy = load ptr, ptr %i.vo, align 8, !alias.scope !1902, !noalias !1878, !nonnull !6, !noundef !6
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 %i.vu ; 2 uses
  %i.wa = shl nuw i8 %i.vc, 1
  %i.wb = zext i8 %i.wa to i64
  %i.wc = getelementptr inbounds nuw i8, ptr @18, i64 %i.wb ; 2 uses
  %i.wd = load i8, ptr %i.wc, align 1, !noalias !1904, !noundef !6
  store i8 %i.wd, ptr %i.vz, align 1, !noalias !1903
  %i.we = getelementptr inbounds nuw i8, ptr %i.vz, i64 1
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wc, i64 1
  %i.wg = load i8, ptr %i.wf, align 1, !noalias !1904, !noundef !6
  store i8 %i.wg, ptr %i.we, align 1, !noalias !1903
  %i.wh = add i16 %i.vt, 2
  store i16 %i.wh, ptr %i.vs, align 8, !alias.scope !1902, !noalias !1878
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1905), !noalias !1745
  %i.wi = load ptr, ptr %i.ro, align 8, !alias.scope !1905, !noalias !1878, !nonnull !6, !align !13, !noundef !6 ; 3 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  %i.wk = load i64, ptr %i.wj, align 8, !noalias !1906, !noundef !6
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  %i.wm = load i16, ptr %i.wl, align 8, !noalias !1906, !noundef !6 ; 2 uses
  %i.wn = zext i16 %i.wm to i64                   ; 2 uses
  %i.wo = icmp eq i64 %i.wk, %i.wn
  br i1 %i.wo, label %bb.dv, label %.thread169.i, !prof !11

bb.dv:                                            ; preds = %bb.du
  %i.wp = tail call { i64, ptr } @_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ro) #36, !noalias !1878 ; 2 uses
  %i.wq = extractvalue { i64, ptr } %i.wp, 0
  %i.wr = trunc nuw i64 %i.wq to i1
  br i1 %i.wr, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %.pre143.i = load ptr, ptr %i.ro, align 8, !alias.scope !1905, !noalias !1878 ; 3 uses
  %.phi.trans.insert144.i = getelementptr inbounds nuw i8, ptr %.pre143.i, i64 8
  %.pre145.i = load i64, ptr %.phi.trans.insert144.i, align 8, !alias.scope !1907, !noalias !1878
  %.phi.trans.insert146.i = getelementptr inbounds nuw i8, ptr %.pre143.i, i64 16
  %.pre147.i = load i16, ptr %.phi.trans.insert146.i, align 8, !alias.scope !1907, !noalias !1878 ; 2 uses
  %.pre152.i = zext i16 %.pre147.i to i64         ; 2 uses
  %i.ws = icmp eq i64 %.pre145.i, %.pre152.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1907), !noalias !1745
  br i1 %i.ws, label %bb.dx, label %.thread169.i, !prof !18

bb.dx:                                            ; preds = %bb.dw
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #34, !noalias !1908
  unreachable

bb.dy:                                            ; preds = %bb.dv
  %i.wt = extractvalue { i64, ptr } %i.wp, 1
  br label %bb.ej

.thread169.i:                                     ; preds = %bb.du, %bb.dw
  %i.wu = phi ptr [ %.pre143.i, %bb.dw ], [ %i.wi, %bb.du ] ; 2 uses
  %i.wv = phi i16 [ %.pre147.i, %bb.dw ], [ %i.wm, %bb.du ]
  %.pre-phi153172.i = phi i64 [ %.pre152.i, %bb.dw ], [ %i.wn, %bb.du ]
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wu, i64 16
  %i.wx = load ptr, ptr %i.wu, align 8, !alias.scope !1907, !noalias !1878, !nonnull !6, !noundef !6
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 %.pre-phi153172.i
  store i8 45, ptr %i.wy, align 1, !noalias !1908
  %i.wz = add i16 %i.wv, 1
  store i16 %i.wz, ptr %i.ww, align 8, !alias.scope !1907, !noalias !1878
  %i.xa = getelementptr inbounds nuw i8, ptr %.val91.i, i64 94
  %i.xb = load i8, ptr %i.xa, align 2, !range !7, !noalias !1909, !noundef !6
  %i.xc = trunc nuw i8 %i.xb to i1
  %i.xd = getelementptr inbounds nuw i8, ptr %.val91.i, i64 95
  %i.xe = load i8, ptr %i.xd, align 1, !noalias !1909
  br i1 %i.xc, label %bb.ee, label %bb.dz

bb.dz:                                            ; preds = %.thread169.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1910
  call fastcc void @_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt7strtimeNtB5_14BrokenDownTime7to_date(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.val91.i) #35, !noalias !1909
  %i.xf = load i16, ptr %i.k, align 8, !range !21, !noalias !1910, !noundef !6
  %i.xg = trunc nuw i16 %i.xf to i1
  br i1 %i.xg, label %bb.ea, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_11PosixCustomE12fmt_day_zero0ECsiibOIv6tv3q_7uu_date.exit.i528

bb.ea:                                            ; preds = %bb.dz
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1911), !noalias !1878
  %i.xh = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1912), !noalias !1878
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1913), !noalias !1878
  %i.xi = load ptr, ptr %i.xh, align 8, !alias.scope !1914, !noalias !1910, !noundef !6 ; 2 uses
  %i.xj = icmp eq ptr %i.xi, null
  br i1 %i.xj, label %bb.ed, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.xk = atomicrmw add ptr %i.xi, i64 -1 release, align 8, !noalias !1915
  %i.xl = icmp eq i64 %i.xk, 1
  br i1 %i.xl, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  fence acquire, !noalias !1878
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtCs3JjgEOiFeOI_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.xh) #36, !noalias !1909
  br label %bb.ed

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_11PosixCustomE12fmt_day_zero0ECsiibOIv6tv3q_7uu_date.exit.i528: ; preds = %bb.dz
  %.sroa.44.0..sroa_idx.i.i.i529 = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %.sroa.44.0.copyload.i.i.i530 = load i8, ptr %.sroa.44.0..sroa_idx.i.i.i529, align 1, !noalias !1910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1910
  br label %bb.ee

bb.ed:                                            ; preds = %bb.ea, %bb.eb, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1910
  %i.xm = call noundef ptr @_RNvXs6_NtNtNtCs3JjgEOiFeOI_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs6JMX4GRUq9U_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef 0) #36, !noalias !1909
  br label %bb.ej

bb.ee:                                            ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_11PosixCustomE12fmt_day_zero0ECsiibOIv6tv3q_7uu_date.exit.i528, %.thread169.i
  %.pn2.i3.i532 = phi i8 [ %.sroa.44.0.copyload.i.i.i530, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_11PosixCustomE12fmt_day_zero0ECsiibOIv6tv3q_7uu_date.exit.i528 ], [ %i.xe, %.thread169.i ]
  %i.xn = tail call i8 @llvm.abs.i8(i8 %.pn2.i3.i532, i1 false) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1916), !noalias !1745
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1917), !noalias !1745
  %i.xo = load ptr, ptr %i.ro, align 8, !alias.scope !1917, !noalias !1878, !nonnull !6, !align !13, !noundef !6 ; 3 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 16
  %i.xq = load i16, ptr %i.xp, align 8, !noalias !1918, !noundef !6
  %i.xr = zext i16 %i.xq to i64
  %i.xs = add nuw nsw i64 %i.xr, 2
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xo, i64 8
  %i.xu = load i64, ptr %i.xt, align 8, !noalias !1918, !noundef !6
  %i.xv = icmp ugt i64 %i.xs, %i.xu
  br i1 %i.xv, label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i144, label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.thread.i, !prof !11

_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i144: ; preds = %bb.ee
  %i.xw = tail call { i64, ptr } @_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ro) #36, !noalias !1878 ; 2 uses
  %i.xx = extractvalue { i64, ptr } %i.xw, 0
  %i.xy = trunc nuw i64 %i.xx to i1
  br i1 %i.xy, label %bb.ei, label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.thread_crit_edge.i

_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.thread_crit_edge.i: ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i144
  %.pre148.i = load ptr, ptr %i.ro, align 8, !alias.scope !1916, !noalias !1878
  br label %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.thread.i

_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.thread.i: ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.thread_crit_edge.i, %bb.ee
  %i.xz = phi ptr [ %.pre148.i, %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77._RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.thread_crit_edge.i ], [ %i.xo, %bb.ee ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1919), !noalias !1745
  %i.ya = icmp ult i8 %i.xn, 100
  br i1 %i.ya, label %bb.eg, label %bb.ef, !prof !10

bb.ef:                                            ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.thread.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #34, !noalias !1920
  unreachable

bb.eg:                                            ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.thread.i
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  %i.yc = load i64, ptr %i.yb, align 8, !alias.scope !1919, !noalias !1878, !noundef !6
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xz, i64 16 ; 2 uses
  %i.ye = load i16, ptr %i.yd, align 8, !alias.scope !1919, !noalias !1878, !noundef !6 ; 2 uses
  %i.yf = zext i16 %i.ye to i64                   ; 2 uses
  %i.yg = sub nuw i64 %i.yc, %i.yf
  %i.yh = icmp ugt i64 %i.yg, 1
  br i1 %i.yh, label %bb.ek, label %bb.eh, !prof !10

bb.eh:                                            ; preds = %bb.eg
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #34, !noalias !1920
  unreachable

bb.ei:                                            ; preds = %_RINvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjECsiibOIv6tv3q_7uu_date.exit77.i144
  %i.yi = extractvalue { i64, ptr } %i.xw, 1
  br label %bb.ej

bb.ej:                                            ; preds = %bb.dd, %bb.de, %bb.dj, %bb.do, %bb.ei, %bb.ed, %bb.dy, %bb.dt, %bb.ct
  %.sroa.0703.0.ph = phi ptr [ %i.rk, %bb.ct ], [ %i.vb, %bb.do ], [ %i.yi, %bb.ei ], [ %i.xm, %bb.ed ], [ %i.wt, %bb.dy ], [ %i.vx, %bb.dt ], [ %i.ui, %bb.dj ], [ %i.tc, %bb.de ], [ %i.su, %bb.dd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !1921
  store i8 1, ptr %i.ay, align 8, !noalias !1922
  %.sroa.4708.0..sroa_idx1738 = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store i8 70, ptr %.sroa.4708.0..sroa_idx1738, align 1, !noalias !1922
  %.sroa.5709.0..sroa_idx1739 = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store i8 0, ptr %.sroa.5709.0..sroa_idx1739, align 2, !noalias !1922
  %i.yj = call fastcc noundef ptr @_RNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0CsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ay, ptr noundef %.sroa.0703.0.ph) #35, !noalias !1923
  store ptr %i.yj, ptr %i.df, align 8, !alias.scope !1924, !noalias !1925
  br label %_RINvMNtCs6JMX4GRUq9U_4core6resultINtB3_6ResultNtNtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0ECsiibOIv6tv3q_7uu_date.exit154

bb.ek:                                            ; preds = %bb.eg
  %i.yk = load ptr, ptr %i.xz, align 8, !alias.scope !1919, !noalias !1878, !nonnull !6, !noundef !6
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 %i.yf ; 2 uses
  %i.ym = shl nuw i8 %i.xn, 1
  %i.yn = zext i8 %i.ym to i64
  %i.yo = getelementptr inbounds nuw i8, ptr @18, i64 %i.yn ; 2 uses
  %i.yp = load i8, ptr %i.yo, align 1, !noalias !1926, !noundef !6
  store i8 %i.yp, ptr %i.yl, align 1, !noalias !1920
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yl, i64 1
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yo, i64 1
  %i.ys = load i8, ptr %i.yr, align 1, !noalias !1926, !noundef !6
  store i8 %i.ys, ptr %i.yq, align 1, !noalias !1920
  %i.yt = add i16 %i.ye, 2
  store i16 %i.yt, ptr %i.yd, align 8, !alias.scope !1919, !noalias !1878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !1927
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1928)
  br label %_RINvMNtCs6JMX4GRUq9U_4core6resultINtB3_6ResultNtNtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0ECsiibOIv6tv3q_7uu_date.exit154

_RINvMNtCs6JMX4GRUq9U_4core6resultINtB3_6ResultNtNtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0ECsiibOIv6tv3q_7uu_date.exit154: ; preds = %bb.ek, %bb.ej
  %.sink2509.a = phi i8 [ 3, %bb.ek ], [ -1, %bb.ej ]
  %.sroa.13705.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store i8 %.sink2509.a, ptr %.sroa.13705.0..sroa_idx, align 8, !alias.scope !1929, !noalias !1925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !1927
  br label %thread-pre-split

bb.el:                                            ; preds = %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE1fCsiibOIv6tv3q_7uu_date.exit
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val51 = load ptr, ptr %i.yu, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %.val51, i64 64
  %i.yw = load i32, ptr %i.yv, align 8, !range !24, !noalias !1930, !noundef !6
  %i.yx = trunc nuw i32 %i.yw to i1
  br i1 %i.yx, label %bb.em, label %bb.eq

bb.em:                                            ; preds = %bb.el
  %i.yy = getelementptr inbounds nuw i8, ptr %.val51, i64 68
  %i.yz = load i32, ptr %i.yy, align 4, !noalias !1930 ; 2 uses
  %.sroa.024.0.i = tail call i32 @llvm.abs.i32(i32 %i.yz, i1 false)
  %i.za = trunc i32 %1 to i1
  br i1 %i.za, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.zb = icmp eq i8 %i.do, 0
  br i1 %i.zb, label %bb.eq, label %bb.ep

bb.eo:                                            ; preds = %bb.em
  %i.zc = icmp eq i32 %i.yz, 0
  br i1 %i.zc, label %bb.er, label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.sroa.0711.0.insert.ext = zext i32 %.sroa.024.0.i to i64
  %2 = and i32 %1, 255
  %.sroa.0711.4.insert.ext = zext nneg i32 %2 to i64
  %.sroa.0711.4.insert.shift = shl nuw nsw i64 %.sroa.0711.4.insert.ext, 32
  %.sroa.0711.4.insert.insert = or disjoint i64 %.sroa.0711.4.insert.shift, %.sroa.0711.0.insert.ext
  %.mask2453 = and i32 %i.dn, 255
  %.sroa.0711.5.insert.ext = zext nneg i32 %.mask2453 to i64
  %.sroa.0711.5.insert.shift = shl nuw nsw i64 %.sroa.0711.5.insert.ext, 40
  %.sroa.0711.5.insert.insert = or disjoint i64 %.sroa.0711.4.insert.insert, %.sroa.0711.5.insert.shift
  %i.zd = inttoptr i64 %.sroa.0711.5.insert.insert to ptr
  br label %bb.er

bb.eq:                                            ; preds = %bb.en, %bb.el
  %.sink2510.a = phi i8 [ 3, %bb.el ], [ 7, %bb.en ]
  %i.ze = tail call noundef ptr @_RNvXs6_NtNtNtCs3JjgEOiFeOI_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs6JMX4GRUq9U_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef %.sink2510.a) #36, !noalias !1930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !1931
  store i8 1, ptr %i.az, align 8, !noalias !1932
  %.sroa.4714.0..sroa_idx1744 = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 102, ptr %.sroa.4714.0..sroa_idx1744, align 1, !noalias !1932
  %.sroa.5715.0..sroa_idx1745 = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i8 0, ptr %.sroa.5715.0..sroa_idx1745, align 2, !noalias !1932
  %i.zf = call fastcc noundef ptr @_RNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0CsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.az, ptr noundef %i.ze) #35, !noalias !1933
  store ptr %i.zf, ptr %i.df, align 8, !alias.scope !1934, !noalias !1935
  br label %_RINvMNtCs6JMX4GRUq9U_4core6resultINtB3_6ResultNtNtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0ECsiibOIv6tv3q_7uu_date.exit159

bb.er:                                            ; preds = %bb.ep, %bb.eo
  %.sroa.0711.0 = phi ptr [ @157, %bb.eo ], [ %i.zd, %bb.ep ]
  %.sink.i155 = phi i8 [ 0, %bb.eo ], [ 5, %bb.ep ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !1936
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1937)
  store ptr %.sroa.0711.0, ptr %i.df, align 8, !alias.scope !1938, !noalias !1935
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !1938, !noalias !1935
  br label %_RINvMNtCs6JMX4GRUq9U_4core6resultINtB3_6ResultNtNtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0ECsiibOIv6tv3q_7uu_date.exit159

_RINvMNtCs6JMX4GRUq9U_4core6resultINtB3_6ResultNtNtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0ECsiibOIv6tv3q_7uu_date.exit159: ; preds = %bb.er, %bb.eq
  %.sink.i155.sink = phi i8 [ %.sink.i155, %bb.er ], [ -1, %bb.eq ]
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store i8 %.sink.i155.sink, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !1938, !noalias !1935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !1936
  br label %thread-pre-split

bb.es:                                            ; preds = %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE1fCsiibOIv6tv3q_7uu_date.exit
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val54 = load ptr, ptr %i.zg, align 8, !nonnull !6, !align !13, !noundef !6 ; 3 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %.val54, i64 88
  %i.zi = load i16, ptr %i.zh, align 8, !range !21, !noalias !1939, !noundef !6
  %i.zj = getelementptr inbounds nuw i8, ptr %.val54, i64 90
  %i.zk = load i16, ptr %i.zj, align 2, !noalias !1939
  %i.zl = trunc nuw i16 %i.zi to i1
  br i1 %i.zl, label %bb.no, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1940
  call fastcc void @_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt7strtimeNtB5_14BrokenDownTime7to_date(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.val54) #35, !noalias !1939
  %i.zm = load i16, ptr %i.ae, align 8, !range !21, !noalias !1940, !noundef !6
  %i.zn = trunc nuw i16 %i.zm to i1
  br i1 %i.zn, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.zo = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %.sroa.04.0.copyload.i.i.i = load i32, ptr %i.zo, align 2, !noalias !1940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1940
  %i.zp = tail call fastcc noundef i32 @_RNvMNtNtCscxuc9kp9KZq_9jiff_core5civil4dateNtB2_4Date16to_iso_week_date(i32 noundef %.sroa.04.0.copyload.i.i.i) #35, !noalias !1939
  %.sroa.010.0.extract.trunc.i.i.i = trunc i32 %i.zp to i16
  br label %bb.no

bb.ev:                                            ; preds = %bb.et
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1941)
  %i.zq = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1943)
  %i.zr = load ptr, ptr %i.zq, align 8, !alias.scope !1944, !noalias !1940, !noundef !6 ; 2 uses
  %i.zs = icmp eq ptr %i.zr, null
  br i1 %i.zs, label %bb.nn, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.zt = atomicrmw add ptr %i.zr, i64 -1 release, align 8, !noalias !1945
  %i.zu = icmp eq i64 %i.zt, 1
  br i1 %i.zu, label %bb.ex, label %bb.nn

bb.ex:                                            ; preds = %bb.ew
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtCs3JjgEOiFeOI_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.zq) #36, !noalias !1939
  br label %bb.nn

bb.ey:                                            ; preds = %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE1fCsiibOIv6tv3q_7uu_date.exit
  %i.zv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val55 = load ptr, ptr %i.zv, align 8, !nonnull !6, !align !13, !noundef !6 ; 3 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %.val55, i64 88
  %i.zx = load i16, ptr %i.zw, align 8, !range !21, !noalias !1946, !noundef !6
  %i.zy = getelementptr inbounds nuw i8, ptr %.val55, i64 90
  %i.zz = load i16, ptr %i.zy, align 2, !noalias !1946
  %i.aaa = trunc nuw i16 %i.zx to i1
  br i1 %i.aaa, label %bb.nq, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1947
  call fastcc void @_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt7strtimeNtB5_14BrokenDownTime7to_date(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.val55) #35, !noalias !1946
  %i.aab = load i16, ptr %i.ad, align 8, !range !21, !noalias !1947, !noundef !6
  %i.aac = trunc nuw i16 %i.aab to i1
  br i1 %i.aac, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.aad = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %.sroa.04.0.copyload.i.i.i163 = load i32, ptr %i.aad, align 2, !noalias !1947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1947
  %i.aae = tail call fastcc noundef i32 @_RNvMNtNtCscxuc9kp9KZq_9jiff_core5civil4dateNtB2_4Date16to_iso_week_date(i32 noundef %.sroa.04.0.copyload.i.i.i163) #35, !noalias !1946
  %.sroa.010.0.extract.trunc.i.i.i164 = trunc i32 %i.aae to i16
  br label %bb.nq

bb.fb:                                            ; preds = %bb.ez
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1948)
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1950)
  %i.aag = load ptr, ptr %i.aaf, align 8, !alias.scope !1951, !noalias !1947, !noundef !6 ; 2 uses
  %i.aah = icmp eq ptr %i.aag, null
  br i1 %i.aah, label %bb.np, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.aai = atomicrmw add ptr %i.aag, i64 -1 release, align 8, !noalias !1952
  %i.aaj = icmp eq i64 %i.aai, 1
  br i1 %i.aaj, label %bb.fd, label %bb.np

bb.fd:                                            ; preds = %bb.fc
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtCs3JjgEOiFeOI_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aaf) #36, !noalias !1946
  br label %bb.np

bb.fe:                                            ; preds = %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE1fCsiibOIv6tv3q_7uu_date.exit
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val56 = load ptr, ptr %i.aak, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.val56, i64 102
  %i.aam = load i8, ptr %i.aal, align 2, !range !7, !noalias !1953, !noundef !6
  %i.aan = trunc nuw i8 %i.aam to i1
  br i1 %i.aan, label %bb.ns, label %bb.nr

bb.ff:                                            ; preds = %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE1fCsiibOIv6tv3q_7uu_date.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !1744
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val42 = load ptr, ptr %i.aao, align 8, !nonnull !6, !align !13, !noundef !6
  call fastcc void @_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE16fmt_month_abbrevCsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dd, ptr nonnull %.val42) #33
  %i.aap = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.aaq = load i8, ptr %i.aap, align 8, !range !1777, !noalias !1744, !noundef !6 ; 2 uses
  %i.aar = icmp eq i8 %i.aaq, -1
  %i.aas = load ptr, ptr %i.dd, align 8, !noalias !1744 ; 2 uses
  br i1 %i.aar, label %bb.nt, label %bb.nu

bb.fg:                                            ; preds = %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE1fCsiibOIv6tv3q_7uu_date.exit
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val57 = load ptr, ptr %i.aat, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %.val57, i64 102
  %i.aav = load i8, ptr %i.aau, align 2, !range !7, !noalias !1954, !noundef !6
  %i.aaw = trunc nuw i8 %i.aav to i1
  br i1 %i.aaw, label %bb.nw, label %bb.nv

bb.fh:                                            ; preds = %_RNvMs1_NtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_11PosixCustomE1fCsiibOIv6tv3q_7uu_date.exit
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val58 = load ptr, ptr %i.aax, align 8, !nonnull !6, !align !13, !noundef !6 ; 3 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %.val58, i64 84
  %i.aaz = load i16, ptr %i.aay, align 4, !range !21, !noalias !1955, !noundef !6
  %i.aba = getelementptr inbounds nuw i8, ptr %.val58, i64 86
  %i.abb = load i16, ptr %i.aba, align 2, !noalias !1955
  %i.abc = trunc nuw i16 %i.aaz to i1
  br i1 %i.abc, label %bb.ny, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1956
  call fastcc void @_RNvMs4_NtNtCs3JjgEOiFeOI_4jiff3fmt7strtimeNtB5_14BrokenDownTime7to_date(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.val58) #35, !noalias !1955
  %i.abd = load i16, ptr %i.ac, align 8, !range !21, !noalias !1956, !noundef !6
  %i.abe = trunc nuw i16 %i.abd to i1
  br i1 %i.abe, label %bb.fl, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.abf = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %.sroa.04.0.copyload.i.i.i176 = load i32, ptr %i.abf, align 2, !noalias !1956 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1956
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i32 %.sroa.04.0.copyload.i.i.i176, 16
  %.sroa.4.0.extract.trunc.i.i.i.i = zext nneg i32 %.sroa.4.0.extract.shift.i.i.i.i to i64
  %sext.i.i.i.i = shl i64 %.sroa.4.0.extract.trunc.i.i.i.i, 56
  %i.abg = ashr exact i64 %sext.i.i.i.i, 56       ; 3 uses
  %i.abh = icmp ult i64 %i.abg, 14
  br i1 %i.abh, label %_RNvMNtNtCscxuc9kp9KZq_9jiff_core5civil4dateNtB2_4Date11day_of_year.exit.i.i.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.abg, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #34, !noalias !1955
  unreachable

_RNvMNtNtCscxuc9kp9KZq_9jiff_core5civil4dateNtB2_4Date11day_of_year.exit.i.i.i: ; preds = %bb.fj
  %.sroa.01.0.extract.trunc.i.i.i.i.i = trunc i32 %.sroa.04.0.copyload.i.i.i176 to i16 ; 2 uses
  %i.abi = srem i16 %.sroa.01.0.extract.trunc.i.i.i.i.i, 25
  %i.abj = icmp eq i16 %i.abi, 0
  %..i.i.i.i.i = select i1 %i.abj, i16 15, i16 3
  %i.abk = and i16 %..i.i.i.i.i, %.sroa.01.0.extract.trunc.i.i.i.i.i
  %i.abl = icmp eq i16 %i.abk, 0
  %.sroa.sel.i.i.i.i = select i1 %i.abl, ptr getelementptr inbounds nuw (i8, ptr @129, i64 28), ptr @129
  %i.abm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.sel.i.i.i.i, i64 %i.abg
  %i.abn = load i16, ptr %i.abm, align 2, !noalias !1956, !noundef !6
  %i.abo = ashr i32 %.sroa.04.0.copyload.i.i.i176, 24
  %i.abp = trunc nsw i32 %i.abo to i16
  %i.abq = add i16 %i.abn, %i.abp
  br label %bb.ny

bb.fl:                                            ; preds = %bb.fi
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1957)
  %i.abr = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1958)
end_hunk_1
