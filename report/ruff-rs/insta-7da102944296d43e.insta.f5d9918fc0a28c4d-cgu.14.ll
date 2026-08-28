Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/insta-7da102944296d43e.insta.f5d9918fc0a28c4d-cgu.14?download=true
inline.NumInlined: 409
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB23_8adapters3map12map_try_foldBW_INtNtB25_6result6ResultNtB14_7ContentNtB14_5ErrorEuINtNtNtB25_3ops12control_flow11ControlFlowIB4z_B46_EENCNvB12_14from_yaml_blob0NCINvXB39_INtB39_12GenericShuntINtB37_3MapBH_B5p_EIB3K_NtNtB25_7convert10InfallibleB4k_EEB1X_8try_folduNCINvNvB1X_12try_for_each4callB46_B5e_NcNtB5e_5Break0E0B5e_E0E0B4y_EB16_:bb.a
_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlINtNtBa_6result6ResultNtB17_7ContentNtB17_5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2O_B2l_EENCNvB15_14from_yaml_blob0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB3D_EIB20_NtNtBa_7convert10InfallibleB2z_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6d_12try_for_each4callB2l_B3s_NcNtB3s_5Break0E0B3s_E0E0B19_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.411.i.i, ptr noundef nonnull align 1 dereferenceable(39) %i.h, i64 39, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.411.40..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i8 %.sroa.0.0.copyload.i, -2
  br i1 %.not.i, label %bb.e, label %.loopexit

._crit_edge:                                      ; preds = %bb.e, %bb.a, %.loopexit
  %storemerge = phi i8 [ %.sroa.0.0.copyload.i, %.loopexit ], [ -2, %bb.a ], [ -2, %bb.e ]
  store i8 %storemerge, ptr %0, align 16
  ret void

.loopexit:                                        ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlINtNtBa_6result6ResultNtB17_7ContentNtB17_5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2O_B2l_EENCNvB15_14from_yaml_blob0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB3D_EIB20_NtNtBa_7convert10InfallibleB2z_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6d_12try_for_each4callB2l_B3s_NcNtB3s_5Break0E0B3s_E0E0B19_.exit, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlINtNtBa_6result6ResultNtB17_7ContentNtB17_5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2O_B2l_EENCNvB15_14from_yaml_blob0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB3D_EIB20_NtNtBa_7convert10InfallibleB2z_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6d_12try_for_each4callB2l_B3s_NcNtB3s_5Break0E0B3s_E0E0B19_.exit.thread
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.411.i.i, i64 63, i1 false)
  br label %._crit_edge

