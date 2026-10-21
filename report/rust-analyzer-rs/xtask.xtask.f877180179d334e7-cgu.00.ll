Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/xtask.xtask.f877180179d334e7-cgu.00?download=true
inline.NumInlined: 1092
inline.NumDeleted: 597
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtB6_6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintIBS_B12_EEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterB12_B1n_EE9from_iterB1u_:bb.a
  %..i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.n, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 80)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.f
  %i.o = load i64, ptr %i.c, align 8, !range !6, !noundef !5
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !23, !noundef !5 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.p, label %bb.g, label %bb.h, !prof !9

bb.g:                                             ; preds = %.noexc
  %i.t = load i64, ptr %i.s, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #29
          to label %.noexc4 unwind label %bb.e

.noexc4:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.noexc
  %i.u = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = icmp ule i64 %..i, %i.r
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.u, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 80, i1 false)
  store i64 %i.r, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  br label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTNtNtB6_6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintIBv_BF_EEEE7reserveB17_.exit.i.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1307
  invoke void @_RNvXsE_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintINtNtBX_3vec3VecBT_EEEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB1C_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RNvXsF_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintINtNtB18_3vec3VecB14_EEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB1N_.exit.i.i unwind label %bb.k

bb.j:                                             ; preds = %bb.m, %bb.k
  %.pn.i.i = phi { ptr, i32 } [ %i.ag, %bb.m ], [ %i.x, %bb.k ]
  invoke void @_RNvXsC_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintINtNtBX_3vec3VecBT_EEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %.body unwind label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_RNvXsF_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintINtNtB18_3vec3VecB14_EEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB1N_.exit.i.i: ; preds = %bb.i
  %i.y = load i64, ptr %i.b, align 8, !range !13, !noalias !1307, !noundef !5
  %.not.i.i = icmp eq i64 %i.y, -1
  br i1 %.not.i.i, label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecTNtNtB8_6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintIBx_BH_EEEE16extend_desugaredINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterBH_B12_EEB19_.exit.i, label %bb.l

bb.l:                                             ; preds = %_RNvXsF_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintINtNtB18_3vec3VecB14_EEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB1N_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !1307
  %i.z = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1308, !noundef !5 ; 5 uses
  %i.aa = icmp ult i64 %i.z, 115292150460684698
  call void @llvm.assume(i1 %i.aa)
  %i.ab = load i64, ptr %i.g, align 8, !range !11, !alias.scope !1308, !noundef !5
  %i.ac = icmp eq i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.n, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTNtNtB6_6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintIBv_BF_EEEE7reserveB17_.exit.i.i

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTNtNtB6_6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintIBv_BF_EEEE7reserveB17_.exit.i.i: ; preds = %bb.n, %bb.l
  %i.ad = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1308, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw [80 x i8], ptr %i.ad, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  %i.af = add nuw nsw i64 %i.z, 1
  store i64 %i.af, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1307
  br label %bb.i

bb.m:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintINtNtBG_3vec3VecBC_EEEEB1l_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.a) #27
          to label %bb.j unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  %.val.i.i = load i64, ptr %i.w, align 8, !alias.scope !1309, !noundef !5
  %i.ah = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.z, i64 noundef range(i64 1, 0) %i.ah, i64 noundef 8, i64 noundef 80)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTNtNtB6_6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintIBv_BF_EEEE7reserveB17_.exit.i.i unwind label %bb.m

bb.o:                                             ; preds = %bb.m, %bb.j
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecTNtNtB8_6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintIBx_BH_EEEE16extend_desugaredINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterBH_B12_EEB19_.exit.i: ; preds = %_RNvXsF_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintINtNtB18_3vec3VecB14_EEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB1N_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1307
  invoke void @_RNvXsC_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintINtNtBX_3vec3VecBT_EEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecTNtNtB6_6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintIBI_BS_EEEEINtB2_10SpecExtendBR_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterBS_B1d_EE11spec_extendB1k_.exit unwind label %bb.p

