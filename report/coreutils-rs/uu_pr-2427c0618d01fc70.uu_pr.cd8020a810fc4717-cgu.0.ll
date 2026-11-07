Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_pr-2427c0618d01fc70.uu_pr.cd8020a810fc4717-cgu.0?download=true
inline.NumInlined: 1527
inline.NumDeleted: 885
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvCshDScVpnq8df_5uu_pr11print_error:bb.a
  %i.j = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.k = and i64 %i.h, 1095216660480
  %i.l = icmp ne i64 %i.k, 1095216660480
  call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 %i.l)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshDScVpnq8df_5uu_pr.exit.i

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.f, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !alias.scope !1450
  store i8 3, ptr %i.a, align 8, !alias.scope !1450
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #30
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshDScVpnq8df_5uu_pr.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshDScVpnq8df_5uu_pr.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshDScVpnq8df_5uu_pr.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshDScVpnq8df_5uu_pr.exit: ; preds = %bb.b, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshDScVpnq8df_5uu_pr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshDScVpnq8df_5uu_pr.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvCshDScVpnq8df_5uu_pr11read_to_end(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = icmp eq i64 %2, 1
  br i1 %i.d, label %bb.d, label %.split39

.split39:                                         ; preds = %bb.a
  %.not.i = icmp slt i64 %2, 0
  br i1 %.not.i, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %.split39
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshDScVpnq8df_5uu_pr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !1461
  %i.f = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, 9) 1) #30, !noalias !1461 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.a
  %lhsc = load i8, ptr %1, align 1
  %i.h = icmp eq i8 %lhsc, 45
  br i1 %i.h, label %bb.e, label %.split