bb.e:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlINtNtBa_6result6ResultNtB17_7ContentNtB17_5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2O_B2l_EENCNvB15_14from_yaml_blob0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB3D_EIB20_NtNtBa_7convert10InfallibleB2z_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6d_12try_for_each4callB2l_B3s_NcNtB3s_5Break0E0B3s_E0E0B19_.exit
  %.not = icmp eq ptr %i.k, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlBX_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB28_8adapters3map12map_try_foldBW_INtNtB2a_6result6ResultTNtB15_7ContentB4c_ENtB15_5ErrorEuINtNtNtB2a_3ops12control_flow11ControlFlowIB4K_B4b_EENCNvB13_14from_yaml_blobs_0NCINvXB3e_INtB3e_12GenericShuntINtB3c_3MapBH_B5A_EIB3P_NtNtB2a_7convert10InfallibleB4v_EEB22_8try_folduNCINvNvB22_12try_for_each4callB4b_B5p_NcNtB5p_5Break0E0B5p_E0E0B4J_EB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.411.i.sroa.0.i = alloca [63 x i8], align 1 ; 3 uses
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  %i.b = alloca [64 x i8], align 16               ; 8 uses
  %i.c = alloca [64 x i8], align 16               ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.6.i = alloca [39 x i8], align 1          ; 8 uses
  %.sroa.9.i = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.9 = alloca [39 x i8], align 1            ; 2 uses
  %.sroa.10 = alloca [24 x i8], align 8           ; 2 uses
  %i.e = alloca [64 x i8], align 8                ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %.not = icmp eq ptr %i.i, %i.g
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store ptr %i.j, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.k, align 8             ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load ptr, ptr %i.l, align 8, !nonnull !4, !align !62, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %.val.i = load ptr, ptr %.val3, align 8, !noalias !75, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = getelementptr i8, ptr %.val3, i64 8
  %.val2.i = load i64, ptr %i.m, align 8, !noalias !75, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !79
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !79
  invoke void @_RNvNtNtCsl6EuCK7xub1_5insta7content4yaml14from_yaml_blob(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val2.i)
          to label %bb.c unwind label %bb.j, !noalias !83

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr %i.b, align 16, !range !84, !noalias !79, !noundef !4 ; 3 uses
  %i.q = icmp eq i8 %i.p, -1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.8..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.6.8..sroa_idx3.i, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !79
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlEBL_(ptr noalias noundef align 8 dereferenceable(32) %i.d), !noalias !79
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %.sroa.418.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %.sroa.519.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.519.0..sroa_idx.i.i, i64 24, i1 false), !noalias !79
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.418.0..sroa_idx.i.i, i64 39, i1 false), !noalias !79
  store i8 %i.p, ptr %i.c, align 16, !noalias !79
  invoke void @_RNvNtNtCsl6EuCK7xub1_5insta7content4yaml14from_yaml_blob(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val2.i)
          to label %bb.g unwind label %bb.f, !noalias !83

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsl6EuCK7xub1_5insta7content7ContentEBF_(ptr noalias noundef align 16 dereferenceable(64) %i.c) #14
          to label %common.resume.i unwind label %bb.i, !noalias !79

bb.g:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.a, align 16, !range !84, !noalias !79, !noundef !4 ; 2 uses
  %i.u = icmp eq i8 %i.t, -1
  br i1 %i.u, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.6.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !75
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsl6EuCK7xub1_5insta7content7ContentEBF_(ptr noalias noundef align 16 dereferenceable(64) %i.c), !noalias !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !79
  br label %bb.k

bb.i:                                             ; preds = %bb.j, %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !79
  unreachable

common.resume.i:                                  ; preds = %bb.m, %bb.j, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.y, %bb.m ], [ %i.s, %bb.f ], [ %i.x, %bb.j ]
  resume { ptr, i32 } %common.resume.op.i

bb.j:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlEBL_(ptr noalias noundef align 8 dereferenceable(32) %i.d) #14
          to label %common.resume.i unwind label %bb.i, !noalias !79

bb.k:                                             ; preds = %bb.d, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !75
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsl6EuCK7xub1_5insta7content5ErrorEEEB1O_(ptr noalias noundef align 8 dereferenceable(32) %.val)
          to label %bb.n unwind label %bb.m, !noalias !85

bb.l:                                             ; preds = %bb.g
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.522.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.522.0..sroa_idx.i.i, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.421.0..sroa_idx.i.i, i64 39, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.418.0..sroa_idx.i.i, i64 39, i1 false), !noalias !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.519.0..sroa_idx.i.i, i64 24, i1 false), !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.411.i.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.6.i, i64 39, i1 false)
  %.sroa.411.i.sroa.0.39..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.411.i.sroa.0.i, i64 39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.411.i.sroa.0.39..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i, i64 24, i1 false)
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.val, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.4.8..sroa_idx.i, i64 32, i1 false), !noalias !75
  br label %common.resume.i

bb.n:                                             ; preds = %bb.k
  %.sroa.4.8..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.val, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.4.8..sroa_idx1.i, i64 32, i1 false), !noalias !75
  br label %bb.q

bb.o:                                             ; preds = %bb.a
  store i8 -2, ptr %0, align 16, !alias.scope !89
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.q
  ret void

