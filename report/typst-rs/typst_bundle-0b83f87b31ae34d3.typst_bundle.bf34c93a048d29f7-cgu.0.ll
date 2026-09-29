Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_bundle-0b83f87b31ae34d3.typst_bundle.bf34c93a048d29f7-cgu.0?download=true
inline.NumInlined: 6006
inline.NumDeleted: 2956
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsj9ySjdMHKcw_6either6EitherINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEINtNtNtNtB4_4iter8adapters6cloned6ClonedINtNtNtB4_5slice4iter4IterTB2o_B3u_EEEEEECsgpMJJHpo27b_12typst_bundle:bb.a
  %.promoted.i.i.i.i.i.i = load i16, ptr %i.h, align 8, !alias.scope !653
  %.promoted6.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !652
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.promoted10.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !652
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.lcssa12.i.i.i.i.i.i = phi ptr [ %.promoted10.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %.lcssa11.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ] ; 2 uses
  %i.l = phi i64 [ %i.f, %.preheader.i.i.i.i.i.i ], [ %i.y, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ]
  %.lcssa58.i.i.i.i.i.i = phi ptr [ %.promoted6.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %.lcssa57.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ] ; 2 uses
  %i.m = phi i16 [ %.promoted.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %i.v, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %.not11.i.i.i.i.i.i.i = icmp eq i16 %i.m, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE9next_implKb0_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i
  store ptr %i.r, ptr %i.i, align 8, !alias.scope !653
  store ptr %i.q, ptr %i.d, align 8, !alias.scope !653
  br label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE9next_implKb0_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i
  %i.n = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa12.i.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.o = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa58.i.i.i.i.i.i, %bb.d ]
  %.val9.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.n, align 16, !noalias !653
  %i.p = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i, splat (i8 -1)
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -512 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.p to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE9next_implKb0_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.d
  %.lcssa11.i.i.i.i.i.i = phi ptr [ %i.r, %._crit_edge.i.i.i.i.i.i.i ], [ %.lcssa12.i.i.i.i.i.i, %bb.d ]
  %.lcssa57.i.i.i.i.i.i = phi ptr [ %i.q, %._crit_edge.i.i.i.i.i.i.i ], [ %.lcssa58.i.i.i.i.i.i, %bb.d ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ %i.m, %bb.d ] ; 3 uses
  %i.s = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.t = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = and i16 %i.s, %.lcssa.i.i.i.i.i.i.i      ; 2 uses
  store i16 %i.v, ptr %i.h, align 8, !alias.scope !653
  %i.w = sub nsw i64 0, %i.u
  %i.x = getelementptr inbounds [32 x i8], ptr %.lcssa57.i.i.i.i.i.i, i64 %i.w ; 2 uses
  %i.y = add i64 %i.l, -1                         ; 3 uses
  store i64 %i.y, ptr %i.e, align 8, !alias.scope !652
  %i.z = getelementptr i8, ptr %i.x, i64 -16
  %.val.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !655, !noalias !652 ; 4 uses
  %i.aa = getelementptr i8, ptr %i.x, i64 -1
  %.val4.i.i.i.i.i.i = load i8, ptr %i.aa, align 1, !alias.scope !655, !noalias !652, !noundef !19
  %.not.i.i.i.i.i.i.i.i.i.i = icmp sgt i8 %.val4.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE9next_implKb0_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ]
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  %i.ab = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !656
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ac, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !656
  %i.ad = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !noalias !656, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, !prof !21

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46, !noalias !656
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ae = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 16
  store ptr %i.ab, ptr %i.j, align 8, !noalias !656
  store i64 8, ptr %i.a, align 8, !noalias !656
  store i64 %i.ae, ptr %i.k, align 8, !noalias !656
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !656
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.e, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE9next_implKb0_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i
  %.old3.i.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.old3.i.i.i.i.i.i, label %_RNvMso_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_7RawIterTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE13drop_elementsCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i, label %bb.d

_RNvMso_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_7RawIterTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE13drop_elementsCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i, %bb.c
  %.not.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsj9ySjdMHKcw_6either6EitherINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEINtNtNtNtB4_4iter8adapters6cloned6ClonedINtNtNtB4_5slice4iter4IterTB22_B38_EEEEECsgpMJJHpo27b_12typst_bundle.exit, label %bb.g

bb.g:                                             ; preds = %_RNvMso_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_7RawIterTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE13drop_elementsCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !657, !noundef !19 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsj9ySjdMHKcw_6either6EitherINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEINtNtNtNtB4_4iter8adapters6cloned6ClonedINtNtNtB4_5slice4iter4IterTB22_B38_EEEEECsgpMJJHpo27b_12typst_bundle.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !657, !nonnull !19, !noundef !19
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) %i.b) #48, !noalias !657
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsj9ySjdMHKcw_6either6EitherINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEINtNtNtNtB4_4iter8adapters6cloned6ClonedINtNtNtB4_5slice4iter4IterTB22_B38_EEEEECsgpMJJHpo27b_12typst_bundle.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %0, align 8, !range !24, !noundef !19
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsgpMJJHpo27b_12typst_bundle.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !660 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 23
  %.val1.i = load i8, ptr %i.e, align 1, !alias.scope !660, !noundef !19
  %.not.i.i.i = icmp sgt i8 %.val1.i, -1
  br i1 %.not.i.i.i, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsgpMJJHpo27b_12typst_bundle.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  %i.f = getelementptr inbounds i8, ptr %.val.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsgpMJJHpo27b_12typst_bundle.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i: ; preds = %bb.c
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !660
  %.not.i.i.i.i = icmp eq i64 %i.g, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsgpMJJHpo27b_12typst_bundle.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !660
  %i.h = getelementptr i8, ptr %.val.i, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !660, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i, label %bb.d, !prof !21

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46, !noalias !660
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i
  %i.i = add nuw nsw i64 %.val.i.i.i.i.i, 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.j, align 8, !noalias !660
  store i64 8, ptr %i.a, align 8, !noalias !660
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.i, ptr %i.k, align 8, !noalias !660
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !660
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsgpMJJHpo27b_12typst_bundle.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !40, !noundef !19 ; 2 uses
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingECsgpMJJHpo27b_12typst_bundle.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.r, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i, %bb.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtBG_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEEECsgpMJJHpo27b_12typst_bundle.exit.i.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %.not.i = icmp eq i8 %i.f, 2
  br i1 %.not.i, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %.val.i.i = load ptr, ptr %0, align 8, !alias.scope !693, !nonnull !19, !noundef !19 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load i64, ptr %i.h, align 8, !alias.scope !693 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  %i.i = getelementptr inbounds i8, ptr %.val.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtBG_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEEECsgpMJJHpo27b_12typst_bundle.exit.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtBN_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtBN_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i: ; preds = %bb.c
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !693
  %.not.i.i.i.i = icmp eq i64 %i.j, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtBG_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEEECsgpMJJHpo27b_12typst_bundle.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtBN_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !693
  %i.k = getelementptr i8, ptr %.val.i.i, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !693, !noundef !19 ; 2 uses
  %1 = mul i64 %.val.i.i.i.i.i, 24
  %2 = add i64 %1, 16                             ; 2 uses
  %narrow.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 768614336404564650
  %3 = icmp ult i64 %2, 9223372036854775799
  %narrow.i.i.i.i.i.i = and i1 %narrow.i.i.i.i.i, %3
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i, label %bb.d, !prof !21

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
          to label %.noexc.i.i unwind label %bb.m, !noalias !693

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.i, ptr %i.l, align 8, !noalias !693
  store i64 8, ptr %i.d, align 8, !noalias !693
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.m, align 8, !noalias !693
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  %i.n = icmp eq i64 %.val1.i.i, 0
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.r, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %.sroa.0.012.i.i.i.i.i ; 2 uses
  %i.r = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i, 1 ; 4 uses
  %.val8.i.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !695, !noalias !693 ; 4 uses
  %i.s = getelementptr i8, ptr %i.q, i64 15
  %.val9.i.i.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !695, !noalias !693, !noundef !19
  %.not.i.i.i.i.i.i.i.i.i = icmp sgt i8 %.val9.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i.i.i) ]
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val8.i.i.i.i.i, inttoptr (i64 16 to ptr)
  %i.t = getelementptr inbounds i8, ptr %.val8.i.i.i.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !696
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.u, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !696
  %i.v = getelementptr i8, ptr %.val8.i.i.i.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !noalias !696, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i, label %bb.g, !prof !21

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !697

.noexc.i.i.i.i.i:                                 ; preds = %bb.g
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i
  %i.w = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 16
  store ptr %i.t, ptr %i.o, align 8, !noalias !696
  store i64 8, ptr %i.c, align 8, !noalias !696
  store i64 %i.w, ptr %i.p, align 8, !noalias !696
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc10.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !697

.noexc10.i.i.i.i.i:                               ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !696
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i: ; preds = %.noexc10.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i, %bb.f, %bb.e
  %i.x = icmp eq i64 %i.r, %.val1.i.i
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i, label %bb.e

