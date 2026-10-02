Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_bundle-0b83f87b31ae34d3.typst_bundle.bf34c93a048d29f7-cgu.0?download=true
inline.NumInlined: 6006
inline.NumDeleted: 2956
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter7IterMutNtCsgpMJJHpo27b_12typst_bundle4ItemEINtCsj9ySjdMHKcw_6either6EitherINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEINtNtB7_6cloned6ClonedINtB17_4IterTB3y_B4E_EEEERNCNvNtB1z_4link19create_link_anchors0ENtNtNtB9_6traits8iterator8Iterator4nextB1z_:bb.a
  %i.mt = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i, %i.ms
  br label %bb.al

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i20.i.i.i.i.i.i
  %i.mu = getelementptr inbounds i8, ptr %i.mk, i64 -16
  %i.mv = load i64, ptr %i.mu, align 8, !noalias !16155, !noundef !19 ; 3 uses
  %i.mw = load i64, ptr %i.lf, align 8, !noalias !16155, !noundef !19 ; 2 uses
  %i.mx = icmp ult i64 %i.mv, %i.mw
  br i1 %i.mx, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.mv, i64 noundef %i.mw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #45
          to label %.noexc21.i.i.i.i.i.i unwind label %.loopexit.split-lp.i13.i.i.i.i.i, !noalias !16155

.noexc21.i.i.i.i.i.i:                             ; preds = %bb.ao
  unreachable

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i: ; preds = %_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorNtNtB7_8position13PagedPositionE10get_by_locCsgpMJJHpo27b_12typst_bundle.exit.thread.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.my = icmp eq i64 %.sroa.0.048125.i.i.i.i.i.i, 0
  br i1 %i.my, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEECsgpMJJHpo27b_12typst_bundle.exit22.i.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i
  %i.mz = shl nuw i64 %.sroa.0.048125.i.i.i.i.i.i, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.046126.i.i.i.i.i.i, i64 noundef %i.mz, i64 noundef range(i64 1, -9223372036854775807) 16) #48, !noalias !16185
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEECsgpMJJHpo27b_12typst_bundle.exit22.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEECsgpMJJHpo27b_12typst_bundle.exit22.i.i.i.i.i.i: ; preds = %bb.ap, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.thread.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !16186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16155
  %.val15.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !noalias !16155 ; 2 uses
  %.val16.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !noalias !16155, !noundef !19 ; 3 uses
  %i.na = icmp eq i64 %.val16.i.i.i.i.i.i, 0
  br i1 %i.na, label %_RNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors.exit.i.i.i.i.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEECsgpMJJHpo27b_12typst_bundle.exit22.i.i.i.i.i.i
  %i.nb = shl i64 %.val16.i.i.i.i.i.i, 4          ; 2 uses
  %i.nc = add i64 %i.nb, 16                       ; 2 uses
  %i.nd = add i64 %.val16.i.i.i.i.i.i, 17
  %i.ne = add i64 %i.nd, %i.nc                    ; 4 uses
  %i.nf = icmp uge i64 %i.ne, %i.nc
  %i.ng = icmp ult i64 %i.ne, 9223372036854775793
  call void @llvm.assume(i1 %i.nf)
  call void @llvm.assume(i1 %i.ng)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15.i.i.i.i.i.i) ]
  %i.nh = icmp eq i64 %i.ne, 0
  br i1 %i.nh, label %_RNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors.exit.i.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ni = sub nuw nsw i64 -16, %i.nb
  %i.nj = getelementptr inbounds i8, ptr %.val15.i.i.i.i.i.i, i64 %i.ni
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nj, i64 noundef %i.ne, i64 noundef range(i64 1, -9223372036854775807) 16) #48, !noalias !16155
  br label %_RNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors.exit.i.i.i.i.i

bb.ar:                                            ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i
  %i.nk = load ptr, ptr %i.lg, align 8, !noalias !16155, !nonnull !19, !noundef !19
  %i.nl = getelementptr inbounds nuw [48 x i8], ptr %i.nk, i64 %i.mv
  %i.nm = load ptr, ptr %i.nl, align 8, !noalias !16155, !nonnull !19, !noundef !19
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 48
  %i.no = load i64, ptr %i.nn, align 16, !noalias !16155, !noundef !19
  invoke void @_RNvMsb_NtNtCsdaEETE4DqmE_13typst_library5model4linkNtB5_15AnchorGenerator8identify(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f, i64 noundef %i.no)
          to label %bb.as unwind label %.loopexit.i15.i.i.i.i.i, !noalias !16155