bb.q:                                             ; preds = %bb.n, %bb.l
  %.sroa.10.0.i13 = phi i8 [ undef, %bb.n ], [ %i.t, %bb.l ]
  %.sroa.06.0 = phi i8 [ -1, %bb.n ], [ %i.p, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i8 %.sroa.06.0, ptr %0, align 16, !alias.scope !92
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.411.i.sroa.0.i, i64 63, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.sroa.10.0.i13, ptr %.sroa.5.0..sroa_idx, align 16, !alias.scope !92
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.69.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.9, i64 39, i1 false)
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, i64 24, i1 false)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCsl6EuCK7xub1_5insta6outputNtB2_15SnapshotPrinter10print_info(ptr captures(address, read_provenance) %.24.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 12 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.24.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.l = tail call noundef i64 @_RNvNtCsl6EuCK7xub1_5insta5utils10term_width(), !noalias !96 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.24.val, i64 120
  %i.n = load i64, ptr %i.m, align 8, !range !32, !alias.scope !96, !noundef !4
  %.not.i = icmp eq i64 %i.n, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %.24.val, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !96, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %.24.val, i64 136
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !96, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !96
  call void @_RNvNtCsl6EuCK7xub1_5insta5utils22format_rust_expression(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.r), !noalias !96
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 1095216660735, ptr %i.s, align 8, !noalias !96
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i16 0, ptr %.sroa.58.0..sroa_idx.i, align 8, !noalias !96
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 34
  store <4 x i8> <i8 2, i8 0, i8 0, i8 0>, ptr %.sroa.6.0..sroa_idx.i, align 2, !noalias !96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !96
  store ptr %i.k, ptr %i.i, align 8, !noalias !96
  %.sroa.423.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsK_NtCscsnLevczSXa_7console5utilsINtB5_12StyledObjectINtNtCscdodAO9FK5_5alloc6borrow3CoweEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsl6EuCK7xub1_5insta, ptr %.sroa.423.0..sroa_idx.i.a, align 8, !noalias !96
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @47, ptr noundef nonnull %i.i)
          to label %bb.e unwind label %bb.d, !noalias !96

bb.c:                                             ; preds = %_RNvNtCsl6EuCK7xub1_5insta6output10print_line.exit.i, %bb.a
  %i.t = call { ptr, i64 } @_RNvMs_NtCsl6EuCK7xub1_5insta8snapshotNtB4_8MetaData11description(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(192) %.24.val) ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  %.not35.i = icmp eq ptr %i.u, null
  br i1 %.not35.i, label %bb.l, label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscsnLevczSXa_7console5utils12StyledObjectINtNtCscdodAO9FK5_5alloc6borrow3CoweEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(40) %i.k) #14
          to label %common.resume.i unwind label %bb.aa, !noalias !96

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !96
  %i.w = load i64, ptr %i.k, align 8, !range !32, !alias.scope !99, !noalias !96, !noundef !4
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscsnLevczSXa_7console5utils12StyledObjectINtNtCscdodAO9FK5_5alloc6borrow3CoweEEECsl6EuCK7xub1_5insta.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta.exit.i.i.i unwind label %bb.g, !noalias !96

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %common.resume.i unwind label %bb.h, !noalias !96

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !96
  unreachable

common.resume.i:                                  ; preds = %bb.y, %bb.n, %bb.g, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.bb, %bb.y ], [ %i.y, %bb.g ], [ %i.ao, %bb.n ], [ %i.v, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta.exit.i.i.i: ; preds = %bb.f
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k), !noalias !96
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscsnLevczSXa_7console5utils12StyledObjectINtNtCscdodAO9FK5_5alloc6borrow3CoweEEECsl6EuCK7xub1_5insta.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscsnLevczSXa_7console5utils12StyledObjectINtNtCscdodAO9FK5_5alloc6borrow3CoweEEECsl6EuCK7xub1_5insta.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta.exit.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !96
  %i.aa = icmp ugt i64 %i.l, 65535
  br i1 %i.aa, label %bb.i, label %_RNvNtCsl6EuCK7xub1_5insta6output10print_line.exit.i, !prof !7

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscsnLevczSXa_7console5utils12StyledObjectINtNtCscdodAO9FK5_5alloc6borrow3CoweEEECsl6EuCK7xub1_5insta.exit.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #13, !noalias !96
  unreachable