.loopexit.i.i.i.i.i:                              ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %lpad.phi.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ]
  %i.y = icmp eq i64 %i.r, %.val1.i.i
  br i1 %i.y, label %.body.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.0.1.i4.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i ], [ %i.ac, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %.sroa.0.1.i4.i.i.i.i ; 2 uses
  %i.ac = add i64 %.sroa.0.1.i4.i.i.i.i, 1        ; 2 uses
  %.val.i10.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !695, !noalias !693 ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 15
  %.val7.i.i.i.i.i = load i8, ptr %i.ad, align 1, !alias.scope !695, !noalias !693, !noundef !19
  %.not.i.i.i.i.i.i.i.i = icmp sgt i8 %.val7.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i10.i.i.i.i) ], !noalias !694
  %.not.i.i.i.i.i.i11.i.i.i.i = icmp eq ptr %.val.i10.i.i.i.i, inttoptr (i64 16 to ptr)
  %i.ae = getelementptr inbounds i8, ptr %.val.i10.i.i.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i11.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.af = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !698
  %.not.i.i.i.i.i12.i.i.i.i = icmp eq i64 %i.af, 1
  br i1 %.not.i.i.i.i.i12.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i
  fence acquire, !noalias !694
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !698
  %i.ag = getelementptr i8, ptr %.val.i10.i.i.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !noalias !698, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i, label %bb.k, !prof !21

bb.k:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !693

.noexc.i.i.i.i:                                   ; preds = %bb.k
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i
  %i.ah = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i.i.i, 16
  store ptr %i.ae, ptr %i.z, align 8, !noalias !698
  store i64 8, ptr %i.b, align 8, !noalias !698
  store i64 %i.ah, ptr %i.aa, align 8, !noalias !698
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc13.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !693

.noexc13.i.i.i.i:                                 ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !698
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i: ; preds = %.noexc13.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i, %bb.j, %bb.i
  %i.ai = icmp eq i64 %i.ac, %.val1.i.i
  br i1 %i.ai, label %.body.i.i.i.i, label %bb.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i, %bb.k
  %lpad.loopexit.split-lp15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !697
  unreachable

.body.i.i.i.i:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i, %bb.h
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i.i unwind label %bb.l, !noalias !693

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.noexc2.i.i unwind label %bb.m, !noalias !693

.noexc2.i.i:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !693
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtBG_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEEECsgpMJJHpo27b_12typst_bundle.exit.i.i

bb.l:                                             ; preds = %.body.i.i.i.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !693
  unreachable

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.m, %.body.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ak, %bb.m ], [ %lpad.phi.i.i.i.i.i, %.body.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.al) #49
          to label %bb.q unwind label %bb.p

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtBG_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEEECsgpMJJHpo27b_12typst_bundle.exit.i.i: ; preds = %.noexc2.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtBN_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i, %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !699)
  %.val.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !700 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 31
  %.val1.i.i.i = load i8, ptr %i.an, align 1, !alias.scope !700, !noundef !19
  %.not.i.i.i3.i.i = icmp sgt i8 %.val1.i.i.i, -1
  br i1 %.not.i.i.i3.i.i, label %bb.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingECsgpMJJHpo27b_12typst_bundle.exit

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtBG_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEEECsgpMJJHpo27b_12typst_bundle.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  %i.ao = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingECsgpMJJHpo27b_12typst_bundle.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i: ; preds = %bb.n
  %i.ap = atomicrmw sub ptr %i.ao, i64 1 release, align 8, !noalias !700
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ap, 1
  br i1 %.not.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingECsgpMJJHpo27b_12typst_bundle.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !700
  %i.aq = getelementptr i8, ptr %.val.i.i.i, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.aq, align 8, !noalias !700, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i, label %bb.o, !prof !21
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeEECsgpMJJHpo27b_12typst_bundle:bb.a
  %i.s = load i64, ptr %i.q, align 16, !range !48, !alias.scope !1019, !noalias !1018, !noundef !19
  switch i64 %i.s, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.g
    i64 2, label %bb.j
    i64 3, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html3dom9HtmlFrameECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(120) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeECsgpMJJHpo27b_12typst_bundle.exit.i unwind label %.loopexit, !noalias !1018, !inline_history !1008

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.v = load i8, ptr %i.u, align 16, !range !49, !alias.scope !1020, !noalias !1018, !noundef !19
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeECsgpMJJHpo27b_12typst_bundle.exit.i

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeECsgpMJJHpo27b_12typst_bundle.exit.i unwind label %.loopexit

bb.g:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  %.val.i12 = load ptr, ptr %i.y, align 8, !alias.scope !1021, !noalias !1018 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 23
  %.val1.i = load i8, ptr %i.z, align 1, !alias.scope !1021, !noalias !1018, !noundef !19
  %.not.i.i.i = icmp sgt i8 %.val1.i, -1
  br i1 %.not.i.i.i, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeECsgpMJJHpo27b_12typst_bundle.exit.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i12) ], !noalias !1018
  %.not.i.i.i.i.i = icmp eq ptr %.val.i12, inttoptr (i64 16 to ptr)
  %i.aa = getelementptr inbounds i8, ptr %.val.i12, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeECsgpMJJHpo27b_12typst_bundle.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i: ; preds = %bb.h
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !1022
  %.not.i.i.i.i = icmp eq i64 %i.ab, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeECsgpMJJHpo27b_12typst_bundle.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i
  fence acquire, !noalias !1018
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1022
  %i.ac = getelementptr i8, ptr %.val.i12, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.ac, align 8, !noalias !1022, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i, label %bb.i, !prof !21

bb.i:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i
  %i.ad = add nuw nsw i64 %.val.i.i.i.i.i, 16
  store ptr %i.aa, ptr %i.o, align 8, !noalias !1022
  store i64 8, ptr %i.a, align 8, !noalias !1022
  store i64 %i.ad, ptr %i.p, align 8, !noalias !1022
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1022
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeECsgpMJJHpo27b_12typst_bundle.exit.i

bb.j:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.val5.i = load ptr, ptr %i.ae, align 16, !alias.scope !1023, !noalias !1018, !nonnull !19, !noundef !19
  %i.af = getelementptr i8, ptr %i.q, i64 56
  %.val6.i = load i64, ptr %i.af, align 8, !alias.scope !1023, !noalias !1018
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html3dom9HtmlAttrsECsgpMJJHpo27b_12typst_bundle(ptr nonnull %.val5.i, i64 %.val6.i)
          to label %bb.l unwind label %bb.k, !noalias !1024, !inline_history !1015

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %.val3.i = load ptr, ptr %i.ah, align 8, !alias.scope !1023, !noalias !1018, !nonnull !19, !noundef !19
  %i.ai = getelementptr i8, ptr %i.q, i64 72
  %.val4.i8 = load i64, ptr %i.ai, align 8, !alias.scope !1023, !noalias !1018
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs9gmjTwvRRSu_10typst_html3css6encode10PropertiesECsgpMJJHpo27b_12typst_bundle(ptr nonnull %.val3.i, i64 %.val4.i8) #49
          to label %bb.m unwind label %bb.p, !noalias !1024, !inline_history !1015

bb.l:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %.val.i9 = load ptr, ptr %i.aj, align 16, !alias.scope !1023, !noalias !1018, !nonnull !19, !noundef !19
  %i.ak = getelementptr i8, ptr %i.q, i64 72
  %.val2.i = load i64, ptr %i.ak, align 8, !alias.scope !1023, !noalias !1018
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs9gmjTwvRRSu_10typst_html3css6encode10PropertiesECsgpMJJHpo27b_12typst_bundle(ptr nonnull %.val.i9, i64 %.val2.i)
          to label %bb.o unwind label %bb.n, !noalias !1024, !inline_history !1015

bb.m:                                             ; preds = %bb.n, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.am, %bb.n ], [ %i.ag, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(16) %i.al) #49
          to label %.body10 unwind label %bb.p, !noalias !1018, !inline_history !1015

bb.n:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(16) %i.an)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeECsgpMJJHpo27b_12typst_bundle.exit.i unwind label %.loopexit, !inline_history !1015

bb.p:                                             ; preds = %bb.m, %bb.k
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !1018, !inline_history !1015
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %bb.o, %bb.g, %bb.h, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i, %.noexc13, %bb.f, %bb.e, %bb.d
  %i.ap = icmp eq i64 %i.r, %i.m
  br i1 %i.ap, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeECsgpMJJHpo27b_12typst_bundle.exit, label %bb.c

bb.q:                                             ; preds = %.lr.ph63
  %i.aq = add i64 %.sroa.0.1.i62, 1               ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.m
  br i1 %i.ar, label %.body, label %.lr.ph63

.loopexit:                                        ; preds = %bb.d, %bb.o, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i, %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body10

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body10

.body10:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.m
  %eh.lpad-body11 = phi { ptr, i32 } [ %.pn.i, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.as = icmp eq i64 %i.r, %i.m
  br i1 %i.as, label %.body, label %.lr.ph63

.lr.ph63:                                         ; preds = %.body10, %bb.q
  %.sroa.0.1.i62 = phi i64 [ %i.aq, %bb.q ], [ %i.r, %.body10 ] ; 2 uses
  %i.at = getelementptr inbounds nuw [128 x i8], ptr %.val4.i, i64 %.sroa.0.1.i62
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 16 dereferenceable(128) %i.at) #49
          to label %bb.q unwind label %bb.r, !noalias !1018, !inline_history !1016

bb.r:                                             ; preds = %.lr.ph63
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !1018, !inline_history !1016
  unreachable

.body:                                            ; preds = %bb.q, %.body10
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsgpMJJHpo27b_12typst_bundle.exit unwind label %bb.s

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeECsgpMJJHpo27b_12typst_bundle.exit.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeE4sizeCsgpMJJHpo27b_12typst_bundle.exit
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !1018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1018
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit

