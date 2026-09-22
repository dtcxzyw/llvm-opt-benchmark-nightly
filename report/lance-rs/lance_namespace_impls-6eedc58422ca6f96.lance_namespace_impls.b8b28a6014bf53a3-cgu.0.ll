Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73510
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEE16from_iter_valuesNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB2c_3vec3VecB28_EECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  store i64 %.sroa.03.0.copyload.i, ptr %i.l, align 8, !alias.scope !9795, !noalias !9796
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.44.0.copyload.i, ptr %i.m, align 8, !alias.scope !9795, !noalias !9796
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.k, ptr %i.n, align 8, !alias.scope !9795, !noalias !9796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.o = shl nuw nsw i64 %.sroa.55.0.copyload.i, 2 ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 4                  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9797)
  %i.q = and i64 %i.p, 60
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.split.i, label %bb.b

.thread:                                          ; preds = %bb.c, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(32) %i.i) #73
  br label %.noexc58

bb.b:                                             ; preds = %bb.a
  %reass.sub.i40 = and i64 %i.p, 4611686018427387840
  %i.t = add nuw nsw i64 %reass.sub.i40, 64       ; 2 uses
  %.not102 = icmp samesign ugt i64 %i.t, %i.o
  br i1 %.not102, label %.split.i, label %bb.c, !prof !439

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3177, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3179) #72
          to label %.noexc42 unwind label %.thread

.noexc42:                                         ; preds = %bb.c
  unreachable

.split.i:                                         ; preds = %bb.b, %bb.a
  %.sroa.4.0.i41 = phi i64 [ %i.p, %bb.a ], [ %i.t, %bb.b ] ; 3 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !9797
  %i.u = tail call noundef align 128 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.i41, i64 noundef 128) #68, !noalias !9797 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %bb.f, !prof !426

bb.d:                                             ; preds = %.split.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef %.sroa.4.0.i41) #72
          to label %.noexc44 unwind label %.thread

.noexc44:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.o
  unreachable

bb.f:                                             ; preds = %.split.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %i.u, ptr %i.w, align 16, !alias.scope !9797
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 6 uses
  store i64 128, ptr %i.h, align 16, !alias.scope !9797
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i64 %.sroa.4.0.i41, ptr %i.y, align 8, !alias.scope !9797
  store i32 0, ptr %i.u, align 128
  store i64 4, ptr %i.x, align 8, !alias.scope !9798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr inttoptr (i64 128 to ptr), ptr %i.z, align 16, !alias.scope !9799
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 7 uses
  store i64 0, ptr %i.aa, align 8, !alias.scope !9799
  store i64 128, ptr %i.g, align 16, !alias.scope !9799
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store i64 0, ptr %i.ab, align 8, !alias.scope !9799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !9800, !noalias !9801, !nonnull !416, !noundef !416 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.promoted = load ptr, ptr %i.ae, align 8, !alias.scope !9800, !noalias !9801 ; 3 uses
  %i.af = icmp eq ptr %.promoted, %i.ad
  br i1 %i.af, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.ac, %bb.ab
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(32) %i.f) #73
  br label %bb.ao

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.f, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit72
  %i.ag = phi ptr [ %i.ah, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit72 ], [ %.promoted, %bb.f ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9800)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 6 uses
  %.sroa.076.0.copyload77 = load i64, ptr %i.ag, align 8, !noalias !9800 ; 5 uses
  %.sroa.7.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.7.sroa.0.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx78, align 8, !noalias !9800 ; 4 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx78.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.7.sroa.5.0.copyload = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx78.sroa_idx, align 8, !noalias !9800 ; 3 uses
  %.not = icmp eq i64 %.sroa.076.0.copyload77, -1
  br i1 %.not, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %bb.ad

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread: ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit72, %bb.f
  %i.ai = phi ptr [ %.promoted, %bb.f ], [ %i.ah, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit72 ], [ %i.ah, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9802)
  call void @llvm.experimental.noalias.scope.decl(metadata !9803)
  %i.aj = ptrtoint ptr %i.ad to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub nuw i64 %i.aj, %i.ak
  %i.am = udiv exact i64 %i.al, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !9804)
  %i.an = icmp eq ptr %i.ad, %i.ai
  br i1 %i.an, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %i.ap, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ], [ 0, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.ap = add nuw nsw i64 %.sroa.0.010.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9805)
  call void @llvm.experimental.noalias.scope.decl(metadata !9806)
  %.val.i.i.i.i.i = load i64, ptr %i.ao, align 8, !range !419, !alias.scope !9807, !noalias !9808, !noundef !416 ; 2 uses
  %i.aq = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.aq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !9807, !noalias !9808, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !9809
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i
  %i.as = icmp eq i64 %i.ap, %i.am
  br i1 %i.as, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !9808, !noundef !416 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.aw = load ptr, ptr %i.f, align 8, !alias.scope !9808, !nonnull !416, !noundef !416
  %i.ax = mul nuw i64 %i.au, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !9808
  br label %bb.j

bb.i:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.j:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.az = load i64, ptr %i.aa, align 8, !noundef !416
  %i.ba = icmp ult i64 %i.az, 2147483648
  br i1 %i.ba, label %bb.k, label %bb.o, !prof !439

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bb = load ptr, ptr %i.w, align 16, !nonnull !416, !noundef !416 ; 3 uses
  %i.bc = load i64, ptr %i.x, align 8, !noundef !416 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.bb, ptr %i.be, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.bc, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bf = load <2 x i64>, ptr %i.h, align 16
  store <2 x i64> %i.bf, ptr %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !9810
  %i.bg = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !9810 ; 5 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.l, label %bb.p, !prof !448

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
          to label %.noexc52 unwind label %bb.m

.noexc52:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #73
          to label %bb.ao unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.o:                                             ; preds = %bb.j
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @320, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #72
          to label %bb.e unwind label %bb.i

bb.p:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.bg, ptr %i.e, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.bb, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.bc, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bm = ptrtoint ptr %i.bb to i64               ; 3 uses
  %2 = add i64 %i.bm, 3
  %i.bn = and i64 %2, -4                          ; 2 uses
  %3 = sub i64 %i.bn, %i.bm
  %4 = icmp ult i64 %3, 4
  call void @llvm.assume(i1 %4)
  %i.bo = icmp eq i64 %i.bn, %i.bm
  br i1 %i.bo, label %bb.t, label %.invoke.i, !prof !439

bb.q:                                             ; preds = %.invoke.i
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = atomicrmw sub ptr %i.bg, i64 1 release, align 8, !noalias !9811
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.r, label %bb.ao

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.ao unwind label %bb.s, !noalias !9812

.invoke.i:                                        ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !9813, !noundef !416
  %.not.i = icmp eq ptr %i.bt, null               ; 3 uses
  %.2.i = select i1 %.not.i, ptr @4483, ptr @4485
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @4482, ptr @4484
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #72
          to label %.cont.i unwind label %bb.q, !noalias !9813

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !9812
  unreachable

bb.t:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 24, i64 24, i1 false)
  %i.bv = load ptr, ptr %i.z, align 16, !nonnull !416, !noundef !416 ; 2 uses
  %i.bw = load i64, ptr %i.aa, align 8, !noundef !416 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bv, ptr %i.by, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.bw, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.521.0..sroa_idx, align 8
  %.sroa.521.sroa.4.0..sroa.521.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bz = load <2 x i64>, ptr %i.g, align 16
  store <2 x i64> %i.bz, ptr %.sroa.521.sroa.4.0..sroa.521.0..sroa_idx.sroa_idx, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !9814
  %i.ca = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !9814 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.u, label %bb.x, !prof !448

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
          to label %.noexc56 unwind label %bb.v

.noexc56:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #73
          to label %.body unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

.body:                                            ; preds = %bb.v
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #73
          to label %bb.z unwind label %bb.y

bb.x:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ca, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 24, i64 24, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ca, ptr %i.cf, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bv, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.bw, ptr %.sroa.5.0..sroa_idx, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.cg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.y:                                             ; preds = %bb.ap, %bb.ao, %bb.aa, %.body
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.z:                                             ; preds = %.body
  call void @llvm.experimental.noalias.scope.decl(metadata !9815)
  call void @llvm.experimental.noalias.scope.decl(metadata !9816)
  call void @llvm.experimental.noalias.scope.decl(metadata !9817)
  call void @llvm.experimental.noalias.scope.decl(metadata !9818)
  call void @llvm.experimental.noalias.scope.decl(metadata !9819)
  %i.ci = load ptr, ptr %i.d, align 8, !alias.scope !9820, !nonnull !416, !noundef !416
  %i.cj = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !9820
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.aa, label %.noexc58

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.noexc58 unwind label %bb.y

.loopexit:                                        ; preds = %.noexc34, %bb.al
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ah, ptr %i.ae, align 8
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cl = icmp eq i64 %.sroa.076.0.copyload77, 0
  br i1 %i.cl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload, i64 noundef %.sroa.076.0.copyload77, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !9821
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.ad:                                            ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload) ]
  %i.cm = load i64, ptr %i.aa, align 8, !alias.scope !9822, !noundef !416 ; 3 uses
  %i.cn = add i64 %i.cm, %.sroa.7.sroa.5.0.copyload ; 6 uses
  %i.co = icmp ult i64 %i.cn, %i.cm
  br i1 %i.co, label %.invoke, label %bb.ae, !prof !426

bb.ae:                                            ; preds = %bb.ad
  %i.cp = load i64, ptr %i.ab, align 8, !alias.scope !9822, !noundef !416 ; 2 uses
  %i.cq = icmp ugt i64 %i.cn, %i.cp
  br i1 %i.cq, label %bb.af, label %bb.ah, !prof !426

.invoke:                                          ; preds = %bb.ad, %bb.ak, %bb.ah, %bb.ag
  %i.cr = phi ptr [ @3177, %bb.ak ], [ @3180, %bb.ah ], [ @3177, %bb.ag ], [ @3180, %bb.ad ]
  %i.cs = phi i64 [ 35, %bb.ak ], [ 22, %bb.ah ], [ 35, %bb.ag ], [ 22, %bb.ad ]
  %i.ct = phi ptr [ @3179, %bb.ak ], [ @3181, %bb.ah ], [ @3179, %bb.ag ], [ @3181, %bb.ad ]
  store ptr %i.ah, ptr %i.ae, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #72
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.cu = and i64 %i.cn, 63
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %.noexc34, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %reass.sub.i = and i64 %i.cn, -64
  %i.cw = add i64 %reass.sub.i, 64                ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.cn
  br i1 %i.cx, label %.invoke, label %.noexc34

.noexc34:                                         ; preds = %bb.af, %bb.ag
  %.sroa.4.0.i = phi i64 [ %i.cn, %bb.af ], [ %i.cw, %bb.ag ]
  %i.cy = shl i64 %i.cp, 1
  %.sroa.0.0.i61 = call noundef i64 @llvm.umax.i64(i64 %i.cy, i64 %.sroa.4.0.i)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %.sroa.0.0.i61)
          to label %.noexc34._crit_edge unwind label %.loopexit

.noexc34._crit_edge:                              ; preds = %.noexc34
  %.pre = load i64, ptr %i.aa, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc34._crit_edge, %bb.ae
  %i.cz = phi i64 [ %.pre, %.noexc34._crit_edge ], [ %i.cm, %bb.ae ]
  %i.da = load ptr, ptr %i.z, align 16, !nonnull !416, !noundef !416
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.db, ptr nonnull align 1 %.sroa.7.sroa.0.0.copyload, i64 %.sroa.7.sroa.5.0.copyload, i1 false)
  %i.dc = load i64, ptr %i.aa, align 8, !noundef !416
  %i.dd = add i64 %i.dc, %.sroa.7.sroa.5.0.copyload ; 2 uses
  store i64 %i.dd, ptr %i.aa, align 8
  %i.de = trunc i64 %i.dd to i32
  %i.df = load i64, ptr %i.x, align 8, !alias.scope !9823, !noundef !416 ; 3 uses
  %i.dg = add i64 %i.df, 4                        ; 5 uses
end_hunk_0
begin_hunk_1_@_RNCNvNtNtCs9KQ7US1M400_11lance_table2io8deletion19write_deletion_file0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  br label %.body11.i

.noexc9.i:                                        ; preds = %bb.v
  %i.dr = extractvalue { i32, i32 } %i.dn, 0
  %i.ds = extractvalue { i32, i32 } %i.dn, 1
  %i.dt = trunc i32 %i.dr to i1
  br i1 %i.dt, label %bb.y, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3w_14PrimitiveArrayNtNtB3A_5types10UInt32TypeEINtNtNtB1o_6traits7collect12FromIteratormE9from_iterB25_E0EE9from_iterCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.y:                                             ; preds = %.noexc9.i
  %.val8.i.i.i.i = load i64, ptr %.sroa.028.sroa.4.0..sroa_idx.i, align 8, !alias.scope !178389, !noalias !178390, !noundef !416
  %i.du = call i64 @llvm.uadd.sat.i64(i64 %.val8.i.i.i.i, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.du, i64 4) ; 4 uses
  %i.dv = shl i64 %.sroa.0.0.i.i.i.i.i, 2         ; 4 uses
  %i.dw = icmp ugt i64 %i.du, 4611686018427387903
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.dv, 9223372036854775804
  %or.cond.i.i.i.i.i.i = or i1 %i.dw, %.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.aa, label %bb.z, !prof !441

bb.z:                                             ; preds = %bb.y
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !178391
  %i.dx = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.dv, i64 noundef range(i64 1, 17) 4) #68, !noalias !178391 ; 6 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.aa, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 4, %bb.z ], [ 0, %bb.y ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.dv) #72
          to label %.noexc10.i unwind label %bb.x, !noalias !178379