.split:                                           ; preds = %bb.d
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !1462
  %i.i = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #30, !noalias !1462 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = tail call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio5stdin() #30
  store ptr %i.k, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.m, align 8
  %i.n = call { i64, ptr } @_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read11read_to_end(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #30 ; 2 uses
  %i.o = extractvalue { i64, ptr } %i.n, 0
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.k, label %bb.m

bb.f:                                             ; preds = %bb.c, %.split39, %.split
  %.sroa.14.0.ph = phi i64 [ 1, %.split ], [ undef, %.split39 ], [ %2, %bb.c ]
  %.sroa.6.0.ph = phi i64 [ 1, %.split ], [ 0, %.split39 ], [ 1, %bb.c ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.6.0.ph, i64 %.sroa.14.0.ph) #31
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshDScVpnq8df_5uu_pr.exit: ; preds = %bb.b, %bb.g
  %i.q = phi ptr [ %.sroa.14.0.ph56.in, %bb.g ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNvNtCs2vKOLqTMYjT_3std2fs4read5inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %2) #30, !noalias !1463
  %i.r = load i64, ptr %i.a, align 8, !range !9, !noundef !4
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.h, label %bb.i

bb.g:                                             ; preds = %.split, %bb.c
  %.sroa.14.0.ph56.in = phi ptr [ %i.f, %bb.c ], [ %i.i, %.split ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.14.0.ph56.in, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshDScVpnq8df_5uu_pr.exit

bb.h:                                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshDScVpnq8df_5uu_pr.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4
  store i64 %2, ptr %0, align 8
  %.sroa.037.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %.sroa.037.sroa.4.0..sroa_idx, align 8
  %.sroa.037.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.037.sroa.5.0..sroa_idx, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.u, ptr %.sroa.438.0..sroa_idx, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCNvCshDScVpnq8df_5uu_pr11read_to_end0EBF_.exit

bb.i:                                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshDScVpnq8df_5uu_pr.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  %i.w = icmp eq i64 %2, 0
  br i1 %i.w, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCNvCshDScVpnq8df_5uu_pr11read_to_end0EBF_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !1464
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCNvCshDScVpnq8df_5uu_pr11read_to_end0EBF_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCNvCshDScVpnq8df_5uu_pr11read_to_end0EBF_.exit: ; preds = %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.k:                                             ; preds = %bb.e
  %i.x = extractvalue { i64, ptr } %i.n, 1
  %i.y = ptrtoint ptr %i.x to i64
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %.sroa.426.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1465)
  %.val.i = load i64, ptr %i.b, align 8, !range !6, !alias.scope !1465, !noundef !4 ; 2 uses
  %i.z = icmp eq i64 %.val.i, 0
  br i1 %i.z, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECshDScVpnq8df_5uu_pr.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val1.i = load ptr, ptr %i.l, align 8, !alias.scope !1465, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !1465
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECshDScVpnq8df_5uu_pr.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECshDScVpnq8df_5uu_pr.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.m:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCNvCshDScVpnq8df_5uu_pr11read_to_end0EBF_.exit, %bb.m, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECshDScVpnq8df_5uu_pr.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCshDScVpnq8df_5uu_pr13build_options(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([320 x i8]) align 8 captures(none) dereferenceable(320) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [72 x i8], align 8                ; 14 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 3 uses
  %i.m = alloca [72 x i8], align 8                ; 14 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [32 x i8], align 8                ; 3 uses
  %i.r = alloca [72 x i8], align 8                ; 14 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.0.i.i.i.i = alloca [24 x i8], align 8    ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 5 uses
  %i.ad = alloca [40 x i8], align 8               ; 9 uses
  %i.ae = alloca [24 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [100 x i8], align 1              ; 4 uses
  %i.ah = alloca [1 x i8], align 1                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [112 x i8], align 8              ; 8 uses
  %i.ak = alloca [24 x i8], align 8               ; 13 uses
  %i.al = alloca [19 x i8], align 1               ; 3 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 8 uses
  %i.ao = alloca [24 x i8], align 8               ; 8 uses
  %i.ap = alloca [16 x i8], align 8               ; 7 uses
  %i.aq = alloca [24 x i8], align 8               ; 8 uses
  %i.ar = alloca [40 x i8], align 8               ; 5 uses
  %i.as = alloca [48 x i8], align 8               ; 13 uses
  %i.at = alloca [32 x i8], align 8               ; 6 uses
  %i.au = alloca [40 x i8], align 8               ; 4 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [40 x i8], align 8               ; 6 uses
  %i.ax = alloca [24 x i8], align 8               ; 8 uses
  %i.ay = alloca [24 x i8], align 8               ; 8 uses
  %i.az = alloca [32 x i8], align 8               ; 8 uses
  %i.ba = alloca [24 x i8], align 8               ; 9 uses
  %i.bb = alloca [16 x i8], align 8               ; 4 uses
  %i.bc = alloca [16 x i8], align 8               ; 6 uses
  %i.bd = alloca [176 x i8], align 8              ; 7 uses
  %i.be = alloca [32 x i8], align 8               ; 7 uses
  %i.bf = alloca [32 x i8], align 8               ; 7 uses
  %i.bg = alloca [32 x i8], align 8               ; 6 uses
  %i.bh = alloca [40 x i8], align 8               ; 4 uses
  %i.bi = alloca [16 x i8], align 8               ; 5 uses
  %i.bj = alloca [32 x i8], align 8               ; 7 uses
  %i.bk = alloca [24 x i8], align 8               ; 6 uses
  %i.bl = alloca [24 x i8], align 8               ; 12 uses
  %i.bm = alloca [24 x i8], align 8               ; 6 uses
  %i.bn = alloca [16 x i8], align 8               ; 6 uses
  %i.bo = alloca [24 x i8], align 8               ; 15 uses
  %i.bp = alloca [24 x i8], align 8               ; 9 uses
  %i.bq = alloca [24 x i8], align 16              ; 6 uses
  %i.br = alloca [32 x i8], align 8               ; 6 uses
  %i.bs = alloca [40 x i8], align 8               ; 4 uses
  %i.bt = alloca [16 x i8], align 8               ; 5 uses
  %i.bu = alloca [32 x i8], align 8               ; 6 uses
  %i.bv = alloca [40 x i8], align 8               ; 4 uses
  %i.bw = alloca [16 x i8], align 8               ; 5 uses
  %i.bx = alloca [40 x i8], align 8               ; 3 uses
  %i.by = alloca [40 x i8], align 8               ; 4 uses
  %i.bz = alloca [32 x i8], align 8               ; 4 uses
  %i.ca = alloca [40 x i8], align 8               ; 4 uses
  %i.cb = alloca [40 x i8], align 8               ; 4 uses
  %i.cc = alloca [24 x i8], align 8               ; 6 uses
  %i.cd = alloca [20 x i8], align 1               ; 3 uses
  %i.ce = alloca [24 x i8], align 8               ; 6 uses
  %i.cf = alloca [20 x i8], align 1               ; 3 uses
  %i.cg = alloca [24 x i8], align 8               ; 4 uses
  %i.ch = alloca [32 x i8], align 8               ; 4 uses
  %i.ci = alloca [40 x i8], align 8               ; 6 uses
  %i.cj = alloca [24 x i8], align 8               ; 6 uses
  %i.ck = alloca [32 x i8], align 8               ; 4 uses
  %i.cl = alloca [40 x i8], align 8               ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.co = alloca [176 x i8], align 8              ; 7 uses
  %i.cp = alloca [32 x i8], align 8               ; 20 uses
  %i.cq = alloca [40 x i8], align 8               ; 6 uses
  %i.cr = alloca [40 x i8], align 8               ; 6 uses
  %i.cs = alloca [40 x i8], align 8               ; 6 uses
  %i.ct = alloca [24 x i8], align 8               ; 2 uses
  %i.cu = alloca [16 x i8], align 8               ; 5 uses
  %i.cv = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.4314 = alloca [24 x i8], align 8         ; 4 uses
  %i.cw = alloca [16 x i8], align 8               ; 5 uses
  %i.cx = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.4312 = alloca [24 x i8], align 8         ; 4 uses
  %i.cy = alloca [48 x i8], align 8               ; 16 uses
  %i.cz = alloca [32 x i8], align 8               ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.db = alloca [32 x i8], align 8               ; 4 uses
  %i.dc = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.8225 = alloca [16 x i8], align 8         ; 6 uses
  %i.dd = alloca [24 x i8], align 8               ; 11 uses
  %i.de = alloca [40 x i8], align 8               ; 8 uses
  %i.df = alloca [24 x i8], align 8               ; 6 uses
  %i.dg = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.8196 = alloca [16 x i8], align 8         ; 6 uses
  %i.dh = alloca [24 x i8], align 8               ; 8 uses
  %i.di = alloca [24 x i8], align 8               ; 6 uses
  %i.dj = alloca [16 x i8], align 8               ; 6 uses
  %i.dk = alloca [16 x i8], align 8               ; 6 uses
  %i.dl = alloca [24 x i8], align 8               ; 6 uses
  %i.dm = alloca [16 x i8], align 8               ; 6 uses
  %i.dn = alloca [16 x i8], align 8               ; 6 uses
  %i.do = alloca [24 x i8], align 8               ; 13 uses
  %i.dp = alloca [24 x i8], align 8               ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.dt = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.826 = alloca [16 x i8], align 8          ; 5 uses
  %.sroa.412 = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.4 = alloca [24 x i8], align 8            ; 4 uses
  %i.du = tail call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 9) #30 ; 2 uses
  %i.dv = tail call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 5) #30 ; 3 uses
  br i1 %i.dv, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.dw = tail call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 6) #30
  br i1 %i.dw, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 30) #30
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.dx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit796

