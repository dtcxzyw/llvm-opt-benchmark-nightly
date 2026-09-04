Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/colored-278a9c439e67f658.colored.c21c1be26a5a82da-cgu.00?download=true
inline.NumInlined: 60
inline.NumDeleted: 32
begin_hunk_0_@_RNvMNtCsgFeZUGsc24U_7colored5colorNtB2_5Color23closest_color_euclidean:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 %.sroa.49.0.extract.trunc, ptr %i.g, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 %.sroa.510.0.extract.trunc, ptr %i.f, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %.sroa.6.0.extract.trunc, ptr %i.e, align 1
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #12
  %i.i = tail call noundef dereferenceable_or_null(64) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef 1) #12 ; 20 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i.i.i, !prof !21

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 64) #13
  unreachable

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i.i.i: ; preds = %bb.b
  store i8 0, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  store i8 1, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 2, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i8 3, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i8 4, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i8 5, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i8 6, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  store i8 7, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i8 8, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  store i8 9, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i8 10, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  store i8 11, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i8 12, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  store i8 13, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i8 14, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  store i8 15, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 16, ptr %.sroa.521.0..sroa_idx, align 8
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.z, ptr %.sroa.622.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.g, ptr %i.aa, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.f, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.e, ptr %.sroa.557.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  store ptr %i.k, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !26
  %.sroa.03.0.copyload.i.i.i.i = load i32, ptr %i.i, align 1, !noalias !26 ; 4 uses
  %i.ab = and i32 %.sroa.03.0.copyload.i.i.i.i, 255
  %.not.i.i.i = icmp eq i32 %i.ab, 255
  br i1 %.not.i.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB4_INtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1K_B1I_23closest_color_euclidean0ENCB2n_s_0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB39_6min_by4foldTB1I_mENCB2n_s0_0E0EB1M_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i.i.i
  %trunc.i.i.i.i.i = trunc i32 %.sroa.03.0.copyload.i.i.i.i to i8
  switch i8 %trunc.i.i.i.i.i, label %bb.e [
    i8 0, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1L_B1J_23closest_color_euclidean0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
    i8 6, label %bb.k
    i8 7, label %bb.l
    i8 8, label %bb.m
    i8 9, label %bb.n
    i8 10, label %bb.o
    i8 11, label %bb.p
    i8 12, label %bb.q
    i8 13, label %bb.r
    i8 14, label %bb.s
    i8 15, label %bb.t
    i8 16, label %bb.u
    i8 17, label %bb.u
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1L_B1J_23closest_color_euclidean0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i

bb.g:                                             ; preds = %bb.d
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1L_B1J_23closest_color_euclidean0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i

bb.h:                                             ; preds = %bb.d
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1L_B1J_23closest_color_euclidean0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i

bb.i:                                             ; preds = %bb.d
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1L_B1J_23closest_color_euclidean0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i

bb.j:                                             ; preds = %bb.d
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1L_B1J_23closest_color_euclidean0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i

bb.k:                                             ; preds = %bb.d
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1L_B1J_23closest_color_euclidean0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i

bb.l:                                             ; preds = %bb.d
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1L_B1J_23closest_color_euclidean0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i

bb.m:                                             ; preds = %bb.d
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1L_B1J_23closest_color_euclidean0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i

bb.n:                                             ; preds = %bb.d
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1L_B1J_23closest_color_euclidean0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i

bb.o:                                             ; preds = %bb.d
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1L_B1J_23closest_color_euclidean0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i

bb.p:                                             ; preds = %bb.d
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1L_B1J_23closest_color_euclidean0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i

bb.q:                                             ; preds = %bb.d
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1L_B1J_23closest_color_euclidean0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i

bb.r:                                             ; preds = %bb.d
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1L_B1J_23closest_color_euclidean0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i

bb.s:                                             ; preds = %bb.d
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1L_B1J_23closest_color_euclidean0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i

bb.t:                                             ; preds = %bb.d
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1L_B1J_23closest_color_euclidean0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i

bb.u:                                             ; preds = %bb.d, %bb.d
  %i.ac = zext i32 %.sroa.03.0.copyload.i.i.i.i to i64
  %i.ad = shl nuw i64 %i.ac, 32
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1L_B1J_23closest_color_euclidean0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1L_B1J_23closest_color_euclidean0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i: ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d
  %.sroa.55.0.i.i.i.i.i = phi i64 [ 73014444032, %bb.d ], [ 225472898138112, %bb.f ], [ 57702443240128512, %bb.g ], [ 57927843123822592, %bb.h ], [ -1297036619668258816, %bb.i ], [ -3674711823036186624, %bb.j ], [ -3617234852694196224, %bb.k ], [ -1880845408180109312, %bb.l ], [ 9187201475850272768, %bb.m ], [ 280448479526912, %bb.n ], [ 71776192075661312, %bb.o ], [ 72056567540744192, %bb.p ], [ -46060668096348160, %bb.q ], [ -71777145558401024, %bb.r ], [ -281401962266624, %bb.s ], [ -1026497183744, %bb.t ], [ %i.ad, %bb.u ] ; 5 uses
  %.sroa.04.0.insert.ext.i.i.i.i = zext i32 %.sroa.03.0.copyload.i.i.i.i to i64 ; 2 uses
  %i.ae = and i64 %.sroa.04.0.insert.ext.i.i.i.i, 255
  %.not.i.i = icmp eq i64 %i.ae, 255
  br i1 %.not.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB4_INtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1K_B1I_23closest_color_euclidean0ENCB2n_s_0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB39_6min_by4foldTB1I_mENCB2n_s0_0E0EB1M_.exit.thread, label %bb.v

bb.v:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1L_B1J_23closest_color_euclidean0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27
  %.sroa.0.4.extract.shift.i.i.i = lshr exact i64 %.sroa.55.0.i.i.i.i.i, 32
  %.sroa.0.4.extract.trunc.i.i.i = trunc nuw i64 %.sroa.0.4.extract.shift.i.i.i to i32
  store i32 %.sroa.0.4.extract.trunc.i.i.i, ptr %i.b, align 4, !noalias !27
  %i.af = and i64 %.sroa.55.0.i.i.i.i.i, 1095216660480
  %i.ag = icmp eq i64 %i.af, 73014444032
  br i1 %i.ag, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB4_INtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1K_B1I_23closest_color_euclidean0ENCB2n_s_0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB39_6min_by4foldTB1I_mENCB2n_s0_0E0EB1M_.exit, label %bb.w, !prof !5

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27
  store ptr %i.b, ptr %i.a, align 8, !noalias !27
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs5_NtCsgFeZUGsc24U_7colored5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !27
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #13
          to label %.noexc.i unwind label %bb.x, !noalias !22

.noexc.i:                                         ; preds = %bb.w
  unreachable

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB4_INtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1K_B1I_23closest_color_euclidean0ENCB2n_s_0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB39_6min_by4foldTB1I_mENCB2n_s0_0E0EB1M_.exit.thread: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i.i.i, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1L_B1J_23closest_color_euclidean0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_.exit.i.i
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
  br label %bb.ab

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapIBC_INtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB22_B20_23closest_color_euclidean0ENCB2F_s_0EEB24_.exit.i: ; preds = %bb.x
  resume { ptr, i32 } %i.ah

bb.x:                                             ; preds = %bb.w
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapIBC_INtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB22_B20_23closest_color_euclidean0ENCB2F_s_0EEB24_.exit.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB4_INtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1K_B1I_23closest_color_euclidean0ENCB2n_s_0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB39_6min_by4foldTB1I_mENCB2n_s0_0E0EB1M_.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27
  %i.aj = lshr i64 %.sroa.55.0.i.i.i.i.i, 48
  %i.ak = trunc i64 %i.aj to i8                   ; 2 uses
  %.sroa.0.0.i8.i.i.i = call noundef i8 @llvm.umax.i8(i8 %.sroa.510.0.extract.trunc, i8 %i.ak)
  %.sroa.0.0.i9.i.i.i = call noundef i8 @llvm.umin.i8(i8 %.sroa.510.0.extract.trunc, i8 %i.ak)
  %i.al = sub nuw i8 %.sroa.0.0.i8.i.i.i, %.sroa.0.0.i9.i.i.i
  %1 = zext i8 %i.al to i32                       ; 2 uses
  %2 = mul nuw nsw i32 %1, %1
  %i.am = lshr i64 %.sroa.55.0.i.i.i.i.i, 40
  %i.an = trunc i64 %i.am to i8                   ; 2 uses
  %.sroa.0.0.i.i.i.i = call noundef i8 @llvm.umax.i8(i8 %.sroa.49.0.extract.trunc, i8 %i.an)
  %.sroa.0.0.i7.i.i.i = call noundef i8 @llvm.umin.i8(i8 %.sroa.49.0.extract.trunc, i8 %i.an)
  %i.ao = sub nuw i8 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i7.i.i.i
  %3 = zext i8 %i.ao to i32                       ; 2 uses
  %4 = mul nuw nsw i32 %3, %3
  %5 = add nuw nsw i32 %2, %4
  %i.ap = lshr i64 %.sroa.55.0.i.i.i.i.i, 56
  %i.aq = trunc nuw i64 %i.ap to i8               ; 2 uses
  %.sroa.0.0.i10.i.i.i = call noundef i8 @llvm.umax.i8(i8 %.sroa.6.0.extract.trunc, i8 %i.aq)
  %.sroa.0.0.i11.i.i.i = call noundef i8 @llvm.umin.i8(i8 %.sroa.6.0.extract.trunc, i8 %i.aq)
  %i.ar = sub nuw i8 %.sroa.0.0.i10.i.i.i, %.sroa.0.0.i11.i.i.i
  %6 = zext i8 %i.ar to i32                       ; 2 uses
  %7 = mul nuw nsw i32 %6, %6
  %8 = add nuw nsw i32 %5, %7
  %.sroa.2.0.insert.ext.i.i.i = zext nneg i32 %8 to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.02.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.04.0.insert.ext.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  %i.as = call i64 @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1Q_B1O_23closest_color_euclidean0ENCB2t_s_0ENtNtNtBa_6traits8iterator8Iterator4foldTB1O_mENCINvNvB3f_6min_by4foldB3S_NCB2t_s0_0E0EB1S_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.c, i64 %.sroa.02.0.insert.insert.i.i.i), !noalias !22 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22
  %.sroa.061.0.extract.trunc = trunc i64 %i.as to i8 ; 2 uses
  %.not = icmp eq i8 %.sroa.061.0.extract.trunc, -1
  br i1 %.not, label %bb.ab, label %bb.aa, !prof !28

