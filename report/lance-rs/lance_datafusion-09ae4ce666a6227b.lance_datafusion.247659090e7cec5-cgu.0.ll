Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datafusion-09ae4ce666a6227b.lance_datafusion.247659090e7cec5-cgu.0?download=true
inline.NumInlined: 35549
inline.NumDeleted: 12223
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericBinaryTypexEE6finishCsc85D0lJ81Z_16lance_datafusion:bb.a
bb.aw:                                            ; preds = %bb.av
  %i.ev = atomicrmw sub ptr %i.et, i64 1 release, align 8, !noalias !85917
  %i.ew = icmp eq i64 %i.ev, 1
  br i1 %i.ew, label %bb.ax, label %.noexc32.i

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %.noexc32.i unwind label %bb.v, !noalias !85889

.noexc32.i:                                       ; preds = %bb.ax, %bb.aw, %bb.av
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.q) #73
          to label %.body32.thread unwind label %bb.v, !noalias !85889

.body32.thread:                                   ; preds = %.noexc32.i, %bb.au, %bb.bc, %bb.bb, %bb.ba, %bb.ay, %bb.b
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ay ], [ %.pn24.pn.i, %.noexc32.i ], [ %i.ey, %bb.ba ], [ %.pn24.pn.i, %bb.au ], [ %i.be, %bb.bb ], [ %i.al, %bb.b ], [ %i.av, %bb.bc ]
  resume { ptr, i32 } %.pn

bb.ay:                                            ; preds = %bb.m
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(184) %i.ab) #73
          to label %.body32.thread unwind label %bb.az

bb.az:                                            ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.ay, %bb.b
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.ba:                                            ; preds = %bb.k
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(184) %i.aa) #73
          to label %.body32.thread unwind label %bb.az

bb.bb:                                            ; preds = %bb.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(184) %i.z) #73
          to label %.body32.thread unwind label %bb.az

bb.bc:                                            ; preds = %bb.e
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(184) %i.y) #73
          to label %.body32.thread unwind label %bb.az
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE11append_nullCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder21materialize_if_needed(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a)
  %i.b = load i64, ptr %i.a, align 8, !range !323, !alias.scope !85926, !noundef !315
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.h, label %bb.b, !prof !316

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85927)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !85928, !noundef !315
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = and i64 %i.e, 7
  %.not.i.i = icmp ne i64 %i.g, 0
  %i.h = zext i1 %.not.i.i to i64
  %.sroa.0.0.i.i = add nuw nsw i64 %i.f, %i.h     ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !85928, !noundef !315 ; 3 uses
  %i.k = icmp ugt i64 %.sroa.0.0.i.i, %i.j
  br i1 %i.k, label %bb.c, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw nsw i64 %.sroa.0.0.i.i, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85929)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !85930, !noundef !315 ; 2 uses
  %i.o = icmp ugt i64 %.sroa.0.0.i.i, %i.n
  br i1 %i.o, label %bb.d, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i, !prof !316

bb.d:                                             ; preds = %bb.c
  %i.p = and i64 %.sroa.0.0.i.i, 63
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %reass.sub.i.i.i = and i64 %.sroa.0.0.i.i, 4611686018427387840
  %i.r = add nuw nsw i64 %reass.sub.i.i.i, 64     ; 2 uses
  %i.s = icmp samesign ult i64 %i.r, %.sroa.0.0.i.i
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.i.i.i = phi i64 [ %.sroa.0.0.i.i, %bb.d ], [ %i.r, %bb.e ]
  %i.t = shl nuw nsw i64 %i.n, 1
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %.sroa.4.0.i.i.i)
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %.sroa.0.0.i.i.i)
  %.pre.i.i = load i64, ptr %i.i, align 8, !alias.scope !85928
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @563, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565) #72, !noalias !85931
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i: ; preds = %bb.f, %bb.c
  %i.u = phi i64 [ %i.j, %bb.c ], [ %.pre.i.i, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !85928, !nonnull !315, !noundef !315
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.x, i8 0, i64 %i.l, i1 false)
  store i64 %.sroa.0.0.i.i, ptr %i.i, align 8, !alias.scope !85928
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @567) #72
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit: ; preds = %bb.b, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !85928
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noundef !315 ; 3 uses
  %i.aa = icmp sgt i64 %i.z, -1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp samesign ult i64 %i.z, 2147483648
  br i1 %i.ab, label %bb.i, label %bb.k, !prof !321

bb.i:                                             ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !85932, !noundef !315 ; 3 uses
  %i.af = load i64, ptr %i.ac, align 8, !range !322, !alias.scope !85932, !noundef !315
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.j, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCsc85D0lJ81Z_16lance_datafusion.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCsc85D0lJ81Z_16lance_datafusion.exit

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.i, %bb.j
  %i.ah = trunc nuw nsw i64 %i.z to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !85932, !nonnull !315, !noundef !315
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ae
  store i32 %i.ah, ptr %i.ak, align 4
  %i.al = add i64 %i.ae, 1
  store i64 %i.al, ptr %i.ad, align 8, !alias.scope !85932
  ret void

bb.k:                                             ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #72
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE13with_capacityCsc85D0lJ81Z_16lance_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, i64 noundef range(i64 -1, 2305843009213693951) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = add nsw i64 %1, 1                        ; 3 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 2 uses
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store i64 0, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.f, align 8
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.thread._crit_edge unwind label %bb.d

