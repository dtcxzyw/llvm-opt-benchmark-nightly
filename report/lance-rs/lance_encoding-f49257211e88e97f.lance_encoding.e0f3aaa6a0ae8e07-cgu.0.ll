Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 122
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_RNvMsc_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB5_26DecodeSparseStructuralTask21validate_fixed_buffer:bb.a
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.v

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %.split
  store i64 %.sroa.06.0.copyload, ptr %i.t, align 8
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx8, align 8
  %.sroa.610.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %.sroa.610.0.copyload, ptr %.sroa.610.0..sroa_idx11, align 8
  store i8 0, ptr %0, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @83, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @2157, ptr %.sroa.613.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsc_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB5_26DecodeSparseStructuralTask24validate_variable_buffer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr nofree readonly captures(none) %.8.val, i64 %.16.val, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !47333 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = alloca [56 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = alloca [56 x i8], align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = alloca [56 x i8], align 8                ; 5 uses
  %i.k = alloca [48 x i8], align 8                ; 9 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 8 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 6 uses
  %i.u = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.u, align 8
  %i.v = lshr i64 %2, 3                           ; 6 uses
  %i.w = icmp eq i64 %1, -1
  br i1 %i.w, label %bb.c, label %bb.b, !prof !106

bb.b:                                             ; preds = %bb.a
  %i.x = add nuw i64 %1, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.y = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.x, i64 %i.v) ; 2 uses
  %i.z = extractvalue { i64, i1 } %i.y, 0         ; 4 uses
  %i.aa = extractvalue { i64, i1 } %i.y, 1
  br i1 %i.aa, label %bb.k, label %bb.d, !prof !106

bb.c:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  call fastcc void @_RNCNvMsc_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_26DecodeSparseStructuralTask24validate_variable_buffer0Bf_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.j)
  %.sroa.010.0.copyload = load i8, ptr %i.j, align 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.614.0.copyload = load i64, ptr %.sroa.614.0..sroa_idx, align 8
  store i8 %.sroa.010.0.copyload, ptr %0, align 8
  %.sroa.4217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4217.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %i.ac, i64 7, i1 false)
  %.sroa.5218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.614.0.copyload, ptr %.sroa.5218.0..sroa_idx, align 8
  %.sroa.6219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6219.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false)
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  store i64 %i.z, ptr %i.t, align 8
  %i.ad = icmp ult i64 %.16.val, %i.z
  br i1 %i.ad, label %.split344, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.peel = icmp ugt i64 %i.v, %.16.val
  br i1 %.not.peel, label %.loopexit48, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  switch i64 %i.v, label %.split340 [
    i64 4, label %bb.h
    i64 8, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %.sroa.0287.0.copyload.peel = load i64, ptr %.8.val, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %.sroa.0288.0.copyload.peel = load i32, ptr %.8.val, align 1
  %i.ae = zext i32 %.sroa.0288.0.copyload.peel to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %storemerge.peel = phi i64 [ %.sroa.0287.0.copyload.peel, %bb.g ], [ %i.ae, %bb.h ] ; 4 uses
  store i64 %storemerge.peel, ptr %i.p, align 8
  %i.af = icmp ult i64 %storemerge.peel, %i.z
  %i.ag = icmp ugt i64 %storemerge.peel, %.16.val
  %or.cond.peel = or i1 %i.af, %i.ag
  br i1 %or.cond.peel, label %.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %exitcond.peel.not = icmp eq i64 %1, 0
  br i1 %exitcond.peel.not, label %.loopexit50, label %.preheader

bb.k:                                             ; preds = %bb.b
  call fastcc void @_RNCNvMsc_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_26DecodeSparseStructuralTask24validate_variable_buffers_0Bf_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.g)
  %.sroa.033.0.copyload = load i8, ptr %i.g, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.637.0.copyload = load i64, ptr %.sroa.637.0..sroa_idx, align 8
  store i8 %.sroa.033.0.copyload, ptr %0, align 8
  %.sroa.4229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4229.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %i.h, i64 7, i1 false)
  %.sroa.5230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.637.0.copyload, ptr %.sroa.5230.0..sroa_idx, align 8
  %.sroa.6231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6231.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  br label %bb.am

.split344:                                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 %.16.val, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.r, ptr %i.q, align 8
  %.sroa.4235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4235.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.t, ptr %i.ah, align 8
  %.sroa.4239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4239.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull @2180, ptr noundef nonnull %i.q), !noalias !47334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.04.0.copyload = load i64, ptr %i.s, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.68.0.copyload = load i64, ptr %.sroa.68.0..sroa_idx, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !47335
  %i.ai = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !47335 ; 5 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.l, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit, !prof !102

