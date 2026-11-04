Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.12?download=true
inline.NumInlined: 193
inline.NumDeleted: 118
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEE9from_iterCs8lmMd0ZksV9_6statrs:bb.a
middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.preheader7

.lr.ph.i.i.i.i.preheader7:                        ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.0.010.i.i.i.i.ph = phi i64 [ %1, %.lr.ph.i.i.i.i.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader7, %.lr.ph.i.i.i.i
  %i.p = phi i64 [ %i.s, %.lr.ph.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.preheader7 ] ; 2 uses
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ %.sroa.0.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader7 ] ; 2 uses
  %i.q = add nuw i64 %.sroa.0.010.i.i.i.i, 1      ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.p
  store i64 %.sroa.0.010.i.i.i.i, ptr %i.r, align 8, !noalias !179
  %i.s = add nuw i64 %i.p, 1                      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.q, %2
  br i1 %exitcond.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !178

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %middle.block, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8lmMd0ZksV9_6statrs.exit.i.i
  %.val6.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8lmMd0ZksV9_6statrs.exit.i.i ], [ %n.vec, %middle.block ], [ %i.s, %.lr.ph.i.i.i.i ]
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val6.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterIBU_dEENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0EE9from_iterB30_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.h = load i64, ptr %i.b, align 8, !range !7, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !8, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterIBx_dEENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0EEB2s_.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #16
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterIBx_dEENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0EEB2s_.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.k, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !184
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !184
  store ptr %i.q, ptr %i.a, align 8, !noalias !184
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !184
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB30_8for_each4calljNCINvMsk_B1q_IB1o_jE14extend_trustedBN_E0E0EB25_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterIBx_dEENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0EEB2s_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8lmMd0ZksV9_6statrs.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterIBx_dEENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0EEB2s_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = load i64, ptr %i.b, align 8, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !189
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !189
  %i.f = load i64, ptr %i.a, align 8, !range !7, !noalias !189, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !8, !noalias !189, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !189
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #16, !noalias !189
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !189, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !189
  store i64 %i.i, ptr %0, align 8, !alias.scope !188
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !188
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !188
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8lmMd0ZksV9_6statrs.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i
  %i.p = shl nuw nsw i64 %i.e, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull readonly align 8 %i.d, i64 %i.p, i1 false), !noalias !188
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !188
  br label %_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8lmMd0ZksV9_6statrs.exit