_RNvNtCsl6EuCK7xub1_5insta6output10print_line.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscsnLevczSXa_7console5utils12StyledObjectINtNtCscdodAO9FK5_5alloc6borrow3CoweEEECsl6EuCK7xub1_5insta.exit.i
  %i.ab = trunc nuw i64 %i.l to i16
  store ptr @9, ptr %i.c, align 8, !noalias !96
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsl6EuCK7xub1_5insta, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !96
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr null, ptr %i.ac, align 8, !noalias !96
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i16 %i.ab, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !96
  call void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @50, ptr noundef nonnull %i.c), !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !96
  br label %bb.c

bb.j:                                             ; preds = %bb.c
  %i.ad = extractvalue { ptr, i64 } %i.t, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !96
  store ptr %i.u, ptr %i.h, align 8, !noalias !96
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !96
  store ptr %i.h, ptr %i.g, align 8, !noalias !96
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsl6EuCK7xub1_5insta, ptr %.sroa.427.0..sroa_idx.i, align 8, !noalias !96
  call void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @19, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !96
  %i.af = icmp ugt i64 %i.l, 65535
  br i1 %i.af, label %bb.k, label %_RNvNtCsl6EuCK7xub1_5insta6output10print_line.exit40.i, !prof !7

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #13
  unreachable

_RNvNtCsl6EuCK7xub1_5insta6output10print_line.exit40.i: ; preds = %bb.j
  %i.ag = trunc nuw i64 %i.l to i16
  store ptr @9, ptr %i.b, align 8, !noalias !96
  %.sroa.42.0..sroa_idx.i38.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsl6EuCK7xub1_5insta, ptr %.sroa.42.0..sroa_idx.i38.i, align 8, !noalias !96
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %i.ah, align 8, !noalias !96
  %.sroa.46.0..sroa_idx.i39.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i16 %i.ag, ptr %.sroa.46.0..sroa_idx.i39.i, align 8, !noalias !96
  call void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @50, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !96
  br label %bb.l

bb.l:                                             ; preds = %_RNvNtCsl6EuCK7xub1_5insta6output10print_line.exit40.i, %bb.c
  %i.ai = load i8, ptr %.24.val, align 16, !range !84, !alias.scope !96, !noundef !4
  %.not36.i = icmp eq i8 %i.ai, -1
  br i1 %.not36.i, label %_RNvNtCsl6EuCK7xub1_5insta6output10print_info.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !96
  call void @_RNvNtNtCsl6EuCK7xub1_5insta7content4yaml9to_string(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(192) %.24.val)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !96
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !96, !nonnull !4, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noalias !96, !noundef !4
  %i.an = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.am)
          to label %bb.o unwind label %bb.n       ; 2 uses

bb.n:                                             ; preds = %bb.w, %bb.v, %bb.t, %bb.r, %bb.q, %bb.o, %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #14
          to label %common.resume.i unwind label %bb.aa

bb.o:                                             ; preds = %bb.m
  %i.ap = extractvalue { ptr, i64 } %i.an, 0      ; 2 uses
  %i.aq = extractvalue { ptr, i64 } %i.an, 1      ; 2 uses
  %i.ar = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.aq, ptr noalias noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 3)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  br i1 %i.ar, label %bb.r, label %bb.q, !prof !104

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #13
          to label %bb.s unwind label %bb.n

bb.r:                                             ; preds = %bb.p
  %i.as = add i64 %i.aq, -3
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.au = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.at, i64 noundef %i.as)
          to label %bb.t unwind label %bb.n       ; 2 uses

bb.s:                                             ; preds = %bb.q
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.av = extractvalue { ptr, i64 } %i.au, 0
  %i.aw = extractvalue { ptr, i64 } %i.au, 1
  store ptr %i.av, ptr %i.e, align 8, !noalias !96
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !96
  store ptr %i.e, ptr %i.d, align 8, !noalias !96
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsl6EuCK7xub1_5insta, ptr %.sroa.431.0..sroa_idx.i, align 8, !noalias !96
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @19, ptr noundef nonnull %i.d)
          to label %bb.u unwind label %bb.n

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96
  %i.ay = icmp ugt i64 %i.l, 65535
  br i1 %i.ay, label %bb.w, label %bb.v, !prof !7