bb.p:                                             ; preds = %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecTNtNtB8_6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintIBx_BH_EEEE16extend_desugaredINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterBH_B12_EEB19_.exit.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.p ], [ %.pn.i.i, %bb.j ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtBG_6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintIBC_B19_EEEEEB1B_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #27
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintINtNtB1B_3vec3VecB1x_EEEEB2g_.exit unwind label %bb.q

_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecTNtNtB6_6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintIBI_BS_EEEEINtB2_10SpecExtendBR_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterBS_B1d_EE11spec_extendB1k_.exit: ; preds = %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecTNtNtB8_6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintIBx_BH_EEEE16extend_desugaredINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterBH_B12_EEB19_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d

bb.q:                                             ; preds = %bb.r, %.body, %bb.e
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintINtNtB1B_3vec3VecB1x_EEEEB2g_.exit: ; preds = %bb.r, %.body
  %.pn9 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn.ph, %bb.r ]
  resume { ptr, i32 } %.pn9

bb.r:                                             ; preds = %bb.e, %bb.b
  %.pn.ph = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.l, %bb.e ]
  invoke void @_RNvXsC_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintINtNtBX_3vec3VecBT_EEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringTNtNtNtCslkzCjlEuW1f_5xtask7codegen5lints4LintINtNtB1B_3vec3VecB1x_EEEEB2g_.exit unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecTReyB12_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapNtNtNtB1O_3str4iter5LinesNCNvNtCslkzCjlEuW1f_5xtask7metrics13parse_metrics0EE9from_iterB3c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapNtNtNtBb_3str4iter5LinesNCNvNtCslkzCjlEuW1f_5xtask7metrics13parse_metrics0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.d, ptr noalias nofree noundef align 8 dereferenceable(72) %1) #23
  %i.f = load ptr, ptr %i.d, align 8, !noundef !5
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40)
  %i.g = load i64, ptr %i.b, align 8, !range !6, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !23, !noundef !5 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.h, label %bb.c, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslkzCjlEuW1f_5xtask.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #29
  unreachable

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslkzCjlEuW1f_5xtask.exit: ; preds = %bb.b
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = icmp ugt i64 %i.j, 3
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  store i64 %i.j, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1318
  invoke fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapNtNtNtBb_3str4iter5LinesNCNvNtCslkzCjlEuW1f_5xtask7metrics13parse_metrics0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c) #23
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslkzCjlEuW1f_5xtask.exit
  %i.o = load ptr, ptr %i.a, align 8, !noalias !1319, !noundef !5
  %.not1.i.i = icmp eq ptr %i.o, null
  br i1 %.not1.i.i, label %.loopexit8, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc, %.noexc6
  %i.p = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1320, !noundef !5 ; 5 uses
  %i.q = icmp ult i64 %i.p, 230584300921369396
  call void @llvm.assume(i1 %i.q)
  %i.r = load i64, ptr %i.e, align 8, !range !11, !alias.scope !1320, !noundef !5
  %i.s = icmp eq i64 %i.p, %i.r
  br i1 %i.s, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTReyBF_EE7reserveCslkzCjlEuW1f_5xtask.exit.i.i, label %.noexc5

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTReyBF_EE7reserveCslkzCjlEuW1f_5xtask.exit.i.i: ; preds = %.lr.ph.i.i
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.p, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 40)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTReyBF_EE7reserveCslkzCjlEuW1f_5xtask.exit.i.i, %.lr.ph.i.i
  %i.t = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1320, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.t, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  %i.v = add nuw nsw i64 %i.p, 1
  store i64 %i.v, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1320
  invoke fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapNtNtNtBb_3str4iter5LinesNCNvNtCslkzCjlEuW1f_5xtask7metrics13parse_metrics0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c) #23
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %.noexc5
  %i.w = load ptr, ptr %i.a, align 8, !noalias !1319, !noundef !5
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %.loopexit8, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.y, align 8
  br label %bb.e

bb.e:                                             ; preds = %.loopexit8, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc5, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTReyBF_EE7reserveCslkzCjlEuW1f_5xtask.exit.i.i, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslkzCjlEuW1f_5xtask.exit
  %lpad.loopexit.split-lp10 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTReyBN_EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTReyB19_EEECslkzCjlEuW1f_5xtask.exit unwind label %bb.f

.loopexit8:                                       ; preds = %.noexc6, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.e