.critedge:                                        ; preds = %bb.d, %bb.a
  %i.dy = tail call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 5) #30 ; 2 uses
  %spec.select1172 = zext i1 %i.dy to i64         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 6) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1837)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  store ptr @53, ptr %i.bw, align 8, !noalias !1838
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 6, ptr %i.dz, align 8, !noalias !1838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !1838
  %i.ea = load i64, ptr %i.cs, align 8, !range !13, !alias.scope !1837, !noundef !4
  %.not.i611 = icmp eq i64 %i.ea, 2
  br i1 %.not.i611, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit, label %bb.f, !prof !14

bb.d:                                             ; preds = %bb.b
  %i.eb = tail call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 6) #30
  br i1 %i.eb, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.412)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.412, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 30) #30
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.ec, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.412.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.412, i64 24, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.412)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit796

bb.f:                                             ; preds = %.critedge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bv, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.cs, i64 40, i1 false), !noalias !1839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !1838
  store ptr %i.bw, ptr %i.bu, align 8, !noalias !1838
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCshDScVpnq8df_5uu_pr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1838
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %i.bv, ptr %i.ed, align 8, !noalias !1838
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1838
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull %i.bu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #32, !noalias !1837
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit: ; preds = %.critedge
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !alias.scope !1837, !align !11, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !1838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br i1 %i.dv, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit
  %.not540 = icmp eq i64 %3, 0
  br i1 %.not540, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !noundef !4 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 1
  %.pre = load ptr, ptr %2, align 8               ; 2 uses
  br i1 %i.ei, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #32
  unreachable

bb.j:                                             ; preds = %bb.h
  %lhsc = load i8, ptr %.pre, align 1
  %i.ej = icmp eq i8 %lhsc, 45
  br i1 %i.ej, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  br label %bb.l

bb.l:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit, %bb.j, %bb.k
  %.sroa.3.0 = phi i64 [ %i.eh, %bb.k ], [ 0, %bb.j ], [ 0, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit ]
  %.sroa.013.0 = phi ptr [ %.pre, %bb.k ], [ inttoptr (i64 1 to ptr), %bb.j ], [ inttoptr (i64 1 to ptr), %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit ]
  %.not.i612 = icmp eq ptr %i.ef, null
  br i1 %.not.i612, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringE6map_orReNCNvCshDScVpnq8df_5uu_pr13build_options0EB1z_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ek = getelementptr i8, ptr %i.ef, i64 8
  %.val.i = load ptr, ptr %i.ek, align 8, !alias.scope !1840, !nonnull !4, !noundef !4
  %i.el = getelementptr i8, ptr %i.ef, i64 16
  %.val4.i = load i64, ptr %i.el, align 8, !alias.scope !1840, !noundef !4
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringE6map_orReNCNvCshDScVpnq8df_5uu_pr13build_options0EB1z_.exit

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringE6map_orReNCNvCshDScVpnq8df_5uu_pr13build_options0EB1z_.exit: ; preds = %bb.l, %bb.m
  %.val.pn.i = phi ptr [ %.val.i, %bb.m ], [ %.sroa.013.0, %bb.l ]
  %.val4.pn.i = phi i64 [ %.val4.i, %bb.m ], [ %.sroa.3.0, %bb.l ] ; 8 uses
  %.not.i613 = icmp slt i64 %.val4.pn.i, 0
  br i1 %.not.i613, label %bb.p, label %bb.n, !prof !10

end_hunk_0
begin_hunk_1_@_RNvCshDScVpnq8df_5uu_pr13build_options:bb.a
bb.eb:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !1893
  call void @_RNvNvNtCs2vKOLqTMYjT_3std3env3var5inner(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 15) #30, !noalias !1893
  %i.uj = load i64, ptr %i.az, align 8, !range !7, !noalias !1893, !noundef !4
  %i.uk = icmp eq i64 %i.uj, 0
  %i.ul = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  br i1 %i.uk, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.experimental.noalias.scope.decl(metadata !1899)
  %.val.i.i.i = load i64, ptr %i.ul, align 8, !range !9, !alias.scope !1899, !noalias !1893, !noundef !4 ; 2 uses
  %i.um = icmp sgt i64 %.val.i.i.i, 0
  br i1 %i.um, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.sink.split.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECshDScVpnq8df_5uu_pr.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.sink.split.i.i.i: ; preds = %bb.ec
  %i.un = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.val1.i.i.i = load ptr, ptr %i.un, align 8, !alias.scope !1899, !noalias !1893, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !1900
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECshDScVpnq8df_5uu_pr.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECshDScVpnq8df_5uu_pr.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.sink.split.i.i.i, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !1893
  br label %bb.eo