.noexc10.i:                                       ; preds = %bb.aa
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %bb.z
  store i32 %i.ds, ptr %i.dx, align 4, !noalias !178387
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.n, align 8, !noalias !178387
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  store ptr %i.dx, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !178387
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !178387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !178387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !178390
  call void @llvm.experimental.noalias.scope.decl(metadata !178392)
  call void @llvm.experimental.noalias.scope.decl(metadata !178393)
  call void @llvm.experimental.noalias.scope.decl(metadata !178394)
  call void @llvm.experimental.noalias.scope.decl(metadata !178395)
  %i.dz = invoke fastcc { i32, i32 } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB2m_14PrimitiveArrayNtNtB2q_5types10UInt32TypeEINtNtNtB9_6traits7collect12FromIteratormE9from_iterBW_E0ENtNtB47_8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %.noexc.i.i.i.i unwind label %.thread.i.i.i.i, !noalias !178387 ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %i.ea = extractvalue { i32, i32 } %i.dz, 0
  %i.eb = trunc i32 %i.ea to i1
  br i1 %i.eb, label %.lr.ph.i.i.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc.i.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc10.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ed = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.i ], [ %i.ek, %.noexc10.i.i.i.i ]
  %i.ee = phi i64 [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.el, %.noexc10.i.i.i.i ] ; 3 uses
  %i.ef = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i ], [ %i.en, %.noexc10.i.i.i.i ] ; 4 uses
  %.pn.i.i.i.i.i.i = phi { i32, i32 } [ %i.dz, %.lr.ph.i.i.i.i.i.i ], [ %i.eo, %.noexc10.i.i.i.i ]
  %i.eg = extractvalue { i32, i32 } %.pn.i.i.i.i.i.i, 1
  %i.eh = icmp samesign ult i64 %i.ef, 2305843009213693952
  call void @llvm.assume(i1 %i.eh)
  %i.ei = icmp eq i64 %i.ef, %i.ee
  br i1 %i.ei, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %bb.ac

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.ab
  %.val.i.i.i.i.i.i = load i64, ptr %i.ec, align 8, !alias.scope !178396, !noalias !178397, !noundef !416
  %i.ej = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.ee, i64 noundef %i.ej, i64 noundef 4, i64 noundef 4)
          to label %.noexc9.i.i.i.i unwind label %bb.ad, !noalias !178387

.noexc9.i.i.i.i:                                  ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %.pre6.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !range !419, !alias.scope !178398, !noalias !178399
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !178398, !noalias !178399
  br label %bb.ac

bb.ac:                                            ; preds = %.noexc9.i.i.i.i, %bb.ab
  %i.ek = phi ptr [ %i.ed, %bb.ab ], [ %.pre.i.i.i.i, %.noexc9.i.i.i.i ] ; 2 uses
  %i.el = phi i64 [ %i.ee, %bb.ab ], [ %.pre6.i.i.i.i.i.i, %.noexc9.i.i.i.i ]
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.ef
  store i32 %i.eg, ptr %i.em, align 4, !noalias !178400
  %i.en = add nuw nsw i64 %i.ef, 1                ; 3 uses
  store i64 %i.en, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !178398, !noalias !178399
  %i.eo = invoke fastcc { i32, i32 } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB2m_14PrimitiveArrayNtNtB2q_5types10UInt32TypeEINtNtNtB9_6traits7collect12FromIteratormE9from_iterBW_E0ENtNtB47_8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %.noexc10.i.i.i.i unwind label %bb.ad, !noalias !178387 ; 2 uses

.noexc10.i.i.i.i:                                 ; preds = %bb.ac
  %i.ep = extractvalue { i32, i32 } %i.eo, 0
  %i.eq = trunc i32 %i.ep to i1
  br i1 %i.eq, label %bb.ab, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.loopexit.i.i

.thread.i.i.i.i:                                  ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.pre.i.i.i.i = load i64, ptr %i.n, align 8, !noalias !178387 ; 2 uses
  %i.er = icmp eq i64 %.val.pre.i.i.i.i, 0
  br i1 %i.er, label %.body11.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ad
  %.val7.i.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !178387
  %.pre.i.i.i = shl nuw i64 %.val.pre.i.i.i.i, 2
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.i.i.i, %.thread.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.dv, %.thread.i.i.i.i ]
  %.val7.i.i.i.i = phi ptr [ %.val7.i.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.dx, %.thread.i.i.i.i ]
  %lpad.phi17.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %._crit_edge.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.thread.i.i.i.i ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i, i64 noundef %.pre-phi.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #68, !noalias !178387
  br label %.body11.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.loopexit.i.i: ; preds = %.noexc10.i.i.i.i
  %.sroa.0.0.copyload.pre.i.i = load i64, ptr %i.n, align 8, !noalias !178401
  %.sroa.5.0.copyload.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !178401
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.loopexit.i.i, %.noexc.i.i.i.i
  %.sroa.7.0.copyload.i.i = phi i64 [ %i.en, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.loopexit.i.i ], [ 1, %.noexc.i.i.i.i ]
  %.sroa.5.0.copyload.i.i = phi ptr [ %.sroa.5.0.copyload.pre.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.loopexit.i.i ], [ %i.dx, %.noexc.i.i.i.i ]
  %.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.0.0.copyload.pre.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.loopexit.i.i ], [ %.sroa.0.0.i.i.i.i.i, %.noexc.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !178387
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3w_14PrimitiveArrayNtNtB3A_5types10UInt32TypeEINtNtNtB1o_6traits7collect12FromIteratormE9from_iterB25_E0EE9from_iterCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3w_14PrimitiveArrayNtNtB3A_5types10UInt32TypeEINtNtNtB1o_6traits7collect12FromIteratormE9from_iterB25_E0EE9from_iterCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %.noexc9.i
  %.sroa.7.0.i.i = phi i64 [ %.sroa.7.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ], [ 0, %.noexc9.i ] ; 2 uses
  %.sroa.5.0.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ], [ inttoptr (i64 4 to ptr), %.noexc9.i ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1h_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3r_14PrimitiveArrayNtNtB3v_5types10UInt32TypeEINtNtNtB1j_6traits7collect12FromIteratormE9from_iterB20_E0EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ], [ 0, %.noexc9.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !178387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !178381
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i) ]
  %i.es = icmp samesign ult i64 %.sroa.7.0.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.es)
  %i.et = icmp samesign ult i64 %.sroa.0.0.i.i, 2305843009213693952
  %i.eu = shl nuw nsw i64 %.sroa.0.0.i.i, 2
  %i.ev = shl nuw nsw i64 %.sroa.7.0.i.i, 2       ; 2 uses
  call void @llvm.assume(i1 %i.et)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !178381
  store i64 1, ptr %i.o, align 8, !noalias !178381
  %i.ew = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 1, ptr %i.ew, align 8, !noalias !178381
  %i.ex = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %.sroa.5.0.i.i, ptr %i.ex, align 8, !noalias !178381
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %i.ev, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !178381
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !178381
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 4, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !178381
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i64 %i.eu, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !178381
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !178402
  %i.ey = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !178402 ; 4 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %bb.af, label %bb.ai, !prof !448

bb.af:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3w_14PrimitiveArrayNtNtB3A_5types10UInt32TypeEINtNtNtB1o_6traits7collect12FromIteratormE9from_iterB25_E0EE9from_iterCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
          to label %.noexc.i.i unwind label %bb.ag, !noalias !178381

.noexc.i.i:                                       ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.o) #73
          to label %.body11.i unwind label %bb.ah, !noalias !178381

bb.ah:                                            ; preds = %bb.ag
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !178381
  unreachable

bb.ai:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1m_6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENCINvXs9_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB3w_14PrimitiveArrayNtNtB3A_5types10UInt32TypeEINtNtNtB1o_6traits7collect12FromIteratormE9from_iterB25_E0EE9from_iterCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ey, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false), !noalias !178381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !178381
  store ptr %i.ey, ptr %i.v, align 8, !alias.scope !178380, !noalias !178403
  %i.fc = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.sroa.5.0.i.i, ptr %i.fc, align 8, !alias.scope !178380, !noalias !178403
  %i.fd = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.ev, ptr %i.fd, align 8, !alias.scope !178380, !noalias !178403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !178379
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.w)
          to label %bb.aj unwind label %bb.bi, !noalias !178379

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !178379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !178379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !178379
  call void @llvm.experimental.noalias.scope.decl(metadata !178404)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !alias.scope !178404, !noalias !178405, !noundef !416
  %i.fg = ptrtoint ptr %i.ff to i64               ; 3 uses
  %3 = add i64 %i.fg, 3
  %i.fh = and i64 %3, -4                          ; 2 uses
  %4 = sub i64 %i.fh, %i.fg
  %5 = icmp ult i64 %4, 4
  call void @llvm.assume(i1 %5)
  %i.fi = icmp eq i64 %i.fh, %i.fg
  br i1 %i.fi, label %bb.ao, label %.invoke.i.i, !prof !439

bb.ak:                                            ; preds = %.invoke.i.i
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fk = atomicrmw sub ptr %i.fm, i64 1 release, align 8, !noalias !178406
  %i.fl = icmp eq i64 %i.fk, 1
  br i1 %i.fl, label %bb.al, label %.body.i

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body.i unwind label %bb.am, !noalias !178405

.invoke.i.i:                                      ; preds = %bb.aj
  %i.fm = load ptr, ptr %i.s, align 8, !alias.scope !178404, !noalias !178405, !nonnull !416, !noundef !416 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !178407, !noundef !416
  %.not.i.i = icmp eq ptr %i.fo, null             ; 3 uses
  %.2.i.i = select i1 %.not.i.i, ptr @4483, ptr @4485
  %.1.i.i = select i1 %.not.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i.i, ptr @4482, ptr @4484
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #72
          to label %.cont.i.i unwind label %bb.ak, !noalias !178407

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !178405
  unreachable

bb.an:                                            ; preds = %bb.ax
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !178379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !178379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !178379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false), !noalias !178379
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !178408)
  call void @llvm.experimental.noalias.scope.decl(metadata !178409)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !178379
  %i.fr = load ptr, ptr %i.r, align 8, !alias.scope !178409, !noalias !178410, !noundef !416 ; 3 uses
  %.not.i16.i = icmp eq ptr %i.fr, null
  br i1 %.not.i16.i, label %bb.bd, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fs = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ft = load i64, ptr %i.fs, align 8, !alias.scope !178409, !noalias !178410, !noundef !416 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !178408, !noalias !178411, !noundef !416
  %i.fw = lshr i64 %i.fv, 2                       ; 2 uses
  %.not12.i.i = icmp eq i64 %i.ft, %i.fw
  br i1 %.not12.i.i, label %bb.bd, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !178412
  store i64 %i.fw, ptr %i.k, align 8, !noalias !178412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !178412
  store i64 %i.ft, ptr %i.j, align 8, !noalias !178412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !178412
  store ptr %i.k, ptr %i.i, align 8, !noalias !178412
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !noalias !178412
  %i.fx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.fx, align 8, !noalias !178412
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !178412
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @3442, ptr noundef nonnull %i.i)
          to label %bb.at unwind label %bb.ar, !noalias !178412

bb.ar:                                            ; preds = %bb.aq
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fz = atomicrmw sub ptr %i.fr, i64 1 release, align 8, !noalias !178413
  %i.ga = icmp eq i64 %i.fz, 1
  br i1 %i.ga, label %bb.as, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.as:                                            ; preds = %bb.ar
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i unwind label %bb.ay, !noalias !178410

bb.at:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !178412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !178412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !178412
  %.sroa.8.sroa.0.0.copyload55.i = load i64, ptr %i.l, align 8, !noalias !178414
  %.sroa.8.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.6.0..sroa_idx.i, i64 16, i1 false), !noalias !178414
  %i.gb = atomicrmw sub ptr %i.fr, i64 1 release, align 8, !noalias !178415
  %i.gc = icmp eq i64 %i.gb, 1
  br i1 %i.gc, label %bb.au, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsfR8GmIBoxTX_21lance_namespace_impls.exit16.i.i

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsfR8GmIBoxTX_21lance_namespace_impls.exit16.i.i unwind label %bb.aw, !noalias !178410

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.aw, %bb.as, %bb.ar
  %.pn.i.i = phi { ptr, i32 } [ %i.gg, %bb.aw ], [ %i.fy, %bb.as ], [ %i.fy, %bb.ar ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !178416)
  call void @llvm.experimental.noalias.scope.decl(metadata !178417)
  call void @llvm.experimental.noalias.scope.decl(metadata !178418)
  call void @llvm.experimental.noalias.scope.decl(metadata !178419)
  %i.gd = load ptr, ptr %i.t, align 8, !alias.scope !178420, !noalias !178411, !nonnull !416, !noundef !416
  %i.ge = atomicrmw sub ptr %i.gd, i64 1 release, align 8, !noalias !178421
  %i.gf = icmp eq i64 %i.ge, 1
  br i1 %i.gf, label %bb.av, label %.body11.i

bb.av:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body11.i unwind label %bb.ay, !noalias !178422

bb.aw:                                            ; preds = %bb.au
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsfR8GmIBoxTX_21lance_namespace_impls.exit16.i.i: ; preds = %bb.au, %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !178423)
  call void @llvm.experimental.noalias.scope.decl(metadata !178424)
  call void @llvm.experimental.noalias.scope.decl(metadata !178425)
  call void @llvm.experimental.noalias.scope.decl(metadata !178426)
  %i.gh = load ptr, ptr %i.t, align 8, !alias.scope !178427, !noalias !178411, !nonnull !416, !noundef !416
  %i.gi = atomicrmw sub ptr %i.gh, i64 1 release, align 8, !noalias !178428
  %i.gj = icmp eq i64 %i.gi, 1
  br i1 %i.gj, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsfR8GmIBoxTX_21lance_namespace_impls.exit16.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.az unwind label %bb.an, !noalias !178379

bb.ay:                                            ; preds = %bb.av, %bb.as
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !178422
  unreachable

bb.az:                                            ; preds = %bb.ax, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsfR8GmIBoxTX_21lance_namespace_impls.exit16.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !178379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !178429
  store i64 -9223372036854775794, ptr %i.q, align 8, !noalias !178430
  %.sroa.8.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sroa.8.sroa.0.0.copyload55.i, ptr %.sroa.8.8..sroa_idx.i, align 8, !noalias !178430
  %.sroa.8.sroa.6.0..sroa.8.8..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.6.0..sroa.8.8..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.6.i, i64 16, i1 false), !noalias !178430
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3132, i64 noundef 43, ptr noundef nonnull %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3138, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @610) #72
          to label %bb.bb unwind label %bb.ba, !noalias !178429

bb.ba:                                            ; preds = %bb.az
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.q) #73
          to label %.body11.i unwind label %bb.bc, !noalias !178429

