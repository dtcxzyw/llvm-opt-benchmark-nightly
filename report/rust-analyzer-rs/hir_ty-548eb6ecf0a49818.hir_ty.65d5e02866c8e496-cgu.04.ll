Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.04?download=true
inline.NumInlined: 5206
inline.NumDeleted: 1999
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator11exec_fn_def:bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.da unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.hu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body182 unwind label %bb.db

bb.da:                                            ; preds = %bb.cy
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8K4cjrcxBsw_6hir_ty.exit194 unwind label %bb.cv

bb.db:                                            ; preds = %bb.cz
  %i.hv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.dc:                                            ; preds = %_RNvMs0_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_8Interval16write_from_bytes.exit189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.de unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.hw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body182 unwind label %bb.df

bb.de:                                            ; preds = %bb.dc
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8K4cjrcxBsw_6hir_ty.exit199 unwind label %bb.cv

bb.df:                                            ; preds = %bb.dd
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8K4cjrcxBsw_6hir_ty.exit199: ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.hy = atomicrmw sub ptr %.sroa.071.0.copyload, i64 1 release, align 8, !noalias !9801
  %i.hz = icmp eq i64 %i.hy, 1
  br i1 %i.hz, label %bb.dg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit200

bb.dg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8K4cjrcxBsw_6hir_ty.exit199
  fence acquire
  call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1t_19RustcEnumVariantIdxEE9drop_slowB1v_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ag) #46
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit200

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit200: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8K4cjrcxBsw_6hir_ty.exit199, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8K4cjrcxBsw_6hir_ty.exit194: ; preds = %bb.da, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.ia = atomicrmw sub ptr %.sroa.071.0.copyload, i64 1 release, align 8, !noalias !9802
  %i.ib = icmp eq i64 %i.ia, 1
  br i1 %i.ib, label %bb.dh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit201

bb.dh:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8K4cjrcxBsw_6hir_ty.exit194
  fence acquire
  call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1t_19RustcEnumVariantIdxEE9drop_slowB1v_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ag) #46
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit201

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit201: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8K4cjrcxBsw_6hir_ty.exit194, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator11read_memory(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 16 captures(none) %1, i64 noundef range(i64 0, 3) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.4 = alloca [28 x i8], align 4            ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %4, ptr %i.e, align 8
  %i.f = icmp eq i64 %4, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  switch i64 %2, label %default.unreachable33 [
    i64 0, label %bb.f
    i64 1, label %bb.e
    i64 2, label %.split
  ]

bb.d:                                             ; preds = %_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator11read_memory0Bb_.exit, %bb.j, %.split, %bb.b
  ret void

default.unreachable33:                            ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  br label %bb.f

.split:                                           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %3, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.416.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.i, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @452, ptr noundef nonnull %i.b), !noalias !9807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i32 3, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sink = phi i64 [ 664, %bb.e ], [ 640, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.sink ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = add i64 %4, %3                           ; 2 uses
  %i.n = icmp ult i64 %i.m, %3
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !5
  %.not = icmp ugt i64 %i.m, %i.p
  br i1 %.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9808
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 24, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !9808
  %i.q = load i64, ptr %i.a, align 8, !range !4, !noalias !9808, !noundef !5
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !6, !noalias !9808, !noundef !5 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.r, label %bb.i, label %_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator11read_memory0Bb_.exit, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.v = load i64, ptr %i.u, align 8, !noalias !9808
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #45, !noalias !9808
  unreachable

_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator11read_memory0Bb_.exit: ; preds = %bb.h
  %i.w = load ptr, ptr %i.u, align 8, !noalias !9808, !nonnull !5, !noundef !5 ; 2 uses
  %i.x = icmp samesign ugt i64 %i.t, 23
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9808
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.w, ptr noundef nonnull align 1 dereferenceable(24) @134, i64 24, i1 false), !noalias !9808
  store i32 3, ptr %0, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 24, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.d