bb.ed:                                            ; preds = %bb.eb
  call void @llvm.experimental.noalias.scope.decl(metadata !1901)
  %.val.i.i.i37.i.i = load i64, ptr %i.ul, align 8, !range !6, !alias.scope !1902, !noalias !1893, !noundef !4 ; 2 uses
  %i.uo = icmp eq i64 %.val.i.i.i37.i.i, 0
  br i1 %i.uo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECshDScVpnq8df_5uu_pr.exit38.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.sink.split.i34.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.sink.split.i34.i.i: ; preds = %bb.ed
  %i.up = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.val1.i36.i.i = load ptr, ptr %i.up, align 8, !alias.scope !1901, !noalias !1893, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i36.i.i, i64 noundef %.val.i.i.i37.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !1903
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECshDScVpnq8df_5uu_pr.exit38.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECshDScVpnq8df_5uu_pr.exit38.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.sink.split.i34.i.i, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !1893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !1893
  call void @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 7) #30, !noalias !1893
  %i.uq = load i64, ptr %i.ay, align 8, !range !9, !noalias !1893, !noundef !4 ; 5 uses
  %.not17.i.i = icmp ne i64 %i.uq, -1
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.us = load i64, ptr %i.ur, align 8, !noalias !1893
  %i.ut = icmp eq i64 %i.us, 5
  %or.cond25.i.i = select i1 %.not17.i.i, i1 %i.ut, i1 false
  br i1 %or.cond25.i.i, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECshDScVpnq8df_5uu_pr.exit38.i.i
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.uv = load ptr, ptr %i.uu, align 8, !noalias !1893, !nonnull !4, !noundef !4 ; 3 uses
  %i.uw = load i32, ptr %i.uv, align 1
  %i.ux = xor i32 %i.uw, 1230196560
  %i.uy = getelementptr i8, ptr %i.uv, i64 4
  %i.uz = load i8, ptr %i.uy, align 1
  %i.va = zext i8 %i.uz to i32
  %i.vb = xor i32 %i.va, 88
  %i.vc = or i32 %i.ux, %i.vb
  %i.vd = icmp ne i32 %i.vc, 0
  %i.ve = zext i1 %i.vd to i32
  %i.vf = icmp eq i32 %i.ve, 0
  br i1 %i.vf, label %bb.eh, label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECshDScVpnq8df_5uu_pr.exit38.i.i
  %i.vg = icmp sgt i64 %i.uq, 0
  br i1 %i.vg, label %bb.eg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECshDScVpnq8df_5uu_pr.exit.i.i

bb.eg:                                            ; preds = %bb.ef
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.val32.i.i = load ptr, ptr %i.vh, align 8, !noalias !1893, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val32.i.i, i64 noundef %i.uq, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !1904
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECshDScVpnq8df_5uu_pr.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECshDScVpnq8df_5uu_pr.exit.i.i: ; preds = %bb.eg, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !1893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !1893
  call void @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef 6) #30, !noalias !1893
  %i.vi = load i64, ptr %i.ax, align 8, !range !9, !noalias !1893, !noundef !4 ; 5 uses
  %.not18.i.i = icmp ne i64 %i.vi, -1
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.vk = load i64, ptr %i.vj, align 8, !noalias !1893
  %i.vl = icmp eq i64 %i.vk, 5
  %or.cond.i.i = select i1 %.not18.i.i, i1 %i.vl, i1 false
  br i1 %or.cond.i.i, label %bb.ej, label %bb.ek

bb.eh:                                            ; preds = %bb.ee
  %.not82.i.i = icmp eq i64 %i.uq, 0
  br i1 %.not82.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECshDScVpnq8df_5uu_pr.exit41.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.uv, i64 noundef %i.uq, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !1905
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECshDScVpnq8df_5uu_pr.exit41.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECshDScVpnq8df_5uu_pr.exit41.i.i: ; preds = %bb.ei, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !1893
  br label %.thread58.i.i

bb.ej:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECshDScVpnq8df_5uu_pr.exit.i.i
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.vn = load ptr, ptr %i.vm, align 8, !noalias !1893, !nonnull !4, !noundef !4 ; 3 uses
  %i.vo = load i32, ptr %i.vn, align 1
  %i.vp = xor i32 %i.vo, 1230196560
  %i.vq = getelementptr i8, ptr %i.vn, i64 4
  %i.vr = load i8, ptr %i.vq, align 1
  %i.vs = zext i8 %i.vr to i32
  %i.vt = xor i32 %i.vs, 88
  %i.vu = or i32 %i.vp, %i.vt
  %i.vv = icmp ne i32 %i.vu, 0
  %i.vw = zext i1 %i.vv to i32
  %i.vx = icmp eq i32 %i.vw, 0
  br i1 %i.vx, label %bb.em, label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECshDScVpnq8df_5uu_pr.exit.i.i
  %i.vy = icmp sgt i64 %i.vi, 0
  br i1 %i.vy, label %bb.el, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECshDScVpnq8df_5uu_pr.exit44.i.i

bb.el:                                            ; preds = %bb.ek
  %i.vz = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.val28.i.i = load ptr, ptr %i.vz, align 8, !noalias !1893, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val28.i.i, i64 noundef %i.vi, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !1906
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECshDScVpnq8df_5uu_pr.exit44.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECshDScVpnq8df_5uu_pr.exit44.i.i: ; preds = %bb.el, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !1893
  br label %bb.eo

bb.em:                                            ; preds = %bb.ej
  %.not81.i.i = icmp eq i64 %i.vi, 0
  br i1 %.not81.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECshDScVpnq8df_5uu_pr.exit47.i.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vn, i64 noundef %i.vi, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !1907
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECshDScVpnq8df_5uu_pr.exit47.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECshDScVpnq8df_5uu_pr.exit47.i.i: ; preds = %bb.en, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !1893
  br label %.thread58.i.i

bb.eo:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECshDScVpnq8df_5uu_pr.exit44.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECshDScVpnq8df_5uu_pr.exit.i.i, %bb.ea
  %.sroa.4.0.in.i.i = phi ptr [ %i.ui, %bb.ea ], [ getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4time6format8LONG_ISO, i64 8), %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECshDScVpnq8df_5uu_pr.exit44.i.i ], [ getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4time6format8LONG_ISO, i64 8), %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECshDScVpnq8df_5uu_pr.exit.i.i ]
  %.sroa.05.0.in.i.i = phi ptr [ %i.uh, %bb.ea ], [ @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4time6format8LONG_ISO, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECshDScVpnq8df_5uu_pr.exit44.i.i ], [ @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4time6format8LONG_ISO, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECshDScVpnq8df_5uu_pr.exit.i.i ]
  %.sroa.4.0.i.i = load i64, ptr %.sroa.4.0.in.i.i, align 8, !noalias !1893, !noundef !4 ; 3 uses
  %.not.i48.i.i = icmp slt i64 %.sroa.4.0.i.i, 0
  br i1 %.not.i48.i.i, label %bb.eq, label %bb.ep, !prof !1908