bb.s:                                             ; preds = %.body
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !1018, !inline_history !1017
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body11

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeECsgpMJJHpo27b_12typst_bundle.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECsgpMJJHpo27b_12typst_bundle(ptr %.0.val, i64 %.8.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !19 ; 2 uses
  %0 = mul i64 %.val.i.i, 72
  %1 = add i64 %0, 16                             ; 2 uses
  %narrow.i.i = icmp ult i64 %.val.i.i, 256204778801521550
  %2 = icmp ult i64 %1, 9223372036854775799
  %narrow.i.i.i = and i1 %narrow.i.i, %2
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i, label %bb.b, !prof !21

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  store i64 8, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.f, align 8
  %i.g = icmp eq i64 %.8.val, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsgpMJJHpo27b_12typst_bundle.exit.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.j, %.8.val
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsgpMJJHpo27b_12typst_bundle.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i, %bb.c
  %.sroa.0.0.i10.i1 = phi i64 [ %i.j, %bb.c ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [72 x i8], ptr %.0.val, i64 %.sroa.0.0.i10.i1
  %i.j = add nuw nsw i64 %.sroa.0.0.i10.i1, 1     ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.i)
          to label %bb.c unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph3
  %i.k = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.l = icmp eq i64 %i.k, %.8.val
  br i1 %i.l, label %.body.i, label %.lr.ph3

bb.e:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.j, %.8.val
  br i1 %i.n, label %.body.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i2 = phi i64 [ %i.k, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.o) #49
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph3
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !1027
  unreachable

.body.i:                                          ; preds = %bb.d, %bb.e
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsgpMJJHpo27b_12typst_bundle.exit.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %bb.c, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit

bb.g:                                             ; preds = %.body.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.m

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsgpMJJHpo27b_12typst_bundle.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  %.val4.i = load ptr, ptr %0, align 8, !alias.scope !1040, !nonnull !19, !noundef !19 ; 5 uses
  %.not.i6 = icmp eq ptr %.val4.i, inttoptr (i64 16 to ptr)
  %i.c = getelementptr inbounds i8, ptr %.val4.i, i64 -16 ; 2 uses
  br i1 %.not.i6, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %.not = icmp eq i64 %i.d, 1
  br i1 %.not, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit
  fence acquire, !noalias !1040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1040
  %i.e = getelementptr i8, ptr %.val4.i, i64 -8
  %.val.i1 = load i64, ptr %i.e, align 8, !noundef !19 ; 2 uses
  %1 = mul i64 %.val.i1, 72
  %2 = add i64 %1, 16                             ; 2 uses
  %narrow.i = icmp ult i64 %.val.i1, 256204778801521550
  %3 = icmp ult i64 %2, 9223372036854775799
  %narrow.i.i = and i1 %narrow.i, %3
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCsgpMJJHpo27b_12typst_bundle.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46, !noalias !1040
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.f, align 8, !noalias !1040
  store i64 8, ptr %i.b, align 8, !noalias !1040
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.g, align 8, !noalias !1040
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1040, !noundef !19 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsgpMJJHpo27b_12typst_bundle.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECsgpMJJHpo27b_12typst_bundle.exit
  %i.m = icmp eq i64 %i.o, %i.i
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsgpMJJHpo27b_12typst_bundle.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCsgpMJJHpo27b_12typst_bundle.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsgpMJJHpo27b_12typst_bundle.exit.i
  %.sroa.0.0.i33 = phi i64 [ %i.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsgpMJJHpo27b_12typst_bundle.exit.i ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCsgpMJJHpo27b_12typst_bundle.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %.val4.i, i64 %.sroa.0.0.i33 ; 5 uses
  %i.o = add i64 %.sroa.0.0.i33, 1                ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  %i.p = load i64, ptr %i.n, align 8, !range !24, !alias.scope !1041, !noalias !1040, !noundef !19
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECsgpMJJHpo27b_12typst_bundle.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val.i9 = load ptr, ptr %i.r, align 8, !alias.scope !1042, !noalias !1040 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 23
  %.val1.i = load i8, ptr %i.s, align 1, !alias.scope !1042, !noalias !1040, !noundef !19
  %.not.i.i.i.i.i = icmp sgt i8 %.val1.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECsgpMJJHpo27b_12typst_bundle.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i9) ], !noalias !1040
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i9, inttoptr (i64 16 to ptr)
  %i.t = getelementptr inbounds i8, ptr %.val.i9, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECsgpMJJHpo27b_12typst_bundle.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !1043
  %.not.i.i.i.i.i.i = icmp eq i64 %i.u, 1
  br i1 %.not.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECsgpMJJHpo27b_12typst_bundle.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i
  fence acquire, !noalias !1040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1043
  %i.v = getelementptr i8, ptr %.val.i9, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !noalias !1043, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i, label %bb.e, !prof !21

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i
  %i.w = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  store ptr %i.t, ptr %i.j, align 8, !noalias !1043
  store i64 8, ptr %i.a, align 8, !noalias !1043
  store i64 %i.w, ptr %i.k, align 8, !noalias !1043
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc10 unwind label %.loopexit

.noexc10:                                         ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1043
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECsgpMJJHpo27b_12typst_bundle.exit

.loopexit:                                        ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %.body.i unwind label %bb.g, !inline_history !1036

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %.noexc10, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i, %bb.d, %bb.c, %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.y)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsgpMJJHpo27b_12typst_bundle.exit.i unwind label %bb.i, !inline_history !1036

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !1040, !inline_history !1037
  unreachable

bb.h:                                             ; preds = %.lr.ph35
  %i.aa = add i64 %.sroa.0.1.i34, 1               ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.i
  br i1 %i.ab, label %.body, label %.lr.ph35

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECsgpMJJHpo27b_12typst_bundle.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %lpad.phi, %bb.f ]
  %i.ad = icmp eq i64 %i.o, %i.i
  br i1 %i.ad, label %.body, label %.lr.ph35

.lr.ph35:                                         ; preds = %.body.i, %bb.h
  %.sroa.0.1.i34 = phi i64 [ %i.aa, %bb.h ], [ %i.o, %.body.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [72 x i8], ptr %.val4.i, i64 %.sroa.0.1.i34
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ae) #49
          to label %bb.h unwind label %bb.j, !noalias !1040, !inline_history !1038

bb.j:                                             ; preds = %.lr.ph35
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !1040, !inline_history !1038
  unreachable

.body:                                            ; preds = %bb.h, %.body.i
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsgpMJJHpo27b_12typst_bundle.exit unwind label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsgpMJJHpo27b_12typst_bundle.exit.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCsgpMJJHpo27b_12typst_bundle.exit
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !1040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1040
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit

bb.k:                                             ; preds = %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !1040, !inline_history !1039
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsgpMJJHpo27b_12typst_bundle.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  %.val4.i = load ptr, ptr %0, align 8, !alias.scope !1048, !nonnull !19, !noundef !19 ; 5 uses
  %.not.i6 = icmp eq ptr %.val4.i, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.val4.i, i64 -16 ; 2 uses
  br i1 %.not.i6, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not = icmp eq i64 %i.c, 1
  br i1 %.not, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit
  fence acquire, !noalias !1048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1048
  %i.d = getelementptr i8, ptr %.val4.i, i64 -8
  %.val.i1 = load i64, ptr %i.d, align 8, !noundef !19 ; 2 uses
  %i.e = icmp ult i64 %.val.i1, 576460752303423488
  %i.f = shl nuw i64 %.val.i1, 5
  %i.g = or disjoint i64 %i.f, 16                 ; 2 uses
  %i.h = icmp ult i64 %i.g, 9223372036854775799
  %narrow.i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE4sizeCsgpMJJHpo27b_12typst_bundle.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46, !noalias !1048
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE4sizeCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8, !noalias !1048
  store i64 8, ptr %i.a, align 8, !noalias !1048
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.j, align 8, !noalias !1048
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1048, !noundef !19 ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsgpMJJHpo27b_12typst_bundle.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.l
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsgpMJJHpo27b_12typst_bundle.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE4sizeCsgpMJJHpo27b_12typst_bundle.exit, %bb.c
  %.sroa.0.0.i10 = phi i64 [ %i.p, %bb.c ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE4sizeCsgpMJJHpo27b_12typst_bundle.exit ] ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %.val4.i, i64 %.sroa.0.0.i10
  %i.p = add i64 %.sroa.0.0.i10, 1                ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o)
          to label %bb.c unwind label %bb.e, !noalias !1048, !inline_history !1046

bb.d:                                             ; preds = %.lr.ph12
  %i.q = add i64 %.sroa.0.1.i11, 1                ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.l
  br i1 %i.r, label %.body, label %.lr.ph12

bb.e:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.l
  br i1 %i.t, label %.body, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.e, %bb.d
  %.sroa.0.1.i11 = phi i64 [ %i.q, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %.val4.i, i64 %.sroa.0.1.i11
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(32) %i.u) #49
          to label %bb.d unwind label %bb.f, !noalias !1048, !inline_history !1046

bb.f:                                             ; preds = %.lr.ph12
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !1048, !inline_history !1046
  unreachable

.body:                                            ; preds = %bb.d, %bb.e
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsgpMJJHpo27b_12typst_bundle.exit unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.c, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE4sizeCsgpMJJHpo27b_12typst_bundle.exit
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !1048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1048
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit

bb.g:                                             ; preds = %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !1048, !inline_history !1047
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %.body
  resume { ptr, i32 } %i.s

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsgpMJJHpo27b_12typst_bundle.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsgpMJJHpo27b_12typst_bundle(ptr %.0.val, i64 %.8.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !19 ; 2 uses
  %0 = mul i64 %.val.i.i, 24
  %1 = add i64 %0, 16                             ; 2 uses
  %narrow.i.i = icmp ult i64 %.val.i.i, 768614336404564650
  %2 = icmp ult i64 %1, 9223372036854775799
  %narrow.i.i.i = and i1 %narrow.i.i, %2
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i, label %bb.b, !prof !21

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  store i64 8, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.f, align 8
  %i.g = icmp eq i64 %.8.val, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsgpMJJHpo27b_12typst_bundle.exit.i, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsgpMJJHpo27b_12typst_bundle.exit.i.i: ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.j, %.8.val
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsgpMJJHpo27b_12typst_bundle.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsgpMJJHpo27b_12typst_bundle.exit.i.i
  %.sroa.0.0.i10.i1 = phi i64 [ %i.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsgpMJJHpo27b_12typst_bundle.exit.i.i ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.0.i10.i1
  %i.j = add nuw nsw i64 %.sroa.0.0.i10.i1, 1     ; 4 uses
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsgpMJJHpo27b_12typst_bundle.exit.i.i unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsgpMJJHpo27b_12typst_bundle.exit7.i.i: ; preds = %.lr.ph3
  %i.k = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.l = icmp eq i64 %i.k, %.8.val
  br i1 %i.l, label %.body.i, label %.lr.ph3

bb.c:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.j, %.8.val
  br i1 %i.n, label %.body.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsgpMJJHpo27b_12typst_bundle.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsgpMJJHpo27b_12typst_bundle.exit7.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i2
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsgpMJJHpo27b_12typst_bundle.exit7.i.i unwind label %bb.d

bb.d:                                             ; preds = %.lr.ph3
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsgpMJJHpo27b_12typst_bundle.exit7.i.i, %bb.c
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsgpMJJHpo27b_12typst_bundle.exit.i unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsgpMJJHpo27b_12typst_bundle.exit.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit

bb.e:                                             ; preds = %.body.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.m

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsgpMJJHpo27b_12typst_bundle.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  tail call fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(16) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionEECsgpMJJHpo27b_12typst_bundle(ptr %.0.val, i64 %.8.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !19 ; 2 uses
  %i.e = icmp ult i64 %.val.i.i, 1152921504606846976
  %i.f = shl i64 %.val.i.i, 4                     ; 2 uses
  %i.g = icmp ult i64 %i.f, 9223372036854775784
  %narrow.i.i.i = and i1 %i.e, %i.g
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i, label %bb.b, !prof !21

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i
  %i.h = add nuw nsw i64 %i.f, 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8
  store i64 8, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.j, align 8
  %i.k = icmp eq i64 %.8.val, 0
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsgpMJJHpo27b_12typst_bundle.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsgpMJJHpo27b_12typst_bundle.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsgpMJJHpo27b_12typst_bundle.exit.i.i ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !1066, !nonnull !19, !noundef !19
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !1067
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsgpMJJHpo27b_12typst_bundle.exit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence6BoundsEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #51
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsgpMJJHpo27b_12typst_bundle.exit.i.i unwind label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsgpMJJHpo27b_12typst_bundle.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %i.q = icmp eq i64 %i.m, %.8.val
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsgpMJJHpo27b_12typst_bundle.exit.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %i.m, %.8.val
  br i1 %i.s, label %.body.i, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsgpMJJHpo27b_12typst_bundle.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.u, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsgpMJJHpo27b_12typst_bundle.exit8.i.i ], [ %i.m, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.u = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  %i.v = load ptr, ptr %i.t, align 8, !alias.scope !1071, !nonnull !19, !noundef !19
  %i.w = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !1072
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsgpMJJHpo27b_12typst_bundle.exit8.i.i

bb.e:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence6BoundsEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t) #51
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsgpMJJHpo27b_12typst_bundle.exit8.i.i unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsgpMJJHpo27b_12typst_bundle.exit8.i.i: ; preds = %bb.e, %.lr.ph12.i.i
  %i.y = icmp eq i64 %i.u, %.8.val
  br i1 %i.y, label %.body.i, label %.lr.ph12.i.i

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsgpMJJHpo27b_12typst_bundle.exit8.i.i, %bb.d
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsgpMJJHpo27b_12typst_bundle.exit.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsgpMJJHpo27b_12typst_bundle.exit.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit

bb.g:                                             ; preds = %.body.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.r

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsgpMJJHpo27b_12typst_bundle.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtB1f_6styles6StylesEEEECsgpMJJHpo27b_12typst_bundle(ptr %.0.val, i64 %.8.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBM_6styles6StylesEEENtNtNtB1L_3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueIBw_NtNtB1T_6styles6StylesEEENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueIBw_NtNtB1T_6styles6StylesEEENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueIBw_NtNtB1Q_6styles6StylesEEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBM_6styles6StylesEEENtNtNtB1L_3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit

end_hunk_1
begin_hunk_2_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html3dom12HtmlDocumentECsgpMJJHpo27b_12typst_bundle:bb.a
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.e, %bb.b
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.b, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2100)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2101, !nonnull !19, !noundef !19
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !2101
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorEECsgpMJJHpo27b_12typst_bundle.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #51
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorEECsgpMJJHpo27b_12typst_bundle.exit unwind label %bb.h

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html8document10HtmlOutputECsgpMJJHpo27b_12typst_bundle.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html8document10HtmlOutputECsgpMJJHpo27b_12typst_bundle.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2104, !nonnull !19, !noundef !19
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !2104
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorEECsgpMJJHpo27b_12typst_bundle.exit2

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #51
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorEECsgpMJJHpo27b_12typst_bundle.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorEECsgpMJJHpo27b_12typst_bundle.exit2: ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.d, %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorEECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 16 dereferenceable(128) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %0, align 16, !range !48, !noundef !19
  switch i64 %i.b, label %default.unreachable2 [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.h
    i64 3, label %bb.b
  ]

default.unreachable2:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html3dom9HtmlFrameECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(120) %i.c)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsgpMJJHpo27b_12typst_bundle.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 16, !range !49, !alias.scope !2112, !noundef !19
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsgpMJJHpo27b_12typst_bundle.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsgpMJJHpo27b_12typst_bundle.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2113)
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !2113 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 23
  %.val1.i = load i8, ptr %i.i, align 1, !alias.scope !2113, !noundef !19
  %.not.i.i.i = icmp sgt i8 %.val1.i, -1
  br i1 %.not.i.i.i, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsgpMJJHpo27b_12typst_bundle.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  %i.j = getelementptr inbounds i8, ptr %.val.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsgpMJJHpo27b_12typst_bundle.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i: ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !2113
  %.not.i.i.i.i = icmp eq i64 %i.k, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsgpMJJHpo27b_12typst_bundle.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2113
  %i.l = getelementptr i8, ptr %.val.i, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.l, align 8, !noalias !2113, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i, label %bb.g, !prof !21

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46, !noalias !2113
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i
  %i.m = add nuw nsw i64 %.val.i.i.i.i.i, 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %i.n, align 8, !noalias !2113
  store i64 8, ptr %i.a, align 8, !noalias !2113
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.o, align 8, !noalias !2113
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !2113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2113
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsgpMJJHpo27b_12typst_bundle.exit

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2114)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val5.i = load ptr, ptr %i.p, align 16, !alias.scope !2114, !nonnull !19, !noundef !19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val6.i = load i64, ptr %i.q, align 8, !alias.scope !2114
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html3dom9HtmlAttrsECsgpMJJHpo27b_12typst_bundle(ptr nonnull %.val5.i, i64 %.val6.i)
          to label %bb.j unwind label %bb.i, !noalias !2114, !inline_history !2111

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val3.i = load ptr, ptr %i.s, align 16, !alias.scope !2114, !nonnull !19, !noundef !19
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val4.i = load i64, ptr %i.t, align 8, !alias.scope !2114
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs9gmjTwvRRSu_10typst_html3css6encode10PropertiesECsgpMJJHpo27b_12typst_bundle(ptr nonnull %.val3.i, i64 %.val4.i) #49
          to label %bb.k unwind label %bb.m, !noalias !2114, !inline_history !2111

bb.j:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i1 = load ptr, ptr %i.u, align 16, !alias.scope !2114, !nonnull !19, !noundef !19
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val2.i = load i64, ptr %i.v, align 8, !alias.scope !2114
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs9gmjTwvRRSu_10typst_html3css6encode10PropertiesECsgpMJJHpo27b_12typst_bundle(ptr nonnull %.val.i1, i64 %.val2.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html3dom11HtmlElementECsgpMJJHpo27b_12typst_bundle.exit unwind label %bb.l, !noalias !2114, !inline_history !2111

bb.k:                                             ; preds = %bb.l, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.x, %bb.l ], [ %i.r, %bb.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(16) %i.w) #49
          to label %bb.n unwind label %bb.m, !inline_history !2111

bb.l:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !inline_history !2111
  unreachable