bb.as:                                            ; preds = %bb.ar
  %.sroa.421.16.copyload.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !noalias !16155 ; 2 uses
  %.sroa.623.16.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.623.16..sroa_idx.i.i.i.i.i.i, align 1, !noalias !16155 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16187)
  %i.np = load i64, ptr %i.u, align 8, !alias.scope !16187, !noalias !16188, !noundef !19 ; 3 uses
  %i.nq = load i64, ptr %i.e, align 8, !range !37, !alias.scope !16187, !noalias !16188, !noundef !19
  %i.nr = icmp eq i64 %i.np, %i.nq
  br i1 %i.nr, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE8grow_oneCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.aw unwind label %bb.au, !noalias !16188

bb.au:                                            ; preds = %bb.at
  %i.ns = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle(ptr %.sroa.421.16.copyload.i.i.i.i.i.i, i8 %.sroa.623.16.copyload.i.i.i.i.i.i) #49
          to label %.body24.i.i.i.i.i.i unwind label %bb.av, !noalias !16189

bb.av:                                            ; preds = %bb.au
  %i.nt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !16189
  unreachable

bb.aw:                                            ; preds = %bb.at, %bb.as
  %i.nu = load ptr, ptr %i.t, align 8, !alias.scope !16187, !noalias !16188, !nonnull !19, !noundef !19
  %i.nv = getelementptr inbounds nuw [32 x i8], ptr %i.nu, i64 %i.np ; 4 uses
  store i128 %i.ln, ptr %i.nv, align 16, !noalias !16190
  %.sroa.421.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  store ptr %.sroa.421.16.copyload.i.i.i.i.i.i, ptr %.sroa.421.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !16190
  %.sroa.622.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nv, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.622.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.622.16..sroa_idx.i.i.i.i.i.i, i64 7, i1 false), !noalias !16155
  %.sroa.623.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nv, i64 31
  store i8 %.sroa.623.16.copyload.i.i.i.i.i.i, ptr %.sroa.623.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !16190
  %i.nw = add i64 %i.np, 1
  store i64 %i.nw, ptr %i.u, align 8, !alias.scope !16187, !noalias !16188
  br label %_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorNtNtB7_8position13PagedPositionE10get_by_locCsgpMJJHpo27b_12typst_bundle.exit.thread.i.i.i.i.i.i

_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorNtNtB7_8position13PagedPositionE10get_by_locCsgpMJJHpo27b_12typst_bundle.exit.thread.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %bb.aw, %.lr.ph.split.i.i.i.i.i.i
  %i.nx = icmp eq ptr %i.lm, %i.lb
  br i1 %i.nx, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i, label %.lr.ph.splitthread-pre-split.i.i.i.i.i.i, !llvm.loop !16094

.body30.i.i.i.i.i:                                ; preds = %bb.y, %bb.x
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !16155
  unreachable

bb.ax:                                            ; preds = %bb.ag
  %i.ny = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nz = icmp eq i64 %.sroa.0.0.copyload.i12.i.i.i.i.i, 0
  br i1 %i.nz, label %.body.i.i.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.oa = shl nuw i64 %.sroa.0.0.copyload.i12.i.i.i.i.i, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i.i.i.i.i, i64 noundef %i.oa, i64 noundef range(i64 1, -9223372036854775807) 16) #48, !noalias !16155
  br label %.body.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit32.i.i.i.i.i: ; preds = %bb.z, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit.i28.i.i.i.i.i
  %.val13.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !noalias !16155 ; 2 uses
  %.val14.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !noalias !16155, !noundef !19 ; 3 uses
  %i.ob = icmp eq i64 %.val14.i.i.i.i.i.i, 0
  br i1 %i.ob, label %common.resume.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i23.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i23.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit32.i.i.i.i.i
  %i.oc = shl i64 %.val14.i.i.i.i.i.i, 4          ; 2 uses
  %i.od = add i64 %i.oc, 16                       ; 2 uses
  %i.oe = add i64 %.val14.i.i.i.i.i.i, 17
  %i.of = add i64 %i.oe, %i.od                    ; 4 uses
  %i.og = icmp uge i64 %i.of, %i.od
  %i.oh = icmp ult i64 %i.of, 9223372036854775793
  call void @llvm.assume(i1 %i.og), !noalias !16192
  call void @llvm.assume(i1 %i.oh), !noalias !16192
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.i.i.i.i.i) ], !noalias !16192
  %i.oi = icmp eq i64 %i.of, 0
  br i1 %i.oi, label %common.resume.i, label %bb.az