bb.ep:                                            ; preds = %bb.eo
  %.sroa.05.0.i.i = load ptr, ptr %.sroa.05.0.in.i.i, align 8, !noalias !1893, !nonnull !4, !noundef !4
  %i.wa = icmp eq i64 %.sroa.4.0.i.i, 0
  br i1 %i.wa, label %_RNvCshDScVpnq8df_5uu_pr15get_date_format.exit.i, label %.thread58.i.i

.thread58.i.i:                                    ; preds = %bb.ep, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECshDScVpnq8df_5uu_pr.exit47.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECshDScVpnq8df_5uu_pr.exit41.i.i
  %.sroa.4.05562.i.i = phi i64 [ %.sroa.4.0.i.i, %bb.ep ], [ 14, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECshDScVpnq8df_5uu_pr.exit41.i.i ], [ 14, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECshDScVpnq8df_5uu_pr.exit47.i.i ] ; 4 uses
  %.sroa.05.05761.i.i = phi ptr [ %.sroa.05.0.i.i, %bb.ep ], [ @91, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECshDScVpnq8df_5uu_pr.exit41.i.i ], [ @91, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECshDScVpnq8df_5uu_pr.exit47.i.i ]
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !1909
  %i.wb = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.4.05562.i.i, i64 noundef range(i64 1, 9) 1) #30, !noalias !1909 ; 3 uses
  %i.wc = icmp eq ptr %i.wb, null
  br i1 %i.wc, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %.thread58.i.i, %bb.eo
  %.sroa.10.0.ph.i.i = phi i64 [ %.sroa.4.05562.i.i, %.thread58.i.i ], [ undef, %bb.eo ]
  %.sroa.4.050.ph.i.i = phi i64 [ 1, %.thread58.i.i ], [ 0, %bb.eo ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.050.ph.i.i, i64 %.sroa.10.0.ph.i.i) #31, !noalias !1893
  unreachable

bb.er:                                            ; preds = %.thread58.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.wb, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.05.05761.i.i, i64 %.sroa.4.05562.i.i, i1 false), !noalias !1893
  br label %_RNvCshDScVpnq8df_5uu_pr15get_date_format.exit.i

_RNvCshDScVpnq8df_5uu_pr15get_date_format.exit.i: ; preds = %bb.er, %bb.ep
  %i.wd = phi ptr [ %i.wb, %bb.er ], [ inttoptr (i64 1 to ptr), %bb.ep ] ; 2 uses
  %.sroa.4.05077.i.i = phi i64 [ %.sroa.4.05562.i.i, %bb.er ], [ 0, %bb.ep ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1910)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !1911
  call void @llvm.experimental.noalias.scope.decl(metadata !1912)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !1913
  call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1913
  store i64 %.pn, ptr %i.ap, align 8, !noalias !1915
  %i.we = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 %.sroa.583.0, ptr %i.we, align 8, !noalias !1915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1915
  call void @_RNvMs5_NtCs2vKOLqTMYjT_3std4timeNtB5_10SystemTime14duration_since(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ap, i64 noundef 0, i32 noundef 0) #30, !noalias !1915
  %i.wf = load i64, ptr %i.ao, align 8, !range !7, !noalias !1915, !noundef !4
  %i.wg = trunc nuw i64 %i.wf to i1
  %i.wh = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.wi = load i64, ptr %i.wh, align 8, !noalias !1915, !noundef !4 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.wk = load i32, ptr %i.wj, align 8, !range !1916, !noalias !1915, !noundef !4 ; 2 uses
  br i1 %i.wg, label %bb.es, label %bb.et

bb.es:                                            ; preds = %_RNvCshDScVpnq8df_5uu_pr15get_date_format.exit.i
  call void @_RNvXs5_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDurationINtNtCs6JMX4GRUq9U_4core7convert7TryFromNtNtB17_4time8DurationE8try_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, i64 noundef %i.wi, i32 noundef %i.wk) #30, !noalias !1917
  %i.wl = load i64, ptr %i.an, align 8, !range !7, !noalias !1915, !noundef !4
  %i.wm = trunc nuw i64 %i.wl to i1
  %i.wn = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  br i1 %i.wm, label %bb.ev, label %bb.ew, !prof !8

bb.et:                                            ; preds = %_RNvCshDScVpnq8df_5uu_pr15get_date_format.exit.i
  call void @_RNvXs5_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDurationINtNtCs6JMX4GRUq9U_4core7convert7TryFromNtNtB17_4time8DurationE8try_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, i64 noundef %i.wi, i32 noundef %i.wk) #30, !noalias !1918
  %i.wo = load i64, ptr %i.aq, align 8, !range !7, !noalias !1913, !noundef !4
  %i.wp = trunc nuw i64 %i.wo to i1
  br i1 %i.wp, label %bb.eu, label %._RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread4.i_crit_edge.i.i.i, !prof !8

._RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread4.i_crit_edge.i.i.i: ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1913
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.pre.i.i.i.a = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !1913
  %.phi.trans.insert12.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.pre13.i.i.i = load i32, ptr %.phi.trans.insert12.i.i.i, align 8, !noalias !1913
  br label %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread4.i.i.i.i

bb.eu:                                            ; preds = %bb.et
  %5 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.wq = load ptr, ptr %5, align 8, !alias.scope !1914, !noalias !1913, !noundef !4
  br label %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i.i.i.i