bb.j:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 %3
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %i.aa, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator12eval_operand(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 16 dereferenceable(1120) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2, ptr noalias nofree noundef align 8 dereferenceable(64) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [12 x i8], align 4                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [48 x i8], align 8                ; 8 uses
  %i.l = alloca [48 x i8], align 8                ; 10 uses
  %i.m = alloca [48 x i8], align 8                ; 10 uses
  %i.n = alloca [48 x i8], align 8                ; 11 uses
  %i.o = alloca [12 x i8], align 4                ; 7 uses
  %i.p = alloca [48 x i8], align 8                ; 10 uses
  %i.q = alloca [48 x i8], align 8                ; 9 uses
  %i.r = alloca [8 x i8], align 4                 ; 7 uses
  %i.s = alloca [48 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [12 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [48 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [12 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [48 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [12 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [48 x i8], align 8               ; 4 uses
  %i.ag = alloca [48 x i8], align 8               ; 4 uses
  %i.ah = alloca [48 x i8], align 8               ; 4 uses
  %i.ai = alloca [16 x i8], align 8               ; 4 uses
  %i.aj = alloca [48 x i8], align 8               ; 9 uses
  %i.ak = alloca [48 x i8], align 8               ; 9 uses
  %i.al = alloca [16 x i8], align 8               ; 4 uses
  %i.am = alloca [48 x i8], align 8               ; 9 uses
  %i.an = alloca [16 x i8], align 8               ; 6 uses
  %i.ao = alloca [48 x i8], align 8               ; 11 uses
  %i.ap = alloca [48 x i8], align 8               ; 18 uses
  %i.aq = alloca [48 x i8], align 8               ; 11 uses
  %i.ar = load i32, ptr %2, align 8, !range !43, !noundef !5
  switch i32 %i.ar, label %default.unreachable176 [
    i32 0, label %bb.bs
    i32 1, label %bb.bs
    i32 2, label %bb.b
    i32 3, label %bb.aj
    i32 4, label %bb.ak
  ]

default.unreachable176:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %.val = load ptr, ptr %i.as, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9891)
  %.sroa.0.0.copyload.i = load i32, ptr %i.at, align 8, !noalias !9892
  %.sroa.5128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.sroa.5128.0.copyload.i = load ptr, ptr %.sroa.5128.0..sroa_idx.i, align 8, !noalias !9892 ; 5 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !9892 ; 4 uses
  switch i32 %.sroa.0.0.copyload.i, label %.split117.i [
    i32 4, label %bb.d
    i32 5, label %bb.e
  ]

.split117.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !9893
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, i64 noundef range(i64 0, -9223372036854775808) 24, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !9894
  %i.au = load i64, ptr %i.ae, align 8, !range !4, !noalias !9893, !noundef !5
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !6, !noalias !9893, !noundef !5 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.av, label %bb.c, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8K4cjrcxBsw_6hir_ty.exit.i, !prof !7

bb.c:                                             ; preds = %.split117.i
  %i.az = load i64, ptr %i.ay, align 8, !noalias !9893
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ax, i64 %i.az) #45, !noalias !9894
  unreachable

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %.split117.i
  %i.ba = load ptr, ptr %i.ay, align 8, !noalias !9893, !nonnull !5, !noundef !5 ; 2 uses
  %i.bb = icmp ugt i64 %i.ax, 23
  tail call void @llvm.assume(i1 %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !9893
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ba, ptr noundef nonnull readonly align 1 dereferenceable(24) @485, i64 range(i64 0, -9223372036854775808) 24, i1 false), !noalias !9895
  store i32 8, ptr %i.ap, align 8, !alias.scope !9890, !noalias !9896
  %.sroa.476.sroa.3.0..sroa.476.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %i.ax, ptr %.sroa.476.sroa.3.0..sroa.476.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !9890, !noalias !9896
  %.sroa.476.sroa.4.0..sroa.476.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.ba, ptr %.sroa.476.sroa.4.0..sroa.476.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !9890, !noalias !9896
  %.sroa.476.sroa.5.0..sroa.476.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i64 24, ptr %.sroa.476.sroa.5.0..sroa.476.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !9890, !noalias !9896
  br label %_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator22allocate_const_in_heap.exit

bb.d:                                             ; preds = %bb.b
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !9892
  %.sroa.9.16.extract.trunc.i = trunc i64 %.sroa.9.0.copyload.i to i32 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5128.0.copyload.i) ]
  %i.bc = ptrtoint ptr %.sroa.7.0.copyload.i to i64 ; 3 uses
  %i.bd = and i64 %i.bc, 4294967295
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5128.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  call void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator24allocate_valtree_in_heap(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ap, ptr noalias nofree noundef nonnull align 16 dereferenceable(1120) %1, ptr noundef nonnull %.sroa.5128.0.copyload.i, ptr noundef nonnull %.sroa.7.0.copyload.i), !noalias !9897
  br label %_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator22allocate_const_in_heap.exit

bb.f:                                             ; preds = %bb.d
  %.sroa.0.4.extract.shift.i = lshr exact i64 %i.bc, 32
  %.sroa.0.4.extract.trunc.i = trunc nuw i64 %.sroa.0.4.extract.shift.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !9892
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.bg = load ptr, ptr %i.bf, align 16, !alias.scope !9891, !noalias !9898, !nonnull !5, !noundef !5
  call void @_RNvNtCs8K4cjrcxBsw_6hir_ty17method_resolution17lookup_impl_const(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.an, ptr noundef nonnull align 16 dereferenceable(1120) %1, ptr noundef nonnull %i.bg, i32 noundef %.sroa.0.4.extract.trunc.i, i32 noundef %.sroa.9.16.extract.trunc.i, ptr noundef nonnull %.sroa.5128.0.copyload.i), !noalias !9898
  %i.bh = load i32, ptr %i.an, align 8, !range !60, !noalias !9892, !noundef !5
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !noalias !9892, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !9892, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !9892
  %.sroa.0.4.insert.ext.i = zext i32 %i.bh to i64
  %.sroa.0.4.insert.shift.i = shl nuw i64 %.sroa.0.4.insert.ext.i, 32 ; 2 uses
  %i.bm = inttoptr i64 %.sroa.0.4.insert.shift.i to ptr
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.pre-phi.i = phi i64 [ %.sroa.0.4.insert.shift.i, %bb.f ], [ %i.bc, %bb.d ] ; 2 uses
  %.sroa.0.0184.i = phi ptr [ %i.bm, %bb.f ], [ %.sroa.7.0.copyload.i, %bb.d ] ; 3 uses
  %.sroa.15.0.i = phi i32 [ %i.bj, %bb.f ], [ %.sroa.9.16.extract.trunc.i, %bb.d ] ; 6 uses
  %.sroa.0.0.i = phi ptr [ %i.bl, %bb.f ], [ %.sroa.5128.0.copyload.i, %bb.d ] ; 2 uses
  %.sroa.0.0.extract.trunc174.i = trunc i64 %.pre-phi.i to i32
  %.sroa.0.4.extract.shift176.i = lshr i64 %.pre-phi.i, 32
  %.sroa.0.4.extract.trunc177.i = trunc nuw i64 %.sroa.0.4.extract.shift176.i to i32 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 6 uses
  switch i32 %.sroa.0.0.extract.trunc174.i, label %default.unreachable.i [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

default.unreachable.i:                            ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !9892
  %i.bp = load ptr, ptr %i.bn, align 16, !alias.scope !9891, !noalias !9898, !nonnull !5, !noundef !5
  %i.bq = load ptr, ptr %i.bo, align 8, !alias.scope !9891, !noalias !9898, !nonnull !5, !align !11, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !9892
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 16 dereferenceable(16) %i.br, i64 16, i1 false), !noalias !9898
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 296
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !5, !noalias !9898, !nonnull !5
  call void %i.bt(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.am, ptr noundef nonnull %i.bp, i32 noundef %.sroa.0.4.extract.trunc177.i, i32 noundef %.sroa.15.0.i, ptr noundef nonnull %.sroa.0.0.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.al) #47, !noalias !9898, !inline_history !9825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9892
  %i.bu = load i32, ptr %i.am, align 8, !range !62, !noalias !9892, !noundef !5
  %.not119.i = icmp eq i32 %i.bu, -2
  br i1 %.not119.i, label %bb.r, label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !9892
  %i.bv = load ptr, ptr %i.bn, align 16, !alias.scope !9891, !noalias !9898, !nonnull !5, !noundef !5
  %i.bw = load ptr, ptr %i.bo, align 8, !alias.scope !9891, !noalias !9898, !nonnull !5, !align !11, !noundef !5
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 312
  %i.by = load ptr, ptr %i.bx, align 8, !invariant.load !5, !noalias !9898, !nonnull !5
  call void %i.by(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ak, ptr noundef nonnull %i.bv, i32 noundef %.sroa.0.4.extract.trunc177.i, i32 noundef %.sroa.15.0.i) #47, !noalias !9898, !inline_history !9825
  %i.bz = load i32, ptr %i.ak, align 8, !range !62, !noalias !9892, !noundef !5
  %.not118.i = icmp eq i32 %i.bz, -2
  br i1 %.not118.i, label %bb.aa, label %bb.t

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !9892
  %i.ca = load ptr, ptr %i.bn, align 16, !alias.scope !9891, !noalias !9898, !nonnull !5, !noundef !5
  %i.cb = load ptr, ptr %i.bo, align 8, !alias.scope !9891, !noalias !9898, !nonnull !5, !align !11, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !9892
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 16 dereferenceable(16) %i.cc, i64 16, i1 false), !noalias !9898
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 304
  %i.ce = load ptr, ptr %i.cd, align 8, !invariant.load !5, !noalias !9898, !nonnull !5
  call void %i.ce(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aj, ptr noundef nonnull %i.ca, i32 noundef %.sroa.0.4.extract.trunc177.i, i32 noundef %.sroa.15.0.i, ptr noundef nonnull %.sroa.0.0.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.ai) #47, !noalias !9898, !inline_history !9825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !9892
  %i.cf = load i32, ptr %i.aj, align 8, !range !62, !noalias !9892, !noundef !5
  %.not.i = icmp eq i32 %i.cf, -2
  br i1 %.not.i, label %bb.ai, label %bb.ab

bb.k:                                             ; preds = %bb.h
  %i.cg = load ptr, ptr %i.bo, align 8, !alias.scope !9891, !noalias !9898, !nonnull !5, !align !11, !noundef !5
  %i.ch = load ptr, ptr %i.bn, align 16, !alias.scope !9891, !noalias !9898, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !9892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(48) %i.am, i64 48, i1 false), !noalias !9892
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !9899
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !9899
  store ptr %.sroa.0.0184.i, ptr %i.ac, align 8, !noalias !9899
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 %.sroa.15.0.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !9899
  invoke void @_RNvMs5_NtCs8K4cjrcxBsw_6hir_ty2dbNtB5_14GeneralConstId4name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.ac, ptr noundef nonnull %i.ch, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.cg)
          to label %bb.l unwind label %bb.q, !noalias !9900

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !9899
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !9899
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !9899
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !9899
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %i.am, i64 48, i1 false), !noalias !9892
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !9901
end_hunk_0
begin_hunk_1_@_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator12eval_operand:bb.a
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.al ], [ %i.ez, %bb.ao ]
  %.pn.i.i.i = phi i64 [ %i.eb, %bb.al ], [ %i.fa, %bb.ao ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.ef ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.ej, align 1, !noalias !9921 ; 2 uses
  %i.ek = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.ei
  %i.el = bitcast <16 x i1> %i.ek to i16          ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.el, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.am, %bb.an
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.ey, %bb.an ], [ %i.el, %bb.am ] ; 3 uses
  %i.em = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.en = zext nneg i16 %i.em to i64
  %i.eo = add i64 %.sroa.01.0.i.i.i.i, %i.en
  %i.ep = and i64 %i.eo, %i.ef
  %i.eq = sub nsw i64 0, %i.ep
  %i.er = getelementptr inbounds [24 x i8], ptr %i.eg, i64 %i.eq ; 3 uses
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -24
  %i.et = call noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtCsileJQcQObtj_7hir_def8StaticIdINtB2_10EquivalentBq_E10equivalentCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.es), !noalias !9922
  br i1 %i.et, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCsileJQcQObtj_7hir_def8StaticIdNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval7AddressNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1r_.exit.i, label %bb.an, !prof !23