bb.l:                                             ; preds = %.split344
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = icmp eq i64 %.sroa.04.0.copyload, 0
  br i1 %i.al, label %common.resume, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.04.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !47336
  br label %common.resume

common.resume:                                    ; preds = %bb.ak, %bb.al, %bb.x, %bb.y, %bb.m, %bb.n, %bb.ai, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.x ], [ %i.aw, %bb.u ], [ %i.ak, %bb.m ], [ %i.bk, %bb.ai ], [ %i.ak, %bb.n ], [ %i.ba, %bb.y ], [ %i.bp, %bb.al ], [ %i.bp, %bb.ak ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %.split344
  store i64 %.sroa.04.0.copyload, ptr %i.ai, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx6, align 8
  %.sroa.68.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %.sroa.68.0.copyload, ptr %.sroa.68.0..sroa_idx9, align 8
  store i8 0, ptr %0, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @83, ptr %.sroa.555.0..sroa_idx, align 8
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @2181, ptr %.sroa.656.0..sroa_idx, align 8
  br label %bb.am

.loopexit50:                                      ; preds = %bb.ae, %bb.j
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.o

.preheader:                                       ; preds = %bb.j, %bb.ae
  %.sroa.0242.045 = phi i64 [ %i.am, %bb.ae ], [ 1, %bb.j ] ; 3 uses
  %.sroa.3206.044 = phi i64 [ %storemerge, %bb.ae ], [ %storemerge.peel, %bb.j ]
  %i.am = add nuw i64 %.sroa.0242.045, 1
  %i.an = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0242.045, i64 %i.v) ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 0       ; 3 uses
  %i.ap = extractvalue { i64, i1 } %i.an, 1
  br i1 %i.ap, label %.loopexit, label %bb.p, !prof !106

bb.o:                                             ; preds = %bb.c, %bb.am, %.loopexit50
  ret void

bb.p:                                             ; preds = %.preheader
  %i.aq = add i64 %i.ao, %i.v                     ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ao
  br i1 %i.ar, label %.loopexit47, label %bb.q, !prof !106

.loopexit:                                        ; preds = %.preheader
  call fastcc void @_RNCNvMsc_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_26DecodeSparseStructuralTask24validate_variable_buffers0_0Bf_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.d)
  %.sroa.072.0.copyload = load i8, ptr %i.d, align 8
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.676.0.copyload = load i64, ptr %.sroa.676.0..sroa_idx, align 8
  store i8 %.sroa.072.0.copyload, ptr %0, align 8
  %.sroa.4253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4253.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %i.e, i64 7, i1 false)
  %.sroa.5254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.676.0.copyload, ptr %.sroa.5254.0..sroa_idx, align 8
  %.sroa.6255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6255.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  br label %bb.am

bb.q:                                             ; preds = %bb.p
  %.not = icmp ugt i64 %i.aq, %.16.val
  br i1 %.not, label %.loopexit48, label %bb.v

.loopexit47:                                      ; preds = %bb.p
  call fastcc void @_RNCNvMsc_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_26DecodeSparseStructuralTask24validate_variable_buffers1_0Bf_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.a)
  %.sroa.096.0.copyload = load i8, ptr %i.a, align 8
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6100.0.copyload = load i64, ptr %.sroa.6100.0..sroa_idx, align 8
  store i8 %.sroa.096.0.copyload, ptr %0, align 8
  %.sroa.4265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4265.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %i.b, i64 7, i1 false)
  %.sroa.5266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6100.0.copyload, ptr %.sroa.5266.0..sroa_idx, align 8
  %.sroa.6267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6267.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  br label %bb.am

.loopexit48:                                      ; preds = %bb.q, %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !47337
  %i.as = tail call noundef dereferenceable_or_null(41) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 41, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !47337 ; 4 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.loopexit48
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 41) #66, !noalias !47338
  unreachable

bb.s:                                             ; preds = %.loopexit48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.as, ptr noundef nonnull align 1 dereferenceable(41) @938, i64 41, i1 false), !noalias !47338
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !47339
  %i.au = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !47339 ; 5 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.t, label %_RNCNvMsc_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_26DecodeSparseStructuralTask24validate_variable_buffers2_0Bf_.exit, !prof !102

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc.i unwind label %bb.u, !noalias !47338

.noexc.i:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef 41, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !47340
  br label %common.resume