bb.z:                                             ; preds = %bb.a
  %.sroa.08.0.extract.trunc = trunc i32 %0 to i8
  br label %bb.ac

bb.aa:                                            ; preds = %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB4_INtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1K_B1I_23closest_color_euclidean0ENCB2n_s_0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB39_6min_by4foldTB1I_mENCB2n_s0_0E0EB1M_.exit
  %i.at = trunc i64 %i.as to i32
  %i.au = lshr i32 %i.at, 24
  %.sroa.563.0.extract.shift = lshr i64 %i.as, 16
  %.sroa.563.0.extract.trunc = trunc i64 %.sroa.563.0.extract.shift to i32
  %.sroa.462.0.extract.shift = lshr i64 %i.as, 8
  %.sroa.462.0.extract.trunc = trunc i64 %.sroa.462.0.extract.shift to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ac

bb.ab:                                            ; preds = %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB4_INtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1K_B1I_23closest_color_euclidean0ENCB2n_s_0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB39_6min_by4foldTB1I_mENCB2n_s0_0E0EB1M_.exit.thread, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB4_INtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsgFeZUGsc24U_7colored5color5ColorENCNvMB1K_B1I_23closest_color_euclidean0ENCB2n_s_0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB39_6min_by4foldTB1I_mENCB2n_s0_0E0EB1M_.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #13
  unreachable