._crit_edge.i.i.i:                                ; preds = %bb.an, %bb.am
  %i.eu = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.ev = bitcast <16 x i1> %i.eu to i16
  %i.ew = icmp eq i16 %i.ev, 0
  br i1 %i.ew, label %bb.ao, label %select.unfold.i, !prof !7

bb.an:                                            ; preds = %.lr.ph.i.i.i
  %i.ex = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.ey = and i16 %i.ex, %.sroa.06.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.ey, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.ao:                                            ; preds = %._crit_edge.i.i.i
  %i.ez = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.fa = add i64 %.sroa.01.0.i.i.i.i, %i.ez
  br label %bb.am

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCsileJQcQObtj_7hir_def8StaticIdNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval7AddressNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1r_.exit.i: ; preds = %.lr.ph.i.i.i
  %i.fb = getelementptr inbounds i8, ptr %i.er, i64 -16
  %i.fc = load i64, ptr %i.fb, align 8, !range !10, !noalias !9916, !noundef !5
  %i.fd = getelementptr inbounds i8, ptr %i.er, i64 -8
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !9916, !noundef !5
  br label %bb.cc

select.unfold.i:                                  ; preds = %._crit_edge.i.i.i, %bb.ak
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 4 uses
  %i.fg = load ptr, ptr %i.ff, align 16, !alias.scope !9911, !noalias !9916, !nonnull !5, !noundef !5
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 4 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !alias.scope !9911, !noalias !9916, !nonnull !5, !align !11, !noundef !5
  %i.fj = call noundef nonnull align 8 ptr @_RNvMsW_NtCsileJQcQObtj_7hir_def10signaturesNtB5_15StaticSignature2of(ptr noundef nonnull %i.fg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.fi, i32 noundef range(i32 1, 0) %i.ds, i32 noundef %i.du), !noalias !9916 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 68
  %i.fl = load i8, ptr %i.fk, align 4, !noalias !9916, !noundef !5
  %i.fm = and i8 %i.fl, 64
  %.not160.i = icmp eq i8 %i.fm, 0
  br i1 %.not160.i, label %bb.ap, label %_RINvMs8_NtCs8K4cjrcxBsw_6hir_ty5inferNtB6_15InferenceResult2ofNtCsileJQcQObtj_7hir_def13DefWithBodyIdEB8_.exit.i

bb.ap:                                            ; preds = %select.unfold.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !9913
  %i.fn = load ptr, ptr %i.ff, align 16, !alias.scope !9911, !noalias !9916, !nonnull !5, !noundef !5
  %i.fo = load ptr, ptr %i.fh, align 8, !alias.scope !9911, !noalias !9916, !nonnull !5, !align !11, !noundef !5
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 312
  %i.fq = load ptr, ptr %i.fp, align 8, !invariant.load !5, !noalias !9916, !nonnull !5
  call void %i.fq(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.q, ptr noundef nonnull %i.fn, i32 noundef range(i32 1, 0) %i.ds, i32 noundef %i.du) #47, !noalias !9916, !inline_history !9861
  %i.fr = load i32, ptr %i.q, align 8, !range !62, !noalias !9913, !noundef !5
  %.not161.i = icmp eq i32 %i.fr, -2
  br i1 %.not161.i, label %bb.bc, label %bb.aq

_RINvMs8_NtCs8K4cjrcxBsw_6hir_ty5inferNtB6_15InferenceResult2ofNtCsileJQcQObtj_7hir_def13DefWithBodyIdEB8_.exit.i: ; preds = %select.unfold.i
  %i.fs = load ptr, ptr %i.ff, align 16, !alias.scope !9911, !noalias !9916, !nonnull !5, !noundef !5
  %i.ft = load ptr, ptr %i.fh, align 8, !alias.scope !9911, !noalias !9916, !nonnull !5, !align !11, !noundef !5
  %i.fu = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.ds, ptr %i.fu, align 4, !noalias !9913
  %i.fv = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %i.du, ptr %i.fv, align 4, !noalias !9913
  store i32 1, ptr %i.o, align 4, !noalias !9913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9923
  store i32 1, ptr %i.h, align 4, !noalias !9923
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.ds, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !9923
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.du, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !noalias !9923
  %i.fw = call noundef nonnull align 8 ptr @_RNvMs2t_NtCs8K4cjrcxBsw_6hir_ty5inferNtB6_15InferenceResult8for_body(ptr noundef nonnull %i.fs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.ft, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.h), !noalias !9924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9923
  %i.fx = load ptr, ptr %i.ff, align 16, !alias.scope !9911, !noalias !9916, !nonnull !5, !noundef !5
  %i.fy = load ptr, ptr %i.fh, align 8, !alias.scope !9911, !noalias !9916, !nonnull !5, !align !11, !noundef !5
  %i.fz = call noundef nonnull align 8 ptr @_RNvMsi_NtNtCsileJQcQObtj_7hir_def10expr_store4bodyNtB5_4Body2of(ptr noundef nonnull %i.fx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.fy, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.o), !noalias !9916
  %i.ga = call noundef i32 @_RNvMs1_NtNtCsileJQcQObtj_7hir_def10expr_store4bodyNtB5_4Body9root_expr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.fz), !noalias !9916
  %i.gb = call noundef nonnull ptr @_RNvMs9_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_15InferenceResult7expr_ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.fw, i32 noundef %i.ga), !noalias !9916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !9913
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val168.i = load ptr, ptr %i.gc, align 8, !alias.scope !9912, !noalias !9925
  call fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator13size_align_of(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.n, ptr noundef nonnull align 16 dereferenceable(1120) %1, ptr noundef nonnull %i.gb, ptr %.val168.i), !noalias !9916
  %i.gd = load i32, ptr %i.n, align 8, !range !9, !noalias !9913, !noundef !5 ; 2 uses
  %.not163.i = icmp eq i32 %i.gd, -1
  br i1 %.not163.i, label %bb.bh, label %bb.bg

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9913
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !9913
  %i.ge = getelementptr i8, ptr %i.fj, i64 56
  %.val169.i = load ptr, ptr %i.ge, align 8, !noalias !9916, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9926
  %i.gf = ptrtoint ptr %.val169.i to i64
  %i.gg = and i64 %i.gf, 1
  %i.gh = sub nsw i64 0, %i.gg
  %i.gi = getelementptr i8, ptr %.val169.i, i64 %i.gh ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gi) ]
  %i.gj = load ptr, ptr %i.gi, align 8, !noalias !9927, !nonnull !5, !noundef !5
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gl = load i64, ptr %i.gk, align 8, !noalias !9927, !noundef !5 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9926
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.gl, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ar unwind label %bb.bb, !noalias !9927