bb.ev:                                            ; preds = %bb.es
  %i.wr = load ptr, ptr %i.wn, align 8, !noalias !1915, !noundef !4
  br label %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i.i.i.i

bb.ew:                                            ; preds = %bb.es
  %i.ws = load i64, ptr %i.wn, align 8, !noalias !1915, !noundef !4 ; 2 uses
  %i.wt = icmp eq i64 %i.ws, -9223372036854775808
  br i1 %i.wt, label %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread5.i.i.i.i, label %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.i.i.i.i, !prof !8

_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread5.i.i.i.i: ; preds = %bb.ew
  %i.wu = call noundef ptr @_RNvXs_NtNtCs3JjgEOiFeOI_4jiff4util1bNtB4_11BoundsErrorNtNtB8_5error9IntoError10into_error(i8 noundef 23) #30, !noalias !1917
  br label %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i.i.i.i

_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.i.i.i.i: ; preds = %bb.ew
  %i.wv = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ww = load i32, ptr %i.wv, align 8, !noalias !1915, !noundef !4
  %i.wx = sub nsw i64 0, %i.ws
  %i.wy = sub i32 0, %i.ww
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1913
  br label %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread4.i.i.i.i

_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i.i.i.i: ; preds = %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread5.i.i.i.i, %bb.ev, %bb.eu
  %.sink.i.i.i = phi ptr [ %i.wu, %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread5.i.i.i.i ], [ %i.wq, %bb.eu ], [ %i.wr, %bb.ev ]
  %i.wz = call noundef ptr @_RNvXs_NtNtCs3JjgEOiFeOI_4jiff5error15signed_durationNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef 11) #30, !noalias !1917
  %i.xa = call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sink.i.i.i, ptr noundef %i.wz) #33, !noalias !1917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1913
  br label %bb.fv

_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread4.i.i.i.i: ; preds = %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.i.i.i.i, %._RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread4.i_crit_edge.i.i.i
  %i.xb = phi i32 [ %.pre13.i.i.i, %._RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread4.i_crit_edge.i.i.i ], [ %i.wy, %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.i.i.i.i ] ; 7 uses
  %i.xc = phi i64 [ %.pre.i.i.i.a, %._RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread4.i_crit_edge.i.i.i ], [ %i.wx, %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.i.i.i.i ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1913
  %i.xd = add i64 %i.xc, 377705023201
  %or.cond.i.i.i.i.i.i = icmp ult i64 %i.xd, 631107230402
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ex, label %bb.fc

bb.ex:                                            ; preds = %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread4.i.i.i.i
  %i.xe = add i32 %i.xb, 999999999
  %or.cond1.i.i.i.i.i.i = icmp ult i32 %i.xe, 1999999999
  br i1 %or.cond1.i.i.i.i.i.i, label %bb.ey, label %bb.fc

bb.ey:                                            ; preds = %bb.ex
  %i.xf = icmp eq i64 %i.xc, -377705023201
  %i.xg = icmp slt i32 %i.xb, 0
  %or.cond3.i.i.i.i.i.i = and i1 %i.xg, %i.xf
  br i1 %or.cond3.i.i.i.i.i.i, label %bb.fc, label %bb.ez, !prof !1919

bb.ez:                                            ; preds = %bb.ey
  %i.xh = icmp eq i32 %i.xb, 0
  %i.xi = icmp eq i64 %i.xc, 0
  %or.cond5.i.i.i.i.i.i = or i1 %i.xh, %i.xi
  br i1 %or.cond5.i.i.i.i.i.i, label %bb.fd, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.xj = call i64 @llvm.scmp.i64.i64(i64 %i.xc, i64 0)
  %i.xk = call i64 @llvm.scmp.i64.i32(i32 %i.xb, i32 0)
  %i.xl = icmp eq i64 %i.xj, %i.xk
  br i1 %i.xl, label %bb.fd, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.xm = icmp slt i64 %i.xc, 0                   ; 2 uses
  %.sroa.07.0.v.i.i.i.i.i.i = select i1 %i.xm, i64 1, i64 -1
  %.sroa.07.0.i.i.i.i.i.i = add nsw i64 %.sroa.07.0.v.i.i.i.i.i.i, %i.xc
  %.sroa.021.0.v.i.i.i.i.i.i = select i1 %i.xm, i32 -1000000000, i32 1000000000
  %.sroa.021.0.i.i.i.i.i.i = add nsw i32 %.sroa.021.0.v.i.i.i.i.i.i, %i.xb
  br label %bb.fd

bb.fc:                                            ; preds = %bb.ey, %bb.ex, %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread4.i.i.i.i
  %.sroa.5.0.ph.i.i.i.i.i = phi i32 [ 7167, %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread4.i.i.i.i ], [ 7167, %bb.ey ], [ 5887, %bb.ex ]
  %i.xn = call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.5.0.ph.i.i.i.i.i) #33, !noalias !1920
  br label %bb.fv