bb.f:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTReyB19_EEECslkzCjlEuW1f_5xtask.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp10
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvNtNtNtCshzWfHUSfYae_4core4iter6traits7collect14default_extendTINtNtCsbSS6DM8SDEO_5alloc3vec3VeccEIB15_NtCsluekWoTk8SK_11proc_macro25IdentEEINtB2_10SpecExtendINtNtNtB8_8adapters3map3MapINtNtB2G_6filter6FilterINtNtNtBa_5slice4iter4IterTReB3Q_EENCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar21generate_syntax_kinds0ENCB40_s_0EE6extendB46_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  tail call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterTReB1K_EENCNvNtNtCslkzCjlEuW1f_5xtask7codegen7grammar21generate_syntax_kinds0ENCB1U_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB39_8for_each4callTcNtCsluekWoTk8SK_11proc_macro25IdentENCINvNvNtB3d_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VeccEIB5A_B4e_EEB4c_E0E0EB20_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapNtNtNtBb_3str4iter5LinesNCNvNtCslkzCjlEuW1f_5xtask7metrics13parse_metrics0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = alloca [4 x i8], align 4                 ; 8 uses
  %i.c = alloca [4 x i8], align 4                 ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1355
  store ptr %i.e, ptr %i.d, align 8, !noalias !1356
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 3 uses
  %.promoted.i.i = load i8, ptr %i.f, align 1, !alias.scope !1357
  %.promoted19.i.i = load i64, ptr %1, align 8, !alias.scope !1358 ; 4 uses
  %i.g = trunc nuw i8 %.promoted.i.i to i1
  br i1 %i.g, label %_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8find_mapTReyB1w_EQNCNvNtCslkzCjlEuW1f_5xtask7metrics13parse_metrics0EB1L_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1357, !nonnull !5, !noundef !5 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !1357, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1359, !noundef !5 ; 6 uses
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.l, %.val1.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !1358 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64                 ; 4 uses
  %i.q = icmp ult i8 %i.o, 5
  %i.r = getelementptr i8, ptr %i.m, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load i8, ptr %i.t, align 8, !range !22, !alias.scope !1358
  %i.v = trunc nuw i8 %i.u to i1                  ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !alias.scope !1358 ; 4 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.lr.ph.i.i
  %.promoted23.i.i = load i64, ptr %i.j, align 8, !alias.scope !1359
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  store i8 1, ptr %i.f, align 1, !alias.scope !1360
  %.not.i3.i.i.i.i.us.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i.i, %.promoted19.i.i
  %or.cond.not.i.i.i.i.i.us.i.i = select i1 %i.v, i1 true, i1 %.not.i3.i.i.i.i.us.i.i
  %i.w = sub nuw i64 %.pre2.i.i.i.i.i.i.i, %.promoted19.i.i ; 4 uses
  %.sroa.0.1.i.i.i.i.us.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.promoted19.i.i ; 4 uses
  %i.x = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i.i.i.i.us.i.i, 0
  %2 = insertvalue { ptr, i64 } %i.x, i64 %i.w, 1 ; 2 uses
  %i.y = add i64 %i.w, -1                         ; 2 uses
  %i.z = insertvalue { ptr, i64 } %2, i64 %i.y, 1
  %i.aa = add i64 %i.w, -2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  br i1 %or.cond.not.i.i.i.i.i.us.i.i, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.us.us.i.i, label %_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8find_mapTReyB1w_EQNCNvNtCslkzCjlEuW1f_5xtask7metrics13parse_metrics0EB1L_.exit

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.us.us.i.i: ; preds = %.lr.ph.split.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1366
  store i32 10, ptr %i.c, align 4, !noalias !1366
  %i.ab = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.us.i.i, i64 noundef %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1), !noalias !1367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1366
  br i1 %i.ab, label %bb.b, label %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.us.us.i.i

bb.b:                                             ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.us.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1366
  store i32 13, ptr %i.b, align 4, !noalias !1366
  %i.ac = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.us.i.i, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1), !noalias !1367 ; 2 uses
  %.sroa.0.0.i15.i.i.i.i.us.us.i.i = select i1 %i.ac, ptr %.sroa.0.1.i.i.i.i.us.i.i, ptr null
  %i.ad = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i15.i.i.i.i.us.us.i.i, 0
  %i.ae = insertvalue { ptr, i64 } %i.ad, i64 %i.aa, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1366
  %..i.i.i.i.us.us.i.i = select i1 %i.ac, { ptr, i64 } %i.ae, { ptr, i64 } %i.z
  br label %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.us.us.i.i