.thread._crit_edge:                               ; preds = %.thread
  %.pre = load ptr, ptr %i.e, align 8, !alias.scope !85939
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !85940
  %i.g = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #71, !noalias !85940 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.c) #72
  unreachable

bb.d:                                             ; preds = %.thread, %bb.i
  %i.i = phi ptr [ %i.e, %.thread ], [ %i.q, %bb.i ]
  %i.j = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.k = icmp eq i64 %.val, 0
  br i1 %i.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val12 = load ptr, ptr %i.i, align 8, !nonnull !315, !noundef !315
  %i.l = shl nuw i64 %.val, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 4) #71
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECsc85D0lJ81Z_16lance_datafusion.exit

bb.f:                                             ; preds = %bb.b
  store i64 %i.b, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.h

bb.g:                                             ; preds = %bb.i
  unreachable

bb.h:                                             ; preds = %.thread._crit_edge, %bb.f
  %i.o = phi ptr [ %i.g, %bb.f ], [ %.pre, %.thread._crit_edge ]
  %i.p = phi ptr [ %i.n, %bb.f ], [ %i.f, %.thread._crit_edge ]
  %i.q = phi ptr [ %i.m, %bb.f ], [ %i.e, %.thread._crit_edge ]
  store i32 0, ptr %i.o, align 4
  store i64 1, ptr %i.p, align 8, !alias.scope !85939
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !85941
  %i.r = call noundef dereferenceable_or_null(1024) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !85941 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1024) #72
          to label %bb.g unwind label %bb.d

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 1024, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.u, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %1, ptr %.sroa.56.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE6finishCsc85D0lJ81Z_16lance_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 16               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [136 x i8], align 8               ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [48 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [56 x i8], align 8                ; 11 uses
  %i.s = alloca [56 x i8], align 8                ; 11 uses
  %i.t = alloca [184 x i8], align 8               ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [184 x i8], align 8               ; 16 uses
  %i.y = alloca [184 x i8], align 8               ; 5 uses
  %i.z = alloca [184 x i8], align 8               ; 5 uses
  %i.aa = alloca [184 x i8], align 8              ; 5 uses
  %i.ab = alloca [184 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 24, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 88 ; 2 uses
  store i64 0, ptr %i.x, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 168
  store i64 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %i.ag, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 176
  store i8 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 177
  store i8 0, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ak = invoke noundef i64 @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.aj)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(184) %i.x) #73
          to label %.body32.thread unwind label %bb.bc

bb.c:                                             ; preds = %bb.a
  store i64 %i.ak, ptr %i.ad, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.y, ptr noundef nonnull align 8 dereferenceable(184) %i.x, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %i.am, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !315, !noundef !315 ; 2 uses
  %.sroa.5.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx34, align 8 ; 2 uses
  store i64 0, ptr %i.am, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5.0..sroa_idx34, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86005)
  %i.an = icmp ult i64 %.sroa.5.0.copyload, 2305843009213693952
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = icmp samesign ult i64 %.sroa.0.0.copyload, 2305843009213693952
  %i.ap = shl nuw nsw i64 %.sroa.0.0.copyload, 2
  %i.aq = shl nuw nsw i64 %.sroa.5.0.copyload, 2  ; 2 uses
  tail call void @llvm.assume(i1 %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !86006
  store i64 1, ptr %i.s, align 8, !noalias !86006
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 1, ptr %i.ar, align 8, !noalias !86006
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %.sroa.4.0.copyload, ptr %i.as, align 8, !noalias !86006
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %i.aq, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !86006
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !86006
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 4, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !86006
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store i64 %i.ap, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !86006
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !86007
  %i.at = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !86007 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.d, label %bb.g, !prof !316

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
          to label %.noexc.i unwind label %bb.e, !noalias !86006

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.s) #73
          to label %bb.bf unwind label %bb.f, !noalias !86006

bb.f:                                             ; preds = %bb.e
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !86006
  unreachable

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.at, ptr noundef nonnull align 8 dereferenceable(56) %i.s, i64 56, i1 false), !noalias !86006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !86006
  store ptr %i.at, ptr %i.w, align 8, !alias.scope !86005, !noalias !86008
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.sroa.4.0.copyload, ptr %i.ax, align 8, !alias.scope !86005, !noalias !86008
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.aq, ptr %i.ay, align 8, !alias.scope !86005, !noalias !86008
  call void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.z, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %.sroa.035.0.copyload = load i64, ptr %1, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.436.0.copyload = load ptr, ptr %.sroa.436.0..sroa_idx, align 8, !nonnull !315, !noundef !315 ; 2 uses
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.sroa.537.0.copyload = load i64, ptr %.sroa.537.0..sroa_idx, align 8 ; 3 uses
  store i64 0, ptr %1, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.436.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.537.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !86009)
  %i.az = icmp sgt i64 %.sroa.537.0.copyload, -1
  call void @llvm.assume(i1 %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !86010
  store i64 1, ptr %i.r, align 8, !noalias !86010
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 1, ptr %i.ba, align 8, !noalias !86010
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.sroa.436.0.copyload, ptr %i.bb, align 8, !noalias !86010
  %.sroa.4.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %.sroa.537.0.copyload, ptr %.sroa.4.0..sroa_idx.i23, align 8, !noalias !86010
end_hunk_0