bb.ac:                                            ; preds = %bb.aa, %bb.z
  %.sroa.514.0 = phi i32 [ %i.au, %bb.aa ], [ %.sroa.6.0.extract.shift, %bb.z ]
  %.sroa.413.0 = phi i32 [ %.sroa.563.0.extract.trunc, %bb.aa ], [ %.sroa.510.0.extract.shift, %bb.z ]
  %.sroa.312.0 = phi i32 [ %.sroa.462.0.extract.trunc, %bb.aa ], [ %.sroa.49.0.extract.shift, %bb.z ]
  %.sroa.011.0 = phi i8 [ %.sroa.061.0.extract.trunc, %bb.aa ], [ %.sroa.08.0.extract.trunc, %bb.z ]
  %.sroa.514.0.insert.shift = shl nuw i32 %.sroa.514.0, 24
  %.sroa.413.0.insert.ext = shl i32 %.sroa.413.0, 16
  %.sroa.413.0.insert.shift = and i32 %.sroa.413.0.insert.ext, 16711680
  %.sroa.413.0.insert.insert = or disjoint i32 %.sroa.413.0.insert.shift, %.sroa.514.0.insert.shift
  %.sroa.312.0.insert.ext = shl i32 %.sroa.312.0, 8
  %.sroa.312.0.insert.shift = and i32 %.sroa.312.0.insert.ext, 65280
  %.sroa.312.0.insert.insert = or disjoint i32 %.sroa.413.0.insert.insert, %.sroa.312.0.insert.shift
  %.sroa.011.0.insert.ext = zext i8 %.sroa.011.0 to i32
  %.sroa.011.0.insert.insert = or disjoint i32 %.sroa.312.0.insert.insert, %.sroa.011.0.insert.ext
  ret i32 %.sroa.011.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsgFeZUGsc24U_7colored5colorNtB2_5Color9to_bg_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly captures(none) dereferenceable(4) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = load i8, ptr %1, align 1, !range !6, !noundef !4
  switch i8 %i.h, label %default.unreachable32 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %.split
    i8 17, label %bb.r
  ]

default.unreachable32:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.j, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @5, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.l, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.s

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @6, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.n, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.s

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @7, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.s

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @8, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.r, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.s

bb.g:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @9, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.t, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.s

bb.h:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @10, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.v, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.s

bb.i:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @11, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.x, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.s

bb.j:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @12, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %i.z, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.s

bb.k:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @13, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %i.ab, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.s

bb.l:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @14, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %i.ad, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.s

bb.m:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @15, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %i.af, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.s

bb.n:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @16, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %i.ah, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.s

bb.o:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @17, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %i.aj, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.s

bb.p:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @18, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %i.al, align 8
end_hunk_0