bb.ar:                                            ; preds = %bb.aq
  %i.gm = load i64, ptr %i.e, align 8, !range !4, !noalias !9926, !noundef !5
  %i.gn = trunc nuw i64 %i.gm to i1
  %i.go = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !range !6, !noalias !9926, !noundef !5 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.gn, label %bb.as, label %bb.at, !prof !7

bb.as:                                            ; preds = %bb.ar
  %i.gr = load i64, ptr %i.gq, align 8, !noalias !9926
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.gp, i64 %i.gr) #45
          to label %bb.ba unwind label %bb.bb, !noalias !9927

bb.at:                                            ; preds = %bb.ar
  %i.gs = load ptr, ptr %i.gq, align 8, !noalias !9926, !nonnull !5, !noundef !5 ; 3 uses
  %i.gt = icmp ule i64 %i.gl, %i.gp
  call void @llvm.assume(i1 %i.gt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9926
  %.not.i175.i = icmp eq i64 %i.gl, 0
  br i1 %.not.i175.i, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.ay, %bb.at
  store i64 %i.gp, ptr %i.g, align 8, !noalias !9926
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.gs, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !9926
  %.sroa.6.0..sroa_idx.i176.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.gl, ptr %.sroa.6.0..sroa_idx.i176.i, align 8, !noalias !9926
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9926
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !9913
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !9928
  %i.gu = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 48, i64 noundef range(i64 1, 17) 8) #48, !noalias !9928 ; 3 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.av, label %_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator11eval_static0Bb_.exit.i, !prof !7

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #45
          to label %.noexc.i.i97 unwind label %bb.aw, !noalias !9927

.noexc.i.i97:                                     ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.av
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty9consteval14ConstEvalErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f) #42
          to label %.body.i.i96 unwind label %bb.ax, !noalias !9927

bb.ax:                                            ; preds = %bb.aw
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !9927
  unreachable

bb.ay:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gs, ptr nonnull align 1 %i.gj, i64 %i.gl, i1 false), !noalias !9927
  br label %bb.au

.body.i.i96:                                      ; preds = %bb.aw
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #42
          to label %common.resume unwind label %bb.az, !noalias !9927

bb.az:                                            ; preds = %bb.bb, %.body.i.i96
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !9929
  unreachable

bb.ba:                                            ; preds = %bb.as
  unreachable

bb.bb:                                            ; preds = %bb.as, %bb.aq
  %i.gz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty9consteval14ConstEvalErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i) #42
          to label %common.resume unwind label %bb.az, !noalias !9929

_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator11eval_static0Bb_.exit.i: ; preds = %bb.au
  %i.ha = ptrtoint ptr %i.gs to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gu, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !9916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !9913
  %i.hb = ptrtoint ptr %i.gu to i64
  %4 = insertelement <4 x i64> poison, i64 %i.hb, i64 0
  %5 = insertelement <4 x i64> %4, i64 %i.gp, i64 1
  %6 = insertelement <4 x i64> %5, i64 %i.ha, i64 2
  %7 = insertelement <4 x i64> %6, i64 %i.gl, i64 3
  br label %bb.cb

bb.bc:                                            ; preds = %bb.ap
  %i.hc = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !9913, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !9913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !9913
  call fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator27allocate_allocation_in_heap(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.p, ptr noalias nofree noundef nonnull align 16 dereferenceable(1120) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %3, ptr noundef nonnull %i.hd), !noalias !9930
  %i.he = load i32, ptr %i.p, align 8, !range !9, !noalias !9913, !noundef !5 ; 2 uses
  %.not162.i = icmp eq i32 %i.he, -1
  br i1 %.not162.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.sroa.499.sroa.0.0.copyload.i = load i32, ptr %.sroa.499.0..sroa_idx.i, align 4, !noalias !9913
  %.sroa.499.sroa.4.0..sroa.499.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %8 = load <4 x i64>, ptr %.sroa.499.sroa.4.0..sroa.499.0..sroa_idx.sroa_idx.i, align 8, !noalias !9931
  %.sroa.5100.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.45.sroa.10.0.copyload159 = load i64, ptr %.sroa.5100.0..sroa_idx.i98, align 8, !noalias !9931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !9913
  br label %bb.cb