bb.az:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i23.i.i.i.i.i
  %i.oj = sub nuw nsw i64 -16, %i.oc
  %i.ok = getelementptr inbounds i8, ptr %.val13.i.i.i.i.i.i, i64 %i.oj
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ok, i64 noundef %i.of, i64 noundef range(i64 1, -9223372036854775807) 16) #48, !noalias !16155
  br label %common.resume.i

_RNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors.exit.i.i.i.i.i: ; preds = %bb.aq, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEECsgpMJJHpo27b_12typst_bundle.exit22.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16136
  call void @llvm.experimental.noalias.scope.decl(metadata !16193)
  %i.ol = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %.val.i19.i.i.i.i.i = load ptr, ptr %i.ol, align 16, !alias.scope !16194, !noalias !16119, !nonnull !19, !noundef !19 ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %.val1.i.i.i.i.i.i = load i64, ptr %i.om, align 8, !alias.scope !16194, !noalias !16119, !noundef !19
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull readonly align 16 %.val.i19.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i unwind label %bb.ba, !noalias !16195

bb.ba:                                            ; preds = %_RNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors.exit.i.i.i.i.i
  %i.on = landingpad { ptr, i32 }
          cleanup
  %i.oo = icmp eq i64 %i.fd, 0
  br i1 %i.oo, label %.body.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.op = shl nuw i64 %i.fd, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i19.i.i.i.i.i, i64 noundef %i.op, i64 noundef range(i64 1, -9223372036854775807) 16) #48, !noalias !16195
  br label %.body.i.i.i.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i: ; preds = %_RNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors.exit.i.i.i.i.i
  %i.oq = icmp eq i64 %i.fd, 0
  br i1 %i.oq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i
  %i.or = shl nuw i64 %i.fd, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i19.i.i.i.i.i, i64 noundef %i.or, i64 noundef range(i64 1, -9223372036854775807) 16) #48, !noalias !16195
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.bb, %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !16119
  br label %common.resume.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i: ; preds = %bb.bc, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !16119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.os = load ptr, ptr %i.ol, align 16, !alias.scope !16118, !noalias !16119, !nonnull !19, !noundef !19 ; 2 uses
  %i.ot = load i64, ptr %i.om, align 8, !alias.scope !16118, !noalias !16119, !noundef !19
  %i.ou = getelementptr inbounds nuw [32 x i8], ptr %i.os, i64 %i.ot
  %i.ov = ptrtoint ptr %i.os to i64
  br label %bb.bh

bb.bd:                                            ; preds = %_RINvXs7_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3setINtB6_7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2Z_8adapters6copied6CopiedINtB6_4IterB14_EEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i
  %i.ow = landingpad { ptr, i32 }
          cleanup
  %.val7.i.i.i.i.i = load ptr, ptr %i.i, align 8, !noalias !16136
  %.val8.i.i.i.i.i = load i64, ptr %i.z, align 8, !noalias !16136, !noundef !19
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsgpMJJHpo27b_12typst_bundle(ptr %.val7.i.i.i.i.i, i64 %.val8.i.i.i.i.i) #49, !noalias !16136
  br label %common.resume.i