bb.bb:                                            ; preds = %bb.az
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !178429
  unreachable

bb.bd:                                            ; preds = %bb.ap, %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.643.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !178379
  %.sroa.643.sroa.4.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.643.sroa.4.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.643.sroa.4.32..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false), !noalias !178379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !178379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !noalias !178431
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(56) %i.dk, i64 56, i1 false), !noalias !178431
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !178379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !178379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !178379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !178379
  %i.gn = load i64, ptr %i.w, align 8, !range !540, !alias.scope !178432, !noalias !178379, !noundef !416
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %bb.bl, label %bb.be

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.w)
          to label %bb.bl unwind label %bb.bk

.body.i:                                          ; preds = %bb.al, %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !178433)
  %i.gp = load ptr, ptr %i.u, align 8, !alias.scope !178433, !noalias !178379, !noundef !416 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %.body11.i, label %bb.bf

bb.bf:                                            ; preds = %.body.i
end_hunk_1
begin_hunk_2_@_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE6finishCsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.bp = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !208452, !nonnull !416, !noundef !416
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bm
  store i32 %i.bl, ptr %i.bq, align 4
  %i.br = add i64 %i.bm, 1
  store i64 %i.br, ptr %.sroa.5.0..sroa_idx34, align 8, !alias.scope !208452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.t, ptr noundef nonnull align 8 dereferenceable(184) %i.ab, i64 184, i1 false)
  call void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder15build_unchecked(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !208453
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bs, i64 24, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !416 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !416
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !208453
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.bx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !208453
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(136) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !208453
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 24, i64 24, i1 false), !noalias !208453
  %i.by = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %bb.w, %bb.s
  %.pn.i = phi { ptr, i32 } [ %i.cc, %bb.w ], [ %i.bz, %bb.s ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #73
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsfR8GmIBoxTX_21lance_namespace_impls.exit.i unwind label %bb.y, !noalias !208453

bb.s:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  br i1 %i.by, label %bb.v, label %bb.u, !prof !439

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !208453
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 24, i64 24, i1 false), !noalias !208453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !208453
  store ptr @561, ptr %i.j, align 8, !noalias !208453
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !208453
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr @3437, ptr %i.ca, align 8, !noalias !208453
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !208453
  %i.cb = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.k, ptr %i.cb, align 8, !noalias !208453
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr @_RNvXNtCs8SUNSmrkv52_12arrow_schema16datatype_displayNtNtB4_8datatype8DataTypeNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !208453
  invoke void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeBM_ECs4ytUTZt2Gw9_11arrow_array(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l, ptr noundef nonnull @4486, ptr nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4487) #72
          to label %bb.x unwind label %bb.w, !noalias !208453

bb.v:                                             ; preds = %bb.t
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.aa unwind label %bb.z, !noalias !208453

bb.w:                                             ; preds = %bb.u
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #73
          to label %bb.r unwind label %bb.y, !noalias !208453

bb.x:                                             ; preds = %bb.ab, %bb.u
  unreachable

bb.y:                                             ; preds = %.noexc32.i, %bb.ba, %.body30.i, %bb.aq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %bb.w, %bb.r
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !208453
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.aq, %.body.i, %bb.z, %bb.r
  %.pn24.i = phi { ptr, i32 } [ %i.ce, %bb.z ], [ %.pn.i, %bb.r ], [ %eh.lpad-body.i, %bb.aq ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.n) #73
          to label %.body30.i unwind label %bb.y

bb.z:                                             ; preds = %bb.ab, %bb.v
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.aa:                                            ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !208453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !208453
  %i.cf = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !208453, !noundef !416 ; 3 uses
  store i64 %i.cg, ptr %i.i, align 8, !noalias !208453
  %i.ch = icmp ult i64 %i.cg, 384307168202282326
  call void @llvm.assume(i1 %i.ch)
  %i.ci = icmp eq i64 %i.cg, 2
  br i1 %i.ci, label %bb.ac, label %bb.ab, !prof !439

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !208453
  store ptr @561, ptr %i.h, align 8, !noalias !208453
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !208453
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr @3437, ptr %i.cj, align 8, !noalias !208453
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !208453
  invoke void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @787, ptr noundef nonnull @4488, ptr nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4489) #72
          to label %bb.x unwind label %bb.z, !noalias !208453

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !208453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !208453
  %i.ck = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !208453, !nonnull !416, !noundef !416 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false), !noalias !208453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !208453
  store i64 0, ptr %i.cf, align 8, !noalias !208453
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false), !noalias !208453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !208453
  call void @llvm.experimental.noalias.scope.decl(metadata !208454)
  %i.cn = icmp eq i64 %i.bu, 0
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !208454, !noalias !208455
  %i.cq = icmp eq i64 %i.cp, 0
  %or.cond.i.i = select i1 %i.cn, i1 %i.cq, i1 false
  br i1 %or.cond.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !208456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !208455
  %i.cr = add i64 %i.bu, 1
  invoke fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE3newCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %i.bw, i64 noundef %i.cr)
          to label %.noexc.i30 unwind label %bb.ap, !noalias !208453

.noexc.i30:                                       ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !208456
  br label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferlECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !208457
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer15from_len_zeroed(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, i64 noundef 4)
          to label %.noexc.i.i unwind label %.body.thread9.i.i, !noalias !208456

.body.thread9.i.i:                                ; preds = %bb.ae
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

.noexc.i.i:                                       ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !208457
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cu = load ptr, ptr %i.ct, align 16, !noalias !208457, !nonnull !416, !noundef !416 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cw = load i64, ptr %i.cv, align 8, !noalias !208457, !noundef !416 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !208457
  store i64 1, ptr %i.a, align 8, !noalias !208457
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.cx, align 8, !noalias !208457
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.cu, ptr %i.cy, align 8, !noalias !208457
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.cw, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !208457
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !208457
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.cz = load <2 x i64>, ptr %i.c, align 16, !noalias !208457
  store <2 x i64> %i.cz, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !208457
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !208458
  %i.da = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !208458 ; 5 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.af, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, !prof !448

bb.af:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
          to label %.noexc.i.i.i unwind label %bb.ag, !noalias !208457

.noexc.i.i.i:                                     ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #73
          to label %.body.thread.i.i unwind label %bb.ah, !noalias !208457

bb.ah:                                            ; preds = %bb.ag
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !208457
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.da, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !208457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !208457
  store ptr %i.da, ptr %i.b, align 8, !noalias !208457
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.cu, ptr %i.de, align 8, !noalias !208457
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.cw, ptr %i.df, align 8, !noalias !208457
  %i.dg = ptrtoint ptr %i.cu to i64               ; 3 uses
  %2 = add i64 %i.dg, 3
  %i.dh = and i64 %2, -4                          ; 2 uses
  %3 = sub i64 %i.dh, %i.dg
  %4 = icmp ult i64 %3, 4
  call void @llvm.assume(i1 %4)
  %i.di = icmp eq i64 %i.dh, %i.dg
  br i1 %i.di, label %bb.al, label %.invoke.i.i.i.i, !prof !439

bb.ai:                                            ; preds = %.invoke.i.i.i.i
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !208459
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.aj, label %.body.thread.i.i

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.thread.i.i unwind label %bb.ak, !noalias !208460

.invoke.i.i.i.i:                                  ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !208461, !noundef !416
  %.not.i.i.i.i = icmp eq ptr %i.dn, null         ; 3 uses
  %.2.i.i.i.i = select i1 %.not.i.i.i.i, ptr @4483, ptr @4485
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr @4482, ptr @4484
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i, ptr noundef nonnull %.1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i) #72
          to label %.cont.i.i.i.i unwind label %bb.ai, !noalias !208461

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !208460
  unreachable

bb.al:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !208462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !208457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !208457
  call void @llvm.experimental.noalias.scope.decl(metadata !208463)
  call void @llvm.experimental.noalias.scope.decl(metadata !208464)
  call void @llvm.experimental.noalias.scope.decl(metadata !208465)
  %i.dp = load ptr, ptr %i.f, align 8, !alias.scope !208466, !noalias !208455, !nonnull !416, !noundef !416
  %i.dq = atomicrmw sub ptr %i.dp, i64 1 release, align 8, !noalias !208467
  %i.dr = icmp eq i64 %i.dq, 1
  br i1 %i.dr, label %bb.am, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferlECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferlECsfR8GmIBoxTX_21lance_namespace_impls.exit.i unwind label %bb.ap, !noalias !208453

.body.thread.i.i:                                 ; preds = %bb.aj, %bb.ai, %bb.ag, %.body.thread9.i.i
  %eh.lpad-body8.i.i = phi { ptr, i32 } [ %i.cs, %.body.thread9.i.i ], [ %i.dj, %bb.ai ], [ %i.dj, %bb.aj ], [ %i.dc, %bb.ag ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !208468)
  call void @llvm.experimental.noalias.scope.decl(metadata !208469)
  call void @llvm.experimental.noalias.scope.decl(metadata !208470)
  %i.ds = load ptr, ptr %i.f, align 8, !alias.scope !208471, !noalias !208455, !nonnull !416, !noundef !416
  %i.dt = atomicrmw sub ptr %i.ds, i64 1 release, align 8, !noalias !208472
  %i.du = icmp eq i64 %i.dt, 1
  br i1 %i.du, label %bb.an, label %.body.i

bb.an:                                            ; preds = %.body.thread.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.ao, !noalias !208455

bb.ao:                                            ; preds = %bb.an
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !208455
  unreachable

bb.ap:                                            ; preds = %bb.am, %bb.ad
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ap, %bb.an, %.body.thread.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dw, %bb.ap ], [ %eh.lpad-body8.i.i, %bb.an ], [ %eh.lpad-body8.i.i, %.body.thread.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !208473)
  call void @llvm.experimental.noalias.scope.decl(metadata !208474)
  call void @llvm.experimental.noalias.scope.decl(metadata !208475)
  %i.dx = load ptr, ptr %i.g, align 8, !alias.scope !208476, !noalias !208453, !nonnull !416, !noundef !416
  %i.dy = atomicrmw sub ptr %i.dx, i64 1 release, align 8, !noalias !208477
  %i.dz = icmp eq i64 %i.dy, 1
  br i1 %i.dz, label %bb.aq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.aq:                                            ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsfR8GmIBoxTX_21lance_namespace_impls.exit.i unwind label %bb.y, !noalias !208453

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferlECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.am, %bb.al, %.noexc.i30
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !208478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !208478
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.eb, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !208478
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !208478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !208453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !208453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !208453
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !nonnull !416, !noundef !416 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.eg = load i64, ptr %i.ef, align 8, !noundef !416 ; 4 uses
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph

bb.ar:                                            ; preds = %.lr.ph
  %i.ei = icmp eq i64 %i.ek, %i.eg
  br i1 %i.ei, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferlECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %bb.ar
  %.sroa.0.0.i.i.i55 = phi i64 [ %i.ek, %bb.ar ], [ 0, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferlECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [136 x i8], ptr %i.ee, i64 %.sroa.0.0.i.i.i55
  %i.ek = add i64 %.sroa.0.0.i.i.i55, 1           ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(136) %i.ej) #75
          to label %bb.ar unwind label %bb.at, !noalias !208479, !inline_history !359

bb.as:                                            ; preds = %.lr.ph57
  %i.el = add i64 %.sroa.0.1.i.i.i56, 1           ; 2 uses
  %i.em = icmp eq i64 %i.el, %i.eg
  br i1 %i.em, label %.body.i.i, label %.lr.ph57

bb.at:                                            ; preds = %.lr.ph
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = icmp eq i64 %i.ek, %i.eg
  br i1 %i.eo, label %.body.i.i, label %.lr.ph57

.lr.ph57:                                         ; preds = %bb.at, %bb.as
  %.sroa.0.1.i.i.i56 = phi i64 [ %i.el, %bb.as ], [ %i.ek, %bb.at ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [136 x i8], ptr %i.ee, i64 %.sroa.0.1.i.i.i56
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(136) %i.ep) #76
          to label %bb.as unwind label %bb.au, !noalias !208479, !inline_history !359

bb.au:                                            ; preds = %.lr.ph57
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !208479, !inline_history !359
  unreachable

.body.i.i:                                        ; preds = %bb.as, %bb.at
  %.val2.i.i = load i64, ptr %i.n, align 8, !range !419, !noundef !416 ; 2 uses
  %i.er = icmp eq i64 %.val2.i.i, 0
  br i1 %i.er, label %.body30.i, label %bb.av

bb.av:                                            ; preds = %.body.i.i
  %i.es = mul nuw i64 %.val2.i.i, 136
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ee, i64 noundef %i.es, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !208479, !inline_history !620
  br label %.body30.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.ar, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferlECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %.val.i.i = load i64, ptr %i.n, align 8, !range !419, !noundef !416 ; 2 uses
  %i.et = icmp eq i64 %.val.i.i, 0
  br i1 %i.et, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.eu = mul nuw i64 %.val.i.i, 136
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ee, i64 noundef %i.eu, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !208479, !inline_history !620
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

.body30.i:                                        ; preds = %bb.av, %.body.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %.pn24.pn.i = phi { ptr, i32 } [ %.pn24.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ %i.en, %.body.i.i ], [ %i.en, %bb.av ] ; 2 uses
  %cond.i = phi i1 [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ true, %.body.i.i ], [ true, %bb.av ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.o) #73
          to label %bb.ax unwind label %bb.y, !noalias !208453

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.aw, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !208453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !208453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !208453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  ret void

bb.ax:                                            ; preds = %.body30.i
  br i1 %cond.i, label %.body32.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !208480)
  %i.ev = load ptr, ptr %i.p, align 8, !alias.scope !208480, !noalias !208453, !noundef !416 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %.noexc32.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ex = atomicrmw sub ptr %i.ev, i64 1 release, align 8, !noalias !208481
  %i.ey = icmp eq i64 %i.ex, 1
  br i1 %i.ey, label %bb.ba, label %.noexc32.i

bb.ba:                                            ; preds = %bb.az
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %.noexc32.i unwind label %bb.y, !noalias !208453

.noexc32.i:                                       ; preds = %bb.ba, %bb.az, %bb.ay
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q) #73
          to label %.body32.thread unwind label %bb.y, !noalias !208453