bb.be:                                            ; preds = %bb.bc
  %i.hf = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.0190.0.copyload.i = load i64, ptr %i.hf, align 8, !noalias !9913
  %.sroa.4191.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.4191.0.copyload.i = load i64, ptr %.sroa.4191.0..sroa_idx.i, align 8, !noalias !9913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !9913
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bl, %bb.be
  %.sroa.6.0.i = phi i64 [ %.sroa.4191.0.copyload.i, %bb.be ], [ %i.hx, %bb.bl ] ; 3 uses
  %.sroa.0.0.i95 = phi i64 [ %.sroa.0190.0.copyload.i, %bb.be ], [ %i.hv, %bb.bl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !9913
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 1056
  %.val171.i = load i64, ptr %i.hg, align 16, !alias.scope !9911, !noalias !9916, !noundef !5 ; 2 uses
  call void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator13heap_allocate(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.l, ptr noalias nofree noundef nonnull align 16 dereferenceable(1120) %1, i64 noundef %.val171.i, i64 noundef %.val171.i), !noalias !9930
  %i.hh = load i32, ptr %i.l, align 8, !range !9, !noalias !9913, !noundef !5 ; 2 uses
  %.not165.i = icmp eq i32 %i.hh, -1
  br i1 %.not165.i, label %bb.bn, label %bb.bm

bb.bg:                                            ; preds = %_RINvMs8_NtCs8K4cjrcxBsw_6hir_ty5inferNtB6_15InferenceResult2ofNtCsileJQcQObtj_7hir_def13DefWithBodyIdEB8_.exit.i
  %.sroa.4116.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.4116.0.copyload.i = load i32, ptr %.sroa.4116.0..sroa_idx.i, align 4, !noalias !9913
  %.sroa.5117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %9 = load <4 x i64>, ptr %.sroa.5117.0..sroa_idx.i, align 8, !noalias !9931
  %.sroa.8120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.45.sroa.10.0.copyload158 = load i64, ptr %.sroa.8120.0..sroa_idx.i, align 8, !noalias !9931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9913
  br label %bb.cb

bb.bh:                                            ; preds = %_RINvMs8_NtCs8K4cjrcxBsw_6hir_ty5inferNtB6_15InferenceResult2ofNtCsileJQcQObtj_7hir_def13DefWithBodyIdEB8_.exit.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0106.0.copyload.i = load i64, ptr %i.hi, align 8, !noalias !9913
  %.sroa.4107.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4107.0.copyload.i = load i64, ptr %.sroa.4107.0..sroa_idx.i, align 8, !noalias !9913
  %.sroa.5108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.5108.0.copyload.i = load i64, ptr %.sroa.5108.0..sroa_idx.i, align 8, !noalias !9913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9913
  %i.hj = trunc nuw i64 %.sroa.0106.0.copyload.i to i1
  br i1 %i.hj, label %bb.bi, label %.split159.i

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !9913
  call void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator13heap_allocate(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noalias nofree noundef nonnull align 16 dereferenceable(1120) %1, i64 noundef %.sroa.4107.0.copyload.i, i64 noundef %.sroa.5108.0.copyload.i), !noalias !9916
  %i.hk = load i32, ptr %i.m, align 8, !range !9, !noalias !9913, !noundef !5 ; 2 uses
  %.not164.i = icmp eq i32 %i.hk, -1
  br i1 %.not164.i, label %bb.bl, label %bb.bk

.split159.i:                                      ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9932
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, -9223372036854775808) 21, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !9933
  %i.hl = load i64, ptr %i.d, align 8, !range !4, !noalias !9932, !noundef !5
  %i.hm = trunc nuw i64 %i.hl to i1
  %i.hn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ho = load i64, ptr %i.hn, align 8, !range !6, !noalias !9932, !noundef !5 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.hm, label %bb.bj, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8K4cjrcxBsw_6hir_ty.exit.i94, !prof !7

bb.bj:                                            ; preds = %.split159.i
  %i.hq = load i64, ptr %i.hp, align 8, !noalias !9932
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ho, i64 %i.hq) #45, !noalias !9933
  unreachable

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8K4cjrcxBsw_6hir_ty.exit.i94: ; preds = %.split159.i
  %i.hr = load ptr, ptr %i.hp, align 8, !noalias !9932, !nonnull !5, !noundef !5 ; 2 uses
  %i.hs = icmp ugt i64 %i.ho, 20
  call void @llvm.assume(i1 %i.hs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.hr, ptr noundef nonnull readonly align 1 dereferenceable(21) @451, i64 range(i64 0, -9223372036854775808) 21, i1 false), !noalias !9934
  %i.ht = ptrtoint ptr %i.hr to i64
  %10 = insertelement <4 x i64> <i64 poison, i64 poison, i64 21, i64 undef>, i64 %i.ho, i64 0
  %11 = insertelement <4 x i64> %10, i64 %i.ht, i64 1
  br label %bb.cb

bb.bk:                                            ; preds = %bb.bi
  %.sroa.4133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.sroa.4133.0.copyload.i = load i32, ptr %.sroa.4133.0..sroa_idx.i, align 4, !noalias !9913
  %.sroa.5134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %12 = load <4 x i64>, ptr %.sroa.5134.0..sroa_idx.i, align 8, !noalias !9931
  %.sroa.45.24..sroa.7136.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.45.sroa.10.0.copyload156 = load i64, ptr %.sroa.45.24..sroa.7136.0..sroa_idx.i.sroa_idx, align 8, !noalias !9931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9913
  br label %bb.cb

bb.bl:                                            ; preds = %bb.bi
  %i.hu = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.hv = load i64, ptr %i.hu, align 8, !range !10, !noalias !9913, !noundef !5
  %i.hw = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.hx = load i64, ptr %i.hw, align 8, !noalias !9913, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9913
  br label %bb.bf

bb.bm:                                            ; preds = %bb.bf
  %.sroa.4148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.4148.0.copyload.i = load i32, ptr %.sroa.4148.0..sroa_idx.i, align 4, !noalias !9913
  %.sroa.5149.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %13 = load <4 x i64>, ptr %.sroa.5149.0..sroa_idx.i, align 8, !noalias !9931
  %.sroa.45.24..sroa.7151.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.45.sroa.10.0.copyload157 = load i64, ptr %.sroa.45.24..sroa.7151.0..sroa_idx.i.sroa_idx, align 8, !noalias !9931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9913
  br label %bb.cb

bb.bn:                                            ; preds = %bb.bf
  %i.hy = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.hz = load i64, ptr %i.hy, align 8, !range !10, !noalias !9913, !noundef !5 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ib = load i64, ptr %i.ia, align 8, !noalias !9913, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !9913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !9913
  switch i64 %.sroa.0.0.i95, label %default.unreachable.i.i [
    i64 0, label %bb.bo
    i64 1, label %bb.bp
    i64 2, label %_RNvMs4_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_7Address8to_bytes.exit.i
  ]

default.unreachable.i.i:                          ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bn
  %i.ic = add i64 %.sroa.6.0.i, 1152921504606846976
  br label %_RNvMs4_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_7Address8to_bytes.exit.i

bb.bp:                                            ; preds = %bb.bn
  %i.id = add i64 %.sroa.6.0.i, 576460752303423488
  br label %_RNvMs4_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_7Address8to_bytes.exit.i

_RNvMs4_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_7Address8to_bytes.exit.i: ; preds = %bb.bp, %bb.bo, %bb.bn
  %.sroa.01.0.i.i = phi i64 [ %i.ic, %bb.bo ], [ %i.id, %bb.bp ], [ %.sroa.6.0.i, %bb.bn ]
  store i64 %.sroa.01.0.i.i, ptr %i.j, align 8, !noalias !9913
  call void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator12write_memory(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noalias nofree noundef nonnull align 16 dereferenceable(1120) %1, i64 noundef %i.hz, i64 noundef %i.ib, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 8), !noalias !9930
  %i.ie = load i32, ptr %i.k, align 8, !range !9, !noalias !9913, !noundef !5 ; 2 uses
  %.not166.i = icmp eq i32 %i.ie, -1
  br i1 %.not166.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_RNvMs4_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_7Address8to_bytes.exit.i
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.14.0.copyload = load i32, ptr %.sroa.14.0..sroa_idx, align 4, !noalias !9931
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %14 = load <4 x i64>, ptr %.sroa.19.0..sroa_idx, align 8, !noalias !9931
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.45.sroa.10.0.copyload = load i64, ptr %.sroa.45.0..sroa_idx, align 8, !noalias !9931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9913
  br label %bb.cb