_RNCNvMsc_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_26DecodeSparseStructuralTask24validate_variable_buffers2_0Bf_.exit: ; preds = %bb.s
  store i64 41, ptr %i.au, align 8, !noalias !47338
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.as, ptr %.sroa.5.0..sroa_idx4.i, align 8, !noalias !47338
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 41, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !47338
  store i8 0, ptr %0, align 8
  %.sroa.5280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %.sroa.5280.0..sroa_idx, align 8
  %.sroa.6281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 ptrtoint (ptr @83 to i64), ptr %.sroa.6281.0..sroa_idx, align 8
  %.sroa.7282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @939, ptr %.sroa.7282.0..sroa_idx, align 8
  br label %bb.am

bb.v:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.ao ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  switch i64 %i.v, label %.split340 [
    i64 4, label %bb.z
    i64 8, label %bb.ac
  ]

.split340:                                        ; preds = %bb.v, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.u, ptr %i.n, align 8
  %.sroa.4286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4286.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @2178, ptr noundef nonnull %i.n), !noalias !47341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.014.0.copyload = load i64, ptr %i.o, align 8 ; 3 uses
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.516.0.copyload = load ptr, ptr %.sroa.516.0..sroa_idx, align 8 ; 3 uses
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.619.0.copyload = load i64, ptr %.sroa.619.0..sroa_idx, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !47342
  %i.ay = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !47342 ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.w, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit355, !prof !102

bb.w:                                             ; preds = %.split340
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc363 unwind label %bb.x

.noexc363:                                        ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = icmp eq i64 %.sroa.014.0.copyload, 0
  br i1 %i.bb, label %common.resume, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.516.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.516.0.copyload, i64 noundef %.sroa.014.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !47343
  br label %common.resume

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit355: ; preds = %.split340
  store i64 %.sroa.014.0.copyload, ptr %i.ay, align 8
  br label %bb.ab

bb.z:                                             ; preds = %bb.v
  %.sroa.0288.0.copyload = load i32, ptr %i.ax, align 1
  %i.bc = zext i32 %.sroa.0288.0.copyload to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %bb.z
  %storemerge = phi i64 [ %.sroa.0287.0.copyload, %bb.ac ], [ %i.bc, %bb.z ] ; 5 uses
  store i64 %storemerge, ptr %i.p, align 8
  %i.bd = icmp ult i64 %storemerge, %i.z
  %i.be = icmp ugt i64 %storemerge, %.16.val
  %or.cond = or i1 %i.bd, %i.be
  br i1 %or.cond, label %.split, label %bb.ad

bb.ab:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit355, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit356, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit357
  %.sink67 = phi ptr [ %i.ay, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit355 ], [ %i.bn, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit356 ], [ %i.bi, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit357 ] ; 3 uses
  %.sroa.516.0.copyload.sink = phi ptr [ %.sroa.516.0.copyload, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit355 ], [ %.sroa.524.0.copyload, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit356 ], [ %i.bg, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit357 ]
  %.sroa.619.0.copyload.sink = phi i64 [ %.sroa.619.0.copyload, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit355 ], [ %.sroa.627.0.copyload, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit356 ], [ 56, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit357 ]
  %.sink = phi ptr [ @2179, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit355 ], [ @2177, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit356 ], [ @2175, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit357 ]
  %.sroa.516.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %.sink67, i64 8
  store ptr %.sroa.516.0.copyload.sink, ptr %.sroa.516.0..sroa_idx17, align 8
  %.sroa.619.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %.sink67, i64 16
  store i64 %.sroa.619.0.copyload.sink, ptr %.sroa.619.0..sroa_idx20, align 8
  store i8 0, ptr %0, align 8
  %.sroa.4189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink67, ptr %.sroa.4189.0..sroa_idx, align 8
  %.sroa.5190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @83, ptr %.sroa.5190.0..sroa_idx, align 8
  %.sroa.6191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink, ptr %.sroa.6191.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.am

bb.ac:                                            ; preds = %bb.v
  %.sroa.0287.0.copyload = load i64, ptr %i.ax, align 1
  br label %bb.aa

bb.ad:                                            ; preds = %bb.aa
  %i.bf = icmp ult i64 %storemerge, %.sroa.3206.044
  br i1 %i.bf, label %.loopexit49, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %exitcond.not = icmp eq i64 %.sroa.0242.045, %1
  br i1 %exitcond.not, label %.loopexit50, label %.preheader, !llvm.loop !47312

.loopexit49:                                      ; preds = %bb.ad
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !47344
  %i.bg = tail call noundef dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !47344 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.loopexit49
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 56) #66
  unreachable

bb.ag:                                            ; preds = %.loopexit49
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.bg, ptr noundef nonnull align 1 dereferenceable(56) @2174, i64 56, i1 false)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !47345
  %i.bi = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !47345 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.ah, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit357, !prof !102

bb.ah:                                            ; preds = %bb.ag
end_hunk_0