end_hunk_2
begin_hunk_3_@_RNvMs2_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB5_20ManifestBatchBuilder6finish:bb.a
  br label %bb.cg

bb.g:                                             ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.thread87

bb.h:                                             ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 1, ptr %i.s, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 1, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.au, ptr noundef nonnull align 8 dereferenceable(120) %i.y, i64 120, i1 false)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !210818
  %i.av = tail call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !210818 ; 4 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.i, label %bb.l, !prof !448

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #72
          to label %.noexc39 unwind label %bb.j

.noexc39:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtBI_5types17GenericStringTypelEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.au)
          to label %.thread87 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.av, ptr noundef nonnull align 8 dereferenceable(136) %i.s, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store ptr %i.av, ptr %i.z, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @3307, ptr %i.az, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.071)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.072.0.copyload = load i64, ptr %i.ba, align 8 ; 6 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !416, !noundef !416 ; 5 uses
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.573.0.copyload = load i64, ptr %.sroa.573.0..sroa_idx, align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210819)
  %i.bb = icmp ult i64 %.sroa.573.0.copyload, 576460752303423488
  tail call void @llvm.assume(i1 %i.bb)
  %.idx.i = shl nuw nsw i64 %.sroa.573.0.copyload, 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !210820
  %i.bd = shl nuw nsw i64 %.sroa.573.0.copyload, 2 ; 2 uses
  %i.be = add nuw nsw i64 %i.bd, 4                ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210821)
  %i.bf = and i64 %i.be, 60
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %.split.i.i, label %bb.m

.thread.i:                                        ; preds = %bb.o, %bb.n
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = icmp eq i64 %.sroa.072.0.copyload, 0
  br i1 %i.bi, label %.body29, label %bb.ax

bb.m:                                             ; preds = %bb.l
  %reass.sub.i49.i = and i64 %i.be, 4611686018427387840
  %i.bj = add nuw nsw i64 %reass.sub.i49.i, 64    ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.bj, %i.bd
  br i1 %.not.i, label %.split.i.i, label %bb.n, !prof !439

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3177, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3179) #72
          to label %.noexc51.i unwind label %.thread.i, !noalias !210820

.noexc51.i:                                       ; preds = %bb.n
  unreachable

.split.i.i:                                       ; preds = %bb.m, %bb.l
  %.sroa.4.0.i50.i = phi i64 [ %i.be, %bb.l ], [ %i.bj, %bb.m ] ; 3 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !210822
  %i.bk = tail call noundef align 128 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.i50.i, i64 noundef 128) #68, !noalias !210822 ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.o, label %bb.q, !prof !426

bb.o:                                             ; preds = %.split.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef %.sroa.4.0.i50.i) #72
          to label %.noexc53.i unwind label %.thread.i, !noalias !210820

.noexc53.i:                                       ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.z
  unreachable

bb.q:                                             ; preds = %.split.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store ptr %i.bk, ptr %i.bm, align 16, !alias.scope !210821, !noalias !210820
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 6 uses
  store i64 128, ptr %i.j, align 16, !alias.scope !210821, !noalias !210820
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i64 %.sroa.4.0.i50.i, ptr %i.bo, align 8, !alias.scope !210821, !noalias !210820
  store i32 0, ptr %i.bk, align 128, !noalias !210820
  store i64 4, ptr %i.bn, align 8, !alias.scope !210823, !noalias !210820
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !210820
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr inttoptr (i64 128 to ptr), ptr %i.bp, align 16, !alias.scope !210824, !noalias !210820
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 7 uses
  store i64 0, ptr %i.bq, align 8, !alias.scope !210824, !noalias !210820
  store i64 128, ptr %i.i, align 16, !alias.scope !210824, !noalias !210820
  %i.br = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store i64 0, ptr %i.br, align 8, !alias.scope !210824, !noalias !210820
  %i.bs = icmp eq i64 %.sroa.573.0.copyload, 0
  br i1 %i.bs, label %._crit_edge.i, label %.lr.ph.i

bb.r:                                             ; preds = %bb.al
  %i.bt = shl nuw i64 %.sroa.072.0.copyload, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !210825
  br label %bb.av

._crit_edge.i:                                    ; preds = %bb.au, %bb.q
  %i.bu = icmp eq i64 %.sroa.072.0.copyload, 0
  br i1 %i.bu, label %bb.u, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  %i.bv = shl nuw i64 %.sroa.072.0.copyload, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %i.bv, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !210826
  br label %bb.u

bb.t:                                             ; preds = %bb.z
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.u:                                             ; preds = %bb.s, %._crit_edge.i
  %i.bx = load i64, ptr %i.bq, align 8, !noalias !210820, !noundef !416
  %i.by = icmp ult i64 %i.bx, 2147483648
  br i1 %i.by, label %bb.v, label %bb.z, !prof !439

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !210820
  %i.bz = load ptr, ptr %i.bm, align 16, !noalias !210820, !nonnull !416, !noundef !416 ; 3 uses
  %i.ca = load i64, ptr %i.bn, align 8, !noalias !210820, !noundef !416 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !210820
  store i64 1, ptr %i.e, align 8, !noalias !210820
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.cb, align 8, !noalias !210820
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.bz, ptr %i.cc, align 8, !noalias !210820
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.ca, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !210820
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !210820
  %.sroa.514.sroa.4.0..sroa.514.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cd = load <2 x i64>, ptr %i.j, align 16, !noalias !210820
  store <2 x i64> %i.cd, ptr %.sroa.514.sroa.4.0..sroa.514.0..sroa_idx.sroa_idx.i, align 8, !noalias !210820
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !210827
  %i.ce = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !210827 ; 5 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.w, label %bb.aa, !prof !448

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
          to label %.noexc64.i unwind label %bb.x, !noalias !210820

.noexc64.i:                                       ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #73
          to label %bb.av unwind label %bb.y, !noalias !210820

bb.y:                                             ; preds = %bb.x
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !210820
  unreachable

bb.z:                                             ; preds = %bb.u
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @320, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #72
          to label %bb.p unwind label %bb.t, !noalias !210820

bb.aa:                                            ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ce, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !noalias !210820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !210820
  store ptr %i.ce, ptr %i.h, align 8, !noalias !210820
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.bz, ptr %i.ci, align 8, !noalias !210820
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.ca, ptr %i.cj, align 8, !noalias !210820
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !210820
  %i.ck = ptrtoint ptr %i.bz to i64               ; 3 uses
  %2 = add i64 %i.ck, 3
  %i.cl = and i64 %2, -4                          ; 2 uses
  %3 = sub i64 %i.cl, %i.ck
  %4 = icmp ult i64 %3, 4
  call void @llvm.assume(i1 %4)
  %i.cm = icmp eq i64 %i.cl, %i.ck
  br i1 %i.cm, label %bb.ae, label %.invoke.i.i, !prof !439

bb.ab:                                            ; preds = %.invoke.i.i
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !noalias !210828
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.ac, label %bb.av

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.av unwind label %bb.ad, !noalias !210829

.invoke.i.i:                                      ; preds = %bb.aa
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !210830, !noundef !416
  %.not.i.i = icmp eq ptr %i.cr, null             ; 3 uses
  %.2.i.i = select i1 %.not.i.i, ptr @4483, ptr @4485
  %.1.i.i = select i1 %.not.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i.i, ptr @4482, ptr @4484
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #72
          to label %.cont.i.i unwind label %bb.ab, !noalias !210830

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !210829
  unreachable

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !210820
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !210820
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 24, i64 24, i1 false), !noalias !210820
  %i.ct = load ptr, ptr %i.bp, align 16, !noalias !210820, !nonnull !416, !noundef !416 ; 2 uses
  %i.cu = load i64, ptr %i.bq, align 8, !noalias !210820, !noundef !416 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !210820
  store i64 1, ptr %i.d, align 8, !noalias !210820
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.cv, align 8, !noalias !210820
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.ct, ptr %i.cw, align 8, !noalias !210820
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.cu, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !210820
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.524.0..sroa_idx.i, align 8, !noalias !210820
  %.sroa.524.sroa.4.0..sroa.524.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.cx = load <2 x i64>, ptr %i.i, align 16, !noalias !210820
  store <2 x i64> %i.cx, ptr %.sroa.524.sroa.4.0..sroa.524.0..sroa_idx.sroa_idx.i, align 8, !noalias !210820
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !210831
  %i.cy = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !210831 ; 3 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.af, label %bb.az, !prof !448

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
          to label %.noexc68.i unwind label %bb.ag, !noalias !210820

.noexc68.i:                                       ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d) #73
          to label %.body.i unwind label %bb.ah, !noalias !210820

bb.ah:                                            ; preds = %bb.ag
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !210820
  unreachable

.body.i:                                          ; preds = %bb.ag
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #73
          to label %bb.aj unwind label %bb.ai, !noalias !210820

bb.ai:                                            ; preds = %bb.aw, %bb.av, %bb.ak, %.body.i
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !210820
  unreachable

bb.aj:                                            ; preds = %.body.i
  call void @llvm.experimental.noalias.scope.decl(metadata !210832)
  call void @llvm.experimental.noalias.scope.decl(metadata !210833)
  call void @llvm.experimental.noalias.scope.decl(metadata !210834)
  call void @llvm.experimental.noalias.scope.decl(metadata !210835)
  call void @llvm.experimental.noalias.scope.decl(metadata !210836)
  %i.dd = load ptr, ptr %i.g, align 8, !alias.scope !210837, !noalias !210820, !nonnull !416, !noundef !416
  %i.de = atomicrmw sub ptr %i.dd, i64 1 release, align 8, !noalias !210838
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.ak, label %.body29

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body29 unwind label %bb.ai, !noalias !210820

.loopexit.i:                                      ; preds = %bb.at, %.noexc37.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp.i:                             ; preds = %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.dg = icmp eq i64 %.sroa.072.0.copyload, 0
  br i1 %i.dg, label %bb.av, label %bb.r

.lr.ph.i:                                         ; preds = %bb.q, %bb.au
  %.sroa.590.0114.i = phi ptr [ %i.dh, %bb.au ], [ %.sroa.4.0.copyload, %bb.q ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.590.0114.i, i64 16 ; 2 uses
  %i.di = load ptr, ptr %.sroa.590.0114.i, align 8, !noalias !210839, !nonnull !416, !noundef !416
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.590.0114.i, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !210839, !noundef !416 ; 3 uses
  %i.dl = load i64, ptr %i.bq, align 8, !alias.scope !210840, !noalias !210820, !noundef !416 ; 3 uses
  %i.dm = add i64 %i.dl, %i.dk                    ; 6 uses
  %i.dn = icmp ult i64 %i.dm, %i.dl
  br i1 %i.dn, label %.invoke.i, label %bb.am, !prof !426

bb.am:                                            ; preds = %.lr.ph.i
  %i.do = load i64, ptr %i.br, align 8, !alias.scope !210840, !noalias !210820, !noundef !416 ; 2 uses
  %i.dp = icmp ugt i64 %i.dm, %i.do
  br i1 %i.dp, label %bb.an, label %bb.ap, !prof !426

.invoke.i:                                        ; preds = %bb.as, %bb.ap, %bb.ao, %.lr.ph.i
  %i.dq = phi ptr [ @3180, %bb.ap ], [ @3180, %.lr.ph.i ], [ @3177, %bb.ao ], [ @3177, %bb.as ]
  %i.dr = phi i64 [ 22, %bb.ap ], [ 22, %.lr.ph.i ], [ 35, %bb.ao ], [ 35, %bb.as ]
  %i.ds = phi ptr [ @3181, %bb.ap ], [ @3181, %.lr.ph.i ], [ @3179, %bb.ao ], [ @3179, %bb.as ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dq, i64 noundef %i.dr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ds) #72
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !210820

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.dt = and i64 %i.dm, 63
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %.noexc37.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %reass.sub.i.i = and i64 %i.dm, -64
  %i.dv = add i64 %reass.sub.i.i, 64              ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.dm
  br i1 %i.dw, label %.invoke.i, label %.noexc37.i

.noexc37.i:                                       ; preds = %bb.ao, %bb.an
  %.sroa.4.0.i.i = phi i64 [ %i.dm, %bb.an ], [ %i.dv, %bb.ao ]
  %i.dx = shl i64 %i.do, 1
  %.sroa.0.0.i71.i = call noundef i64 @llvm.umax.i64(i64 %i.dx, i64 %.sroa.4.0.i.i)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %.sroa.0.0.i71.i)
          to label %.noexc37._crit_edge.i unwind label %.loopexit.i, !noalias !210820

.noexc37._crit_edge.i:                            ; preds = %.noexc37.i
  %.pre.i = load i64, ptr %i.bq, align 8, !noalias !210820
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc37._crit_edge.i, %bb.am
  %i.dy = phi i64 [ %.pre.i, %.noexc37._crit_edge.i ], [ %i.dl, %bb.am ]
  %i.dz = load ptr, ptr %i.bp, align 16, !noalias !210820, !nonnull !416, !noundef !416
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ea, ptr nonnull align 1 %i.di, i64 %i.dk, i1 false), !noalias !210820
  %i.eb = load i64, ptr %i.bq, align 8, !noalias !210820, !noundef !416
  %i.ec = add i64 %i.eb, %i.dk                    ; 2 uses
  store i64 %i.ec, ptr %i.bq, align 8, !noalias !210820
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = load i64, ptr %i.bn, align 8, !alias.scope !210841, !noalias !210820, !noundef !416 ; 3 uses
  %i.ef = add i64 %i.ee, 4                        ; 5 uses
  %i.eg = icmp ugt i64 %i.ee, -5
  br i1 %i.eg, label %.invoke.i, label %bb.aq, !prof !426

bb.aq:                                            ; preds = %bb.ap
  %i.eh = load i64, ptr %i.bo, align 8, !alias.scope !210841, !noalias !210820, !noundef !416 ; 2 uses
  %i.ei = icmp ugt i64 %i.ef, %i.eh
  br i1 %i.ei, label %bb.ar, label %bb.au, !prof !426

