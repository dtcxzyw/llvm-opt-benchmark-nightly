Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 122
loop-unroll.NumUnrolled: 157
begin_hunk_0_@_RNvMsc_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB5_26DecodeSparseStructuralTask24validate_variable_buffer:bb.a
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
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull @2180, ptr noundef nonnull %i.q), !noalias !48195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.04.0.copyload = load i64, ptr %i.s, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.68.0.copyload = load i64, ptr %.sroa.68.0..sroa_idx, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !48196
  %i.ai = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !48196 ; 5 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.l, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit, !prof !104

bb.l:                                             ; preds = %.split344
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc unwind label %bb.m, !noalias !48196

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = icmp eq i64 %.sroa.04.0.copyload, 0
  br i1 %i.al, label %common.resume, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.04.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !48197
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
  %i.am = add i64 %.sroa.0242.045, 1
  %i.an = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0242.045, i64 %i.v) ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 0       ; 3 uses
  %i.ap = extractvalue { i64, i1 } %i.an, 1
  br i1 %i.ap, label %.loopexit, label %bb.p, !prof !108

bb.o:                                             ; preds = %bb.c, %bb.am, %.loopexit50
  ret void

bb.p:                                             ; preds = %.preheader
  %i.aq = add i64 %i.ao, %i.v                     ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ao
  br i1 %i.ar, label %.loopexit47, label %bb.q, !prof !108

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
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !48198
  %i.as = tail call noundef dereferenceable_or_null(41) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 41, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !48198 ; 4 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.loopexit48
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 41) #66, !noalias !48199
  unreachable

bb.s:                                             ; preds = %.loopexit48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.as, ptr noundef nonnull align 1 dereferenceable(41) @938, i64 41, i1 false), !noalias !48199
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !48200
  %i.au = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !48200 ; 5 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.t, label %_RNCNvMsc_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_26DecodeSparseStructuralTask24validate_variable_buffers2_0Bf_.exit, !prof !104

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc.i unwind label %bb.u, !noalias !48200

.noexc.i:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef 41, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !48201
  br label %common.resume

_RNCNvMsc_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_26DecodeSparseStructuralTask24validate_variable_buffers2_0Bf_.exit: ; preds = %bb.s
  store i64 41, ptr %i.au, align 8, !noalias !48199
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.as, ptr %.sroa.5.0..sroa_idx4.i, align 8, !noalias !48199
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 41, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !48199
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
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @2178, ptr noundef nonnull %i.n), !noalias !48202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.014.0.copyload = load i64, ptr %i.o, align 8 ; 3 uses
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.516.0.copyload = load ptr, ptr %.sroa.516.0..sroa_idx, align 8 ; 3 uses
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.619.0.copyload = load i64, ptr %.sroa.619.0..sroa_idx, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !48203
  %i.ay = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !48203 ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.w, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit355, !prof !104

bb.w:                                             ; preds = %.split340
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc363 unwind label %bb.x, !noalias !48203

.noexc363:                                        ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = icmp eq i64 %.sroa.014.0.copyload, 0
  br i1 %i.bb, label %common.resume, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.516.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.516.0.copyload, i64 noundef %.sroa.014.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !48204
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
  br i1 %exitcond.not, label %.loopexit50, label %.preheader, !llvm.loop !48173

.loopexit49:                                      ; preds = %bb.ad
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !48205
  %i.bg = tail call noundef dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !48205 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.loopexit49
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 56) #66
  unreachable

bb.ag:                                            ; preds = %.loopexit49
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.bg, ptr noundef nonnull align 1 dereferenceable(56) @2174, i64 56, i1 false)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !48206
  %i.bi = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !48206 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.ah, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit357, !prof !104

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc368 unwind label %bb.ai, !noalias !48206

.noexc368:                                        ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.bk = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bg, i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !48207
  br label %common.resume

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit357: ; preds = %bb.ag
  store i64 56, ptr %i.bi, align 8
  br label %bb.ab

.split:                                           ; preds = %bb.aa, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.16.val, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.p, ptr %i.k, align 8
  %.sroa.4316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4316.0..sroa_idx, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.t, ptr %i.bl, align 8
  %.sroa.4320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4320.0..sroa_idx, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.l, ptr %i.bm, align 8
  %.sroa.4324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4324.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull @2176, ptr noundef nonnull %i.k), !noalias !48208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.sroa.022.0.copyload = load i64, ptr %i.m, align 8 ; 3 uses
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.524.0.copyload = load ptr, ptr %.sroa.524.0..sroa_idx, align 8 ; 3 uses
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.627.0.copyload = load i64, ptr %.sroa.627.0..sroa_idx, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !48209
  %i.bn = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !48209 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.aj, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit356, !prof !104

bb.aj:                                            ; preds = %.split
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc373 unwind label %bb.ak, !noalias !48209

.noexc373:                                        ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = icmp eq i64 %.sroa.022.0.copyload, 0
  br i1 %i.bq, label %common.resume, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.524.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.524.0.copyload, i64 noundef %.sroa.022.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !48210
  br label %common.resume

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit356: ; preds = %.split
  store i64 %.sroa.022.0.copyload, ptr %i.bn, align 8
  br label %bb.ab

bb.am:                                            ; preds = %.loopexit, %bb.ab, %_RNCNvMsc_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB7_26DecodeSparseStructuralTask24validate_variable_buffers2_0Bf_.exit, %.loopexit47, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types10UInt64TypeEE3newCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(96) %0) unnamed_addr #2 personality ptr @rust_eh_personality !guid !48213 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 96, i1 false)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !48214
  %i.d = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !48214 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt64TypeEEE3newCsjjpCCFGI3ul_14lance_encoding.exit, !prof !104

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #66
          to label %.noexc unwind label %bb.c, !noalias !48214

.noexc:                                           ; preds = %bb.b
  unreachable
end_hunk_0
