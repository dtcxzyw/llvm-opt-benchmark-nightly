Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-40144d11a587a91c.diesel.e75b8a7709879cf2-cgu.10?download=true
inline.NumInlined: 294
inline.NumDeleted: 125
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtCsjRvGck33osM_6diesel5mysql5valueNtB2_10MysqlValue13numeric_value:bb.a
  store ptr @4, ptr %i.ax, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.ai

bb.af:                                            ; preds = %bb.h
  %i.ay = icmp eq i64 %.val, 8
  br i1 %i.ay, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.az = load ptr, ptr %1, align 8, !nonnull !15, !noundef !15
  %.sroa.076.0.copyload = load i64, ptr %i.az, align 1
  br label %bb.n

bb.ah:                                            ; preds = %bb.af
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @23, ptr %i.bb, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.b, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, %bb.o, %bb.s, %bb.w, %bb.z, %bb.aa, %bb.ad, %bb.ae, %bb.ah, %bb.n
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc ptr @_RNvMNtNtCsjRvGck33osM_6diesel5mysql5valueNtB2_10MysqlValue16too_short_buffer(i64 %.8.val, i64 noundef range(i64 2, 49) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 4, 10) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.e, align 8
  store ptr %1, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.f, align 8
  %i.g = icmp ult i64 %.8.val, %0
  br i1 %i.g, label %.split, label %bb.f

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.8.val, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsjRvGck33osM_6diesel, ptr %.sroa.43.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.h, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.i, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @27, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !217
  %i.j = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !217 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel.exit, !prof !8

bb.b:                                             ; preds = %.split
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #26
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #27
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.l

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel.exit: ; preds = %.split
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel.exit
  %.sroa.0.0 = phi ptr [ %i.j, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel.exit ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc ptr @_RNvMNtNtCsjRvGck33osM_6diesel5mysql5valueNtB2_10MysqlValue17invalid_type_code(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 6, 10) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsjRvGck33osM_6diesel, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsd_NtNtCsjRvGck33osM_6diesel5mysql7backendNtB5_9MysqlTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @28, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !220
  %i.g = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !220 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.a, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel.exit, !prof !8

bb.a:                                             ; preds = %.split
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #26
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #27
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.i

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjRvGck33osM_6diesel.exit: ; preds = %.split
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB5_14BoundStatement12bind_buffers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !15, !noundef !15 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !15 ; 8 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.a
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.j = icmp ult i64 %i.h, 4
  br i1 %i.j, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.h, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.z, %.preheader.i ] ; 5 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.y, %.preheader.i ]
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.04.0.i.i
  %.val.i.i = load i32, ptr %i.k, align 8, !range !143, !alias.scope !223, !noundef !15
  %switch.i.i.i.i.i = icmp samesign ult i32 %.val.i.i, 4
  %i.l = zext i1 %switch.i.i.i.i.i to i64
  %i.m = add i64 %.sroa.02.0.i.i, %i.l
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.04.0.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.val.i.i.1 = load i32, ptr %i.o, align 8, !range !143, !alias.scope !223, !noundef !15
  %switch.i.i.i.i.i.1 = icmp samesign ult i32 %.val.i.i.1, 4
  %i.p = zext i1 %switch.i.i.i.i.i.1 to i64
  %i.q = add i64 %i.m, %i.p
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.04.0.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %.val.i.i.2 = load i32, ptr %i.s, align 8, !range !143, !alias.scope !223, !noundef !15
  %switch.i.i.i.i.i.2 = icmp samesign ult i32 %.val.i.i.2, 4
  %i.t = zext i1 %switch.i.i.i.i.i.2 to i64
  %i.u = add i64 %i.q, %i.t
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.04.0.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %.val.i.i.3 = load i32, ptr %i.w, align 8, !range !143, !alias.scope !223, !noundef !15
  %switch.i.i.i.i.i.3 = icmp samesign ult i32 %.val.i.i.3, 4
  %i.x = zext i1 %switch.i.i.i.i.i.3 to i64
  %i.y = add i64 %i.u, %i.x                       ; 3 uses
  %i.z = add nuw nsw i64 %.sroa.04.0.i.i, 4       ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.preheader.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.preheader
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.z, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.y, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod76 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod76)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.sroa.04.0.i.i.epil = phi i64 [ %i.ad, %.preheader.i.epil ], [ %.sroa.04.0.i.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.epil = phi i64 [ %i.ac, %.preheader.i.epil ], [ %.sroa.02.0.i.i.epil.init, %.preheader.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.04.0.i.i.epil
  %.val.i.i.epil = load i32, ptr %i.aa, align 8, !range !143, !alias.scope !223, !noundef !15
  %switch.i.i.i.i.i.epil = icmp samesign ult i32 %.val.i.i.epil, 4
  %i.ab = zext i1 %switch.i.i.i.i.i.epil to i64
  %i.ac = add i64 %.sroa.02.0.i.i.epil, %i.ab     ; 2 uses
  %i.ad = add nuw i64 %.sroa.04.0.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader.i.epil, !llvm.loop !226

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.epil, %bb.a
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.a ], [ %i.y, %.loopexit.loopexit.unr-lcssa ], [ %i.ac, %.preheader.i.epil ] ; 2 uses
  %i.ae = icmp ule i64 %.sroa.0.0.i.i, %i.h
  tail call void @llvm.assume(i1 %i.ae)
  invoke void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTlINtNtCscI6d9CVNmLh_4core6option6OptionINtNtNtBL_3ptr8non_null7NonNullShEEEE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.sroa.0.0.i.i)
          to label %bb.b unwind label %bb.s