bb.ar:                                            ; preds = %bb.aq
  %i.ej = and i64 %i.ef, 63
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %reass.sub.i.i72.i = and i64 %i.ef, -64
  %i.el = add i64 %reass.sub.i.i72.i, 64          ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ef
  br i1 %i.em, label %.invoke.i, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.4.0.i.i73.i = phi i64 [ %i.ef, %bb.ar ], [ %i.el, %bb.as ]
  %i.en = shl i64 %i.eh, 1
  %.sroa.0.0.i.i74.i = call noundef i64 @llvm.umax.i64(i64 %i.en, i64 %.sroa.4.0.i.i73.i)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %.sroa.0.0.i.i74.i)
end_hunk_3
begin_hunk_4_@_RNvMsK_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen7MessageNtB5_7Message26header_as_dictionary_batch:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ae
  %.sroa.0.0.copyload.i.i4 = load i32, ptr %i.ai, align 1, !alias.scope !215197, !noalias !215199
  %i.aj = zext i32 %.sroa.0.0.copyload.i.i4 to i64
  %i.ak = add i64 %i.ae, %i.aj
  store ptr %i.c, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ak, ptr %.sroa.516.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsfR8GmIBoxTX_21lance_namespace_impls.exit.i2
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %_RINvMNtCsl5zbFZW529v_11flatbuffers5tableNtB3_5Table3getNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message13MessageHeaderECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 16 ptr @_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE13new_uninit_inCsfR8GmIBoxTX_21lance_namespace_impls() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68
  %i.a = tail call noalias noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 16) #68 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !426

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #72
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsfR8GmIBoxTX_21lance_namespace_impls7connectNtB4_14ConnectBuilder10properties(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB7_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBP_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendTBP_BP_EE6extendINtNtNtNtB1A_11collections4hash3map7HashMapBP_BP_EECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(48) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(48) %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsfR8GmIBoxTX_21lance_namespace_impls7connect14ConnectBuilderEBF_(ptr noalias noundef align 8 dereferenceable(96) %1) #73
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsfR8GmIBoxTX_21lance_namespace_impls7connectNtB4_14ConnectBuilder16context_provider(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215206)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !215206, !noundef !416 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsfR8GmIBoxTX_21lance_namespace_impls7context22DynamicContextProviderEL_EEEB1A_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !215207
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsfR8GmIBoxTX_21lance_namespace_impls7context22DynamicContextProviderEL_EEEB1A_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCsfR8GmIBoxTX_21lance_namespace_impls7context22DynamicContextProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsfR8GmIBoxTX_21lance_namespace_impls7context22DynamicContextProviderEL_EEEB1A_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr %2, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %3, ptr %i.g, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsfR8GmIBoxTX_21lance_namespace_impls7connect14ConnectBuilderEBF_(ptr noalias noundef align 8 dereferenceable(96) %1) #73
          to label %bb.f unwind label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsfR8GmIBoxTX_21lance_namespace_impls7context22DynamicContextProviderEL_EEEB1A_.exit: ; preds = %bb.b, %bb.a, %bb.c
  store ptr %2, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %3, ptr %i.h, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsfR8GmIBoxTX_21lance_namespace_impls7connectNtB4_14ConnectBuilder7session(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96) %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215214)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !215214, !noundef !416 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCshkPeWWG1flk_5lance7session7SessionEEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !215215
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCshkPeWWG1flk_5lance7session7SessionEEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCshkPeWWG1flk_5lance7session7SessionE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCshkPeWWG1flk_5lance7session7SessionEEECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr %2, ptr %i.a, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsfR8GmIBoxTX_21lance_namespace_impls7connect14ConnectBuilderEBF_(ptr noalias noundef align 8 dereferenceable(96) %1) #73
          to label %bb.f unwind label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCshkPeWWG1flk_5lance7session7SessionEEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.b, %bb.a, %bb.c
  store ptr %2, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE3newCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = shl nuw i64 %2, 2
  %i.c = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.c, label %.invoke, label %bb.b, !prof !426

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.d, label %.invoke, label %bb.c, !prof !426

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @320, %bb.a ], [ @3432, %bb.b ]
  %i.g = phi ptr [ @3435, %bb.a ], [ @3434, %bb.b ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #72
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.q, %bb.h ], [ %i.q, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !215237)
  call void @llvm.experimental.noalias.scope.decl(metadata !215238)
  call void @llvm.experimental.noalias.scope.decl(metadata !215239)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !215240, !nonnull !416, !noundef !416
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !215240
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215242)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !215242, !noalias !215241, !noundef !416
  %i.n = ptrtoint ptr %i.m to i64                 ; 3 uses
  %4 = add i64 %i.n, 3
  %i.o = and i64 %4, -4                           ; 2 uses
  %5 = sub i64 %i.o, %i.n
  %6 = icmp ult i64 %5, 4
  tail call void @llvm.assume(i1 %6)
  %i.p = icmp eq i64 %i.o, %i.n
  br i1 %i.p, label %bb.j, label %.invoke.i, !prof !439

bb.g:                                             ; preds = %.invoke.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !215243
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.i, !noalias !215241

.invoke.i:                                        ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !215242, !noalias !215241, !nonnull !416, !noundef !416 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !215244, !noundef !416
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @4483, ptr @4485
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @4482, ptr @4484
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #72
          to label %.cont.i unwind label %bb.g, !noalias !215244

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !215241
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !215244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215247)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !215248, !nonnull !416, !noundef !416
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !215248
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsfR8GmIBoxTX_21lance_namespace_impls.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsfR8GmIBoxTX_21lance_namespace_impls.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsfR8GmIBoxTX_21lance_namespace_impls.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferxE3newCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = shl nuw i64 %2, 3
  %i.c = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.c, label %.invoke, label %bb.b, !prof !426

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.d, label %.invoke, label %bb.c, !prof !426

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @320, %bb.a ], [ @3432, %bb.b ]
  %i.g = phi ptr [ @3435, %bb.a ], [ @3434, %bb.b ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #72
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.q, %bb.h ], [ %i.q, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !215270)
  call void @llvm.experimental.noalias.scope.decl(metadata !215271)
  call void @llvm.experimental.noalias.scope.decl(metadata !215272)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !215273, !nonnull !416, !noundef !416
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !215273
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215275)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !215275, !noalias !215274, !noundef !416
  %i.n = ptrtoint ptr %i.m to i64                 ; 3 uses
  %4 = add i64 %i.n, 7
  %i.o = and i64 %4, -8                           ; 2 uses
  %5 = sub i64 %i.o, %i.n
  %6 = icmp ult i64 %5, 8
  tail call void @llvm.assume(i1 %6)
  %i.p = icmp eq i64 %i.o, %i.n
  br i1 %i.p, label %bb.j, label %.invoke.i, !prof !439

bb.g:                                             ; preds = %.invoke.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !215276
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.i, !noalias !215274

.invoke.i:                                        ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !215275, !noalias !215274, !nonnull !416, !noundef !416 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !215277, !noundef !416
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @4483, ptr @4485
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @4482, ptr @4484
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #72
          to label %.cont.i unwind label %bb.g, !noalias !215277

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !215274
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !215277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215280)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !215281, !nonnull !416, !noundef !416
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !215281
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsfR8GmIBoxTX_21lance_namespace_impls.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsfR8GmIBoxTX_21lance_namespace_impls.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsfR8GmIBoxTX_21lance_namespace_impls.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE10new_scalarCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 8, i64 24, i1 false)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68
  %i.c = tail call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #68 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !448

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #72
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.j, %bb.e ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #73
          to label %common.resume unwind label %bb.g

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i32 %1, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !215290
  store i64 1, ptr %i.a, align 8, !noalias !215290
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8, !noalias !215290
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.g, align 8, !noalias !215290
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 4, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !215290
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !215290
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 4, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !215290
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 4, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !215290
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !215291
  %i.h = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !215291 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %_RNvMs1_NtCs4ytUTZt2Gw9_11arrow_array6scalarINtB5_6ScalarINtNtNtB7_5array15primitive_array14PrimitiveArrayNtNtB7_5types10UInt32TypeEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !448

bb.d:                                             ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
          to label %.noexc.i unwind label %bb.e, !noalias !215290

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #73
          to label %.body unwind label %bb.f, !noalias !215290

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !215290
  unreachable

common.resume:                                    ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body

_RNvMs1_NtCs4ytUTZt2Gw9_11arrow_array6scalarINtB5_6ScalarINtNtNtB7_5array15primitive_array14PrimitiveArrayNtNtB7_5types10UInt32TypeEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !215290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !215290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i8 8, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false), !alias.scope !215292
  %.sroa.4.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx7, align 8, !alias.scope !215292
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx8, align 8, !alias.scope !215292
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 4, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !215292
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !215292
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void

bb.g:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE5sliceCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [40 x i8], align 8            ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215328)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !215329
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !215328, !noalias !215330, !nonnull !416, !noundef !416 ; 2 uses
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !215329
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !215328, !noalias !215330, !noundef !416
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !215328, !noalias !215330, !noundef !416
  store ptr %i.g, ptr %i.b, align 8, !noalias !215329
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.n, align 8, !noalias !215329
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.m, ptr %i.o, align 8, !noalias !215329
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215331)
  %i.p = shl nuw i64 %2, 2
  %i.q = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.q, label %.invoke.i.i, label %bb.c, !prof !426

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.r, label %.invoke.i.i, label %bb.d, !prof !426

bb.d:                                             ; preds = %bb.c
  %i.s = shl nuw i64 %3, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !215332
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.p, i64 noundef %i.s)
          to label %bb.g unwind label %bb.e, !noalias !215333

.invoke.i.i:                                      ; preds = %bb.c, %bb.b
  %i.t = phi ptr [ @320, %bb.b ], [ @3432, %bb.c ]
  %i.u = phi ptr [ @3435, %bb.b ], [ @3434, %bb.c ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u) #72
          to label %.cont.i.i unwind label %bb.e, !noalias !215332

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.ae, %bb.i ], [ %i.ae, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !215334)
  call void @llvm.experimental.noalias.scope.decl(metadata !215335)
  call void @llvm.experimental.noalias.scope.decl(metadata !215336)
  %i.w = load ptr, ptr %i.b, align 8, !alias.scope !215337, !noalias !215333, !nonnull !416, !noundef !416
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !215338
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.f, label %.body

bb.f:                                             ; preds = %.body.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.m, !noalias !215333

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !215339)
  call void @llvm.experimental.noalias.scope.decl(metadata !215340)
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !215340, !noalias !215341, !noundef !416
  %i.ab = ptrtoint ptr %i.aa to i64               ; 3 uses
  %4 = add i64 %i.ab, 3
  %i.ac = and i64 %4, -4                          ; 2 uses
  %5 = sub i64 %i.ac, %i.ab
  %6 = icmp ult i64 %5, 4
  call void @llvm.assume(i1 %6)
  %i.ad = icmp eq i64 %i.ac, %i.ab
  br i1 %i.ad, label %bb.k, label %.invoke.i.i.i, !prof !439

bb.h:                                             ; preds = %.invoke.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !215342
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.i, label %.body.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i unwind label %bb.j, !noalias !215343

.invoke.i.i.i:                                    ; preds = %bb.g
  %i.ah = load ptr, ptr %i.a, align 8, !alias.scope !215340, !noalias !215341, !nonnull !416, !noundef !416 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !215344, !noundef !416
  %.not.i.i.i = icmp eq ptr %i.aj, null           ; 3 uses
  %.2.i.i.i = select i1 %.not.i.i.i, ptr @4483, ptr @4485
  %.1.i.i.i = select i1 %.not.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i = select i1 %.not.i.i.i, ptr @4482, ptr @4484
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i, ptr noundef nonnull %.1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i) #72
          to label %.cont.i.i.i unwind label %bb.h, !noalias !215344

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !215343
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !215345, !noalias !215346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !215332
  call void @llvm.experimental.noalias.scope.decl(metadata !215347)
  call void @llvm.experimental.noalias.scope.decl(metadata !215348)
  call void @llvm.experimental.noalias.scope.decl(metadata !215349)
  %i.al = load ptr, ptr %i.b, align 8, !alias.scope !215350, !noalias !215333, !nonnull !416, !noundef !416
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !215351
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o

bb.m:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !215333
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.s, %bb.t, %bb.o, %bb.f, %.body.i.i
  %.pn = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.ap, %bb.o ], [ %eh.lpad-body.i.i, %bb.f ], [ %i.au, %bb.t ], [ %i.au, %bb.s ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #73
          to label %bb.w unwind label %bb.v

bb.o:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !215329
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !noundef !416
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aq, i64 noundef %2, i64 noundef %3)
          to label %bb.u unwind label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.u
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload1, %bb.u ], [ null, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.0.0, ptr %i.at, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.s:                                             ; preds = %bb.q
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !215352)
  call void @llvm.experimental.noalias.scope.decl(metadata !215353)
  call void @llvm.experimental.noalias.scope.decl(metadata !215354)
  call void @llvm.experimental.noalias.scope.decl(metadata !215355)
  %i.av = load ptr, ptr %i.d, align 8, !alias.scope !215356, !nonnull !416, !noundef !416
  %i.aw = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !215356
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.t, label %.body

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.v