bb.n:                                             ; preds = %bb.k
  resume { ptr, i32 } %.pn.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html3dom11HtmlElementECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(16) %i.z), !inline_history !2111
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsgpMJJHpo27b_12typst_bundle.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i, %bb.f, %bb.e, %bb.d, %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html3dom11HtmlElementECsgpMJJHpo27b_12typst_bundle.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html3dom9HtmlAttrsECsgpMJJHpo27b_12typst_bundle(ptr %.0.val, i64 %.8.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.d = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBG_6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i: ; preds = %bb.a
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8
  %.not.i.i = icmp eq i64 %i.e, 1
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBG_6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i.i = load i64, ptr %i.f, align 8, !noundef !19 ; 2 uses
  %0 = mul i64 %.val.i.i.i, 24
  %1 = add i64 %0, 16                             ; 2 uses
  %narrow.i.i.i = icmp ult i64 %.val.i.i.i, 768614336404564650
  %2 = icmp ult i64 %1, 9223372036854775799
  %narrow.i.i.i.i = and i1 %narrow.i.i.i, %2
  br i1 %narrow.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i, label %bb.b, !prof !21

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.g, align 8
  store i64 8, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.h, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2123)
  %i.i = icmp eq i64 %.8.val, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.0.012.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.012.i.i.i ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.0.012.i.i.i, 1    ; 4 uses
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %.val8.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !2124 ; 4 uses
  %i.o = getelementptr i8, ptr %i.l, i64 23
  %.val9.i.i.i = load i8, ptr %i.o, align 1, !alias.scope !2124, !noundef !19
  %.not.i.i.i.i.i.i.i = icmp sgt i8 %.val9.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i) ]
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val8.i.i.i, inttoptr (i64 16 to ptr)
  %i.p = getelementptr inbounds i8, ptr %.val8.i.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !2125
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.q, 1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2125
  %i.r = getelementptr i8, ptr %.val8.i.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !noalias !2125, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i, label %bb.e, !prof !21

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !2123

.noexc.i.i.i:                                     ; preds = %bb.e
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i
  %i.s = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i.i, 16
  store ptr %i.p, ptr %i.j, align 8, !noalias !2125
  store i64 8, ptr %i.b, align 8, !noalias !2125
  store i64 %i.s, ptr %i.k, align 8, !noalias !2125
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc10.i.i.i unwind label %.loopexit.i.i.i, !noalias !2123

.noexc10.i.i.i:                                   ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2125
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i: ; preds = %.noexc10.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i, %bb.d, %bb.c
  %i.t = icmp eq i64 %i.m, %.8.val
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i, label %bb.c

.loopexit.i.i.i:                                  ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp.i.i.i:                         ; preds = %bb.e
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  %i.u = icmp eq i64 %i.m, %.8.val
  br i1 %i.u, label %.body.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i, %.lr.ph.i.i
  %.sroa.0.1.i4.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %i.y, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.1.i4.i.i ; 2 uses
  %i.y = add i64 %.sroa.0.1.i4.i.i, 1             ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 8
  %.val.i10.i.i = load ptr, ptr %i.z, align 8, !alias.scope !2124 ; 4 uses
  %i.aa = getelementptr i8, ptr %i.x, i64 23
  %.val7.i.i.i = load i8, ptr %i.aa, align 1, !alias.scope !2124, !noundef !19
  %.not.i.i.i.i.i.i = icmp sgt i8 %.val7.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i10.i.i) ], !noalias !2123
  %.not.i.i.i.i.i.i11.i.i = icmp eq ptr %.val.i10.i.i, inttoptr (i64 16 to ptr)
  %i.ab = getelementptr inbounds i8, ptr %.val.i10.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i11.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !2126
  %.not.i.i.i.i.i12.i.i = icmp eq i64 %i.ac, 1
  br i1 %.not.i.i.i.i.i12.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i
  fence acquire, !noalias !2123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2126
  %i.ad = getelementptr i8, ptr %.val.i10.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !noalias !2126, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i, label %bb.i, !prof !21

bb.i:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i:                                       ; preds = %bb.i
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i
  %i.ae = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i, 16
  store ptr %i.ab, ptr %i.v, align 8, !noalias !2126
  store i64 8, ptr %i.a, align 8, !noalias !2126
  store i64 %i.ae, ptr %i.w, align 8, !noalias !2126
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc13.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13.i.i:                                     ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2126
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i: ; preds = %.noexc13.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i, %bb.h, %bb.g
  %i.af = icmp eq i64 %i.y, %.8.val
  br i1 %i.af, label %.body.i.i, label %bb.g

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i, %bb.i
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !2123
  unreachable

.body.i.i:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i, %bb.f
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsgpMJJHpo27b_12typst_bundle.exit.i.i unwind label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB7_6string9EcoStringEE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBG_6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit

bb.j:                                             ; preds = %.body.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsgpMJJHpo27b_12typst_bundle.exit.i.i: ; preds = %.body.i.i
  resume { ptr, i32 } %lpad.phi.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBG_6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtBN_6string9EcoStringEENtNtNtB5_3ops4drop4Drop4drop0ECsgpMJJHpo27b_12typst_bundle.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs9gmjTwvRRSu_10typst_html3dom9HtmlFrameECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2137)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2139)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2140, !nonnull !19, !noundef !19
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !2140
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECsgpMJJHpo27b_12typst_bundle.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #51
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECsgpMJJHpo27b_12typst_bundle.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #49
          to label %bb.g unwind label %bb.p

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2141)
  %i.j = load i64, ptr %i.i, align 8, !range !24, !alias.scope !2141, !noundef !19
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle.exit, label %bb.d
end_hunk_2
begin_hunk_3_@_RNvMNtCsloFShupyl5J_6comemo7memoizeINtB2_5CacheINtNvNtB4_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1q_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1q_4diag16SourceDiagnosticEEE5evictCsgpMJJHpo27b_12typst_bundle:bb.a
  %.cast.i.i29.i = bitcast <16 x i1> %i.ep to i16 ; 2 uses
  %.not.i.i30.i = icmp eq i16 %.cast.i.i29.i, 0
  br i1 %.not.i.i30.i, label %.lr.ph.i.i27.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECsgpMJJHpo27b_12typst_bundle.exit.i.i

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECsgpMJJHpo27b_12typst_bundle.exit.i.i: ; preds = %.lr.ph.i.i27.i, %bb.aa
  %.sroa.6.1.i16.i = phi ptr [ %.sroa.6.018.i13.i, %bb.aa ], [ %i.er, %.lr.ph.i.i27.i ]
  %.sroa.07.1.i17.i = phi ptr [ %.sroa.07.019.i12.i, %bb.aa ], [ %i.eq, %.lr.ph.i.i27.i ] ; 2 uses
  %.lcssa.i.i18.i = phi i16 [ %.sroa.88.017.i14.i, %bb.aa ], [ %.cast.i.i29.i, %.lr.ph.i.i27.i ] ; 3 uses
  %i.es = add i16 %.lcssa.i.i18.i, -1
  %i.et = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i18.i, i1 true)
  %i.eu = zext nneg i16 %i.et to i64
  %i.ev = and i16 %i.es, %.lcssa.i.i18.i
  %i.ew = sub nsw i64 0, %i.eu
  %i.ex = getelementptr inbounds [32 x i8], ptr %.sroa.07.1.i17.i, i64 %i.ew ; 2 uses
  %i.ey = add i64 %.sroa.109.020.i11.i, -1        ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ex, i64 -16
  %.val5.i19.i = load i64, ptr %i.ez, align 8, !noalias !12212, !noundef !19 ; 4 uses
  %i.fa = icmp sgt i64 %.val5.i19.i, -1
  br i1 %i.fa, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECsgpMJJHpo27b_12typst_bundle.exit.i.i
  %i.fb = xor i64 %.val5.i19.i, -1                ; 2 uses
  %i.fc = icmp samesign ugt i64 %i.k, %i.fb
  br i1 %i.fc, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1w_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1w_4diag16SourceDiagnosticEEEE6retainNCNvMs_B2z_INtB2z_9CacheDataBP_B31_E5evict0Es1_0CsgpMJJHpo27b_12typst_bundle.exit.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1w_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1w_4diag16SourceDiagnosticEEEE6retainNCNvMs_B2z_INtB2z_9CacheDataBP_B31_E5evict0Es1_0CsgpMJJHpo27b_12typst_bundle.exit.thread.i.i

bb.ac:                                            ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECsgpMJJHpo27b_12typst_bundle.exit.i.i
  %i.fd = icmp ult i64 %.val5.i19.i, %i.ej
  br i1 %i.fd, label %.split.i25.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1w_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1w_4diag16SourceDiagnosticEEEE6retainNCNvMs_B2z_INtB2z_9CacheDataBP_B31_E5evict0Es1_0CsgpMJJHpo27b_12typst_bundle.exit.thread.i.i

.split.i25.i:                                     ; preds = %bb.ac
  %i.fe = getelementptr inbounds nuw [64 x i8], ptr %i.ek, i64 %.val5.i19.i
  %i.ff = load i128, ptr %i.fe, align 16, !range !75, !noalias !12212, !noundef !19
  %.not15.i26.i = icmp eq i128 %i.ff, -1
  br i1 %.not15.i26.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1w_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1w_4diag16SourceDiagnosticEEEE6retainNCNvMs_B2z_INtB2z_9CacheDataBP_B31_E5evict0Es1_0CsgpMJJHpo27b_12typst_bundle.exit.thread.i.i, label %bb.ae