bb.br:                                            ; preds = %_RNvMs4_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_7Address8to_bytes.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9913
  %i.if = call { i64, i64 } @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCsileJQcQObtj_7hir_def8StaticIdNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval7AddressNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertB1q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dw, i32 noundef range(i32 1, 0) %i.ds, i32 noundef %i.du, i64 noundef %i.hz, i64 noundef %i.ib), !noalias !9930 ; 0 uses
  br label %bb.cc

bb.bs:                                            ; preds = %bb.a, %bb.a
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %.sroa.0.0.val = load ptr, ptr %.sroa.0.0, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.val91 = load i32, ptr %i.ih, align 8, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.0.0.val, ptr %i.c, align 8, !noalias !9935
  %i.ii = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %.sroa.0.0.val91, ptr %i.ii, align 8, !noalias !9935
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val, i64 8
  %i.ik = load i64, ptr %i.ij, align 8, !noalias !9935, !noundef !5 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val, i64 16
  %i.im = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %exitcond.not.i.i181 = icmp eq i64 %i.ik, 0
  br i1 %exitcond.not.i.i181, label %._crit_edge, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldjNtNtCs8K4cjrcxBsw_6hir_ty3mir8PlaceRefuINtNtNtBa_3ops12control_flow11ControlFlowB10_ENCNvMs8_B12_B10_20iterate_over_parents0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB10_NCNvMs7_NtB12_4evalNtB42_9DropFlags12remove_place0E0E0B14_.exit.i.i

bb.bt:                                            ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldjNtNtCs8K4cjrcxBsw_6hir_ty3mir8PlaceRefuINtNtNtBa_3ops12control_flow11ControlFlowB10_ENCNvMs8_B12_B10_20iterate_over_parents0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB10_NCNvMs7_NtB12_4evalNtB42_9DropFlags12remove_place0E0E0B14_.exit.i.i
  %i.in = add i64 %i.io, 1                        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.in, %i.ik
  br i1 %exitcond.not.i.i, label %._crit_edge, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldjNtNtCs8K4cjrcxBsw_6hir_ty3mir8PlaceRefuINtNtNtBa_3ops12control_flow11ControlFlowB10_ENCNvMs8_B12_B10_20iterate_over_parents0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB10_NCNvMs7_NtB12_4evalNtB42_9DropFlags12remove_place0E0E0B14_.exit.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldjNtNtCs8K4cjrcxBsw_6hir_ty3mir8PlaceRefuINtNtNtBa_3ops12control_flow11ControlFlowB10_ENCNvMs8_B12_B10_20iterate_over_parents0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB10_NCNvMs7_NtB12_4evalNtB42_9DropFlags12remove_place0E0E0B14_.exit.i.i: ; preds = %bb.bs, %bb.bt
  %i.io = phi i64 [ %i.in, %bb.bt ], [ 0, %bb.bs ] ; 2 uses
  %i.ip = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtCs8K4cjrcxBsw_6hir_ty3mir17ProjectionStorageE21from_header_and_sliceB12_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.il, i64 noundef %i.io) #47, !noalias !9936 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9937
  store ptr %i.ip, ptr %i.a, align 8, !noalias !9937
  store i32 %.sroa.0.0.val91, ptr %i.im, align 8, !noalias !9937
  %i.iq = call noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCs8K4cjrcxBsw_6hir_ty3mir8PlaceRefuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12contains_keyBO_EBS_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ig, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !9938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9937
  br i1 %i.iq, label %bb.bu, label %bb.bt

bb.bu:                                            ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldjNtNtCs8K4cjrcxBsw_6hir_ty3mir8PlaceRefuINtNtNtBa_3ops12control_flow11ControlFlowB10_ENCNvMs8_B12_B10_20iterate_over_parents0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB10_NCNvMs7_NtB12_4evalNtB42_9DropFlags12remove_place0E0E0B14_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9935
  store ptr %i.ip, ptr %i.b, align 8, !noalias !9935
  %i.ir = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sroa.0.0.val91, ptr %i.ir, align 8, !noalias !9935
  %i.is = call noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCs8K4cjrcxBsw_6hir_ty3mir8PlaceRefuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6removeBO_EBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ig, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9935
  br label %_RNvMs7_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9DropFlags12remove_place.exit

._crit_edge:                                      ; preds = %bb.bt, %bb.bs
  %i.it = call noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCs8K4cjrcxBsw_6hir_ty3mir8PlaceRefuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6removeBO_EBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ig, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) ; 0 uses
  br label %_RNvMs7_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9DropFlags12remove_place.exit

_RNvMs7_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9DropFlags12remove_place.exit: ; preds = %bb.bu, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator10eval_place(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.aq, ptr noalias nofree noundef align 16 dereferenceable(1120) %1, ptr nonnull %.sroa.0.0.val, i32 %.sroa.0.0.val91, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %3)
  %i.iu = load i32, ptr %i.aq, align 8, !range !9, !noundef !5 ; 2 uses
  %.not88 = icmp eq i32 %i.iu, -1
  br i1 %.not88, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_RNvMs7_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9DropFlags12remove_place.exit
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.sroa.448.sroa.0.0.copyload = load i32, ptr %.sroa.448.0..sroa_idx, align 4
  %.sroa.448.sroa.4.0..sroa.448.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.448.sroa.6.0..sroa.448.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.448.sroa.6.0.copyload = load i64, ptr %.sroa.448.sroa.6.0..sroa.448.0..sroa_idx.sroa_idx, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.552.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.549.0..sroa_idx, i64 16, i1 false)
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.451.sroa.4.0..sroa.451.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.iv = load <2 x i64>, ptr %.sroa.448.sroa.4.0..sroa.448.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  store i32 %i.iu, ptr %0, align 8
  store i32 %.sroa.448.sroa.0.0.copyload, ptr %.sroa.451.0..sroa_idx, align 4
  store <2 x i64> %i.iv, ptr %.sroa.451.sroa.4.0..sroa.451.0..sroa_idx.sroa_idx, align 8
  %.sroa.451.sroa.6.0..sroa.451.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.448.sroa.6.0.copyload, ptr %.sroa.451.sroa.6.0..sroa.451.0..sroa_idx.sroa_idx, align 8
  br label %bb.cd

bb.bw:                                            ; preds = %_RNvMs7_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9DropFlags12remove_place.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.0126.0.copyload = load i64, ptr %i.iw, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ix = load <2 x i64>, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.cc, %bb.ca, %bb.by, %bb.bw
  %.sroa.0102.0 = phi i64 [ %.sroa.0126.0.copyload, %bb.bw ], [ %.sroa.0128.0.copyload, %bb.by ], [ %.sroa.0131.0.copyload, %bb.ca ], [ %.sroa.19.0, %bb.cc ]
  %i.iy = phi <2 x i64> [ %i.ix, %bb.bw ], [ %i.jc, %bb.by ], [ %i.jf, %bb.ca ], [ %i.ji, %bb.cc ]
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0102.0, ptr %i.iz, align 8
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.iy, ptr %.sroa.5106.0..sroa_idx, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.cd