bb.u:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1 = load ptr, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.v:                                             ; preds = %bb.t, %.body
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.w:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCsfR8GmIBoxTX_21lance_namespace_impls(ptr nofree readonly captures(none) %.32.val, i64 %.40.val, i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.c, align 8
  %i.d = lshr i64 %.40.val, 2                     ; 2 uses
  %i.e = icmp ult i64 %0, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !439

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @3440, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3441) #72
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMs_NtNtCseXbohGRa9jr_5tokio4task8join_setINtB4_7JoinSetINtNtCscI6d9CVNmLh_4core6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE6insertCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 9 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs_NtNtNtCseXbohGRa9jr_5tokio7runtime4task3rawNtB4_7RawTask7ref_inc(ptr noundef nonnull %1)
          to label %bb.b unwind label %bb.ag

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215383)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !215383, !noundef !416
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !alias.scope !215383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !215383
  %i.j = load ptr, ptr %0, align 8, !alias.scope !215383, !nonnull !416, !noundef !416 ; 6 uses
  %i.k = atomicrmw add ptr %i.j, i64 1 monotonic, align 8, !noalias !215383
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !215383
  store i64 1, ptr %i.c, align 8, !noalias !215383
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.m, align 8, !noalias !215383
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.j, ptr %i.n, align 8, !noalias !215383
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !215383
  store ptr %1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !215383
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 1, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !215383
end_hunk_4
begin_hunk_5_@_RNvMsc_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB5_17ManifestNamespace17string_list_array:bb.a
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.q, label %bb.t, !prof !448

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #72
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.ag) #73
          to label %.body.thread unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.t:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bx, ptr noundef nonnull align 8 dereferenceable(128) %i.ag, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.experimental.noalias.scope.decl(metadata !216230)
  call void @llvm.experimental.noalias.scope.decl(metadata !216231)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ak, ptr noundef nonnull align 8 dereferenceable(192) %i.aj, i64 24, i1 false), !alias.scope !216232
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ak, i64 128 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cb, ptr noundef nonnull align 8 dereferenceable(56) %i.bs, i64 56, i1 false), !alias.scope !216232
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.cc, ptr noundef nonnull align 8 dereferenceable(104) %i.br, i64 104, i1 false), !alias.scope !216232
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ak, i64 184 ; 3 uses
  store ptr %i.bx, ptr %i.cd, align 8, !alias.scope !216230, !noalias !216231
  call void @llvm.experimental.noalias.scope.decl(metadata !216233)
  %i.ce = load ptr, ptr %i.bt, align 8, !alias.scope !216234, !noalias !216230, !noundef !416 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array7builder20generic_list_builderINtB5_18GenericListBuilderlINtNtB7_21generic_bytes_builder18GenericByteBuilderINtNtB9_5types17GenericStringTypelEEE10with_fieldINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !noalias !216235
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.v, label %_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array7builder20generic_list_builderINtB5_18GenericListBuilderlINtNtB7_21generic_bytes_builder18GenericByteBuilderINtNtB9_5types17GenericStringTypelEEE10with_fieldINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.v:                                             ; preds = %bb.u
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bt)
  br label %_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array7builder20generic_list_builderINtB5_18GenericListBuilderlINtNtB7_21generic_bytes_builder18GenericByteBuilderINtNtB9_5types17GenericStringTypelEEE10with_fieldINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array7builder20generic_list_builderINtB5_18GenericListBuilderlINtNtB7_21generic_bytes_builder18GenericByteBuilderINtNtB9_5types17GenericStringTypelEEE10with_fieldINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.v, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %.idx = mul nuw nsw i64 %2, 24
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.cj = icmp eq i64 %2, 0
  br i1 %i.cj, label %._crit_edge70, label %.lr.ph69

.lr.ph69:                                         ; preds = %_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array7builder20generic_list_builderINtB5_18GenericListBuilderlINtNtB7_21generic_bytes_builder18GenericByteBuilderINtNtB9_5types17GenericStringTypelEEE10with_fieldINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ak, i64 72 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ak, i64 104 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ak, i64 96 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ak, i64 88 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ak, i64 64 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ak, i64 160 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ak, i64 152 ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ak, i64 136 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ak, i64 144 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ak, i64 168 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph69, %_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array7builder20generic_list_builderINtB5_18GenericListBuilderlINtNtB7_21generic_bytes_builder18GenericByteBuilderINtNtB9_5types17GenericStringTypelEEE6appendCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.0.068 = phi ptr [ %1, %.lr.ph69 ], [ %i.dc, %_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array7builder20generic_list_builderINtB5_18GenericListBuilderlINtNtB7_21generic_bytes_builder18GenericByteBuilderINtNtB9_5types17GenericStringTypelEEE6appendCsfR8GmIBoxTX_21lance_namespace_impls.exit ] ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.068, i64 24 ; 2 uses
  %i.dd = load i64, ptr %.sroa.0.068, align 8, !range !421, !noundef !416
  %.not = icmp eq i64 %i.dd, -1
  br i1 %.not, label %bb.cr, label %bb.cq

._crit_edge70:                                    ; preds = %_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array7builder20generic_list_builderINtB5_18GenericListBuilderlINtNtB7_21generic_bytes_builder18GenericByteBuilderINtNtB9_5types17GenericStringTypelEEE6appendCsfR8GmIBoxTX_21lance_namespace_impls.exit, %_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array7builder20generic_list_builderINtB5_18GenericListBuilderlINtNtB7_21generic_bytes_builder18GenericByteBuilderINtNtB9_5types17GenericStringTypelEEE10with_fieldINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !216236)
  call void @llvm.experimental.noalias.scope.decl(metadata !216237)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !216238
  %i.de = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !216239
  invoke fastcc void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE6finishCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.de, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.cc)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %._crit_edge70
  store i64 1, ptr %i.s, align 8, !noalias !216239
  %i.df = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 1, ptr %i.df, align 8, !noalias !216239
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !216240
  %i.dg = call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !216240 ; 3 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.x, label %_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB5_18GenericByteBuilderINtNtB9_5types17GenericStringTypelEENtB7_12ArrayBuilder6finishCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, !prof !448

bb.x:                                             ; preds = %.noexc13
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #72
          to label %.noexc.i.i unwind label %bb.y, !noalias !216236

.noexc.i.i:                                       ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtBI_5types17GenericStringTypelEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.de)
          to label %.body14 unwind label %bb.z, !noalias !216236

bb.z:                                             ; preds = %bb.y
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !216236
  unreachable

_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB5_18GenericByteBuilderINtNtB9_5types17GenericStringTypelEENtB7_12ArrayBuilder6finishCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %.noexc13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.dg, ptr noundef nonnull align 8 dereferenceable(136) %i.s, i64 136, i1 false), !noalias !216236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !216239
  store ptr %i.dg, ptr %i.ad, align 16, !noalias !216238
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @3307, ptr %i.dk, align 8, !noalias !216238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !216238
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.cb)
          to label %bb.ab unwind label %bb.aa, !noalias !216236

bb.aa:                                            ; preds = %_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB5_18GenericByteBuilderINtNtB9_5types17GenericStringTypelEENtB7_12ArrayBuilder6finishCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.ab:                                            ; preds = %_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB5_18GenericByteBuilderINtNtB9_5types17GenericStringTypelEENtB7_12ArrayBuilder6finishCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !216238
  %.sroa.0.0.copyload.i = load i64, ptr %i.ak, align 8, !alias.scope !216237, !noalias !216236 ; 2 uses
  %.sroa.4.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx37.i, align 8, !alias.scope !216237, !noalias !216236, !nonnull !416, !noundef !416 ; 3 uses
  %.sroa.5.0..sroa_idx38.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 4 uses
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx38.i, align 8, !alias.scope !216237, !noalias !216236 ; 2 uses
  store i64 0, ptr %i.ak, align 8, !alias.scope !216237, !noalias !216236
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx37.i, align 8, !alias.scope !216237, !noalias !216236
  store i64 0, ptr %.sroa.5.0..sroa_idx38.i, align 8, !alias.scope !216237, !noalias !216236
  %i.dm = icmp ult i64 %.sroa.5.0.copyload.i, 2305843009213693952
  call void @llvm.assume(i1 %i.dm)
  %i.dn = icmp samesign ult i64 %.sroa.0.0.copyload.i, 2305843009213693952
  %i.do = shl nuw nsw i64 %.sroa.0.0.copyload.i, 2
  %i.dp = shl nuw nsw i64 %.sroa.5.0.copyload.i, 2 ; 2 uses
  call void @llvm.assume(i1 %i.dn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !216238
  store i64 1, ptr %i.v, align 8, !noalias !216238
  %i.dq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 1, ptr %i.dq, align 8, !noalias !216238
  %i.dr = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %.sroa.4.0.copyload.i, ptr %i.dr, align 8, !noalias !216238
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 %i.dp, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !216238
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr null, ptr %.sroa.57.0..sroa_idx.i, align 8, !noalias !216238
  %.sroa.57.sroa.4.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i64 4, ptr %.sroa.57.sroa.4.0..sroa.57.0..sroa_idx.sroa_idx.i, align 8, !noalias !216238
  %.sroa.57.sroa.5.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i64 %i.do, ptr %.sroa.57.sroa.5.0..sroa.57.0..sroa_idx.sroa_idx.i, align 8, !noalias !216238
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !216241
  %i.ds = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !216241 ; 5 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.ac, label %bb.af, !prof !448

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
          to label %.noexc.i unwind label %bb.ad, !noalias !216236

.noexc.i:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.v) #73
          to label %bb.cl unwind label %bb.ae, !noalias !216236

bb.ae:                                            ; preds = %bb.ad
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !216236
  unreachable

bb.af:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ds, ptr noundef nonnull align 8 dereferenceable(56) %i.v, i64 56, i1 false), !noalias !216236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !216238
  store ptr %i.ds, ptr %i.ab, align 8, !noalias !216238
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %i.dw, align 8, !noalias !216238
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %i.dp, ptr %i.dx, align 8, !noalias !216238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !216238
  %i.dy = ptrtoint ptr %.sroa.4.0.copyload.i to i64 ; 3 uses
  %5 = add i64 %i.dy, 3
  %i.dz = and i64 %5, -4                          ; 2 uses
  %6 = sub i64 %i.dz, %i.dy
  %7 = icmp ult i64 %6, 4
  call void @llvm.assume(i1 %7)
  %i.ea = icmp eq i64 %i.dz, %i.dy
  br i1 %i.ea, label %bb.aj, label %.invoke.i.i, !prof !439

bb.ag:                                            ; preds = %.invoke.i.i
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = atomicrmw sub ptr %i.ds, i64 1 release, align 8, !noalias !216242
  %i.ed = icmp eq i64 %i.ec, 1
  br i1 %i.ed, label %bb.ah, label %bb.cl

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.cl unwind label %bb.ai, !noalias !216243

.invoke.i.i:                                      ; preds = %bb.af
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !216244, !noundef !416
  %.not.i.i = icmp eq ptr %i.ef, null             ; 3 uses
  %.2.i.i = select i1 %.not.i.i, ptr @4483, ptr @4485
  %.1.i.i = select i1 %.not.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i.i, ptr @4482, ptr @4484
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #72
          to label %.cont.i.i unwind label %bb.ag, !noalias !216244

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !216243
  unreachable

.body19.thread74.i:                               ; preds = %bb.ap, %bb.ao, %bb.an, %bb.ak
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body19.thread69.i

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !216238
  %i.eh = load i64, ptr %.sroa.5.0..sroa_idx38.i, align 8, !alias.scope !216245, !noalias !216236, !noundef !416 ; 3 uses
  %i.ei = load i64, ptr %i.ak, align 8, !range !419, !alias.scope !216245, !noalias !216236, !noundef !416
  %i.ej = icmp eq i64 %i.eh, %i.ei
  br i1 %i.ej, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.ak)
          to label %bb.al unwind label %.body19.thread74.i, !noalias !216236

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ek = load ptr, ptr %.sroa.4.0..sroa_idx37.i, align 8, !alias.scope !216245, !noalias !216236, !nonnull !416, !noundef !416
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.eh
  store i32 0, ptr %i.el, align 4, !noalias !216236
  %i.em = add i64 %i.eh, 1
  store i64 %i.em, ptr %.sroa.5.0..sroa_idx38.i, align 8, !alias.scope !216245, !noalias !216236
  %i.en = load ptr, ptr %i.cd, align 8, !alias.scope !216237, !noalias !216236, !noundef !416 ; 2 uses
  %.not.i = icmp eq ptr %i.en, null
  br i1 %.not.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eo = atomicrmw add ptr %i.en, i64 1 monotonic, align 8, !noalias !216236
  %i.ep = icmp slt i64 %i.eo, 0
  br i1 %i.ep, label %bb.cf, label %bb.ce

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !216238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !216238
  %i.eq = invoke noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ad)
          to label %bb.ao unwind label %.body19.thread74.i, !noalias !216236

bb.ao:                                            ; preds = %bb.an
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eq)
          to label %bb.ap unwind label %.body19.thread74.i, !noalias !216236

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMs5_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB5_5Field14new_list_field(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.z, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.y, i1 noundef zeroext true)
          to label %bb.aq unwind label %.body19.thread74.i, !noalias !216236

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !216238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !216238
  store i64 1, ptr %i.u, align 8, !noalias !216238
  %i.er = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 1, ptr %i.er, align 8, !noalias !216238
  %i.es = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.es, ptr noundef nonnull align 8 dereferenceable(112) %i.z, i64 112, i1 false), !noalias !216238
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !216246
  %i.et = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !216246 ; 3 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.ar, label %bb.au, !prof !448

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #72
          to label %.noexc27.i unwind label %bb.as, !noalias !216236

.noexc27.i:                                       ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.ar
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.u) #73
          to label %.body19.thread69.i unwind label %bb.at, !noalias !216236

bb.at:                                            ; preds = %bb.as
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !216236
  unreachable

bb.au:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.et, ptr noundef nonnull align 8 dereferenceable(128) %i.u, i64 128, i1 false), !noalias !216236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !216238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !216238
  br label %bb.av

bb.av:                                            ; preds = %bb.ce, %bb.au
  %.sroa.0.0.i = phi ptr [ %i.hp, %bb.ce ], [ %i.et, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !216238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !216238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !216238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 48, i1 false), !noalias !216238
  call void @llvm.experimental.noalias.scope.decl(metadata !216247)
  call void @llvm.experimental.noalias.scope.decl(metadata !216248)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !216238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !216238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !216238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !216238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !216238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !216238
  store ptr %.sroa.0.0.i, ptr %i.r, align 8, !noalias !216249
  %i.ex = load <2 x ptr>, ptr %i.ad, align 16, !noalias !216238
  store <2 x ptr> %i.ex, ptr %i.q, align 16, !noalias !216249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !216249
  %i.ey = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ez = load i64, ptr %i.ey, align 8, !alias.scope !216247, !noalias !216250, !noundef !416
  %i.fa = lshr i64 %i.ez, 2                       ; 3 uses
  %i.fb = add nsw i64 %i.fa, -1                   ; 2 uses
  store i64 %i.fb, ptr %i.p, align 8, !noalias !216249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !216249
  %.not.i29.i = icmp eq i64 %i.fa, 0
  br i1 %.not.i29.i, label %bb.aw, label %bb.bb, !prof !426

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3283) #72
          to label %bb.ba unwind label %bb.ax, !noalias !216251