bb.be:                                            ; preds = %_RINvXs7_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3setINtB6_7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2Z_8adapters6copied6CopiedINtB6_4IterB14_EEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i
  %.sroa.040.0.copyload.i.i.i.i.i = load ptr, ptr %i.j, align 8, !noalias !16136, !nonnull !19, !noundef !19 ; 5 uses
  %.sroa.441.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.441.0..sroa_idx.i.i.i.i.i, align 8, !noalias !16136 ; 5 uses
  %.sroa.543.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.543.0..sroa_idx.i.i.i.i.i, align 8, !noalias !16136
  %.val3.i.i.i21.i.i.i.i.i = load <16 x i8>, ptr %.sroa.040.0.copyload.i.i.i.i.i, align 16, !noalias !16196
  %i.ox = icmp eq i64 %.sroa.441.0.copyload.i.i.i.i.i, 0
  br i1 %i.ox, label %bb.bf, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i: ; preds = %bb.be
  %2 = icmp slt i64 %.sroa.441.0.copyload.i.i.i.i.i, 576460752303423487
  call void @llvm.assume(i1 %2)
  %i.oy = shl i64 %.sroa.441.0.copyload.i.i.i.i.i, 5 ; 2 uses
  %3 = add i64 %i.oy, 32                          ; 2 uses
  %4 = add nsw i64 %.sroa.441.0.copyload.i.i.i.i.i, 17
  %i.oz = add i64 %4, %3                          ; 3 uses
  %5 = icmp uge i64 %i.oz, %3
  call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.oz, 9223372036854775793
  call void @llvm.assume(i1 %6)
  %i.pa = sub nuw nsw i64 -32, %i.oy
  %i.pb = getelementptr inbounds i8, ptr %.sroa.040.0.copyload.i.i.i.i.i, i64 %i.pa
  br label %bb.bf

bb.bf:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i, %bb.be
  %.sroa.511.0.i.i.i.i.i.i.i = phi ptr [ undef, %bb.be ], [ %i.pb, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i ]
  %.sroa.410.0.i.i.i.i.i.i.i = phi i64 [ undef, %bb.be ], [ %i.oz, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.be ], [ 16, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i ]
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.040.0.copyload.i.i.i.i.i, i64 16
  %i.pd = icmp sgt <16 x i8> %.val3.i.i.i21.i.i.i.i.i, splat (i8 -1)
  %i.pe = getelementptr i8, ptr %.sroa.040.0.copyload.i.i.i.i.i, i64 %.sroa.441.0.copyload.i.i.i.i.i
  %i.pf = getelementptr i8, ptr %i.pe, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !16136
  %.val.i.i.i.i.i = load ptr, ptr %i.i, align 8, !noalias !16136 ; 2 uses
  %.val6.i.i.i.i.i = load i64, ptr %i.z, align 8, !noalias !16136, !noundef !19 ; 3 uses
  %i.pg = icmp eq i64 %.val6.i.i.i.i.i, 0
  br i1 %i.pg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bf
  %i.ph = shl i64 %.val6.i.i.i.i.i, 4             ; 2 uses
  %i.pi = add i64 %i.ph, 16                       ; 2 uses
  %i.pj = add i64 %.val6.i.i.i.i.i, 17
  %i.pk = add i64 %i.pj, %i.pi                    ; 4 uses
  %i.pl = icmp uge i64 %i.pk, %i.pi
  %i.pm = icmp ult i64 %i.pk, 9223372036854775793
  call void @llvm.assume(i1 %i.pl)
  call void @llvm.assume(i1 %i.pm)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  %i.pn = icmp eq i64 %i.pk, 0
  br i1 %i.pn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.po = sub nuw nsw i64 -16, %i.ph
  %i.pp = getelementptr inbounds i8, ptr %.val.i.i.i.i.i, i64 %i.po
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pp, i64 noundef %i.pk, i64 noundef range(i64 1, -9223372036854775807) 16) #48, !noalias !16136
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i: ; preds = %bb.bg, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !16136
  br label %bb.bh

bb.bh:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i, %bb.c
  %.sroa.142.0.ph.i = phi i64 [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %.sroa.543.0.copyload.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ undef, %bb.c ] ; 2 uses
  %.sroa.13.0.ph.i = phi <16 x i1> [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %i.pd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ undef, %bb.c ] ; 2 uses
  %.sroa.12.0.ph.i = phi ptr [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %i.pf, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ undef, %bb.c ] ; 2 uses
  %.sroa.11.0.ph.i = phi ptr [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %i.pc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ undef, %bb.c ] ; 2 uses
  %.sroa.10.0.ph.i = phi ptr [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %.sroa.040.0.copyload.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ undef, %bb.c ] ; 2 uses
  %.sroa.9.0.ph.i = phi ptr [ %i.ou, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %.sroa.511.0.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ inttoptr (i64 16 to ptr), %bb.c ] ; 2 uses
  %.sroa.8.0.ph.i = phi i64 [ %i.ov, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %.sroa.410.0.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ 16, %bb.c ] ; 2 uses
  %.sroa.0.0.ph.i = phi i64 [ -1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ %.sink.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ], [ -1, %bb.c ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsj9ySjdMHKcw_6either6EitherINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEINtNtNtNtB4_4iter8adapters6cloned6ClonedINtNtNtB4_5slice4iter4IterTB2o_B3u_EEEEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1)
          to label %bb.bj unwind label %bb.bi, !noalias !16107