bb.fd:                                            ; preds = %bb.fb, %bb.fa, %bb.ez
  %.sroa.10.0.ph.i.i.i = phi i32 [ %.sroa.021.0.i.i.i.i.i.i, %bb.fb ], [ %i.xb, %bb.fa ], [ %i.xb, %bb.ez ] ; 7 uses
  %.sroa.5.0.ph.i.i.i = phi i64 [ %.sroa.07.0.i.i.i.i.i.i, %bb.fb ], [ %i.xc, %bb.fa ], [ %i.xc, %bb.ez ] ; 5 uses
  %i.xo = call noundef nonnull align 8 ptr @_RNvNtNtCs3JjgEOiFeOI_4jiff2tz2db2db() #30, !noalias !1921
  %i.xp = call { i64, ptr } @_RNvNtNtCs3JjgEOiFeOI_4jiff2tz6system3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.xo) #30, !noalias !1921 ; 2 uses
  %i.xq = extractvalue { i64, ptr } %i.xp, 0
  %i.xr = extractvalue { i64, ptr } %i.xp, 1      ; 4 uses
  %i.xs = trunc nuw i64 %i.xq to i1
  br i1 %i.xs, label %bb.fe, label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone6system.exit.i.i.i

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !1922
  store ptr %i.xr, ptr %i.am, align 8, !noalias !1922
  %i.xt = icmp eq ptr %i.xr, null
  br i1 %i.xt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5error5ErrorECshDScVpnq8df_5uu_pr.exit.i.i.i.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.xu = atomicrmw add ptr %i.xr, i64 -1 release, align 8, !noalias !1923
  %i.xv = icmp eq i64 %i.xu, 1
  br i1 %i.xv, label %bb.fg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5error5ErrorECshDScVpnq8df_5uu_pr.exit.i.i.i.i

bb.fg:                                            ; preds = %bb.ff
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtCs3JjgEOiFeOI_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am) #33, !noalias !1921
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5error5ErrorECshDScVpnq8df_5uu_pr.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5error5ErrorECshDScVpnq8df_5uu_pr.exit.i.i.i.i: ; preds = %bb.fg, %bb.ff, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1922
  br label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone6system.exit.i.i.i

_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone6system.exit.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5error5ErrorECshDScVpnq8df_5uu_pr.exit.i.i.i.i, %bb.fd
  %.sroa.0.0.i.i.i.i645 = phi ptr [ inttoptr (i64 2 to ptr), %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3JjgEOiFeOI_4jiff5error5ErrorECshDScVpnq8df_5uu_pr.exit.i.i.i.i ], [ %i.xr, %bb.fd ] ; 5 uses
  %i.xw = ptrtoint ptr %.sroa.0.0.i.i.i.i645 to i64 ; 2 uses
  %i.xx = and i64 %i.xw, 7
  switch i64 %i.xx, label %bb.fh [
    i64 1, label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.i.i.i.i
    i64 2, label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.i.i.i.i
    i64 3, label %bb.fi
    i64 0, label %bb.fk
    i64 4, label %bb.fl
    i64 5, label %bb.fm
  ]

bb.fh:                                            ; preds = %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone6system.exit.i.i.i
  unreachable

bb.fi:                                            ; preds = %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone6system.exit.i.i.i
  %i.xy = trunc i64 %i.xw to i32
  %i.xz = ashr i32 %i.xy, 4                       ; 2 uses
  %i.ya = add nsw i32 %i.xz, 93599
  %or.cond.i.i.i1.i.i.i = icmp ult i32 %i.ya, 187199
  br i1 %or.cond.i.i.i1.i.i.i, label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.i.i.i.i, label %bb.fj, !prof !1924

bb.fj:                                            ; preds = %bb.fi
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @170, ptr noundef nonnull inttoptr (i64 25 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #32, !noalias !1925
  unreachable

bb.fk:                                            ; preds = %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone6system.exit.i.i.i
  %i.yb = call noundef i32 @_RNvMNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif5queryNtB4_8TimeZone9to_offset(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %.sroa.0.0.i.i.i.i645, i64 noundef %.sroa.5.0.ph.i.i.i, i32 noundef %.sroa.10.0.ph.i.i.i) #30, !noalias !1925
  br label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.i.i.i.i

bb.fl:                                            ; preds = %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone6system.exit.i.i.i
  %i.yc = getelementptr i8, ptr %.sroa.0.0.i.i.i.i645, i64 -4
  %i.yd = call noundef i32 @_RNvMNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif5queryNtB4_8TimeZone9to_offset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.yc, i64 noundef %.sroa.5.0.ph.i.i.i, i32 noundef %.sroa.10.0.ph.i.i.i) #30, !noalias !1925
  br label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.i.i.i.i

bb.fm:                                            ; preds = %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone6system.exit.i.i.i
  %i.ye = getelementptr i8, ptr %.sroa.0.0.i.i.i.i645, i64 -5
  %i.yf = call noundef i32 @_RNvMs0_NtNtCscxuc9kp9KZq_9jiff_core2tz5posixNtB5_8TimeZone9to_offset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ye, i64 noundef %.sroa.5.0.ph.i.i.i, i32 noundef %.sroa.10.0.ph.i.i.i) #30, !noalias !1925
  br label %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.i.i.i.i

_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.i.i.i.i: ; preds = %bb.fm, %bb.fl, %bb.fk, %bb.fi, %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone6system.exit.i.i.i, %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone6system.exit.i.i.i
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %i.yf, %bb.fm ], [ 0, %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone6system.exit.i.i.i ], [ 0, %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone6system.exit.i.i.i ], [ %i.yb, %bb.fk ], [ %i.yd, %bb.fl ], [ %i.xz, %bb.fi ] ; 2 uses
  %i.yg = sext i32 %.sroa.0.0.i.i.i.i.i to i64
  %i.yh = add nsw i64 %.sroa.5.0.ph.i.i.i, 378683424000
  %i.yi = add nsw i64 %i.yh, %i.yg                ; 2 uses
  %i.yj = udiv i64 %i.yi, 86400
  %i.yk = trunc i64 %i.yj to i32                  ; 6 uses
  %i.yl = urem i64 %i.yi, 86400                   ; 2 uses
  %i.ym = trunc nuw nsw i64 %i.yl to i32          ; 2 uses
  %i.yn = icmp slt i32 %.sroa.10.0.ph.i.i.i, 0
  br i1 %i.yn, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.yl, 0
  %i.yo = add nsw i32 %.sroa.10.0.ph.i.i.i, 1000000000 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.thread.i.i.i.i.i, label %bb.fp