_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.us.us.i.i: ; preds = %bb.b, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.us.us.i.i
  %.merged.i.i.i.i.us.us.i.i = phi { ptr, i64 } [ %..i.i.i.i.us.us.i.i, %bb.b ], [ %2, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.us.us.i.i ] ; 2 uses
  %i.af = extractvalue { ptr, i64 } %.merged.i.i.i.i.us.us.i.i, 0 ; 2 uses
  %.not.us.us.i.i = icmp eq ptr %i.af, null
  br i1 %.not.us.us.i.i, label %_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8find_mapTReyB1w_EQNCNvNtCslkzCjlEuW1f_5xtask7metrics13parse_metrics0EB1L_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.us.us.i.i
  %i.ag = extractvalue { ptr, i64 } %.merged.i.i.i.i.us.us.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1368
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCslkzCjlEuW1f_5xtask7metrics13parse_metrics0INtB7_5FnMutTReEE8call_mutBU_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ag), !noalias !1369
  %i.ah = load ptr, ptr %i.a, align 8, !noalias !1368, !noundef !5 ; 2 uses
  %.not.i.us.us.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.us.us.i.i, label %_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8find_mapTReyB1w_EQNCNvNtCslkzCjlEuW1f_5xtask7metrics13parse_metrics0EB1L_.exit.sink.split, label %.loopexit4.i

.lr.ph.split.i.i:                                 ; preds = %bb.k, %.lr.ph.split.preheader.i.i
  %i.ai = phi i64 [ %i.bf, %bb.k ], [ %.promoted23.i.i, %.lr.ph.split.preheader.i.i ] ; 3 uses
  %.lcssa2122.i.i = phi i64 [ %.lcssa20.i.i, %bb.k ], [ %.promoted19.i.i, %.lr.ph.split.preheader.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  call void @llvm.experimental.noalias.scope.decl(metadata !1363)
  call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  %i.aj = icmp ult i64 %i.l, %i.ai
  br i1 %i.aj, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i.i:             ; preds = %.lr.ph.split.i.i
  call void @llvm.assume(i1 %i.q)
  %.pre.i.i.i.i.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !1359 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i:                       ; preds = %bb.g, %.lr.ph.split.preheader.i.i.i.i.i.i.i
  %i.ak = phi i64 [ %i.az, %bb.g ], [ %i.ai, %.lr.ph.split.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.al = sub nuw i64 %i.l, %i.ak                 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.ak ; 2 uses
  %i.an = icmp samesign ult i64 %i.al, 16
  br i1 %i.an, label %.preheader.i.i.i.i.i.i.i.i, label %bb.d

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %i.ao = call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef range(i64 0, -9223372036854775808) %i.al), !noalias !1370
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.al, %bb.e ]
  %.sroa.0.1.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ap = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i.i.i, 0
  %i.aq = insertvalue { i64, i64 } %i.ap, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.i.i, %bb.e
  %.sroa.01.05.i.i.i.i.i.i.i.i = phi i64 [ %i.au, %bb.e ], [ 0, %.preheader.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.01.05.i.i.i.i.i.i.i.i
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !1371, !noalias !1370, !noundef !5
  %i.at = icmp eq i8 %i.as, %.pre.i.i.i.i.i.i.i
  br i1 %i.at, label %._crit_edge.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.au = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.au, %i.al
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.d
  %.merged.i.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.aq, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.ao, %bb.d ] ; 2 uses
  %i.av = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i.i, 0
  %i.aw = trunc nuw i64 %i.av to i1
  br i1 %i.aw, label %bb.f, label %.split.us.i.i.i.i.i.i.i

bb.f:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i
  %i.ax = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i.i, 1
  %i.ay = add i64 %i.ak, 1
  %i.az = add i64 %i.ay, %i.ax                    ; 11 uses
  store i64 %i.az, ptr %i.j, align 8, !alias.scope !1359
  %.not11.i.i.i.i.i.i.i = icmp ult i64 %i.az, %i.p
  %.not12.i.i.i.i.i.i.i = icmp ugt i64 %i.az, %.val1.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i = or i1 %.not11.i.i.i.i.i.i.i, %.not12.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.g, label %bb.h