_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtCsgpMJJHpo27b_12typst_bundle4ItemERNCNvNtB1J_4link19create_link_anchors0EEINtB5_8FuseImplBY_E4nextB1J_.exit.i: ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit.i
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 64
  call fastcc void @_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtCsj9ySjdMHKcw_6either6EitherINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IterTB2x_B3D_EEEEB54_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %i.pq) #50
  br label %_RNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtCsgpMJJHpo27b_12typst_bundle4ItemERNCNvNtB1W_4link19create_link_anchors0EINtCsj9ySjdMHKcw_6either6EitherINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEINtNtB7_6cloned6ClonedINtB1u_4IterTB4y_B5E_EEEEENtNtNtB9_6traits8iterator8Iterator4nextB1W_.exit

bb.bi:                                            ; preds = %bb.bh
  %i.pr = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.ph.i, ptr %1, align 8, !alias.scope !16105, !noalias !16107
  store i64 %.sroa.8.0.ph.i, ptr %.sroa.519.0..sroa_idx20.i, align 8, !alias.scope !16105, !noalias !16107
  store ptr %.sroa.9.0.ph.i, ptr %.sroa.622.0..sroa_idx23.i, align 8, !alias.scope !16105, !noalias !16107
  store ptr %.sroa.10.0.ph.i, ptr %.sroa.725.0..sroa_idx26.i, align 8, !alias.scope !16105, !noalias !16107
  store ptr %.sroa.11.0.ph.i, ptr %.sroa.828.0..sroa_idx29.i, align 8, !alias.scope !16105, !noalias !16107
  store ptr %.sroa.12.0.ph.i, ptr %.sroa.931.0..sroa_idx32.i, align 8, !alias.scope !16105, !noalias !16107
  store <16 x i1> %.sroa.13.0.ph.i, ptr %.sroa.1034.0..sroa_idx35.i, align 8, !alias.scope !16105, !noalias !16107
  store i64 %.sroa.142.0.ph.i, ptr %.sroa.1239.0..sroa_idx40.i, align 8, !alias.scope !16105, !noalias !16107
  br label %common.resume.i

bb.bj:                                            ; preds = %bb.bh
  store i64 %.sroa.0.0.ph.i, ptr %1, align 8, !alias.scope !16105, !noalias !16107
  store i64 %.sroa.8.0.ph.i, ptr %.sroa.519.0..sroa_idx20.i, align 8, !alias.scope !16105, !noalias !16107
  store ptr %.sroa.9.0.ph.i, ptr %.sroa.622.0..sroa_idx23.i, align 8, !alias.scope !16105, !noalias !16107
  store ptr %.sroa.10.0.ph.i, ptr %.sroa.725.0..sroa_idx26.i, align 8, !alias.scope !16105, !noalias !16107
  store ptr %.sroa.11.0.ph.i, ptr %.sroa.828.0..sroa_idx29.i, align 8, !alias.scope !16105, !noalias !16107
  store ptr %.sroa.12.0.ph.i, ptr %.sroa.931.0..sroa_idx32.i, align 8, !alias.scope !16105, !noalias !16107
  store <16 x i1> %.sroa.13.0.ph.i, ptr %.sroa.1034.0..sroa_idx35.i, align 8, !alias.scope !16105, !noalias !16107
  store i64 %.sroa.142.0.ph.i, ptr %.sroa.1239.0..sroa_idx40.i, align 8, !alias.scope !16105, !noalias !16107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !16106
  call fastcc void @_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtCsj9ySjdMHKcw_6either6EitherINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IterTB2x_B3D_EEEEB54_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1) #50, !noalias !16107
  %i.ps = load i128, ptr %i.k, align 16, !range !20, !noalias !16106, !noundef !19
  %i.pt = trunc nuw i128 %i.ps to i1
  br i1 %i.pt, label %._crit_edge.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit.i

_RNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtCsgpMJJHpo27b_12typst_bundle4ItemERNCNvNtB1W_4link19create_link_anchors0EINtCsj9ySjdMHKcw_6either6EitherINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEINtNtB7_6cloned6ClonedINtB1u_4IterTB4y_B5E_EEEEENtNtNtB9_6traits8iterator8Iterator4nextB1W_.exit: ; preds = %._crit_edge.i, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter7IterMutNtCsgpMJJHpo27b_12typst_bundle4ItemERNCNvNtB1J_4link19create_link_anchors0EEINtB5_8FuseImplBY_E4nextB1J_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3mem9alignment9AlignmentNtB6_5Debug3fmtCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !align !36, !noundef !19
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3mem9alignmentNtB4_9AlignmentNtNtB8_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_5alloc6layout6LayoutNtB6_5Debug3fmtCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !19, !align !36, !noundef !19 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16200
  store ptr %i.b, ptr %i.a, align 8, !noalias !16200
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 4, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @168, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @169)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16200
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !19
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !16203, !noundef !19 ; 2 uses
  %.not.i = icmp sgt i8 %i.b, -1                  ; 2 uses
  %i.c = and i8 %i.b, 127
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !alias.scope !16203, !nonnull !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !16203
  %.sroa.3.0.i = select i1 %.not.i, i64 %i.g, i64 %i.d
  %.sroa.0.0.i = select i1 %.not.i, ptr %i.e, ptr %0
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB2Z_3map11MapConsumerINtNtNtB2Z_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtB4A_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB7J_6engine4SinkEENCINvMB8D_NtB8D_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB4y_EINtNtB9A_9into_iter8IntoIterB4y_EB4y_B6j_NCNCNvB4A_11bundle_impl00E0EE0NCB2S_s_0INtB5C_13CollectResultB6i_EBbr_E0TBbr_Bbr_EE00BbY_ENtB5_3Job7executeB4A_(ptr nofree noundef captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [120 x i8], align 16              ; 11 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.sroa.4.sroa.0.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.sroa.4.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load <2 x i64>, ptr %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.sroa.5.sroa.4.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.5.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.5.sroa.4.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.sroa.5.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.5.sroa.5.sroa.5.0.copyload = load i64, ptr %.sroa.5.sroa.5.sroa.5.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.sroa.6.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.i, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsf1gSX8u3EQ2_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.h, align 8, !noalias !16208, !noundef !19 ; 2 uses
  %i.i = icmp eq ptr %.val.i.i, null
  br i1 %i.i, label %bb.d, label %bb.e, !prof !61

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #46
          to label %bb.f unwind label %bb.g, !noalias !16208, !inline_history !16207

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16208
  store <2 x ptr> %i.e, ptr %i.b, align 16, !noalias !16209
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.5.sroa.4.sroa.0.0.copyload, ptr %.sroa.564.0..sroa_idx, align 16, !noalias !16209
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.5.sroa.4.sroa.4.0.copyload, ptr %.sroa.665.0..sroa_idx, align 8, !noalias !16209
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <2 x i64> %i.f, ptr %.sroa.7.0..sroa_idx, align 16, !noalias !16209
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx66.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.967.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %.sroa.5.sroa.5.sroa.4.0.copyload, ptr %.sroa.967.0..sroa_idx, align 16, !noalias !16209
  %.sroa.1068.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 %.sroa.5.sroa.5.sroa.5.0.copyload, ptr %.sroa.1068.0..sroa_idx, align 8, !noalias !16209
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.5.sroa.6.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, i64 24, i1 false)
  invoke fastcc void @_RNCINvNtCsf1gSX8u3EQ2_10rayon_core4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtBY_3map11MapConsumerINtNtNtBY_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtB2z_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB5G_6engine4SinkEENCINvMB6A_NtB6A_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB2x_EINtNtB7x_9into_iter8IntoIterB2x_EB2x_B4g_NCNCNvB2z_11bundle_impl00E0EE0NCBR_s_0INtB3A_13CollectResultB4f_EB9n_E0B2z_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(120) %i.b, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.b, !noalias !16210, !inline_history !16207

end_hunk_0