bb.b:                                             ; preds = %.loopexit
  %.sroa.040.0.copyload = load i64, ptr %2, align 8
  %i.af = icmp ult i64 %i.h, 288230376151711744
  tail call void @llvm.assume(i1 %i.af)
  %.idx = shl nuw nsw i64 %i.h, 5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.f, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.040.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr %i.ag, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  store i32 2, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !228, !noalias !233
  %i.ah = icmp eq i64 %i.h, 0
  br i1 %i.ah, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_3ops5range9RangeFromlEINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB2A_7backend10SqliteTypeEEEEB2C_.exit36, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB13_7backend10SqliteTypeEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.lr.ph

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB13_7backend10SqliteTypeEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.lr.ph: ; preds = %bb.b
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB13_7backend10SqliteTypeEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB15_.exit.i

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB13_7backend10SqliteTypeEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB15_.exit.i: ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB13_7backend10SqliteTypeEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.lr.ph, %bb.n
  %i.an = phi ptr [ %i.f, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB13_7backend10SqliteTypeEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.lr.ph ], [ %i.bg, %bb.n ] ; 4 uses
  %i.ao = phi i32 [ 1, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB13_7backend10SqliteTypeEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.lr.ph ], [ %i.bd, %bb.n ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr %i.ap, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !240, !noalias !241
  %.sroa.0.0.copyload7.i = load i32, ptr %i.an, align 8, !noalias !243 ; 3 uses
  %.not.i = icmp eq i32 %.sroa.0.0.copyload7.i, -1
  br i1 %.not.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_3ops5range9RangeFromlEINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB2A_7backend10SqliteTypeEEEEB2C_.exit36, label %bb.d

bb.c:                                             ; preds = %bb.p, %bb.k, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB13_7backend10SqliteTypeEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB15_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %.thread unwind label %bb.r

bb.d:                                             ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB13_7backend10SqliteTypeEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB15_.exit.i
  %.sroa.7.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.8..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.0..sroa_idx8.i, i64 20, i1 false)
  %.sroa.11.12..sroa.7.0..sroa_idx8.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.11.12.copyload = load i8, ptr %.sroa.11.12..sroa.7.0..sroa_idx8.i.sroa_idx, align 8, !noalias !235
  store i32 %.sroa.0.0.copyload7.i, ptr %i.b, align 8
  %switch.and = and i32 %.sroa.0.0.copyload7.i, -3
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ar = load i64, ptr %1, align 8, !range !144, !noundef !15
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.f, label %bb.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_3ops5range9RangeFromlEINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB2A_7backend10SqliteTypeEEEEB2C_.exit36: ; preds = %bb.n, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB13_7backend10SqliteTypeEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB15_.exit.i, %bb.b
  call void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB13_7backend10SqliteTypeEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB15_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_3ops5range9RangeFromlEINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB2A_7backend10SqliteTypeEEEEB2C_.exit37, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_3ops5range9RangeFromlEINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB2A_7backend10SqliteTypeEEEEB2C_.exit36
  ret void