.split.us.i.i.i.i.i.i.i:                          ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i
  store i64 %i.l, ptr %i.j, align 8, !alias.scope !1359
  br label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.ba = icmp ult i64 %i.l, %i.az
  br i1 %i.ba, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.bb = sub nuw i64 %i.az, %i.p
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.bb
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.bc, ptr nonnull %i.m, i64 %i.p), !noalias !1372
  %i.bd = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.bd, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i, label %bb.g

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i: ; preds = %bb.h
  store i64 %i.az, ptr %1, align 8, !alias.scope !1357
  br label %select.unfold.i.i.i.i

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i: ; preds = %bb.g, %.split.us.i.i.i.i.i.i.i, %.lr.ph.split.i.i
  %i.be = phi i64 [ %i.ai, %.lr.ph.split.i.i ], [ %i.l, %.split.us.i.i.i.i.i.i.i ], [ %i.az, %bb.g ]
  store i8 1, ptr %i.f, align 1, !alias.scope !1360
  %.not.i3.i.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i.i, %.lcssa2122.i.i
  %or.cond.not.i.i.i.i.i.i.i = select i1 %i.v, i1 true, i1 %.not.i3.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i, label %_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8find_mapTReyB1w_EQNCNvNtCslkzCjlEuW1f_5xtask7metrics13parse_metrics0EB1L_.exit

select.unfold.i.i.i.i:                            ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i
  %i.bf = phi i64 [ %i.az, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i ], [ %i.be, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i ]
  %.lcssa20.i.i = phi i64 [ %i.az, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i ], [ %.lcssa2122.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i ]
  %i.bg = phi i1 [ false, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i ], [ true, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i ]
  %.pn.i.i = phi i64 [ %i.az, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i ]
  %.sroa.4.1.i.i.i.i.i.i = sub nuw i64 %.pn.i.i, %.lcssa2122.i.i ; 4 uses
  %.sroa.0.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.lcssa2122.i.i ; 4 uses
  %i.bh = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i.i.i.i.i.i, 0
  %i.bi = insertvalue { ptr, i64 } %i.bh, i64 %.sroa.4.1.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1366
  store i32 10, ptr %i.c, align 4, !noalias !1366
  %i.bj = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1), !noalias !1367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1366
  br i1 %i.bj, label %bb.i, label %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i.i

bb.i:                                             ; preds = %select.unfold.i.i.i.i
  %i.bk = add i64 %.sroa.4.1.i.i.i.i.i.i, -1      ; 2 uses
  %i.bl = insertvalue { ptr, i64 } %i.bi, i64 %i.bk, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1366
  store i32 13, ptr %i.b, align 4, !noalias !1366
  %i.bm = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i.i, i64 noundef %i.bk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1), !noalias !1367 ; 2 uses
  %i.bn = add i64 %.sroa.4.1.i.i.i.i.i.i, -2
  %.sroa.0.0.i15.i.i.i.i.i.i = select i1 %i.bm, ptr %.sroa.0.1.i.i.i.i.i.i, ptr null
  %i.bo = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i15.i.i.i.i.i.i, 0
  %i.bp = insertvalue { ptr, i64 } %i.bo, i64 %i.bn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1366
  %..i.i.i.i.i.i = select i1 %i.bm, { ptr, i64 } %i.bp, { ptr, i64 } %i.bl
  br label %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i.i

_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i.i: ; preds = %bb.i, %select.unfold.i.i.i.i
  %.merged.i.i.i.i.i.i = phi { ptr, i64 } [ %..i.i.i.i.i.i, %bb.i ], [ %i.bi, %select.unfold.i.i.i.i ] ; 2 uses
  %i.bq = extractvalue { ptr, i64 } %.merged.i.i.i.i.i.i, 0 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8find_mapTReyB1w_EQNCNvNtCslkzCjlEuW1f_5xtask7metrics13parse_metrics0EB1L_.exit, label %bb.j

bb.j:                                             ; preds = %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i.i
  %i.br = extractvalue { ptr, i64 } %.merged.i.i.i.i.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1368
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCslkzCjlEuW1f_5xtask7metrics13parse_metrics0INtB7_5FnMutTReEE8call_mutBU_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef %i.br), !noalias !1369
  %i.bs = load ptr, ptr %i.a, align 8, !noalias !1368, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i, label %bb.k, label %.loopexit4.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1368
  br i1 %i.bg, label %_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8find_mapTReyB1w_EQNCNvNtCslkzCjlEuW1f_5xtask7metrics13parse_metrics0EB1L_.exit, label %.lr.ph.split.i.i