bb.ax:                                            ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bp, %bb.bl, %bb.bj, %bb.bi, %bb.bh, %bb.be, %bb.bb, %bb.aw
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !216252)
  %i.fd = load ptr, ptr %i.w, align 8, !alias.scope !216253, !noalias !216254, !noundef !416 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ff = atomicrmw sub ptr %i.fd, i64 1 release, align 8, !noalias !216255
  %i.fg = icmp eq i64 %i.ff, 1
  br i1 %i.fg, label %bb.az, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i unwind label %bb.cc, !noalias !216256

bb.ba:                                            ; preds = %bb.aw
  unreachable

bb.bb:                                            ; preds = %bb.av
  %i.fh = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !alias.scope !216247, !noalias !216250, !noundef !416
  %i.fj = getelementptr [4 x i8], ptr %i.fi, i64 %i.fa
  %i.fk = getelementptr i8, ptr %i.fj, i64 -4     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fk) ]
  %i.fl = load i32, ptr %i.fk, align 4, !noalias !216251, !noundef !416
  %i.fm = sext i32 %i.fl to i64                   ; 2 uses
  store i64 %i.fm, ptr %i.o, align 8, !noalias !216249
  %i.fn = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q)
          to label %bb.bc unwind label %bb.ax, !noalias !216251

bb.bc:                                            ; preds = %bb.bb
  %i.fo = icmp ult i64 %i.fn, %i.fm
  br i1 %i.fo, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fp = load ptr, ptr %i.w, align 8, !alias.scope !216248, !noalias !216254, !noundef !416
  %.not66.i.i = icmp eq ptr %i.fp, null
  br i1 %.not66.i.i, label %bb.bg, label %bb.bf

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !216249
  %i.fq = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q)
          to label %bb.bt unwind label %bb.ax, !noalias !216251

bb.bf:                                            ; preds = %bb.bd
  %i.fr = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.fs = load i64, ptr %i.fr, align 8, !alias.scope !216248, !noalias !216254, !noundef !416 ; 2 uses
  %.not67.i.i = icmp eq i64 %i.fs, %i.fb
  br i1 %.not67.i.i, label %bb.bg, label %bb.bh

end_hunk_5
begin_hunk_6_@_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7to_dataCsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  store <2 x i64> %i.ac, ptr %.sroa.53.sroa.0.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !227095, !noalias !227096
  call fastcc void @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEEE4fromCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array8is_emptyCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !416
  %i.c = icmp ult i64 %i.b, 8
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array9data_typeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(120) %0) unnamed_addr #10 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array13shrink_to_fitCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !416
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array18logical_null_countCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noundef !416
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array21get_array_memory_sizeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #41 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !416, !noundef !416
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !416 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !416 ; 2 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.f, %bb.c ], [ %.sroa.0.0, %bb.a ]
  %i.e = add i64 %.sroa.0.1, 96
  ret i64 %i.e

bb.c:                                             ; preds = %bb.a
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.02.0 = load i64, ptr %.sroa.02.0.in, align 8, !noundef !416
  %i.f = add i64 %.sroa.02.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array22get_buffer_memory_sizeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #41 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !416, !noundef !416
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !416 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !416 ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.e, %bb.c ], [ %.sroa.0.0, %bb.a ]
  ret i64 %.sroa.0.1

bb.c:                                             ; preds = %bb.a
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !416
  %i.e = add i64 %.sroa.03.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, -9223372036854775808) i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array3lenCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !416
  %i.c = lshr i64 %i.b, 1
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array5nullsCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !416
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array5sliceCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227138)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !227139
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0), !noalias !227140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !227139
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227141)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !227142
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !227143, !noalias !227144, !nonnull !416, !noundef !416 ; 2 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !227142
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !227143, !noalias !227144, !noundef !416
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !227143, !noalias !227144, !noundef !416
  store ptr %i.h, ptr %i.b, align 8, !noalias !227142
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.o, align 8, !noalias !227142
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.n, ptr %i.p, align 8, !noalias !227142
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227145)
  %i.q = shl nuw i64 %1, 1
  %i.r = icmp slt i64 %1, 0
  br i1 %i.r, label %.invoke.i.i.i, label %bb.c, !prof !426

bb.c:                                             ; preds = %bb.b
  %i.s = icmp slt i64 %2, 0
  br i1 %i.s, label %.invoke.i.i.i, label %bb.d, !prof !426

bb.d:                                             ; preds = %bb.c
  %i.t = shl nuw i64 %2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !227146
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %i.t)
          to label %bb.g unwind label %bb.e, !noalias !227147

.invoke.i.i.i:                                    ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ @320, %bb.b ], [ @3432, %bb.c ]
  %i.v = phi ptr [ @3435, %bb.b ], [ @3434, %bb.c ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #72
          to label %.cont.i.i.i unwind label %bb.e, !noalias !227146

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i.i, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.af, %bb.i ], [ %i.af, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !227148)
  call void @llvm.experimental.noalias.scope.decl(metadata !227149)
  call void @llvm.experimental.noalias.scope.decl(metadata !227150)
  %i.x = load ptr, ptr %i.b, align 8, !alias.scope !227151, !noalias !227147, !nonnull !416, !noundef !416
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !227152
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %.body.i

bb.f:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.m, !noalias !227147

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !227153)
  call void @llvm.experimental.noalias.scope.decl(metadata !227154)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !227154, !noalias !227155, !noundef !416
  %i.ac = ptrtoint ptr %i.ab to i64               ; 3 uses
  %3 = add i64 %i.ac, 1
  %i.ad = and i64 %3, -2                          ; 2 uses
  %4 = sub i64 %i.ad, %i.ac
  %5 = icmp ult i64 %4, 2
  call void @llvm.assume(i1 %5)
  %i.ae = icmp eq i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.k, label %.invoke.i.i.i.i, !prof !439

bb.h:                                             ; preds = %.invoke.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !227156
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %.body.i.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i unwind label %bb.j, !noalias !227157

.invoke.i.i.i.i:                                  ; preds = %bb.g
  %i.ai = load ptr, ptr %i.a, align 8, !alias.scope !227154, !noalias !227155, !nonnull !416, !noundef !416 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !227158, !noundef !416
  %.not.i.i.i.i = icmp eq ptr %i.ak, null         ; 3 uses
  %.2.i.i.i.i = select i1 %.not.i.i.i.i, ptr @4483, ptr @4485
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr @4482, ptr @4484
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i, ptr noundef nonnull %.1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i) #72
          to label %.cont.i.i.i.i unwind label %bb.h, !noalias !227158

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !227157
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !227159, !noalias !227160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !227146
  call void @llvm.experimental.noalias.scope.decl(metadata !227161)
  call void @llvm.experimental.noalias.scope.decl(metadata !227162)
  call void @llvm.experimental.noalias.scope.decl(metadata !227163)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !227164, !noalias !227147, !nonnull !416, !noundef !416
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !227165
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o, !noalias !227139

bb.m:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !227147
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body.i:                                          ; preds = %bb.s, %bb.r, %bb.o, %bb.f, %.body.i.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.aq, %bb.o ], [ %eh.lpad-body.i.i.i, %bb.f ], [ %i.at, %bb.s ], [ %i.at, %bb.r ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #73
          to label %common.resume unwind label %bb.u, !noalias !227140

bb.o:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.p:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !227142
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !227138, !noalias !227140, !noundef !416
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt16TypeE5sliceCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !227139
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, i64 noundef %1, i64 noundef %2)
          to label %bb.t unwind label %bb.r, !noalias !227140

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !227166)
  call void @llvm.experimental.noalias.scope.decl(metadata !227167)
  call void @llvm.experimental.noalias.scope.decl(metadata !227168)
  call void @llvm.experimental.noalias.scope.decl(metadata !227169)
  %i.au = load ptr, ptr %i.d, align 8, !alias.scope !227170, !noalias !227139, !nonnull !416, !noundef !416
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !227171
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.s, label %.body.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.u, !noalias !227140

bb.t:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.c, align 8, !noalias !227139
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !227139
  br label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt16TypeE5sliceCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.u:                                             ; preds = %bb.s, %.body.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !227140
  unreachable

common.resume:                                    ; preds = %bb.w, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.bc, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt16TypeE5sliceCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.p, %bb.t
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload1.i, %bb.t ], [ null, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !227138
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !227138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !227139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !227139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !227172
  %i.ba = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !227172 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.v, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt16TypeEEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !448

bb.v:                                             ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt16TypeE5sliceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #72
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt16TypeEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.az)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt16TypeEEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt16TypeE5sliceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ba, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.be = insertvalue { ptr, ptr } poison, ptr %i.ba, 0
  %i.bf = insertvalue { ptr, ptr } %i.be, ptr @1036, 1
  ret { ptr, ptr } %i.bf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array6as_anyCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #10 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @3980, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array6offsetCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7to_dataCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227177)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !227178
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1), !noalias !227176
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !227177, !noalias !227176, !nonnull !416, !noundef !416 ; 2 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !noalias !227178
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !227177, !noalias !227176, !noundef !416
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_6
begin_hunk_7_@_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7to_dataCsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !227187
  call fastcc void @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeEE4fromCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array8is_emptyCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !416
  %i.c = icmp ult i64 %i.b, 4
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array9data_typeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #10 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array13shrink_to_fitCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !416
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array18logical_null_countCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noundef !416
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array21get_array_memory_sizeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #41 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !416, !noundef !416
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !416 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !416 ; 2 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.f, %bb.c ], [ %.sroa.0.0, %bb.a ]
  %i.e = add i64 %.sroa.0.1, 96
  ret i64 %i.e

bb.c:                                             ; preds = %bb.a
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.02.0 = load i64, ptr %.sroa.02.0.in, align 8, !noundef !416
  %i.f = add i64 %.sroa.02.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array22get_buffer_memory_sizeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #41 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !416, !noundef !416
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !416 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !416 ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.e, %bb.c ], [ %.sroa.0.0, %bb.a ]
  ret i64 %.sroa.0.1

bb.c:                                             ; preds = %bb.a
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !416
  %i.e = add i64 %.sroa.03.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 2305843009213693952) i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array3lenCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !416
  %i.c = lshr i64 %i.b, 3
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array5nullsCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !416
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array5sliceCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227228)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !227229
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0), !noalias !227230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !227229
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227231)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !227232
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !227233, !noalias !227234, !nonnull !416, !noundef !416 ; 2 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !227232
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !227233, !noalias !227234, !noundef !416
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !227233, !noalias !227234, !noundef !416
  store ptr %i.h, ptr %i.b, align 8, !noalias !227232
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.o, align 8, !noalias !227232
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.n, ptr %i.p, align 8, !noalias !227232
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227235)
  %i.q = shl nuw i64 %1, 3
  %i.r = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.r, label %.invoke.i.i.i, label %bb.c, !prof !426

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.s, label %.invoke.i.i.i, label %bb.d, !prof !426

bb.d:                                             ; preds = %bb.c
  %i.t = shl nuw i64 %2, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !227236
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %i.t)
          to label %bb.g unwind label %bb.e, !noalias !227237

.invoke.i.i.i:                                    ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ @320, %bb.b ], [ @3432, %bb.c ]
  %i.v = phi ptr [ @3435, %bb.b ], [ @3434, %bb.c ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #72
          to label %.cont.i.i.i unwind label %bb.e, !noalias !227236

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i.i, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.af, %bb.i ], [ %i.af, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !227238)
  call void @llvm.experimental.noalias.scope.decl(metadata !227239)
  call void @llvm.experimental.noalias.scope.decl(metadata !227240)
  %i.x = load ptr, ptr %i.b, align 8, !alias.scope !227241, !noalias !227237, !nonnull !416, !noundef !416
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !227242
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %.body.i

bb.f:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.m, !noalias !227237

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !227243)
  call void @llvm.experimental.noalias.scope.decl(metadata !227244)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !227244, !noalias !227245, !noundef !416
  %i.ac = ptrtoint ptr %i.ab to i64               ; 3 uses
  %3 = add i64 %i.ac, 7
  %i.ad = and i64 %3, -8                          ; 2 uses
  %4 = sub i64 %i.ad, %i.ac
  %5 = icmp ult i64 %4, 8
  call void @llvm.assume(i1 %5)
  %i.ae = icmp eq i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.k, label %.invoke.i.i.i.i, !prof !439

bb.h:                                             ; preds = %.invoke.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !227246
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %.body.i.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i unwind label %bb.j, !noalias !227247

.invoke.i.i.i.i:                                  ; preds = %bb.g
  %i.ai = load ptr, ptr %i.a, align 8, !alias.scope !227244, !noalias !227245, !nonnull !416, !noundef !416 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !227248, !noundef !416
  %.not.i.i.i.i = icmp eq ptr %i.ak, null         ; 3 uses
  %.2.i.i.i.i = select i1 %.not.i.i.i.i, ptr @4483, ptr @4485
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr @4482, ptr @4484
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i, ptr noundef nonnull %.1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i) #72
          to label %.cont.i.i.i.i unwind label %bb.h, !noalias !227248

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !227247
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !227249, !noalias !227250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !227236
  call void @llvm.experimental.noalias.scope.decl(metadata !227251)
  call void @llvm.experimental.noalias.scope.decl(metadata !227252)
  call void @llvm.experimental.noalias.scope.decl(metadata !227253)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !227254, !noalias !227237, !nonnull !416, !noundef !416
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !227255
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o, !noalias !227229

bb.m:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !227237
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body.i:                                          ; preds = %bb.s, %bb.r, %bb.o, %bb.f, %.body.i.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.aq, %bb.o ], [ %eh.lpad-body.i.i.i, %bb.f ], [ %i.at, %bb.s ], [ %i.at, %bb.r ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #73
          to label %common.resume unwind label %bb.u, !noalias !227230

bb.o:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.p:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !227232
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !227228, !noalias !227230, !noundef !416
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5sliceCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !227229
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, i64 noundef %1, i64 noundef %2)
          to label %bb.t unwind label %bb.r, !noalias !227230

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !227256)
  call void @llvm.experimental.noalias.scope.decl(metadata !227257)
  call void @llvm.experimental.noalias.scope.decl(metadata !227258)
  call void @llvm.experimental.noalias.scope.decl(metadata !227259)
  %i.au = load ptr, ptr %i.d, align 8, !alias.scope !227260, !noalias !227229, !nonnull !416, !noundef !416
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !227261
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.s, label %.body.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.u, !noalias !227230