bb.f:                                             ; preds = %bb.d
  %i.at = load ptr, ptr %i.ai, align 8, !nonnull !15, !align !134, !noundef !15
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %.sroa.09.0 = phi ptr [ %i.at, %bb.f ], [ %i.ai, %bb.d ]
  %.sroa.09.0.val = load ptr, ptr %.sroa.09.0, align 8
  invoke fastcc void @_RNvMs_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB4_9Statement4bind(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, ptr %.sroa.09.0.val, i8 noundef %.sroa.11.12.copyload, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.b, i32 noundef %i.ao)
          to label %bb.h unwind label %bb.c

bb.h:                                             ; preds = %bb.g
  %i.au = load i64, ptr %i.a, align 8, !range !14, !noundef !15 ; 2 uses
  %.not33 = icmp eq i64 %i.au, -1
  %i.av = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.aw = load i64, ptr %i.ak, align 8            ; 2 uses
  br i1 %.not33, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_3ops5range9RangeFromlEINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB2A_7backend10SqliteTypeEEEEB2C_.exit37

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_3ops5range9RangeFromlEINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB2A_7backend10SqliteTypeEEEEB2C_.exit37: ; preds = %bb.h
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.626.0.copyload = load i64, ptr %.sroa.626.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.au, ptr %0, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aw, ptr %.sroa.529.0..sroa_idx, align 8
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.626.0.copyload, ptr %.sroa.630.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB13_7backend10SqliteTypeEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB15_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not34 = icmp eq ptr %i.av, null
  br i1 %.not34, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.ax = load i64, ptr %i.al, align 8, !alias.scope !244, !noalias !247, !noundef !15 ; 3 uses
  %i.ay = load i64, ptr %i.d, align 8, !range !87, !alias.scope !244, !noalias !247, !noundef !15
  %i.az = icmp eq i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTlINtNtCscI6d9CVNmLh_4core6option6OptionINtNtNtBT_3ptr8non_null7NonNullShEEEE8grow_oneCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.m unwind label %bb.c

bb.l:                                             ; preds = %bb.i
  br i1 %switch.selectcmp, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.k
  %i.ba = load ptr, ptr %i.am, align 8, !alias.scope !244, !noalias !247, !nonnull !15, !noundef !15
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.ax ; 3 uses
  store i32 %i.ao, ptr %i.bb, align 8, !noalias !244
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.av, ptr %.sroa.448.0..sroa_idx, align 8, !noalias !244
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %i.aw, ptr %.sroa.549.0..sroa_idx, align 8, !noalias !244
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.q
  %.sink70 = phi i64 [ %i.bi, %bb.q ], [ %i.ax, %bb.m ]
  %i.bc = add i64 %.sink70, 1
  store i64 %i.bc, ptr %i.al, align 8, !noalias !15
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bd = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !249, !noalias !233, !noundef !15 ; 2 uses
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !253, !noalias !233
  %i.bf = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !254, !noalias !241, !nonnull !15, !noundef !15
  %i.bg = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !254, !noalias !241, !nonnull !15, !noundef !15 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.bf
  br i1 %i.bh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_3ops5range9RangeFromlEINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB2A_7backend10SqliteTypeEEEEB2C_.exit36, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtB13_7backend10SqliteTypeEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB15_.exit.i

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.bi = load i64, ptr %i.al, align 8, !alias.scope !256, !noalias !259, !noundef !15 ; 3 uses
  %i.bj = load i64, ptr %i.d, align 8, !range !87, !alias.scope !256, !noalias !259, !noundef !15
  %i.bk = icmp eq i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTlINtNtCscI6d9CVNmLh_4core6option6OptionINtNtNtBT_3ptr8non_null7NonNullShEEEE8grow_oneCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.q unwind label %bb.c

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bl = load ptr, ptr %i.am, align 8, !alias.scope !256, !noalias !259, !nonnull !15, !noundef !15
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.bi ; 2 uses
  store i32 %i.ao, ptr %i.bm, align 8, !noalias !256
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr null, ptr %.sroa.452.0..sroa_idx, align 8, !noalias !256
end_hunk_0