bb.v:                                             ; preds = %bb.u
  %i.az = trunc nuw i64 %i.l to i16
  store ptr @9, ptr %i.a, align 8, !noalias !96
  %.sroa.42.0..sroa_idx.i41.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsl6EuCK7xub1_5insta, ptr %.sroa.42.0..sroa_idx.i41.i, align 8, !noalias !96
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.ba, align 8, !noalias !96
  %.sroa.46.0..sroa_idx.i42.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i16 %i.az, ptr %.sroa.46.0..sroa_idx.i42.i, align 8, !noalias !96
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @50, ptr noundef nonnull %i.a)
          to label %bb.x unwind label %bb.n

bb.w:                                             ; preds = %bb.u
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #13
          to label %.noexc43.i unwind label %bb.n

.noexc43.i:                                       ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta.exit.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume.i unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta.exit.i: ; preds = %bb.x
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !96
  br label %_RNvNtCsl6EuCK7xub1_5insta6output10print_info.exit

bb.aa:                                            ; preds = %bb.n, %bb.d
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

_RNvNtCsl6EuCK7xub1_5insta6output10print_info.exit: ; preds = %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsl6EuCK7xub1_5insta6outputNtB2_15SnapshotPrinter5print(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [48 x i8], align 8                ; 9 uses
  %i.w = alloca [32 x i8], align 8                ; 8 uses
  %i.x = alloca [32 x i8], align 8                ; 8 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [40 x i8], align 8                ; 12 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [40 x i8], align 8               ; 12 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [40 x i8], align 8               ; 12 uses
  %i.ai = alloca [24 x i8], align 8               ; 5 uses
  %i.aj = alloca [48 x i8], align 8               ; 8 uses
  %i.ak = alloca [32 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 7 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [40 x i8], align 8               ; 12 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [40 x i8], align 8               ; 12 uses
  %i.aq = alloca [24 x i8], align 8               ; 5 uses
  %i.ar = alloca [48 x i8], align 16              ; 8 uses
  %i.as = alloca [32 x i8], align 8               ; 8 uses
  %i.at = alloca [24 x i8], align 8               ; 7 uses
  %i.au = alloca [64 x i8], align 8               ; 12 uses
  %i.av = alloca [64 x i8], align 8               ; 6 uses
  %i.aw = alloca [32 x i8], align 16              ; 6 uses
  %i.ax = alloca [24 x i8], align 8               ; 11 uses
  %i.ay = alloca [32 x i8], align 8               ; 7 uses
  %i.az = alloca [16 x i8], align 8               ; 5 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [32 x i8], align 8               ; 8 uses
  %i.bc = alloca [16 x i8], align 8               ; 5 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [32 x i8], align 8               ; 8 uses
  %i.bf = alloca [32 x i8], align 8               ; 8 uses
  %i.bg = alloca [80 x i8], align 8               ; 7 uses
  %i.bh = alloca [24 x i8], align 8               ; 13 uses
  %i.bi = alloca [32 x i8], align 8               ; 12 uses
  %i.bj = alloca [24 x i8], align 8               ; 20 uses
  %i.bk = alloca [24 x i8], align 8               ; 18 uses
  %i.bl = alloca [24 x i8], align 8               ; 6 uses
  %i.bm = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.9.sroa.0.i.i = alloca [16 x i8], align 8 ; 5 uses
  %.sroa.9.sroa.9.i.i = alloca [16 x i8], align 8 ; 5 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [32 x i8], align 8               ; 7 uses
  %i.bp = alloca [24 x i8], align 8               ; 4 uses
  %i.bq = alloca [24 x i8], align 8               ; 5 uses
  %i.br = alloca [24 x i8], align 8               ; 9 uses
  %i.bs = alloca [24 x i8], align 8               ; 8 uses
  %i.bt = alloca [32 x i8], align 8               ; 8 uses
  %i.bu = alloca [16 x i8], align 8               ; 5 uses
  %i.bv = alloca [32 x i8], align 8               ; 7 uses
  %i.bw = alloca [24 x i8], align 8               ; 5 uses
  %i.bx = alloca [24 x i8], align 8               ; 9 uses
  %i.by = alloca [24 x i8], align 8               ; 8 uses
  %i.bz = alloca [32 x i8], align 8               ; 8 uses
  %i.ca = alloca [32 x i8], align 8               ; 7 uses
  %i.cb = alloca [16 x i8], align 8               ; 5 uses
  %i.cc = alloca [16 x i8], align 8               ; 5 uses
  %i.cd = alloca [4 x i8], align 4                ; 4 uses
  %i.ce = alloca [4 x i8], align 4                ; 4 uses
  %i.cf = alloca [24 x i8], align 8               ; 8 uses
  %i.cg = alloca [24 x i8], align 8               ; 8 uses
  %i.ch = alloca [32 x i8], align 8               ; 7 uses
  %i.ci = alloca [16 x i8], align 8               ; 5 uses
  %i.cj = alloca [24 x i8], align 8               ; 4 uses
  %i.ck = alloca [24 x i8], align 8               ; 5 uses
  %i.cl = alloca [24 x i8], align 8               ; 9 uses
  %i.cm = alloca [24 x i8], align 8               ; 8 uses
  %i.cn = alloca [32 x i8], align 8               ; 7 uses
  %i.co = alloca [32 x i8], align 8               ; 7 uses
  %i.cp = alloca [24 x i8], align 8               ; 7 uses
  %i.cq = alloca [16 x i8], align 8               ; 5 uses
  %i.cr = alloca [32 x i8], align 8               ; 7 uses
  %i.cs = alloca [24 x i8], align 8               ; 9 uses
  %i.ct = alloca [32 x i8], align 8               ; 7 uses
  %i.cu = alloca [16 x i8], align 8               ; 5 uses
  %.sroa.07 = alloca [24 x i8], align 8           ; 4 uses
  %i.cv = alloca [40 x i8], align 8               ; 11 uses
  %i.cw = alloca [16 x i8], align 8               ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.cy, null
  br i1 %.not, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  %i.da = load i64, ptr %i.cz, align 8, !noundef !4
  store ptr %i.cy, ptr %i.cw, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.da, ptr %i.db, align 8
  %i.dc = tail call noundef i64 @_RNvNtCsl6EuCK7xub1_5insta5utils10term_width() ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  store ptr %i.cw, ptr %i.cu, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsl6EuCK7xub1_5insta, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.07, ptr noundef nonnull @44, ptr noundef nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07, i64 24, i1 false)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store i64 1095216660735, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  store i16 1, ptr %.sroa.710.0..sroa_idx, align 8
  %.sroa.813.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 34
  store <4 x i8> <i8 2, i8 0, i8 0, i8 0>, ptr %.sroa.813.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  %i.dd = icmp ugt i64 %i.dc, 65535
  br i1 %i.dd, label %bb.ip, label %bb.io, !prof !7

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscsnLevczSXa_7console5utils12StyledObjectNtNtCscdodAO9FK5_5alloc6string6StringEECsl6EuCK7xub1_5insta.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !111, !nonnull !4, !noundef !4
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !111, !noundef !4
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !111, !nonnull !4, !align !112, !noundef !4 ; 7 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !111, !noundef !4 ; 8 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !111 ; 5 uses
  %i.do = load i32, ptr %0, align 8, !range !113, !alias.scope !111, !noundef !4
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !alias.scope !111
  call void @_RNvNtCsl6EuCK7xub1_5insta6output22print_snapshot_summary(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.df, i64 noundef %i.dh, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %i.dj, ptr noalias noundef readonly captures(address, read_provenance) %i.dl, i64 %i.dn, i32 noundef %i.do, i32 %i.dq), !noalias !111
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.ds = load i8, ptr %i.dr, align 1, !range !114, !alias.scope !105, !noundef !4
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.ao, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.du = call noundef i64 @_RNvNtCsl6EuCK7xub1_5insta5utils10term_width(), !noalias !115 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !118
  %i.dv = icmp ugt i64 %i.du, 65535
  br i1 %i.dv, label %bb.d, label %_RNvNtCsl6EuCK7xub1_5insta6output10print_line.exit.i.i, !prof !7

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #13, !noalias !115
  unreachable

_RNvNtCsl6EuCK7xub1_5insta6output10print_line.exit.i.i: ; preds = %bb.c
  %i.dw = trunc nuw i64 %i.du to i16
  store ptr @9, ptr %i.ch, align 8, !noalias !118
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsl6EuCK7xub1_5insta, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !118
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr null, ptr %i.dx, align 8, !noalias !118
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store i16 %i.dw, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !118
  call void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @50, ptr noundef nonnull %i.ch), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !118
  %i.dy = call noundef i64 @_RNvNtCsl6EuCK7xub1_5insta5utils10term_width(), !noalias !115
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ea = load i8, ptr %i.dz, align 8, !range !114, !alias.scope !118, !noundef !4
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.e, label %_RNvNtCsl6EuCK7xub1_5insta6output10print_line.exit._crit_edge.i.i