_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1w_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1w_4diag16SourceDiagnosticEEEE6retainNCNvMs_B2z_INtB2z_9CacheDataBP_B31_E5evict0Es1_0CsgpMJJHpo27b_12typst_bundle.exit.i.i: ; preds = %bb.ab
  %i.fg = getelementptr inbounds nuw [72 x i8], ptr %i.ei, i64 %i.fb
  %i.fh = load i64, ptr %i.fg, align 8, !range !31, !noalias !12212, !noundef !19
  %.not.i24.i = icmp eq i64 %i.fh, 2
  br i1 %.not.i24.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1w_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1w_4diag16SourceDiagnosticEEEE6retainNCNvMs_B2z_INtB2z_9CacheDataBP_B31_E5evict0Es1_0CsgpMJJHpo27b_12typst_bundle.exit.thread.i.i, label %bb.ae

_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1w_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1w_4diag16SourceDiagnosticEEEE6retainNCNvMs_B2z_INtB2z_9CacheDataBP_B31_E5evict0Es1_0CsgpMJJHpo27b_12typst_bundle.exit.thread.i.i: ; preds = %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1w_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1w_4diag16SourceDiagnosticEEEE6retainNCNvMs_B2z_INtB2z_9CacheDataBP_B31_E5evict0Es1_0CsgpMJJHpo27b_12typst_bundle.exit.i.i, %.split.i25.i, %bb.ac, %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !12213)
  call void @llvm.experimental.noalias.scope.decl(metadata !12214)
  %i.fi = ptrtoint ptr %i.ex to i64
  %i.fj = sub i64 %i.eg, %i.fi
  %i.fk = ashr exact i64 %i.fj, 5                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12215)
  %i.fl = add nsw i64 %i.fk, -16
  %i.fm = and i64 %i.fl, %i.dw
  %i.fn = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.fm ; 2 uses
  %.sroa.0.0.copyload.i23.i.i.i.i20.i = load <16 x i8>, ptr %i.fn, align 1, !noalias !12216
  %i.fo = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i.i.i20.i, splat (i8 -1)
  %i.fp = bitcast <16 x i1> %i.fo to i16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.fk ; 2 uses
  %.sroa.0.0.copyload.i724.i.i.i.i21.i = load <16 x i8>, ptr %i.fq, align 1, !noalias !12217
  %i.fr = icmp eq <16 x i8> %.sroa.0.0.copyload.i724.i.i.i.i21.i, splat (i8 -1)
  %i.fs = bitcast <16 x i1> %i.fr to i16
  %i.ft = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.fp, i1 false)
  %i.fu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fs, i1 false)
  %narrow.i.i.i.i22.i = add nuw nsw i16 %i.fu, %i.ft
  %i.fv = icmp samesign ugt i16 %narrow.i.i.i.i22.i, 15
  br i1 %i.fv, label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCsgpMJJHpo27b_12typst_bundle.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1w_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1w_4diag16SourceDiagnosticEEEE6retainNCNvMs_B2z_INtB2z_9CacheDataBP_B31_E5evict0Es1_0CsgpMJJHpo27b_12typst_bundle.exit.thread.i.i
  %i.fw = add i64 %i.el, 1                        ; 2 uses
  store i64 %i.fw, ptr %i.eh, align 8, !alias.scope !12218, !noalias !12209
  br label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCsgpMJJHpo27b_12typst_bundle.exit.i.i