bb.t:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.c, align 8, !noalias !227229
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !227229
  br label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5sliceCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.u:                                             ; preds = %bb.s, %.body.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !227230
  unreachable

common.resume:                                    ; preds = %bb.w, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.bc, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5sliceCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.p, %bb.t
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload1.i, %bb.t ], [ null, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !227228
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !227228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !227229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !227229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !227262
  %i.ba = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !227262 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.v, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt64TypeEEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !448

bb.v:                                             ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5sliceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #72
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt64TypeEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.az)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt64TypeEEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5sliceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ba, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.be = insertvalue { ptr, ptr } poison, ptr %i.ba, 0
  %i.bf = insertvalue { ptr, ptr } %i.be, ptr @1038, 1
  ret { ptr, ptr } %i.bf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array6as_anyCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #10 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @3982, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array6offsetCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7to_dataCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227267)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !227268
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1), !noalias !227266
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !227267, !noalias !227266, !nonnull !416, !noundef !416 ; 2 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !noalias !227268
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !227267, !noalias !227266, !noundef !416
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_7
begin_hunk_8_@_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7to_dataCsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !227268
  call fastcc void @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeEE4fromCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array8is_emptyCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !416
  %i.c = icmp ult i64 %i.b, 8
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array9data_typeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #10 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array13shrink_to_fitCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !416
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array18logical_null_countCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noundef !416
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array21get_array_memory_sizeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #41 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !416, !noundef !416
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !416 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !416 ; 2 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.f, %bb.c ], [ %.sroa.0.0, %bb.a ]
  %i.e = add i64 %.sroa.0.1, 96
  ret i64 %i.e

bb.c:                                             ; preds = %bb.a
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.02.0 = load i64, ptr %.sroa.02.0.in, align 8, !noundef !416
  %i.f = add i64 %.sroa.02.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array22get_buffer_memory_sizeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #41 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !416, !noundef !416
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !416 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !416 ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.e, %bb.c ], [ %.sroa.0.0, %bb.a ]
  ret i64 %.sroa.0.1

bb.c:                                             ; preds = %bb.a
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !416
  %i.e = add i64 %.sroa.03.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 4611686018427387904) i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array3lenCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !416
  %i.c = lshr i64 %i.b, 2
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array5nullsCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !416
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array5sliceCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227309)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !227310
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0), !noalias !227311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !227310
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227312)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !227313
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !227314, !noalias !227315, !nonnull !416, !noundef !416 ; 2 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !227313
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !227314, !noalias !227315, !noundef !416
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !227314, !noalias !227315, !noundef !416
  store ptr %i.h, ptr %i.b, align 8, !noalias !227313
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.o, align 8, !noalias !227313
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.n, ptr %i.p, align 8, !noalias !227313
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227316)
  %i.q = shl nuw i64 %1, 2
  %i.r = icmp ugt i64 %1, 4611686018427387903
  br i1 %i.r, label %.invoke.i.i.i, label %bb.c, !prof !426

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.s, label %.invoke.i.i.i, label %bb.d, !prof !426

bb.d:                                             ; preds = %bb.c
  %i.t = shl nuw i64 %2, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !227317
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %i.t)
          to label %bb.g unwind label %bb.e, !noalias !227318

.invoke.i.i.i:                                    ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ @320, %bb.b ], [ @3432, %bb.c ]
  %i.v = phi ptr [ @3435, %bb.b ], [ @3434, %bb.c ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #72
          to label %.cont.i.i.i unwind label %bb.e, !noalias !227317

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i.i, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.af, %bb.i ], [ %i.af, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !227319)
  call void @llvm.experimental.noalias.scope.decl(metadata !227320)
  call void @llvm.experimental.noalias.scope.decl(metadata !227321)
  %i.x = load ptr, ptr %i.b, align 8, !alias.scope !227322, !noalias !227318, !nonnull !416, !noundef !416
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !227323
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %.body.i

bb.f:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.m, !noalias !227318

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !227324)
  call void @llvm.experimental.noalias.scope.decl(metadata !227325)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !227325, !noalias !227326, !noundef !416
  %i.ac = ptrtoint ptr %i.ab to i64               ; 3 uses
  %3 = add i64 %i.ac, 3
  %i.ad = and i64 %3, -4                          ; 2 uses
  %4 = sub i64 %i.ad, %i.ac
  %5 = icmp ult i64 %4, 4
  call void @llvm.assume(i1 %5)
  %i.ae = icmp eq i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.k, label %.invoke.i.i.i.i, !prof !439

bb.h:                                             ; preds = %.invoke.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !227327
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %.body.i.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i unwind label %bb.j, !noalias !227328

.invoke.i.i.i.i:                                  ; preds = %bb.g
  %i.ai = load ptr, ptr %i.a, align 8, !alias.scope !227325, !noalias !227326, !nonnull !416, !noundef !416 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !227329, !noundef !416
  %.not.i.i.i.i = icmp eq ptr %i.ak, null         ; 3 uses
  %.2.i.i.i.i = select i1 %.not.i.i.i.i, ptr @4483, ptr @4485
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr @4482, ptr @4484
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i, ptr noundef nonnull %.1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i) #72
          to label %.cont.i.i.i.i unwind label %bb.h, !noalias !227329

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !227328
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !227330, !noalias !227331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !227317
  call void @llvm.experimental.noalias.scope.decl(metadata !227332)
  call void @llvm.experimental.noalias.scope.decl(metadata !227333)
  call void @llvm.experimental.noalias.scope.decl(metadata !227334)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !227335, !noalias !227318, !nonnull !416, !noundef !416
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !227336
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o, !noalias !227310

bb.m:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !227318
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body.i:                                          ; preds = %bb.s, %bb.r, %bb.o, %bb.f, %.body.i.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.aq, %bb.o ], [ %eh.lpad-body.i.i.i, %bb.f ], [ %i.at, %bb.s ], [ %i.at, %bb.r ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #73
          to label %common.resume unwind label %bb.u, !noalias !227311

bb.o:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.p:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !227313
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !227309, !noalias !227311, !noundef !416
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5sliceCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !227310
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, i64 noundef %1, i64 noundef %2)
          to label %bb.t unwind label %bb.r, !noalias !227311

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !227337)
  call void @llvm.experimental.noalias.scope.decl(metadata !227338)
  call void @llvm.experimental.noalias.scope.decl(metadata !227339)
  call void @llvm.experimental.noalias.scope.decl(metadata !227340)
  %i.au = load ptr, ptr %i.d, align 8, !alias.scope !227341, !noalias !227310, !nonnull !416, !noundef !416
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !227342
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.s, label %.body.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.u, !noalias !227311

bb.t:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.c, align 8, !noalias !227310
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !227310
  br label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5sliceCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.u:                                             ; preds = %bb.s, %.body.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !227311
  unreachable

common.resume:                                    ; preds = %bb.w, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.bc, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5sliceCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.p, %bb.t
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload1.i, %bb.t ], [ null, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !227309
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !227309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !227310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !227310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !227343
  %i.ba = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !227343 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.v, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types11Float32TypeEEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !448

bb.v:                                             ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5sliceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #72
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types11Float32TypeEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.az)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types11Float32TypeEEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5sliceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ba, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.be = insertvalue { ptr, ptr } poison, ptr %i.ba, 0
  %i.bf = insertvalue { ptr, ptr } %i.be, ptr @2873, 1
  ret { ptr, ptr } %i.bf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array6as_anyCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #10 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @3983, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array6offsetCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7to_dataCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227348)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !227349
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1), !noalias !227347
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !227348, !noalias !227347, !nonnull !416, !noundef !416 ; 2 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !noalias !227349
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !227348, !noalias !227347, !noundef !416
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_8
begin_hunk_9_@_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array7to_dataCsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !227409
  call fastcc void @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_14PrimitiveArrayNtNtB9_5types8Int8TypeEE4fromCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array8is_emptyCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !416
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array9data_typeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #10 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array13shrink_to_fitCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !416
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array18logical_null_countCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noundef !416
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array21get_array_memory_sizeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #41 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !416, !noundef !416
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !416 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !416 ; 2 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.f, %bb.c ], [ %.sroa.0.0, %bb.a ]
  %i.e = add i64 %.sroa.0.1, 96
  ret i64 %i.e

bb.c:                                             ; preds = %bb.a
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.02.0 = load i64, ptr %.sroa.02.0.in, align 8, !noundef !416
  %i.f = add i64 %.sroa.02.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array22get_buffer_memory_sizeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #41 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !416, !noundef !416
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !416 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !416 ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.e, %bb.c ], [ %.sroa.0.0, %bb.a ]
  ret i64 %.sroa.0.1

bb.c:                                             ; preds = %bb.a
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !416
  %i.e = add i64 %.sroa.03.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, -9223372036854775808) i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array3lenCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !416
  %i.c = lshr i64 %i.b, 1
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array5nullsCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !416
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array5sliceCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227450)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !227451
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0), !noalias !227452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !227451
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227453)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !227454
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !227455, !noalias !227456, !nonnull !416, !noundef !416 ; 2 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !227454
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !227455, !noalias !227456, !noundef !416
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !227455, !noalias !227456, !noundef !416
  store ptr %i.h, ptr %i.b, align 8, !noalias !227454
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.o, align 8, !noalias !227454
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.n, ptr %i.p, align 8, !noalias !227454
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227457)
  %i.q = shl nuw i64 %1, 1
  %i.r = icmp slt i64 %1, 0
  br i1 %i.r, label %.invoke.i.i.i, label %bb.c, !prof !426

bb.c:                                             ; preds = %bb.b
  %i.s = icmp slt i64 %2, 0
  br i1 %i.s, label %.invoke.i.i.i, label %bb.d, !prof !426

bb.d:                                             ; preds = %bb.c
  %i.t = shl nuw i64 %2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !227458
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %i.t)
          to label %bb.g unwind label %bb.e, !noalias !227459

.invoke.i.i.i:                                    ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ @320, %bb.b ], [ @3432, %bb.c ]
  %i.v = phi ptr [ @3435, %bb.b ], [ @3434, %bb.c ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #72
          to label %.cont.i.i.i unwind label %bb.e, !noalias !227458

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i.i, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.af, %bb.i ], [ %i.af, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !227460)
  call void @llvm.experimental.noalias.scope.decl(metadata !227461)
  call void @llvm.experimental.noalias.scope.decl(metadata !227462)
  %i.x = load ptr, ptr %i.b, align 8, !alias.scope !227463, !noalias !227459, !nonnull !416, !noundef !416
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !227464
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %.body.i

bb.f:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.m, !noalias !227459

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !227465)
  call void @llvm.experimental.noalias.scope.decl(metadata !227466)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !227466, !noalias !227467, !noundef !416
  %i.ac = ptrtoint ptr %i.ab to i64               ; 3 uses
  %3 = add i64 %i.ac, 1
  %i.ad = and i64 %3, -2                          ; 2 uses
  %4 = sub i64 %i.ad, %i.ac
  %5 = icmp ult i64 %4, 2
  call void @llvm.assume(i1 %5)
  %i.ae = icmp eq i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.k, label %.invoke.i.i.i.i, !prof !439

bb.h:                                             ; preds = %.invoke.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !227468
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %.body.i.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i unwind label %bb.j, !noalias !227469

.invoke.i.i.i.i:                                  ; preds = %bb.g
  %i.ai = load ptr, ptr %i.a, align 8, !alias.scope !227466, !noalias !227467, !nonnull !416, !noundef !416 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !227470, !noundef !416
  %.not.i.i.i.i = icmp eq ptr %i.ak, null         ; 3 uses
  %.2.i.i.i.i = select i1 %.not.i.i.i.i, ptr @4483, ptr @4485
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr @4482, ptr @4484
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i, ptr noundef nonnull %.1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i) #72
          to label %.cont.i.i.i.i unwind label %bb.h, !noalias !227470

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !227469
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !227471, !noalias !227472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !227458
  call void @llvm.experimental.noalias.scope.decl(metadata !227473)
  call void @llvm.experimental.noalias.scope.decl(metadata !227474)
  call void @llvm.experimental.noalias.scope.decl(metadata !227475)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !227476, !noalias !227459, !nonnull !416, !noundef !416
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !227477
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o, !noalias !227451

bb.m:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !227459
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body.i:                                          ; preds = %bb.s, %bb.r, %bb.o, %bb.f, %.body.i.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.aq, %bb.o ], [ %eh.lpad-body.i.i.i, %bb.f ], [ %i.at, %bb.s ], [ %i.at, %bb.r ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #73
          to label %common.resume unwind label %bb.u, !noalias !227452

bb.o:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.p:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !227454
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !227450, !noalias !227452, !noundef !416
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int16TypeE5sliceCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !227451
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, i64 noundef %1, i64 noundef %2)
          to label %bb.t unwind label %bb.r, !noalias !227452

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !227478)
  call void @llvm.experimental.noalias.scope.decl(metadata !227479)
  call void @llvm.experimental.noalias.scope.decl(metadata !227480)
  call void @llvm.experimental.noalias.scope.decl(metadata !227481)
  %i.au = load ptr, ptr %i.d, align 8, !alias.scope !227482, !noalias !227451, !nonnull !416, !noundef !416
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !227483
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.s, label %.body.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.u, !noalias !227452

bb.t:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.c, align 8, !noalias !227451
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !227451
  br label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int16TypeE5sliceCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.u:                                             ; preds = %bb.s, %.body.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !227452
  unreachable

common.resume:                                    ; preds = %bb.w, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.bc, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int16TypeE5sliceCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.p, %bb.t
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload1.i, %bb.t ], [ null, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !227450
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !227450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !227451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !227451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !227484
  %i.ba = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !227484 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.v, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types9Int16TypeEEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !448

bb.v:                                             ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int16TypeE5sliceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #72
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types9Int16TypeEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.az)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types9Int16TypeEEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int16TypeE5sliceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ba, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.be = insertvalue { ptr, ptr } poison, ptr %i.ba, 0
  %i.bf = insertvalue { ptr, ptr } %i.be, ptr @1040, 1
  ret { ptr, ptr } %i.bf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array6as_anyCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #10 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @3985, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array6offsetCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7to_dataCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227489)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !227490
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1), !noalias !227488
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !227489, !noalias !227488, !nonnull !416, !noundef !416 ; 2 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !noalias !227490
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !227489, !noalias !227488, !noundef !416
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_9