_RNvNtCsl6EuCK7xub1_5insta6output10print_line.exit._crit_edge.i.i: ; preds = %bb.e, %_RNvNtCsl6EuCK7xub1_5insta6output10print_line.exit.i.i
  call void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 39 to ptr)), !noalias !115
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dj, i64 192 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 16, !range !32, !noalias !115, !noundef !4
  %i.ee = icmp eq i64 %i.ed, -1
  br i1 %i.ee, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvNtCsl6EuCK7xub1_5insta6output10print_line.exit.i.i
  call fastcc void @_RNvMNtCsl6EuCK7xub1_5insta6outputNtB2_15SnapshotPrinter10print_info(ptr nonnull %i.dj), !noalias !115
  br label %_RNvNtCsl6EuCK7xub1_5insta6output10print_line.exit._crit_edge.i.i

bb.f:                                             ; preds = %_RNvNtCsl6EuCK7xub1_5insta6output10print_line.exit._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !118
  %.not164.i.i = icmp eq ptr %i.dl, null
  br i1 %.not164.i.i, label %bb.ac, label %bb.ab, !prof !7

bb.g:                                             ; preds = %_RNvNtCsl6EuCK7xub1_5insta6output10print_line.exit._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !119
  store i64 0, ptr %i.cg, align 8, !noalias !119
  %.sroa.42.0..sroa_idx.i168.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i168.i.i, align 8, !noalias !119
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !119
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i32 1610612768, ptr %i.ef, align 8, !noalias !119
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !noalias !119
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 2, !noalias !119
  store ptr %i.cg, ptr %i.cf, align 8, !noalias !119
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr @80, ptr %i.eg, align 8, !noalias !119
  %i.eh = invoke noundef zeroext i1 @_RNvXs4_NtCsl6EuCK7xub1_5insta8snapshotNtB5_20TextSnapshotContentsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ec, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %bb.i unwind label %bb.h, !noalias !123