_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCsgpMJJHpo27b_12typst_bundle.exit.i.i: ; preds = %bb.ad, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1w_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1w_4diag16SourceDiagnosticEEEE6retainNCNvMs_B2z_INtB2z_9CacheDataBP_B31_E5evict0Es1_0CsgpMJJHpo27b_12typst_bundle.exit.thread.i.i
  %i.fx = phi i64 [ %i.fw, %bb.ad ], [ %i.el, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1w_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1w_4diag16SourceDiagnosticEEEE6retainNCNvMs_B2z_INtB2z_9CacheDataBP_B31_E5evict0Es1_0CsgpMJJHpo27b_12typst_bundle.exit.thread.i.i ]
  %.sroa.0.0.i.i.i.i23.i = phi i8 [ -1, %bb.ad ], [ -128, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1w_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1w_4diag16SourceDiagnosticEEEE6retainNCNvMs_B2z_INtB2z_9CacheDataBP_B31_E5evict0Es1_0CsgpMJJHpo27b_12typst_bundle.exit.thread.i.i ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i23.i, ptr %i.fq, align 1, !noalias !12219
  %i.fy = getelementptr i8, ptr %i.fn, i64 16
  store i8 %.sroa.0.0.i.i.i.i23.i, ptr %i.fy, align 1, !noalias !12219
  %i.fz = add i64 %i.em, -1                       ; 2 uses
  store i64 %i.fz, ptr %i.dx, align 8, !alias.scope !12218, !noalias !12209
  br label %bb.ae

bb.ae:                                            ; preds = %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCsgpMJJHpo27b_12typst_bundle.exit.i.i, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1w_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1w_4diag16SourceDiagnosticEEEE6retainNCNvMs_B2z_INtB2z_9CacheDataBP_B31_E5evict0Es1_0CsgpMJJHpo27b_12typst_bundle.exit.i.i, %.split.i25.i
  %i.ga = phi i64 [ %i.el, %.split.i25.i ], [ %i.el, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1w_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1w_4diag16SourceDiagnosticEEEE6retainNCNvMs_B2z_INtB2z_9CacheDataBP_B31_E5evict0Es1_0CsgpMJJHpo27b_12typst_bundle.exit.i.i ], [ %i.fx, %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCsgpMJJHpo27b_12typst_bundle.exit.i.i ]
  %i.gb = phi i64 [ %i.em, %.split.i25.i ], [ %i.em, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1w_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1w_4diag16SourceDiagnosticEEEE6retainNCNvMs_B2z_INtB2z_9CacheDataBP_B31_E5evict0Es1_0CsgpMJJHpo27b_12typst_bundle.exit.i.i ], [ %i.fz, %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCsgpMJJHpo27b_12typst_bundle.exit.i.i ]
  %i.gc = icmp eq i64 %i.ey, 0
  br i1 %i.gc, label %_RINvMs0_NtCsloFShupyl5J_6comemo4treeINtB6_8CallTreeINtNvNtB8_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtB8_7memoize10CacheEntryBN_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1u_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1u_4diag16SourceDiagnosticEEEE6retainNCNvMs_B2x_INtB2x_9CacheDataBN_B2Z_E5evict0ECsgpMJJHpo27b_12typst_bundle.exit, label %bb.aa

bb.af:                                            ; preds = %bb.n, %bb.i
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.r, %bb.s, %bb.af
  %eh.lpad-body = phi { ptr, i32 } [ %i.gd, %bb.af ], [ %i.ax, %bb.m ], [ %i.bd, %bb.s ], [ %i.bd, %bb.r ]
  %i.ge = cmpxchg ptr %0, i64 8, i64 0 release monotonic, align 8
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.ge, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtB4_6result6ResultNtNtNtB3J_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3J_4diag16SourceDiagnosticEEEEECsgpMJJHpo27b_12typst_bundle.exit, label %bb.ag, !prof !21

bb.ag:                                            ; preds = %.body
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %0, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtB4_6result6ResultNtNtNtB3J_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3J_4diag16SourceDiagnosticEEEEECsgpMJJHpo27b_12typst_bundle.exit unwind label %bb.ai

_RINvMs0_NtCsloFShupyl5J_6comemo4treeINtB6_8CallTreeINtNvNtB8_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtB8_7memoize10CacheEntryBN_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1u_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1u_4diag16SourceDiagnosticEEEE6retainNCNvMs_B2x_INtB2x_9CacheDataBN_B2Z_E5evict0ECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.ae, %_RINvMs0_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6retainNCINvMs0_BU_INtBU_8CallTreeINtNvNtBW_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtBW_7memoize10CacheEntryB2J_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB3q_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3q_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4t_INtB4t_9CacheDataB2J_B4W_E5evict0Es0_0ECsgpMJJHpo27b_12typst_bundle.exit.i
  %i.gf = cmpxchg ptr %0, i64 8, i64 0 release monotonic, align 8
  %.sroa.18.0.in.i.i.i.i4 = extractvalue { i64, i1 } %i.gf, 1
  br i1 %.sroa.18.0.in.i.i.i.i4, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtB4_6result6ResultNtNtNtB3J_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3J_4diag16SourceDiagnosticEEEEECsgpMJJHpo27b_12typst_bundle.exit5, label %bb.ah, !prof !21

bb.ah:                                            ; preds = %_RINvMs0_NtCsloFShupyl5J_6comemo4treeINtB6_8CallTreeINtNvNtB8_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtB8_7memoize10CacheEntryBN_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1u_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1u_4diag16SourceDiagnosticEEEE6retainNCNvMs_B2x_INtB2x_9CacheDataBN_B2Z_E5evict0ECsgpMJJHpo27b_12typst_bundle.exit
  call void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %0, i1 noundef zeroext false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtB4_6result6ResultNtNtNtB3J_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3J_4diag16SourceDiagnosticEEEEECsgpMJJHpo27b_12typst_bundle.exit5

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtB4_6result6ResultNtNtNtB3J_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3J_4diag16SourceDiagnosticEEEEECsgpMJJHpo27b_12typst_bundle.exit5: ; preds = %_RINvMs0_NtCsloFShupyl5J_6comemo4treeINtB6_8CallTreeINtNvNtB8_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtB8_7memoize10CacheEntryBN_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1u_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1u_4diag16SourceDiagnosticEEEE6retainNCNvMs_B2x_INtB2x_9CacheDataBN_B2Z_E5evict0ECsgpMJJHpo27b_12typst_bundle.exit, %bb.ah
  ret void

bb.ai:                                            ; preds = %bb.ag
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtB4_6result6ResultNtNtNtB3J_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3J_4diag16SourceDiagnosticEEEEECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %.body, %bb.ag
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4growCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %1, 576460752303423488
  %i.c = shl nuw i64 %1, 5
  %i.d = or disjoint i64 %i.c, 16                 ; 4 uses
  %i.e = icmp ult i64 %i.d, 9223372036854775799
  %narrow.i.i = select i1 %i.b, i1 %i.e, i1 false
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCsgpMJJHpo27b_12typst_bundle.exit, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %.not = icmp eq ptr %i.f, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCsgpMJJHpo27b_12typst_bundle.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef 8) #48 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.h, !prof !22

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCsgpMJJHpo27b_12typst_bundle.exit
  %i.i = getelementptr i8, ptr %i.f, i64 -8
  %.val.i = load i64, ptr %i.i, align 8, !noundef !19 ; 2 uses
  %i.j = icmp ult i64 %.val.i, 576460752303423488
  %i.k = shl nuw i64 %.val.i, 5
  %i.l = or disjoint i64 %i.k, 16                 ; 2 uses
  %i.m = icmp ult i64 %i.l, 9223372036854775799
  %narrow.i.i34 = select i1 %i.j, i1 %i.m, i1 false
  br i1 %narrow.i.i34, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCsgpMJJHpo27b_12typst_bundle.exit37, label %bb.f, !prof !21

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCsgpMJJHpo27b_12typst_bundle.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.o = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.n, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.d) #48 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.h, !prof !22

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCsgpMJJHpo27b_12typst_bundle.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.d) #46
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCsgpMJJHpo27b_12typst_bundle.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.g, %bb.e ], [ %i.o, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCsgpMJJHpo27b_12typst_bundle.exit37 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.q, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4growCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %2 = mul i64 %1, 72
  %3 = add i64 %2, 16                             ; 4 uses
  %narrow.i = icmp samesign ult i64 %1, 256204778801521550
  %4 = icmp ult i64 %3, 9223372036854775799
  %narrow.i.i = and i1 %narrow.i, %4
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsgpMJJHpo27b_12typst_bundle.exit, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.c
  %i.b = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %.not = icmp eq ptr %i.b, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsgpMJJHpo27b_12typst_bundle.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.c = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef 8) #48 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.g, label %bb.h, !prof !22

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsgpMJJHpo27b_12typst_bundle.exit
  %i.e = getelementptr i8, ptr %i.b, i64 -8
  %.val.i = load i64, ptr %i.e, align 8, !noundef !19 ; 2 uses
  %5 = mul i64 %.val.i, 72
  %6 = add i64 %5, 16                             ; 2 uses
  %narrow.i34 = icmp ult i64 %.val.i, 256204778801521550
  %7 = icmp ult i64 %6, 9223372036854775799
  %narrow.i.i35 = and i1 %narrow.i34, %7
  br i1 %narrow.i.i35, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsgpMJJHpo27b_12typst_bundle.exit37, label %bb.f, !prof !21

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsgpMJJHpo27b_12typst_bundle.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %6, i64 noundef 8, i64 noundef %3) #48 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.h, !prof !22

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsgpMJJHpo27b_12typst_bundle.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %3) #46
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsgpMJJHpo27b_12typst_bundle.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.c, %bb.e ], [ %i.g, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsgpMJJHpo27b_12typst_bundle.exit37 ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.i, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4growCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %2 = mul i64 %1, 24
  %3 = add i64 %2, 16                             ; 4 uses
  %narrow.i = icmp samesign ult i64 %1, 768614336404564650
  %4 = icmp ult i64 %3, 9223372036854775799
  %narrow.i.i = and i1 %narrow.i, %4
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCsgpMJJHpo27b_12typst_bundle.exit, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.c
  %i.b = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %.not = icmp eq ptr %i.b, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCsgpMJJHpo27b_12typst_bundle.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.c = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef 8) #48 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.g, label %bb.h, !prof !22

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCsgpMJJHpo27b_12typst_bundle.exit
  %i.e = getelementptr i8, ptr %i.b, i64 -8
  %.val.i = load i64, ptr %i.e, align 8, !noundef !19 ; 2 uses
  %5 = mul i64 %.val.i, 24
  %6 = add i64 %5, 16                             ; 2 uses
  %narrow.i34 = icmp ult i64 %.val.i, 768614336404564650
  %7 = icmp ult i64 %6, 9223372036854775799
  %narrow.i.i35 = and i1 %narrow.i34, %7
  br i1 %narrow.i.i35, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCsgpMJJHpo27b_12typst_bundle.exit37, label %bb.f, !prof !21

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCsgpMJJHpo27b_12typst_bundle.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %6, i64 noundef 8, i64 noundef %3) #48 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.h, !prof !22

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCsgpMJJHpo27b_12typst_bundle.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %3) #46
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCsgpMJJHpo27b_12typst_bundle.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.c, %bb.e ], [ %i.g, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCsgpMJJHpo27b_12typst_bundle.exit37 ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.i, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4growCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %narrow.i.i = icmp samesign ult i64 %1, 9223372036854775783
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.c
  %i.b = add nuw nsw i64 %1, 16                   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %.not = icmp eq ptr %i.c, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.d = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef 8) #48 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.g, label %bb.h, !prof !22

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit
  %i.f = getelementptr i8, ptr %i.c, i64 -8
  %.val.i = load i64, ptr %i.f, align 8, !noundef !19 ; 2 uses
  %narrow.i.i34 = icmp ult i64 %.val.i, 9223372036854775783
  br i1 %narrow.i.i34, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit37, label %bb.f, !prof !21

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.h = add nuw nsw i64 %.val.i, 16
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.g, i64 noundef %i.h, i64 noundef 8, i64 noundef %i.b) #48 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %bb.h, !prof !22

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.b) #46
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.d, %bb.e ], [ %i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit37 ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.k, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1B_3num7nonzero7NonZerojEEE11query_firstCsgpMJJHpo27b_12typst_bundle(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %2, align 16, !range !58, !noundef !19
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 1)
  switch i64 %i.c, label %bb.b [
    i64 1, label %bb.c
    i64 2, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc { ptr, i64 } @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1B_3num7nonzero7NonZerojEEE5queryCsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %2) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 5 uses
  %i.f = extractvalue { ptr, i64 } %i.d, 1        ; 3 uses
  %.not6 = icmp eq i64 %i.f, 0
  br i1 %.not6, label %bb.r, label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val10 = load i128, ptr %i.g, align 16         ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12255)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !12255, !noundef !19
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = trunc i128 %.val10 to i64
  %i.m = mul i64 %i.l, -1065810590584100411
  %i.n = lshr i128 %.val10, 64
  %i.o = trunc nuw i128 %i.n to i64
  %i.p = add i64 %i.m, %i.o
  %i.q = mul i64 %i.p, -1065810590584100411       ; 2 uses
  %i.r = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12257)
  %i.s = lshr i64 %i.r, 57
  %i.t = trunc nuw nsw i64 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !12258, !noalias !12259, !noundef !19 ; 2 uses
  %i.w = load ptr, ptr %i.k, align 8, !alias.scope !12258, !noalias !12259, !nonnull !19, !noundef !19 ; 2 uses
  %i.x = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.g ]
  %.pn.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.v  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.z, align 1, !noalias !12260 ; 2 uses
  %i.aa = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.y
  %i.ab = bitcast <16 x i1> %i.aa to i16          ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.ao, %bb.f ], [ %i.ab, %bb.e ] ; 3 uses
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = add i64 %.sroa.01.0.i.i.i.i, %i.ad
  %i.af = and i64 %i.ae, %i.v
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds [32 x i8], ptr %i.w, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -32
  %.val2.i.i.i.i = load i128, ptr %i.ai, align 16, !noalias !12261, !noundef !19
  %i.aj = icmp eq i128 %.val10, %.val2.i.i.i.i
  br i1 %i.aj, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i, label %bb.f, !prof !21

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.ak = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.al = bitcast <16 x i1> %i.ak to i16
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %bb.g, label %.loopexit, !prof !22

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.an = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.ao = and i16 %i.an, %.sroa.06.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ap = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.aq = add i64 %.sroa.01.0.i.i.i.i, %i.ap
  br label %bb.e

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %.lr.ph.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.ah, i64 -16
  %i.as = load i64, ptr %i.ar, align 8, !noundef !19 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load i64, ptr %i.at, align 8, !noundef !19 ; 2 uses
  %i.av = icmp ult i64 %i.as, %i.au
  br i1 %i.av, label %bb.n, label %bb.h

bb.h:                                             ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.as, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #45
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val11 = load i64, ptr %i.aw, align 8          ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12263)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !12264, !noundef !19
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvMs3_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_8MultiMapNtNtNtB9_11foundations5label5LabeljE3getCsgpMJJHpo27b_12typst_bundle.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bb = mul i64 %.val11, -1065810590584100411   ; 2 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12266)
  %i.bd = lshr i64 %i.bc, 57
  %i.be = trunc nuw nsw i64 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !12267, !noalias !12268, !noundef !19 ; 2 uses
  %i.bh = load ptr, ptr %i.ba, align 8, !alias.scope !12267, !noalias !12268, !nonnull !19, !noundef !19 ; 2 uses
  %i.bi = insertelement <16 x i8> poison, i8 %i.be, i64 0