_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8lmMd0ZksV9_6statrs.exit: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8lmMd0ZksV9_6statrs.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsk_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.h = load i64, ptr %0, align 8, !range !7, !alias.scope !198, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !198, !noundef !4
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.d, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE10init_frontB1S_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !198, !noundef !4 ; 5 uses
  %.sroa.013.015.i = load ptr, ptr %i.l, align 8, !alias.scope !198, !nonnull !4, !noundef !4 ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.013.017.i.prol = phi ptr [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ], [ %.sroa.013.015.i, %.lr.ph.i.preheader ]
  %.sroa.011.016.i.prol = phi i64 [ %i.q, %.lr.ph.i.prol ], [ %i.n, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.prol, i64 192
  %i.q = add i64 %.sroa.011.016.i.prol, -1        ; 2 uses
  %.sroa.013.0.i.prol = load ptr, ptr %i.p, align 8, !noalias !198, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !192

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.013.0.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.013.017.i.unr = phi ptr [ %.sroa.013.015.i, %.lr.ph.i.preheader ], [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.011.016.i.unr = phi i64 [ %i.n, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %i.r = icmp ult i64 %i.n, 8
  br i1 %i.r, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  %.sroa.013.0.lcssa.i = phi ptr [ %.sroa.013.015.i, %bb.d ], [ %.sroa.013.0.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.013.0.i.7, %.lr.ph.i ]
  store i64 1, ptr %0, align 8, !alias.scope !198
  store ptr %.sroa.013.0.lcssa.i, ptr %i.j, align 8, !alias.scope !198
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !alias.scope !198
  br label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE10init_frontB1S_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.013.017.i = phi ptr [ %.sroa.013.0.i.7, %.lr.ph.i ], [ %.sroa.013.017.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.011.016.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %.sroa.011.016.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i, i64 192
  %.sroa.013.0.i = load ptr, ptr %i.s, align 8, !noalias !198, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 192
  %.sroa.013.0.i.1 = load ptr, ptr %i.t, align 8, !noalias !198, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.1, i64 192
  %.sroa.013.0.i.2 = load ptr, ptr %i.u, align 8, !noalias !198, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.2, i64 192
  %.sroa.013.0.i.3 = load ptr, ptr %i.v, align 8, !noalias !198, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.3, i64 192
  %.sroa.013.0.i.4 = load ptr, ptr %i.w, align 8, !noalias !198, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.4, i64 192
  %.sroa.013.0.i.5 = load ptr, ptr %i.x, align 8, !noalias !198, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.5, i64 192
  %.sroa.013.0.i.6 = load ptr, ptr %i.y, align 8, !noalias !198, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.6, i64 192
  %i.aa = add i64 %.sroa.011.016.i, -8            ; 2 uses
  %.sroa.013.0.i.7 = load ptr, ptr %i.z, align 8, !noalias !198, !nonnull !4, !noundef !4 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %._crit_edge.i, label %.lr.ph.i

_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE10init_frontB1S_.exit: ; preds = %bb.c, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !200
  invoke void @_RNvMsh_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeE7next_kvB20_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i unwind label %bb.h

bb.e:                                             ; preds = %bb.a, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeETRB1R_RyENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB20_.exit
  %.sroa.3.0 = phi ptr [ %i.aj, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeETRB1R_RyENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB20_.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.ai, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeETRB1R_RyENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB20_.exit ], [ null, %bb.a ]
  %i.ac = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.ad = insertvalue { ptr, ptr } %i.ac, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.ad

.noexc.i:                                         ; preds = %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE10init_frontB1S_.exit
  %i.ae = load ptr, ptr %i.b, align 8, !noalias !200, !noundef !4 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.f, label %bb.g, !prof !6

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !200
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #18
          to label %.noexc1.i unwind label %bb.h, !noalias !199

.noexc1.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !200
  store ptr %i.ae, ptr %i.a, align 8, !noalias !200
  invoke void @_RNvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB20_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc2.i unwind label %bb.h, !noalias !199

.noexc2.i:                                        ; preds = %bb.g
  %i.ag = invoke { ptr, ptr } @_RNvMsP_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB1N_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeETRB1R_RyENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB20_.exit unwind label %bb.h, !noalias !199 ; 2 uses

bb.h:                                             ; preds = %.noexc2.i, %bb.g, %bb.f, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE10init_frontB1S_.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeETRB1R_RyENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB20_.exit: ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !199
  %i.ai = extractvalue { ptr, ptr } %i.ag, 0
  %i.aj = extractvalue { ptr, ptr } %i.ag, 1
  br label %bb.e

.critedge:                                        ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsm_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_4IterINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB1c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !range !7, !alias.scope !211, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !211, !noundef !4
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.d, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE9init_backB1S_.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !211, !nonnull !4, !noundef !4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !211, !noundef !4 ; 5 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RNvMsn_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1k_14LeafOrInternalE14last_leaf_edgeB1M_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter = and i64 %i.p, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.03.08.i.i.prol = phi ptr [ %i.x, %.lr.ph.i.i.prol ], [ %i.n, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.05.07.i.i.prol = phi i64 [ %i.y, %.lr.ph.i.i.prol ], [ %i.p, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.prol, i64 186
  %i.s = load i16, ptr %i.r, align 2, !noalias !212, !noundef !4 ; 2 uses
  %i.t = zext nneg i16 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.prol, i64 192
  %i.v = icmp ult i16 %i.s, 12
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.x = load ptr, ptr %i.w, align 8, !noalias !212, !nonnull !4, !noundef !4 ; 3 uses
  %i.y = add i64 %.sroa.05.07.i.i.prol, -1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !205

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.x, %.lr.ph.i.i.prol ]
  %.sroa.03.08.i.i.unr = phi ptr [ %i.n, %.lr.ph.i.i.preheader ], [ %i.x, %.lr.ph.i.i.prol ]
  %.sroa.05.07.i.i.unr = phi i64 [ %i.p, %.lr.ph.i.i.preheader ], [ %i.y, %.lr.ph.i.i.prol ]
  %i.z = icmp ult i64 %i.p, 8
  br i1 %i.z, label %_RNvMsn_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1k_14LeafOrInternalE14last_leaf_edgeB1M_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.03.08.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.sroa.03.08.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.07.i.i = phi i64 [ %i.ce, %.lr.ph.i.i ], [ %.sroa.05.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i, i64 186
  %i.ab = load i16, ptr %i.aa, align 2, !noalias !212, !noundef !4 ; 2 uses
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i, i64 192
  %i.ae = icmp ult i16 %i.ab, 12
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !212, !nonnull !4, !noundef !4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 186
  %i.ai = load i16, ptr %i.ah, align 2, !noalias !212, !noundef !4 ; 2 uses
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 192
  %i.al = icmp ult i16 %i.ai, 12
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  %i.an = load ptr, ptr %i.am, align 8, !noalias !212, !nonnull !4, !noundef !4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 186
  %i.ap = load i16, ptr %i.ao, align 2, !noalias !212, !noundef !4 ; 2 uses
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 192
  %i.as = icmp ult i16 %i.ap, 12
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq
  %i.au = load ptr, ptr %i.at, align 8, !noalias !212, !nonnull !4, !noundef !4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 186
  %i.aw = load i16, ptr %i.av, align 2, !noalias !212, !noundef !4 ; 2 uses
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 192
  %i.az = icmp ult i16 %i.aw, 12
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ax
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !212, !nonnull !4, !noundef !4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 186
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !212, !noundef !4 ; 2 uses
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 192
  %i.bg = icmp ult i16 %i.bd, 12
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.be
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !212, !nonnull !4, !noundef !4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 186
  %i.bk = load i16, ptr %i.bj, align 2, !noalias !212, !noundef !4 ; 2 uses
  %i.bl = zext nneg i16 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 192
  %i.bn = icmp ult i16 %i.bk, 12
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !212, !nonnull !4, !noundef !4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 186
  %i.br = load i16, ptr %i.bq, align 2, !noalias !212, !noundef !4 ; 2 uses
  %i.bs = zext nneg i16 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 192
  %i.bu = icmp ult i16 %i.br, 12
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !212, !nonnull !4, !noundef !4 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 186
  %i.by = load i16, ptr %i.bx, align 2, !noalias !212, !noundef !4 ; 2 uses
  %i.bz = zext nneg i16 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 192
  %i.cb = icmp ult i16 %i.by, 12
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !212, !nonnull !4, !noundef !4 ; 2 uses
  %i.ce = add i64 %.sroa.05.07.i.i, -8            ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %_RNvMsn_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1k_14LeafOrInternalE14last_leaf_edgeB1M_.exit.i, label %.lr.ph.i.i

_RNvMsn_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1k_14LeafOrInternalE14last_leaf_edgeB1M_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d
  %.sroa.03.0.lcssa.i.i = phi ptr [ %i.n, %bb.d ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.cd, %.lr.ph.i.i ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i, i64 186
  %i.ch = load i16, ptr %i.cg, align 2, !noalias !212, !noundef !4
  %i.ci = zext i16 %i.ch to i64
  store i64 1, ptr %i.h, align 8, !alias.scope !211
  store ptr %.sroa.03.0.lcssa.i.i, ptr %i.k, align 8, !alias.scope !211
  store i64 0, ptr %i.m, align 8, !alias.scope !211
  store i64 %i.ci, ptr %i.o, align 8, !alias.scope !211
  br label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE9init_backB1S_.exit

_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE9init_backB1S_.exit: ; preds = %bb.c, %_RNvMsn_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1k_14LeafOrInternalE14last_leaf_edgeB1M_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !214
  invoke void @_RNvMsh_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeE12next_back_kvB20_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k)
          to label %.noexc.i unwind label %bb.h

bb.e:                                             ; preds = %bb.a, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeETRB1R_RyENCNvMsk_NtB4_8navigateBX_19next_back_unchecked0EB20_.exit
  %.sroa.3.0 = phi ptr [ %i.cq, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeETRB1R_RyENCNvMsk_NtB4_8navigateBX_19next_back_unchecked0EB20_.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.cp, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeETRB1R_RyENCNvMsk_NtB4_8navigateBX_19next_back_unchecked0EB20_.exit ], [ null, %bb.a ]
  %i.cj = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.ck = insertvalue { ptr, ptr } %i.cj, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.ck

.noexc.i:                                         ; preds = %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE9init_backB1S_.exit
  %i.cl = load ptr, ptr %i.b, align 8, !noalias !214, !noundef !4 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.f, label %bb.g, !prof !6

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !214
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #18
          to label %.noexc1.i unwind label %bb.h, !noalias !213

.noexc1.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !214
  store ptr %i.cl, ptr %i.a, align 8, !noalias !214
  invoke void @_RNvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_14LeafOrInternalENtB1y_2KVE19next_back_leaf_edgeB20_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc2.i unwind label %bb.h, !noalias !213

.noexc2.i:                                        ; preds = %bb.g
  %i.cn = invoke { ptr, ptr } @_RNvMsP_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB1N_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeETRB1R_RyENCNvMsk_NtB4_8navigateBX_19next_back_unchecked0EB20_.exit unwind label %bb.h, !noalias !213 ; 2 uses

bb.h:                                             ; preds = %.noexc2.i, %bb.g, %bb.f, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyE9init_backB1S_.exit
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeETRB1R_RyENCNvMsk_NtB4_8navigateBX_19next_back_unchecked0EB20_.exit: ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !213
  %i.cp = extractvalue { ptr, ptr } %i.cn, 0
  %i.cq = extractvalue { ptr, ptr } %i.cn, 1
  br label %bb.e

.critedge:                                        ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_dEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i unwind label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit7.i: ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit7.i unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit7.i._crit_edge: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit7.i, %bb.b
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEENtNtNtBM_3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTjjEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSdNtB5_5Debug3fmtCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMsS_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutB1L_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsd_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1l_14LeafOrInternalE30find_leaf_edges_spanning_rangeB1E_TINtNtNtCs3oUPovFnLWP_4core3ops5range5BoundB1E_EB3M_EEB1N_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtCs8lmMd0ZksV9_6statrs8generate10log_spaced0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2d_8for_each4calldNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3q_3VecdE14extend_trustedBN_E0E0EB1v_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc3vec3VecdEENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8f_oneway8f_oneways0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB30_8for_each4calljNCINvMsk_B1q_IB1o_jE14extend_trustedBN_E0E0EB25_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsh_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_4LeafENtB1y_4EdgeE7next_kvB20_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nan6NonNandEyNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB20_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0
end_hunk_0