bb.h:                                             ; preds = %bb.j, %bb.g
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cg) #14
          to label %common.resume unwind label %bb.k, !noalias !123

bb.i:                                             ; preds = %bb.g
  br i1 %i.eh, label %bb.j, label %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCsl6EuCK7xub1_5insta8snapshot20TextSnapshotContentsNtB5_12SpecToString14spec_to_stringBB_.exit.i.i, !prof !7

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #13
          to label %.noexc.i.i.i unwind label %bb.h, !noalias !123

.noexc.i.i.i:                                     ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !123
  unreachable

common.resume:                                    ; preds = %bb.iq, %bb.is, %bb.h, %.loopexit.split-lp.i.i, %bb.w, %.body.i.i, %bb.am, %.body.i15.i, %bb.bg, %.body1237.i.i, %bb.bw, %bb.ci, %.body1257.i.i, %.body1244.i.i, %bb.ct, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsl6EuCK7xub1_5insta.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta.exit.i1288.i.i, %bb.eb, %bb.fu
  %common.resume.op = phi { ptr, i32 } [ %i.wm, %bb.is ], [ %i.rh, %bb.fu ], [ %i.gt, %bb.am ], [ %lpad.phi.i.i, %.loopexit.split-lp.i.i ], [ %i.ei, %bb.h ], [ %i.gd, %bb.w ], [ %.pn.i.i, %.body.i.i ], [ %i.lj, %bb.eb ], [ %i.hx, %bb.bg ], [ %.pn1211.pn.pn.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsl6EuCK7xub1_5insta.exit.i.i ], [ %i.ip, %bb.bw ], [ %i.jg, %bb.ci ], [ %i.jq, %bb.ct ], [ %.pn.i16.i, %.body.i15.i ], [ %i.jb, %.body1244.i.i ], [ %i.jl, %.body1257.i.i ], [ %.pn1190.i.i, %.body1237.i.i ], [ %.pn1211.pn.pn.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta.exit.i1288.i.i ], [ %i.wl, %bb.iq ]
  resume { ptr, i32 } %common.resume.op