_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator22allocate_const_in_heap.exit.thread: ; preds = %_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator22allocate_const_in_heap.exit, %_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator22allocate_const_in_heaps0_0Bb_.exit.i, %_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator22allocate_const_in_heaps_0Bb_.exit.i, %_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator22allocate_const_in_heap0Bb_.exit.i
  %.sroa.472.sroa.4.0.copyload = phi i64 [ %i.dk, %_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator22allocate_const_in_heaps0_0Bb_.exit.i ], [ %i.co, %_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator22allocate_const_in_heap0Bb_.exit.i ], [ %i.cz, %_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator22allocate_const_in_heaps_0Bb_.exit.i ], [ %.sroa.0128.0.copyload, %_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator22allocate_const_in_heap.exit ]
  %i.ja = phi i32 [ 0, %_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator22allocate_const_in_heaps0_0Bb_.exit.i ], [ 0, %_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator22allocate_const_in_heap0Bb_.exit.i ], [ 0, %_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator22allocate_const_in_heaps_0Bb_.exit.i ], [ %.pr, %_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator22allocate_const_in_heap.exit ]
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %.sroa.472.sroa.0.0.copyload = load i32, ptr %.sroa.472.0..sroa_idx, align 4
  %.sroa.472.sroa.5.0..sroa.472.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.576.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.573.0..sroa_idx, i64 16, i1 false)
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.475.sroa.4.0..sroa.475.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.475.sroa.5.0..sroa.475.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jb = load <2 x i64>, ptr %.sroa.472.sroa.5.0..sroa.472.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  store i32 %i.ja, ptr %0, align 8
  store i32 %.sroa.472.sroa.0.0.copyload, ptr %.sroa.475.0..sroa_idx, align 4
  store i64 %.sroa.472.sroa.4.0.copyload, ptr %.sroa.475.sroa.4.0..sroa.475.0..sroa_idx.sroa_idx, align 8
  store <2 x i64> %i.jb, ptr %.sroa.475.sroa.5.0..sroa.475.0..sroa_idx.sroa_idx, align 8
  br label %bb.cd

bb.by:                                            ; preds = %_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator22allocate_const_in_heap.exit
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.jc = load <2 x i64>, ptr %.sroa.4129.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.bx

bb.bz:                                            ; preds = %bb.aj
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %.sroa.481.sroa.0.0.copyload = load i32, ptr %.sroa.481.0..sroa_idx, align 4
  %.sroa.481.sroa.4.0..sroa.481.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.481.sroa.6.0..sroa.481.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.481.sroa.6.0.copyload = load i64, ptr %.sroa.481.sroa.6.0..sroa.481.0..sroa_idx.sroa_idx, align 8
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.585.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.582.0..sroa_idx, i64 16, i1 false)
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.484.sroa.4.0..sroa.484.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jd = load <2 x i64>, ptr %.sroa.481.sroa.4.0..sroa.481.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  store i32 %i.dq, ptr %0, align 8
  store i32 %.sroa.481.sroa.0.0.copyload, ptr %.sroa.484.0..sroa_idx, align 4
  store <2 x i64> %i.jd, ptr %.sroa.484.sroa.4.0..sroa.484.0..sroa_idx.sroa_idx, align 8
  %.sroa.484.sroa.6.0..sroa.484.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.481.sroa.6.0.copyload, ptr %.sroa.484.sroa.6.0..sroa.484.0..sroa_idx.sroa_idx, align 8
  br label %bb.cd

bb.ca:                                            ; preds = %bb.aj
  %i.je = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.0131.0.copyload = load i64, ptr %i.je, align 8
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.jf = load <2 x i64>, ptr %.sroa.4132.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.bx