end_hunk_3
begin_hunk_4_@_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_E21reserve_one_uncheckedCsgpMJJHpo27b_12typst_bundle:bb.a
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_E8try_growCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 16 dereferenceable(32) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECsgpMJJHpo27b_12typst_bundle.exit
    i64 0, label %bb.e
  ], !prof !78

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #46
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #45
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @144) #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_E8try_growCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 16, !noundef !19 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 16, !alias.scope !13913, !noalias !13914, !nonnull !19 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @145, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not42 = icmp eq i64 %i.c, %1
  br i1 %.not42, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 4                    ; 4 uses
  %or.cond = icmp ult i64 %1, 576460752303423488
  br i1 %or.cond, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECsgpMJJHpo27b_12typst_bundle.exit, label %bb.m, !prof !79

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECsgpMJJHpo27b_12typst_bundle.exit
  %i.k = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.k, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECsgpMJJHpo27b_12typst_bundle.exit44, label %bb.m, !prof !79

bb.h:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECsgpMJJHpo27b_12typst_bundle.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.l = tail call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 16) #48 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECsgpMJJHpo27b_12typst_bundle.exit44: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 4
  %i.o = tail call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 16, i64 noundef %i.j) #48 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECsgpMJJHpo27b_12typst_bundle.exit44, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECsgpMJJHpo27b_12typst_bundle.exit44 ]
  store ptr %.sroa.030.0, ptr %0, align 16
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 16
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.l, ptr nonnull align 16 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i64 %.val, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %0, ptr nonnull align 16 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 16
  %or.cond.i = icmp ult i64 %i.c, 576460752303423488
  br i1 %or.cond.i, label %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECsgpMJJHpo27b_12typst_bundle.exit, label %bb.l, !prof !79

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13915
  store i64 0, ptr %i.a, align 8, !noalias !13915
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @103, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #45, !noalias !13915
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 16) #48
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECsgpMJJHpo27b_12typst_bundle.exit44, %bb.h, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECsgpMJJHpo27b_12typst_bundle.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECsgpMJJHpo27b_12typst_bundle.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECsgpMJJHpo27b_12typst_bundle.exit44 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECsgpMJJHpo27b_12typst_bundle.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 16, %bb.h ], [ -1, %bb.e ], [ 16, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECsgpMJJHpo27b_12typst_bundle.exit44 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_E21reserve_one_uncheckedCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !13919, !noalias !13920, !noundef !19 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !13919, !noalias !13920
  %.sink10.i = select i1 %i.b, i64 %i.d, i64 %i.a ; 3 uses
  %i.e = icmp eq i64 %.sink10.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink10.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_E8try_growCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -1, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECsgpMJJHpo27b_12typst_bundle.exit
    i64 0, label %bb.e
  ], !prof !78

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #46
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #45
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @144) #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_E8try_growCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !19  ; 6 uses
  %i.c = icmp ult i64 %i.b, 2                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !13926, !noalias !13927, !nonnull !19 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !19 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @145, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 2
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = mul i64 %1, 40                           ; 5 uses
  %or.cond = icmp ult i64 %1, 230584300921369396
  br i1 %or.cond, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsgpMJJHpo27b_12typst_bundle.exit, label %bb.m, !prof !79

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsgpMJJHpo27b_12typst_bundle.exit
  %i.j = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond62 = icmp ult i64 %i.b, 230584300921369396
  br i1 %or.cond62, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsgpMJJHpo27b_12typst_bundle.exit45, label %bb.m, !prof !79

bb.h:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsgpMJJHpo27b_12typst_bundle.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.k = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #48 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsgpMJJHpo27b_12typst_bundle.exit45: ; preds = %bb.g
  %i.m = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.j, i64 noundef 8, i64 noundef %i.i) #48 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsgpMJJHpo27b_12typst_bundle.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.k, %bb.j ], [ %i.m, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsgpMJJHpo27b_12typst_bundle.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = mul nuw nsw i64 %i.g, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.e, i64 %i.o, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.p = mul nuw nsw i64 %i.g, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.p, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.q = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond.i = icmp ult i64 %i.b, 230584300921369396
  br i1 %or.cond.i, label %_RINvCsiSzwKAiqS6b_8smallvec10deallocateThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsgpMJJHpo27b_12typst_bundle.exit, label %bb.l, !prof !79

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13928
  store i64 0, ptr %i.a, align 8, !noalias !13928
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !13928
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @103, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #45, !noalias !13928
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10deallocateThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.k
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.q, i64 noundef 8) #48
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsgpMJJHpo27b_12typst_bundle.exit45, %bb.h, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsgpMJJHpo27b_12typst_bundle.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsgpMJJHpo27b_12typst_bundle.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsgpMJJHpo27b_12typst_bundle.exit45 ], [ %i.j, %bb.g ], [ %i.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsgpMJJHpo27b_12typst_bundle.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsgpMJJHpo27b_12typst_bundle.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAjj1_E21reserve_one_uncheckedCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !13936, !noalias !13937, !noundef !19 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1
  %i.e = load ptr, ptr %0, align 8, !alias.scope !13936, !noalias !13937, !nonnull !19 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !13936, !noalias !13937 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13938)
  %i.n = icmp ult i64 %i.c, 2                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @145, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #45, !noalias !13938
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not48.i = icmp eq i64 %i.c, %i.m
  br i1 %.not48.i, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECsgpMJJHpo27b_12typst_bundle.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECsgpMJJHpo27b_12typst_bundle.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = shl nuw nsw i64 %i.m, 3                  ; 3 uses
  %or.cond.i = icmp ult i64 %i.k, 1152921504606846975
  br i1 %or.cond.i, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayjECsgpMJJHpo27b_12typst_bundle.exit.i, label %bb.p, !prof !79

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayjECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayjECsgpMJJHpo27b_12typst_bundle.exit.i
  %i.p = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.p, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayjECsgpMJJHpo27b_12typst_bundle.exit50.i, label %bb.p, !prof !79

bb.j:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayjECsgpMJJHpo27b_12typst_bundle.exit.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !13938
  %i.q = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 8) #48, !noalias !13938 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayjECsgpMJJHpo27b_12typst_bundle.exit50.i: ; preds = %bb.i
  %i.s = shl nuw nsw i64 %.sink.i.i, 3
  %i.t = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.o) #48, !noalias !13938 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayjECsgpMJJHpo27b_12typst_bundle.exit50.i
  %.sroa.031.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayjECsgpMJJHpo27b_12typst_bundle.exit50.i ]
  store ptr %.sroa.031.0.i, ptr %0, align 8, !alias.scope !13938
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !13938
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !13938
  br label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECsgpMJJHpo27b_12typst_bundle.exit

bb.l:                                             ; preds = %bb.j
  %i.v = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !13938
  %or.cond.i.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i.i, label %_RINvCsiSzwKAiqS6b_8smallvec10deallocatejECsgpMJJHpo27b_12typst_bundle.exit.i, label %bb.n, !prof !79

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13939
  store i64 0, ptr %i.a, align 8, !noalias !13939
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @103, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #45, !noalias !13939
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10deallocatejECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %bb.m
  %i.x = shl nuw nsw i64 %.sink.i.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 8) #48, !noalias !13938
  br label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECsgpMJJHpo27b_12typst_bundle.exit

bb.o:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayjECsgpMJJHpo27b_12typst_bundle.exit50.i, %bb.j
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.o) #46
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #45
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %_RINvCsiSzwKAiqS6b_8smallvec10deallocatejECsgpMJJHpo27b_12typst_bundle.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @144) #45
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEE9drop_slowB2b_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEB26_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherERNtNtBG_5alloc6GlobalEEB2F_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherERNtNtBG_5alloc6GlobalEEB2F_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherERNtNtBG_5alloc6GlobalEEB2F_.exit

bb.e:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherERNtNtBG_5alloc6GlobalEEB2F_.exit2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherERNtNtBG_5alloc6GlobalEEB2F_.exit2

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherERNtNtBG_5alloc6GlobalEEB2F_.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherERNtNtBG_5alloc6GlobalEEB2F_.exit2: ; preds = %bb.e, %bb.f, %bb.g
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtCsgpMJJHpo27b_12typst_bundle10BundleFileNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherERNtNtBG_5alloc6GlobalEEB2F_.exit: ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsgpMJJHpo27b_12typst_bundle10introspect18BundleIntrospectorE9drop_slowBK_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtCsgpMJJHpo27b_12typst_bundle10introspect17ChildIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEEEB21_(ptr noalias nofree noundef readonly align 8 dereferenceable(224) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector19ElementIntrospectorINtNtB4_6option6OptionINtNtNtB4_3num7nonzero7NonZerojEEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef readonly align 8 dereferenceable(168) %i.d) #49
          to label %bb.d unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector19ElementIntrospectorINtNtB4_6option6OptionINtNtNtB4_3num7nonzero7NonZerojEEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef readonly align 8 dereferenceable(168) %i.e)
end_hunk_4