_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCsl6EuCK7xub1_5insta8snapshot20TextSnapshotContentsNtB5_12SpecToString14spec_to_stringBB_.exit.i.i: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false), !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !119
  %i.ek = call i64 @llvm.usub.sat.i64(i64 %i.dy, i64 7) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !118
  %i.el = icmp ugt i64 %i.ek, 65535
  br i1 %i.el, label %bb.m, label %bb.l, !prof !7

bb.l:                                             ; preds = %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCsl6EuCK7xub1_5insta8snapshot20TextSnapshotContentsNtB5_12SpecToString14spec_to_stringBB_.exit.i.i
  %i.em = trunc nuw i64 %i.ek to i16              ; 2 uses
  store ptr @9, ptr %i.cr, align 8, !noalias !118
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsl6EuCK7xub1_5insta, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !118
  %i.en = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr null, ptr %i.en, align 8, !noalias !118
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store i16 %i.em, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !118
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr noundef nonnull @10, ptr noundef nonnull %i.cr)
          to label %.lr.ph.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !115

bb.m:                                             ; preds = %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCsl6EuCK7xub1_5insta8snapshot20TextSnapshotContentsNtB5_12SpecToString14spec_to_stringBB_.exit.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #13
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !115

.loopexit.i.i:                                    ; preds = %bb.o
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.u, %bb.t, %select.unfold.i.i.i.i.i
  %lpad.loopexit188.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i._crit_edge.i.i, %bb.m, %bb.l
  %lpad.loopexit.split-lp189.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit188.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp189.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cs) #14
          to label %common.resume unwind label %bb.aa, !noalias !115

.lr.ph.i.i:                                       ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !118
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !118, !nonnull !4, !noundef !4 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.er = load i64, ptr %i.eq, align 8, !noalias !118, !noundef !4 ; 7 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.22.sroa.8.0..sroa.22.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %.sroa.22.sroa.9.0..sroa.22.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 18
  %.sroa.4140.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %.sroa.4144.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  br label %bb.n

bb.n:                                             ; preds = %bb.z, %.lr.ph.i.i
  %.lcssa196212.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.lcssa196210.i.i, %bb.z ] ; 3 uses
  %.pre.i2.i.i.i.i.i198203.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.pre.i2.i.i.i.i.i197.i.i, %bb.z ] ; 4 uses
  %i.eu = phi i64 [ 0, %.lr.ph.i.i ], [ %i.gb, %bb.z ]
  %i.ev = icmp ult i64 %i.er, %.lcssa196212.i.i
  br i1 %i.ev, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsl6EuCK7xub1_5insta.exit.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i:                     ; preds = %bb.n, %bb.r
  %i.ew = phi i64 [ %i.fl, %bb.r ], [ %.lcssa196212.i.i, %bb.n ] ; 4 uses
  %i.ex = sub nuw i64 %i.er, %i.ew                ; 5 uses
  %i.ey = getelementptr i8, ptr %i.ep, i64 %i.ew  ; 3 uses
  %i.ez = icmp samesign ult i64 %i.ex, 16
  br i1 %i.ez, label %.preheader.i.i.i.i.i.i.i.i.i, label %bb.o

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i
end_hunk_0