.loopexit4.i:                                     ; preds = %bb.j, %bb.c
  %.us-phi.i.i = phi ptr [ %i.ah, %bb.c ], [ %i.bs, %bb.j ]
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i, i64 32, i1 false), !noalias !1373
  br label %_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8find_mapTReyB1w_EQNCNvNtCslkzCjlEuW1f_5xtask7metrics13parse_metrics0EB1L_.exit.sink.split

_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8find_mapTReyB1w_EQNCNvNtCslkzCjlEuW1f_5xtask7metrics13parse_metrics0EB1L_.exit.sink.split: ; preds = %bb.c, %.loopexit4.i
  %storemerge.i.ph = phi ptr [ %.us-phi.i.i, %.loopexit4.i ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1368
  br label %_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8find_mapTReyB1w_EQNCNvNtCslkzCjlEuW1f_5xtask7metrics13parse_metrics0EB1L_.exit

_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8find_mapTReyB1w_EQNCNvNtCslkzCjlEuW1f_5xtask7metrics13parse_metrics0EB1L_.exit: ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i, %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i.i, %bb.k, %_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8find_mapTReyB1w_EQNCNvNtCslkzCjlEuW1f_5xtask7metrics13parse_metrics0EB1L_.exit.sink.split, %bb.a, %.lr.ph.split.us.i.i, %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.us.us.i.i
  %storemerge.i = phi ptr [ null, %.lr.ph.split.us.i.i ], [ null, %bb.a ], [ null, %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.us.us.i.i ], [ %storemerge.i.ph, %_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8find_mapTReyB1w_EQNCNvNtCslkzCjlEuW1f_5xtask7metrics13parse_metrics0EB1L_.exit.sink.split ], [ null, %bb.k ], [ null, %_RNvXss_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i.i ], [ null, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1355
  store ptr %storemerge.i, ptr %0, align 8, !alias.scope !1352
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitAcj3_ENCNvNtCslkzCjlEuW1f_5xtask4tidy14check_licenses0ENCB1T_s_0ENCB1T_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1422
  store ptr %i.c, ptr %i.b, align 8, !noalias !1423
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %.promoted.i.i.i.i = load i8, ptr %i.d, align 1, !alias.scope !1424
  %.promoted20.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !1425
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1425, !nonnull !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1425, !nonnull !5 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.j, align 8, !range !27, !alias.scope !1425
  %.ptr.1.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.val2.i.1.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.ptr.1.i.i.i.i.i.i.i.i.i.i.i, align 4, !range !27, !alias.scope !1425
  %.ptr.2.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val2.i.2.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.ptr.2.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !27, !alias.scope !1425
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i8, ptr %i.k, align 8, !range !22, !alias.scope !1425
  %i.m = trunc nuw i8 %i.l to i1
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !alias.scope !1425 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.promoted23.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1425
  %.promoted24.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !1425
  br label %bb.b

bb.b:                                             ; preds = %select.unfold.i.i.i.i, %bb.a
  %i.o = phi i64 [ %i.bm, %select.unfold.i.i.i.i ], [ %.promoted24.i.i.i.i, %bb.a ]
  %i.p = phi ptr [ %i.bn, %select.unfold.i.i.i.i ], [ %.promoted23.i.i.i.i, %bb.a ]
  %.pre.i.i.i22.i.i.i.i = phi i64 [ %.pre.i.i.i21.i.i.i.i, %select.unfold.i.i.i.i ], [ %.promoted20.i.i.i.i, %bb.a ] ; 5 uses
  %i.q = phi i8 [ %i.bo, %select.unfold.i.i.i.i ], [ %.promoted.i.i.i.i, %bb.a ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitAcj3_ENCNvNtCslkzCjlEuW1f_5xtask4tidy14check_licenses0ENCB1P_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1T_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i.i.i, %bb.c
  %i.s = phi i64 [ %i.bi, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %i.t = phi ptr [ %i.be, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i.i.i ], [ %i.p, %bb.c ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  %i.u = ptrtoint ptr %i.t to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  %i.v = icmp eq ptr %i.t, %i.h
  br i1 %i.v, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalAcj3_E7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 4 uses
  store ptr %i.w, ptr %i.f, align 8, !alias.scope !1433
  %i.x = load i8, ptr %i.t, align 1, !noalias !1434, !noundef !5 ; 5 uses
  %i.y = icmp sgt i8 %i.x, -1
  br i1 %i.y, label %bb.f, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.z = and i8 %i.x, 31
  %i.aa = zext nneg i8 %i.z to i32                ; 3 uses
  %i.ab = icmp ne ptr %i.w, %i.h
  call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 2 ; 4 uses
  store ptr %i.ac, ptr %i.f, align 8, !alias.scope !1435
  %i.ad = load i8, ptr %i.w, align 1, !noalias !1434, !noundef !5
  %i.ae = shl nuw nsw i32 %i.aa, 6
  %i.af = and i8 %i.ad, 63
  %i.ag = zext nneg i8 %i.af to i32               ; 2 uses
  %i.ah = or disjoint i32 %i.ae, %i.ag
  %i.ai = icmp samesign ugt i8 %i.x, -33
  br i1 %i.ai, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.aj = zext nneg i8 %i.x to i32
  br label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i.i.i.i.i.i.i.i.i
  %i.ak = icmp ne ptr %i.ac, %i.h
  call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 3 ; 4 uses
  store ptr %i.al, ptr %i.f, align 8, !alias.scope !1436
  %i.am = load i8, ptr %i.ac, align 1, !noalias !1434, !noundef !5
  %i.an = shl nuw nsw i32 %i.ag, 6
  %i.ao = and i8 %i.am, 63
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.an, %i.ap            ; 2 uses
  %i.ar = shl nuw nsw i32 %i.aa, 12
  %i.as = or disjoint i32 %i.aq, %i.ar
  %i.at = icmp samesign ugt i8 %i.x, -17
  br i1 %i.at, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i.i.i.i.i.i.i.i.i
  %i.au = icmp ne ptr %i.al, %i.h
  call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  store ptr %i.av, ptr %i.f, align 8, !alias.scope !1437
  %i.aw = load i8, ptr %i.al, align 1, !noalias !1434, !noundef !5
  %i.ax = shl nuw nsw i32 %i.aa, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.aq, 6
  %i.ba = and i8 %i.aw, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = or disjoint i32 %i.bc, %i.ay
  br label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i.i.i

_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i.i.i.i.i.i.i.i.i, %bb.f, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i.i.i.i.i.i.i.i.i
  %i.be = phi ptr [ %i.al, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i.i.i.i.i.i.i.i.i ], [ %i.av, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ac, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i.i.i.i.i.i.i.i.i ], [ %i.w, %bb.f ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.as, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit14.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bd, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit16.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ah, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask.exit12.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aj, %bb.f ] ; 4 uses
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.bf)
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bg, %i.u
  %i.bi = add i64 %i.bh, %i.s                     ; 5 uses
  store i64 %i.bi, ptr %i.i, align 8, !alias.scope !1438
  %i.bj = icmp eq i32 %.val2.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i.i
  %i.bk = icmp eq i32 %.val2.i.1.i.i.i.i.i.i.i.i.i.i.i, %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i.i
  %or.cond.i.not12.i.not6.i.i.i.i.i.i.i.i = select i1 %i.bj, i1 true, i1 %i.bk
  %i.bl = icmp eq i32 %.val2.i.2.i.i.i.i.i.i.i.i.i.i.i, %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i.i
  %or.cond.not.i.not.i.i.i.i.i.i.i.i = select i1 %or.cond.i.not12.i.not6.i.i.i.i.i.i.i.i, i1 true, i1 %i.bl
  br i1 %or.cond.not.i.not.i.i.i.i.i.i.i.i, label %bb.g, label %bb.d

bb.g:                                             ; preds = %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj3_ENtB5_8Searcher4nextCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i.i.i
  store i64 %i.bi, ptr %0, align 8, !alias.scope !1424
  br label %select.unfold.i.i.i.i

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalAcj3_E7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i: ; preds = %bb.d
  store i8 1, ptr %i.d, align 1, !alias.scope !1439
  %.not.i.i.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i.i, %.pre.i.i.i22.i.i.i.i
  %or.cond.not.i.i.i.i.i.i.i = select i1 %i.m, i1 true, i1 %.not.i.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitAcj3_ENCNvNtCslkzCjlEuW1f_5xtask4tidy14check_licenses0ENCB1P_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1T_.exit.thread

select.unfold.i.i.i.i:                            ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalAcj3_E7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i, %bb.g
  %i.bm = phi i64 [ %i.bi, %bb.g ], [ %i.s, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalAcj3_E7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i ]
  %i.bn = phi ptr [ %i.be, %bb.g ], [ %i.t, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalAcj3_E7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i ]
  %.pre.i.i.i21.i.i.i.i = phi i64 [ %i.bi, %bb.g ], [ %.pre.i.i.i22.i.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalAcj3_E7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i ]
  %i.bo = phi i8 [ 0, %bb.g ], [ 1, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalAcj3_E7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i ]
  %.pn30.i.i.i.i = phi i64 [ %i.s, %bb.g ], [ %.pre2.i.i.i.i.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalAcj3_E7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i ]
  %.sroa.4.1.i.i.i.i.i.i = sub nuw i64 %.pn30.i.i.i.i, %.pre.i.i.i22.i.i.i.i ; 2 uses
  %.sroa.0.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.pre.i.i.i22.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1423
  store ptr %.sroa.0.1.i.i.i.i.i.i, ptr %i.a, align 8, !noalias !1440
  store i64 %.sroa.4.1.i.i.i.i.i.i, ptr %i.n, align 8, !noalias !1440
  %i.bp = call noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCslkzCjlEuW1f_5xtask4tidy14check_licenses0INtB7_5FnMutTRReEE8call_mutBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !1441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1423
  br i1 %i.bp, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitAcj3_ENCNvNtCslkzCjlEuW1f_5xtask4tidy14check_licenses0ENCB1P_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1T_.exit, label %bb.b

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitAcj3_ENCNvNtCslkzCjlEuW1f_5xtask4tidy14check_licenses0ENCB1P_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1T_.exit.thread: ; preds = %bb.b, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalAcj3_E7get_endCslkzCjlEuW1f_5xtask.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1422
  br label %bb.j

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitAcj3_ENCNvNtCslkzCjlEuW1f_5xtask4tidy14check_licenses0ENCB1P_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1T_.exit: ; preds = %select.unfold.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.le = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.pre.i.i.i22.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1422
  %i.bq = call { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i.i.le, i64 noundef %.sroa.4.1.i.i.i.i.i.i) ; 2 uses
  %i.br = extractvalue { ptr, i64 } %i.bq, 0      ; 4 uses
  %i.bs = extractvalue { ptr, i64 } %i.bq, 1      ; 5 uses
  %.not = icmp eq ptr %i.br, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitAcj3_ENCNvNtCslkzCjlEuW1f_5xtask4tidy14check_licenses0ENCB1P_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1T_.exit
  %i.bt = icmp ult i64 %i.bs, 11
  br i1 %i.bt, label %.split.i, label %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i

.split.i:                                         ; preds = %bb.h
  %i.bu = icmp eq i64 %i.bs, 10
  br i1 %i.bu, label %_RNCNvNtCslkzCjlEuW1f_5xtask4tidy14check_licensess0_0B5_.exit, label %bb.i, !prof !7

_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i: ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 10
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !1442, !noundef !5
  %i.bx = icmp sgt i8 %i.bw, -65
  br i1 %i.bx, label %_RNCNvNtCslkzCjlEuW1f_5xtask4tidy14check_licensess0_0B5_.exit, label %bb.i, !prof !7

bb.i:                                             ; preds = %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, %.split.i
  call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.br, i64 noundef %i.bs, i64 noundef 10, i64 noundef %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24
  unreachable

_RNCNvNtCslkzCjlEuW1f_5xtask4tidy14check_licensess0_0B5_.exit: ; preds = %.split.i, %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 10
  %i.bz = add i64 %i.bs, -10
  %i.ca = call { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre12trim_matchescECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.by, i64 noundef %i.bz, i32 noundef 34) ; 2 uses
  %i.cb = extractvalue { ptr, i64 } %i.ca, 0
end_hunk_0