bb.fo:                                            ; preds = %bb.fp, %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.i.i.i.i
  %.sroa.09.0.i.i.i.i.i = phi i32 [ %i.ys, %bb.fp ], [ %i.ym, %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i10.i.i.i.i = phi i32 [ %i.yo, %bb.fp ], [ %.sroa.10.0.ph.i.i.i, %_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit.i.i.i.i ] ; 3 uses
  %i.yp = add i32 %i.yk, -11323
  %or.cond.i.i.i.i.i = icmp ult i32 %i.yp, 7304484
  br i1 %or.cond.i.i.i.i.i, label %bb.fr, label %bb.fq, !prof !1924

.thread.i.i.i.i.i:                                ; preds = %bb.fn
  %i.yq = add nsw i32 %i.yk, -1
  %i.yr = add i32 %i.yk, -11324
  %or.cond54.i.i.i.i.i = icmp ult i32 %i.yr, 7304484
  br i1 %or.cond54.i.i.i.i.i, label %.thread67.i.i.i.i.i, label %bb.fq, !prof !1924

bb.fp:                                            ; preds = %bb.fn
  %i.ys = add nsw i32 %i.ym, -1
  br label %bb.fo

bb.fq:                                            ; preds = %.thread.i.i.i.i.i, %bb.fo
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @164, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #32, !noalias !1926
  unreachable

bb.fr:                                            ; preds = %bb.fo
  %i.yt = icmp eq i32 %.sroa.09.0.i.i.i.i.i, 0
  br i1 %i.yt, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.yu = udiv i32 %.sroa.09.0.i.i.i.i.i, 3600    ; 2 uses
  %i.yv = urem i32 %.sroa.09.0.i.i.i.i.i, 3600    ; 2 uses
  %i.yw = icmp eq i32 %i.yv, 0
  br i1 %i.yw, label %bb.ft, label %.thread67.i.i.i.i.i

bb.ft:                                            ; preds = %.thread67.i.i.i.i.i, %bb.fs, %bb.fr
  %.sroa.06.05665.i.i.i.i.i = phi i32 [ %i.yk, %bb.fr ], [ %i.yk, %bb.fs ], [ %.sroa.06.0566471.i.i.i.i.i, %.thread67.i.i.i.i.i ]
  %.sroa.0.05763.i.i.i.i.i = phi i32 [ %.sroa.0.0.i10.i.i.i.i, %bb.fr ], [ %.sroa.0.0.i10.i.i.i.i, %bb.fs ], [ %.sroa.0.0576272.i.i.i.i.i, %.thread67.i.i.i.i.i ] ; 2 uses
  %.sroa.041.0.shrunk.i.i.i.i.i = phi i32 [ 0, %bb.fr ], [ %i.yu, %bb.fs ], [ %i.yy, %.thread67.i.i.i.i.i ]
  %.sroa.043.0.i.i.i.i.i = phi i64 [ 0, %bb.fr ], [ 0, %bb.fs ], [ %i.zf, %.thread67.i.i.i.i.i ]
  %or.cond2.i.i.i.i.i = icmp ult i32 %.sroa.0.05763.i.i.i.i.i, 1000000000
  br i1 %or.cond2.i.i.i.i.i, label %bb.ge, label %bb.fu, !prof !1924

.thread67.i.i.i.i.i:                              ; preds = %bb.fs, %.thread.i.i.i.i.i
  %i.yx = phi i32 [ %i.yv, %bb.fs ], [ 3599, %.thread.i.i.i.i.i ]
  %i.yy = phi i32 [ %i.yu, %bb.fs ], [ 23, %.thread.i.i.i.i.i ]
  %.sroa.0.0576272.i.i.i.i.i = phi i32 [ %.sroa.0.0.i10.i.i.i.i, %bb.fs ], [ %i.yo, %.thread.i.i.i.i.i ]
  %.sroa.06.0566471.i.i.i.i.i = phi i32 [ %i.yk, %bb.fs ], [ %i.yq, %.thread.i.i.i.i.i ]
  %.lhs.trunc.i.i.i.i.i = trunc nuw nsw i32 %i.yx to i16 ; 2 uses
  %i.yz = udiv i16 %.lhs.trunc.i.i.i.i.i, 60
  %i.za = zext nneg i16 %i.yz to i64
  %i.zb = urem i16 %.lhs.trunc.i.i.i.i.i, 60
  %i.zc = zext nneg i16 %i.zb to i64
  %i.zd = shl nuw nsw i64 %i.zc, 48
  %i.ze = shl nuw nsw i64 %i.za, 40
  %i.zf = or disjoint i64 %i.zd, %i.ze
  br label %bb.ft

bb.fu:                                            ; preds = %bb.ft
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @167, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32, !noalias !1926
  unreachable

bb.fv:                                            ; preds = %bb.fc, %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i.i.i.i
  %.sroa.5.0.in.i.i.i = phi ptr [ %i.xa, %_RNvMs0_NtCs3JjgEOiFeOI_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i.i.i.i ], [ %i.xn, %bb.fc ]
  %i.zg = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %.sroa.5.0.in.i.i.i, ptr %i.zg, align 8, !alias.scope !1912, !noalias !1911
  store i64 1, ptr %i.as, align 8, !alias.scope !1912, !noalias !1911
  %i.zh = call { i64, i32 } @_RNvNtNtCsh036I4OHgIr_6uucore8features4time18system_time_to_sec(i64 noundef %.pn, i32 noundef range(i32 0, 1000000000) %.sroa.583.0) #30, !noalias !1892
  %i.zi = extractvalue { i64, i32 } %i.zh, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1927
  %i.zj = icmp slt i64 %i.zi, 0
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !1928
  br i1 %i.zj, label %bb.fy, label %bb.fw

end_hunk_1