bb.cb:                                            ; preds = %bb.bq, %bb.bm, %bb.bd, %_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator11eval_static0Bb_.exit.i, %bb.bk, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8K4cjrcxBsw_6hir_ty.exit.i94, %bb.bg
  %.sroa.19.0.ph = phi i64 [ %.sroa.45.sroa.10.0.copyload, %bb.bq ], [ %.sroa.45.sroa.10.0.copyload157, %bb.bm ], [ %.sroa.45.sroa.10.0.copyload159, %bb.bd ], [ undef, %_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator11eval_static0Bb_.exit.i ], [ %.sroa.45.sroa.10.0.copyload156, %bb.bk ], [ undef, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8K4cjrcxBsw_6hir_ty.exit.i94 ], [ %.sroa.45.sroa.10.0.copyload158, %bb.bg ]
  %.sroa.14.0.ph = phi i32 [ %.sroa.14.0.copyload, %bb.bq ], [ %.sroa.4148.0.copyload.i, %bb.bm ], [ %.sroa.499.sroa.0.0.copyload.i, %bb.bd ], [ undef, %_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator11eval_static0Bb_.exit.i ], [ %.sroa.4133.0.copyload.i, %bb.bk ], [ undef, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8K4cjrcxBsw_6hir_ty.exit.i94 ], [ %.sroa.4116.0.copyload.i, %bb.bg ]
  %.sroa.0.0134.ph = phi i32 [ %i.ie, %bb.bq ], [ %i.hh, %bb.bm ], [ %i.he, %bb.bd ], [ 0, %_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator11eval_static0Bb_.exit.i ], [ %i.hk, %bb.bk ], [ 8, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8K4cjrcxBsw_6hir_ty.exit.i94 ], [ %i.gd, %bb.bg ]
  %15 = phi <4 x i64> [ %14, %bb.bq ], [ %13, %bb.bm ], [ %8, %bb.bd ], [ %7, %_RNCNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB7_9Evaluator11eval_static0Bb_.exit.i ], [ %12, %bb.bk ], [ %11, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8K4cjrcxBsw_6hir_ty.exit.i94 ], [ %9, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i32 %.sroa.0.0134.ph, ptr %0, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.14.0.ph, ptr %.sroa.464.0..sroa_idx, align 4
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i64> %15, ptr %.sroa.565.0..sroa_idx, align 8
  %.sroa.767.sroa.4.0..sroa.767.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.19.0.ph, ptr %.sroa.767.sroa.4.0..sroa.767.0..sroa_idx.sroa_idx, align 8
  br label %bb.cd

bb.cc:                                            ; preds = %bb.br, %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCsileJQcQObtj_7hir_def8StaticIdNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval7AddressNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1r_.exit.i
  %.sroa.29.0 = phi i64 [ %i.ib, %bb.br ], [ %i.fe, %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCsileJQcQObtj_7hir_def8StaticIdNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval7AddressNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1r_.exit.i ]
  %.sroa.19.0 = phi i64 [ %i.hz, %bb.br ], [ %i.fc, %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCsileJQcQObtj_7hir_def8StaticIdNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval7AddressNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1r_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 1056
  %.val90 = load i64, ptr %i.jg, align 16, !noundef !5
  %i.jh = insertelement <2 x i64> poison, i64 %.sroa.29.0, i64 0
  %i.ji = insertelement <2 x i64> %i.jh, i64 %.val90, i64 1
  br label %bb.bx

bb.cd:                                            ; preds = %bb.bv, %_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator22allocate_const_in_heap.exit.thread, %bb.bz, %bb.cb, %bb.bx
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator12exec_closure(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(1120) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %4, ptr noundef nonnull %5, i64 %.0.val, i64 %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %6, i64 noundef range(i64 0, 288230376151711744) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %8, i32 noundef range(i32 0, 5) %9, i32 %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 13 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [80 x i8], align 8                ; 14 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 16               ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [56 x i8], align 8                ; 11 uses
  %i.q = alloca [56 x i8], align 8                ; 11 uses
  %i.r = alloca [12 x i8], align 4                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [48 x i8], align 8                ; 11 uses
  %i.w = alloca [48 x i8], align 8                ; 11 uses
  %i.x = alloca [48 x i8], align 8                ; 12 uses
  %i.y = alloca [48 x i8], align 8                ; 11 uses
  %i.z = alloca [104 x i8], align 8               ; 4 uses
  %i.aa = alloca [104 x i8], align 8              ; 4 uses
  %i.ab = alloca [104 x i8], align 8              ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [104 x i8], align 8              ; 10 uses
  %i.ag = alloca [104 x i8], align 8              ; 10 uses
  %i.ah = alloca [24 x i8], align 16              ; 5 uses
  %i.ai = alloca [48 x i8], align 8               ; 11 uses
  %.sroa.7336 = alloca [12 x i8], align 8         ; 5 uses
  %i.aj = alloca [104 x i8], align 8              ; 13 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [48 x i8], align 8               ; 11 uses
  %i.am = alloca [24 x i8], align 16              ; 13 uses
  %i.an = alloca [48 x i8], align 8               ; 11 uses
  %i.ao = alloca [24 x i8], align 16              ; 6 uses
  %i.ap = alloca [48 x i8], align 8               ; 11 uses
  %i.aq = alloca [48 x i8], align 8               ; 11 uses
  %i.ar = alloca [32 x i8], align 16              ; 5 uses
  %i.as = alloca [48 x i8], align 8               ; 11 uses
  %i.at = alloca [168 x i8], align 8              ; 9 uses
  %i.au = alloca [40 x i8], align 8               ; 8 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [32 x i8], align 8               ; 8 uses
  %i.ay = alloca [24 x i8], align 8               ; 5 uses
  %i.az = alloca [64 x i8], align 8               ; 5 uses
  %i.ba = alloca [12 x i8], align 4               ; 5 uses
  %i.bb = alloca [48 x i8], align 8               ; 4 uses
  %.sroa.7215 = alloca [96 x i8], align 8         ; 3 uses
  %i.bc = alloca [104 x i8], align 8              ; 11 uses
  %i.bd = alloca [32 x i8], align 8               ; 8 uses
  %i.be = alloca [24 x i8], align 8               ; 9 uses
  %i.bf = alloca [48 x i8], align 8               ; 12 uses
  %i.bg = alloca [104 x i8], align 8              ; 18 uses
  %i.bh = alloca [120 x i8], align 8              ; 29 uses
  %.sroa.78 = alloca [48 x i8], align 8           ; 6 uses
  %i.bi = alloca [104 x i8], align 8              ; 6 uses
  %i.bj = alloca [24 x i8], align 8               ; 7 uses
  %i.bk = alloca [104 x i8], align 8              ; 8 uses
  %i.bl = alloca [24 x i8], align 8               ; 7 uses
  %i.bm = alloca [24 x i8], align 8               ; 4 uses
  %i.bn = alloca [72 x i8], align 8               ; 14 uses
  %i.bo = alloca [64 x i8], align 8               ; 17 uses
  %i.bp = alloca [4 x i8], align 4                ; 8 uses
  %i.bq = alloca [48 x i8], align 8               ; 11 uses
  %i.br = alloca [24 x i8], align 8               ; 6 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %i.bt = alloca [48 x i8], align 8               ; 6 uses
  %i.bu = alloca [24 x i8], align 8               ; 4 uses
  %i.bv = alloca [32 x i8], align 8               ; 10 uses
  %i.bw = alloca [72 x i8], align 8               ; 10 uses
  %i.bx = alloca [48 x i8], align 8               ; 13 uses
  %i.by = alloca [48 x i8], align 8               ; 11 uses
  %i.bz = alloca [16 x i8], align 8               ; 5 uses
  %i.ca = alloca [32 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.cc = load ptr, ptr %i.cb, align 16, !nonnull !5, !noundef !5
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !5, !align !11, !noundef !5
  %i.cf = atomicrmw add ptr %5, i64 1 monotonic, align 8
  %i.cg = icmp slt i64 %i.cf, 0
  br i1 %i.cg, label %bb.b, label %_RNvMs1k_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_11GenericArgs5store.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #45
  unreachable

_RNvMs1k_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_11GenericArgs5store.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 560
  %.sroa.01.0.copyload = load ptr, ptr %i.ch, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.ci = load <2 x i32>, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10086)
  %i.cj = atomicrmw add ptr %.sroa.01.0.copyload, i64 1 monotonic, align 8, !noalias !10087
  %i.ck = icmp slt i64 %i.cj, 0
  br i1 %i.ck, label %bb.c, label %bb.d, !prof !7

bb.c:                                             ; preds = %_RNvMs1k_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_11GenericArgs5store.exit
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #45
          to label %.noexc unwind label %bb.hn

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_RNvMs1k_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_11GenericArgs5store.exit
  store ptr %.sroa.01.0.copyload, ptr %i.bz, align 8, !alias.scope !10086, !noalias !10088
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store <2 x i32> %i.ci, ptr %i.cl, align 8, !alias.scope !10086, !noalias !10088
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 288
  %i.cn = load ptr, ptr %i.cm, align 8, !invariant.load !5, !nonnull !5
  call void %i.cn(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ca, ptr noundef nonnull %i.cc, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  %i.co = load i32, ptr %i.ca, align 8, !range !63, !noundef !5
  %.not = icmp eq i32 %i.co, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.691.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 32, i1 false)
  %.sroa.642.8.insert.ext = zext i32 %3 to i64
  %i.cp = inttoptr i64 %.sroa.642.8.insert.ext to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 6, ptr %i.cq, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %.sroa.489.0..sroa_idx, align 4
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cp, ptr %.sroa.590.0..sroa_idx, align 8
  br label %bb.hm

bb.f:                                             ; preds = %bb.d
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !5, !align !11, !noundef !5 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 88 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !5
  %.not162 = icmp eq i64 %i.cu, 0
  br i1 %.not162, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !5, !noundef !5
  %i.cx = load i32, ptr %i.cw, align 4, !noundef !5
  %i.cy = zext i32 %i.cx to i64                   ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.da = load i64, ptr %i.cz, align 8, !noundef !5 ; 2 uses
  %i.db = icmp ugt i64 %i.da, %i.cy
  br i1 %i.db, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @453) #43
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !5, !noundef !5
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.cy
  %.val170 = load ptr, ptr %i.de, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.val170, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.df, align 8, !noalias !10089 ; 2 uses
  %i.dg = icmp ne i32 %.sroa.0.0.copyload.i, 27
  call void @llvm.assume(i1 %i.dg)
  %i.dh = icmp eq i32 %.sroa.0.0.copyload.i, 14
  br i1 %i.dh, label %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty12as_reference.exit, label %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty12as_reference.exit.thread

_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty12as_reference.exit: ; preds = %bb.i
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val170, i64 32
  %.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !10089
  %.not163 = icmp eq i8 %.sroa.6.0.copyload.i, 2
  br i1 %.not163, label %_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty12as_reference.exit.thread, label %bb.k

end_hunk_1
